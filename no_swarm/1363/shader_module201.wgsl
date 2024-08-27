struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: array<vec4<i32>, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1068f * 1685f))) * -223f) * 482f), Struct_1(333f), Struct_1(_wgslsmith_f_op_f32(390f - _wgslsmith_f_op_f32(ceil(-286f)))));
    global0 = array<vec4<i32>, 9>();
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(!(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))) && func_2()), false, true);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(100f)), Struct_1(-809f), Struct_1(_wgslsmith_f_op_f32(ceil(-680f))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(419f * _wgslsmith_f_op_f32(f32(-1f) * -957f))));
    var var_3 = var_0.x;
    let var_4 = ~select(countOneBits(firstTrailingBit(~vec3<u32>(0u, 4294967295u, 1u))), ~vec3<u32>(66666u, 1u, 53436u), select(vec3<bool>(all(var_0.xz), var_0.x != false, any(vec3<bool>(var_0.x, var_0.x, true))), !(!var_0), var_0));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a))) * _wgslsmith_f_op_f32(737f * _wgslsmith_f_op_f32(abs(1f)))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec4<i32>, 9>();
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.a) - 2480f), 1075f, -1040f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -715f), arg_1.x)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), 428f, -594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -733f)))));
    var var_1 = vec4<u32>(46191u, select(~(~select(1u, 93032u, arg_0)), ~_wgslsmith_div_u32(1u, ~56278u), all(!vec3<bool>(arg_0, arg_0, false)) | select(arg_0, true, true)), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u))) << (_wgslsmith_mod_u32(105881u, select(_wgslsmith_mult_u32(0u, 0u), countOneBits(9276u), true)) % 32u), ~4294967295u);
    global0 = array<vec4<i32>, 9>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 9>();
    let var_0 = any(vec3<bool>(false, true, false));
    var var_1 = func_3((55373u >= _wgslsmith_dot_vec3_u32(vec3<u32>(34010u, 8704u, 4294967295u), vec3<u32>(1u, 1u, 1u))) && false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-496f, -1253f, -636f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, 1657f, 647f)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(137f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f), -1545f), -1646f)), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1511f * -215f) - 771f)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1488f - -616f), _wgslsmith_f_op_f32(max(2103f, -1005f))))), func_1(), func_1()));
    var_1 = Struct_1(1000f);
    let x = u_input.a;
    s_output = StorageBuffer(1100f);
}

