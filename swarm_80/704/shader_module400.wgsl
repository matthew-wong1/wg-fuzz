struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -1i, 2147483647i, -37880i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, _wgslsmith_add_i32(82094i, -1i) & ~u_input.c, u_input.c), ~u_input.d);
    var_0 = ~firstLeadingBit(-((global0.wzy << (u_input.b % vec3<u32>(32u))) ^ vec3<i32>(0i, -1i, -1i)));
    let var_1 = vec2<i32>(0i, ~firstTrailingBit(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(1204f);
}

