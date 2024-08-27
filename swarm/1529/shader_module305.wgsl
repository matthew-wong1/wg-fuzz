struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 49133u;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1669f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.d.x), true)), 1029f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 577f, -1108f)))))));
    let var_1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a.x, min(0i, arg_0), u_input.a.x ^ global0.b.x, i32(-1i) * -26608i) >> (global0.c % vec4<u32>(32u)), -_wgslsmith_add_vec4_i32(vec4<i32>(-11653i, 1i, 0i, global0.b.x), countOneBits(vec4<i32>(u_input.a.x, 2147483647i, -31899i, arg_0))));
    let var_2 = global0.b.x;
    global1 = 25820u;
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(-1056f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(213f, var_0.x, false)), -248f) * _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(global0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.d.x)), _wgslsmith_f_op_f32(trunc(555f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.d.x, 340f)))), global0.a), vec4<f32>(-716f, global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f + global0.d.x) * _wgslsmith_f_op_f32(min(global0.d.x, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(738f, 1184f, ~1u != u_input.c.x)) * var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_3.x) - var_3.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * -367f), var_0.x), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1455f), ~vec3<i32>(1i, _wgslsmith_sub_i32(-44518i, 0i), global0.b.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 24345u, 31436u, arg_0), vec4<u32>(abs(51919u), 53417u, _wgslsmith_sub_u32(4294967295u, 26122u), global0.c.x)), vec3<f32>(global0.d.x, -728f, global0.d.x)), true, global0.b.x, !vec3<bool>(true, all(vec2<bool>(false, false)), true), true);
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(-515f)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(global0.b.x, 1i, global0.b.x)), _wgslsmith_sub_vec3_i32(~arg_1.b, u_input.a)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global0.b.x, arg_1.b.x), arg_1.b)), _wgslsmith_mult_vec4_u32(select(global0.c >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(24506u, 1u, arg_1.c.x, 77114u)) % vec4<u32>(32u)), arg_1.c, select(select(vec4<bool>(true, true, var_0.b, true), vec4<bool>(var_0.b, true, true, var_0.d.x), false), !vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x), false)), arg_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a, arg_1.a, global0.a))), vec3<f32>(global0.a, -1072f, -814f), any(var_0.d.zy)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.x, arg_1.a, arg_1.a)), _wgslsmith_f_op_vec3_f32(func_3(global0.b.x, Struct_4(var_0.d.xz, 4294967295u), var_0.e))))));
    var var_1 = !select(vec4<bool>(~arg_1.c.x > ~arg_0, _wgslsmith_f_op_f32(-186f * global0.a) == _wgslsmith_f_op_f32(f32(-1f) * -535f), all(vec2<bool>(false, false)), !(global0.b.x != global0.b.x)), vec4<bool>(!(false | var_0.d.x), true, any(!vec4<bool>(var_0.b, var_0.e, false, true)), false), select(!(!vec4<bool>(false, false, var_0.d.x, false)), vec4<bool>(false, arg_0 <= 15007u, 1866f <= var_0.a.a, true), !select(vec4<bool>(false, var_0.b, var_0.e, var_0.b), vec4<bool>(true, var_0.e, false, var_0.b), vec4<bool>(false, true, true, true))));
    let var_2 = Struct_4(vec2<bool>(((i32(-1i) * -40257i) | max(arg_1.b.x, -46095i)) != global0.b.x, false), _wgslsmith_dot_vec2_u32(var_0.a.c.zw, reverseBits(u_input.c.xz)));
    var var_3 = ~max(_wgslsmith_mod_u32(max(firstTrailingBit(arg_1.c.x), ~0u), ~max(global0.c.x, 11171u)), 3211u >> (var_2.b % 32u));
    return ~17616u;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    global1 = ~(~global0.c.x);
    var var_0 = vec4<u32>(~1u, ~0u, 4294967295u ^ _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, 1u), global0.c.x & global0.c.x), func_2(global0.c.x, Struct_1(-139f, vec3<i32>(global0.b.x, u_input.a.x, global0.b.x), global0.c, vec3<f32>(1314f, 1015f, arg_0))) | ~u_input.b), 1u);
    let var_1 = firstLeadingBit(u_input.a.x);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(arg_0 * arg_0)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-882f * 1299f), -1000f)), -min(vec4<i32>(1i, abs(u_input.a.x), i32(-1i) * -35146i, var_1), vec4<i32>(-15000i, -1i, -2147483647i, var_1)), select(!vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1020f)) - _wgslsmith_f_op_f32(-arg_0))), min(abs(countOneBits(vec3<i32>(var_1, 34881i, -2147483647i))), firstTrailingBit(vec3<i32>(u_input.a.x, global0.b.x, 0i))), firstTrailingBit(global0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.d + global0.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f * 104f) - _wgslsmith_f_op_f32(-976f * arg_0)))) + -1739f));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(233f + global0.d.x)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-31684i, global0.b.x), var_1, global0.b.x, ~var_2.d.b.x), var_2.b, ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b.x, var_1, global0.b.x, var_1), vec4<i32>(2020i, u_input.a.x, var_2.b.x, global0.b.x)))), !(!vec2<bool>(any(var_2.c), false)), var_2.d, -902f);
    return _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(0i), 1i, 9023i), vec3<i32>(2147483647i, -var_2.b.x, var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, !any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, false)) != true, true), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true))), true);
    var var_1 = ~vec3<u32>(~(~global0.c.x), ~u_input.c.x, u_input.b);
    let var_2 = _wgslsmith_add_vec3_i32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -170f)), select(vec3<i32>(-u_input.a.x, global0.b.x, _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(0i, 1i)) >> (1u % 32u)), countOneBits(select(u_input.a | vec3<i32>(-23205i, u_input.a.x, u_input.a.x), global0.b, var_0.wzw)), vec3<bool>(any(!vec2<bool>(false, var_0.x)), true, var_0.x)));
    var var_3 = !all(select(vec4<bool>(all(vec2<bool>(var_0.x, false)), var_0.x, global0.d.x <= -1157f, var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x)), select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, true, true, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true))));
    let var_4 = var_0.x;
    let var_5 = select(!vec3<bool>(true, var_0.x, false), select(var_0.zxy, select(vec3<bool>(true, var_0.x, var_0.x && var_0.x), var_0.xxw, select(var_0.zyy, vec3<bool>(var_0.x, var_0.x, false), global0.a <= global0.a)), vec3<bool>(true, false, any(vec3<bool>(var_0.x, false, true)))), var_0.yxy);
    let var_6 = _wgslsmith_sub_vec3_i32(var_2, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(global0.b, u_input.a), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, u_input.a.x), func_1(-1363f).x), 2147483647i, -_wgslsmith_mult_i32(-1i, 1i))));
    let var_7 = _wgslsmith_f_op_vec3_f32(global0.d - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1113f))), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1093f + global0.d.x) - _wgslsmith_f_op_f32(floor(1186f))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1416f - _wgslsmith_f_op_f32(-global0.a)) * var_7.x), ~vec3<i32>(_wgslsmith_sub_i32(var_2.x, global0.b.x) ^ (var_6.x ^ u_input.a.x), _wgslsmith_sub_i32(3142i, var_6.x), max(_wgslsmith_div_i32(-1864i, global0.b.x), min(var_6.x, 2147483647i))), _wgslsmith_add_vec4_u32(countOneBits(global0.c), vec4<u32>(64257u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1u, var_1.x, 4294967295u), global0.c), global0.c.x), 4294967295u, ~_wgslsmith_clamp_u32(7057u, var_1.x, u_input.b))), _wgslsmith_f_op_vec3_f32(func_3(u_input.a.x, Struct_4(!select(var_0.wz, var_5.zz, true), 18170u), ~(~global0.c.x) <= _wgslsmith_clamp_u32(firstTrailingBit(u_input.b), var_1.x, _wgslsmith_add_u32(var_1.x, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(vec2<u32>(min(0u, var_1.x), u_input.b), u_input.c.zx), vec3<u32>(var_1.x, _wgslsmith_add_u32(u_input.c.x, global0.c.x), ~(4294967295u >> ((u_input.b | 23244u) % 32u))), vec2<f32>(global0.d.x, -177f), u_input.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2162f)))));
}

