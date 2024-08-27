struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<u32>(84105u, 65522u), vec4<i32>(51410i, 5402i, -58253i, -38495i), 45719u, -1i, true);

var<private> global1: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, false));

var<private> global2: array<vec3<f32>, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 1>();
    global0 = Struct_5(~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global0.c, global0.c, 4378u), vec4<u32>(0u, global0.c, 12161u, 29689u)), 1u)), global0.b, 0u, _wgslsmith_add_i32(global0.d, u_input.a), !all(select(!vec4<bool>(true, false, global0.e, true), !vec4<bool>(global0.e, true, global0.e, global0.e), global0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(-min(global0.b.xw, vec2<i32>(~u_input.a, _wgslsmith_mod_i32(u_input.a, -38938i))), u_input.a, abs(firstLeadingBit(abs(vec4<u32>(32930u, 4294967295u, global0.a.x, global0.a.x) & vec4<u32>(4294967295u, global0.a.x, global0.a.x, global0.c)))));
}

