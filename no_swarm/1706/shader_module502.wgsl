struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(63574u, 64732u, 43707u), vec3<u32>(29259u, 53066u, 0u), vec3<u32>(45439u, 65206u, 69687u), vec3<u32>(40606u, 76857u, 4294967295u), vec3<u32>(20844u, 36489u, 31625u), vec3<u32>(17866u, 43054u, 11485u), vec3<u32>(66830u, 12061u, 25395u), vec3<u32>(12082u, 554u, 51178u), vec3<u32>(1u, 0u, 0u), vec3<u32>(971u, 0u, 4294967295u), vec3<u32>(0u, 48370u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(35466u, 92693u, 1u), vec3<u32>(4294967295u, 4294967295u, 13943u), vec3<u32>(4294967295u, 97134u, 0u), vec3<u32>(24515u, 18752u, 1u), vec3<u32>(1u, 78970u, 4294967295u), vec3<u32>(94415u, 1u, 0u), vec3<u32>(0u, 38920u, 98002u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 49279u, 4294967295u), vec3<u32>(4294967295u, 60628u, 0u), vec3<u32>(22635u, 1u, 4162u), vec3<u32>(12564u, 10860u, 63318u), vec3<u32>(0u, 0u, 0u), vec3<u32>(35561u, 12550u, 34332u), vec3<u32>(29878u, 17473u, 75848u), vec3<u32>(35695u, 4294967295u, 43914u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(23222u, 1u, 41789u), vec3<u32>(45524u, 4294967295u, 1u), vec3<u32>(81202u, 54008u, 4294967295u));

var<private> global3: array<bool, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-1664f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-235f * 285f))) + 362f), -149f)));
    var var_1 = Struct_2(0i, u_input.a);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(select(-1000f, var_0, false)))))), 1u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_div_u32(var_2.b, var_2.b));
    let var_4 = Struct_1(var_2.a, 31180u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1471f, var_3.a)) + -845f)) - -139f));
}

fn func_2() -> u32 {
    global2 = array<vec3<u32>, 32>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(843f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1301f))), 160f, -223f, _wgslsmith_f_op_f32(func_3()));
    let var_1 = Struct_3(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(global2[_wgslsmith_index_u32(37778u, 32u)]), global2[_wgslsmith_index_u32(97981u, 32u)] << (global2[_wgslsmith_index_u32(0u, 32u)] % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(8669u, 4294967295u, 0u)), 32u)]), _wgslsmith_add_u32(16146u, ~(~65322u)), ~13102u), firstLeadingBit(-2147483647i));
    global1 = any(select(select(!(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 6u)], true, true)), vec3<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(var_1.a.x, 6u)], true)), global3[_wgslsmith_index_u32(~20804u, 6u)], true), global3[_wgslsmith_index_u32(select(var_1.a.x, var_1.a.x, global3[_wgslsmith_index_u32(var_1.a.x, 6u)] | true), 6u)]), select(select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(var_1.a.x, 6u)]), vec3<bool>(global3[_wgslsmith_index_u32(27810u, 6u)], global3[_wgslsmith_index_u32(31616u, 6u)], global3[_wgslsmith_index_u32(var_1.a.x, 6u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], true, true)), !vec3<bool>(global3[_wgslsmith_index_u32(48942u, 6u)], false, global3[_wgslsmith_index_u32(var_1.a.x, 6u)]), global3[_wgslsmith_index_u32(min(67198u, 1u), 6u)] | (-750f == var_0.x)), vec3<bool>(~var_1.a.x > ~var_1.a.x, true, select(var_0.x <= var_0.x, global3[_wgslsmith_index_u32(var_1.a.x, 6u)], false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x))), vec4<f32>(var_0.x, var_0.x, 1044f, -1210f))))))));
    return var_1.a.x;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-1041f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(297f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1000f)), -1003f, any(vec2<bool>(global3[_wgslsmith_index_u32(43628u, 6u)], false)))))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1953f, -341f)) + _wgslsmith_f_op_f32(f32(-1f) * -577f)), arg_0.x, global3[_wgslsmith_index_u32(func_2(), 6u)]))));
    global0 = array<i32, 2>();
    let var_1 = global0[_wgslsmith_index_u32(40397u, 2u)];
    global0 = array<i32, 2>();
    global3 = array<bool, 6>();
    return Struct_2(_wgslsmith_div_i32((1i << (_wgslsmith_div_u32(0u, 6212u) % 32u)) ^ ~_wgslsmith_div_i32(-26048i, u_input.a), min(1i, -u_input.a)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1011f - 739f) + -769f)), -308f, 422f));
    let var_1 = func_1(vec3<f32>(656f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()))).b;
    let var_2 = Struct_1(-424f, 0u);
    var var_3 = Struct_1(_wgslsmith_div_f32(1633f, 476f), var_2.b);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(func_3()))), select(var_2.b, 1u, 33844i <= firstTrailingBit(~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(128f, 1070i, 0u, -_wgslsmith_div_vec4_i32(vec4<i32>(var_1, 2147483647i, global0[_wgslsmith_index_u32(var_4.b, 2u)], -1i), vec4<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 2u)], 0i, -2147483647i) ^ vec4<i32>(2147483647i, -2147483647i, -2147483647i, -2147483647i)) & ~(-vec4<i32>(-19279i, u_input.a, -1i, var_1)));
}

