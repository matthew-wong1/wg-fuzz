struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-785f, -689f, 1000f), vec3<f32>(-586f, -1000f, -830f), vec3<f32>(693f, -261f, 865f), vec3<f32>(-971f, -101f, 133f), vec3<f32>(753f, 186f, 387f), vec3<f32>(-272f, 913f, -1452f), vec3<f32>(-537f, 1976f, -1748f), vec3<f32>(522f, -785f, -405f), vec3<f32>(-1738f, 743f, -395f), vec3<f32>(-569f, 692f, 606f));

var<private> global1: Struct_4 = Struct_4(false, -138f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> bool {
    let var_0 = Struct_5(Struct_4(select(0u <= ~arg_0, !global1.a, !(u_input.e == -29192i)), global1.b), any(select(vec3<bool>(global1.a, true, global1.b < 1204f), vec3<bool>(true, global1.a, true), false)));
    global1 = var_0.a;
    var var_1 = Struct_3(var_0.a.b, -1000f > global1.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 654f)))) * vec2<f32>(_wgslsmith_f_op_f32(-658f + global1.b), _wgslsmith_div_f32(var_0.a.b, global1.b))), -(u_input.a << (vec4<u32>(5248u, 38720u, u_input.b, 8276u) % vec4<u32>(32u))), ~u_input.c.x));
    global0 = array<vec3<f32>, 10>();
    var var_2 = Struct_5(var_0.a, global1.a && !(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) != var_1.c.c));
    return ~(u_input.d.x | 1u) == 55905u;
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = Struct_3(var_0.a.a.x, func_3(~_wgslsmith_div_u32(~var_0.b, 1u), ~_wgslsmith_add_vec3_u32(~u_input.d, _wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(15304u, var_0.b, 23047u), vec3<u32>(4499u, 1u, 1u)))), var_0.a);
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~(~u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_0.a.b.x, var_0.a.b.x, -106783i), var_1.c.b, _wgslsmith_div_vec4_i32(arg_0.a.b, var_1.c.b))), _wgslsmith_mod_vec4_i32(arg_0.a.b << (~vec4<u32>(arg_0.b, 1u, 12165u, 35001u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(max(u_input.a, var_0.a.b), min(u_input.a, vec4<i32>(u_input.c.x, var_0.a.c, u_input.e, var_0.a.c))))), -u_input.a);
    var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, select(firstLeadingBit(-1i), _wgslsmith_dot_vec2_i32(var_0.a.b.zz, arg_0.a.b.ww), select(true, var_1.b, false)), _wgslsmith_dot_vec4_i32(firstTrailingBit(var_0.a.b), -vec4<i32>(2147483647i, var_1.c.c, var_1.c.c, 19302i)), var_1.c.c), vec4<i32>(arg_0.a.b.x, 4225i, -_wgslsmith_add_i32(-24117i, 73952i), _wgslsmith_mult_i32(~10235i, 28104i))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(47215i, var_2.x)), max(vec2<i32>(-18814i, -20182i), var_0.a.b.yw)), var_1.c.b.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(-30635i, -var_0.a.c), u_input.e), -2147483647i, u_input.e));
    global1 = Struct_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.a.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1285f)), _wgslsmith_f_op_f32(global1.b + var_1.c.a.x))))));
    return Struct_4(any(vec2<bool>(_wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x) <= _wgslsmith_f_op_f32(round(var_0.a.a.x)), global1.a)), _wgslsmith_f_op_f32(-global1.b));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_4 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec4_u32(abs(~(vec4<u32>(u_input.d.x, 1u, u_input.d.x, 44683u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.b), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 34386u), vec4<u32>(u_input.d.x, 21879u, u_input.d.x, 83764u)) % vec4<u32>(32u)))), min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 0u) | vec4<u32>(14867u, u_input.b, 45803u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(61349u, 4294967295u, u_input.b, 28204u), vec4<u32>(u_input.d.x, u_input.d.x, 39696u, u_input.b)), vec4<u32>(u_input.b, u_input.b, 41284u, 3122u)), ~(vec4<u32>(36679u, 36181u, 6844u, u_input.d.x) & abs(vec4<u32>(26605u, u_input.b, u_input.b, 30974u)))));
    var var_2 = !all(select(select(!vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, var_0.a), vec2<bool>(true, var_0.a), true), !vec2<bool>(global1.a, arg_0)), select(select(vec2<bool>(global1.a, arg_0), vec2<bool>(global1.a, true), true), select(vec2<bool>(false, true), vec2<bool>(var_0.a, arg_1.a), vec2<bool>(false, true)), vec2<bool>(arg_1.a, global1.a)), !select(vec2<bool>(true, arg_1.a), vec2<bool>(true, arg_1.a), false)));
    var var_3 = countOneBits(_wgslsmith_dot_vec3_i32(u_input.a.yyx, u_input.c) ^ 59475i) | (countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.c.x, 8844i, -2147483647i), u_input.a)) << (select(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(1u, u_input.b)) >> (_wgslsmith_add_u32(1u, 0u) % 32u), true) % 32u));
    global0 = array<vec3<f32>, 10>();
    return func_2(Struct_2(Struct_1(vec2<f32>(-1146f, _wgslsmith_f_op_f32(sign(767f))), -u_input.a, -u_input.a.x | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, -5641i), u_input.a)), u_input.d.x));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-267f, 1373f), arg_2.zz))), _wgslsmith_f_op_vec2_f32(arg_2.yw - _wgslsmith_f_op_vec2_f32(arg_2.wy * vec2<f32>(arg_0, arg_1.b))))), vec4<i32>(-11748i, -5373i, u_input.c.x, max(u_input.e, ~9473i)), _wgslsmith_mult_i32(2147483647i, u_input.e)), u_input.b);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = vec4<u32>(arg_0.b, reverseBits(1u), _wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(18050u, arg_0.b), countOneBits(arg_1)), arg_1), arg_0.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a) + _wgslsmith_f_op_vec2_f32(arg_0.a.a * arg_0.a.a)) * arg_0.a.a)))));
    let var_2 = reverseBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(36641i, -14323i, arg_0.a.b.x) & u_input.c, -arg_0.a.b.yzw));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(1876f, arg_0.a.a.x) + arg_0.a.a))) + func_5(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(arg_0.a.a.x * 494f)), func_2(arg_0), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + -2427f), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -776f), func_5(309f, Struct_4(false, arg_0.a.a.x), vec4<f32>(303f, 521f, var_1.x, var_1.x)).a.a.x)).a.a), vec4<i32>(-arg_2, 6981i, -1i, 8849i), min(var_2.x, firstLeadingBit(1i)));
    var var_4 = select(vec4<bool>(global1.a, !func_2(arg_0).a, global1.a, global1.a), vec4<bool>(func_2(Struct_2(arg_0.a, ~4294967295u)).a, any(vec4<bool>(global1.a, false, false, true)) | !(u_input.b > 48128u), global1.a | !global1.a, true | ((1i >> (arg_1 % 32u)) < arg_2)), _wgslsmith_mod_i32(arg_0.a.c, ~(~var_3.c)) == arg_2);
    return 1228f;
}

