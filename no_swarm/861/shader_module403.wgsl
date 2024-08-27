struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-5969i, 4686i, 1i, 1i, 0i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-878f - _wgslsmith_f_op_f32(abs(1233f))) + _wgslsmith_f_op_f32(f32(-1f) * -1251f)))) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2168f)) - -421f)));
    var var_1 = ~(reverseBits(u_input.a.x) ^ 66674i);
    var var_2 = !vec2<bool>(any(vec3<bool>(false, true, true)), true);
    let var_3 = min(~(-(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(-u_input.a.x, _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(32705u, 5u)], u_input.b, global0[_wgslsmith_index_u32(63729u, 5u)]), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), 1i, u_input.a.x), u_input.b));
    var var_4 = select(select(vec2<bool>(var_2.x, all(!vec4<bool>(var_2.x, var_2.x, var_2.x, false))), vec2<bool>(var_0 <= _wgslsmith_f_op_f32(-2056f + 333f), var_2.x & all(vec3<bool>(var_2.x, var_2.x, var_2.x))), vec2<bool>(var_2.x, false)), select(select(vec2<bool>(!var_2.x, var_2.x), !vec2<bool>(var_2.x, false), !(!vec2<bool>(var_2.x, true))), vec2<bool>(any(vec3<bool>(false, true, var_2.x)), var_2.x), select(!select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, true), vec2<bool>(true, true)), !vec2<bool>(var_2.x, var_2.x), vec2<bool>(!var_2.x, all(vec4<bool>(var_2.x, false, true, var_2.x))))), all(vec4<bool>(true || (var_2.x | var_2.x), select(true, !var_2.x, var_2.x), var_2.x, false)));
    return !(!select(select(!vec2<bool>(true, var_4.x), !vec2<bool>(var_4.x, true), select(false, true, true)), select(vec2<bool>(true, true), select(vec2<bool>(var_2.x, true), vec2<bool>(var_4.x, var_4.x), true), vec2<bool>(false, var_2.x)), any(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, false), vec2<bool>(true, true)))));
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 5>();
    let var_0 = Struct_5(!func_3());
    global0 = array<i32, 5>();
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(u_input.b, _wgslsmith_add_i32(max(-31997i, u_input.b), i32(-1i) * -2147483647i)), -1i, ~u_input.b ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(-55343i, 2147483647i, global0[_wgslsmith_index_u32(61818u, 5u)], u_input.b) >> (vec4<u32>(6404u, 28233u, 28668u, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(52382u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], -29217i)) ^ -2147483647i));
    let var_2 = var_0;
    return Struct_1(-242f, 1274f, abs(16780u));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~10650u, abs(21892u)), reverseBits(countOneBits(~arg_1)));
    var var_1 = Struct_3(1f, true, func_2());
    global0 = array<i32, 5>();
    var_1 = Struct_3(var_1.c.a, false, arg_2.d.a);
    global0 = array<i32, 5>();
    return Struct_5(arg_2.b);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_5, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = countOneBits(arg_0.x);
    let var_1 = select((firstLeadingBit(min(vec3<u32>(arg_1, 33578u, 18830u), vec3<u32>(arg_1, 4294967295u, arg_1))) & vec3<u32>(arg_1, abs(4294967295u), arg_1)) << ((vec3<u32>(26173u, 4294967295u, _wgslsmith_sub_u32(25188u, arg_1)) | (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, arg_1), vec3<u32>(2412u, arg_1, arg_1)) >> (abs(vec3<u32>(9649u, arg_1, 64810u)) % vec3<u32>(32u)))) % vec3<u32>(32u)), min(reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, 0u, arg_1), vec3<u32>(arg_1, 46801u, arg_1))), ~_wgslsmith_div_vec3_u32(vec3<u32>(17675u, 1u, arg_1), vec3<u32>(0u, arg_1, arg_1)) >> (~vec3<u32>(16710u, 68655u, 4294967295u) % vec3<u32>(32u))), !arg_2.a.x);
    var_0 = -1093i;
    var var_2 = !select(select(select(!vec3<bool>(arg_2.a.x, arg_2.a.x, false), !vec3<bool>(arg_2.a.x, false, arg_2.a.x), !vec3<bool>(true, true, arg_2.a.x)), select(select(vec3<bool>(true, true, arg_2.a.x), vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x), true), !vec3<bool>(false, false, arg_2.a.x), true), arg_2.a.x), select(!select(vec3<bool>(arg_2.a.x, true, false), vec3<bool>(arg_2.a.x, false, arg_2.a.x), vec3<bool>(true, arg_2.a.x, arg_2.a.x)), !select(vec3<bool>(false, arg_2.a.x, true), vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x), false), select(!vec3<bool>(true, false, arg_2.a.x), !vec3<bool>(false, arg_2.a.x, false), vec3<bool>(arg_2.a.x, false, true))), all(!(!vec4<bool>(false, true, arg_2.a.x, arg_2.a.x))));
    global0 = array<i32, 5>();
    return Struct_2(func_2());
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_5) -> Struct_5 {
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.a)) * arg_1.a);
    var var_1 = countOneBits(vec2<u32>(_wgslsmith_add_u32(arg_1.c, ~abs(arg_1.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(~73082u, arg_0.a.c, _wgslsmith_mod_u32(arg_1.c, arg_0.a.c), arg_1.c), vec4<u32>(144582u, arg_0.a.c & arg_1.c, arg_0.a.c, _wgslsmith_sub_u32(arg_0.a.c, 0u)))));
    global0 = array<i32, 5>();
    var_1 = _wgslsmith_mult_vec2_u32(reverseBits(countOneBits(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(103667u, 33236u), vec2<u32>(var_1.x, 52252u), arg_2.a), vec2<u32>(1u, 23050u) << (vec2<u32>(68871u, arg_1.c) % vec2<u32>(32u)), vec2<u32>(arg_1.c, 22508u) & vec2<u32>(4294967295u, 4294967295u)))), _wgslsmith_add_vec2_u32(vec2<u32>(~(~2354u), _wgslsmith_sub_u32(52481u, firstTrailingBit(arg_0.a.c))), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.c, var_1.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(10237u, 116584u), vec2<u32>(arg_0.a.c, 56551u))), vec2<u32>(~24260u, 23198u))));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_3 {
    let var_0 = func_6(func_5(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(39867u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]) << (vec4<u32>(4294967295u, 1u, 0u, 19825u) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31747u), vec2<u32>(0u, arg_1)), abs(0u), arg_0, 4895u) % vec4<u32>(32u)), arg_1 & 1u, func_4(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(arg_1, 30771u)), 5u)], 38745u, Struct_4(vec4<f32>(-275f, 556f, 141f, -1808f), vec2<bool>(true, true), func_2(), Struct_2(Struct_1(397f, 429f, 0u)), true)), vec3<f32>(2178f, -423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f) - _wgslsmith_f_op_f32(max(-1126f, 432f))))), func_5(max(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(arg_1, 5u)], 12279i, global0[_wgslsmith_index_u32(4294967295u, 5u)], -34634i)), vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 5u)], 0i, global0[_wgslsmith_index_u32(13136u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]) ^ vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 5u)], -6159i, -2147483647i, 24729i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -26793i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, -2147483647i), vec3<i32>(-1i, u_input.b, -20778i)), 0i | global0[_wgslsmith_index_u32(arg_1, 5u)], -23409i, abs(-39220i))), 22140u, Struct_5(vec2<bool>(true, func_3().x)), vec3<f32>(_wgslsmith_f_op_f32(abs(754f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1795f)))), -408f)).a, Struct_5(vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    var var_1 = ~arg_0;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-833f * _wgslsmith_div_f32(469f, 494f))))), !var_0.a.x & var_0.a.x, func_5(countOneBits(select(vec4<i32>(global0[_wgslsmith_index_u32(arg_1, 5u)], 34337i, 0i, global0[_wgslsmith_index_u32(arg_1, 5u)]), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, global0[_wgslsmith_index_u32(37262u, 5u)]) >> (vec4<u32>(arg_0, arg_0, 1u, 4294967295u) % vec4<u32>(32u)), select(vec4<bool>(false, false, true, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, true), var_0.a.x))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(3406u, arg_0, arg_0), vec3<u32>(arg_0, 37254u, arg_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(14715u, 4294967295u, arg_0), vec3<u32>(arg_0, arg_0, 1u))), func_6(Struct_2(Struct_1(467f, 707f, arg_0)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1038f, 41332u), func_6(Struct_2(Struct_1(2014f, -478f, 63302u)), Struct_1(1606f, -1457f, 43173u), Struct_5(var_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -902f, -1313f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1559f, 1000f, 1650f) + vec3<f32>(-1000f, 682f, -1249f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, -155f, 581f)), vec3<f32>(-700f, 837f, 223f))))).a);
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_add_vec4_i32(abs(vec4<i32>(56720i, -2147483647i, u_input.b, 1i) ^ vec4<i32>(global0[_wgslsmith_index_u32(arg_0.c.c, 5u)], 13825i, u_input.a.x, 15708i)) << (vec4<u32>(_wgslsmith_mult_u32(arg_2.x, 0u), arg_2.x, 0u, 1u << (arg_0.c.c % 32u)) % vec4<u32>(32u)), ~(firstTrailingBit(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.a.x, u_input.a.x)) & (vec4<i32>(0i, u_input.b, u_input.a.x, u_input.a.x) << (vec4<u32>(32836u, arg_0.c.c, 4294967295u, 80647u) % vec4<u32>(32u))))), ~firstLeadingBit(reverseBits(1u)), func_6(Struct_2(Struct_1(137f, -2289f, arg_0.c.c)), func_1(arg_0.c.c, ~(11866u & arg_0.c.c)).c, func_6(func_5(-vec4<i32>(global0[_wgslsmith_index_u32(65974u, 5u)], -38466i, u_input.b, -29885i), 4294967295u, Struct_5(vec2<bool>(arg_0.b, false)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.c.a, -976f, arg_0.c.a)))), Struct_1(arg_0.a, -974f, 1u), Struct_5(vec2<bool>(false, arg_0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-226f, arg_0.c.b, 354f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(170f, -426f, arg_1) - vec3<f32>(arg_0.c.b, arg_1, arg_0.c.b)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, arg_1, arg_0.c.a)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - arg_1), func_5(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.c.c, 5u)], -47860i, -16950i, global0[_wgslsmith_index_u32(arg_0.c.c, 5u)]), 54415u, Struct_5(vec2<bool>(true, arg_0.b)), vec3<f32>(arg_1, -387f, arg_0.a)).a.b, _wgslsmith_div_f32(-929f, -433f))))).a;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1080f - -161f), _wgslsmith_f_op_f32(floor(-2116f)))) * _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), arg_1) + 1000f), ~0u);
    let var_1 = reverseBits(arg_2.zw);
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(21281u, 28858u, 4294967295u, 18172u), max(~firstLeadingBit(arg_2), _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(1u, arg_0.c.c, 22079u, 35930u), vec4<u32>(50056u, arg_0.c.c, 10656u, 4294967295u), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), min(_wgslsmith_mult_vec4_u32(arg_2, arg_2), reverseBits(vec4<u32>(arg_0.c.c, arg_2.x, arg_2.x, arg_2.x))), vec4<u32>(~var_1.x, 4294967295u, _wgslsmith_clamp_u32(1u, 24895u, 0u), ~var_1.x))));
    var var_3 = 4294967295u;
    return Struct_1(_wgslsmith_f_op_f32(ceil(-840f)), _wgslsmith_f_op_f32(-arg_1), func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_7(func_1(~(~1u), ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-408f + 177f) * 714f)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), reverseBits(~vec4<u32>(17074u, 1u, 68463u, 67495u)))));
    var var_1 = ~(~(~(~0u | var_0.a.c)));
    let var_2 = firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(max(~4294967295u, _wgslsmith_mod_u32(var_0.a.c, var_0.a.c)), ~_wgslsmith_sub_u32(var_0.a.c, var_0.a.c)), var_0.a.c));
    var var_3 = ~(vec3<u32>(var_0.a.c, 10375u, 4294967295u) >> (~(~(~vec3<u32>(0u, var_2, 56661u))) % vec3<u32>(32u)));
    var var_4 = reverseBits(-1i);
    var_1 = 0u;
    let var_5 = var_0.a.a;
    let var_6 = func_7(Struct_3(_wgslsmith_f_op_f32(ceil(var_0.a.a)), _wgslsmith_f_op_f32(-var_0.a.b) > _wgslsmith_f_op_f32(max(-1489f, var_0.a.a)), var_0.a), -1162f, ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.c >> (var_0.a.c % 32u), var_0.a.c, func_2().c, 22429u), vec4<u32>(4294967295u, 1u, var_3.x, ~64827u)));
    var var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f + var_7.a.a)))), var_6.a, var_6.a, _wgslsmith_f_op_f32(-143f - 1019f)), vec4<f32>(-215f, _wgslsmith_div_f32(var_5, var_7.a.a), func_7(Struct_3(_wgslsmith_div_f32(var_6.b, -657f), true, func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.b)) + _wgslsmith_f_op_f32(var_6.a - -2773f)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_7.a.c, var_0.a.c, var_7.a.c, 55258u), select(vec4<u32>(var_2, var_3.x, var_3.x, var_2), vec4<u32>(4294967295u, var_7.a.c, var_6.c, 0u), true), vec4<u32>(4294967295u, 4442u, 1u, var_3.x))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b - 2165f))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(min(~vec2<u32>(var_7.a.c, var_0.a.c), var_3.xz), var_3.yy), ~firstTrailingBit(var_3.zz)), -1000f);
}

