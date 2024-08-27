struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(31143i, 1i, -1i), vec3<i32>(-1i, -21672i, 0i), vec3<i32>(-12614i, 35076i, 1i), vec3<i32>(-26253i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -49427i, -19980i), vec3<i32>(-15298i, -53184i, 37639i), vec3<i32>(1i, 65771i, 0i), vec3<i32>(-1i, 2147483647i, 9416i), vec3<i32>(78391i, -33509i, 0i), vec3<i32>(7820i, 7617i, -25829i), vec3<i32>(10555i, -67237i, 0i), vec3<i32>(27854i, 23738i, -1i), vec3<i32>(25376i, 37183i, -5691i), vec3<i32>(i32(-2147483648), i32(-2147483648), -12964i), vec3<i32>(i32(-2147483648), 70667i, -18791i), vec3<i32>(114220i, -28014i, -10482i), vec3<i32>(1i, 0i, 1i), vec3<i32>(0i, 2147483647i, -16271i), vec3<i32>(i32(-2147483648), 983i, -11794i), vec3<i32>(2147483647i, 6287i, 9704i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(-1808f, _wgslsmith_f_op_f32(abs(633f)), -1498f)))), Struct_1(0u, arg_1.c, ~abs(u_input.c) & (~vec4<u32>(15477u, arg_1.b.x, u_input.c.x, arg_0.c.x) & select(arg_1.b, vec4<u32>(9271u, u_input.c.x, 41009u, arg_1.c.x), false)), _wgslsmith_clamp_i32(~arg_1.d, abs(_wgslsmith_add_i32(3857i, 0i)), 0i), any(!(!vec2<bool>(false, arg_1.e)))));
    global0 = !(!vec4<bool>(all(vec4<bool>(global0.x, arg_1.e, global0.x, global0.x)) | true, var_0.b.e, true, any(!vec3<bool>(true, global0.x, global0.x))));
    global0 = select(select(vec4<bool>(true, any(vec4<bool>(true, arg_1.e, var_0.b.e, true)), !(2147483647i != var_0.b.d), arg_0.e), !vec4<bool>(arg_0.e, false, -15137i >= arg_1.d, true), select(!select(vec4<bool>(false, true, true, var_0.b.e), vec4<bool>(true, false, true, false), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.b.e, false, false), vec4<bool>(global0.x, var_0.b.e, true, global0.x)), !arg_0.e)), vec4<bool>(false, var_0.b.e, true, true), !(!select(!vec4<bool>(false, arg_0.e, true, global0.x), select(vec4<bool>(false, true, var_0.b.e, arg_0.e), vec4<bool>(true, false, arg_1.e, arg_0.e), vec4<bool>(true, false, var_0.b.e, false)), true)));
    var var_1 = vec4<i32>(2147483647i, -_wgslsmith_dot_vec4_i32(~(~vec4<i32>(0i, arg_0.d, u_input.a.x, arg_0.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 53042i, 2147483647i, -16810i) | vec4<i32>(u_input.a.x, 2147483647i, arg_1.d, 1i), firstLeadingBit(vec4<i32>(1i, -1747i, arg_0.d, -1i)))), 30699i, ~14769i);
    var var_2 = Struct_1(countOneBits(22441u), ~vec4<u32>(var_0.b.b.x, var_0.b.b.x, _wgslsmith_add_u32(arg_1.c.x, ~u_input.c.x), reverseBits(arg_1.b.x) << (41331u % 32u)), select(~(var_0.b.c ^ arg_1.c), ~var_0.b.b, any(select(global0.xxz, global0.xzw, global0.wzw))) | _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.c.x, arg_1.c.x, arg_1.c.x), u_input.c), -8515i, true);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(831f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-2388f)))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = global0.x || any(!global0.zwy);
    let var_1 = Struct_2(arg_0.xxx, arg_1);
    var var_2 = ~(var_1.b.c.x | ~countOneBits(1u));
    let var_3 = vec3<i32>(293i, -46540i, ~abs(firstTrailingBit(u_input.a.x)) >> (arg_1.a % 32u));
    var var_4 = -556f;
    return vec4<bool>(var_1.b.e, true, true, false);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    global1 = array<vec3<i32>, 20>();
    global0 = select(!func_4(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * 281f), _wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + 582f), _wgslsmith_f_op_f32(-arg_2.x)), Struct_1(1u, ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u), max(vec4<u32>(12164u, 29499u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, 13766u, u_input.c.x, u_input.c.x)), u_input.d, !arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1u, u_input.c, vec4<u32>(u_input.c.x, 12842u, 4294967295u, 1u), u_input.d, true), Struct_1(u_input.c.x, vec4<u32>(u_input.c.x, 4294967295u, 13010u, u_input.c.x), vec4<u32>(39783u, u_input.c.x, 30549u, u_input.c.x), -1i, false), u_input.c.x)) + _wgslsmith_f_op_f32(max(-653f, arg_2.x)))), !vec4<bool>(false, !(0i > u_input.b.x), any(vec3<bool>(arg_0.x, false, false)), all(select(vec4<bool>(true, arg_0.x, false, global0.x), vec4<bool>(global0.x, global0.x, arg_0.x, true), false))), func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - 116f) * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(719f + arg_2.x), -2032f), _wgslsmith_f_op_f32(f32(-1f) * -420f)), Struct_1(u_input.c.x, ~u_input.c, vec4<u32>(67594u, u_input.c.x, u_input.c.x, 55922u) << (select(vec4<u32>(104518u, 26944u, u_input.c.x, 7613u), u_input.c, arg_0.x) % vec4<u32>(32u)), i32(-1i) * -6642i, global0.x), arg_2.x));
    global0 = vec4<bool>(false, true, arg_0.x, arg_0.x);
    global0 = select(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, -1822f, arg_2.x, -904f)))))), Struct_1(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), ~u_input.c ^ ~vec4<u32>(0u, u_input.c.x, 4294967295u, 56160u), _wgslsmith_mod_vec4_u32(~u_input.c, firstTrailingBit(u_input.c)), u_input.b.x, arg_0.x), _wgslsmith_f_op_f32(arg_2.x + 964f)), !select(!func_4(vec4<f32>(arg_2.x, 1495f, arg_2.x, -1050f), Struct_1(37900u, vec4<u32>(28201u, 0u, u_input.c.x, u_input.c.x), u_input.c, arg_1, arg_0.x), arg_2.x), vec4<bool>(true, arg_0.x, arg_0.x, false), arg_0.x), -reverseBits(countOneBits(u_input.a.x)) >= _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(15044i, 2310i), _wgslsmith_mod_i32(u_input.b.x, arg_1)), abs(-1287i) ^ (u_input.b.x << (4294967295u % 32u))));
    let var_0 = select(global0.wz, select(arg_0, select(vec2<bool>(any(global0.wzx), true), vec2<bool>(select(false, arg_0.x, global0.x), arg_0.x), global0.xy), vec2<bool>(true, (-192f <= arg_2.x) | arg_0.x)), func_4(vec4<f32>(-203f, arg_2.x, 2123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1139f, 1173f)))), Struct_1(_wgslsmith_div_u32(62028u, u_input.c.x) & min(u_input.c.x, u_input.c.x), vec4<u32>(54716u, 4294967295u, 27060u, u_input.c.x) ^ ~u_input.c, ~select(vec4<u32>(47199u, 4294967295u, u_input.c.x, u_input.c.x), u_input.c, vec4<bool>(true, false, false, false)), 1i, global0.x), _wgslsmith_div_f32(1178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, 472f)) * -197f))).x);
    return arg_2.x;
}

