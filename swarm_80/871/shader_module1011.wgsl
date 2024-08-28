struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<vec2<u32>, 32>;

var<private> global2: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(893f, 865f), vec2<f32>(-739f, 403f), vec2<f32>(1862f, 257f), vec2<f32>(1837f, -758f), vec2<f32>(1510f, 558f), vec2<f32>(-1071f, 1773f), vec2<f32>(-265f, 1834f), vec2<f32>(-655f, 1346f), vec2<f32>(848f, -827f), vec2<f32>(1087f, 2162f), vec2<f32>(1000f, -166f), vec2<f32>(1101f, -349f), vec2<f32>(844f, 712f), vec2<f32>(-1000f, -1473f), vec2<f32>(-863f, -726f), vec2<f32>(1277f, 416f), vec2<f32>(-180f, -1000f), vec2<f32>(1476f, -689f), vec2<f32>(1000f, -1469f), vec2<f32>(373f, -866f), vec2<f32>(-1000f, 891f), vec2<f32>(-1184f, -1130f), vec2<f32>(-1000f, 874f), vec2<f32>(-752f, -698f), vec2<f32>(-2645f, 354f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1528f);
    global2 = array<vec2<f32>, 25>();
    global1 = array<vec2<u32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = var_1;
    var var_3 = vec3<u32>(0u, 4294967295u, abs(0u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(floor(var_0)));
}

