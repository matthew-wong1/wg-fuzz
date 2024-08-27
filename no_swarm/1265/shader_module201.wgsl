struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-(u_input.b.x | max(u_input.b.x, 0i)), -u_input.b.x), u_input.b.x);
    var_0 = _wgslsmith_sub_i32(u_input.b.x, u_input.b.x);
    let var_1 = vec2<u32>(~8347u, 29882u);
    var var_2 = !select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)), any(vec2<bool>(true, true))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), _wgslsmith_add_i32(firstTrailingBit(u_input.a.x), ~(-32209i)) >= 2147483647i);
    var_2 = !select(vec4<bool>(var_2.x, true, var_2.x, 0i >= u_input.b.x), vec4<bool>(_wgslsmith_add_u32(u_input.d, 53606u) == 1u, !(!var_2.x), !var_2.x, false), false);
    return -select(max(-45632i << (var_1.x % 32u), 1i) >> (1u % 32u), -75876i, !(!(0u >= var_1.x)));
}

fn func_2(arg_0: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.b.c.yz))))) * vec2<f32>(831f, 190f));
    let var_1 = -vec4<i32>(u_input.b.x, select(_wgslsmith_clamp_i32(12204i, u_input.a.x, ~9576i), min(45555i >> (u_input.c % 32u), firstTrailingBit(29590i)), false), u_input.a.x, func_3());
    return _wgslsmith_sub_i32(var_1.x, 4218i);
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, reverseBits(0u), u_input.d, u_input.c) << (~(vec4<u32>(u_input.d, u_input.c, 3273u, 21624u) & vec4<u32>(u_input.c, u_input.c, u_input.d, u_input.c)) % vec4<u32>(32u)), vec4<u32>(u_input.c, ~_wgslsmith_clamp_u32(u_input.c, 1u, 4294967295u), ~(u_input.c ^ u_input.d), min(u_input.c, _wgslsmith_sub_u32(u_input.c, 60020u)))), Struct_1(any(vec3<bool>(true, true, true)), u_input.d, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-257f, -303f))) + -996f)), vec2<bool>(true, any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_3(!(!var_0.b.a), all(!select(!vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a), select(vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<bool>(var_0.b.a, false, var_0.c.x), vec3<bool>(var_0.c.x, false, var_0.b.a)), false)), var_0, Struct_1(var_0.b.a, 27077u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(256f, arg_0.x, 579f), vec3<f32>(-2556f, -285f, -580f))) + _wgslsmith_f_op_vec3_f32(abs(var_0.b.c)))), -1033f), var_0.b.c);
    var var_2 = var_0;
    var var_3 = Struct_2(~(~1u), Struct_1(all(select(vec3<bool>(true, true, var_0.b.a), select(vec3<bool>(false, var_0.c.x, true), vec3<bool>(false, var_2.c.x, var_2.c.x), false), select(vec3<bool>(true, var_1.c.b.a, var_0.c.x), vec3<bool>(false, false, var_0.b.a), false))), _wgslsmith_mod_u32(~44532u, abs(46088u)) << (var_0.a % 32u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(var_0.b.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(floor(473f)))) * arg_1)), var_1.c.c);
    let var_4 = _wgslsmith_mod_u32(0u, ~var_0.a);
    return 52661u;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_div_u32(0u, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, 374f, 410f)), _wgslsmith_div_f32(-894f, _wgslsmith_div_f32(195f, -355f)), func_2(Struct_3(false, true, Struct_2(u_input.d, Struct_1(false, u_input.d, vec3<f32>(539f, 856f, -191f), 290f), vec2<bool>(true, true)), Struct_1(false, 20796u, vec3<f32>(-194f, 357f, -393f), 963f), vec3<f32>(1000f, -1221f, -577f))))), Struct_1(select(true || (u_input.d > 1u), all(vec2<bool>(true, true)), true), select(~0u, u_input.c, any(vec3<bool>(true, false, false)) || true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(271f, -1342f, 1255f) + vec3<f32>(-336f, -1568f, 655f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1347f, -732f))) * 821f)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true && any(vec2<bool>(false, true)), true | any(vec4<bool>(true, false, true, true)))));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_div_i32(var_1.x, var_1.x);
    var var_3 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.d), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(var_0.b.b, 0u))), select(29978u, u_input.c & ~u_input.c, !var_0.c.x), _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(13806u, var_0.a, 1u), vec3<u32>(65270u, 102u, 4294967295u), vec3<u32>(35016u, var_0.b.b, 78402u))), select(vec3<u32>(38067u, u_input.d, 23705u), vec3<u32>(64717u, u_input.c, u_input.c), var_0.c.x) ^ vec3<u32>(u_input.d, u_input.d, 15519u))), Struct_1(false, _wgslsmith_clamp_u32(select(~var_0.a, var_0.b.b, var_0.c.x), ~var_0.a >> ((var_0.a >> (6087u % 32u)) % 32u), ~reverseBits(1u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-520f, var_0.b.d, _wgslsmith_f_op_f32(1000f + var_0.b.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -2343f)), select(vec2<bool>(false, 1i != countOneBits(var_2)), !var_0.c, var_0.c.x));
    var_3 = var_0;
    return Struct_4(false, var_0.c, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(firstLeadingBit(7183i), max(var_1.x, 39351i)), ~u_input.b.x), select(-2147483647i, u_input.a.x, any(select(vec3<bool>(true, false, var_0.b.a), vec3<bool>(var_0.b.a, false, var_0.c.x), var_0.b.a)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    var var_0 = arg_1.c.b;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(~u_input.a.x, -abs(-56038i)), arg_0.c);
    var var_2 = vec2<u32>(~u_input.d, 30217u ^ (arg_1.d.b << (_wgslsmith_mult_u32(0u, countOneBits(var_0.b)) % 32u)));
    var var_3 = vec3<i32>(-1i, _wgslsmith_mult_i32(firstTrailingBit(firstLeadingBit(1i)), countOneBits(arg_0.c)), func_1().c);
    var_3 = u_input.a.yyw;
    return true && !func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1586f - -575f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(238f - -1136f) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-393f)))), func_5(func_1(), Struct_3(true, false, Struct_2(4294967295u, Struct_1(true, u_input.d, vec3<f32>(-237f, -947f, 104f), -1000f), vec2<bool>(true, true)), Struct_1(true, u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2269f, -649f, -324f)), _wgslsmith_f_op_f32(abs(-144f))), vec3<f32>(-307f, -382f, 893f)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-20894i, u_input.a.x, u_input.b.x), vec3<i32>(-9521i, 0i, 61122i)), firstTrailingBit(vec3<i32>(u_input.a.x, 0i, u_input.a.x))) ^ ~(-u_input.a.zyx))));
    let var_1 = vec4<u32>(_wgslsmith_div_u32(4294967295u, max(_wgslsmith_mod_u32(u_input.d ^ u_input.c, abs(80178u)), ~_wgslsmith_mod_u32(u_input.d, u_input.c))), u_input.d, abs(u_input.c), 67360u);
    var var_2 = all(!(!vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true)));
    var_2 = false;
    var_2 = select(any(!vec4<bool>(true, all(vec4<bool>(true, false, false, true)), u_input.b.x >= -16927i, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.d < var_1.x, any(vec3<bool>(true, true, false)), true), select(any(vec3<bool>(false, true, true)), true, u_input.b.x < u_input.b.x))), all(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-700f, 1363f, -2329f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-720f, 1000f, 1000f) + vec3<f32>(681f, -1199f, 1076f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(602f, -1744f, -1724f), vec3<f32>(1000f, -964f, 162f), true)))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -895f), -801f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(628f, -619f)) + 1428f), -828f)), 1824f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(667f - 216f) + _wgslsmith_f_op_f32(ceil(-111f))), 2207f, _wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-674f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(667f, -1038f) + _wgslsmith_div_f32(-406f, 2715f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(567f)) + _wgslsmith_f_op_f32(-1065f + 158f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -472f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-772f - 1540f))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-177f))), -1319f)), ~26531u);
}

