struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

var<private> global2: u32 = 1u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> StorageBuffer {
    global1 = u_input.a.x;
    global2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.b.xwx, select(u_input.e, u_input.e, true)), ~vec3<u32>(_wgslsmith_mod_u32(9617u, u_input.b.x), u_input.b.x, ~(u_input.e.x ^ 48894u)));
    let var_0 = countOneBits(vec2<i32>(-54403i, _wgslsmith_add_i32(u_input.a.x, u_input.d)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f));
    global1 = 23771i;
    return StorageBuffer(reverseBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(8209i, var_0.x, u_input.d, 22025i) & vec4<i32>(u_input.d, -2147483647i, var_0.x, 32694i), abs(vec4<i32>(u_input.d, var_0.x, 49177i, 16355i)))), ~vec4<i32>(-2147483647i, u_input.d, u_input.a.x, 1i) | ~vec4<i32>(abs(u_input.d), var_0.x, u_input.a.x, i32(-1i) * -1i), vec4<u32>(max(~1u, ~(~u_input.b.x)), ~reverseBits(~4294967295u), min(~0u, ~u_input.e.x) >> (u_input.e.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(89243u, ~4294967295u), vec2<u32>(1226u, _wgslsmith_clamp_u32(60383u, u_input.b.x, 67047u)))), var_0, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var_0 = -(~u_input.c.x);
    let x = u_input.a;
    s_output = func_1();
}

