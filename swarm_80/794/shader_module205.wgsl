struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(57351u, 24225u, 4294967295u), vec3<u32>(1u, 10633u, 21336u), vec3<u32>(1u, 0u, 14765u), vec3<u32>(1u, 45213u, 0u), vec3<u32>(2142u, 0u, 1u), vec3<u32>(0u, 1536u, 4294967295u), vec3<u32>(0u, 1u, 3261u), vec3<u32>(63610u, 0u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 69966u, 4294967295u), vec3<u32>(20701u, 0u, 2953u), vec3<u32>(54103u, 4294967295u, 0u), vec3<u32>(0u, 16551u, 31043u), vec3<u32>(3569u, 74243u, 35266u), vec3<u32>(12798u, 24876u, 34382u), vec3<u32>(4294967295u, 4294967295u, 53661u), vec3<u32>(26159u, 0u, 0u), vec3<u32>(1u, 37132u, 1u), vec3<u32>(0u, 6392u, 27913u), vec3<u32>(95273u, 43580u, 4294967295u), vec3<u32>(1u, 9875u, 7429u), vec3<u32>(2579u, 15985u, 0u), vec3<u32>(82903u, 0u, 4294967295u), vec3<u32>(14985u, 0u, 13622u), vec3<u32>(17788u, 5430u, 0u), vec3<u32>(36097u, 4957u, 37074u), vec3<u32>(0u, 0u, 0u), vec3<u32>(83148u, 21320u, 10501u), vec3<u32>(66441u, 1u, 22517u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(59012u, 1u, 3734u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(38986i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-204f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))));
}

