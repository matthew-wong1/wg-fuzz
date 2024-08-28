struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-714f, -2119f, 313f), vec3<f32>(-880f, 1150f, 1000f), vec3<f32>(1236f, 141f, -862f), vec3<f32>(1343f, -164f, 398f), vec3<f32>(505f, 1023f, -670f), vec3<f32>(1789f, -897f, 1000f), vec3<f32>(1000f, 407f, 606f), vec3<f32>(1536f, 276f, 710f), vec3<f32>(245f, -865f, -554f), vec3<f32>(-267f, 698f, -163f), vec3<f32>(1000f, 540f, -312f), vec3<f32>(1006f, 723f, 1000f), vec3<f32>(-572f, -1259f, -135f), vec3<f32>(1681f, 237f, 212f), vec3<f32>(538f, -565f, 302f), vec3<f32>(441f, -397f, 198f));

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<vec3<u32>, 15>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec3<u32>(~u_input.b, ~16739u, u_input.b)), -1768f);
}

