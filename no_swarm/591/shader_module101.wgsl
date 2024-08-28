struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<bool, 15>;

var<private> global2: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = ((vec4<u32>(78454u, firstLeadingBit(u_input.a), u_input.a, ~global2.b.a) << (countOneBits(~vec4<u32>(global2.b.b, 4294967295u, 4294967295u, 1u)) % vec4<u32>(32u))) | vec4<u32>(~global2.b.c.a.a.x << (reverseBits(86808u) % 32u), global2.b.a, ~(~u_input.a), global2.b.b)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(76046u, global2.b.b, 4294967295u), vec3<u32>(global2.b.b, 4294967295u, global2.b.b)), vec3<u32>(4294967295u, u_input.a, 0u)), vec3<u32>(global2.b.b, 4294967295u, 47592u) | ~vec3<u32>(u_input.a, 1u, global2.b.c.a.a.x)), global2.b.a, global2.b.b, u_input.a) % vec4<u32>(32u));
    global2 = Struct_5(u_input.c.yyx, global2.b);
    let var_1 = _wgslsmith_f_op_f32(min(823f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f)))))));
    global1 = array<bool, 15>();
    var_0 = ~((reverseBits(~vec4<u32>(var_0.x, 0u, 74509u, var_0.x)) ^ vec4<u32>(global2.b.c.a.a.x, u_input.a, ~29476u, var_0.x & 47080u)) ^ ~(~(~vec4<u32>(u_input.a, u_input.a, var_0.x, var_0.x))));
    return _wgslsmith_mult_u32(~(~_wgslsmith_sub_u32(~u_input.a, ~17873u)), _wgslsmith_div_u32(~(~0u | _wgslsmith_add_u32(u_input.a, var_0.x)), var_0.x));
}

fn func_2() -> u32 {
    global2 = Struct_5(vec3<i32>(_wgslsmith_add_i32(global2.a.x, 19845i), ~firstTrailingBit(min(u_input.c.x, -2147483647i)), firstTrailingBit(1i)), Struct_4(~1u, u_input.a, Struct_2(Struct_1(~vec2<u32>(0u, global2.b.c.a.a.x))), true));
    let var_0 = vec4<u32>(func_3(), abs(countOneBits(30663u)), u_input.a << (0u % 32u), ~_wgslsmith_mod_u32(~4294967295u, abs(global2.b.c.a.a.x)) & firstTrailingBit(1u));
    let var_1 = -1063f;
    global2 = Struct_5(u_input.c.xyx, Struct_4(~global2.b.a, ~u_input.a, Struct_2(Struct_1(vec2<u32>(320u, 1u))), !(global2.b.a < (var_0.x & 34372u))));
    let var_2 = false;
    return ~min(19744u, 4294967295u);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec2_u32(~select(_wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, 63102u)), vec2<u32>(0u, global2.b.c.a.a.x)), ~arg_0.c.a.a, vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(min(arg_1.c.a.a.x, 1u) & (global2.b.a & arg_0.c.a.a.x), firstLeadingBit(~u_input.a)), arg_1.c.a.a, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 33113u) ^ arg_0.c.a.a, ~vec2<u32>(9026u, arg_0.c.a.a.x)) ^ (global2.b.c.a.a >> (max(global2.b.c.a.a, arg_1.c.a.a) % vec2<u32>(32u)))));
    var var_1 = !(arg_2 != _wgslsmith_f_op_f32(-arg_2));
    global0 = abs(firstTrailingBit(_wgslsmith_sub_i32(-8624i, ~1i)));
    global0 = 1i;
    var_0 = _wgslsmith_div_u32(~func_2(), arg_1.a);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-940f, arg_2) - vec2<f32>(arg_2, 809f)) * vec2<f32>(-339f, 1744f)), vec2<f32>(arg_2, _wgslsmith_f_op_f32(round(-1305f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, 1280f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(795f, -599f), vec2<f32>(arg_2, -1031f))))))), !(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.a.x, -1i, -1i), u_input.c)) == ((-2147483647i >> (u_input.a % 32u)) >> (u_input.a % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(749f, -1014f)) * _wgslsmith_f_op_vec2_f32(func_1(global2.b, global2.b, -486f))) - vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, 253f)), -1114f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1000f)))))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(549f, 1474f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(583f, 753f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1936f, -753f))))));
    let var_1 = _wgslsmith_mod_u32(40652u, u_input.a) & _wgslsmith_mult_u32(0u, global2.b.b);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(527f, var_0.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -232f) - vec2<f32>(var_0.x, var_0.x))), vec2<f32>(var_0.x, -423f)))));
    var var_2 = -1736f;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-180f, -365f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, 239f)) * vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1995f * var_0.x), -488f))))));
    var var_3 = global2.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f - _wgslsmith_f_op_f32(select(-719f, -1000f, all(vec4<bool>(global2.b.d, true, false, false))))) - -1000f), var_0.x, ~vec2<i32>(reverseBits(1i & u_input.c.x), global2.a.x), vec3<i32>(7779i, -global2.a.x, 2147483647i));
}

