struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(-329f, 369f, -1090f, -1089f, -728f, -900f, -1088f, -1661f, 326f, -504f, -1000f, -615f, -2181f, -2364f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, global0[_wgslsmith_index_u32(arg_3, 14u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, global0[_wgslsmith_index_u32(13282u, 14u)]))) * vec2<f32>(1108f, 1416f)), select(!arg_0.zy, select(vec2<bool>(false, true), arg_0.xz, arg_0.x), arg_0.yy)))));
    var var_1 = vec4<i32>(-1i, 27600i, _wgslsmith_mod_i32(28860i, ~17220i), 46797i);
    var var_2 = select(true, true, true);
    var var_3 = Struct_1(vec2<u32>(~arg_3, ~(57224u ^ _wgslsmith_add_u32(arg_3, arg_3))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3, arg_3), 14u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14991u, 14u)]))), arg_1, _wgslsmith_f_op_f32(ceil(922f))), var_0.x, vec3<bool>(arg_0.x, arg_0.x, arg_0.x));
    let var_4 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_2.x, _wgslsmith_mod_i32(abs(~arg_2.x), u_input.a)), -abs(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, 0i), arg_2))));
    return vec2<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_sub_u32(52869u, 31707u << (var_3.a.x % 32u))), 15166u), ~(1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, arg_3, var_3.a.x), ~vec3<u32>(1u, 53981u, 65023u)) % 32u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(arg_0, arg_0), vec4<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(38552u, 14u)], _wgslsmith_f_op_f32(step(-133f, -651f))))), _wgslsmith_f_op_f32(sign(arg_2.c)), -731f, -728f), arg_1, vec3<bool>(!arg_2.d.x, !arg_2.d.x, arg_2.d.x));
    var var_1 = true;
    var var_2 = Struct_1(func_3(!vec3<bool>(true, false, arg_2.d.x), 911f, -(-vec2<i32>(0i, u_input.a) ^ (vec2<i32>(u_input.a, -2147483647i) | vec2<i32>(56140i, u_input.a))), abs(32641u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -2307f)))), 491f, 464f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 14u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2345f, arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(191f - global0[_wgslsmith_index_u32(63231u, 14u)]))), var_0.d);
    let var_3 = var_2.d.x != true;
    var_1 = !var_0.d.x;
    return Struct_1(_wgslsmith_mult_vec2_u32(var_2.a, firstLeadingBit(var_0.a)), vec4<f32>(-517f, var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 14u)])))))), _wgslsmith_f_op_f32(trunc(arg_2.b.x)), var_0.d);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = arg_1;
    let var_1 = select(!vec4<bool>(arg_1.d.x, arg_1.d.x, func_2(var_0.a, var_0.c, Struct_1(vec2<u32>(22359u, arg_1.a.x), arg_1.b, arg_1.b.x, var_0.d)).d.x || (arg_1.d.x & var_0.d.x), all(vec2<bool>(false, false))), !(!vec4<bool>(var_0.d.x, true, any(vec3<bool>(false, arg_1.d.x, true)), !arg_1.d.x)), vec4<bool>(0i <= _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, arg_0, arg_0, 3828i), _wgslsmith_mod_vec4_i32(vec4<i32>(-6499i, -16085i, -19462i, arg_0), vec4<i32>(2147483647i, u_input.a, 1i, -21677i))), arg_1.d.x, !all(arg_1.d), all(!(!vec4<bool>(false, false, var_0.d.x, true)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.yz * arg_1.b.wy) * var_0.b.wz);
    var var_3 = 422f;
    var var_4 = true;
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b - var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1398f, _wgslsmith_f_op_f32(f32(-1f) * -1713f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(874f * _wgslsmith_f_op_f32(f32(-1f) * -368f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_1.b))))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_4(arg_0, func_2(vec2<u32>(4294967295u, 0u), 608f, Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(global0[_wgslsmith_index_u32(67738u, 14u)], 366f, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(10367u, 14u)]), -385f, vec3<bool>(arg_1, true, arg_1))))))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(vec2<u32>(81376u, 22053u), -863f, Struct_1(vec2<u32>(40306u, 67006u), vec4<f32>(-845f, 396f, global0[_wgslsmith_index_u32(18400u, 14u)], 1199f), global0[_wgslsmith_index_u32(463u, 14u)], vec3<bool>(arg_2.x, true, true))).b.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 53678u), 14u)], -1116f, global0[_wgslsmith_index_u32(20570u, 14u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(func_2(vec2<u32>(4294967295u, 0u), global0[_wgslsmith_index_u32(1u, 14u)], Struct_1(vec2<u32>(2550u, 16794u), vec4<f32>(global0[_wgslsmith_index_u32(5547u, 14u)], -1689f, 1107f, global0[_wgslsmith_index_u32(1u, 14u)]), global0[_wgslsmith_index_u32(14986u, 14u)], vec3<bool>(arg_2.x, false, arg_2.x))).b, func_2(vec2<u32>(1u, 4294967295u), global0[_wgslsmith_index_u32(0u, 14u)], Struct_1(vec2<u32>(64507u, 16618u), vec4<f32>(1750f, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(13747u, 14u)], -887f), -522f, vec3<bool>(true, false, arg_1))).b))))));
    let var_1 = Struct_1(vec2<u32>(1u, 1u) ^ vec2<u32>(firstTrailingBit(3655u), 15740u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f - 2837f))), _wgslsmith_f_op_vec4_f32(func_4(1i, func_2(firstLeadingBit(vec2<u32>(1u, 36047u)), _wgslsmith_f_op_f32(trunc(var_0.x)), func_2(vec2<u32>(1u, 69764u), -139f, Struct_1(vec2<u32>(1u, 1u), vec4<f32>(245f, -489f, -3138f, global0[_wgslsmith_index_u32(1u, 14u)]), var_0.x, vec3<bool>(arg_2.x, arg_1, true)))))).x, _wgslsmith_f_op_f32(-112f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)]), -1665f))), -593f, select(select(!select(vec3<bool>(false, arg_2.x, arg_1), vec3<bool>(arg_1, true, false), vec3<bool>(false, false, arg_2.x)), select(vec3<bool>(arg_2.x, true, false), vec3<bool>(true, arg_1, arg_2.x), var_0.x <= global0[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(any(arg_2), -2147483647i > u_input.a, any(arg_2))), func_2(max(~vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)), var_0.x, Struct_1(abs(vec2<u32>(16089u, 35512u)), var_0, _wgslsmith_f_op_f32(-var_0.x), vec3<bool>(true, false, true))).d, arg_1));
    global0 = array<f32, 14>();
    let var_2 = vec2<u32>(~var_1.a.x, _wgslsmith_mod_u32(57532u << (var_1.a.x % 32u), ~(~4294967295u)));
    global0 = array<f32, 14>();
    return var_2.x | countOneBits(6708u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 39887u;
    var_0 = (abs(18446u) | (func_1(_wgslsmith_clamp_i32(u_input.a, u_input.a, 18605i), true, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))) & select(18165u, _wgslsmith_dot_vec3_u32(vec3<u32>(2527u, 4294967295u, 1u), vec3<u32>(0u, 0u, 8378u)), true))) | _wgslsmith_sub_u32(19799u, ~(~4294967295u) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(7548u, 52477u, 8035u, 42772u)));
    let var_1 = ~countOneBits(vec4<i32>((-25349i ^ u_input.a) & -u_input.a, firstLeadingBit(~u_input.a), _wgslsmith_add_i32(-u_input.a, ~u_input.a), u_input.a));
    var var_2 = u_input.a;
    var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), func_3(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(66446u, 14u)], vec2<i32>(-2147483647i, u_input.a), 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 8616u), 58506u), vec2<u32>(1u, 1u))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1383f);
    let var_4 = _wgslsmith_mult_i32(var_1.x, ~(~(~var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 1u, vec3<u32>(33870u, func_2(select(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - var_3)), func_2(vec2<u32>(4294967295u, 1u), -209f, Struct_1(vec2<u32>(0u, 1u), vec4<f32>(global0[_wgslsmith_index_u32(21893u, 14u)], 1416f, var_3, -1847f), 1319f, vec3<bool>(false, true, true)))).a.x, ~(~(~62318u))), func_2(~(~(~vec2<u32>(41286u, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1407f))), Struct_1(~reverseBits(vec2<u32>(1u, 8712u)), vec4<f32>(_wgslsmith_f_op_f32(step(174f, -842f)), var_3, _wgslsmith_div_f32(var_3, -1901f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)] + var_3)), var_3, vec3<bool>(true, true, true))).a, _wgslsmith_f_op_f32(round(var_3)));
}

