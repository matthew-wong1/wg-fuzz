struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, -858f), Struct_1(true, 1536f), Struct_1(false, -1131f), Struct_1(false, 641f), Struct_1(false, -174f), Struct_1(true, -524f), Struct_1(false, 307f), Struct_1(true, 1192f), Struct_1(false, -431f), Struct_1(false, 156f), Struct_1(false, -973f), Struct_1(false, 372f), Struct_1(true, 993f), Struct_1(false, -152f), Struct_1(true, 625f), Struct_1(false, -1413f), Struct_1(false, -1459f), Struct_1(false, -134f), Struct_1(false, -1384f), Struct_1(true, 868f), Struct_1(false, 960f), Struct_1(false, 1027f), Struct_1(true, -1773f), Struct_1(false, 901f), Struct_1(false, 1330f), Struct_1(false, 268f), Struct_1(false, -395f), Struct_1(false, -1000f), Struct_1(false, 505f));

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-(u_input.d | 4833i)), u_input.e, _wgslsmith_mult_i32(-54863i, -16370i), _wgslsmith_mod_i32(~u_input.d << ((u_input.b.x >> (u_input.a.x % 32u)) % 32u), 1i)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, u_input.a.x), u_input.a.xz), _wgslsmith_mod_u32(0u | u_input.a.x, abs(1u)), ~58507u), u_input.e);
}

