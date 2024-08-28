struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-61486i, -4026i, 0i, 1i, 5239i, -1i, 25733i, 27445i, 1i, -1i, 28153i, 0i, -9482i, 1i, 8430i, 35806i, -7985i, -60710i, -2123i, 2147483647i, 1529i, -35682i, 22225i, 0i);

var<private> global1: array<Struct_1, 4>;

var<private> global2: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: u32) -> u32 {
    let var_0 = arg_2.c.b;
    let var_1 = vec4<i32>(-1i, -2147483647i, global0[_wgslsmith_index_u32(1u, 24u)] << (reverseBits(_wgslsmith_mod_u32(arg_2.b.c.x, ~arg_2.c.d)) % 32u), 19263i);
    global0 = array<i32, 24>();
    global2 = arg_2.c.a.c < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(153f)) * -1333f), _wgslsmith_f_op_f32(round(arg_1.x)), -291f <= var_0.a.x))));
    global0 = array<i32, 24>();
    return var_0.d.d.x;
}

fn func_3() -> vec4<f32> {
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(65852u, u_input.c), 15870u), vec2<u32>(u_input.c, u_input.c) << (~vec2<u32>(72598u, u_input.c) % vec2<u32>(32u)))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(686f)), _wgslsmith_f_op_f32(-144f + -235f), select(true, false, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1623f)) + _wgslsmith_f_op_f32(trunc(402f))))), ~(~(vec2<u32>(37244u, u_input.c) << (~vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)))));
    global2 = !select(var_0.a.x < reverseBits(~var_0.a.x), true == !(global0[_wgslsmith_index_u32(u_input.c, 24u)] > global0[_wgslsmith_index_u32(var_0.d.x, 24u)]), false);
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(ceil(var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(-var_0.c)), var_0.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(ceil(var_0.c)), var_0.c)))), select(vec4<i32>(abs(u_input.b.x), u_input.b.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.d.x, 24u)], 0i), max(u_input.b.x, _wgslsmith_sub_i32(-102611i, global0[_wgslsmith_index_u32(106473u, 24u)]))), vec4<i32>(~u_input.d.x, firstLeadingBit(0i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-5484i, global0[_wgslsmith_index_u32(0u, 24u)], 14248i), ~21869i), -4328i), var_0.b && all(select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, var_0.b), var_0.b))), var_0, global1[_wgslsmith_index_u32(u_input.c, 4u)], vec4<bool>(var_0.b, (!var_0.b | all(vec3<bool>(true, true, var_0.b))) | (!var_0.b & (u_input.c >= 4294967295u)), false, any(select(vec4<bool>(var_0.b, true, var_0.b, var_0.b), select(vec4<bool>(var_0.b, var_0.b, true, true), vec4<bool>(false, false, var_0.b, true), true), !vec4<bool>(var_0.b, var_0.b, var_0.b, false)))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1303f, var_0.c, var_1.d.c, var_0.c)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(min(var_1.a.x, var_0.c))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(-var_0.c))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    global1 = array<Struct_1, 4>();
    var var_0 = -361f;
    var var_1 = ~(~4294967295u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.c, arg_0.a.x, 485f, 805f)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.d.c, arg_0.a.x, arg_0.c.b)), 1000f, _wgslsmith_f_op_f32(162f - -768f), -317f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1565f, -1219f, 648f, arg_0.a.x)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1164f, arg_0.a.x, 1133f, -1786f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1488f, arg_0.c.c, 1964f, arg_0.d.c), vec4<f32>(-761f, -1000f, arg_0.a.x, -1053f))))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - _wgslsmith_f_op_f32(-var_2.x));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> i32 {
    return 8009i;
}

