struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec2<bool> {
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    var var_0 = vec4<bool>(any(vec3<bool>(true, true, true)), true, true || !all(vec2<bool>(true, true)), true);
    global0 = array<vec4<f32>, 25>();
    return var_0.zx;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(1123f - -708f);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f))), ~(arg_1 & 1u), 336f, ~u_input.c.zy), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_1, 486f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(981f, -1018f, var_1), vec3<f32>(260f, -184f, -1266f)))))), select(!select(!vec4<bool>(arg_2, false, false, false), select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), arg_2), !vec4<bool>(false, arg_2, arg_2, arg_2)), vec4<bool>(arg_2, arg_2, true, !(!arg_2)), select(!vec4<bool>(false, false, false, arg_2), vec4<bool>(true, true, false & arg_2, arg_2), vec4<bool>(arg_1 > u_input.c.x, true, arg_2, func_2().x))));
    var_0 = true;
    var_0 = arg_2;
    return var_2.a.a;
}

fn func_1() -> Struct_2 {
    let var_0 = select(u_input.c.zz, vec2<u32>(~(~u_input.c.x), select(~u_input.c.x, u_input.c.x, true)), select(func_2(), vec2<bool>(any(vec2<bool>(false, false)), true), false)) << (~(~select(~vec2<u32>(0u, u_input.c.x), vec2<u32>(0u, u_input.c.x), true)) % vec2<u32>(32u));
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    return Struct_2(Struct_1(-866f, reverseBits(0u), _wgslsmith_f_op_f32(-1f), firstTrailingBit(countOneBits(abs(vec2<u32>(14508u, var_0.x))))), max(firstTrailingBit(_wgslsmith_mod_i32(u_input.b & -74866i, 38154i)), u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -413f)) - 1526f), _wgslsmith_f_op_f32(func_3(select(u_input.a, u_input.a, false), ~u_input.c.x, true)), -1668f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(637f)), -298f, 139f) + vec3<f32>(-1303f, 2476f, 1f))), vec4<bool>(!select(any(vec2<bool>(true, false)), true, 62405u >= var_0.x), !(!func_2().x), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 25>();
    let var_0 = u_input.c.x;
    let var_1 = func_1();
    let var_2 = var_1.a;
    global0 = array<vec4<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<u32>(_wgslsmith_add_u32(28396u, 1u), firstTrailingBit(var_0), ~u_input.c.x, ~45813u)), var_1.c.xx, 1u, 2147483647i);
}

