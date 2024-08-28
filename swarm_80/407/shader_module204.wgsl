struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(513f, -175f, -344f, 1729f, 542f, -916f, -1730f, -1166f, -809f, -569f, 484f, -1000f, 1123f, 992f, 991f, -992f, -224f, -119f, 1647f, 639f, 201f, 2896f, -891f, 1000f, 1141f, 1000f, -1900f, 1114f, 806f, -1593f);

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, false, false, true)));

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_1(9275u, false)), Struct_4(Struct_1(0u, false)), Struct_4(Struct_1(0u, true)), Struct_4(Struct_1(1u, false)), Struct_4(Struct_1(0u, false)), Struct_4(Struct_1(18523u, false)), Struct_4(Struct_1(4294967295u, false)), Struct_4(Struct_1(4294967295u, true)), Struct_4(Struct_1(0u, false)), Struct_4(Struct_1(79829u, true)), Struct_4(Struct_1(6151u, true)), Struct_4(Struct_1(4294967295u, true)), Struct_4(Struct_1(48962u, true)), Struct_4(Struct_1(65881u, false)), Struct_4(Struct_1(52191u, true)), Struct_4(Struct_1(23157u, false)), Struct_4(Struct_1(0u, false)), Struct_4(Struct_1(58760u, false)), Struct_4(Struct_1(22684u, false)), Struct_4(Struct_1(1u, false)), Struct_4(Struct_1(8702u, false)), Struct_4(Struct_1(4294967295u, false)), Struct_4(Struct_1(4294967295u, false)), Struct_4(Struct_1(556u, false)), Struct_4(Struct_1(1u, true)), Struct_4(Struct_1(0u, true)), Struct_4(Struct_1(53179u, false)), Struct_4(Struct_1(76080u, true)));

var<private> global3: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-1152f, 1388f, 960f), vec3<f32>(-344f, 1051f, 136f), vec3<f32>(1134f, -173f, -707f), vec3<f32>(-741f, 422f, 1000f), vec3<f32>(1492f, -1365f, 659f), vec3<f32>(697f, 1298f, 168f), vec3<f32>(-1001f, -229f, 986f), vec3<f32>(-1000f, 1541f, -1002f), vec3<f32>(1151f, 552f, 1000f), vec3<f32>(1088f, 620f, 1749f), vec3<f32>(-689f, -1366f, 802f), vec3<f32>(158f, -323f, -710f), vec3<f32>(1104f, -1150f, -440f), vec3<f32>(-619f, 1089f, -1000f), vec3<f32>(1107f, -116f, -914f), vec3<f32>(-486f, -1000f, 551f), vec3<f32>(1535f, 281f, 776f), vec3<f32>(-794f, 1952f, 1686f), vec3<f32>(-1399f, 1285f, 599f), vec3<f32>(1766f, -1000f, -1876f), vec3<f32>(-391f, -483f, -440f), vec3<f32>(409f, -1000f, 133f), vec3<f32>(355f, 227f, -974f));

