struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 30667u, 0u), vec4<i32>(0i, -1i, -31990i, i32(-2147483648)), vec2<f32>(981f, 1163f));

var<private> global1: Struct_3;

var<private> global2: array<u32, 32> = array<u32, 32>(125979u, 0u, 5279u, 20949u, 97153u, 0u, 4294967295u, 4294967295u, 1u, 24141u, 56147u, 4294967295u, 0u, 1u, 36087u, 20239u, 11164u, 1u, 0u, 23144u, 1u, 1u, 85160u, 4294967295u, 74260u, 49690u, 4294967295u, 1u, 109442u, 43999u, 2074u, 6562u);

var<private> global3: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(2147483647i, -54413i), vec2<i32>(-1i, -33914i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, -9877i), vec2<i32>(1i, -31737i), vec2<i32>(0i, 15795i), vec2<i32>(-785i, 62625i), vec2<i32>(7738i, i32(-2147483648)), vec2<i32>(1i, 43866i), vec2<i32>(-23368i, 1i));

var<private> global4: array<u32, 7> = array<u32, 7>(1u, 25522u, 17645u, 26022u, 21361u, 0u, 52811u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = -_wgslsmith_add_i32(u_input.a, -6393i << (firstTrailingBit(_wgslsmith_div_u32(106833u, 1u)) % 32u));
    global3 = array<vec2<i32>, 11>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1050f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2113f - arg_3.c.x) + arg_1.c.x)))));
    let var_2 = arg_2.x;
    let var_3 = select(global1.a.a, vec3<bool>(global1.a.a.x, u_input.c.x <= 47341i, _wgslsmith_f_op_f32(max(arg_3.c.x, -178f)) < arg_3.c.x), !any(!global1.a.a.xz));
    return select(vec3<bool>(var_3.x, true, !var_3.x), vec3<bool>(any(vec3<bool>(true, all(global1.a.a.zx), !global1.c)), false, !any(vec2<bool>(true, true))), false);
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<i32> {
    var var_0 = Struct_3(Struct_2(func_3(7146i, Struct_1(~global1.a.c, global0.b << (vec4<u32>(136403u, global0.a.x, 35359u, 5482u) % vec4<u32>(32u)), _wgslsmith_div_vec2_f32(global0.c, vec2<f32>(-535f, 893f))), _wgslsmith_mult_vec4_i32(u_input.c, u_input.e) ^ vec4<i32>(arg_0, 7281i, arg_1, arg_0), Struct_1(select(global0.a, u_input.b, global1.a.a), ~vec4<i32>(-2147483647i, arg_0, global0.b.x, global0.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, global0.c.x) * global0.c))), u_input.e.yy, vec3<u32>(95541u, _wgslsmith_add_u32(u_input.b.x << (global1.a.c.x % 32u), 25576u), 0u)), 4294967295u, true);
    var var_1 = !func_3(1i, Struct_1(~vec3<u32>(64356u, 4294967295u, 4943u) ^ global0.a, vec4<i32>(u_input.a, arg_0, -1i, var_0.a.b.x) ^ u_input.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(491f, global0.c.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1037f, -1023f) * global0.c))), global0.b, Struct_1(u_input.b << ((global1.a.c << (var_0.a.c % vec3<u32>(32u))) % vec3<u32>(32u)), -global0.b << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 10196u), vec4<u32>(1u, global0.a.x, 4294967295u, 74802u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, global0.c.x), vec2<f32>(global0.c.x, 1087f)) + global0.c))).yy;
    let var_2 = any(!select(global1.a.a.zx, select(!global1.a.a.xz, vec2<bool>(var_1.x, true), !vec2<bool>(global1.a.a.x, false)), select(select(vec2<bool>(false, false), global1.a.a.zz, var_1.x), !global1.a.a.yy, vec2<bool>(true, true))));
    let var_3 = max(max(_wgslsmith_div_i32(global0.b.x | ~(-21370i), i32(-1i) * -25546i), 2147483647i), countOneBits(-global1.a.b.x & ~2147483647i));
    let var_4 = global0.b;
    return -(countOneBits(~max(vec4<i32>(-35527i, global0.b.x, 0i, 17343i), vec4<i32>(var_3, -1i, -204i, 27077i))) | vec4<i32>(48208i, global0.b.x, var_3, 1i));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(global0.b | firstTrailingBit(vec4<i32>(0i, -1i, -53013i, global1.a.b.x) >> (vec4<u32>(u_input.b.x, 4294967295u, 9380u, 15620u) % vec4<u32>(32u))), func_2(firstTrailingBit(1i), -(min(-28659i, 1i) | select(global0.b.x, arg_0.b.x, true))));
    global4 = array<u32, 7>();
    let var_1 = 1u;
    var_0 = u_input.c;
    var var_2 = vec4<u32>(0u, ~global4[_wgslsmith_index_u32(min(~4294967295u, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.a.c, vec3<u32>(global4[_wgslsmith_index_u32(var_1, 7u)], 28150u, 90015u)), 7u)]), 7u)], 1u, firstTrailingBit(24903u) & ~reverseBits(var_1)) >> (abs(~reverseBits(abs(vec4<u32>(u_input.b.x, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8922u, 32u)], 32u)], 0u)))) % vec4<u32>(32u));
    return Struct_1(vec3<u32>(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(0u >> (~var_2.x % 32u), 7u)], _wgslsmith_dot_vec3_u32(u_input.b & var_2.xxy, firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(arg_0.c.x, 32u)], 94655u, 0u)))), firstTrailingBit(~_wgslsmith_dot_vec3_u32(global0.a, global1.a.c)), ~u_input.b.x), -vec4<i32>((i32(-1i) * -1i) ^ -u_input.e.x, 0i, var_0.x, _wgslsmith_div_i32(0i, 1i)), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_2(vec3<bool>(true, global1.c, any(!global1.a.a.xy)), _wgslsmith_sub_vec2_i32(vec2<i32>(-54171i, global0.b.x), vec2<i32>(global1.a.b.x, u_input.c.x) >> ((vec2<u32>(9343u, global2[_wgslsmith_index_u32(17058u, 32u)]) << (global0.a.zz % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.b ^ global0.a));
    var var_0 = func_1(Struct_2(global1.a.a, global0.b.wy << (_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.x, u_input.b.x), global1.a.c.yz), vec2<u32>(0u, global1.b)) % vec2<u32>(32u)), countOneBits(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(global0.a.x, 49399u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50797u, 32u)], 7u)]))) << ((vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)], 84292u, global0.a.x) << (vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(7698u, 32u)], global4[_wgslsmith_index_u32(global0.a.x, 7u)]) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = var_0.c.x;
    var var_2 = Struct_2(func_3(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-1i, global1.a.b.x, u_input.d.x, 1i))), 17560i), func_1(Struct_2(vec3<bool>(global1.c, true, global1.c), firstTrailingBit(var_0.b.xz), ~global1.a.c)), vec4<i32>(1i, global0.b.x, -1i, 12602i), Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 17933u, global0.a.x), vec3<u32>(4294967295u, 1u, 0u)), ~vec4<i32>(var_0.b.x, global1.a.b.x, u_input.e.x, var_0.b.x), vec2<f32>(1871f, _wgslsmith_f_op_f32(126f - -1271f)))), vec2<i32>(global1.a.b.x, max(~select(global0.b.x, var_0.b.x, global1.a.a.x), -15712i)), _wgslsmith_mult_vec3_u32(~vec3<u32>(countOneBits(0u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.c.x, 11670u), 32u)], _wgslsmith_div_u32(global1.a.c.x, u_input.b.x)), global1.a.c));
    let var_3 = max(global0.b.x, _wgslsmith_mod_i32(firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c.x, _wgslsmith_sub_i32(0i, var_0.b.x), min(global0.b.x, global1.a.b.x)), ~u_input.e.yzz)));
    let var_4 = min(vec3<i32>(2760i, -_wgslsmith_sub_i32(805i, u_input.e.x), -_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, u_input.c.x), max(global1.a.b.x, -1i), var_3)), u_input.c.xwx);
    global3 = array<vec2<i32>, 11>();
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.b);
}

