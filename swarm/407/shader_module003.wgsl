struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: array<bool, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_1(true);
    let var_1 = ~vec4<u32>(~(~1u) << (~arg_3.x % 32u), 1u, 13113u, countOneBits(arg_3.x));
    var var_2 = var_0;
    let var_3 = ~(~firstLeadingBit(u_input.b));
    var var_4 = var_0;
    return var_3.x & ~countOneBits(~27227u);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -909f)));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~4294967295u << (func_3(select(vec4<bool>(false, true, true, false), vec4<bool>(global0.a, true, arg_2, false), global0.a), vec3<bool>(false, true, arg_2), 1i, ~vec3<u32>(0u, 1u, arg_3)) % 32u), 36714u), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_3, arg_3, 55386u), vec4<u32>(arg_3, arg_3, 26963u, 15326u)), vec4<u32>(1u, arg_3, u_input.b.x, 54854u)), firstTrailingBit(arg_3)), 4294967295u, 13523u)), 15u)];
    global1 = arg_1.zy;
    let var_2 = Struct_1(arg_2);
    global2 = array<vec2<bool>, 16>();
    return ~(~max(~u_input.b >> (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_3), u_input.b) % vec2<u32>(32u)), max(u_input.a, firstTrailingBit(u_input.a))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(global0.a);
    global0 = var_0;
    var var_1 = true;
    let var_2 = var_0;
    global2 = array<vec2<bool>, 16>();
    return Struct_1(any(global2[_wgslsmith_index_u32(0u, 16u)]));
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = Struct_1(~func_2(-926f, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, global1.x, global1.x), vec3<i32>(u_input.c.x, global1.x, global1.x)), arg_0.a, u_input.b.x | 4294967295u).x < ~func_2(1713f, select(vec3<i32>(global1.x, 1i, 41405i), vec3<i32>(u_input.c.x, global1.x, 43249i), vec3<bool>(false, true, arg_0.a)), global3[_wgslsmith_index_u32(min(31002u, 0u), 15u)], _wgslsmith_div_u32(u_input.a.x, u_input.b.x)).x);
    global0 = Struct_1(arg_0.a);
    let var_2 = ~select(vec3<i32>(u_input.c.x, 42237i, 0i) >> ((~vec3<u32>(1u, 1u, 41241u) & (vec3<u32>(50976u, 19213u, 35173u) << (vec3<u32>(u_input.a.x, 1u, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u)), -_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c.x, -53310i, -50839i), vec3<i32>(global1.x, 14420i, u_input.c.x)), false);
    var var_3 = ~_wgslsmith_add_i32(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, -14613i), ~u_input.c.x), 0i);
    return ~(-vec3<i32>(global1.x, -1i, 2147483647i) >> (~vec3<u32>(4294967295u, 46447u, 1u) % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(vec3<i32>(-16706i, countOneBits(var_2.x), var_2.x), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, 2147483647i), var_2), vec3<i32>(-u_input.c.x, ~(-2147483647i), -97240i)));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global1 = vec2<i32>(min(abs(-25038i), 2147483647i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, arg_2.x, 0i), ~vec3<i32>(global1.x, u_input.c.x, 6840i)), countOneBits(vec3<i32>(1i, -99416i, -37861i))));
    var var_0 = ~_wgslsmith_clamp_i32(arg_2.x, -(i32(-1i) * -1721i), global1.x);
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2564f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), 285f)))), reverseBits(vec2<u32>(4294967295u, ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, 1000f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1146f, -936f, arg_0.x, -326f) + vec4<f32>(1205f, -182f, arg_0.x, 883f)), all(vec4<bool>(arg_1.a, global0.a, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_div_f32(-623f, arg_0.x), arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 513f, -391f, -373f))))), !global3[_wgslsmith_index_u32(u_input.b.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(8953u, u_input.a.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.b.x, 5242u, u_input.a.x)), 15u)])));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -1410f, _wgslsmith_f_op_f32(ceil(-524f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1272f, -1265f)))), Struct_1(all(vec4<bool>(arg_0.x != 4294967295u, u_input.a.x == arg_0.x, !global0.a, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(25005u, 19u, arg_0.x, 4294967295u), vec4<u32>(u_input.a.x, 36838u, 0u, u_input.a.x)), 15u)]))), _wgslsmith_clamp_vec3_i32(countOneBits(firstTrailingBit(arg_2.wzz)), func_5(func_4(arg_1, func_2(642f, arg_2.wxw, global0.a, 65919u), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-454f, 905f, arg_1, arg_1))))), vec3<i32>(i32(-1i) * -2147483647i, -1i, _wgslsmith_dot_vec2_i32(select(u_input.c, arg_2.xx, global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), u_input.c))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(137f)), -365f), _wgslsmith_f_op_f32(sign(-235f)), func_6(vec3<f32>(arg_1, 1253f, -341f), var_0, arg_2.zwz).a || global3[_wgslsmith_index_u32(countOneBits(3390u), 15u)])) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(select(522f, _wgslsmith_f_op_f32(f32(-1f) * -173f), all(vec4<bool>(true, var_0.a, false, true)))))));
    let var_2 = var_0;
    var var_3 = var_2;
    let var_4 = countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1059u, 17832u, 71795u, arg_0.x), vec4<u32>(23926u, u_input.a.x, 4294967295u, arg_0.x)), vec4<u32>(11654u, 1u, 1u, 37043u)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4850u), vec4<u32>(u_input.a.x, 3631u, arg_0.x, arg_0.x)), ~vec4<u32>(42047u, u_input.a.x, 0u, u_input.b.x))), ~vec4<u32>(u_input.a.x ^ 15543u, arg_0.x, reverseBits(u_input.a.x), ~arg_0.x)));
    return !select(select(select(select(vec4<bool>(global0.a, true, true, var_0.a), vec4<bool>(var_0.a, var_1, false, global3[_wgslsmith_index_u32(79048u, 15u)]), false), !vec4<bool>(true, true, false, var_2.a), -2147483647i <= arg_2.x), select(vec4<bool>(global0.a, false, false, false), select(vec4<bool>(var_3.a, var_3.a, var_1, var_1), vec4<bool>(var_2.a, false, true, global3[_wgslsmith_index_u32(arg_0.x, 15u)]), vec4<bool>(false, true, true, false)), select(vec4<bool>(var_0.a, var_1, var_3.a, false), vec4<bool>(var_2.a, var_0.a, var_0.a, true), vec4<bool>(global3[_wgslsmith_index_u32(59603u, 15u)], true, var_0.a, global0.a))), false || any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true))), !(!select(vec4<bool>(var_0.a, var_2.a, true, var_3.a), vec4<bool>(var_1, var_2.a, false, false), vec4<bool>(true, var_3.a, var_0.a, true))), vec4<bool>(true, false & all(vec3<bool>(false, global0.a, global0.a)), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.c;
    var var_0 = Struct_1(any(select(func_1(~u_input.b, 1f, _wgslsmith_div_vec4_i32(vec4<i32>(58057i, 0i, -23462i, u_input.c.x), vec4<i32>(0i, 37435i, global1.x, 1i))), vec4<bool>(all(vec3<bool>(false, global0.a, global0.a)), true, global0.a, true), !(!vec4<bool>(false, global0.a, false, global0.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(947f, -474f, 2253f, -1234f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1659f, 423f, -1432f, 644f), vec4<f32>(1736f, 948f, -478f, -1489f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(round(301f)), 1776f, -865f)))));
    var_0 = Struct_1(!(!any(vec4<bool>(global3[_wgslsmith_index_u32(1009u, 15u)], global0.a, false, global0.a))));
    let var_2 = true;
    var var_3 = countOneBits(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(50035i, 5937i, 0i), -vec3<i32>(global1.x, 34359i, global1.x)), -2031i, 38253i, firstLeadingBit(_wgslsmith_mod_i32(-u_input.c.x, global1.x))));
    var var_4 = any(select(vec3<bool>(true, true, false), vec3<bool>(true, 4294967295u < u_input.a.x, var_2), !all(vec4<bool>(var_0.a, global0.a, var_0.a, false))));
    let var_5 = vec2<bool>(!global0.a, !(func_4(_wgslsmith_f_op_f32(round(524f)), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(4675u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -498f, -666f, -896f))).a || false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(var_3.x, abs(1i)), 52096i, abs((-47754i << (u_input.b.x % 32u)) >> (95097u % 32u))));
}

