struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = abs(0i) ^ u_input.a.x;
    let var_2 = ~_wgslsmith_sub_vec2_i32(-(u_input.a ^ vec2<i32>(60093i, 2147483647i)), u_input.a);
    let var_3 = u_input.c.x;
    var var_4 = i32(-1i) * -1i;
    var_4 = _wgslsmith_clamp_i32(13702i, min(-2147483647i, i32(-1i) * -18889i), var_2.x >> (0u % 32u));
    let var_5 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~firstLeadingBit(~u_input.c.x), ~u_input.c.x & var_3));
}