fn func_1() -> vec4<bool> {
    var var_0 = global0.zyx;
    var var_1 = max(u_input.d, -(~u_input.a.x >> (~u_input.c.x % 32u))) >> (~(~countOneBits(4294967295u)) % 32u);
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(1206f + _wgslsmith_f_op_f32(func_2(global0.zw, -2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(336f, 1858f, 1723f) + vec3<f32>(1638f, 780f, -1554f))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(637f - 149f), _wgslsmith_f_op_f32(min(529f, -2481f)), true)))), Struct_1(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(~0u, u_input.c.x)), firstTrailingBit(reverseBits(abs(u_input.c))), u_input.c, abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, u_input.a.x, -3331i), vec4<i32>(u_input.a.x, u_input.b.x, -1i, u_input.d))), any(!vec4<bool>(var_0.x, true, global0.x, false)) && (~1u == u_input.c.x)));
    var_1 = var_2.b.d;
    let var_3 = _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(-2147483647i, u_input.b.x, 10898i, 1i)), -vec4<i32>(u_input.b.x, 0i, u_input.d, u_input.d), _wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, var_2.b.d, -32574i, -22222i), select(vec4<i32>(-2147483647i, 17013i, -1i, -19791i), vec4<i32>(49332i, var_2.b.d, u_input.a.x, 0i), vec4<bool>(false, global0.x, var_2.b.e, var_2.b.e)))), ~(countOneBits(select(vec4<i32>(var_2.b.d, u_input.b.x, var_2.b.d, u_input.b.x), vec4<i32>(2147483647i, var_2.b.d, var_2.b.d, u_input.d), var_2.b.e)) & vec4<i32>(42245i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_2.b.d, 11735i)), 0i, 2147483647i)));
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(max(-337f, _wgslsmith_f_op_f32(sign(var_2.a.x))))), _wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-var_2.a.x)), Struct_1(4294967295u | var_2.b.c.x, vec4<u32>(~u_input.c.x, firstLeadingBit(~u_input.c.x), _wgslsmith_add_u32(4294967295u >> (u_input.c.x % 32u), var_2.b.a), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(59713u, var_2.b.a), u_input.c.yy))), var_2.b.b, var_2.b.d, -686f > _wgslsmith_f_op_f32(-1527f * _wgslsmith_f_op_f32(step(var_2.a.x, 1306f)))), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<bool>(global0.x, !(!global0.x | !global0.x), true == (all(vec4<bool>(global0.x, false, global0.x, false)) & false), true), select(!(!(!vec4<bool>(true, false, true, global0.x))), select(vec4<bool>(global0.x && global0.x, false, !global0.x, true), !func_1(), !(!vec4<bool>(false, global0.x, true, global0.x))), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.d, u_input.b.x), vec4<i32>(u_input.b.x, -6540i, -8250i, u_input.a.x)) > -19319i, 1088f >= _wgslsmith_f_op_f32(step(1417f, -421f)), true, !global0.x)), select(select(func_1(), vec4<bool>(global0.x, u_input.c.x >= u_input.c.x, func_1().x, false), vec4<bool>(true, true, true, u_input.c.x >= 4294967295u)), vec4<bool>(!global0.x, (u_input.a.x & u_input.a.x) == -19304i, false, all(!vec4<bool>(true, false, global0.x, false))), !(!global0.x)));
    global1 = array<vec3<i32>, 20>();
    var var_0 = _wgslsmith_f_op_f32(-200f * -694f);
    global1 = array<vec3<i32>, 20>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1228f, 778f, 351f), vec3<f32>(-830f, 434f, -983f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(715f, 2025f, -536f), vec3<f32>(-760f, -1121f, -2061f))))))) * vec3<f32>(_wgslsmith_f_op_f32(275f + -1617f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1092f)) + _wgslsmith_f_op_f32(floor(-535f))), _wgslsmith_f_op_f32(-328f + -132f))), Struct_1(~u_input.c.x, ~vec4<u32>(~22463u, 1u, 23081u | u_input.c.x, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 72767u), vec3<u32>(1u, u_input.c.x, u_input.c.x)) | ~342u, 1u ^ ~u_input.c.x, 1u, 1u), u_input.b.x, !any(vec2<bool>(global0.x, false))));
    global1 = array<vec3<i32>, 20>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x - -731f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(-1278f - 669f));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x << (abs(0u) % 32u), ~abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, var_1.b.d), u_input.b), u_input.a)), ~(~u_input.c.x));
}

