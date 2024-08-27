struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(27562i, 12057i), vec2<i32>(u_input.b, u_input.b), vec2<bool>(arg_0.c.c, arg_0.c.c)), -vec2<i32>(1i, u_input.c)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-1i, 19117i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.b, 34689i), vec2<i32>(u_input.c, u_input.c))), ~vec2<i32>(-2147483647i, -35814i)) | ~_wgslsmith_sub_vec2_i32(-max(vec2<i32>(u_input.b, u_input.c), vec2<i32>(-2147483647i, -2147483647i)), ~abs(vec2<i32>(1i, 0i)));
    var var_1 = select(!(!(!arg_0.a.c)), any(!(!(!vec2<bool>(false, arg_0.a.c)))), any(vec2<bool>(arg_0.a.c, false)));
    var var_2 = _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.xy, _wgslsmith_mod_vec2_u32(u_input.a, u_input.a)), 37022u, 0u, arg_0.a.a)), arg_0.d.b);
    var_2 = arg_0.d.b;
    var var_3 = vec4<i32>(-_wgslsmith_add_i32(var_0.x, _wgslsmith_mult_i32(var_0.x & 0i, select(var_0.x, -1i, false))), select(u_input.c, u_input.c, arg_0.c.c) ^ -49120i, u_input.c, ~_wgslsmith_sub_i32(u_input.c, abs(2147483647i)));
    return select(any(!select(vec4<bool>(true, false, true, arg_0.d.a.c), select(vec4<bool>(true, true, arg_0.c.c, true), vec4<bool>(arg_0.c.c, false, arg_0.d.a.c, false), false), arg_0.a.c || true)), !(!(_wgslsmith_f_op_f32(step(542f, arg_0.d.a.b)) <= _wgslsmith_f_op_f32(-arg_0.c.b))), !arg_0.d.a.c);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-381f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1840f), _wgslsmith_f_op_f32(553f + -1653f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-627f, 1000f)))), func_3(Struct_4(Struct_1(~50530u, _wgslsmith_f_op_f32(f32(-1f) * -1694f), true), vec3<u32>(_wgslsmith_add_u32(0u, 87562u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 21698u, 4294967295u), vec4<u32>(4294967295u, 12376u, u_input.a.x, 7807u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 38166u, 18337u, 3787u), vec4<u32>(u_input.a.x, 62398u, 3467u, 10689u))), Struct_1(~1u, _wgslsmith_f_op_f32(-763f + 875f), true), Struct_3(Struct_1(91109u, -528f, true), abs(vec4<u32>(7384u, u_input.a.x, u_input.a.x, 21904u))))));
    let var_1 = ~reverseBits(vec3<u32>(u_input.a.x, 28024u, 236u) >> (~abs(vec3<u32>(u_input.a.x, u_input.a.x, 0u)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b * -1215f)))))));
    var var_3 = Struct_2(Struct_1(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_f32(floor(-1812f))), !any(select(vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), var_0.c))), !var_0.c, var_2, Struct_1(1u, _wgslsmith_f_op_f32(abs(-1599f)), true), -1000f);
    var var_4 = Struct_3(var_3.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, (73248u | var_0.a) >> (abs(65570u) % 32u), 15796u, var_1.x << (_wgslsmith_add_u32(0u, 19041u) % 32u)), ~(~(~vec4<u32>(16169u, var_1.x, 2023u, var_3.d.a))), _wgslsmith_mult_vec4_u32(select(select(vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_3.a.a), vec4<u32>(var_3.d.a, var_0.a, var_1.x, 4294967295u), false), ~vec4<u32>(27551u, var_3.a.a, 19831u, 4294967295u), true), ~vec4<u32>(var_1.x, 4294967295u, 32411u, var_0.a) >> (vec4<u32>(1u, 44528u, 71830u, 21039u) % vec4<u32>(32u)))));
    return Struct_1(0u, var_0.b, true);
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_1.c.c;
    var var_1 = Struct_2(func_2(), true, vec3<f32>(904f, arg_1.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) * arg_1.a.b) * 636f)), Struct_1(firstTrailingBit(_wgslsmith_add_u32(~u_input.a.x, 38445u)), arg_1.a.b, !(!var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.b) * 1311f));
    let var_2 = arg_1.d;
    var var_3 = arg_1.d;
    var var_4 = Struct_2(func_2(), false, vec3<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(var_1.a.b))), -1713f, func_2().b), Struct_1(~(arg_1.b.x ^ 4378u), _wgslsmith_f_op_f32(max(var_1.d.b, var_3.a.b)), false), _wgslsmith_f_op_f32(select(var_3.a.b, _wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b - var_1.d.b))), any(select(!vec2<bool>(false, var_3.a.c), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(var_1.d.c, false, true))))));
    return Struct_1(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.a, var_3.a.a, var_3.a.a) & (var_2.b.wyw << (arg_1.b % vec3<u32>(32u))), firstTrailingBit(var_2.b.wzw))), _wgslsmith_f_op_f32(exp2(var_1.e)), -2147483647i != u_input.c);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = u_input.c;
    let var_1 = arg_1.c.yx;
    var var_2 = Struct_4(func_4(~var_0 << (_wgslsmith_add_u32(arg_1.a.a, u_input.a.x) % 32u), Struct_4(Struct_1(countOneBits(u_input.a.x), _wgslsmith_f_op_f32(-1605f * arg_1.c.x), select(true, arg_1.a.c, arg_1.b)), ~vec3<u32>(1u, u_input.a.x, 4294967295u), Struct_1(u_input.a.x, arg_1.a.b, arg_1.a.c), Struct_3(func_2(), vec4<u32>(arg_1.a.a, 1u, arg_1.d.a, arg_1.d.a) ^ vec4<u32>(83495u, u_input.a.x, arg_1.a.a, 4294967295u)))), _wgslsmith_clamp_vec3_u32(select(select(vec3<u32>(34512u, 15300u, 51719u) << (vec3<u32>(arg_1.d.a, 10447u, arg_1.a.a) % vec3<u32>(32u)), vec3<u32>(arg_1.d.a, 4294967295u, u_input.a.x), vec3<bool>(true, true, true)), ~reverseBits(vec3<u32>(64319u, arg_1.a.a, u_input.a.x)), all(!vec3<bool>(arg_1.a.c, false, false))), vec3<u32>(min(82855u, 4294967295u) ^ arg_1.a.a, 1u, firstTrailingBit(min(0u, 30200u))), (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4065u, 1u), vec3<u32>(0u, arg_1.a.a, arg_1.a.a)) ^ select(vec3<u32>(u_input.a.x, 11891u, arg_1.d.a), vec3<u32>(arg_1.d.a, 47317u, arg_1.d.a), vec3<bool>(false, false, arg_1.d.c))) | vec3<u32>(abs(arg_1.a.a), countOneBits(u_input.a.x), 3852u)), arg_1.d, Struct_3(Struct_1(60448u, arg_0, all(vec4<bool>(true, true, true, true))), ~(~(vec4<u32>(arg_1.a.a, 19402u, 73115u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 3244u, u_input.a.x, 55416u) % vec4<u32>(32u))))));
    var var_3 = arg_1.c.yy;
    let var_4 = Struct_3(func_2(), (_wgslsmith_sub_vec4_u32(var_2.d.b, var_2.d.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_2.c.a, arg_1.d.a, var_2.d.b.x), ~vec4<u32>(u_input.a.x, arg_1.a.a, 52109u, var_2.a.a)) % vec4<u32>(32u))) >> (var_2.d.b % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1191f);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_3(func_2(), ~vec4<u32>(1u, _wgslsmith_sub_u32(42196u, 32899u) << (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u), firstTrailingBit(u_input.a.x | u_input.a.x), 4294967295u));
    let var_1 = var_0.a.b;
    var_0 = Struct_3(Struct_1(reverseBits(0u), -393f, !var_0.a.c), vec4<u32>(25634u, _wgslsmith_mult_u32(var_0.b.x, abs(45938u)), var_0.a.a, select(~firstLeadingBit(var_0.a.a), ~(u_input.a.x ^ u_input.a.x), true)));
    var_0 = Struct_3(Struct_1(43550u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), true), ~var_0.b);
    var_0 = Struct_3(func_4(-23248i, Struct_4(var_0.a, var_0.b.zxw, func_4(u_input.b, Struct_4(Struct_1(73555u, var_0.a.b, arg_2), vec3<u32>(var_0.b.x, u_input.a.x, var_0.b.x), Struct_1(u_input.a.x, 1009f, true), Struct_3(var_0.a, vec4<u32>(1u, 0u, u_input.a.x, 61306u)))), Struct_3(func_4(u_input.c, Struct_4(var_0.a, vec3<u32>(11175u, var_0.b.x, 1u), Struct_1(65327u, 327f, true), Struct_3(Struct_1(24912u, var_0.a.b, arg_2), vec4<u32>(47727u, u_input.a.x, var_0.b.x, 19131u)))), var_0.b))), reverseBits(reverseBits(var_0.b)));
    return func_4(28092i & (-30259i & arg_1), Struct_4(func_4(-2147483647i, Struct_4(var_0.a, _wgslsmith_div_vec3_u32(var_0.b.yww, vec3<u32>(0u, u_input.a.x, var_0.a.a)), func_4(-27320i, Struct_4(var_0.a, vec3<u32>(u_input.a.x, var_0.b.x, 1u), Struct_1(var_0.a.a, -690f, arg_0), Struct_3(Struct_1(1u, -992f, true), var_0.b))), Struct_3(var_0.a, vec4<u32>(0u, 4294967295u, u_input.a.x, 1u)))), vec3<u32>(0u, 1u, var_0.b.x), func_2(), Struct_3(func_2(), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 7117u | var_0.b.x, 4971u, ~var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(any(vec2<bool>(true, true)) && true, -1i, -1036f == _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(613f, Struct_2(Struct_1(4294967295u, 543f, true), true, vec3<f32>(-1568f, 366f, -1246f), Struct_1(37217u, 702f, false), 1315f))), _wgslsmith_f_op_f32(f32(-1f) * -1188f)), _wgslsmith_f_op_f32(max(429f, -2030f))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), !(-780f >= _wgslsmith_f_op_f32(func_1(559f, Struct_2(Struct_1(1u, 487f, false), false, vec3<f32>(-230f, -658f, 1285f), Struct_1(u_input.a.x, -1000f, false), 779f))))));
    var var_1 = ~1u | firstTrailingBit(select(89012u, firstLeadingBit(var_0.a), any(select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, false, true), vec3<bool>(var_0.c, true, var_0.c)))));
    var var_2 = _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + var_0.b));
    let var_3 = !var_0.c;
    var var_4 = var_0.c;
    var_1 = ~var_0.a;
    let var_5 = Struct_4(Struct_1(~(~(u_input.a.x << (66243u % 32u))), -1394f, false), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32((vec3<u32>(0u, u_input.a.x, 23355u) ^ vec3<u32>(var_0.a, 0u, var_0.a)) | ~vec3<u32>(19862u, 1u, 1u), max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, u_input.a.x, u_input.a.x)), select(vec3<u32>(20256u, var_0.a, 0u), vec3<u32>(u_input.a.x, 1u, var_0.a), vec3<bool>(false, true, var_3)))), vec3<u32>(min(18204u, 51452u), 17059u, max(296u, var_0.a))), func_4(-37361i, Struct_4(func_5(var_0.b < var_0.b, reverseBits(u_input.c), !var_0.c, vec3<bool>(false, var_0.c, var_0.c)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(666u, 1u, 1u), vec3<u32>(u_input.a.x, var_0.a, u_input.a.x))), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -30722i), vec2<i32>(3164i, u_input.b)), Struct_4(Struct_1(0u, var_0.b, var_0.c), vec3<u32>(51485u, u_input.a.x, 4294967295u), Struct_1(var_0.a, var_0.b, var_0.c), Struct_3(Struct_1(u_input.a.x, var_0.b, var_0.c), vec4<u32>(u_input.a.x, 0u, var_0.a, var_0.a)))), Struct_3(Struct_1(0u, var_0.b, var_3), vec4<u32>(32355u, var_0.a, 50884u, 33609u)))), Struct_3(Struct_1(abs(var_0.a ^ u_input.a.x), _wgslsmith_div_f32(114f, 596f), all(select(vec4<bool>(false, var_0.c, var_0.c, var_3), vec4<bool>(false, var_0.c, var_3, var_0.c), var_3))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 66917u, var_0.a, u_input.a.x), vec4<u32>(54356u, var_0.a, u_input.a.x, 1u)), ~(vec4<u32>(var_0.a, var_0.a, 10573u, u_input.a.x) & vec4<u32>(u_input.a.x, 4294967295u, 1653u, u_input.a.x)))));
    var var_6 = vec4<i32>((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.b, 0i)) & abs(u_input.c)) >> (9178u % 32u), abs(u_input.c ^ abs(-63546i)), u_input.b >> (~_wgslsmith_sub_u32(56017u, var_0.a) % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(21298i, u_input.b), 6715i), -u_input.c)) >> (~(var_5.d.b >> (var_5.d.b % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_7 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(reverseBits(var_6.yz) & -var_6.yy, -vec2<i32>(34081i, _wgslsmith_dot_vec4_i32(vec4<i32>(-10825i, var_6.x, 44741i, 57505i), vec4<i32>(u_input.b, var_6.x, 29590i, -2147483647i)))));
}

