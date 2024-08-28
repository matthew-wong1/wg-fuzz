struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<f32>(846f, -924f, 456f), 0i, vec4<bool>(false, true, true, false), vec4<i32>(2147483647i, 1i, 2147483647i, 1i), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(577f, 725f, 285f), -34463i, vec4<bool>(true, false, true, false), vec4<i32>(-1i, -72120i, -18361i, -43222i), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-1006f, 528f, 2007f), -1i, vec4<bool>(false, false, false, false), vec4<i32>(-9168i, -65800i, -17521i, 0i), vec3<bool>(true, false, false)), Struct_1(vec3<f32>(1000f, 123f, 783f), 0i, vec4<bool>(false, true, true, true), vec4<i32>(10829i, -20990i, 27374i, 1i), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-1000f, -591f, -404f), 1i, vec4<bool>(false, false, false, true), vec4<i32>(-1i, -18773i, 2147483647i, 1i), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(1410f, -1322f, -408f), -4353i, vec4<bool>(true, false, false, false), vec4<i32>(18578i, 91114i, 0i, 19007i), vec3<bool>(false, false, false)), Struct_1(vec3<f32>(140f, 1595f, -1650f), 35992i, vec4<bool>(false, false, true, false), vec4<i32>(0i, -1i, 22329i, 54597i), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(370f, 1537f, -987f), i32(-2147483648), vec4<bool>(true, false, false, true), vec4<i32>(-17299i, -50894i, -71304i, 1i), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(1008f, 977f, -673f), i32(-2147483648), vec4<bool>(true, false, false, true), vec4<i32>(-43330i, -1i, 2147483647i, 37426i), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-1000f, 293f, -104f), 2147483647i, vec4<bool>(true, false, false, false), vec4<i32>(0i, 2147483647i, 46878i, 10069i), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(1439f, 327f, 570f), -1i, vec4<bool>(false, true, true, false), vec4<i32>(-26035i, 28511i, 0i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(1060f, -105f, 1446f), i32(-2147483648), vec4<bool>(false, false, true, true), vec4<i32>(1i, 6744i, -22651i, -20294i), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-2274f, -1590f, -921f), -5591i, vec4<bool>(true, true, false, false), vec4<i32>(2147483647i, i32(-2147483648), 1i, -32756i), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-693f, 874f, -692f), 2147483647i, vec4<bool>(true, false, false, true), vec4<i32>(i32(-2147483648), 23027i, 0i, -1i), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(-774f, -1562f, 1245f), 1i, vec4<bool>(false, false, false, false), vec4<i32>(-19719i, 1i, 25756i, -46856i), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(-803f, -1000f, -425f), 60541i, vec4<bool>(true, true, false, true), vec4<i32>(-41321i, 2147483647i, 0i, 38967i), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(958f, -1021f, 648f), i32(-2147483648), vec4<bool>(true, false, false, false), vec4<i32>(2147483647i, 30066i, 4445i, -1i), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-837f, 863f, 648f), -15959i, vec4<bool>(false, true, false, true), vec4<i32>(24217i, -1i, -39031i, 5826i), vec3<bool>(false, true, true)), Struct_1(vec3<f32>(240f, -1295f, 726f), 2147483647i, vec4<bool>(false, false, false, false), vec4<i32>(0i, 69830i, -1i, 0i), vec3<bool>(true, false, false)), Struct_1(vec3<f32>(1896f, -1380f, 222f), -58517i, vec4<bool>(false, true, false, false), vec4<i32>(115454i, 44889i, 44045i, -1i), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(199f, -573f, -1392f), -20439i, vec4<bool>(true, true, true, false), vec4<i32>(-27645i, 1i, -1i, -12454i), vec3<bool>(true, false, false)), Struct_1(vec3<f32>(837f, 1697f, 327f), 1i, vec4<bool>(false, false, true, true), vec4<i32>(13464i, -3964i, -31466i, 22855i), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-837f, -612f, -881f), 1i, vec4<bool>(true, true, false, true), vec4<i32>(8484i, -5694i, i32(-2147483648), -8892i), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-1000f, -295f, -1717f), 0i, vec4<bool>(true, true, true, false), vec4<i32>(42745i, 12674i, -17181i, 35539i), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(-728f, -539f, -788f), -1i, vec4<bool>(true, false, false, false), vec4<i32>(17980i, -18958i, 0i, -23263i), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-665f, 803f, -1000f), -1i, vec4<bool>(false, true, false, false), vec4<i32>(1i, -35316i, -15424i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(1285f, 419f, -772f), -41884i, vec4<bool>(false, false, false, false), vec4<i32>(2147483647i, 1i, 0i, 0i), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(1511f, 610f, -1000f), -13957i, vec4<bool>(true, true, false, true), vec4<i32>(55205i, 38081i, 2147483647i, -48410i), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(1733f, -1531f, 2080f), 2147483647i, vec4<bool>(true, true, true, true), vec4<i32>(-16821i, -1i, 2147483647i, 1i), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-1769f, -921f, 1000f), 2147483647i, vec4<bool>(true, true, false, false), vec4<i32>(1809i, 19091i, -49097i, 14164i), vec3<bool>(true, true, true)));

