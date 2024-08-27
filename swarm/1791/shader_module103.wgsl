struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(1u, 0u, 1u), vec3<u32>(33084u, 0u, 4294967295u), vec3<u32>(32026u, 52691u, 31973u), vec3<u32>(39868u, 31481u, 4294967295u), vec3<u32>(36969u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 14189u));

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(589f, 1u), Struct_1(1643f, 0u), Struct_1(-1190f, 1u), Struct_1(-1328f, 1u), Struct_1(-1015f, 1u), Struct_1(730f, 4294967295u), Struct_1(295f, 1u), Struct_1(589f, 57200u), Struct_1(-1000f, 35736u), Struct_1(-1091f, 1u), Struct_1(917f, 10574u), Struct_1(-1466f, 33416u), Struct_1(-2380f, 1u), Struct_1(1446f, 1u), Struct_1(-1086f, 16486u), Struct_1(1611f, 0u), Struct_1(-834f, 1612u), Struct_1(-316f, 1u), Struct_1(-1479f, 61505u), Struct_1(1078f, 4294967295u), Struct_1(-190f, 61843u), Struct_1(-1434f, 4294967295u), Struct_1(550f, 0u), Struct_1(-294f, 13480u), Struct_1(-1300f, 4294967295u), Struct_1(1223f, 21650u));

var<private> global3: vec2<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global0 = array<vec3<u32>, 6>();
    global3 = ~vec2<i32>(142i, global3.x);
    var var_1 = u_input.a;
    let var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -109f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(var_0, _wgslsmith_clamp_vec3_u32(~(~var_0), ~(u_input.d ^ var_0), ~(~var_0))));
}