fn func_5(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = u_input.d & u_input.a;
    var var_1 = arg_0.x;
    return func_2(Struct_2(vec3<f32>(241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(252f - -1214f) + -1520f), _wgslsmith_f_op_f32(round(-677f))), ~(-vec4<i32>(var_0.x, -2147483647i, -1i, u_input.a.x) | -vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 24u)], var_0.x, 1i, global0[_wgslsmith_index_u32(arg_0.x, 24u)])), Struct_1(arg_0.xy, func_2(Struct_2(vec3<f32>(-2707f, -1493f, 1456f), vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(45563u, 24u)], 0i, arg_1), global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(arg_0.x, 4u)], vec4<bool>(true, true, false, true)), vec2<i32>(var_0.x, global0[_wgslsmith_index_u32(66221u, 24u)]) ^ u_input.a).c.b, 939f, arg_0.yz), global1[_wgslsmith_index_u32(abs(reverseBits(arg_0.x & u_input.c)), 4u)], !vec4<bool>(false, any(vec3<bool>(false, false, false)), select(false, true, false), true)), u_input.a).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(countOneBits(~vec4<u32>(0u, u_input.c, u_input.c, u_input.c)) ^ vec4<u32>(u_input.c, ~u_input.c, func_1(Struct_3(global1[_wgslsmith_index_u32(u_input.c, 4u)], Struct_2(vec3<f32>(397f, -2196f, -1000f), vec4<i32>(0i, -4075i, global0[_wgslsmith_index_u32(u_input.c, 24u)], u_input.a.x), global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], vec4<bool>(false, false, true, true)), vec2<u32>(u_input.c, u_input.c), 4294967295u), vec2<f32>(-718f, 1089f), Struct_4(Struct_1(vec2<u32>(u_input.c, 6684u), true, -821f, vec2<u32>(u_input.c, u_input.c)), Struct_3(global1[_wgslsmith_index_u32(4294967295u, 4u)], Struct_2(vec3<f32>(1000f, 207f, 1020f), vec4<i32>(u_input.e, -2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(0u, 24u)]), Struct_1(vec2<u32>(60608u, 31173u), false, -2302f, vec2<u32>(u_input.c, 0u)), Struct_1(vec2<u32>(u_input.c, u_input.c), true, -784f, vec2<u32>(u_input.c, u_input.c)), vec4<bool>(false, true, false, false)), vec2<u32>(u_input.c, u_input.c), u_input.c), Struct_3(Struct_1(vec2<u32>(55568u, 0u), true, 1151f, vec2<u32>(1u, 4260u)), Struct_2(vec3<f32>(-1367f, 456f, -438f), vec4<i32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(38234u, 24u)], 0i, u_input.d.x), global1[_wgslsmith_index_u32(u_input.c, 4u)], Struct_1(vec2<u32>(u_input.c, u_input.c), true, -1506f, vec2<u32>(u_input.c, u_input.c)), vec4<bool>(true, false, false, true)), vec2<u32>(u_input.c, 3086u), u_input.c), -625f, vec2<f32>(-1679f, 1487f)), u_input.c), 1u), func_4(-_wgslsmith_sub_i32(-44833i, global0[_wgslsmith_index_u32(26729u, 24u)]), Struct_3(Struct_1(vec2<u32>(67545u, u_input.c), false, -327f, vec2<u32>(u_input.c, 0u)), func_2(Struct_2(vec3<f32>(-2523f, 1012f, -327f), vec4<i32>(0i, 2147483647i, -2147483647i, 1i), global1[_wgslsmith_index_u32(u_input.c, 4u)], Struct_1(vec2<u32>(4294967295u, u_input.c), false, 882f, vec2<u32>(u_input.c, 42313u)), vec4<bool>(false, false, true, false)), vec2<i32>(49337i, global0[_wgslsmith_index_u32(u_input.c, 24u)])), vec2<u32>(0u, 1u), 26023u), global1[_wgslsmith_index_u32(max(u_input.c, u_input.c), 4u)], 72727u)), Struct_3(Struct_1(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(48515u, 28965u)), vec2<u32>(58598u, 38440u)), false, func_2(Struct_2(vec3<f32>(-235f, 808f, -869f), vec4<i32>(global0[_wgslsmith_index_u32(5923u, 24u)], 1i, -2147483647i, u_input.b.x), global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], vec4<bool>(true, false, false, true)), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], 18124i)).d.c, _wgslsmith_sub_vec2_u32(vec2<u32>(120271u, u_input.c), vec2<u32>(u_input.c, 4294967295u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), Struct_2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(250f + 274f), func_2(Struct_2(vec3<f32>(-543f, -1227f, 975f), vec4<i32>(11359i, global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)], -32057i), global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(29195u, 4u)], vec4<bool>(true, true, true, false)), u_input.d).a.x), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)] ^ 2147483647i, -7277i, ~global0[_wgslsmith_index_u32(29723u, 24u)], _wgslsmith_dot_vec4_i32(vec4<i32>(4974i, -4265i, global0[_wgslsmith_index_u32(u_input.c, 24u)], 71159i), vec4<i32>(0i, -8046i, -42588i, 2147483647i))), func_5(vec4<u32>(u_input.c, 4294967295u, 1u, 4294967295u), countOneBits(0i)), Struct_1(countOneBits(vec2<u32>(0u, u_input.c)), true, 806f, select(vec2<u32>(31547u, 1u), vec2<u32>(u_input.c, u_input.c), true)), vec4<bool>(select(false, false, false), func_2(Struct_2(vec3<f32>(538f, -534f, -153f), vec4<i32>(46340i, 75141i, -2147483647i, 2147483647i), global1[_wgslsmith_index_u32(38417u, 4u)], Struct_1(vec2<u32>(u_input.c, u_input.c), false, -945f, vec2<u32>(4294967295u, u_input.c)), vec4<bool>(true, true, true, false)), vec2<i32>(u_input.a.x, -3599i)).c.b, true, true)), vec2<u32>(~u_input.c << (u_input.c % 32u), ~(~u_input.c)), abs(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), vec4<u32>(4294967295u, u_input.c, 88601u, u_input.c)), max(vec4<u32>(77171u, u_input.c, u_input.c, 95368u), vec4<u32>(81488u, 0u, 4294967295u, 0u))))), Struct_3(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 4u)], func_2(Struct_2(vec3<f32>(826f, 1202f, -675f), abs(vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.c, 24u)], -1i, -1i)), Struct_1(vec2<u32>(u_input.c, u_input.c), true, 940f, vec2<u32>(30970u, 1u)), func_2(Struct_2(vec3<f32>(1350f, -508f, 115f), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], -23995i, 4104i, global0[_wgslsmith_index_u32(u_input.c, 24u)]), global1[_wgslsmith_index_u32(1u, 4u)], Struct_1(vec2<u32>(u_input.c, 1u), false, -1101f, vec2<u32>(5996u, u_input.c)), vec4<bool>(true, false, true, true)), vec2<i32>(-2597i, 5370i)).c, vec4<bool>(false, true, false, false)), u_input.a), ~max(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, 0u)), 1u), -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1297f, -1064f), _wgslsmith_f_op_vec2_f32(select(func_2(Struct_2(vec3<f32>(-366f, 812f, 1000f), vec4<i32>(5729i, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)], 0i), global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], vec4<bool>(true, false, true, true)), u_input.a).a.zx, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(127f, -1439f), vec2<f32>(-107f, -1526f))), vec2<bool>(true, true))))));
    var var_1 = vec2<u32>(func_1(Struct_3(func_5(~vec4<u32>(u_input.c, var_0.a.a.x, 57242u, var_0.a.a.x), global0[_wgslsmith_index_u32(~var_0.b.c.x, 24u)]), func_2(Struct_2(var_0.b.b.a, var_0.c.b.b, Struct_1(var_0.c.a.d, true, var_0.b.b.a.x, var_0.a.a), Struct_1(var_0.b.c, var_0.a.b, -750f, var_0.b.b.c.a), vec4<bool>(false, true, var_0.a.b, var_0.c.a.b)), ~var_0.b.b.b.zz), ~var_0.b.a.a, 1u), var_0.c.b.a.xx, var_0, ~(~(~var_0.b.d))), _wgslsmith_mult_u32(0u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b.b.d.a.x, var_0.a.a.x, 10189u, 1u), countOneBits(vec4<u32>(u_input.c, 78898u, 14367u, 59949u))), ~(~4294967295u)));
    let var_2 = -475f;
    var_1 = firstLeadingBit(~var_0.b.c);
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(-21410i), var_0.b.b.b.x, ~abs(u_input.a.x)), func_2(Struct_2(vec3<f32>(var_2, 704f, -395f), vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 24u)], global0[_wgslsmith_index_u32(57667u, 24u)], -37009i, 1i), Struct_1(vec2<u32>(30926u, var_1.x), true, 166f, vec2<u32>(0u, 2091u)), func_2(var_0.c.b, u_input.b.zz).d, var_0.b.b.e), abs(select(vec2<i32>(-37419i, u_input.b.x), var_0.c.b.b.zz, var_0.c.b.e.x))).b.zzz) ^ u_input.b;
    var var_4 = func_2(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.b.a) * vec3<f32>(var_0.c.a.c, -125f, var_2)) - _wgslsmith_f_op_vec3_f32(-var_0.b.b.a)), var_0.c.b.b | var_0.b.b.b, var_0.c.a, func_2(var_0.b.b, vec2<i32>(_wgslsmith_add_i32(-56756i, 29264i), ~1i)).c, select(vec4<bool>(var_0.b.b.c.b & var_0.a.b, var_0.a.b, true, true), var_0.b.b.e, var_0.c.a.b == false)), -firstTrailingBit(~(var_0.c.b.b.xw >> (vec2<u32>(var_0.b.c.x, var_1.x) % vec2<u32>(32u)))));
    var_1 = var_0.c.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d))), _wgslsmith_div_f32(var_2, 1612f), 2297f, var_0.d), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-767f, var_2, -794f, var_2)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.x, var_2, var_2, 289f), vec4<f32>(var_2, var_0.d, var_2, var_0.a.c), var_4.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_4.a.x, var_4.c.c) - vec4<f32>(var_0.e.x, var_4.a.x, var_2, -1720f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2002f, var_2, -306f, var_2), vec4<f32>(var_4.c.c, var_0.d, -754f, 1689f)))))), func_2(func_2(func_2(var_0.c.b, u_input.a), vec2<i32>(-28855i, 71046i) ^ u_input.a), var_0.c.b.b.zz).e)));
}