var<private> global3: array<f32, 18>;

var<private> global4: Struct_1 = Struct_1(vec3<f32>(-760f, -388f, -3127f), 0i, vec4<bool>(true, false, true, true), vec4<i32>(18492i, 56521i, 0i, i32(-2147483648)), vec3<bool>(false, false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(59738u, 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f + global3[_wgslsmith_index_u32(44584u, 18u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(805f + 999f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 18u)] * global3[_wgslsmith_index_u32(global1.x, 18u)]))))));
    global3 = array<f32, 18>();
    global2 = array<Struct_1, 30>();
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, global3[_wgslsmith_index_u32(u_input.e, 18u)], global4.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1050f, global4.a.x, global4.a.x))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global4.a, vec3<f32>(var_0.x, var_0.x, -149f)))), global4.a, !arg_0.x))), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(2147483647i, global4.b, global4.d.x)), max(global4.d.yww, -vec3<i32>(-33831i, -2147483647i, 0i))) << (1u % 32u), !vec4<bool>(global4.c.x, all(global4.c.xx), arg_0.x, ~1i > (global4.d.x << (18346u % 32u))), -((global4.d >> (_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(global1.x, u_input.b.x, 69819u, global1.x)) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<i32>(-19659i, 30934i, u_input.c, 1i))), global4.e);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 18u)] + -759f))))));
    return 1659f;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3[_wgslsmith_index_u32(global1.x, 18u)], arg_1.a.x, -1306f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(global3[_wgslsmith_index_u32(1u, 18u)], 1506f, global3[_wgslsmith_index_u32(global1.x, 18u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, global4.a.x) * global4.a)))), vec3<f32>(_wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 18u)])), 1056f, global4.a.x), arg_2)), _wgslsmith_div_i32(max(select(arg_0.x, -u_input.c, arg_2 || arg_1.e.x), 11754i), arg_0.x), !(!(!arg_1.c)), vec4<i32>(-2147483647i, _wgslsmith_div_i32(1i, firstTrailingBit(u_input.c << (u_input.a % 32u))), global4.b, ~(-arg_1.b)), !select(global4.e, vec3<bool>(727u < global1.x, arg_2 && false, global4.e.x), all(vec2<bool>(arg_1.e.x, global4.e.x))));
    global1 = firstLeadingBit(abs(u_input.d.zw));
    global2 = array<Struct_1, 30>();
    global4 = arg_1;
    let var_0 = ~select(min(abs(0u), 45697u), _wgslsmith_add_u32(25652u, 97592u), false);
    return global4.c;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, -1095f, 286f) * _wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(-1000f, global4.a.x, 205f))) * vec3<f32>(_wgslsmith_div_f32(-814f, 211f), arg_1.a.x, 1002f)))), _wgslsmith_clamp_i32(-(i32(-1i) * -18409i), -40358i, -2147483647i), global4.c, vec4<i32>(arg_2.x, abs(i32(-1i) * -1i) >> (_wgslsmith_mult_u32(~4294967295u, ~11151u) % 32u), 1i, 1i), arg_1.e);
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(62076u, 0u), 30u)];
    var var_2 = u_input.b.x;
    let var_3 = global2[_wgslsmith_index_u32(~u_input.a, 30u)];
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_3.a.x, 382f) * vec3<f32>(arg_0, -217f, 1931f)), arg_1.a, vec3<bool>(true, var_3.c.x, true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)))), -1i, arg_1.c, vec4<i32>(-1i) * -(vec4<i32>(u_input.c, 1i, 15608i, var_0.d.x) << (select(vec4<u32>(4294967295u, 1u, 1u, 44625u), u_input.d, var_1.e.x) % vec4<u32>(32u))), vec3<bool>(select((arg_1.a.x > 1654f) | arg_1.e.x, true, true), true, !(var_0.a.x <= _wgslsmith_f_op_f32(var_3.a.x - -651f))));
    return 222f;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.a.x)) * -163f) - -543f);
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(768f - _wgslsmith_f_op_f32(func_2(!vec3<bool>(global4.c.x, true, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(-global4.a), 0i, func_3(~firstLeadingBit(vec3<i32>(u_input.c, 67353i, u_input.c)), Struct_1(_wgslsmith_f_op_vec3_f32(select(global4.a, vec3<f32>(1525f, 177f, global3[_wgslsmith_index_u32(48280u, 18u)]), false)), ~10132i, vec4<bool>(global4.e.x, global4.e.x, true, global4.c.x), -vec4<i32>(arg_0, 15617i, arg_0, global4.d.x), vec3<bool>(true, true, global4.e.x)), global4.e.x), abs(vec4<i32>(arg_0, arg_0, -39560i, u_input.c)) & ~_wgslsmith_mult_vec4_i32(vec4<i32>(global4.b, u_input.c, arg_0, global4.d.x), vec4<i32>(arg_0, -30270i, -2147483647i, 1i)), global4.c.zwz), global4.d.zz));
    return global2[_wgslsmith_index_u32(select(global1.x, ~global1.x >> (~1u % 32u), !(!(arg_0 <= -4987i) && true)), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(countOneBits(1u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_f32(f32(-1f) * -482f), 1f)), _wgslsmith_dot_vec3_i32(global4.d.yxy, vec3<i32>(~global4.d.x, -1i, -2147483647i & u_input.c) >> (~vec3<u32>(global1.x, global1.x, u_input.a) % vec3<u32>(32u))), !global4.c, global4.d, select(vec3<bool>(true, false, false), !global4.c.zxy, global4.e.x));
    var var_2 = max(select(~var_1.d.x, u_input.c, true), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(global4.b, -2147483647i, u_input.c, 24478i), _wgslsmith_add_vec4_i32(global4.d, vec4<i32>(u_input.c, global4.d.x, -2277i, var_1.d.x) | vec4<i32>(global4.d.x, -1i, u_input.c, global4.d.x))), vec4<i32>(-_wgslsmith_sub_i32(-7849i, -37891i), -2147483647i, ~firstTrailingBit(-18630i), u_input.c)));
    var_1 = func_1(global4.d.x);
    let var_3 = global4.c;
    let var_4 = ~reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-83673i, -2147483647i, global4.b), vec3<i32>(u_input.c, u_input.c, var_1.b)) | var_1.d.xzx, reverseBits(-global4.d.zyw)));
    var_0 = 61746u;
    let var_5 = vec2<i32>(-4662i, u_input.c);
    global2 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer((u_input.a | 10229u) << (7946u % 32u));
}

