struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    global0 = array<vec2<i32>, 5>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(785f, -1021f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1197f + -392f) * -190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1774f * 899f))))), abs(vec3<i32>(_wgslsmith_sub_i32(-u_input.c, u_input.c), firstTrailingBit(-u_input.c), firstTrailingBit(_wgslsmith_mod_i32(u_input.c, -1i)))), !select(vec3<bool>(1u == u_input.b.x, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), ~(~(~vec4<u32>(u_input.a, 21147u, 135839u, u_input.a) ^ ~vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 26523u))));
    var var_1 = var_0;
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-906f)) * var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), var_1.a);
    let var_3 = var_0;
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-905f, -516f, 1140f, 635f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 366f, 696f, -108f), vec4<f32>(190f, 1878f, -318f, 1258f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, 280f, 120f, -329f)), vec4<f32>(-668f, 440f, 1011f, -1984f))))));
    global0 = array<vec2<i32>, 5>();
    var var_1 = func_3();
    var var_2 = Struct_1(-1000f, ~(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, -1i, u_input.c)), vec3<i32>(u_input.c, -2147483647i, -1i)) | abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1i, -1i), vec3<i32>(u_input.c, u_input.c, -3789i)))), vec3<bool>(false, any(vec3<bool>(true, true, true)), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), max(max(vec4<u32>(~u_input.a, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.a), ~49858u, ~u_input.a), ~firstLeadingBit(vec4<u32>(u_input.a, 40966u, 61554u, 4294967295u))), vec4<u32>(max(~u_input.b.x, u_input.b.x), ~11067u, firstLeadingBit(u_input.b.x) | u_input.a, 0u)));
    global0 = array<vec2<i32>, 5>();
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(-var_0.x)) + var_0.x))), ~(_wgslsmith_mod_vec4_u32(select(var_2.d, vec4<u32>(var_2.d.x, 31684u, 0u, u_input.a), vec4<bool>(var_2.c.x, true, false, var_2.c.x)), var_2.d) ^ var_2.d));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global0 = array<vec2<i32>, 5>();
    var var_0 = Struct_1(-1708f, -_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, 0i, 1i) ^ ~vec3<i32>(62043i, u_input.c, u_input.c), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c, u_input.c, -2147483647i), abs(vec3<i32>(u_input.c, u_input.c, 2147483647i)))), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), vec4<u32>(4294967295u, abs(~_wgslsmith_clamp_u32(arg_2.b.x, u_input.a, 1u)), 8623u | arg_2.b.x, _wgslsmith_div_u32(~u_input.b.x, 4294967295u >> (arg_2.b.x % 32u)) >> ((15454u ^ ~arg_2.b.x) % 32u)));
    let var_1 = vec2<bool>(false, var_0.c.x);
    global0 = array<vec2<i32>, 5>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1213f * _wgslsmith_f_op_f32(exp2(arg_2.a))), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(-26476i, 4439i, u_input.c), select(var_0.b, var_0.b, var_0.c.x))), var_0.c, vec4<u32>(0u << (u_input.a % 32u), arg_2.b.x, _wgslsmith_clamp_u32(~u_input.a, 4294967295u ^ arg_2.b.x, 32548u), var_0.d.x) | var_0.d);
    return 4294967295u;
}

fn func_1() -> bool {
    global0 = array<vec2<i32>, 5>();
    var var_0 = Struct_2(1f, vec4<u32>(4294967295u, 7847u, _wgslsmith_dot_vec3_u32(~u_input.b, u_input.b) ^ 1u, _wgslsmith_sub_u32(~(~4294967295u), ~u_input.b.x)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -309f))) * _wgslsmith_f_op_f32(sign(-674f))), ~vec4<u32>(~_wgslsmith_sub_u32(0u, var_0.b.x), 69074u, 4294967295u, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1279f, var_0.a, 2226f) * vec4<f32>(-1000f, -184f, -1747f, var_0.a)), Struct_3(u_input.b.xy, Struct_2(var_0.a, var_0.b), -1000f), func_2())));
    let var_1 = vec2<u32>(var_0.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(select(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 26306u, all(vec3<bool>(false, false, false))), abs(0u)), u_input.a));
    let var_2 = _wgslsmith_mult_u32(var_1.x, 17620u);
    return all(!select(vec2<bool>(true, true), vec2<bool>(u_input.c <= u_input.c, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true | any(vec4<bool>(false, false, false, false)), ((u_input.c >> (u_input.a % 32u)) <= _wgslsmith_add_i32(u_input.c, 2147483647i)) | func_1());
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-u_input.c) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(82729u, u_input.a)), ~1u) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(69581i, u_input.c, -1i, u_input.c), -vec4<i32>(8873i, 0i, -33330i, u_input.c)), 2545i, max(-2147483647i, ~(27876i >> (u_input.b.x % 32u)))), vec4<i32>(~(-u_input.c), firstTrailingBit(select(1i, u_input.c, var_0.x) | u_input.c), u_input.c, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(-42901i, u_input.c, u_input.c, u_input.c), abs(vec4<i32>(-2147483647i, u_input.c, u_input.c, -8390i)))), vec4<i32>(u_input.c, 2147483647i, ~u_input.c, -6073i >> (~(2728u & u_input.b.x) % 32u)));
    let var_2 = ~u_input.b.x;
    let var_3 = !all(vec4<bool>(!(!var_0.x), (true && var_0.x) && (var_0.x || false), any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), var_0.x)), !var_0.x));
    var var_4 = _wgslsmith_clamp_u32(~(~u_input.b.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1690u) ^ vec2<u32>(u_input.a, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(86251u, u_input.a), vec2<u32>(0u, 21219u))), ~(~(var_2 ^ u_input.a))) & _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 10087u >> (var_2 % 32u)), var_2, 1u);
    var var_5 = !(!vec2<bool>((var_1.x > u_input.c) || (4294967295u >= var_2), all(!vec3<bool>(var_3, var_3, var_0.x))));
    var var_6 = ~(-(~var_1.zz));
    var var_7 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(2193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-348f)) - _wgslsmith_div_f32(1026f, -156f)), _wgslsmith_dot_vec3_i32(var_1.yyw, var_1.yyx) > (var_6.x | u_input.c)))), var_1.zyx, select(!(!vec3<bool>(true, var_0.x, false)), !select(vec3<bool>(false, false, false), !vec3<bool>(false, var_5.x, var_0.x), vec3<bool>(false, true, true)), !(!(!vec3<bool>(true, true, var_3)))), vec4<u32>(64705u, 25375u, 78803u, var_2 | u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-748f + var_7.a), -151f)))))), ~1i, _wgslsmith_f_op_f32(var_7.a * var_7.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2533f, _wgslsmith_f_op_f32(floor(var_7.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-967f, -286f) + vec2<f32>(var_7.a, -2401f))), var_7.c.zz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-615f, -367f), _wgslsmith_f_op_f32(max(471f, 1000f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-572f, 1376f), vec2<f32>(479f, var_7.a)))))), func_3())), -298f);
}

