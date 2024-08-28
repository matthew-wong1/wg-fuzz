struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-393f, 1429f)) * vec2<f32>(1000f, -417f)), vec2<f32>(_wgslsmith_f_op_f32(-232f - -1013f), 137f), true))));
    let var_1 = reverseBits(16782i);
    let var_2 = reverseBits(_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a.yx, vec2<u32>(1u, u_input.a.x)), ~select(~vec2<u32>(u_input.a.x, 1u), abs(u_input.a.yy), true)));
    let var_3 = var_0.a.x;
    var var_4 = vec3<u32>(var_2.x, 3886u, 55387u);
    return ~u_input.a;
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a;
    var_0 = ~(~func_2());
    var var_1 = ~countOneBits(func_2().x) << (firstTrailingBit(~4294967295u) % 32u);
    var_0 = ~vec3<u32>(u_input.a.x, ~(~_wgslsmith_div_u32(24106u, 29685u)), var_0.x);
    let var_2 = -1021f;
    return Struct_2(select(vec3<u32>(u_input.a.x, abs(var_0.x >> (7316u % 32u)), var_0.x), u_input.a, ~(-u_input.c.x) != 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(3044f * 1064f))), _wgslsmith_f_op_f32(-2835f + _wgslsmith_f_op_f32(-497f + -1007f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1408f))), 359f)), -1000f, vec2<i32>(-countOneBits(_wgslsmith_mod_i32(u_input.d.x, -6980i)), u_input.d.x), min(var_0.a, vec3<u32>(_wgslsmith_add_u32(~var_0.a.x, var_0.a.x & u_input.a.x), ~u_input.a.x, 1u | var_0.a.x)), select(~_wgslsmith_add_vec3_u32(vec3<u32>(21579u, 71020u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 16303u, 1u), vec3<u32>(u_input.a.x, var_0.a.x, var_0.a.x))), var_0.a, true));
}

