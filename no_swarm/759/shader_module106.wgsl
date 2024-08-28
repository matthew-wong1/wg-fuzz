struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = 0u;
    var var_1 = Struct_4(!vec4<bool>(false, true, true | all(vec4<bool>(arg_0, true, false, false)), arg_0), -13976i);
    var var_2 = u_input.b >> (~vec4<u32>(firstLeadingBit(~u_input.b.x), ~(~0u), 4294967295u, _wgslsmith_div_u32(1u, 35475u)) % vec4<u32>(32u));
    var var_3 = ~(-firstLeadingBit(-u_input.a.x));
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(~var_2.x), 4294967295u, 2186u, u_input.b.x), vec4<u32>(~(~u_input.b.x), reverseBits(~u_input.b.x), var_2.x, var_2.x)) << (8442u % 32u);
    return vec4<u32>(u_input.b.x, firstTrailingBit(_wgslsmith_mult_u32(max(1u, ~u_input.b.x), ~var_2.x)), 19586u, u_input.b.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = ~(select(~u_input.b, u_input.b, vec4<bool>(select(arg_1.x, false, false), arg_3 <= -1274f, arg_2.a.b.x >= arg_2.a.b.x, true)) << ((u_input.b >> (firstLeadingBit(u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = u_input.b;
    var_0 = _wgslsmith_clamp_vec4_u32(~(~(~firstTrailingBit(vec4<u32>(var_0.x, 1u, 4294967295u, 0u)))), firstLeadingBit(func_3(all(arg_0)) >> (u_input.b % vec4<u32>(32u))), u_input.b);
    var_0 = u_input.b;
    var_0 = vec4<u32>(~select(~1u, ~u_input.b.x, true), func_3(!(705f > arg_3)).x << (~(~(4294967295u << (0u % 32u))) % 32u), arg_2.a.e.x, _wgslsmith_div_u32(91970u >> ((~arg_2.a.e.x ^ ~1u) % 32u), _wgslsmith_dot_vec2_u32(u_input.b.yw & _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, var_0.x), vec2<u32>(0u, 0u), u_input.b.zz), ~_wgslsmith_mod_vec2_u32(u_input.b.yw, vec2<u32>(1u, 1u)))));
    return _wgslsmith_f_op_f32(floor(-367f));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.x))), _wgslsmith_div_f32(154f, -1469f)))), vec2<f32>(170f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -447f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1854f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -1182f))))))) - arg_2.b.b);
    var var_1 = var_0.x;
    var_0 = arg_1.b;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(!arg_0.a.x, arg_0.a.x, arg_1.e.x <= (u_input.b.x & 10993u), false), !vec3<bool>(arg_0.a.x, arg_0.a.x, false), Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(arg_2.a - arg_1.b), 1i, 4294967295u, vec2<u32>(arg_2.b.e.x, arg_1.d) << (vec2<u32>(u_input.b.x, arg_2.c.a.e.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(var_0.x - var_0.x))));
    return _wgslsmith_div_u32(~58737u, 13864u) & _wgslsmith_sub_u32(min(u_input.b.x, ~arg_2.c.a.e.x), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(u_input.b, ~(~(~reverseBits(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-824f)));
    var_0 = _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(~1u >> (func_1(Struct_4(vec4<bool>(true, true, true, false), 27892i), Struct_1(u_input.a, vec2<f32>(-318f, var_1), u_input.a.x, 4294967295u, var_0.wz), Struct_3(vec2<f32>(1900f, 272f), Struct_1(vec2<i32>(u_input.a.x, -8764i), vec2<f32>(var_1, var_1), u_input.a.x, 0u, u_input.b.xy), Struct_2(Struct_1(u_input.c.yw, vec2<f32>(var_1, -1481f), u_input.c.x, u_input.b.x, var_0.xw)), var_1)) % 32u), firstLeadingBit(var_0.x), reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 1u))), func_3(true).x));
    var_0 = vec4<u32>(~87207u, 1u, u_input.b.x, func_3(true).x >> (~32995u % 32u));
    var_0 = u_input.b;
    let var_2 = (-2051i > min(-(0i >> (var_0.x % 32u)), -1i << (~u_input.b.x % 32u))) & false;
    let x = u_input.a;
    s_output = StorageBuffer(-43536i);
}

