struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4 = Struct_4(Struct_2(Struct_1(0u), 2362f), 28733i);

var<private> global2: array<u32, 7>;

var<private> global3: array<u32, 27>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    global3 = array<u32, 27>();
    var var_0 = vec2<f32>(global0.a.b, 396f);
    let var_1 = vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], ~2233u, 1u, abs(0u));
    let var_2 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1349f + _wgslsmith_f_op_f32(f32(-1f) * -2344f)) * _wgslsmith_f_op_f32(-1854f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), false)));
    global4 = 1286f;
    return select(vec2<bool>(false, true), !vec2<bool>(true && any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, false, true))), true);
}

fn func_2() -> vec4<bool> {
    global0 = Struct_4(Struct_2(Struct_1(1u), 474f), global1.b);
    let var_0 = !select(vec3<bool>(any(func_3(Struct_4(global1.a, global0.b))), func_3(Struct_4(Struct_2(Struct_1(18795u), 383f), global0.b)).x, any(vec3<bool>(false, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true));
    let var_1 = 0u;
    let var_2 = Struct_1(~1u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.a.b)), global1.a.b, _wgslsmith_f_op_f32(ceil(global1.a.b)));
    return select(!vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 51186u), vec2<u32>(4294967295u, global0.a.a.a)) != max(global1.a.a.a, 4294967295u), select(true, all(var_0.xy), global1.a.a.a < global0.a.a.a), false, false), select(select(select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, false), var_0.x), vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !(!(!vec4<bool>(true, false, true, var_0.x))), !vec4<bool>(select(true, var_0.x, true), all(vec2<bool>(var_0.x, true)), !var_0.x, global1.b < 1i)), var_0.x);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    var var_0 = all(arg_2.xz);
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(751f, 1460f, global1.a.b, global1.a.b), vec4<f32>(global1.a.b, -572f, global1.a.b, -1000f)))), vec4<f32>(1139f, _wgslsmith_div_f32(global1.a.b, 664f), 764f, global0.a.b)))), vec4<f32>(-2075f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.b), -893f))), 224f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.a.b, global1.a.b)), 664f)), _wgslsmith_f_op_f32(-global1.a.b)))));
    var var_3 = Struct_1(~max(u_input.b.x, 0u));
    global4 = global0.a.b;
    return (0u << (1u % 32u)) >> (global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~3111u, ~global0.a.a.a), 27u)] % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global1.a, -2147483647i);
    var var_0 = vec4<u32>(func_1(false, !any(vec3<bool>(false, true, true)), vec3<bool>(true, any(vec3<bool>(true, true, true)), true)) ^ _wgslsmith_div_u32(~global0.a.a.a, ~(global3[_wgslsmith_index_u32(global1.a.a.a, 27u)] ^ u_input.b.x)), u_input.b.x, ~(~global1.a.a.a), ~(~abs(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.b, u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-360f * -220f), _wgslsmith_div_f32(-235f, global1.a.b), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b - global1.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -940f))), global1.a.b, global1.a.b);
}

