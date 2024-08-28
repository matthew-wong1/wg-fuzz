struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: i32;

var<private> global2: u32 = 28489u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    global2 = _wgslsmith_dot_vec4_u32(u_input.c, min(~firstTrailingBit(~vec4<u32>(53672u, 4294967295u, u_input.d, arg_2)), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), u_input.c)));
    var var_0 = Struct_1(4294967295u, arg_3.zx, u_input.c.zww, _wgslsmith_add_i32(-2147483647i, -u_input.b.x));
    return arg_2 & 8739u;
}

fn func_1() -> StorageBuffer {
    global1 = u_input.e;
    var var_0 = -540f;
    var var_1 = u_input.d;
    let var_2 = any(vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(630f * 2128f), 2140f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)), true, ~u_input.a.x == 5441u));
    var_1 = ~(~max(_wgslsmith_add_u32(func_2(u_input.a.x, vec2<f32>(-476f, -304f), u_input.a.x, vec3<bool>(var_2, true, var_2)), ~u_input.c.x), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 16221u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~3518u)));
    return StorageBuffer(_wgslsmith_clamp_u32(~(~countOneBits(u_input.c.x)), min(u_input.d, firstTrailingBit(u_input.a.x)), select(3839u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.c.zz), 22196u, u_input.d), (u_input.e | -34310i) != (-20246i << (u_input.c.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1i;
    global2 = _wgslsmith_add_u32(~u_input.a.x, 1u);
    var var_0 = Struct_2(true, _wgslsmith_sub_i32(-select(u_input.b.x ^ 2147483647i, u_input.b.x >> (u_input.d % 32u), true), u_input.e));
    let var_1 = vec2<bool>(!var_0.a, false);
    let var_2 = ~u_input.c.zxy >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(u_input.d, u_input.a.x), min(u_input.a.x, 36218u), ~44988u), u_input.c.zxy) % vec3<u32>(32u));
    let var_3 = 12441u;
    let x = u_input.a;
    s_output = func_1();
}

