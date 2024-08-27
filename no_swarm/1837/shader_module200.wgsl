struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -911f);

var<private> global1: array<Struct_3, 18>;

var<private> global2: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-818f, 356f), vec2<f32>(-514f, 985f), vec2<f32>(1204f, 211f), vec2<f32>(-945f, 531f), vec2<f32>(-970f, 323f), vec2<f32>(817f, 1176f), vec2<f32>(786f, 606f), vec2<f32>(-2100f, 1146f), vec2<f32>(432f, -130f), vec2<f32>(1015f, -666f), vec2<f32>(360f, 1000f), vec2<f32>(1027f, -1209f), vec2<f32>(-626f, 1769f), vec2<f32>(-312f, 418f), vec2<f32>(1052f, -510f), vec2<f32>(-1682f, -1469f), vec2<f32>(1000f, -1000f), vec2<f32>(236f, 899f));

var<private> global3: array<i32, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<u32>(countOneBits(29068u), min(_wgslsmith_mod_u32(firstTrailingBit(0u), ~0u), 100883u), ~(~14501u), 21818u), vec2<bool>(global0.a, !global0.a));
    global1 = array<Struct_3, 18>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-279f, global0.b, global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, var_1.zz);
}

