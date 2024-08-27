struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> u32 {
    global0 = array<i32, 16>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1668f)))))));
    return 0u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<f32> {
    global0 = array<i32, 16>();
    var var_0 = Struct_1(-1000f, true, -1446f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + arg_0.a));
    global0 = array<i32, 16>();
    var_0 = arg_0;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, 187f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, arg_0.c)) - vec2<f32>(var_1, var_0.a)))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    global0 = array<i32, 16>();
    var var_0 = Struct_1(arg_0, !(max(20529u, u_input.a.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 42233u))) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1558f))) < _wgslsmith_f_op_f32(-719f * _wgslsmith_div_f32(arg_0, arg_1))), arg_0);
    var var_1 = Struct_1(-908f, all(!select(vec4<bool>(false, true, var_0.b, var_0.b), vec4<bool>(var_0.b, true, true, true), !vec4<bool>(var_0.b, var_0.b, var_0.b, true))), _wgslsmith_f_op_f32(-1355f - _wgslsmith_f_op_f32(floor(-1000f))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + var_1.a)), _wgslsmith_f_op_f32(var_1.c - _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_0))))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-592f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))))), arg_0));
    var var_2 = _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(456f, var_0.b, -531f), vec2<u32>(1u, 1u))).x))));
    return ~_wgslsmith_add_u32(~(~u_input.b), ~(~71712u)) | (u_input.b << (abs(0u) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = vec2<u32>(73400u, abs(u_input.a.x));
    var var_1 = reverseBits(max(~(~_wgslsmith_div_vec4_u32(u_input.a, u_input.a)), ~(~u_input.a)));
    let var_2 = var_0.x;
    var var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, _wgslsmith_mult_u32(89197u, var_0.x) << (abs(var_0.x) % 32u), ~(~arg_3.x)), vec3<u32>(_wgslsmith_add_u32(func_2(var_1.wyw, -41366i, arg_3.x), 1u), max(~var_1.x, countOneBits(var_2)), func_4(arg_2.a, _wgslsmith_f_op_f32(ceil(1185f)), _wgslsmith_f_op_vec2_f32(func_3(arg_0, vec2<u32>(94276u, var_1.x))))));
    let var_4 = any(select(!select(select(vec3<bool>(arg_0.b, true, arg_2.b), vec3<bool>(true, arg_2.b, arg_2.b), vec3<bool>(true, false, true)), !vec3<bool>(arg_0.b, false, true), all(vec4<bool>(arg_2.b, arg_2.b, true, false))), !vec3<bool>(select(arg_0.b, false, arg_0.b), 9820i >= arg_1.x, false), select(vec3<bool>(arg_2.b, !arg_0.b, any(vec2<bool>(arg_2.b, arg_2.b))), !select(vec3<bool>(arg_2.b, false, arg_0.b), vec3<bool>(arg_0.b, arg_2.b, false), vec3<bool>(false, true, arg_2.b)), !vec3<bool>(true, arg_0.b, arg_0.b))));
    return !select(any(!(!vec3<bool>(false, true, arg_0.b))), !arg_2.b, (true & (arg_0.c <= arg_0.c)) && true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_0 = 72559u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1155f, -1424f, -1767f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1149f, 1000f, -1588f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1791f, 483f, -198f), vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, 214f, 1044f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-313f, -416f, 829f)))))));
    global0 = array<i32, 16>();
    var var_2 = vec4<u32>(1758u, u_input.b, 20613u, u_input.b);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-444f + var_1.x), var_1.x, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 443f, 1269f))), (var_1.x == -520f) | true))));
    let var_3 = all(vec4<bool>(true && func_1(Struct_1(var_1.x, true, var_1.x), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(55653u, 16u)], -24184i, 0i), Struct_1(-563f, false, -617f), var_2.yx << (var_2.wx % vec2<u32>(32u))), !(!all(vec4<bool>(false, true, true, true))), true, !any(vec2<bool>(true, true))));
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(1734f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1487f, -134f)))));
}

