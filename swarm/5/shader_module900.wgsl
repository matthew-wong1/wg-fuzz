struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec4<i32>(2147483647i, -29399i, -2147483647i, -63211i), vec4<i32>(68443i, 24756i, -10722i, 1i)) | _wgslsmith_div_vec4_i32(min(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 46760i, -1i, -2147483647i)), select(vec4<i32>(-2147483647i, 58123i, 1i, -41841i), -vec4<i32>(-10918i, 32641i, 65252i, 2147483647i), true)), u_input.b.x);
}

