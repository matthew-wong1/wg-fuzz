struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a.x) * _wgslsmith_f_op_f32(-arg_2.d.b.x)))));
    global0 = vec2<bool>(all(!vec2<bool>(global0.x, global0.x)), false);
    var_0 = _wgslsmith_f_op_f32(-arg_2.d.b.x);
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, u_input.d.x, u_input.d.x), vec3<u32>(arg_1.x, u_input.a, 3451u)) >> (~u_input.a % 32u), ~arg_3), 56256u, abs(~90667u ^ arg_2.a)) ^ ~arg_2.a;
    let var_2 = arg_0;
    return arg_2.c.a.x;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(41464i, ~vec4<u32>(0u, u_input.a, u_input.a, 0u), Struct_2(u_input.a, Struct_1(arg_0, arg_0), Struct_1(arg_0, arg_0), Struct_1(vec2<f32>(arg_0.x, -654f), arg_0), u_input.a > u_input.d.x), ~_wgslsmith_mod_u32(u_input.a, u_input.d.x)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x))))));
    var var_1 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, 1u), vec4<u32>(75372u, u_input.d.x, 49497u, 70148u)), countOneBits(~15820u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, abs(u_input.a)), 66777u)), Struct_1(vec2<f32>(-1281f, _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(f32(-1f) * -409f)))), arg_0), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(836f)), var_0)), -832f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(arg_0))))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1608f, 807f) * arg_0)), arg_0), select(global0.x, all(vec2<bool>(global0.x, true)), true));
    var var_2 = _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(~4294967295u, var_1.a, ~7527u, 50916u)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, 0u, 0u, var_1.a) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, var_1.a, var_1.a), vec4<u32>(4294967295u, 4294967295u, 32997u, 39264u)) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 4294967295u, var_1.a, 0u), vec4<u32>(u_input.d.x, 1u, 20911u, 4294967295u), vec4<u32>(u_input.a, 32056u, 618u, u_input.a))));
    var_2 = select(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, max(var_2.x, var_2.x), reverseBits(4294967295u), var_1.a), firstTrailingBit(~vec4<u32>(46621u, 0u, 43131u, var_1.a))) & _wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(var_1.a, 1u, var_2.x, var_1.a)), ~vec4<u32>(18112u, 4294967295u, var_1.a, 0u)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a & 4294967295u, 0u, 4294967295u, u_input.d.x), vec4<u32>(~var_2.x, ~var_1.a, 1u, 0u))), select(select(select(!vec4<bool>(var_1.e, false, global0.x, false), vec4<bool>(var_1.e, var_1.e, false, var_1.e), !vec4<bool>(false, var_1.e, global0.x, false)), vec4<bool>(global0.x, var_1.e, var_1.e && var_1.e, true), select(!vec4<bool>(global0.x, false, true, var_1.e), vec4<bool>(var_1.e, false, false, global0.x), select(vec4<bool>(global0.x, false, var_1.e, false), vec4<bool>(var_1.e, true, false, true), vec4<bool>(global0.x, var_1.e, false, true)))), select(vec4<bool>(!var_1.e, !global0.x, false, global0.x), select(!vec4<bool>(var_1.e, var_1.e, global0.x, global0.x), select(vec4<bool>(var_1.e, true, global0.x, false), vec4<bool>(global0.x, true, false, var_1.e), vec4<bool>(false, false, false, var_1.e)), !vec4<bool>(var_1.e, true, global0.x, false)), false && all(vec2<bool>(global0.x, global0.x))), !(!(!vec4<bool>(false, global0.x, false, var_1.e)))));
    let var_3 = vec2<bool>(true, false);
    return min(u_input.b, u_input.b & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.e.x, u_input.e.x) & vec3<i32>(u_input.e.x, 19638i, u_input.e.x), vec3<i32>(_wgslsmith_clamp_i32(1i, u_input.e.x, u_input.e.x), 0i, -u_input.e.x)));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = select(vec2<bool>(true, arg_0.c.e), vec2<bool>(arg_0.a, global0.x), global0.x);
    let var_0 = Struct_3(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c.d.b.x), 125f)), arg_0.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.b.x)) - -1000f);
    var var_2 = _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.c.b.x), 335f))));
    var var_3 = _wgslsmith_div_i32(u_input.c, ~func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(197f, arg_0.b) + arg_0.c.b.a)));
    return var_0.c.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    let var_0 = arg_0;
    let var_1 = func_1(Struct_3(any(vec2<bool>(true, true && global0.x)), var_0.b.x, Struct_2(31890u, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 647f)), _wgslsmith_f_op_vec2_f32(floor(var_0.b))), var_0, func_1(Struct_3(true, 327f, Struct_2(0u, var_0, arg_0, Struct_1(var_0.b, vec2<f32>(arg_0.a.x, 1000f)), global0.x))), true)));
    var var_2 = var_0;
    var var_3 = vec2<bool>(global0.x, !(!global0.x));
    var var_4 = vec3<u32>(~_wgslsmith_add_u32(~arg_1.x, ~arg_1.x) & select(0u, select(reverseBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_1.x, arg_1.x, 0u), vec4<u32>(18711u, u_input.a, arg_1.x, arg_1.x)), all(vec4<bool>(global0.x, global0.x, var_3.x, global0.x))), var_3.x), ~select(~arg_1.x, 1u, var_3.x || false) ^ _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d.x, 1u, 1u)), abs(~u_input.d)), u_input.a);
    return select(true, any(select(select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(var_3.x, false, global0.x, global0.x), vec4<bool>(var_3.x, global0.x, global0.x, global0.x)), !vec4<bool>(false, var_3.x, global0.x, false), !vec4<bool>(true, var_3.x, false, var_3.x)), vec4<bool>(all(vec3<bool>(false, false, global0.x)), true, false, var_3.x != var_3.x), !global0.x)), any(!select(select(vec3<bool>(true, var_3.x, false), vec3<bool>(true, true, false), vec3<bool>(var_3.x, global0.x, false)), vec3<bool>(var_3.x, false, false), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(true, any(select(select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), vec2<bool>(global0.x, false)), vec2<bool>(false, global0.x), vec2<bool>(false, false)), !select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), true), global0.x)));
    var var_0 = Struct_3(!func_4(func_1(Struct_3(global0.x, -749f, Struct_2(4294967295u, Struct_1(vec2<f32>(1082f, -230f), vec2<f32>(-404f, 1000f)), Struct_1(vec2<f32>(-1005f, 497f), vec2<f32>(1272f, -898f)), Struct_1(vec2<f32>(-1260f, -673f), vec2<f32>(729f, 582f)), global0.x))), min(vec2<u32>(u_input.a, 67443u), vec2<u32>(u_input.a, 18434u)) >> (_wgslsmith_mult_vec2_u32(u_input.d.zz, u_input.d.xy) % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -1027f), Struct_2(~u_input.a, Struct_1(vec2<f32>(-412f, _wgslsmith_f_op_f32(trunc(-1072f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, -655f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1411f)), true))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-355f, -724f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1110f, 873f) + vec2<f32>(-1000f, -670f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-608f)), _wgslsmith_f_op_f32(1199f + -688f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(634f, 434f)))), true));
    var var_1 = ~vec4<u32>(var_0.c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 20241u, var_0.c.a), u_input.d), ~_wgslsmith_add_u32(u_input.a, 1u), abs(~u_input.d.x)) | abs(vec4<u32>(firstLeadingBit(var_0.c.a & 4294967295u), ~(~u_input.d.x), u_input.d.x, _wgslsmith_add_u32(u_input.d.x, var_0.c.a) & ~var_0.c.a));
    global0 = vec2<bool>(false || !any(vec2<bool>(true, true)), !((~(-64393i) ^ u_input.b) <= _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.e.x, u_input.c), vec3<i32>(u_input.e.x, u_input.c, u_input.c))));
    var var_2 = Struct_1(var_0.c.b.a, vec2<f32>(var_0.b, 1031f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.c.b), _wgslsmith_div_vec2_f32(var_0.c.d.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1179f, var_0.b) - var_2.b)), var_0.c.e || (global0.x || false)))), reverseBits(~(var_0.c.a ^ ~u_input.a)), _wgslsmith_f_op_f32(floor(1000f)), firstLeadingBit(~_wgslsmith_mod_vec2_i32(u_input.e, _wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(17066i, -14622i)))), reverseBits(select(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(50996u, var_1.x, var_0.c.a)), var_1.xxx, any(vec4<bool>(var_0.a, global0.x, true, var_0.a)))) | var_1.xzx);
}

