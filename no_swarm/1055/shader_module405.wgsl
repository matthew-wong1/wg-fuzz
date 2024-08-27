struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: f32 = -405f;

var<private> global1: vec3<f32> = vec3<f32>(-1155f, -442f, 928f);

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = ~min(~u_input.b.x, u_input.b.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(arg_1.e.x * arg_1.d.x))) + -537f));
    let var_1 = all(select(vec2<bool>(arg_1.c.x, true), select(select(vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1.a.zx, vec2<bool>(false, true)), vec2<bool>(true, arg_1.a.x), arg_1.c.x), all(vec4<bool>(false & arg_1.c.x, true, true, true))));
    global1 = arg_2.xzw;
    var var_2 = all(vec4<bool>(_wgslsmith_f_op_f32(sign(-1192f)) == 382f, any(select(vec3<bool>(true, true, arg_1.c.x), !arg_1.a, arg_1.a.x)), !any(vec2<bool>(true, var_1)) | true, true & (var_1 | (arg_1.b.x >= 225f))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2261f;
    var var_0 = u_input.a.x;
    let var_1 = func_1(~u_input.d, Struct_1(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-494f, global1.x, global1.x, 1279f) + vec4<f32>(-1301f, 1263f, -1000f, -1713f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1082f, 493f, global1.x, global1.x))))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), any(vec2<bool>(true, true))), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(432f)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(global1.x + -676f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.zx))) * vec2<f32>(_wgslsmith_f_op_f32(round(-1247f)), _wgslsmith_f_op_f32(exp2(global1.x))))), vec4<f32>(_wgslsmith_div_f32(-948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(847f, global1.x)))), 665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(global1.x - global1.x))), -1274f));
    let var_2 = var_1.a.x;
    let var_3 = u_input.d;
    global2 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-var_1.b.x))));
}

