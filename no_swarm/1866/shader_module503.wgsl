struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 131948u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_u32(u_input.a, ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(131246u, 33448u, min(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -12824i), -vec2<i32>(-2147483647i, -2147483647i))), ~select(select(max(vec4<i32>(11298i, 2147483647i, 6889i, 1i), vec4<i32>(560i, -2147483647i, 6360i, 0i)), ~vec4<i32>(-2147483647i, -25512i, 0i, 0i), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true)), vec4<i32>(1489i, 37289i, 11999i, -9941i) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)))), 575f);
}

