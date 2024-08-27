struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 69039u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    var var_0 = vec2<u32>(104908u, 19670u);
    let var_1 = -arg_1.e.a.x;
    var var_2 = 1i;
    let var_3 = _wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, var_1), firstTrailingBit(vec2<i32>(u_input.a.x, var_1))), i32(-1i) * -74088i), -arg_1.d);
    var var_4 = Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_3.x, _wgslsmith_sub_i32(8029i, 2147483647i), _wgslsmith_div_i32(16652i, u_input.a.x)), -5409i, 1i), select(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i, -2147483647i), arg_1.e.a)), vec3<i32>(-1i) * -vec3<i32>(var_3.x, var_1, var_1), true)), vec4<f32>(_wgslsmith_f_op_f32(-1124f - _wgslsmith_f_op_f32(arg_1.e.b.x + 315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_2.a.x, arg_2.a.x))))), _wgslsmith_f_op_f32(step(1000f, arg_1.b)), arg_1.b), max(~((vec4<i32>(arg_1.e.a.x, u_input.a.x, var_1, var_1) ^ vec4<i32>(-7203i, -1222i, arg_1.e.c.x, -1i)) & min(vec4<i32>(1i, u_input.a.x, -4914i, -22872i), arg_1.e.c)), ~arg_1.e.c));
    return !any(select(vec2<bool>(false, select(false, true, false)), vec2<bool>(true, true), false));
}

