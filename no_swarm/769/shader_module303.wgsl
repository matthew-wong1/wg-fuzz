struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = -952f;
    let var_1 = var_0;
    var var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 696f) + _wgslsmith_f_op_f32(min(555f, 1855f)))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 99u, u_input.a.x)), ~vec3<u32>(1u, u_input.a.x, 17942u) & max(vec3<u32>(51744u, 0u, 55938u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, 0u), vec4<u32>(53027u, u_input.a.x, 86722u, 0u)), ~u_input.a.x, ~u_input.a.x, u_input.a.x), Struct_1(-1402f), vec4<u32>(u_input.a.x ^ u_input.a.x, u_input.a.x, ~u_input.a.x, ~1u)), (-16172i | _wgslsmith_div_i32(min(1485i, 26905i), firstTrailingBit(10140i))) | _wgslsmith_dot_vec2_i32(-(vec2<i32>(-41529i, 45738i) << (u_input.a % vec2<u32>(32u))), -_wgslsmith_mod_vec2_i32(vec2<i32>(-13713i, -38694i), vec2<i32>(1i, 17487i))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1678f + var_1)))), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1699f - _wgslsmith_f_op_f32(select(var_1, -804f, false))), 802f))));
    let var_3 = Struct_4(Struct_2(Struct_1(-536f), var_2.a.b, ~(~var_2.a.c | ~var_2.a.e), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f - 724f))), ~min(var_2.a.c, vec4<u32>(u_input.a.x, 62015u, 0u, u_input.a.x))), abs(241i), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-950f, 688f) * -409f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.c, var_2.c, vec3<bool>(true, true, true))))));
    var var_4 = Struct_2(Struct_1(var_2.a.a.a), ~var_2.a.c.x, vec4<u32>(_wgslsmith_div_u32(57062u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.c.x, var_3.a.c.x), ~vec2<u32>(4294967295u, 1u))), reverseBits(var_3.a.e.x), ~u_input.a.x, 89539u >> (_wgslsmith_add_u32(var_3.a.c.x, 1u) % 32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(428f)))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.a.c, vec4<u32>(u_input.a.x, 0u, 64234u, 0u)), vec4<u32>(u_input.a.x, 4294967295u, 1u, 104697u)), var_2.a.e, vec4<u32>(firstLeadingBit(69375u) & min(u_input.a.x, var_2.a.e.x), 1u, 60131u, _wgslsmith_mod_u32(~var_2.a.c.x, 1u))));
    return i32(-1i) * -1i;
}

