struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(1u), Struct_1(0u), Struct_1(62326u), Struct_1(14256u), Struct_1(0u), Struct_1(4294967295u), Struct_1(0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = ~(-2147483647i);
    return vec4<bool>(any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), !(all(vec4<bool>(true, false, false, false)) | all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)))), all(vec2<bool>(false, true)), true);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    global0 = array<Struct_1, 7>();
    var var_1 = !(!vec2<bool>((u_input.a | u_input.a) != 1u, true));
    var var_2 = func_3(global0[_wgslsmith_index_u32(u_input.a, 7u)]);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~0u), _wgslsmith_sub_u32(~1u, u_input.a) >> (_wgslsmith_div_u32(~_wgslsmith_mod_u32(1u, u_input.a), _wgslsmith_add_u32(101975u, u_input.a ^ 1u)) % 32u)), 7u)];
    return Struct_1(1u);
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = vec2<bool>(!(any(vec2<bool>(true, false)) || all(vec4<bool>(true, true, true, true))), true);
    var_0 = Struct_1(~8744u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, 819f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1256f, 448f)))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1276f, _wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(576f, -735f))))))));
    let var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(func_2().a, u_input.a), reverseBits(abs(~(~vec2<u32>(10439u, var_0.a)))));
    return -250f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.a, ~(1u ^ u_input.a));
    let var_1 = Struct_1(firstTrailingBit(1u));
    global0 = array<Struct_1, 7>();
    var var_2 = 10841u;
    var var_3 = vec2<u32>(1u, 1u);
    var var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, _wgslsmith_f_op_f32(trunc(-457f))))));
    var_2 = 0u;
    let var_5 = -1207f;
    var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-332f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1406f) + _wgslsmith_f_op_f32(var_5 + _wgslsmith_f_op_f32(var_4.x - var_4.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(floor(-902f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, _wgslsmith_f_op_f32(min(var_4.x, var_4.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_5)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(var_4.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(870f, _wgslsmith_f_op_f32(round(var_4.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1126f));
}

