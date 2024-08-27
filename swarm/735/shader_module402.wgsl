struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<vec4<i32>, 4>;

var<private> global2: array<bool, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = arg_2;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * -1101f)), _wgslsmith_f_op_f32(select(arg_1.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(26700u, 41923u), 7u)], !arg_1.d.x)))))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_1.a, 7u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -320f));
    let var_4 = !(!vec3<bool>(!(!arg_2), var_0, true));
    return var_1.d;
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(862f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(17205u, 7u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 7u)]) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] + -1365f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(16332u, 7u)]))))), _wgslsmith_div_u32(7572u, u_input.a.x), select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 62168u, u_input.a.x), vec4<u32>(u_input.a.x, 85114u, u_input.a.x, 29062u)), 4u)], any(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(0u, 4u)])), true), func_3(~firstTrailingBit(u_input.b), Struct_1(~u_input.a.x, vec3<f32>(-168f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(22u, 7u)]), 1u, !vec3<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)], false)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(0u, u_input.a.x), abs(0u)), 4u)]), !select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(98235u, 4u)], true), global2[_wgslsmith_index_u32(4843u, 4u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(15234u, 4u)]), true)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(55335u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], -186f), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 1963f)))))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a.x), u_input.a.x) << (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 35415u, u_input.a.x, 0u), vec4<u32>(0u, 1u, 4294967295u, 16641u) >> (vec4<u32>(11869u, 27640u, 28766u, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(~u_input.a.x, 2636u, u_input.a.x, _wgslsmith_div_u32(52216u, u_input.a.x)))), vec3<bool>(global2[_wgslsmith_index_u32(countOneBits(14344u), 4u)], global2[_wgslsmith_index_u32(0u, 4u)], all(!(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)])))));
    let var_1 = !(!var_0.d);
    global0 = array<f32, 7>();
    let var_2 = _wgslsmith_sub_u32(max(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(2000u, 44460u, var_0.a), vec3<u32>(4294967295u, u_input.a.x, 129532u)), ~(~vec3<u32>(var_0.c, 4294967295u, 38063u))), var_0.a), var_0.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 7u)] * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.c, u_input.a.x), vec4<u32>(0u, 33724u, var_0.a, 4294967295u))), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c, 7u)]) + -1826f))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    return select(!(!vec4<bool>(false, 536f != arg_0.b.x, false | arg_0.d.x, true)), !(!(!(!vec4<bool>(true, false, arg_3.d.x, true)))), func_3(i32(-1i) * -1i, Struct_1(18673u, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_3.b.x, 786f) * arg_2.b), 1u, vec3<bool>(any(vec3<bool>(arg_1.d.x, arg_2.d.x, arg_1.d.x)), arg_0.d.x, global2[_wgslsmith_index_u32(arg_0.c, 4u)])), arg_3.d.x).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1138f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(abs(~u_input.a.x)), 7u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)])));
    var var_1 = !all(func_4(func_1(), Struct_1(~u_input.a.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-190f, 1332f, -1000f))), 52040u, vec3<bool>(false, global2[_wgslsmith_index_u32(54792u, 4u)], true)), func_1(), func_1()));
    let var_2 = func_2();
    global1 = array<vec4<i32>, 4>();
    let var_3 = 57999i;
    let var_4 = all(select(func_2().d, vec3<bool>(true, false, var_2.d.x), true));
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(537f))), _wgslsmith_f_op_f32(round(var_2.b.x)), var_2.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1473f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 1785f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])) - vec4<f32>(var_2.b.x, func_1().b.x, var_2.b.x, -1273f))) - vec4<f32>(699f, -842f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1515f * _wgslsmith_f_op_f32(var_2.b.x * var_0)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_2.b.x)), -422f))), 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1338f, -343f), func_2().b.x, -415f, -258f) * var_5)), _wgslsmith_div_f32(-603f, _wgslsmith_f_op_f32(floor(-675f))), var_3);
}

