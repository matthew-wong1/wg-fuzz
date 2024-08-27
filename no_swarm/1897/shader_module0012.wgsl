struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-1i, -30496i, -44805i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 1i), vec4<i32>(-95240i, -1i, -12230i, 36678i), vec4<i32>(-32510i, -50243i, -1i, -1i), vec4<i32>(-37820i, 0i, -1i, 1i), vec4<i32>(-28264i, 2147483647i, 27874i, 1i), vec4<i32>(1i, -1i, i32(-2147483648), -35799i), vec4<i32>(2147483647i, 48329i, 2147483647i, 1i), vec4<i32>(22671i, i32(-2147483648), 0i, 10051i), vec4<i32>(3138i, 3117i, 2147483647i, 30894i), vec4<i32>(i32(-2147483648), 1i, 31272i, -12167i), vec4<i32>(-41385i, 29835i, 40262i, -1i), vec4<i32>(-20254i, 2147483647i, -3661i, -37579i), vec4<i32>(-1796i, i32(-2147483648), i32(-2147483648), -16496i), vec4<i32>(-20473i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 41557i, -5194i, i32(-2147483648)), vec4<i32>(10331i, 43410i, -4387i, -9327i), vec4<i32>(-2658i, -8915i, 1i, 1i), vec4<i32>(-1i, 2147483647i, 40584i, 0i), vec4<i32>(-30223i, -24134i, -73731i, 1i), vec4<i32>(i32(-2147483648), 1i, 1i, i32(-2147483648)), vec4<i32>(-66294i, -6829i, -1i, -19844i), vec4<i32>(12646i, -10517i, 9702i, -14911i), vec4<i32>(2147483647i, 19323i, -1i, i32(-2147483648)), vec4<i32>(-1i, 1i, -1i, -1i), vec4<i32>(0i, 53897i, 2147483647i, 0i), vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(54127i, i32(-2147483648), 9773i, 2707i), vec4<i32>(i32(-2147483648), 2180i, 9722i, -10680i), vec4<i32>(0i, 7672i, 0i, -20797i), vec4<i32>(-1i, 10214i, 15046i, i32(-2147483648)), vec4<i32>(20624i, -64231i, 3149i, -42372i));

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-284f, -1001f, -2147f), vec3<f32>(1000f, 107f, -1392f), vec3<f32>(1366f, -652f, -980f), vec3<f32>(956f, 2220f, 311f), vec3<f32>(1892f, 1025f, 999f), vec3<f32>(-1698f, -258f, 1308f), vec3<f32>(1000f, -349f, 199f), vec3<f32>(287f, -1578f, 497f), vec3<f32>(-896f, 116f, -187f), vec3<f32>(2836f, 795f, 879f), vec3<f32>(725f, -1771f, 266f), vec3<f32>(-177f, -1343f, 1948f), vec3<f32>(-200f, 1078f, 1000f), vec3<f32>(1077f, 131f, -704f), vec3<f32>(649f, 748f, 1110f), vec3<f32>(-1926f, 1000f, 1000f), vec3<f32>(-448f, -234f, -1965f), vec3<f32>(1047f, -1210f, -532f), vec3<f32>(-1481f, -1157f, 721f), vec3<f32>(-1769f, -981f, -306f), vec3<f32>(-1041f, 1000f, -192f), vec3<f32>(-308f, -505f, -361f), vec3<f32>(304f, 594f, -1844f), vec3<f32>(-685f, -2394f, -1132f), vec3<f32>(-456f, 297f, 275f), vec3<f32>(-1247f, -2456f, 1618f), vec3<f32>(-1000f, -457f, 1509f), vec3<f32>(-2528f, -474f, -545f), vec3<f32>(-436f, -943f, -975f), vec3<f32>(446f, 1000f, 1000f), vec3<f32>(106f, 120f, 1729f));

var<private> global4: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = !vec2<bool>(false, all(vec3<bool>(true, true, true)));
    let var_1 = arg_0;
    global3 = array<vec3<f32>, 31>();
    let var_2 = var_1;
    global4 = array<vec4<bool>, 2>();
    return firstLeadingBit(_wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(abs(4294967295u), select(0u, u_input.a, true))) << (82776u % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = ~(~vec3<u32>(func_3(Struct_1(global2.a)), _wgslsmith_div_u32(4294967295u, u_input.a), 0u));
    global4 = array<vec4<bool>, 2>();
    var var_1 = vec3<u32>(~88886u, u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.x, 49045u, 0u, var_0.x) << (vec4<u32>(32040u, 25187u, var_0.x, u_input.a) % vec4<u32>(32u))), ~select(vec4<u32>(var_0.x, 0u, u_input.a, var_0.x), vec4<u32>(u_input.a, var_0.x, var_0.x, 0u), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(33223u, var_0.x), ~60315u, var_0.x, 1u), ~vec4<u32>(var_0.x, u_input.a, var_0.x, 19116u))));
    var var_2 = Struct_1(~(-1i));
    global2 = Struct_1(select(reverseBits(-24252i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-35207i, 15587i), max(vec2<i32>(-58648i, -2147483647i), vec2<i32>(var_2.a, var_2.a))) & -1i, !(!arg_1.x)));
    return Struct_1(global2.a);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0 >> (u_input.a % 32u), 73663u), 31u)] + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-365f)) - -1116f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(166f, 1541f)) + _wgslsmith_f_op_f32(-476f + -1742f)), -689f)), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.a, arg_0), abs(arg_0)), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(0u, 4294967295u)), vec2<u32>(arg_0, firstTrailingBit(0u)))), 2u)]);
    var var_1 = abs(~4294967295u);
    global2 = Struct_1(1i);
    global3 = array<vec3<f32>, 31>();
    var var_2 = 277f;
    return func_2(global3[_wgslsmith_index_u32(31647u, 31u)], global4[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(~(~u_input.a), 19u)];
    global1 = array<vec4<i32>, 32>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(30214u, 21183u, min(39553u, u_input.a)), 19u)];
    var var_1 = Struct_1(global2.a);
    global2 = func_1(~_wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(458u, u_input.a, 0u)), ~u_input.a | 1u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f), 1039f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(451f, 354f), 722f))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(floor(787f)))), -906f));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec2_i32(min(vec2<i32>(var_1.a, var_1.a) | vec2<i32>(-27255i, global2.a), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, global2.a), vec2<i32>(-2147483647i, -1i))), ~vec2<i32>(var_1.a, var_1.a)));
}

