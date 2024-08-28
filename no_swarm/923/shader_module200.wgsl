struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(max(~vec4<i32>(-28462i, -1i, -1i, 13494i), -vec4<i32>(-14063i, -2147483647i, -13475i, 1i)))), -21318i, _wgslsmith_mult_vec3_i32(vec3<i32>(abs(firstLeadingBit(-1i)), _wgslsmith_div_i32(-122945i, 1i), -2147483647i), max(~countOneBits(vec3<i32>(-2147483647i, 1i, -39143i)), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 0i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -2147483647i, 13303i), vec4<i32>(-2147483647i, 2147483647i, -42023i, -30545i)), -36236i))), ~(~(~_wgslsmith_sub_u32(u_input.a, 37033u))));
}