fn func_2() -> vec3<bool> {
    let var_0 = countOneBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, firstLeadingBit(1i)), func_3()));
    var var_1 = vec4<bool>(!all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-920f + 2196f))) > -831f, true, true);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(-592f))), 0u, ~vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, 7449u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f * -872f)), _wgslsmith_f_op_f32(-1f))), select(min(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), _wgslsmith_mod_u32(u_input.a.x, 20282u), u_input.a.x, u_input.a.x), firstLeadingBit(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 7309u))), _wgslsmith_add_vec4_u32(vec4<u32>(6691u, 1u, ~u_input.a.x, 4294967295u), vec4<u32>(12436u, 10359u, _wgslsmith_clamp_u32(78318u, u_input.a.x, u_input.a.x), u_input.a.x << (u_input.a.x % 32u))), var_1.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.d.a))) - _wgslsmith_f_op_f32(ceil(var_2.d.a))), _wgslsmith_f_op_f32(select(var_2.d.a, -382f, (1u < var_2.c.x) | all(var_1.zyw))), _wgslsmith_f_op_f32(step(var_2.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a.a + -1465f))))), _wgslsmith_f_op_f32(var_2.a.a + _wgslsmith_f_op_f32(f32(-1f) * -1118f)))));
    var_2 = Struct_2(var_2.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.c.x, 0u), _wgslsmith_clamp_u32(~71871u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), var_2.c.xx), _wgslsmith_mult_u32(countOneBits(1u), 469u))), abs(~(~countOneBits(var_2.c))), Struct_1(_wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, u_input.a.x, ~var_2.b, u_input.a.x & 4294967295u) ^ var_2.c, vec4<u32>(reverseBits(121u ^ var_2.b), 70471u, ~u_input.a.x, _wgslsmith_dot_vec4_u32(var_2.c, var_2.e << (var_2.c % vec4<u32>(32u))))));
    return select(!vec3<bool>(true, true, !(var_2.b != 0u)), var_1.yyz, any(!var_1.wzx));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1068f - 1f))));
    var var_1 = !select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true), func_2()), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), vec3<bool>(false, any(vec3<bool>(true, true, true)), true), true);
    var_1 = !select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true | var_1.x, true, 1u >= u_input.a.x), false), vec3<bool>(true, false, all(select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), vec3<bool>(false, var_1.x, false));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(404f, var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 2056f))))), 663f));
    var_1 = !select(vec3<bool>(var_1.x, select(true, var_1.x, var_1.x), var_1.x), vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), any(vec4<bool>(var_1.x, false, var_1.x, false)) & var_1.x, var_1.x), select(func_2(), select(!vec3<bool>(var_1.x, true, true), func_2(), !vec3<bool>(var_1.x, false, false)), !(!vec3<bool>(var_1.x, var_1.x, true))));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-417f)) - var_2)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = -1298f;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), arg_0.c.x, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(Struct_4(Struct_2(func_1(), select(u_input.a.x, u_input.a.x, true), _wgslsmith_div_vec4_u32(vec4<u32>(7994u, 43309u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 82489u, 1u, 1u)), Struct_1(-569f), ~vec4<u32>(9578u, 63506u, 0u, 25882u)), -48437i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-907f, -128f, 849f) * vec3<f32>(281f, 226f, -1958f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-250f, -1799f, 463f), vec3<f32>(-871f, 204f, 509f))), true))), vec3<i32>(-44707i, _wgslsmith_div_i32(countOneBits(1485i), 2147483647i), _wgslsmith_mult_i32(0i, -1i) << (u_input.a.x % 32u)), vec2<bool>(true, true), true), ~1u, vec4<u32>(u_input.a.x, countOneBits(4294967295u), ~_wgslsmith_sub_u32(4102u, _wgslsmith_sub_u32(1u, 0u)), 6203u), func_4(Struct_4(Struct_2(Struct_1(-398f), 1u, firstLeadingBit(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), Struct_1(-556f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), firstTrailingBit(37973i), vec3<f32>(_wgslsmith_f_op_f32(select(126f, -673f, true)), func_1().a, _wgslsmith_f_op_f32(444f * 562f))), ~vec3<i32>(min(2147483647i, 2147483647i), ~(-4492i), i32(-1i) * -17592i), vec2<bool>(true, true), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), true))), vec4<u32>(_wgslsmith_sub_u32(min(u_input.a.x, 1u), ~1u), 0u, max(~max(4129u, 63678u), 13768u), select(firstLeadingBit(u_input.a.x), u_input.a.x, false) ^ (4294967295u & _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.a)))), countOneBits(~(u_input.a.x << (var_0.b % 32u))), ~(_wgslsmith_div_vec4_u32(var_0.c, var_0.e) << (_wgslsmith_mult_vec4_u32(vec4<u32>(2398u, u_input.a.x, 44258u, u_input.a.x), vec4<u32>(65368u, 69918u, 0u, var_0.b)) % vec4<u32>(32u))), func_4(Struct_4(Struct_2(Struct_1(var_0.a.a), 0u, vec4<u32>(47196u, 4294967295u, 49647u, 4294967295u), var_0.d, var_0.e), ~2147483647i, vec3<f32>(452f, 261f, var_0.a.a)), ~vec3<i32>(1i, 1i, 1i), vec2<bool>(true, true), false), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 6558u, u_input.a.x, 796u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u)), max(vec4<u32>(u_input.a.x, 4294967295u, var_0.e.x, 4294967295u), _wgslsmith_div_vec4_u32(var_0.c, var_0.e)))), select(vec4<bool>(true, true, !all(vec3<bool>(false, true, true)), !func_2().x), vec4<bool>(all(func_2().zz), var_0.d.a == _wgslsmith_f_op_f32(step(151f, 106f)), func_2().x, true | all(vec4<bool>(true, true, true, false))), !all(vec3<bool>(false, false, false)) || true), -370f);
    var var_2 = !any(var_1.b.zzw) == var_1.b.x;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f) * -1367f))), min(1u, _wgslsmith_mod_u32(var_0.b, 19161u | firstTrailingBit(var_1.a.e.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(1u), _wgslsmith_sub_u32(var_1.a.c.x, var_0.e.x), ~1u), var_0.e), ~(~(~11615u)), ~var_1.a.e.x, select(var_1.a.e.x, min(var_0.e.x, 4294967295u) >> (_wgslsmith_dot_vec3_u32(var_0.c.yzy, vec3<u32>(1u, 1u, 19482u)) % 32u), !any(vec4<bool>(true, var_1.b.x, true, true)))), func_4(Struct_4(Struct_2(var_1.a.d, _wgslsmith_mult_u32(1u, 4294967295u), ~var_0.c, func_1(), _wgslsmith_div_vec4_u32(vec4<u32>(44781u, var_0.b, 4294967295u, 0u), vec4<u32>(var_1.a.c.x, var_1.a.c.x, 9400u, var_0.b))), 0i, vec3<f32>(_wgslsmith_f_op_f32(-532f + var_1.a.a.a), _wgslsmith_f_op_f32(max(var_1.a.d.a, var_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~vec3<i32>(select(0i, 1i, var_1.b.x), 0i, 1i), vec2<bool>(true, any(select(vec4<bool>(var_1.b.x, false, var_1.b.x, true), vec4<bool>(false, true, var_1.b.x, false), false))), false), var_1.a.c);
    let var_3 = ~var_1.a.c.yz >> (~(~(~(~vec2<u32>(12355u, var_0.b)))) % vec2<u32>(32u));
    var_2 = all(func_2().yx);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.x, _wgslsmith_f_op_f32(trunc(var_0.a.a)), _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-70411i, -23897i, 10555i, 11266i), vec4<i32>(-36831i, 0i, -30640i, 54341i))), -2147483647i), _wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) * var_0.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f + var_1.c)))), var_1.b.x | false)));
}

