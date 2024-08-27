struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<f32, 20>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(u_input.e, 1i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4437u, countOneBits(_wgslsmith_mult_u32(35836u, 40713u))), ~vec2<u32>(1u, countOneBits(u_input.c))) % 32u);
    var var_1 = ~(-(vec3<i32>(41649i, var_0, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(21293u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])) & vec3<i32>(-2147483647i, max(global0[_wgslsmith_index_u32(u_input.c, 9u)], 55466i), abs(global0[_wgslsmith_index_u32(8195u, 9u)]))));
    var var_2 = global1[_wgslsmith_index_u32(22489u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_div_vec3_i32(~vec3<i32>(var_0, 0i, 2147483647i), vec3<i32>(2147483647i, u_input.d, 2147483647i))), u_input.a);
}

