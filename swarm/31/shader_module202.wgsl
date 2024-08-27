struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(abs(vec4<i32>(u_input.b, u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.e), ~u_input.b)) << (~abs(_wgslsmith_div_vec4_u32(vec4<u32>(3320u, u_input.c, 26727u, 0u), vec4<u32>(u_input.d, u_input.c, 44637u, 0u))) % vec4<u32>(32u)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-909f * -1702f);
    let var_3 = Struct_1(4294967295u, ~reverseBits(var_0), abs(_wgslsmith_mult_vec2_u32((vec2<u32>(u_input.a, 4294967295u) | vec2<u32>(0u, u_input.d)) ^ (vec2<u32>(u_input.c, 4294967295u) >> (vec2<u32>(u_input.d, 69139u) % vec2<u32>(32u))), vec2<u32>(4294967295u, 73249u) >> (select(vec2<u32>(502u, 64467u), vec2<u32>(1u, 16279u), false) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, var_2, -674f)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(154f)), -1069f), _wgslsmith_f_op_f32(592f * _wgslsmith_f_op_f32(-var_2)), -155f)), !any(vec3<bool>(select(false, var_1, var_1), global1.x | true, any(vec4<bool>(var_1, var_1, false, true)))));
    var var_4 = Struct_1(u_input.d, var_3.b >> (~reverseBits(~vec4<u32>(u_input.d, var_3.a, 1u, u_input.a)) % vec4<u32>(32u)), var_3.c, var_3.d, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_4.b.x, var_4.b.x, var_0.x)), _wgslsmith_dot_vec4_i32(-var_0 << ((vec4<u32>(735u, u_input.d, var_3.c.x, 37424u) & ~vec4<u32>(12123u, var_3.a, var_3.a, var_3.a)) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_mod_i32(var_4.b.x, var_0.x), select(23707i, var_4.b.x, global1.x)))), vec3<i32>(-26627i, 2147483647i, u_input.b << (1u % 32u)));
}

