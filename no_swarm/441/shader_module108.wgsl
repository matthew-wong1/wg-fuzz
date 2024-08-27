struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 81262u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    global1 = vec2<u32>(0u, ~select(arg_1, firstLeadingBit(66416u), any(vec3<bool>(true, true, true))));
    let var_0 = Struct_2(Struct_1(-152f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-121f, -706f, 3012f, 1209f), vec4<f32>(118f, 320f, -526f, 226f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1453f, 1762f, 147f, -2193f)))), true & (_wgslsmith_sub_i32(u_input.c, 44211i) > _wgslsmith_add_i32(-68095i, u_input.c))), vec4<u32>(abs(4294967295u), 1u >> (reverseBits(u_input.a.x >> (arg_1 % 32u)) % 32u), arg_1 >> (~(~arg_1) % 32u), arg_1));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(585f, -424f, var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) - _wgslsmith_f_op_f32(trunc(-394f)))), vec4<f32>(2678f, var_0.a.a, -1078f, var_0.a.b.x), true));
    global0 = array<vec2<i32>, 12>();
    let var_2 = 1834f;
    return 42855u;
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(-1744f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2837f, -378f, 1000f, -607f))), true), vec4<u32>(_wgslsmith_mult_u32(~11822u, 0u), global1.x, func_3(0u, 47972u) | ~65742u, ~(~4294967295u))), Struct_2(Struct_1(-1369f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1724f, -934f, -625f, 1000f))))), true), select(_wgslsmith_mod_vec4_u32(vec4<u32>(86661u, 4294967295u, 0u, 1u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 63294u)) << ((vec4<u32>(u_input.b, 57108u, 62668u, global1.x) | vec4<u32>(85671u, u_input.b, 50192u, 67936u)) % vec4<u32>(32u)), vec4<u32>(global1.x & 0u, global1.x, 165u, min(72597u, 1u)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false))), Struct_2(Struct_1(_wgslsmith_div_f32(-267f, _wgslsmith_f_op_f32(step(250f, -665f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1308f), 1000f, -693f, -1000f), !(0u <= u_input.b)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(0u, global1.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 52103u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 75959u, 66447u, 10643u), vec4<u32>(26270u, global1.x, 1u, 4294967295u), vec4<u32>(0u, u_input.b, u_input.b, 19050u)) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 6723u, global1.x, 29026u))), _wgslsmith_add_i32(50505i, -u_input.c) ^ (-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 1i, 0i), vec4<i32>(u_input.c, 34240i, u_input.c, u_input.c)) | _wgslsmith_mod_i32(max(u_input.c, -2147483647i), u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-410f, _wgslsmith_f_op_f32(abs(685f)))) + _wgslsmith_f_op_f32(-956f + _wgslsmith_f_op_f32(1000f + 2127f)))));
    global0 = array<vec2<i32>, 12>();
    let var_1 = var_0.e;
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, -728f), var_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1001f))) * 363f), _wgslsmith_f_op_f32(f32(-1f) * -1560f), -140f, _wgslsmith_f_op_f32(step(-1349f, 1721f))), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_2(func_2(), reverseBits(~(~countOneBits(vec4<u32>(1u, arg_2, 0u, 1u)))));
    var var_1 = abs(~_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c, u_input.c, -383i), vec3<i32>(-1i, ~(-13779i), reverseBits(u_input.c))));
    var_1 = -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(-2147483647i, var_1.x)), _wgslsmith_clamp_i32(firstTrailingBit(2147483647i), var_1.x, firstTrailingBit(1i))), select(~0i, u_input.c, arg_0.c), 0i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-958f - 283f), var_0.a.a);
    let var_3 = vec2<f32>(774f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1179f))));
    return ~0i > var_1.x;
}

