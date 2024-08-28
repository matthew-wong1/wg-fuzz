struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-1000f, vec2<i32>(2147483647i, -33279i), vec2<f32>(376f, 672f)));

var<private> global2: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(1789f, 791f, -974f), vec3<f32>(1402f, 1150f, 429f), vec3<f32>(910f, -454f, -388f), vec3<f32>(1579f, -1011f, 1843f), vec3<f32>(768f, 1000f, -689f), vec3<f32>(1043f, -236f, 271f), vec3<f32>(1150f, 466f, -330f), vec3<f32>(936f, -1717f, -698f), vec3<f32>(1138f, 623f, 1576f), vec3<f32>(-141f, -765f, 1481f), vec3<f32>(-456f, -1000f, -758f), vec3<f32>(-845f, -718f, -385f), vec3<f32>(-238f, -437f, 1222f), vec3<f32>(-891f, 228f, -1000f), vec3<f32>(-190f, -687f, -635f), vec3<f32>(-500f, -2223f, 1328f), vec3<f32>(1022f, -1000f, 1392f), vec3<f32>(1580f, -1305f, -1000f), vec3<f32>(-1477f, 1609f, -884f), vec3<f32>(1000f, 882f, 421f), vec3<f32>(228f, -121f, -1000f), vec3<f32>(-929f, 725f, -650f), vec3<f32>(1538f, -104f, 400f), vec3<f32>(126f, -1270f, -595f), vec3<f32>(-677f, 676f, -450f), vec3<f32>(252f, 398f, -670f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(966f, _wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_f_op_f32(abs(global1.a.c.x)), global1.a.a);
    var var_1 = ~global1.a.b.x;
    global2 = array<vec3<f32>, 26>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2295f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)), _wgslsmith_f_op_f32(f32(-1f) * -316f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(972f, 282f, var_0.x, -2427f) - vec4<f32>(317f, 1250f, var_0.x, -547f))))));
    global2 = array<vec3<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(-global1.a.b.x, ~global1.a.b << (u_input.b.yx % vec2<u32>(32u)), global1.a.a);
}

