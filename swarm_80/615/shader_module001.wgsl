struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1000f), Struct_1(-1926f), Struct_1(-1063f), Struct_1(-1000f), Struct_1(-1304f), Struct_1(-347f), Struct_1(217f), Struct_1(1357f), Struct_1(-1878f), Struct_1(1000f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(1f);
    let var_1 = max(1i, -_wgslsmith_clamp_i32(~0i, -1i, 1i)) >> (u_input.b % 32u);
    var var_2 = vec4<u32>(~(_wgslsmith_sub_u32(u_input.b, 4294967295u) << (u_input.b % 32u)), _wgslsmith_dot_vec3_u32(~arg_0, arg_0) >> (1u % 32u), 4294967295u, arg_0.x) | firstLeadingBit(max(vec4<u32>(u_input.a.x, ~1u, arg_0.x | u_input.b, 21323u), select(u_input.a, u_input.a & vec4<u32>(arg_0.x, u_input.a.x, 2079u, 77u), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false))));
    global1 = array<Struct_1, 10>();
    let var_3 = true;
    return global1[_wgslsmith_index_u32(~1u, 10u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1903f, -570f)))));
    let var_1 = -2147483647i;
    let var_2 = reverseBits(arg_1);
    var var_3 = u_input.a.zyy;
    return func_2(~(~vec3<u32>(arg_1, min(17445u, 92485u), ~u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-vec4<i32>(firstLeadingBit(i32(-1i) * -1i), -13600i, max(abs(0i), _wgslsmith_clamp_i32(-22688i, 2147483647i, 4277i)), 28798i), u_input.b);
    global1 = array<Struct_1, 10>();
    global0 = array<vec2<f32>, 29>();
    var var_1 = var_0;
    let var_2 = var_0.a;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-754f))));
    global0 = array<vec2<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-134f, var_0.a, var_2), vec3<f32>(var_0.a, -627f, -905f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - -282f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a)), func_2(~u_input.a.wyy).a)), -13349i, u_input.a.yx, u_input.b);
}

