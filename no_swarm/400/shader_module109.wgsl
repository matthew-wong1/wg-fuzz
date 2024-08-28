struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 37866i);

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: array<i32, 17> = array<i32, 17>(1i, -1i, 2147483647i, 2147483647i, 1i, 87185i, 2147483647i, i32(-2147483648), 23412i, -15253i, 40778i, 16139i, 7942i, i32(-2147483648), 73847i, 2170i, 15799i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(select(vec4<i32>(u_input.b.x, ~(-8810i), _wgslsmith_mod_i32(0i, 37998i), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), (vec4<i32>(4842i, 0i, u_input.b.x, 2147483647i) << (vec4<u32>(24875u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.a, u_input.a, 31450u, u_input.a) % vec4<u32>(32u)), vec4<bool>(false, 33490i >= global0.x, true, true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(314f, -720f, 1221f), vec3<f32>(-1291f, 120f, 350f))))), _wgslsmith_f_op_f32(floor(-441f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-130f, 1548f))))), -1320f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(550f, -311f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2912f, -130f)))))), vec3<bool>((u_input.a << (0u % 32u)) == 1u, any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false))), true), Struct_1(vec4<i32>(_wgslsmith_mult_i32(global0.x, countOneBits(12809i)), u_input.b.x | (u_input.b.x ^ global0.x), _wgslsmith_div_i32(min(global0.x, global2[_wgslsmith_index_u32(u_input.a, 17u)]), ~global2[_wgslsmith_index_u32(u_input.a, 17u)]), -min(-3773i, -20099i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-493f, 738f, 631f), vec3<f32>(-679f, 946f, -1000f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, 132f, -813f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1710f - 571f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(714f - 1164f) * _wgslsmith_div_f32(1141f, -471f)))));
    let var_1 = var_0.e.b.yy;
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(select(~u_input.a, ~u_input.a, var_0.d.x), ~41440u, u_input.a, ~u_input.a), vec4<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, 30580u, u_input.a), vec3<u32>(42761u, 6867u, 16910u)), _wgslsmith_add_vec3_u32(vec3<u32>(47677u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), u_input.a, 29020u, u_input.a), ~vec4<u32>(u_input.a, 0u, ~_wgslsmith_clamp_u32(6822u, u_input.a, u_input.a), reverseBits(_wgslsmith_div_u32(0u, 341u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -501f, 1000f)) + _wgslsmith_f_op_vec3_f32(-var_0.a.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.d) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 245f, var_0.b)))), vec3<f32>(_wgslsmith_f_op_f32(step(205f, _wgslsmith_f_op_f32(exp2(var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(252f)) - _wgslsmith_f_op_f32(var_0.a.c * var_0.c.x)), -113f), var_0.d)));
    global1 = array<vec2<bool>, 15>();
    return ~(-18676i | u_input.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: bool) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(Struct_1(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1153f, 217f)))), 1472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f + 921f) - _wgslsmith_f_op_f32(select(-1296f, 1999f, false)))), -483f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1315f) * _wgslsmith_f_op_f32(ceil(846f))), 1225f), select(!vec3<bool>(arg_2, true, false), !(!vec3<bool>(true, arg_2, true)), all(select(vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(arg_2, false, arg_2, arg_2), true))), Struct_1(min(abs(vec4<i32>(u_input.b.x, global2[_wgslsmith_index_u32(arg_0.x, 17u)], 608i, -1i)), vec4<i32>(-2147483647i, u_input.b.x, global0.x, 1i)), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1508f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-728f, 1109f))))), vec4<i32>(u_input.b.x, ~(-1i), -_wgslsmith_mod_i32(-2147483647i, u_input.b.x), func_3()) >> (~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.x, 17362u, arg_1.x), vec4<u32>(4294967295u, 1u, 0u, arg_0.x))) % vec4<u32>(32u)), Struct_1(~(-vec4<i32>(global0.x, global2[_wgslsmith_index_u32(14151u, 17u)], global2[_wgslsmith_index_u32(arg_1.x, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]) >> (vec4<u32>(arg_1.x, 0u, 0u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-829f, -1655f, 1223f), vec3<f32>(-436f, 474f, -997f), vec3<bool>(true, arg_2, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2225f, -2201f, -458f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(234f, 705f, -331f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-926f)) - _wgslsmith_f_op_f32(-772f * -1216f)))), 1434f));
    let var_1 = var_0.c.d;
    global2 = array<i32, 17>();
    global0 = var_0.a.e.a.wy;
    let var_2 = select(_wgslsmith_div_vec4_i32(select(-vec4<i32>(0i, 1i, u_input.b.x, var_0.c.a.x) ^ var_0.b, _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.a.x, u_input.b.x, u_input.b.x, -45331i) & vec4<i32>(0i, u_input.b.x, global2[_wgslsmith_index_u32(arg_1.x, 17u)], -9409i), -vec4<i32>(-34688i, global2[_wgslsmith_index_u32(10572u, 17u)], 2240i, -65511i)), !select(vec4<bool>(false, true, var_0.a.d.x, true), vec4<bool>(var_0.a.d.x, false, var_0.a.d.x, var_0.a.d.x), vec4<bool>(var_0.a.d.x, true, arg_2, false))), _wgslsmith_div_vec4_i32(var_0.c.a, ~(~var_0.c.a))), var_0.a.e.a, false);
    return ~max(arg_1, ~(~arg_1) & ~vec3<u32>(1372u, u_input.a, 0u));
}

