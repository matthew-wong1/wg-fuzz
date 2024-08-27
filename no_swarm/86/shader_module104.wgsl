struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = Struct_2(vec2<f32>(1378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.x, 1377f, global0.c)) * -138f))), select(u_input.c, ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, u_input.c.x, global0.b.x, u_input.c.x), max(u_input.c, global0.b)), vec4<bool>(arg_0, false, false, (1i < u_input.b.x) || all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-407f))) <= -698f);
    global0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(272f * global0.a.x), -832f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(-global0.a.x))), 1549f), global0.b, arg_0);
    let var_0 = Struct_1(select(firstTrailingBit(-2147483647i), 2147483647i >> (_wgslsmith_mod_u32(4294967295u, ~0u) % 32u), !all(select(vec4<bool>(global0.c, global0.c, arg_0, true), vec4<bool>(arg_0, false, false, false), true))), 53237u, reverseBits(u_input.d.x), u_input.c.x, !select(select(vec3<bool>(true, false, arg_0), vec3<bool>(false, false, true), select(vec3<bool>(true, global0.c, false), vec3<bool>(global0.c, global0.c, arg_0), vec3<bool>(global0.c, global0.c, true))), select(!vec3<bool>(global0.c, arg_0, false), vec3<bool>(true, true, true), arg_0 & true), !select(vec3<bool>(global0.c, true, true), vec3<bool>(false, arg_0, global0.c), vec3<bool>(false, arg_0, global0.c))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))));
    var var_2 = 31250i;
    return ~firstLeadingBit(~(~51469u));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32) -> Struct_2 {
    global0 = Struct_2(global0.a, ~(select(vec4<u32>(4294967295u, u_input.c.x, global0.b.x, 1u), vec4<u32>(0u, global0.b.x, arg_2, 1u), true) ^ vec4<u32>(firstLeadingBit(arg_2), 1u, global0.b.x & 67486u, ~4294967295u)), true);
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(0u) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.x, 37728u, 57853u, 16553u), u_input.c), global0.b | vec4<u32>(u_input.c.x, u_input.c.x, arg_2, 0u)) % 32u), 33664u ^ arg_2), vec2<u32>(~arg_2, global0.b.x));
    let var_1 = Struct_1(reverseBits(u_input.a), ~1u | ~(~_wgslsmith_sub_u32(26730u, var_0.x)), -(~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 0i, -1i, -1868i), vec4<i32>(u_input.a, u_input.b.x, u_input.d.x, 17164i)))), _wgslsmith_sub_u32(~1u, ~func_3(arg_1)), select(select(select(vec3<bool>(arg_0, global0.c, true), !vec3<bool>(arg_0, true, true), select(vec3<bool>(arg_0, true, arg_1), vec3<bool>(false, true, global0.c), vec3<bool>(arg_1, true, arg_0))), select(vec3<bool>(global0.c, global0.c, true), select(vec3<bool>(false, arg_0, arg_1), vec3<bool>(false, global0.c, true), false), true), select(select(vec3<bool>(false, arg_0, true), vec3<bool>(global0.c, arg_0, arg_1), vec3<bool>(arg_1, global0.c, true)), select(vec3<bool>(true, arg_1, global0.c), vec3<bool>(arg_1, false, arg_0), vec3<bool>(true, false, arg_0)), any(vec3<bool>(global0.c, false, false)))), select(vec3<bool>(true, true, arg_0), select(!vec3<bool>(true, arg_1, arg_0), select(vec3<bool>(arg_1, arg_1, global0.c), vec3<bool>(arg_1, false, true), true), !vec3<bool>(true, arg_0, arg_1)), vec3<bool>(!arg_1, any(vec2<bool>(global0.c, true)), any(vec2<bool>(false, global0.c)))), vec3<bool>(global0.c, false, _wgslsmith_f_op_f32(f32(-1f) * -414f) > _wgslsmith_f_op_f32(min(-263f, global0.a.x)))));
    global0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(sign(global0.a.x)), global0.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(954f)) - _wgslsmith_f_op_f32(global0.a.x - global0.a.x))), -215f), vec4<u32>(abs(3776u), _wgslsmith_mod_u32(global0.b.x, ~min(var_1.b, 4294967295u)), 0u, max(4294967295u, _wgslsmith_sub_u32(arg_2, _wgslsmith_dot_vec3_u32(u_input.c.zzw, vec3<u32>(arg_2, global0.b.x, arg_2))))), false);
    return Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, 395f)))))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(43137u), ~var_0.x), 19774u), min(global0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46163u, u_input.c.x), vec3<u32>(global0.b.x, 1u, 4294967295u))) ^ u_input.c.x, select(min(4294967295u, 6627u) | (var_1.b << (1u % 32u)), _wgslsmith_mult_u32(32434u, var_0.x), arg_0), var_1.d), false);
}

fn func_1(arg_0: vec3<f32>) -> vec4<u32> {
    global0 = func_2(!global0.c, !all(!select(vec2<bool>(false, global0.c), vec2<bool>(true, global0.c), global0.c)), firstLeadingBit(u_input.c.x) ^ 41406u);
    return reverseBits(vec4<u32>(global0.b.x, ~1u, 63192u, global0.b.x) >> (vec4<u32>(~(~global0.b.x), global0.b.x, ~1u, global0.b.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_add_vec4_u32(firstTrailingBit(func_1(vec3<f32>(1439f, 325f, global0.a.x)) >> (global0.b % vec4<u32>(32u))), ~vec4<u32>(90579u, ~25179u, u_input.c.x, u_input.c.x)), global0.c);
    let var_0 = max(vec3<i32>(-3586i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b.x, u_input.a) ^ u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(5243i, u_input.b.x), vec2<i32>(-53784i, -24802i))), -1i), select(u_input.d, vec3<i32>(reverseBits(-1i), u_input.a, select(0i, max(u_input.b.x, u_input.a), global0.c)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.b.wy, vec2<u32>(global0.b.x, 18445u)), ~vec2<u32>(43516u, 0u)) >= 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~u_input.c.x, func_1(vec3<f32>(global0.a.x, global0.a.x, 1297f)).x), firstTrailingBit(_wgslsmith_mod_vec3_u32(global0.b.yyy, global0.b.zwz)))));
}

