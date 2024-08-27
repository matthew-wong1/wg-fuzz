struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> u32 {
    var var_0 = u_input.b;
    let var_1 = Struct_1(~(u_input.a.yz ^ firstTrailingBit(arg_0.zz)) & vec2<u32>(0u, 16938u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) + arg_1.b) - vec2<f32>(195f, _wgslsmith_div_f32(689f, -178f))) + _wgslsmith_f_op_vec2_f32(abs(arg_1.b))));
    return select(0u, u_input.a.x, true);
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<i32>) -> bool {
    global0 = false;
    var var_0 = !(!(!vec2<bool>(false, 1u >= arg_0.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -501f);
    var var_2 = Struct_1(~abs(u_input.a.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, 1563f), vec2<f32>(var_1, -380f)))))));
    let var_3 = !(reverseBits(u_input.a.x) < arg_0.x) & var_0.x;
    return (var_3 == !(!any(vec2<bool>(var_0.x, true)))) && (u_input.b <= arg_2.x);
}

fn func_2() -> vec4<i32> {
    global0 = true;
    global0 = !func_4(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 6941u, 71247u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), func_3(vec4<u32>(12166u, 0u, 1u, u_input.a.x), Struct_3(1u, vec2<f32>(302f, -653f), false)), u_input.a.x), !(u_input.b > 1i), _wgslsmith_add_vec2_i32(vec2<i32>(79419i, 2147483647i) | vec2<i32>(-2147483647i, u_input.b), select(vec2<i32>(-20497i, u_input.b), vec2<i32>(u_input.b, 5281i), vec2<bool>(false, false))) << ((vec2<u32>(26455u, u_input.a.x) ^ u_input.a.yx) % vec2<u32>(32u)));
    var var_0 = Struct_4(Struct_1(~u_input.a.yy, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * -277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-853f + -1170f)))), Struct_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1802f, _wgslsmith_div_f32(-121f, 168f)))), func_4(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(53227u, 0u, u_input.a.x, 29358u), vec4<u32>(u_input.a.x, 40114u, 0u, u_input.a.x))), abs(u_input.a.x) <= 0u, firstTrailingBit(vec2<i32>(-1i, u_input.b)))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), select(vec4<bool>(false, true, u_input.b == u_input.b, any(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), true)), true), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-520f, _wgslsmith_f_op_f32(sign(154f)))))), _wgslsmith_f_op_f32(1f + 1330f)));
    global0 = all(!var_0.c);
    var_0 = Struct_4(Struct_1(~(~(vec2<u32>(u_input.a.x, var_0.a.a.x) >> (u_input.a.yy % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, var_0.a.b.x)), vec2<f32>(var_0.d.x, var_0.d.x))) + var_0.b.b)), var_0.b, !select(!select(vec4<bool>(false, false, var_0.b.c, var_0.c.x), vec4<bool>(var_0.b.c, true, true, var_0.b.c), var_0.c.x), var_0.c, !vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.b.c)), vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), -2311f));
    return -_wgslsmith_div_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, -70466i), vec4<i32>(0i, 3904i, u_input.b, u_input.b)) << (vec4<u32>(104937u, u_input.a.x, 1u, 3894u) % vec4<u32>(32u)), vec4<i32>(u_input.b >> (var_0.b.a % 32u), ~4394i, 912i, 2147483647i), true), vec4<i32>(u_input.b, -10787i, u_input.b, u_input.b));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = vec4<u32>(4294967295u, ~arg_0 ^ ~1u, ~(~_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_add_u32(1u, 1u))), arg_0);
    let var_1 = vec4<bool>(~var_0.x == (~_wgslsmith_sub_u32(arg_0, 16001u) | ~(var_0.x & u_input.a.x)), false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(true, false, false), false), vec4<bool>(arg_1 >= arg_2, true, any(vec4<bool>(false, true, false, true)), false))), any(vec3<bool>(true, false, true)));
    var var_2 = -(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 7830i, 1173i, 13979i), vec4<i32>(54665i, u_input.b, -28417i, 2147483647i)), reverseBits(vec4<i32>(u_input.b, 0i, -2147483647i, -5267i))) | (vec4<i32>(-1i, arg_2, arg_1, -28514i) | (vec4<i32>(-49606i, arg_1, arg_1, 8168i) ^ vec4<i32>(arg_1, 7588i, -22166i, arg_1)))) & min(_wgslsmith_mod_vec4_i32(max(vec4<i32>(1i, -2147483647i, arg_1, arg_1) | vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), ~vec4<i32>(-2301i, arg_2, -2147483647i, arg_2)), func_2()), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -20146i, arg_2, arg_1), vec4<i32>(arg_1, -42570i, -64480i, -29596i)) ^ -firstTrailingBit(vec4<i32>(arg_1, -7421i, 2147483647i, arg_1)));
    global0 = ~(~arg_1) <= _wgslsmith_div_i32(u_input.b, _wgslsmith_sub_i32(1i, ~0i));
    return Struct_1(vec2<u32>(~(~var_0.x), 19101u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-748f, 488f)) + -334f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -421f), _wgslsmith_f_op_f32(219f + 2724f)))));
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = ~firstLeadingBit(reverseBits(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 0u, arg_1.a.a.x, 63273u), vec4<u32>(33247u, 12590u, u_input.a.x, 41115u)), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = Struct_3(func_1(func_1(reverseBits(var_0.x), ~countOneBits(0i), 32186i).a.x, _wgslsmith_mod_i32(-(arg_0 | arg_0), _wgslsmith_sub_i32(countOneBits(arg_0), func_2().x)), _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_sub_i32(2147483647i, arg_0)), abs(~arg_0))).a.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1289f + arg_1.a.b.x), -282f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.b.b)) - vec2<f32>(arg_1.d.x, 2165f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.d.x, 542f), arg_1.d, vec2<bool>(arg_1.c.x, false)))))), !(firstLeadingBit(select(1u, 1u, true)) >= (22584u >> (u_input.a.x % 32u))));
    var_0 = ~(~vec4<u32>(max(var_0.x, 160u), ~13089u, arg_1.a.a.x << (var_0.x % 32u), var_1.a) ^ vec4<u32>(u_input.a.x, 39633u, firstTrailingBit(56213u) & countOneBits(arg_1.b.a), _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, u_input.a.x), var_1.a >> (0u % 32u))));
    global0 = arg_1.c.x;
    let var_2 = _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(24564u, 32948u, var_0.x, 1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(23280u, arg_1.b.a, 19387u, arg_1.b.a), ~vec4<u32>(42002u, 30244u, 1u, arg_1.a.a.x), vec4<u32>(0u, 1u, 15558u, 4294967295u)))), vec4<u32>(~reverseBits(0u), func_1(min(_wgslsmith_dot_vec2_u32(var_0.wx, var_0.xz), 4294967295u), ~_wgslsmith_mult_i32(arg_0, arg_0), arg_0).a.x, arg_1.b.a, 3033u));
    return Struct_4(Struct_1(~(var_2.yy | var_0.ww) ^ var_2.zw, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.d * vec2<f32>(var_1.b.x, arg_1.b.b.x)))))), Struct_3(~(~var_0.x) ^ 10068u, var_1.b, true), !vec4<bool>(true && (false && arg_1.b.c), true, !(!arg_1.b.c), arg_1.b.c), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d), vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x - arg_1.a.b.x), -1505f)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), -147f)), _wgslsmith_f_op_f32(step(func_1(0u, arg_0, u_input.b).b.x, func_1(arg_1.b.a, arg_0, 2147483647i).b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(f32(-1f) * -1561f))))) - -1217f);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 - -808f)));
    var var_2 = func_5(_wgslsmith_mod_i32(-20468i, 41930i), Struct_4(func_1(~(~u_input.a.x), 1i, 13795i), Struct_3(~u_input.a.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-954f, var_0), vec2<f32>(687f, -1000f))))), true), !vec4<bool>(true, all(vec3<bool>(false, false, true)), true, false), vec2<f32>(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-429f - -1250f))))));
    let var_3 = Struct_2(vec2<bool>(false, var_2.b.c), func_1((u_input.a.x << (~u_input.a.x % 32u)) | min(1u, min(17262u, u_input.a.x)), -1i, 0i), var_0, ~vec2<u32>(4294967295u, var_2.b.a), func_1(4294967295u, u_input.b, -52089i));
    var var_4 = Struct_1(var_3.b.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f + var_3.b.b.x)))));
    let var_5 = 1i >> (u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(1i, -7558i), _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(var_3.d.x, 43155u), 33610u, max(_wgslsmith_mod_u32(4294967295u, var_2.a.a.x), _wgslsmith_clamp_u32(var_2.a.a.x, 1666u, 42510u)), 1u), ~(~(~vec4<u32>(8035u, var_3.e.a.x, u_input.a.x, var_2.b.a)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-43573i, func_2().x), _wgslsmith_mod_vec2_i32(-vec2<i32>(-21013i, var_5), vec2<i32>(-2147483647i, firstTrailingBit(-46752i))), select(select(select(vec2<i32>(u_input.b, 38940i), vec2<i32>(66151i, -71343i), var_3.a), vec2<i32>(-2147483647i, 43979i), vec2<bool>(false, true)), _wgslsmith_add_vec2_i32(~vec2<i32>(-3778i, var_5), vec2<i32>(var_5, 38946i)), vec2<bool>(all(var_2.c), !var_3.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(527f + 196f), var_2.b.b.x) + _wgslsmith_f_op_vec2_f32(floor(var_4.b))), _wgslsmith_dot_vec2_i32(~select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(1i, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 23830i), vec2<i32>(35281i, var_5)), true), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 1i), max(-vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.b, var_5)))));
}

