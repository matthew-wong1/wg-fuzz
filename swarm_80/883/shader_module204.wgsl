struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(select(select(vec4<bool>(false == arg_2.a.x, arg_0.b.a.a.x, arg_1.a.x, arg_2.a.x), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 19u)], false, arg_0.b.c.a.x), arg_1.a, vec4<bool>(false, arg_1.a.x, false, true)), select(vec4<bool>(true, arg_0.c, false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true, false, arg_2.a.x), false), !vec4<bool>(arg_2.a.x, arg_1.a.x, arg_0.b.a.a.x, false)), any(arg_2.a)), vec4<bool>(true | !arg_0.c, arg_2.a.x, true, !(arg_2.a.x == arg_1.a.x)), arg_0.b.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))) + _wgslsmith_div_f32(-1172f, _wgslsmith_f_op_f32(arg_0.b.c.b - arg_2.c))) * _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(abs(arg_1.b)))), 1184f);
    var var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.c, arg_1.c))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, arg_0.b.a.c)))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f + arg_2.b)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1224f))), _wgslsmith_div_f32(1422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)))));
    let var_3 = arg_0;
    var_1 = -726f;
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_1.x, -42245i, arg_1.x)) << (~vec3<u32>(u_input.a.x, u_input.a.x, 30333u) % vec3<u32>(32u)), max(~arg_1, abs(vec3<i32>(arg_1.x, arg_1.x, 1i)))), -firstLeadingBit(max(arg_1.x, 1i))));
    var_0 = vec2<i32>((var_0.x | arg_1.x) ^ -6780i, abs(var_0.x));
    var_0 = ~(~arg_1.yx);
    global0 = array<bool, 19>();
    var var_1 = vec3<i32>(var_0.x, -_wgslsmith_div_i32(arg_1.x, min(1i, -1i)), ~(-countOneBits(_wgslsmith_mod_i32(17198i, 28767i))));
    return ~arg_1;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32) -> Struct_2 {
    var var_0 = vec3<bool>(true, true, true);
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    var var_1 = firstLeadingBit(vec3<i32>(-1i, ~(-46612i), _wgslsmith_sub_i32(-(i32(-1i) * -8719i), ~_wgslsmith_mod_i32(0i, -49389i))));
    var_1 = func_4(Struct_2(Struct_1(vec4<bool>(arg_2 < 1u, any(vec4<bool>(arg_1, false, arg_0, var_0.x)), !arg_0, !var_0.x), _wgslsmith_f_op_f32(689f - 493f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1883f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f))), Struct_1(vec4<bool>(all(vec3<bool>(true, global0[_wgslsmith_index_u32(52161u, 19u)], false)), func_3(Struct_3(515f, Struct_2(Struct_1(vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(31247u, 19u)], global0[_wgslsmith_index_u32(22768u, 19u)]), -1751f, 1147f), 482f, Struct_1(vec4<bool>(true, true, false, var_0.x), 348f, 113f)), false), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 19u)], false, false, arg_0), 1000f, 1387f), Struct_1(vec4<bool>(false, arg_1, var_0.x, true), -1266f, 1000f)), var_0.x, !global0[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-269f))), -1000f)), reverseBits(-select(~vec3<i32>(2147483647i, 7638i, -2147483647i), -vec3<i32>(2147483647i, -64060i, var_1.x), false)));
    return Struct_2(Struct_1(select(!select(vec4<bool>(false, false, false, arg_1), vec4<bool>(var_0.x, var_0.x, arg_1, false), vec4<bool>(true, false, false, arg_1)), !vec4<bool>(arg_0, false, arg_1, false), true), 155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1475f) - _wgslsmith_f_op_f32(round(-691f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f + 843f)))), Struct_1(vec4<bool>(arg_1, true, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(986f)))), 410f));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = vec3<i32>(-18207i, 15173i, abs(2147483647i));
    var var_1 = arg_0;
    var var_2 = Struct_1(func_2(true, !(!arg_0.c), ~u_input.a.x << (~u_input.a.x % 32u)).a.a, _wgslsmith_f_op_f32(432f + -145f), var_1.b.a.b);
    let var_3 = _wgslsmith_f_op_f32(-arg_0.b.a.b);
    var var_4 = func_2(all(!select(select(vec3<bool>(arg_1.c.a.x, var_1.b.a.a.x, false), vec3<bool>(true, arg_0.b.a.a.x, global0[_wgslsmith_index_u32(18238u, 19u)]), true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), arg_0.b.c.a.yyz)), !all(!arg_1.c.a.xzy), u_input.a.x).a;
    return vec2<u32>(27972u << (u_input.a.x % 32u), ~(~_wgslsmith_div_u32(u_input.a.x, 3480u))) & u_input.a;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<f32>) -> StorageBuffer {
    return StorageBuffer(func_5(Struct_3(_wgslsmith_f_op_f32(abs(arg_2.x)), Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false, arg_0, false), -2121f, 1609f), -1249f, Struct_1(vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_0), arg_2.x, -617f)), global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), func_2(true, global0[_wgslsmith_index_u32(~firstLeadingBit(50386u), 19u)], u_input.a.x)), 674f, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 19>();
    var var_0 = !global0[_wgslsmith_index_u32(~_wgslsmith_div_u32((u_input.a.x & 2404u) & 4294967295u, ~1u), 19u)];
    global0 = array<bool, 19>();
    let var_1 = _wgslsmith_f_op_f32(max(476f, -2350f));
    var_0 = !((global0[_wgslsmith_index_u32(~u_input.a.x << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u), 19u)] || !(-1309f >= var_1)) && true);
    var_0 = global0[_wgslsmith_index_u32(28441u, 19u)];
    var var_2 = ~_wgslsmith_sub_u32(abs(65995u & u_input.a.x), firstTrailingBit(u_input.a.x)) >> (~(~(~abs(25620u))) % 32u);
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -1i, vec3<f32>(-259f, _wgslsmith_f_op_f32(-var_1), var_1));
}

