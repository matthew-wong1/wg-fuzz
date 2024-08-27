struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: Struct_3,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: i32) -> vec2<u32> {
    return ~vec2<u32>(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), ~arg_0 >> (vec3<u32>(7892u, arg_0.x, 41017u) % vec3<u32>(32u))), _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 24983u, 72645u), vec4<u32>(26697u, arg_0.x, arg_0.x, u_input.a))), reverseBits(u_input.d)));
}

fn func_4(arg_0: vec2<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-1190f - -2294f)));
    var var_1 = Struct_1(-1945f);
    var_0 = var_1.a;
    let var_2 = vec2<u32>(firstTrailingBit(((104646u ^ u_input.d) ^ (arg_0.x & u_input.d)) ^ _wgslsmith_div_u32(27695u, u_input.d)), ~u_input.a);
    var_0 = _wgslsmith_f_op_f32(var_1.a * -164f);
    return vec4<bool>(any(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(all(vec3<bool>(false, true, true)), true, select(true, true, false)), false)), true, all(select(vec4<bool>(all(vec2<bool>(false, true)), true, false, select(true, true, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, all(vec3<bool>(true, false, true))))), false);
}

fn func_2() -> i32 {
    var var_0 = select(vec4<bool>(all(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), u_input.d <= u_input.d)), any(vec3<bool>(true, true, true)), false, all(func_4(func_3(vec3<u32>(u_input.d, 1u, 17392u), 43237i, u_input.b)))), select(!vec4<bool>(u_input.c > u_input.b, true, true, false), !vec4<bool>(u_input.d >= u_input.d, true, true, true), false), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)))));
    global0 = array<vec3<f32>, 6>();
    var var_1 = Struct_5(Struct_2(_wgslsmith_mult_u32(firstTrailingBit(54141u), ~u_input.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-526f)))), !any(func_4(vec2<u32>(u_input.a, u_input.a)).yx), select(var_0.xyz, select(var_0.zww, !vec3<bool>(var_0.x, true, false), !var_0.wwz), var_0.wzw)), Struct_3((~u_input.a | max(12131u, u_input.a)) & 39471u));
    global0 = array<vec3<f32>, 6>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b + -245f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.b * var_1.a.b), -636f), 951f, _wgslsmith_f_op_f32(f32(-1f) * -588f))));
    return abs(~0i);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(13052u, u_input.a), vec2<u32>(arg_3.a, 55974u))) ^ (~vec2<u32>(arg_3.a, 1u) ^ (vec2<u32>(34201u, 12377u) ^ vec2<u32>(1u, u_input.a))), vec2<u32>(arg_3.a, u_input.d)));
    global0 = array<vec3<f32>, 6>();
    global0 = array<vec3<f32>, 6>();
    let var_1 = Struct_5(Struct_2(_wgslsmith_div_u32(func_3(vec3<u32>(4294967295u, 12187u, u_input.a), arg_1, u_input.b).x, 0u) ^ 1699u, -1709f, func_4(_wgslsmith_sub_vec2_u32(var_0, var_0 << (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u)))).x, !(!select(arg_2.xww, arg_2.xyz, arg_2.x))), Struct_3(var_0.x));
    global0 = array<vec3<f32>, 6>();
    return StorageBuffer(var_1.a.b, countOneBits(~u_input.d), firstTrailingBit(vec3<i32>(-17833i >> (1u % 32u), ~1i, -303i) & ~(vec3<i32>(arg_1, arg_1, arg_1) | vec3<i32>(u_input.b, -5126i, arg_1))), -_wgslsmith_mod_i32(1i, firstLeadingBit(arg_1 | u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1417f, -1078f)))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_mult_i32(firstLeadingBit(u_input.c), u_input.b);
    global0 = array<vec3<f32>, 6>();
    global0 = array<vec3<f32>, 6>();
    var var_1 = select(vec2<u32>(1u, u_input.d), ~(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(50105u, u_input.a), vec2<u32>(u_input.d, 10330u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(82722u, 40166u)), select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 30604u), false))), true);
    global0 = array<vec3<f32>, 6>();
    return func_5(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(274f - _wgslsmith_f_op_f32(1158f * 872f)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(155f - -607f))))), _wgslsmith_sub_i32(func_2(), u_input.c), !(!vec4<bool>(true, func_4(vec2<u32>(40535u, 63204u)).x, all(vec2<bool>(false, false)), true)), Struct_2(64969u, -1295f, all(vec2<bool>(select(true, true, true), true)), vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(552f, 202f) + vec2<f32>(354f, -693f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(453f, -1005f), vec2<f32>(727f, -117f))))))));
    let var_1 = var_0.x;
    var var_2 = ~(~(25974u | u_input.d));
    let x = u_input.a;
    s_output = func_1();
}

