struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-552f, 667f, 1000f, 306f), vec4<f32>(-2220f, 906f, -967f, 494f), vec4<f32>(-2041f, -431f, -472f, 484f), vec4<f32>(-1147f, -195f, -277f, 1205f), vec4<f32>(-215f, -2085f, 412f, 940f), vec4<f32>(-499f, -1609f, 1150f, -1237f), vec4<f32>(-771f, 1163f, 1108f, -240f), vec4<f32>(-644f, -718f, 694f, -433f), vec4<f32>(1518f, 1216f, 938f, 1143f), vec4<f32>(-555f, -1301f, 494f, 1383f), vec4<f32>(-804f, 1134f, -239f, 677f), vec4<f32>(-1000f, -930f, -906f, 201f), vec4<f32>(489f, 2389f, 223f, -193f), vec4<f32>(-715f, 1043f, -293f, -1930f), vec4<f32>(2022f, 599f, 370f, 1000f), vec4<f32>(340f, 728f, 1080f, 116f), vec4<f32>(-1000f, 293f, -1441f, 498f), vec4<f32>(848f, -796f, 1218f, 503f), vec4<f32>(373f, -2795f, -273f, -1237f), vec4<f32>(-1000f, -779f, -890f, 3306f), vec4<f32>(-1000f, -641f, -804f, 1000f), vec4<f32>(-500f, 339f, -954f, 211f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    let var_0 = _wgslsmith_div_u32(26720u, select(countOneBits(u_input.d << (countOneBits(4294967295u) % 32u)), 34293u, true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), -1i);
}

