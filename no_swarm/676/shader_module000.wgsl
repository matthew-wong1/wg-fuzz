struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec2<u32>(_wgslsmith_div_u32(4294967295u, firstTrailingBit(84408u)), select(~(~u_input.b.x), ~min(u_input.b.x, 15743u), all(vec2<bool>(true, true)))), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(35013i, 9866i), select(u_input.c.yy, vec2<i32>(-1i, -11962i), vec2<bool>(true, false))), u_input.a.x, -2147483647i & _wgslsmith_sub_i32(2147483647i, u_input.a.x), min(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_div_i32(1i, u_input.a.x))));
}

