struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-14793i, 0i, 1i, 7888i);

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<vec2<u32>, 25>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), -345f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(global3.a.zxw, vec3<bool>(true, global3.a.x, any(global3.a)), global3.a.xwx), vec3<bool>(!all(global3.a), true, !any(global3.a) || false), global3.a.zxz);
    let var_1 = vec2<u32>(16192u, u_input.c);
    var var_2 = var_0.x | false;
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1379f, global3.b, global3.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, -1000f, -740f) - vec3<f32>(global3.b, 144f, global3.b))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1312f, global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b))), global3.b) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1900f, 1000f, global3.b, 134f))))), -2147483647i);
}