fn func_1() -> vec4<bool> {
    let var_0 = any(select(vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), func_4(func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(-154f, -824f, -1321f, 1030f) - vec4<f32>(1000f, 277f, 1289f, 653f)), firstLeadingBit(0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1859f, -624f))), true), vec4<bool>(true, true, any(vec2<bool>(true, true)), ~14292u == abs(global1.x)), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_3(Struct_2(func_2(), abs(~(~vec4<u32>(global1.x, u_input.a.x, global1.x, u_input.b)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-956f, -698f, -765f, -510f), vec4<f32>(1000f, -174f, 1099f, 701f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1625f, -1005f, -258f, 211f) - vec4<f32>(-398f, 577f, -991f, -1019f)))), !any(vec4<bool>(var_0, true, var_0, false))), vec4<u32>(1u, ~23624u, global1.x, 4294967295u)), Struct_2(func_2(), ~(~(~vec4<u32>(global1.x, global1.x, global1.x, global1.x)))), 36196i >> (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global1.x, u_input.a.x)), countOneBits(u_input.a) & (vec2<u32>(global1.x, u_input.a.x) << (vec2<u32>(42126u, u_input.b) % vec2<u32>(32u)))) % 32u), _wgslsmith_f_op_f32(-func_2().a));
    return select(!vec4<bool>(!(u_input.c == u_input.c), true, var_1.a.a.b.x > _wgslsmith_f_op_f32(-var_1.a.a.b.x), true), select(vec4<bool>(false, false, !(var_1.b.a.a <= 101f), false), !select(!vec4<bool>(true, var_1.c.a.c, var_0, true), vec4<bool>(var_0, var_1.b.a.c, var_0, var_1.b.a.c), var_1.b.a.c | var_0), vec4<bool>(false | (var_0 | true), any(select(vec3<bool>(var_0, var_1.b.a.c, var_1.c.a.c), vec3<bool>(var_0, var_0, var_1.c.a.c), true)), func_2().c, select(!var_0, var_0, true))), 1i >= u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(true, true, false, ~u_input.c > ~(-3873i)), select(func_1(), vec4<bool>(false, all(vec3<bool>(true, false, false)), true, true), func_1().x), !(!any(vec2<bool>(true, true)))), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, any(vec4<bool>(false, true, false, true)), false, true)), false, true, (true && select(true, false, true)) != func_4(func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2043f, 1903f, -1875f, 823f)), 15863u, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(709f, 455f))))));
    global0 = array<vec2<i32>, 12>();
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(u_input.c), abs(1i)), global0[_wgslsmith_index_u32(1u, 12u)]);
    var var_2 = func_2();
    var_0 = !(!(!select(!vec4<bool>(true, var_0.x, var_2.c, var_2.c), vec4<bool>(var_2.c, var_2.c, false, var_2.c), !vec4<bool>(var_2.c, false, true, false))));
    let var_3 = 52735i;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(ceil(-2013f)), _wgslsmith_f_op_f32(163f * var_2.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a, 271f, var_2.b.x), var_2.b.zyz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 1120f, var_2.b.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.b.xyx, var_2.b.zyy) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-564f, var_2.b.x, var_2.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, -618f, 404f))))), vec3<bool>(var_0.x, true, true))));
    var_0 = vec4<bool>(func_2().c, any(var_0.xz), all(select(select(vec4<bool>(true, true, var_0.x, true), !vec4<bool>(true, var_2.c, var_0.x, var_2.c), !vec4<bool>(var_2.c, true, var_2.c, false)), func_1(), !vec4<bool>(var_2.c, var_2.c, var_0.x, false))), false);
    var var_5 = vec3<f32>(var_4.x, -890f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global1.x, _wgslsmith_dot_vec3_u32(~min(vec3<u32>(1u, u_input.a.x, 33792u), vec3<u32>(0u, 77990u, 35079u)), ~abs(vec3<u32>(global1.x, global1.x, u_input.a.x))), _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.a.x, u_input.b & 13851u), u_input.a.x), global1.x), abs(countOneBits(min(vec2<i32>(40081i, -1i), vec2<i32>(var_1.x, 2147483647i)) | countOneBits(var_1))), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-43738i, 0i, 14691i, -18376i) & vec4<i32>(2147483647i, -40055i, 22543i, u_input.c), vec4<i32>(u_input.c, var_3, var_3, -43057i) >> (vec4<u32>(0u, global1.x, u_input.a.x, u_input.b) % vec4<u32>(32u))), 1i, firstLeadingBit(_wgslsmith_sub_i32(var_3, -23506i)), u_input.c), 178f);
}

