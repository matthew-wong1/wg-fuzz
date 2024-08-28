struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, false, false, true, true, true, false, false, false, false, true, false, false, true, true, false, false, false, true, false, false, true, false, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = array<bool, 25>();
    var var_0 = u_input.a;
    let var_1 = ~(~max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(35488u, arg_0.c, 1u, arg_0.c)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), countOneBits(u_input.a), arg_0.b.x, vec2<f32>(1801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f))), _wgslsmith_add_vec4_i32(abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.b, -9799i, 45959i), vec4<i32>(40335i, u_input.a, u_input.b, -11811i))), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -45660i, u_input.b), vec4<i32>(u_input.b, u_input.a, u_input.b, -3619i), vec4<i32>(u_input.b, 45108i, u_input.a, 1i)))));
    global0 = array<bool, 25>();
    return 4294967295u;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1084f * -1130f) + _wgslsmith_f_op_f32(sign(1968f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(163f, 353f)) - _wgslsmith_f_op_f32(968f - 1000f)))), u_input.b, _wgslsmith_f_op_f32(round(726f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1242f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-521f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1721f)) + _wgslsmith_div_f32(374f, -1000f)))), firstTrailingBit(vec4<i32>(arg_0.x, _wgslsmith_mod_i32(-2147483647i, u_input.b), ~arg_0.x, u_input.a ^ -39520i) << (max(~vec4<u32>(15040u, 71953u, u_input.d, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 33267u, u_input.c, u_input.c), vec4<u32>(44353u, 7509u, u_input.d, u_input.c))) % vec4<u32>(32u))));
    var var_1 = var_0.b;
    global0 = array<bool, 25>();
    let var_2 = vec3<i32>(countOneBits(firstTrailingBit(-countOneBits(38805i))), u_input.b, -_wgslsmith_clamp_i32(countOneBits(~var_0.e.x), firstLeadingBit(_wgslsmith_mult_i32(33884i, 0i)), _wgslsmith_sub_i32(~var_0.e.x, ~2147483647i)));
    global0 = array<bool, 25>();
    return abs(~(~u_input.d));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> bool {
    var var_0 = ~firstTrailingBit(vec3<u32>(firstTrailingBit(~u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 4294967295u, arg_1), max(vec4<u32>(43947u, u_input.d, 4294967295u, 138222u), vec4<u32>(u_input.d, arg_1, 128627u, 0u))), ~25632u >> (func_3(vec2<i32>(u_input.a, 58398i)) % 32u)));
    var var_1 = abs(-select(select(vec4<i32>(20727i, u_input.b, 1i, u_input.a), min(vec4<i32>(2147483647i, u_input.b, -1i, 48425i), vec4<i32>(0i, u_input.a, u_input.b, 0i)), !arg_0), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, -2147483647i) << (vec4<u32>(var_0.x, 894u, 0u, 49921u) % vec4<u32>(32u)), ~vec4<i32>(7959i, u_input.b, u_input.b, u_input.b)), !(1u < arg_1)));
    var var_2 = Struct_4(vec3<f32>(-1265f, -672f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-909f + _wgslsmith_f_op_f32(-1727f * 1000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1053f, -719f), vec2<f32>(1023f, 804f), vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1525f, 2157f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(ceil(-1479f)))), vec2<f32>(_wgslsmith_f_op_f32(513f + _wgslsmith_f_op_f32(1477f + 1650f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f * -1000f)))), _wgslsmith_mult_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.x, -4074i, u_input.b), vec4<i32>(var_1.x, u_input.b, u_input.a, -1i)) ^ -2147483647i), var_1.x), vec3<f32>(_wgslsmith_f_op_f32(259f - 341f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f - -446f) - _wgslsmith_f_op_f32(f32(-1f) * -446f)), 534f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) * _wgslsmith_f_op_f32(f32(-1f) * -959f)))));
    let var_3 = var_0.zz;
    let var_4 = Struct_2(vec4<bool>(1620f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + _wgslsmith_f_op_f32(-612f * 1126f)), global0[_wgslsmith_index_u32(~55170u, 25u)], all(select(select(arg_0, vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], arg_0.x, true, arg_0.x), arg_0), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)], true, false), any(vec3<bool>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(arg_1, 25u)])))), (global0[_wgslsmith_index_u32(~1u, 25u)] & true) & (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(var_0.x, 1u)) < u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(374f, var_2.b.x)), _wgslsmith_f_op_f32(1976f + 1000f), _wgslsmith_f_op_f32(var_2.a.x + 1613f), _wgslsmith_f_op_f32(345f + 1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1650f, -1221f, var_2.d.x, 165f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-314f, var_2.a.x, var_2.b.x, var_2.b.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.d.x, -469f, 211f, -433f)))))))), _wgslsmith_mult_u32(u_input.d, 1u) >> (reverseBits(4294967295u) % 32u), arg_0.xx);
    return !all(select(arg_0, select(vec4<bool>(false, var_4.a.x, global0[_wgslsmith_index_u32(0u, 25u)], false), vec4<bool>(arg_0.x, var_4.a.x, false, true), vec4<bool>(true, true, var_4.a.x, global0[_wgslsmith_index_u32(15805u, 25u)])), any(arg_0))) & any(!select(!arg_0, arg_0, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<bool>(u_input.c > firstLeadingBit(func_1(Struct_2(vec4<bool>(true, false, false, false), vec4<f32>(2070f, -1502f, -3306f, 725f), u_input.c, vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(u_input.d, 25u)])))), func_2(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)], true), vec4<bool>(true, true, true, true), !vec4<bool>(false, global0[_wgslsmith_index_u32(20442u, 25u)], false, global0[_wgslsmith_index_u32(u_input.d, 25u)])), u_input.d ^ (u_input.d << (u_input.c % 32u))), true, any(select(select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 25u)]), true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 25u)]), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1483f, -2259f, global0[_wgslsmith_index_u32(58906u, 25u)])) * -840f), 533f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f), 680f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(482f, 1541f, -856f, 1228f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-522f, -1481f, -1000f, -1592f) + vec4<f32>(-865f, -748f, -104f, 1330f))))), ~(~u_input.d), vec2<bool>(all(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 25u)]))), global0[_wgslsmith_index_u32(func_1(Struct_2(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-202f, -1565f, 814f, 1799f)), 0u, vec2<bool>(true, global0[_wgslsmith_index_u32(14399u, 25u)]))), 25u)]));
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec2_u32(max(vec2<u32>(max(4294967295u, u_input.d), var_0.c), vec2<u32>(u_input.d, ~1u)), ~vec2<u32>(4294967295u, func_3(vec2<i32>(u_input.b, -2147483647i)))));
    var var_2 = Struct_2(var_0.a, var_0.b, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_0.c) & vec2<u32>(u_input.c, 23709u), min(vec2<u32>(var_1.x, 9286u), vec2<u32>(0u, 1u))) & 4294967295u), var_0.d);
    var_1 = _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(0u, var_0.c))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(67877u, 38773u), ~(~31590u)), ~(~vec2<u32>(var_1.x, u_input.d))));
    let var_3 = Struct_2(select(vec4<bool>(false, select(false, all(var_0.a.wyw), true), (global0[_wgslsmith_index_u32(0u, 25u)] | true) == true, all(select(vec3<bool>(var_2.a.x, var_0.d.x, global0[_wgslsmith_index_u32(var_0.c, 25u)]), var_2.a.yzz, vec3<bool>(true, var_2.d.x, false)))), var_0.a, all(select(!var_0.a, vec4<bool>(var_0.a.x, true, var_2.a.x, global0[_wgslsmith_index_u32(0u, 25u)]), select(var_0.a, vec4<bool>(true, true, var_0.d.x, false), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2.b))))), var_1.x, !var_0.d);
    var_1 = select(~vec2<u32>(_wgslsmith_add_u32(19620u, 0u), 56311u), select(max(select(vec2<u32>(var_2.c, 80220u), vec2<u32>(var_0.c, 4294967295u), var_0.d), vec2<u32>(var_1.x, 1u) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(var_0.c, var_0.c)), vec2<u32>(18210u, u_input.c) << (vec2<u32>(u_input.d, var_3.c) % vec2<u32>(32u)), ~vec2<u32>(var_1.x, 0u)), var_3.d), true) >> ((vec2<u32>(56469u, _wgslsmith_div_u32(520u, 1u) >> (0u % 32u)) & _wgslsmith_add_vec2_u32(select(max(vec2<u32>(var_0.c, var_3.c), vec2<u32>(4451u, 4294967295u)), vec2<u32>(1u, 0u) | vec2<u32>(var_0.c, 30563u), true), vec2<u32>(_wgslsmith_mult_u32(1u, 44826u), var_0.c & 45478u))) % vec2<u32>(32u));
    var_0 = var_3;
    var_2 = Struct_2(!(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.c, 1u), 25u)], !var_2.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_2.b + var_0.b)))) + var_2.b), var_0.c, vec2<bool>(var_2.d.x, false));
    let var_4 = vec4<i32>(max(-(i32(-1i) * -55231i), _wgslsmith_sub_i32(i32(-1i) * -1i, u_input.a)), _wgslsmith_clamp_i32(abs(-u_input.a), _wgslsmith_div_i32(~59487i, u_input.a >> (1u % 32u)), 0i), u_input.a, u_input.b) & ~(firstLeadingBit(~vec4<i32>(-22893i, u_input.a, u_input.a, u_input.b)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-7408i, 0i, 14983i, u_input.b), vec4<i32>(1i, u_input.a, 2147483647i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.zxx, var_4.x, var_4.ywz, ~min(~1u, ~(~1u)));
}

