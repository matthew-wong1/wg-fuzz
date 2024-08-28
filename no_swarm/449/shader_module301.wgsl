struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
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

var<private> global0: array<vec2<i32>, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_1(~_wgslsmith_clamp_u32(1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(35601u, 0u, arg_0.x, 14080u), vec4<u32>(10527u, u_input.a.x, 27215u, 3354u) ^ vec4<u32>(u_input.c.x, 1u, u_input.b, u_input.b))));
    let var_1 = !(!(!(!any(vec4<bool>(true, true, true, false)))));
    global0 = array<vec2<i32>, 12>();
    return !select(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, 0i, u_input.d, u_input.d)), _wgslsmith_clamp_i32(-2147483647i, u_input.d, 5753i)) == _wgslsmith_div_i32(270i | u_input.d, -182i), true, var_1);
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    return StorageBuffer(~4294967295u, countOneBits(-2855i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec4<bool>(true, false, func_1(vec3<u32>(u_input.b, 69822u, 4294967295u)), true)));
    let var_1 = ~u_input.a.zz;
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~reverseBits(4294967295u)), vec2<u32>(~_wgslsmith_clamp_u32(24158u, 4294967295u, 7050u), 1u));
    let x = u_input.a;
    s_output = func_2(Struct_1(~34984u));
}

