struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: array<vec4<f32>, 16>;

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~4294967295u, 16u)] - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~2745u, 16u)]))), global1[_wgslsmith_index_u32(66607u, 14u)], select(reverseBits(abs(u_input.a.yx)) ^ abs(~vec2<i32>(-53160i, u_input.a.x)), vec2<i32>(-37656i, ~_wgslsmith_mult_i32(u_input.a.x, 1i)), all(vec2<bool>(true, true))), vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true, all(vec2<bool>(true, true))), ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1484u, 4294967295u, 52330u), global1[_wgslsmith_index_u32(1u, 14u)]), 8345u, 1u)));
    var var_1 = Struct_3(Struct_2(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1318f, var_0.a.x, var_0.a.x)))), var_0.b | ~var_0.b, firstTrailingBit(var_0.c << (var_0.e.yx % vec2<u32>(32u))), select(var_0.d, var_0.d, select(vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<bool>(true, var_0.d.x, var_0.d.x), var_0.d.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.e.x, var_0.e.x, 1u), var_0.b.xyy), var_0.b.wyy & vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x))), Struct_1(var_0.a, firstLeadingBit(select(var_0.b, vec4<u32>(var_0.b.x, var_0.e.x, 1u, var_0.e.x), true)), -vec2<i32>(u_input.a.x, var_0.c.x), vec3<bool>(var_0.d.x, var_0.d.x | false, false & var_0.d.x), var_0.e), 1i, 0u));
    global3 = _wgslsmith_sub_i32(var_1.a.d, firstTrailingBit(_wgslsmith_add_i32(~1i ^ -u_input.a.x, abs(2147483647i))));
    var var_2 = countOneBits(vec3<i32>(~((u_input.a.x | 1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_1.a.c.c.x), vec4<i32>(var_1.a.b.c.x, 0i, u_input.a.x, 22831i))), -(i32(-1i) * -2147483647i) >> (var_0.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-1i) * -var_0.c)));
    var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1471f, var_0.a.x, var_0.a.x, 708f) - vec4<f32>(143f, var_0.a.x, var_1.a.a.a.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-var_0.a)), ~_wgslsmith_mult_vec4_u32(var_1.a.a.b, vec4<u32>(0u, 18203u, 1u, var_1.a.a.b.x)), vec2<i32>(var_2.x >> (var_0.e.x % 32u), var_1.a.a.c.x), var_0.d, _wgslsmith_add_vec3_u32(var_1.a.a.e >> (var_1.a.b.e % vec3<u32>(32u)), vec3<u32>(14090u, var_1.a.e, var_0.b.x))), Struct_1(var_1.a.b.a, ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(77400u, 4294967295u), 14u)], var_1.a.c.c, select(vec3<bool>(false, true, var_1.a.a.d.x), select(var_0.d, vec3<bool>(var_1.a.b.d.x, var_0.d.x, true), false), !var_0.d.x), var_1.a.b.b.zwx), Struct_1(vec4<f32>(var_1.a.a.a.x, var_1.a.a.a.x, _wgslsmith_f_op_f32(-var_0.a.x), var_1.a.b.a.x), vec4<u32>(var_0.e.x >> (var_0.b.x % 32u), 71685u, var_0.e.x & var_0.e.x, 41882u >> (var_1.a.a.e.x % 32u)), vec2<i32>(abs(u_input.a.x), _wgslsmith_mod_i32(var_0.c.x, u_input.a.x)), !(!var_0.d), var_1.a.a.b.zxz), _wgslsmith_div_i32(1i, firstTrailingBit(1i)), 21808u));
    return max(var_1.a.a.b.x, ~(~9868u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> vec3<u32> {
    let var_0 = ~_wgslsmith_add_u32(~select(~0u, _wgslsmith_div_u32(1u, 80201u), true), 1122u);
    global0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(var_0, 16u)]))))), global1[_wgslsmith_index_u32(func_3(), 14u)], u_input.a.zx, select(vec3<bool>(_wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(1773f + 1000f) > arg_2, false), vec3<bool>(all(vec2<bool>(false, true)), !any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), false), false), (abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 43921u, var_0), vec3<u32>(0u, 4294967295u, var_0))) >> (max(vec3<u32>(38212u, var_0, 21386u), min(vec3<u32>(66144u, var_0, var_0), vec3<u32>(33431u, var_0, var_0))) % vec3<u32>(32u))) >> (~min(select(vec3<u32>(788u, 1u, 1u), vec3<u32>(var_0, 4294967295u, 4294967295u), arg_0.x), vec3<u32>(var_0, var_0, var_0)) % vec3<u32>(32u)));
    let var_2 = true;
    var var_3 = -220f;
    return ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_1.e.x, var_0, var_0) & global1[_wgslsmith_index_u32(var_1.e.x, 14u)], vec4<u32>(1u, var_0, 1u, 4294967295u) >> (global1[_wgslsmith_index_u32(27314u, 14u)] % vec4<u32>(32u))), ~abs(var_1.e.x), ~var_1.e.x);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_5(any(vec2<bool>(arg_2.x, false)), vec4<bool>(-1i <= u_input.a.x, false, arg_1.a.a.d.x, !(1i <= u_input.a.x)));
    let var_1 = !(!var_0.a);
    var var_2 = -17382i;
    var var_3 = 15814u;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0, arg_1.a.a.a.x, -1736f) + vec4<f32>(438f, -196f, arg_0, arg_0)))))))), _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(arg_1.a.b.b.x & ~(~35006u), 14u)], vec4<u32>(25333u, select(~4294967295u, arg_1.a.a.e.x, any(vec3<bool>(false, true, arg_1.a.c.d.x))), 25064u, select(countOneBits(arg_1.a.e), ~0u, select(false, arg_2.x, arg_1.a.a.d.x)))), arg_1.a.c.c, select(vec3<bool>(!(false && arg_2.x), any(vec4<bool>(var_1, true, true, arg_2.x)), arg_1.a.a.d.x), vec3<bool>(any(!vec2<bool>(var_0.a, arg_2.x)), true, false), !(!vec3<bool>(true, arg_2.x, true))), func_2(arg_2.zx, _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 16u)] + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(801f, -1252f, arg_0, arg_0), arg_1.a.a.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.a.a.x, arg_0, 946f, arg_1.a.c.a.x))), !arg_1.a.c.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1743f, _wgslsmith_div_f32(-637f, 1904f)))), -33635i));
    return global2[_wgslsmith_index_u32(~(~var_4.e.x) | reverseBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~arg_1.a.c.e.x, arg_1.a.c.b.x, _wgslsmith_div_u32(var_4.b.x, 0u)), var_4.b.x)), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = global1[_wgslsmith_index_u32(29321u, 14u)];
    let var_2 = var_0.zx;
    let var_3 = Struct_4(4294967295u);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(425f, Struct_3(Struct_2(Struct_1(vec4<f32>(-1000f, 612f, -593f, -1000f), vec4<u32>(4294967295u, 27922u, 4294967295u, var_1.x), var_0.zy, vec3<bool>(false, false, false), vec3<u32>(var_3.a, 57249u, var_1.x)), Struct_1(vec4<f32>(-623f, -1680f, 1571f, 1341f), vec4<u32>(var_3.a, 19651u, 63612u, var_3.a), vec2<i32>(var_0.x, var_0.x), vec3<bool>(false, true, true), vec3<u32>(10150u, var_3.a, var_1.x)), Struct_1(global2[_wgslsmith_index_u32(var_1.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], u_input.a.xz, vec3<bool>(true, true, false), var_1.yyz), 0i, var_1.x)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))) * _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(~99972u, 16u)], _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(var_1.x, 16u)], global2[_wgslsmith_index_u32(var_3.a, 16u)], vec4<bool>(true, true, true, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 16u)] * global2[_wgslsmith_index_u32(4294967295u, 16u)]))))), _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~var_1.x, var_1.x | var_3.a), 14u)], _wgslsmith_sub_vec4_u32(min(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 14u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_1.x, 39083u, 4294967295u)), ~vec3<u32>(var_1.x, var_3.a, 4294967295u)), 14u)])), ~(var_0.xy | min(vec2<i32>(-24033i, -2477i), abs(vec2<i32>(-1i, var_2.x)))), vec3<bool>(!((var_2.x != var_2.x) && false), false, _wgslsmith_dot_vec3_i32(vec3<i32>(8401i, -9618i, 10375i), u_input.a) < -_wgslsmith_mod_i32(1i, -1i)), vec3<u32>(~var_3.a, 21418u, 39283u));
    global0 = any(select(!select(!vec4<bool>(var_4.d.x, var_4.d.x, var_4.d.x, var_4.d.x), !vec4<bool>(true, false, var_4.d.x, true), -1i >= var_0.x), !select(vec4<bool>(false, false, true, true), vec4<bool>(var_4.d.x, false, true, false), vec4<bool>(var_4.d.x, false, true, var_4.d.x)), vec4<bool>(all(vec3<bool>(var_4.d.x, true, false)), !any(var_4.d), all(!vec4<bool>(var_4.d.x, false, false, false)), var_3.a < 8763u)));
    global1 = array<vec4<u32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a, u_input.a), vec2<u32>(_wgslsmith_sub_u32(1u, 0u) ^ var_3.a, ~13463u) & select(var_1.xw, func_2(var_4.d.zx, vec4<f32>(var_4.a.x, -1044f, -805f, var_4.a.x), var_4.a.x, var_2.x).xx, vec2<bool>(false, all(vec2<bool>(true, var_4.d.x)))), vec3<f32>(var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.x * _wgslsmith_f_op_f32(f32(-1f) * -817f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.a.x)))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -463f)), Struct_3(Struct_2(Struct_1(vec4<f32>(var_4.a.x, 857f, var_4.a.x, var_4.a.x), vec4<u32>(var_4.e.x, var_1.x, 38690u, 0u), var_0.zx, var_4.d, var_1.ywy), Struct_1(vec4<f32>(-1039f, var_4.a.x, -1948f, -698f), vec4<u32>(80235u, var_1.x, var_3.a, var_3.a), vec2<i32>(var_4.c.x, var_2.x), vec3<bool>(var_4.d.x, var_4.d.x, var_4.d.x), var_1.zww), Struct_1(vec4<f32>(var_4.a.x, -1320f, -1658f, 1648f), vec4<u32>(var_3.a, 7117u, 0u, 13605u), vec2<i32>(2147483647i, var_4.c.x), vec3<bool>(false, true, var_4.d.x), var_4.b.wxx), -25590i, var_1.x)), select(var_4.d, var_4.d, false))).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_4.a.x)), var_4.a.x, _wgslsmith_f_op_f32(select(-1388f, var_4.a.x, var_4.d.x))))), _wgslsmith_f_op_f32(-125f + 1847f));
}

