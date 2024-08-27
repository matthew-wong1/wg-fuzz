struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 11> = array<i32, 11>(-5896i, -22465i, -12440i, 5004i, -428i, i32(-2147483648), -51300i, -139i, 2224i, 25459i, 1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(select(global0.a, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + 100f)) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.a)))))));
    var var_0 = !(-(~u_input.d.x) < -min(-10345i, -1i));
    var var_1 = true;
    var_1 = !select((4294967295u == _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 6675u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))) != true, true, false);
    var_1 = !any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(any(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, false, true)), true), vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0.a, global0.a, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(216f)) * global0.a)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    global0 = Struct_1(global0.a);
    var var_0 = arg_0;
    global1 = array<i32, 11>();
    var_0 = Struct_1(1000f);
    var var_1 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    global0 = Struct_1(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(func_2(Struct_1(-1867f), Struct_1(_wgslsmith_div_f32(global0.a, 778f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, 318f, global0.a, global0.a))))))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1211f));
    return Struct_1(-1008f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 11>();
    global0 = func_1(vec2<u32>(~u_input.a, select(34145u, 0u, true)) | vec2<u32>(1u, 1u));
    var var_0 = 33919u;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-186f)), global0.a), _wgslsmith_f_op_f32(func_3())));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), global0.a);
    var_1 = -648f;
    var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 65537u, 1953u), vec4<u32>(u_input.b.x, 29003u, 76285u, 4294967295u)) | u_input.b.x, 5508u), -1i, u_input.c);
}