fn func_2(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1368f)) - -1074f))), true, _wgslsmith_mod_i32(29132i, -(~(u_input.a.x | -5025i))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.b.xz))));
    let var_1 = ~(vec2<i32>(var_0.c, -57558i) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(37123u, 0u)), arg_0.b.x | 1u) % vec2<u32>(32u)));
    global0 = _wgslsmith_div_vec2_u32(~min(arg_0.b.xy, vec2<u32>(4294967295u, _wgslsmith_add_u32(arg_0.b.x, arg_0.b.x))), arg_0.b.zy);
    global0 = arg_0.b.zz;
    global0 = u_input.b;
    return vec2<bool>(true, !func_3(var_0.a, Struct_4(vec3<u32>(arg_0.b.x, 0u, global0.x), _wgslsmith_f_op_f32(floor(-1438f)), vec4<u32>(arg_0.b.x, 42504u, 1u, 208u) & vec4<u32>(global0.x, u_input.b.x, 21951u, 18267u), var_1, arg_0.a), var_0.a));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> vec2<bool> {
    let var_0 = select(arg_1, !all(!func_2(Struct_5(Struct_3(arg_0.wxw, vec4<f32>(-1561f, 194f, 2420f, 150f), arg_0), vec3<u32>(global0.x, 1u, 37830u)))), true);
    var var_1 = vec2<u32>(u_input.b.x, (_wgslsmith_mod_u32(abs(u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, global0.x, global0.x)) & ~_wgslsmith_sub_u32(u_input.b.x, global0.x)) >> (global0.x % 32u));
    var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(18069u, 0u), abs(max(~vec2<u32>(global0.x, var_1.x), u_input.b)));
    var var_2 = arg_0.x;
    let var_3 = min(13170i, ~abs(u_input.a.x) ^ max(~20876i | ~arg_0.x, -28799i));
    return select(select(!select(vec2<bool>(true, true), !vec2<bool>(true, var_0), true), vec2<bool>(true, true), !any(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)))), select(select(!vec2<bool>(var_0, false), vec2<bool>(arg_1, true), true), vec2<bool>(~1u < firstTrailingBit(105402u), !arg_1), vec2<bool>(false, false)), !vec2<bool>(!arg_1, all(select(vec3<bool>(true, true, var_0), vec3<bool>(arg_1, arg_1, arg_1), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(select(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(0u, u_input.b.x)), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 17013u), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(17965u, u_input.b.x))), func_1(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), true)), countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(14004u, global0.x), u_input.b) << ((vec2<u32>(40896u, u_input.b.x) & u_input.b) % vec2<u32>(32u)))) & ~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, u_input.b), vec2<u32>(0u, global0.x)), reverseBits(6881u));
    var var_0 = abs(vec4<i32>(reverseBits(-43793i), firstTrailingBit(u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, 0i)));
    var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-countOneBits(u_input.a.x), 1i, ~(~u_input.a.x), 0i), max(select(vec4<i32>(var_0.x, 28816i, var_0.x, 2147483647i), select(vec4<i32>(-22171i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(var_0.x, u_input.a.x, -39993i, u_input.a.x), true), true), _wgslsmith_mod_vec4_i32(vec4<i32>(-17884i, var_0.x, -2147483647i, -2147483647i) | vec4<i32>(1i, u_input.a.x, -1i, 6702i), -vec4<i32>(u_input.a.x, 37624i, u_input.a.x, -2147483647i))), select(select(vec4<i32>(u_input.a.x, var_0.x, 12025i, var_0.x) ^ vec4<i32>(var_0.x, u_input.a.x, 0i, var_0.x), vec4<i32>(-65540i, 2147483647i, u_input.a.x, -1i), vec4<bool>(true, true, true, true)), vec4<i32>(~u_input.a.x, var_0.x >> (u_input.b.x % 32u), ~(-41854i), -2147483647i >> (1u % 32u)), true)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(36877i, firstLeadingBit(u_input.a.x), 1i, firstTrailingBit(1i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, 30628i, 1i), vec4<i32>(2147483647i, u_input.a.x, 0i, var_0.x)), select(vec4<i32>(1i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(var_0.x, 2147483647i, u_input.a.x, -2147483647i), vec4<bool>(false, false, true, false))), vec4<i32>(u_input.a.x, ~u_input.a.x, -var_0.x, min(var_0.x, var_0.x))), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i), vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, 0i)), -u_input.a.x, u_input.a.x << (u_input.b.x % 32u))));
    var var_1 = Struct_5(Struct_3(-firstLeadingBit(var_0.zzz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1108f, -590f, 1328f, -3139f)), firstLeadingBit(vec4<i32>(var_0.x, firstTrailingBit(31532i), _wgslsmith_dot_vec3_i32(vec3<i32>(87941i, 29325i, u_input.a.x), var_0.yzy), countOneBits(61066i)))), abs(min(vec3<u32>(u_input.b.x, global0.x, global0.x) << (vec3<u32>(1u, 1u, 103655u) % vec3<u32>(32u)), min(abs(vec3<u32>(4294967295u, 4294967295u, u_input.b.x)), ~vec3<u32>(u_input.b.x, 34258u, u_input.b.x)))));
    let var_2 = ~(-min(17092i, -1i));
    let var_3 = select(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), func_1(var_1.a.c, false).x)), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !vec3<bool>(func_1(vec4<i32>(var_1.a.c.x, var_0.x, -69428i, var_1.a.c.x), false).x, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(select(false, true, true) | (-2147483647i <= var_1.a.a.x), true, true), !vec3<bool>(all(vec4<bool>(true, false, true, false)), false, all(vec2<bool>(false, false))), false));
    var var_4 = ~_wgslsmith_sub_u32(_wgslsmith_add_u32(~4294967295u, ~_wgslsmith_div_u32(38404u, global0.x)), firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 72144u, u_input.b.x, u_input.b.x), vec4<u32>(85832u, u_input.b.x, var_1.b.x, u_input.b.x)))));
    var var_5 = Struct_5(var_1.a, ~vec3<u32>(26923u, var_1.b.x, _wgslsmith_dot_vec2_u32(~u_input.b, u_input.b)));
    var_1 = Struct_5(var_5.a, ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(52944u, 0u, var_1.b.x) ^ vec3<u32>(50936u, u_input.b.x, global0.x), _wgslsmith_sub_vec3_u32(var_5.b, vec3<u32>(1u, var_1.b.x, global0.x))), vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, var_1.b.x, 1u), firstTrailingBit(global0.x), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~abs(~var_1.b.x)), ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 10141u, 1u, 5542u), vec4<u32>(0u, 1u, global0.x, var_5.b.x)), 32125u), ~(var_1.a.a.yx >> (select(var_5.b.xx, u_input.b >> (vec2<u32>(35281u, 0u) % vec2<u32>(32u)), all(var_3)) % vec2<u32>(32u))));
}

