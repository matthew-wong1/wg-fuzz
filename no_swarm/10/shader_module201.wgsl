struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), 34226u, false, -51563i, 27014i), 201f), 28351u, false, vec4<f32>(897f, -218f, -1507f, 185f), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), 49768u, true, -41477i, 2147483647i), 316f), 46924u, false, vec4<f32>(-937f, -2432f, -936f, 395f), vec2<u32>(4294967295u, 0u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), 1u, true, -63125i, -19516i), -1584f), 0u, false, vec4<f32>(-618f, 1366f, 701f, 1249f), vec2<u32>(54607u, 54474u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), 4294967295u, true, 0i, 0i), -1525f), 4294967295u, true, vec4<f32>(575f, -295f, 545f, -1794f), vec2<u32>(0u, 30745u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), 0u, true, 11442i, 0i), 924f), 1u, true, vec4<f32>(965f, 1200f, 2012f, -813f), vec2<u32>(4294967295u, 0u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), 12170u, false, -62169i, i32(-2147483648)), 1095f), 1u, true, vec4<f32>(-2924f, -1164f, -1266f, -1271f), vec2<u32>(13398u, 5260u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), 4294967295u, true, 9495i, 4693i), 470f), 46473u, false, vec4<f32>(978f, 1000f, -239f, 964f), vec2<u32>(3914u, 1u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), 0u, false, 1i, 0i), -1213f), 4294967295u, false, vec4<f32>(-303f, 1131f, 1131f, -459f), vec2<u32>(4294967295u, 1u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), 44824u, true, 10339i, 12935i), -1000f), 47324u, true, vec4<f32>(-1000f, 1493f, 1736f, -567f), vec2<u32>(18146u, 1u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), 4294967295u, false, -4690i, i32(-2147483648)), 428f), 4294967295u, false, vec4<f32>(-471f, 1220f, -910f, -831f), vec2<u32>(31089u, 57211u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), 1562u, false, 2147483647i, i32(-2147483648)), 1288f), 3598u, false, vec4<f32>(-327f, 756f, 340f, 225f), vec2<u32>(67444u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), 3684u, true, i32(-2147483648), 40771i), 119f), 0u, false, vec4<f32>(-326f, 665f, 338f, -534f), vec2<u32>(44381u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), 4710u, true, 1i, 1i), -2412f), 1u, false, vec4<f32>(-1440f, -251f, -192f, 655f), vec2<u32>(9898u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), 43401u, false, 6472i, -33974i), -603f), 4287u, true, vec4<f32>(-295f, 1000f, -246f, 1619f), vec2<u32>(60895u, 1u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), 41512u, false, -44621i, -15761i), 246f), 8578u, true, vec4<f32>(549f, -1000f, -1000f, -288f), vec2<u32>(1u, 1u)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), 0u, true, 0i, 1i), -493f), 13378u, false, vec4<f32>(520f, 903f, -827f, 2277f), vec2<u32>(0u, 21558u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), 33149u, false, -37387i, -56488i), 713f), 1u, true, vec4<f32>(-1000f, 411f, 758f, 416f), vec2<u32>(41982u, 13217u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), 0u, false, -37698i, 44702i), 1000f), 0u, true, vec4<f32>(1000f, -1159f, 1000f, -127f), vec2<u32>(4294967295u, 8594u)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), 0u, false, -1i, 0i), -1035f), 1u, false, vec4<f32>(-211f, -475f, -800f, -1056f), vec2<u32>(4294967295u, 4294967295u)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(select(select(vec3<bool>(false, true, select(arg_0.x, true, true)), vec3<bool>(true, false | arg_0.x, true), arg_0.wwx), arg_0.xyy, arg_0.x), ~(38854u & abs(_wgslsmith_dot_vec3_u32(vec3<u32>(9788u, 1u, u_input.a.x), vec3<u32>(48867u, 64078u, u_input.a.x)))), false, _wgslsmith_div_i32(1i, 1i), countOneBits(_wgslsmith_clamp_i32(109329i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 52299i, -7571i), vec3<i32>(2147483647i, 0i, 2147483647i)))) & -1i);
    var var_1 = false;
    var var_2 = var_0.b;
    var var_3 = 4965i;
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b, 29u)] + global0[_wgslsmith_index_u32(u_input.a.x, 29u)]))))), _wgslsmith_div_f32(-1121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f))), global0[_wgslsmith_index_u32(var_0.b, 29u)])));
    return -106f;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-280f - _wgslsmith_f_op_f32(f32(-1f) * -708f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(760f, 1222f))) - arg_0.x), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false))))))));
    let var_1 = ~u_input.a.x >> (u_input.a.x % 32u);
    var var_2 = 2147483647i ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-1i, -11291i)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<i32>(-14980i, ~10481i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(1i, 1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(73891i, 1i, -48306i), vec3<i32>(46496i, -27863i, 5554i)), ~(-6280i))), -26677i);
    global1 = array<Struct_3, 19>();
    let var_3 = firstLeadingBit(_wgslsmith_mult_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(44222u, var_1, 0u), vec3<u32>(9505u, 44308u, u_input.a.x))), ~vec3<u32>(_wgslsmith_mult_u32(var_1, var_1), 4294967295u, _wgslsmith_sub_u32(4294967295u, var_1))));
    return Struct_2(Struct_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, global0[_wgslsmith_index_u32(10410u, 29u)] > global0[_wgslsmith_index_u32(var_1, 29u)], true)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, select(var_1, 48099u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, u_input.a.x, var_1), vec3<u32>(u_input.a.x, 1u, var_1)), 1u >> (1u % 32u)), ~vec4<u32>(var_1, u_input.a.x, u_input.a.x, var_3.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 34468u, 38467u, 11246u), vec4<u32>(var_1, 48982u, 39114u, var_3.x))), _wgslsmith_f_op_f32(floor(-1367f)) > _wgslsmith_f_op_f32(-994f - _wgslsmith_f_op_f32(sign(-1177f))), _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(37529i, 2147483647i), -(2147483647i << (var_1 % 32u)), 17345i), 2592i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(true, any(vec2<bool>(false, true)), var_3.x <= 4294967295u, any(vec4<bool>(false, false, false, true)))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-385f, 1305f, arg_0.b, arg_1))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * global0[_wgslsmith_index_u32(1u, 29u)]) + _wgslsmith_f_op_f32(-1107f * -1299f)), -362f, 212f, _wgslsmith_f_op_f32(abs(-543f))))).a.a;
    global1 = array<Struct_3, 19>();
    let var_1 = arg_0.a.d;
    let var_2 = var_1;
    global0 = array<f32, 29>();
    return arg_0.b;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(949f, -106f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -787f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, false, false))), func_2(vec4<f32>(global0[_wgslsmith_index_u32(82921u, 29u)], -629f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 892f)).b))), 1639f, global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(21082u, u_input.a.x, 4294967295u)), ~vec3<u32>(0u, u_input.a.x, 1u)), u_input.a.x) & 0u, 29u)]);
    var var_1 = -63829i;
    var var_2 = vec2<bool>(all(select(vec3<bool>(true, all(vec4<bool>(false, false, false, false)), 6663u >= u_input.a.x), vec3<bool>(true, true, true), false)), false);
    var_2 = !func_2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 29u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x & 27244u, 29u)] - 125f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f * global0[_wgslsmith_index_u32(40361u, 29u)]) + _wgslsmith_f_op_f32(-2829f - var_0.x)))).a.a.xx;
    global0 = array<f32, 29>();
    return Struct_2(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1761f, var_0.x, 1000f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2049f, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 29u)])), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], var_0.x, var_0.x, -786f), vec4<f32>(-964f, 2392f, -739f, var_0.x), true))), false))).a, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(abs(u_input.a.x), 29u)])));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global1 = array<Struct_3, 19>();
    var var_0 = vec2<f32>(-656f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x))));
    var var_1 = select(select(vec3<bool>(!func_2(arg_0.d).a.c, arg_0.c, true), !arg_0.a.a.a, arg_0.a.a.a), arg_0.a.a.a, arg_0.b > firstTrailingBit(78354u));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-arg_0.d)).a;
    var_0 = arg_0.d.xx;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], 1261f, -418f, global0[_wgslsmith_index_u32(0u, 29u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1804u, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 225f, -503f) + vec4<f32>(-1411f, 1170f, -529f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(787f, global0[_wgslsmith_index_u32(48472u, 29u)], 229f, -434f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -1180f, 1518f, global0[_wgslsmith_index_u32(22320u, 29u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -407f, 886f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1040f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -2120f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(0u, 29u)], -1925f, -614f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 29u)], -1000f, 610f, global0[_wgslsmith_index_u32(58822u, 29u)])))))));
    let var_1 = Struct_3(func_5(Struct_3(func_1(), abs(~15296u), !all(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -2037f, 679f))), vec2<u32>(~u_input.a.x, ~u_input.a.x))), 58004u, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(263f, var_0.x, -357f, var_0.x))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), global0[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_f_op_f32(round(func_1().b)))), _wgslsmith_div_vec2_u32(abs(~(~vec2<u32>(u_input.a.x, u_input.a.x))), ~vec2<u32>(0u, abs(28067u))));
    global1 = array<Struct_3, 19>();
    var var_2 = 157f;
    var var_3 = Struct_2(var_1.a.a, var_0.x);
    global0 = array<f32, 29>();
    var_3 = Struct_2(var_3.a, -814f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(var_1.d.zy)));
}

