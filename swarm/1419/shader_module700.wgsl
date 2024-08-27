struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: bool;

var<private> global2: i32 = -456i;

var<private> global3: array<vec3<f32>, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 15>();
    let var_0 = countOneBits(-u_input.c);
    global3 = array<vec3<f32>, 25>();
    global2 = ~_wgslsmith_sub_i32(var_0.x, -1i);
    global3 = array<vec3<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i)) | _wgslsmith_add_vec4_i32(~abs(vec4<i32>(var_0.x, u_input.c.x, 1i, u_input.c.x)), -countOneBits(vec4<i32>(u_input.c.x, 0i, -1i, var_0.x))));
}

