struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 14>();
    var var_0 = arg_1;
    global0 = array<vec2<f32>, 14>();
    let var_1 = arg_1;
    let var_2 = Struct_2(arg_0);
    return 38393u;
}

fn func_1() -> bool {
    global0 = array<vec2<f32>, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, 596f, -504f, 614f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-488f, 908f, 1752f, 1000f) + vec4<f32>(537f, -1035f, 1000f, 1432f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, -156f, -179f), vec4<f32>(-319f, 625f, -687f, -1315f))))))));
    var var_1 = countOneBits(~vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(94668u, u_input.a, u_input.a), vec3<u32>(u_input.a, 58485u, 94786u)), vec3<u32>(32900u, 16073u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1463u, u_input.a, 22672u), vec4<u32>(4294967295u, 1u, u_input.a, 4294967295u)) ^ min(u_input.a, u_input.a), func_2(var_0.x, Struct_2(-1825f))));
    var var_2 = vec3<u32>(~(~1u), abs(1u), _wgslsmith_dot_vec3_u32(~(var_1.wwx | var_1.yxz), vec3<u32>(~var_1.x ^ 16288u, 51869u, firstLeadingBit(1u))));
    var var_3 = Struct_1(!select(true, true, any(vec2<bool>(true, true))));
    return false;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_2(var_0.a);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.a));
    global0 = array<vec2<f32>, 14>();
    var var_2 = ~((u_input.a >> (~min(u_input.a, u_input.a) % 32u)) | ~(~4294967295u));
    return _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 48726i;
    let var_1 = Struct_1(func_1());
    var var_2 = Struct_2(671f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a, 328f)) + 1145f), _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(ceil(var_2.a))), Struct_1(true & any(vec4<bool>(false, true, var_1.a, false))), var_1.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a))));
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -29921i), vec2<i32>(var_0, var_0)), var_0), vec2<i32>(var_0, var_0)), var_3.wwy, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(abs(~27338u), 14u)]))));
}