var<private> global4: bool = true;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> i32 {
    global4 = false;
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, u_input.a), 30u)], global0[_wgslsmith_index_u32(select(u_input.a, arg_0, false), 30u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], -1717f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(26941u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], 650f))))), vec2<f32>(global0[_wgslsmith_index_u32(~(~0u), 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)]) - _wgslsmith_f_op_f32(min(744f, global0[_wgslsmith_index_u32(1u, 30u)]))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1299f, -463f, true)), _wgslsmith_f_op_f32(-1540f - 482f), true))))));
    let var_1 = ~abs(max(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 95402u, 4294967295u, 0u), vec4<u32>(u_input.a, 3959u, arg_0, 4294967295u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 2707u, arg_0), vec4<u32>(arg_0, 1u, u_input.a, 14885u)), vec4<u32>(arg_0, 0u, 34726u, u_input.a) | vec4<u32>(u_input.a, 39988u, arg_0, u_input.a))));
    global4 = select(!(((global0[_wgslsmith_index_u32(arg_0, 30u)] < global0[_wgslsmith_index_u32(var_1.x, 30u)]) | (-343f == global0[_wgslsmith_index_u32(39692u, 30u)])) && (all(vec4<bool>(false, true, false, false)) && true)), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(false, true, true)))), ~(~(0u << (1u % 32u))) > u_input.a);
    global1 = array<Struct_2, 10>();
    return -744i;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    global2 = array<Struct_4, 28>();
    var var_0 = func_3(~(~102009u) >> (0u % 32u)) & 39495i;
    global1 = array<Struct_2, 10>();
    global3 = array<vec3<f32>, 23>();
    let var_1 = select(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.a, 23011u, u_input.a)), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 16627u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 1u, 9160u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(u_input.a, 2333u, u_input.a)))), ~vec3<u32>(select(u_input.a, 64854u, arg_1.a.x), 0u, ~4294967295u), vec3<bool>(true, 1u <= u_input.a, !(!arg_1.a.x))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, max(u_input.a, 8068u)), 1u), abs(vec3<u32>(select(13909u, 2063u, false), ~u_input.a, u_input.a)));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(select(vec2<i32>(-71931i, -1i), vec2<i32>(1i, 2147483647i), vec2<bool>(true, false)) & vec2<i32>(3369i, 0i), _wgslsmith_div_vec2_i32(select(vec2<i32>(14378i, -47534i), vec2<i32>(74265i, 0i), vec2<bool>(false, true)), ~vec2<i32>(-2147483647i, 91657i))), vec2<i32>(1i, 1i));
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(select(max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 43918u)), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), true), vec2<u32>(~4294967295u, u_input.a)), abs(reverseBits(4294967295u)), _wgslsmith_mod_u32(1u, countOneBits(u_input.a)), 0u);
    let var_2 = vec2<bool>(false, !(arg_1 != _wgslsmith_div_f32(func_2(arg_0, Struct_2(vec4<bool>(false, false, true, false))).a, arg_1)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, var_1.x), 23u)])) * global3[_wgslsmith_index_u32(u_input.a, 23u)]);
    let var_4 = abs(_wgslsmith_mult_vec3_i32(min(~vec3<i32>(var_0.x, var_0.x, var_0.x) ^ firstTrailingBit(vec3<i32>(var_0.x, -1i, var_0.x)), -vec3<i32>(var_0.x, 2147483647i, -1i)), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, var_0.x, var_0.x), vec4<i32>(-2147483647i, -1i, var_0.x, 25164i)), var_0.x, var_0.x)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26017u ^ _wgslsmith_add_u32(0u, var_1.x), reverseBits(u_input.a), var_1.x), countOneBits(vec4<u32>(u_input.a << (0u % 32u), countOneBits(var_1.x), ~0u, u_input.a))) << ((~var_1.x | select(0u, var_1.x, var_2.x)) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    return 4294967295u >> (firstLeadingBit(arg_0.a | func_4(func_2(Struct_3(global0[_wgslsmith_index_u32(35924u, 30u)]), Struct_2(vec4<bool>(true, arg_0.b, false, arg_0.b))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.a, 30u)]))) % 32u);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> Struct_5 {
    return Struct_5(Struct_1(~firstLeadingBit(~4294967295u), all(vec2<bool>(true, true))), select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), arg_2.x > 2147483647i), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 28>();
    let var_0 = 1i;
    let var_1 = func_5((_wgslsmith_dot_vec4_u32(~vec4<u32>(5570u, u_input.a, 71029u, u_input.a), vec4<u32>(40799u, u_input.a, 1u, 4294967295u) << (vec4<u32>(4294967295u, u_input.a, 26862u, 58454u) % vec4<u32>(32u))) | ~(0u & u_input.a)) << (((~13084u ^ ~u_input.a) >> (abs(~u_input.a) % 32u)) % 32u), ~(_wgslsmith_sub_u32(func_1(Struct_1(10566u, false), Struct_1(0u, true)), _wgslsmith_div_u32(1u, u_input.a)) << (reverseBits(u_input.a) % 32u)), -((~vec2<i32>(var_0, var_0) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) | ~vec2<i32>(var_0, 2147483647i)));
    var var_2 = reverseBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(2147483647i, 1i))), abs(~select(vec2<i32>(var_0, var_0), vec2<i32>(1665i, 1i), var_1.b))));
    let var_3 = Struct_1(var_1.a.a, var_1.a.b);
    let var_4 = Struct_3(-1044f);
    global2 = array<Struct_4, 28>();
    let var_5 = Struct_3(_wgslsmith_f_op_f32(-var_4.a));
    global1 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-189f, _wgslsmith_f_op_f32(-528f * var_5.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~8289u, 30u)] - -256f))), countOneBits(var_3.a), reverseBits(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_0, var_0, var_0, -1i)) & abs(vec4<i32>(-2147483647i, -1821i, -1i, 5838i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-40858i, var_0, -2147483647i, var_0), ~vec4<i32>(var_0, var_2.x, var_2.x, 1i)))), vec2<u32>(func_1(func_5(~u_input.a, 2429u, ~vec2<i32>(var_0, var_0)).a, func_5(0u, 64181u, vec2<i32>(var_0, var_2.x)).a), firstTrailingBit(~(~35195u))));
}

