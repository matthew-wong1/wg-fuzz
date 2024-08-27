struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> f32 {
    global0 = array<vec3<i32>, 15>();
    var var_0 = !vec3<bool>(any(!select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), arg_2.x)), true, ~1u >= arg_0.x);
    let var_1 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(~(~(~4294967295u)), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-949f, 697f) - _wgslsmith_f_op_f32(trunc(919f)))), Struct_1(vec4<u32>(arg_0.x, 39745u, arg_0.x, ~u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_1.x), max(arg_1, u_input.b)))), Struct_2(global0[_wgslsmith_index_u32(~(abs(arg_0.x) >> (_wgslsmith_dot_vec2_u32(arg_0.xy, u_input.a.xy) % 32u)), 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-353f * -703f))) + _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(1000f, 672f))), Struct_1(select(select(vec4<u32>(arg_0.x, 40149u, u_input.a.x, 16472u), vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, 4294967295u), var_0.x), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u), all(vec3<bool>(true, false, arg_2.x))), min(abs(vec2<i32>(-55120i, u_input.b.x)), arg_1 << (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))))), true, Struct_1(reverseBits(min(countOneBits(vec4<u32>(50564u, 1u, arg_0.x, 4294967295u)), vec4<u32>(4294967295u, 1u, 0u, u_input.a.x) ^ vec4<u32>(54631u, 19385u, 31957u, arg_0.x))), firstLeadingBit(-u_input.b | ~vec2<i32>(2147483647i, 0i))));
    global0 = array<vec3<i32>, 15>();
    var_0 = select(select(vec3<bool>(all(var_0.zx), var_0.x, (var_0.x & false) || var_0.x), vec3<bool>(true, -259f <= _wgslsmith_f_op_f32(-var_1.b.b), true && (41012u <= arg_0.x)), !(!vec3<bool>(var_1.c, var_0.x, var_1.c))), select(vec3<bool>(all(!arg_2), false, true), vec3<bool>(arg_2.x, any(!vec3<bool>(arg_2.x, var_0.x, false)), var_1.c), !select(vec3<bool>(var_1.c, true, arg_2.x), vec3<bool>(var_0.x, true, false), false)), -145f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.b)) + _wgslsmith_f_op_f32(sign(1412f)))));
    return _wgslsmith_f_op_f32(793f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.b + var_1.a.b), var_1.b.b)) * _wgslsmith_f_op_f32(-533f + _wgslsmith_f_op_f32(round(756f)))), _wgslsmith_f_op_f32(min(var_1.b.b, -1455f)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global0 = array<vec3<i32>, 15>();
    global0 = array<vec3<i32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-692f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstTrailingBit(vec3<u32>(arg_0.x, arg_0.x, 1u)), vec2<i32>(-2147483647i, u_input.b.x), select(vec2<bool>(true, false), vec2<bool>(false, false), false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-611f, 1368f)) + 1f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-146f - -878f)))) - _wgslsmith_f_op_f32(min(-1348f, _wgslsmith_f_op_f32(round(238f))))), all(vec3<bool>(true, true, !all(vec4<bool>(false, false, false, false))))));
    global0 = array<vec3<i32>, 15>();
    let var_1 = u_input.a.x;
    return Struct_2(_wgslsmith_add_vec3_i32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21074u, var_1, var_1), vec3<u32>(1u, var_1, 0u)) << (~0u % 32u), 15u)], global0[_wgslsmith_index_u32(~33005u, 15u)] & _wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(58874u, 15u)], vec3<i32>(u_input.b.x, 0i, 37712i)), !any(vec3<bool>(true, true, true))), vec3<i32>(u_input.b.x, reverseBits(abs(-2147483647i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(34369i, 2147483647i, u_input.b.x, u_input.b.x)), 1i))), var_0, Struct_1(abs(vec4<u32>(4294967295u, ~1u, _wgslsmith_clamp_u32(var_1, var_1, 91179u), ~u_input.a.x)), _wgslsmith_div_vec2_i32(u_input.b, u_input.b ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: i32) -> f32 {
    var var_0 = func_2(u_input.a);
    var_0 = Struct_2(abs(~global0[_wgslsmith_index_u32(1u, 15u)]) << (vec3<u32>(max(var_0.c.a.x | 0u, firstLeadingBit(u_input.a.x)), ~(~var_0.c.a.x), 0u) % vec3<u32>(32u)), -139f, Struct_1(arg_1, vec2<i32>(firstTrailingBit(40997i & u_input.b.x), ~_wgslsmith_clamp_i32(18766i, u_input.b.x, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(274f, -277f, var_0.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, 757f, -961f), vec3<f32>(var_0.b, 967f, -2350f), false)))) * vec3<f32>(var_0.b, _wgslsmith_f_op_f32(select(-142f, -500f, all(vec2<bool>(true, false)))), var_0.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(585f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(1001f * -1101f))));
    var_0 = func_2(~(~vec3<u32>(1u << (u_input.a.x % 32u), var_0.c.a.x << (arg_1.x % 32u), _wgslsmith_div_u32(4294967295u, 18395u))));
    var_0 = func_2(~u_input.a);
    return _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_0.b) - var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(-vec4<i32>(21176i, u_input.b.x, u_input.b.x, 2147483647i), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), -20216i)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1481f)))) * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 11310u, 91781u)), vec2<i32>(u_input.b.x, u_input.b.x), vec2<bool>(true, true)))) + _wgslsmith_f_op_f32(func_1(abs(select(vec4<i32>(-29090i, -32200i, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 6298i, -46502i), vec4<bool>(true, true, true, false))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 6171u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 1004u, 23994u)), vec4<u32>(87903u, 1u, 4294967295u, 1u)), _wgslsmith_sub_i32(47398i, ~28521i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(347f * 2217f) + _wgslsmith_f_op_f32(-141f + -259f)) - -1088f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1904f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-780f, 1803f)))));
    global0 = array<vec3<i32>, 15>();
    let var_1 = abs(min(abs(u_input.b), ~vec2<i32>(~u_input.b.x, 1i)));
    var var_2 = Struct_3(func_2(~select(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false) >> (vec3<u32>(u_input.a.x, ~42660u, u_input.a.x | u_input.a.x) % vec3<u32>(32u))), func_2(abs(firstTrailingBit(vec3<u32>(6465u, 1u, u_input.a.x)))), !(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), func_2(_wgslsmith_clamp_vec3_u32(select(abs(u_input.a), u_input.a | vec3<u32>(14078u, 2884u, 4294967295u), vec3<bool>(true, true, true)), vec3<u32>(~43975u, 0u, ~1u), u_input.a)).c);
    global0 = array<vec3<i32>, 15>();
    var var_3 = Struct_3(var_2.b, Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(-18693i, abs(18391i), ~12454i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.b.c.a.x, var_2.b.c.a.x), 15u)] << ((vec3<u32>(u_input.a.x, 0u, u_input.a.x) >> (var_2.b.c.a.wxy % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -583f) - -864f), Struct_1(var_2.a.c.a, u_input.b)), true, Struct_1(vec4<u32>(countOneBits(67885u), abs(29886u), max(u_input.a.x, 1u | var_2.a.c.a.x), ~(~var_2.d.a.x)), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, -9940i)), vec2<i32>(abs(var_1.x), var_1.x))));
    var_2 = Struct_3(Struct_2(firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(var_2.d.b.x, var_1.x), var_3.a.a.x, -29660i)), _wgslsmith_f_op_f32(select(var_2.a.b, var_3.a.b, -636f <= var_3.b.b)), var_2.b.c), Struct_2(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 20020i, -1i), var_2.b.a, var_3.a.a)) >> (vec3<u32>(var_2.a.c.a.x, 44420u, ~1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(~vec4<u32>(var_3.b.c.a.x, var_2.a.c.a.x, 62085u, 14677u), _wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 1i), vec2<i32>(-2147483647i, -2147483647i) << (vec2<u32>(var_2.d.a.x, u_input.a.x) % vec2<u32>(32u))))), _wgslsmith_sub_i32(_wgslsmith_add_i32(min(-60657i, var_1.x), 13192i), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-52227i, var_1.x, 0i)), vec3<i32>(u_input.b.x, -19708i, 18538i))) < -10285i, var_3.d);
    let var_4 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(1u, _wgslsmith_div_u32(var_2.a.c.a.x, var_3.b.c.a.x), 0u), var_2.d.b, select(!vec2<bool>(true, var_2.c), vec2<bool>(true, var_2.c), true))) * -306f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.xyw, vec3<f32>(var_4, _wgslsmith_f_op_f32(func_1(vec4<i32>(-95510i, var_2.a.c.b.x, var_1.x, u_input.b.x), var_3.a.c.a, var_3.d.b.x)), var_0.x), vec3<bool>(all(vec4<bool>(var_3.c, var_2.c, true, true)), false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1473f * _wgslsmith_div_f32(226f, _wgslsmith_f_op_f32(f32(-1f) * -560f)))), _wgslsmith_dot_vec2_u32(u_input.a.yz, _wgslsmith_div_vec2_u32(reverseBits(u_input.a.zz), ~u_input.a.yy) >> ((vec2<u32>(0u, 38360u) | vec2<u32>(0u, var_3.b.c.a.x)) % vec2<u32>(32u))));
}

