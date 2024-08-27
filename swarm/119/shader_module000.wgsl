struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 7> = array<f32, 7>(788f, 1000f, 235f, 846f, -193f, 127f, 701f);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(1012f, -1980f), vec3<u32>(2506u, 0u, 1u));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    global2 = Struct_1(global2.a, _wgslsmith_div_vec3_u32(~(global2.b | vec3<u32>(0u, global2.b.x, 4294967295u)) ^ vec3<u32>(1u ^ u_input.b, firstLeadingBit(global2.b.x), 16997u >> (global2.b.x % 32u)), ~global2.b));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -1000f), global2.a)), vec2<f32>(545f, arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, arg_0)) - _wgslsmith_f_op_vec2_f32(-global2.a)))), global2.b);
    global0 = all(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), false)));
    global2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1157f - -895f)) - _wgslsmith_f_op_f32(select(-986f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.x, 7u)]), u_input.a != global2.b.x))), _wgslsmith_f_op_f32(abs(var_0.a.x))), countOneBits(~(~vec3<u32>(79593u, 4294967295u, 1u) | vec3<u32>(u_input.a, global2.b.x, 27872u))));
    global1 = array<f32, 7>();
    return _wgslsmith_clamp_i32(firstTrailingBit(-30091i), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(9427i, 42684i, 16503i), 36272i), i32(-1i) * -2147483647i), ((-2147483647i << (u_input.a % 32u)) << ((reverseBits(1u) & _wgslsmith_mod_u32(1u, global2.b.x)) % 32u)) >> (select(_wgslsmith_add_u32(u_input.b & global2.b.x, abs(4294967295u)), _wgslsmith_add_u32(u_input.a, 22471u << (global2.b.x % 32u)), !all(vec4<bool>(false, false, false, false))) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)), global2.a.x), arg_1.xwz ^ vec3<u32>(min(~24859u, global2.b.x), arg_1.x, arg_1.x >> (0u % 32u)));
    var var_1 = false;
    var_1 = true;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-420f)), global1[_wgslsmith_index_u32(1u, 7u)]);
    let var_3 = var_0;
    return -_wgslsmith_mult_vec3_i32(max(vec3<i32>(firstLeadingBit(1i), ~(-1i), _wgslsmith_mult_i32(-6458i, 812i)), vec3<i32>(953i, -2147483647i, -11892i)), -vec3<i32>(func_3(var_3.a.x), ~2147483647i, _wgslsmith_sub_i32(-1i, 41688i)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = arg_2;
    let var_1 = arg_2;
    let var_2 = _wgslsmith_sub_vec2_u32(~firstLeadingBit(global2.b.yy), reverseBits(~vec2<u32>(_wgslsmith_mod_u32(var_0.b.x, 26777u), _wgslsmith_mult_u32(global2.b.x, u_input.a))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2200f, _wgslsmith_f_op_f32(ceil(-868f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_2.b.x, 7u)], 197f) + _wgslsmith_f_op_f32(step(-775f, -1153f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, global1[_wgslsmith_index_u32(var_1.b.x, 7u)], global2.a.x), vec3<f32>(671f, global2.a.x, var_1.a.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(-1078f + var_0.a.x), 1372f)))), reverseBits(countOneBits(vec4<u32>(25187u, 52142u, 41517u, var_0.b.x) >> (vec4<u32>(var_0.b.x, 0u, arg_0.x, 1u) % vec4<u32>(32u)))) << (vec4<u32>(48498u, var_2.x, var_1.b.x, firstLeadingBit(0u)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-178f, global1[_wgslsmith_index_u32(0u, 7u)]), var_0.a, true)))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 47180u, 57976u), arg_0)));
    let var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-793f, var_1.a.x)) * _wgslsmith_f_op_f32(-var_1.a.x)) + 455f), arg_2.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1157f * -498f) + _wgslsmith_f_op_f32(-var_3.c.a.x)), arg_2.a.x))), select(_wgslsmith_mult_vec4_u32(var_3.b, var_3.b), ~_wgslsmith_clamp_vec4_u32(~var_3.b, var_3.b, firstLeadingBit(var_3.b)), any(vec4<bool>(true, true, arg_1.x >= 0i, any(vec3<bool>(true, false, false))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-286f, -245f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.x, -692f, false)) + _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~global2.b.x, global2.b.x, ~58784u), vec3<u32>(_wgslsmith_mod_u32(global2.b.x, global2.b.x), 40923u, 4272u), min(arg_0, _wgslsmith_sub_vec3_u32(arg_0, var_0.b)))));
    return arg_1.xx;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = !vec3<bool>(false, any(vec3<bool>(any(vec4<bool>(false, true, false, true)), false, true)), true);
    let var_1 = arg_3;
    global0 = 283f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -292f), 282f)) * arg_3.c.a.x);
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a), (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, var_1.c.b.x, arg_0.b.x), var_1.b.yyy), ~arg_3.b.x, 27330u) << (~(vec3<u32>(arg_2.b.x, 1u, 1u) << (arg_2.b % vec3<u32>(32u))) % vec3<u32>(32u))) >> (~arg_2.b % vec3<u32>(32u)));
    global2 = var_1.c;
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(1732u, 6700u), func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, global1[_wgslsmith_index_u32(arg_1.c.b.x, 7u)])), ~vec3<u32>(1u, 4294967295u, 1u) & ~vec3<u32>(global2.b.x, 53991u, arg_2.x)), func_4(vec3<u32>(reverseBits(global2.b.x), abs(0u), global2.b.x), _wgslsmith_div_vec3_i32(func_2(arg_1, arg_1.b, Struct_1(global2.a, global2.b)), vec3<i32>(1i, 1i, 1i)), Struct_1(_wgslsmith_div_vec2_f32(global2.a, arg_0.a), firstLeadingBit(arg_1.b.zxw))), Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(-arg_0.a)), arg_1.c.b), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(1538f)), _wgslsmith_f_op_f32(-1540f * arg_1.a.x), _wgslsmith_f_op_f32(arg_1.c.a.x + -1792f)), vec4<u32>(global2.b.x, 42352u, 22570u, 12652u) | arg_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a), ~global2.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(5325u, 0u), ~28514u, ~65372u) | countOneBits(arg_1.b.xwy), arg_0.b));
    return arg_1.c;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = firstTrailingBit(-(i32(-1i) * -1i));
    global1 = array<f32, 7>();
    global0 = false;
    var var_1 = select(select(vec4<bool>(true, 240f >= _wgslsmith_f_op_f32(-arg_1.a.x), false, _wgslsmith_mult_i32(var_0, 1i) <= var_0), vec4<bool>(!all(vec4<bool>(false, true, true, true)), true, all(vec3<bool>(true, true, true)), !all(vec2<bool>(false, false))), 21759u >= func_5(func_1(Struct_1(arg_2.c.a, vec3<u32>(1u, arg_1.b.x, 118692u)), arg_1, vec2<u32>(1u, 63911u), 562f), countOneBits(vec2<i32>(var_0, var_0)), arg_2.c, Struct_2(vec3<f32>(arg_0.c.a.x, -957f, global2.a.x), vec4<u32>(51744u, arg_2.b.x, 1u, arg_1.b.x), arg_0.c))), !(!vec4<bool>(select(true, false, true), true, true, true)), -1219f <= arg_2.a.x);
    let var_2 = all(vec4<bool>(((2147483647i << (arg_0.b.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, global2.b.x, 0u, global2.b.x), vec4<u32>(0u, 4643u, global2.b.x, 2611u)) % 32u)) != (1i ^ (-2147483647i ^ var_0)), any(select(var_1.xyx, select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, var_1.x, true), false), false)), var_1.x, any(var_1.yyz)));
    return -1370f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(318f, _wgslsmith_f_op_f32(-global2.a.x))), -487f, global2.a.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_6(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -691f, global1[_wgslsmith_index_u32(0u, 7u)])), ~vec4<u32>(0u, 0u, 19915u, global2.b.x), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 7u)], 1574f), vec3<u32>(global2.b.x, 1u, u_input.b))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, -1256f) + vec3<f32>(global1[_wgslsmith_index_u32(51743u, 7u)], -3170f, 582f)), vec4<u32>(u_input.a, 4294967295u, 10896u, 30567u), func_1(Struct_1(global2.a, global2.b), Struct_2(vec3<f32>(global2.a.x, 1325f, -299f), vec4<u32>(4294967295u, 14596u, u_input.a, 1u), Struct_1(vec2<f32>(-1329f, global1[_wgslsmith_index_u32(1u, 7u)]), vec3<u32>(742u, u_input.a, 117773u))), global2.b.yx, -117f)), Struct_2(vec3<f32>(global2.a.x, global1[_wgslsmith_index_u32(global2.b.x, 7u)], -186f), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global2.b.x, 12404u, 57840u), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a)), func_1(Struct_1(vec2<f32>(global2.a.x, global2.a.x), global2.b), Struct_2(vec3<f32>(-158f, global2.a.x, global2.a.x), vec4<u32>(0u, 4294967295u, 37945u, 4294967295u), Struct_1(global2.a, global2.b)), global2.b.xz, 1793f)), -656f))));
    let var_1 = vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), global2.b) & abs(global2.b), countOneBits(vec3<u32>(1u, 62368u, global2.b.x))), 4294967295u), 7u)], global2.a.x, 1315f, -498f);
    var var_2 = 636f;
    var_2 = -367f;
    var var_3 = vec3<u32>(~u_input.a, u_input.a, ~(_wgslsmith_div_u32(global2.b.x, _wgslsmith_mult_u32(0u, 0u)) << (global2.b.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wxw, 25844i << (~(1u ^ ~u_input.a) % 32u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.b.x, 7u)]), _wgslsmith_f_op_f32(sign(-977f)))), -173f, global2.a.x, -914f), var_1, select(22972i, _wgslsmith_add_i32(-2147483647i, 0i), all(vec3<bool>(false, false, false))) < -25692i)), global2.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(670f, global1[_wgslsmith_index_u32(9121u, 7u)])), _wgslsmith_f_op_f32(exp2(var_0.x)))))))));
}

