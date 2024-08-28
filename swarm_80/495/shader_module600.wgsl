struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(false, false, true), false), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(true, true, true), true));

var<private> global1: array<i32, 25> = array<i32, 25>(53288i, -26915i, -8676i, 60127i, 18605i, 1i, 1i, i32(-2147483648), -29405i, 1i, i32(-2147483648), 1i, -16586i, -18900i, -10066i, -9529i, 2147483647i, -32238i, i32(-2147483648), -24169i, 0i, 0i, 28411i, -51252i, i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = -global1[_wgslsmith_index_u32(1u, 25u)];
    global0 = array<Struct_1, 8>();
    global1 = array<i32, 25>();
    global1 = array<i32, 25>();
    global0 = array<Struct_1, 8>();
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = Struct_1(vec3<bool>(!any(select(vec4<bool>(true, arg_0.a.x, arg_2.b, arg_2.a.x), vec4<bool>(arg_2.b, arg_0.a.x, false, false), false)), countOneBits(u_input.a ^ 18631u) > 4294967295u, !(true == arg_2.a.x)), !any(select(!vec4<bool>(arg_0.a.x, true, arg_0.b, arg_0.b), select(vec4<bool>(arg_2.b, arg_0.a.x, arg_0.b, false), vec4<bool>(true, arg_2.a.x, arg_0.a.x, true), arg_0.a.x), any(vec4<bool>(arg_0.b, false, true, true)))));
    var var_1 = vec4<bool>(!arg_0.b, false, false, true);
    global1 = array<i32, 25>();
    var_1 = select(select(!select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(arg_0.b, true, true, var_0.b), !vec4<bool>(arg_0.b, var_0.a.x, false, false)), vec4<bool>(var_0.b, arg_2.a.x, reverseBits(u_input.a) < u_input.a, var_0.b), arg_2.a.x), vec4<bool>(true, false & (-1000f <= _wgslsmith_f_op_f32(ceil(318f))), !select(true, arg_0.a.x, arg_2.b), true), all(vec2<bool>(var_1.x, true)));
    var var_2 = u_input.b;
    return 1u;
}

fn func_2() -> vec4<bool> {
    global0 = array<Struct_1, 8>();
    var var_0 = -u_input.b.x;
    var_0 = min(~(-_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global1[_wgslsmith_index_u32(29239u, 25u)], u_input.b.x))), -_wgslsmith_mod_i32(u_input.b.x, -1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(17925i, u_input.b.x, 2147483647i, 37655i), -vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], 1i, -2147483647i, u_input.b.x))) >> (~(1u << (func_3(global0[_wgslsmith_index_u32(~u_input.a, 8u)], -880f, func_1(true, global0[_wgslsmith_index_u32(8847u, 8u)], Struct_1(vec3<bool>(true, true, true), true), vec2<u32>(18996u, u_input.a)), u_input.b.x) % 32u)) % 32u);
    var var_1 = ~abs(u_input.a) << (~u_input.a % 32u);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(601f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1933f, 1765f, true)), 367f))))), 961f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-473f, 686f))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-564f, -386f, false))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1739f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1879f, 1650f)) * _wgslsmith_f_op_f32(738f + -1322f))))));
    return !(!vec4<bool>(true, true, select(true, true, u_input.a <= u_input.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, Struct_1(select(vec3<bool>(select(false, false, true), u_input.a >= u_input.a, any(vec2<bool>(true, true))), vec3<bool>(false, true, true), !any(vec4<bool>(true, true, false, true))), !all(vec3<bool>(true, true, false))), global0[_wgslsmith_index_u32(85635u, 8u)], _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(16252u), 0u), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, u_input.a)), vec2<u32>(_wgslsmith_mod_u32(~u_input.a, u_input.a), select(0u, u_input.a, any(vec2<bool>(false, true))))));
    var_0 = Struct_1(var_0.a, true);
    var var_1 = vec3<u32>(~firstTrailingBit(4294967295u), select(1u, 1u, false), 16921u);
    global0 = array<Struct_1, 8>();
    var var_2 = select(func_2(), vec4<bool>(var_0.a.x, true, true, !var_0.b), select(var_0.a.x, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(-vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], -55476i, -1i))), ~(~(~(~var_1.yy))));
}

