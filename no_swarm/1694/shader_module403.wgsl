struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    return -1090f;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) - 571f), arg_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(1000f * -1487f)))), arg_0.a, arg_0.a, _wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-2098f, Struct_2(arg_0, vec3<bool>(true, false, true)))) * 529f), -1043f)), true)));
    let var_1 = ~1u;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-1940f)), vec4<u32>(var_1, 1u, u_input.b.x, firstLeadingBit(firstTrailingBit(4294967295u)))), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), vec3<bool>(all(vec2<bool>(true, false)), true, false), select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = Struct_2(Struct_1(1004f, arg_0.e.a.b), arg_0.c.b);
    var_1 = arg_0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1320f, arg_0.e.a.a), vec2<f32>(var_1.a.a, 1000f)))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a.a, arg_0.c.a.a)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, var_1.a.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-294f, arg_0.c.a.a) - vec2<f32>(-1104f, 1000f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.d, arg_0.e.a.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-536f, var_1.a.a) + vec2<f32>(-255f, 1556f)))), select(false, false, any(vec4<bool>(true, true, true, true))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(929f * _wgslsmith_f_op_f32(var_2.x + -429f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) * -1000f)));
    return arg_0.e;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_3(-1i, _wgslsmith_add_u32(u_input.b.x, ((u_input.b.x | 95582u) | ~9252u) ^ u_input.b.x), func_4(Struct_3(u_input.a.x, _wgslsmith_mult_u32(3952u, u_input.c), func_2(Struct_1(-848f, vec4<u32>(32954u, u_input.b.x, u_input.b.x, 64992u))), _wgslsmith_f_op_f32(-arg_0), func_2(func_2(Struct_1(arg_0, u_input.b)).a)), vec3<u32>(reverseBits(~u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) | ~u_input.b.x, 1u)), arg_0, func_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + arg_0))), abs(u_input.b ^ u_input.b))));
    var var_1 = 1i;
    var_1 = -_wgslsmith_div_i32(u_input.a.x, 2147483647i);
    let var_2 = _wgslsmith_dot_vec3_u32(func_2(func_4(var_0, vec3<u32>(0u, ~var_0.e.a.b.x, _wgslsmith_clamp_u32(7488u, var_0.b, 55292u))).a).a.b.xxx, ~u_input.b.xzx);
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0, arg_0))))), 929f), u_input.b);
    return var_0.e.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!all(vec3<bool>(true, true, func_1(424f, vec4<i32>(-9410i, 20814i, u_input.a.x, u_input.a.x)))), true, true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(698f))), _wgslsmith_mult_vec4_u32(u_input.b, ~u_input.b)), !vec3<bool>(false, u_input.b.x >= _wgslsmith_mod_u32(4294967295u, 46558u), all(vec4<bool>(false, false, var_0.x, var_0.x))));
    let var_2 = func_4(Struct_3(u_input.a.x, u_input.c, var_1, _wgslsmith_f_op_f32(abs(-857f)), var_1), var_1.a.b.yyx << (~(~u_input.b.xzx) % vec3<u32>(32u)));
    var var_3 = u_input.b.x;
    let var_4 = func_2(func_2(Struct_1(-407f, vec4<u32>(min(var_1.a.b.x, var_1.a.b.x), max(var_1.a.b.x, u_input.b.x), 1u, 1u))).a).b;
    var var_5 = _wgslsmith_mod_u32(var_1.a.b.x ^ _wgslsmith_mod_u32(abs(~u_input.c), 1u), firstTrailingBit(4294967295u));
    var var_6 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, (31420u ^ (var_2.a.b.x << (var_2.a.b.x % 32u))) ^ ~(~var_1.a.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(161f))) * -472f))), reverseBits(u_input.a.x), _wgslsmith_f_op_f32(var_2.a.a * _wgslsmith_f_op_f32(-327f - 1000f)), vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(31103u), ~abs(124090u)), ~19832u, 79809u));
}

