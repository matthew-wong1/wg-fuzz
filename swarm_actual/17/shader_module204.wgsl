struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, true, vec3<f32>(573f, 1109f, 800f));

var<private> global1: array<vec2<f32>, 19>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-15577i, i32(-1i) * -2147483647i)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, 31316i), ~countOneBits(vec2<i32>(u_input.c, -2147483647i)))));
}

