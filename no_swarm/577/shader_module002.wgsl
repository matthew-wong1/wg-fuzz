struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-600f, 1000f, -530f);

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<vec4<bool>, 1>;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> bool {
    var var_0 = ~u_input.a;
    let var_1 = -firstTrailingBit(vec2<i32>(~(~var_0.x), ~(-u_input.a.x)));
    var var_2 = -364f;
    let var_3 = min(u_input.b, 4294967295u);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1540f, 294f, global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1329f, arg_0.x, arg_1.b)))))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    let var_1 = u_input.a.zwz;
    global3 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f + 1365f)) + global3.b));
    var var_2 = Struct_1(!select(true, any(select(vec3<bool>(global3.a, global3.a, global3.a), vec3<bool>(true, global3.a, global3.a), false)), global3.a), global3.b);
    global2 = array<vec4<bool>, 1>();
    var var_3 = global1[_wgslsmith_index_u32(4294967295u, 28u)];
    var_2 = global1[_wgslsmith_index_u32(u_input.b, 28u)];
    global1 = array<Struct_1, 28>();
    var var_4 = Struct_1(func_1(global0.yx, Struct_1(var_3.a, _wgslsmith_f_op_f32(exp2(global0.x))), global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b, -353f))) + -372f)), _wgslsmith_f_op_f32(max(1055f, var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~77670u, ~(~(4334u | u_input.b)), u_input.b, ~min(~1u, u_input.b & u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<f32>(_wgslsmith_f_op_f32(round(674f)), 454f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3.b, var_4.b)), 170f)), var_4.b));
}

