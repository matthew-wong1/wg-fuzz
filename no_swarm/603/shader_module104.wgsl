struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = !(!(!(!arg_0.x)));
    var_0 = arg_0.x;
    var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1612f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f) * _wgslsmith_f_op_f32(round(538f)))))) - _wgslsmith_f_op_f32(f32(-1f) * -798f));
    global0 = array<vec4<i32>, 20>();
    return 1f;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true)))) * -1235f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 1f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-197f * 167f), 364f))))), 1391f, 274f, -164f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(var_0.wz)));
    let var_2 = firstTrailingBit(u_input.a.yy & min(u_input.b ^ vec2<u32>(u_input.b.x, u_input.a.x), u_input.b)) | (select(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 92602u), u_input.b), vec2<u32>(u_input.b.x, u_input.a.x), vec2<bool>(true, true)) << (vec2<u32>(max(4294967295u, u_input.b.x), ~70280u) % vec2<u32>(32u)));
    let var_3 = var_2.x;
    let var_4 = Struct_1(var_0.wx);
    return var_4;
}

fn func_1() -> StorageBuffer {
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    let var_0 = !(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), all(vec2<bool>(true, true))));
    let var_1 = func_2();
    var var_2 = func_2();
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -420f), var_1.a.x, -1138f), -478f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-227f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(exp2(var_1.a.x))), _wgslsmith_div_f32(var_1.a.x, -853f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = !(countOneBits(u_input.b.x) > 0u);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1258f, -1131f, 1255f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, -832f, -624f) + vec3<f32>(1580f, 784f, 150f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(691f, -382f, -308f)))) + vec3<f32>(1f, -436f, -342f)) * vec3<f32>(_wgslsmith_f_op_f32(floor(-1702f)), 1431f, -1525f)), select(!vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(!(-30590i < var_0), false, true & all(vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    var_1 = false;
    let var_3 = ~4294967295u;
    let x = u_input.a;
    s_output = func_1();
}

