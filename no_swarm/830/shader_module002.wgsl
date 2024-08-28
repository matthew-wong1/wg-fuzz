struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-577f, vec4<bool>(false, true, false, false));

var<private> global1: array<f32, 7> = array<f32, 7>(1004f, 706f, 950f, 257f, 580f, -1796f, 1314f);

var<private> global2: vec4<f32>;

var<private> global3: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(25462u, 7u)], global2.x))), global0.a, -139f, _wgslsmith_f_op_f32(-arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) + -1418f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -794f))))))));
    let var_1 = Struct_1(true);
    global1 = array<f32, 7>();
    let var_2 = var_1;
    return !global0.b;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.wzw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-455f, arg_0.a, global2.x)), arg_1.zwz), select(vec3<bool>(!arg_0.b.x, false, true), arg_0.b.zzw, !vec3<bool>(true, arg_0.b.x, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, -1010f, global2.x, 354f))))))));
    var var_2 = max(u_input.c, _wgslsmith_div_vec3_u32(u_input.c, (~u_input.c & vec3<u32>(u_input.d, u_input.d, u_input.d)) ^ u_input.c));
    var var_3 = ~((_wgslsmith_mult_u32(1u, var_2.x) << (~var_2.x % 32u)) | u_input.a);
    global3 = ~u_input.b.x;
    return u_input.b.x;
}

fn func_1() -> vec4<bool> {
    global3 = u_input.b.x;
    global0 = Struct_2(_wgslsmith_f_op_f32(-global0.a), select(!select(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), !vec4<bool>(true, false, global0.b.x, global0.b.x), func_2(vec2<f32>(1423f, 1207f), 26758u, 1u)), global0.b, global0.b));
    var var_0 = u_input.b.x & func_3(Struct_2(_wgslsmith_f_op_f32(-global0.a), global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-323f, -495f, global1[_wgslsmith_index_u32(59994u, 7u)], 949f) + vec4<f32>(global0.a, 925f, -2306f, 391f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1089f, 463f, global0.a, global0.a)))));
    global3 = _wgslsmith_clamp_i32(51801i, 2147483647i, -1i);
    var var_1 = Struct_2(1983f, func_2(vec2<f32>(global2.x, 962f), u_input.c.x, ~select(u_input.a, 1u, global0.b.x)));
    return vec4<bool>(all(!var_1.b.ywz), any(!vec3<bool>(true, !global0.b.x, true)), true, global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(43528u, 7u)], 107f, 770f, global1[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<f32>(global2.x, global0.a, global2.x, -319f))) * vec4<f32>(-1795f, _wgslsmith_f_op_f32(1971f * global2.x), _wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(floor(109f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, -161f, global2.x, -427f))))), !global0.b)));
    let var_0 = select(func_1(), global0.b, func_1().x);
    global3 = ~(i32(-1i) * -_wgslsmith_mod_i32(abs(u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, 5360i)));
    let var_1 = Struct_1(-116f < global1[_wgslsmith_index_u32(133156u, 7u)]);
    let var_2 = Struct_2(-1115f, select(vec4<bool>(true, var_1.a, var_0.x, false), !vec4<bool>(true, select(global0.b.x, var_1.a, false), 48310u > u_input.d, false), global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.wx))), vec2<f32>(_wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_f_op_f32(sign(1000f))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-636f, global1[_wgslsmith_index_u32(32643u, 7u)])), var_2.a), _wgslsmith_f_op_f32(1931f + 638f))), ~(-(~abs(25920i))));
}