fn func_1() -> vec4<bool> {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(11366u, u_input.a, 0u)) >> ((func_2(vec2<u32>(0u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a), true) >> (~vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(24393u, u_input.a, 0u), ~vec3<u32>(4294967295u, 4294967295u, u_input.a), countOneBits(vec3<u32>(1u, 68607u, 0u)))));
    let var_1 = !(true | select(all(global1[_wgslsmith_index_u32(4294967295u, 15u)]) | true, !all(vec3<bool>(false, false, false)), true));
    var_0 = _wgslsmith_div_u32(52014u, u_input.a);
    var var_2 = Struct_1(vec4<i32>(u_input.b.x, -42661i, ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, u_input.b.x, global0.x), firstTrailingBit(-10054i)), firstTrailingBit(-56831i) ^ 13387i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, 586f, 353f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -619f, 1654f) + vec3<f32>(452f, -122f, 872f)), var_1 & var_1)))) * vec3<f32>(-471f, _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(f32(-1f) * -1331f))), _wgslsmith_f_op_f32(max(748f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -188f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-292f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(346f + -1672f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1103f))), true)))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -349f);
    return select(!(!vec4<bool>(false, var_1, false, all(vec4<bool>(var_1, var_1, var_1, false)))), !(!vec4<bool>(!var_1, true, all(vec3<bool>(false, var_1, false)), select(false, var_1, false))), !(!(!select(vec4<bool>(true, true, true, var_1), vec4<bool>(false, var_1, false, false), vec4<bool>(var_1, var_1, true, true)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -366f), var_0.c);
    var var_2 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(u_input.b.x, arg_1.a.x, u_input.b.x, 42133i)) & -_wgslsmith_div_vec4_i32(arg_1.a, var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1804f, -154f, var_1.x)))), var_0.d, 1841f), _wgslsmith_f_op_f32(f32(-1f) * -1419f), var_1.yz, !(!vec3<bool>(false, arg_0, arg_0)), arg_1);
    global1 = array<vec2<bool>, 15>();
    let var_3 = 551f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(all(select(!func_1(), vec4<bool>(true, true, true, true), vec4<bool>(false, any(global1[_wgslsmith_index_u32(4294967295u, 15u)]), true, true))), Struct_1(_wgslsmith_add_vec4_i32(select(~vec4<i32>(27130i, -5108i, global2[_wgslsmith_index_u32(1u, 17u)], u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], -61157i, global0.x, 4182i), vec4<i32>(u_input.b.x, global0.x, 0i, global0.x)), func_1()), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 1i, global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(69775u, 17u)]), ~vec4<i32>(-1i, 30652i, -1i, global2[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, -533f, 1131f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(996f, -1237f, 1377f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-175f, 1000f, -1173f))))), _wgslsmith_f_op_f32(select(-1000f, -2028f, true)), 192f));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, func_4(false, Struct_1(var_0.a, var_0.b, var_0.c, var_0.d)).a.x & ~(-14526i)), abs(abs(reverseBits(12528i)))), func_3());
    global1 = array<vec2<bool>, 15>();
    var_1 = -var_0.a.x;
    var var_2 = _wgslsmith_f_op_f32(-var_0.b.x);
    let var_3 = -(~func_4(u_input.a <= ~4294967295u, Struct_1(-var_0.a, _wgslsmith_f_op_vec3_f32(var_0.b + var_0.b), func_4(true, Struct_1(var_0.a, var_0.b, var_0.d, var_0.d)).c, 623f)).a.yyx);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(40997i, var_0.a.x), 0i, countOneBits(abs(~global0.x) << (~(u_input.a >> (86178u % 32u)) % 32u)));
}