fn func_1(arg_0: f32) -> Struct_4 {
    global0 = array<vec3<f32>, 10>();
    let var_0 = _wgslsmith_f_op_f32(func_6(func_5(1f, func_4((u_input.c.x > 2147483647i) | global1.a, func_2(Struct_2(Struct_1(vec2<f32>(-2040f, -1077f), vec4<i32>(u_input.a.x, u_input.e, 41059i, u_input.a.x), u_input.c.x), u_input.d.x))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), -692f, -566f, _wgslsmith_f_op_f32(global1.b + 670f))), ~(~(~u_input.b)), u_input.c.x));
    global1 = Struct_4(true | (!func_3(48836u, u_input.d) & false), _wgslsmith_f_op_f32(max(1150f, _wgslsmith_f_op_f32(min(-558f, arg_0)))));
    global1 = func_2(func_5(1000f, Struct_4(func_4(global1.a & false, func_2(Struct_2(Struct_1(vec2<f32>(539f, global1.b), vec4<i32>(2147483647i, u_input.c.x, 0i, u_input.a.x), u_input.a.x), u_input.b))).a, _wgslsmith_f_op_f32(sign(-1489f))), vec4<f32>(arg_0, func_4(true, func_2(Struct_2(Struct_1(vec2<f32>(718f, 1000f), vec4<i32>(65208i, u_input.e, 32092i, -13008i), 2147483647i), u_input.d.x))).b, _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(f32(-1f) * -576f))), func_4(global1.a, Struct_4(true, global1.b)).b)));
    var var_1 = ~u_input.d.yx;
    return func_4(any(vec2<bool>(!(global1.a | global1.a), var_1.x == ~u_input.b)), func_2(Struct_2(func_5(-1000f, Struct_4(false, arg_0), vec4<f32>(1369f, -1534f, 538f, global1.b)).a, ~u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.b);
    var var_0 = Struct_3(1271f, func_2(func_5(-369f, func_2(func_5(global1.b, Struct_4(false, global1.b), vec4<f32>(global1.b, -924f, -330f, 494f))), vec4<f32>(func_2(Struct_2(Struct_1(vec2<f32>(-1000f, 370f), u_input.a, u_input.c.x), u_input.d.x)).b, global1.b, _wgslsmith_f_op_f32(global1.b + -691f), global1.b))).a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(460f, 853f), vec2<f32>(global1.b, global1.b), vec2<bool>(global1.a, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 683f))))), vec4<i32>(_wgslsmith_clamp_i32(~(-11036i), u_input.c.x ^ u_input.e, u_input.e), reverseBits(0i), u_input.e, firstTrailingBit(abs(u_input.e))), 1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(910f, var_0.c.a.x)) * _wgslsmith_div_f32(var_0.c.a.x, 1905f))))));
    let var_2 = select(vec4<bool>(!(!(!var_0.b)), !(true && func_1(-845f).a), !(~5946u >= func_5(194f, Struct_4(true, global1.b), vec4<f32>(527f, var_0.c.a.x, -343f, var_1.x)).b), !(_wgslsmith_f_op_f32(trunc(1000f)) == -1000f)), select(!vec4<bool>(false, true, var_0.b, any(vec2<bool>(true, global1.a))), vec4<bool>(false, !(true & var_0.b), var_0.b, true), !vec4<bool>(func_4(var_0.b, Struct_4(global1.a, 838f)).a, global1.a, global1.a, global1.a & var_0.b)), var_0.b);
    let var_3 = vec4<u32>(~(reverseBits(~u_input.d.x) | u_input.b), ~1u, ~(~(~4294967295u) << (0u % 32u)), u_input.d.x);
    global1 = Struct_4(!func_1(_wgslsmith_f_op_f32(step(-1000f, var_0.a))).a, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(433f)))), _wgslsmith_f_op_f32(-995f + var_0.a), -191f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1369f - var_1.x))))), ~(~_wgslsmith_sub_vec2_u32(var_3.xw >> (u_input.d.xx % vec2<u32>(32u)), reverseBits(vec2<u32>(u_input.d.x, 93209u)))), vec3<u32>(u_input.b, 104781u, 1u), _wgslsmith_sub_i32(var_0.c.b.x << (~(var_3.x ^ 45699u) % 32u), i32(-1i) * -45155i));
}

