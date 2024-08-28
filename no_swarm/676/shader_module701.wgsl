struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = Struct_4(-1000f, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-2394i >> (arg_0 % 32u), arg_1.x << (arg_0 % 32u)), ~(arg_1.x & -1i)), (arg_1.x >> (u_input.a % 32u)) | (_wgslsmith_mult_i32(0i, u_input.b.x) | (2147483647i >> (u_input.a % 32u))), arg_1.x ^ ((-1i & u_input.c) | _wgslsmith_mult_i32(156i, 0i))), Struct_2(vec3<u32>(9477u, arg_0, _wgslsmith_mod_u32(min(arg_0, 0u), firstLeadingBit(u_input.a))), select(!(u_input.a >= 26511u), true, all(vec3<bool>(true, false, false)))));
    var var_1 = select(select(vec4<bool>(var_0.c.b, (i32(-1i) * -9962i) >= _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(9672i, arg_1.x)), false, true), select(vec4<bool>(!var_0.c.b, var_0.c.b, select(false, var_0.c.b, var_0.c.b), select(var_0.c.b, false, var_0.c.b)), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, var_0.c.b, var_0.c.b, var_0.c.b), vec4<bool>(var_0.c.b, var_0.c.b, true, true), vec4<bool>(true, false, false, var_0.c.b)), true), select(!vec4<bool>(var_0.c.b, var_0.c.b, true, true), !vec4<bool>(var_0.c.b, false, var_0.c.b, var_0.c.b), !vec4<bool>(var_0.c.b, var_0.c.b, var_0.c.b, var_0.c.b))), !(!(!vec4<bool>(var_0.c.b, false, var_0.c.b, var_0.c.b)))), !select(vec4<bool>(arg_1.x < var_0.b.x, select(false, var_0.c.b, var_0.c.b), !var_0.c.b, false), !select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.c.b, true, true, var_0.c.b), false), vec4<bool>(false, false, var_0.c.b, any(vec2<bool>(false, var_0.c.b)))), select(!vec4<bool>(select(var_0.c.b, false, true), true, var_0.c.b, false), select(!select(vec4<bool>(true, var_0.c.b, var_0.c.b, var_0.c.b), vec4<bool>(var_0.c.b, true, false, false), false), !(!vec4<bool>(true, var_0.c.b, true, false)), var_0.b.x < -u_input.c), !select(!vec4<bool>(var_0.c.b, var_0.c.b, var_0.c.b, true), vec4<bool>(var_0.c.b, var_0.c.b, true, var_0.c.b), select(vec4<bool>(var_0.c.b, var_0.c.b, true, false), vec4<bool>(var_0.c.b, false, var_0.c.b, true), vec4<bool>(true, var_0.c.b, var_0.c.b, true)))));
    let var_2 = Struct_5(!any(select(var_1.wy, vec2<bool>(var_0.c.b, var_0.c.b), var_1.ww)), Struct_1(vec4<f32>(-511f, arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a, arg_2.x)), _wgslsmith_f_op_f32(trunc(var_0.a))), 1317f), !var_1.x, select(vec4<bool>(true, true && var_1.x, true, var_0.c.b), select(!vec4<bool>(false, true, var_0.c.b, true), vec4<bool>(true, var_1.x, var_0.c.b, false), true), !(!vec4<bool>(false, var_0.c.b, false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), -964f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1156f, var_0.a) + 173f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, 1000f)) * _wgslsmith_f_op_f32(arg_2.x * -139f)))), !(582f >= var_0.a));
    var_1 = var_2.b.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_2.b.a.zwy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_f_op_vec3_f32(abs(var_2.b.a.xyx))) + _wgslsmith_f_op_vec3_f32(abs(var_2.b.a.wwx)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 112f, -1871f));
    return _wgslsmith_div_vec2_f32(vec2<f32>(2190f, _wgslsmith_f_op_f32(1158f + -615f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.x, 1279f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yy + vec2<f32>(var_2.b.e.x, 2355f)) - var_2.b.a.wz))))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1087f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-280f - -368f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-var_0)))) * var_0));
    var var_2 = Struct_2(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(~arg_1.x, 53792u, 1u)), ~(~arg_1.xxz)), false);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, -1000f)))) - _wgslsmith_f_op_vec2_f32(func_3(arg_1.x, u_input.b, vec3<f32>(370f, 248f, var_0)))))), Struct_2(select(arg_1.wyy, arg_1.zyw, select(vec3<bool>(true, var_2.b, false), !vec3<bool>(true, var_2.b, var_2.b), !vec3<bool>(var_2.b, arg_0, true))), var_1 > 1000f), Struct_2(~_wgslsmith_sub_vec3_u32(~var_2.a, var_2.a), any(vec2<bool>(true, !var_2.b))), any(vec2<bool>(arg_0, true)), u_input.a);
    return var_3.c;
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = !(!any(select(!vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b))));
    let var_1 = Struct_5(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-566f, _wgslsmith_f_op_f32(-516f + 1000f), _wgslsmith_f_op_f32(-168f * 2035f), _wgslsmith_f_op_f32(f32(-1f) * -1527f))), var_0, select(!(!vec4<bool>(var_0, false, var_0, var_0)), select(!vec4<bool>(arg_0.b, false, false, var_0), !vec4<bool>(false, true, true, arg_0.b), !vec4<bool>(var_0, true, false, arg_0.b)), vec4<bool>(false, !var_0, false, all(vec2<bool>(var_0, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-663f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(755f)), -1255f), !(var_0 | var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1487f, 754f)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1116f, -1596f))))), true);
    let var_2 = -50548i;
    var var_3 = -1797f;
    var var_4 = vec4<u32>(16921u, _wgslsmith_mult_u32(~_wgslsmith_add_u32(1857u, firstLeadingBit(55386u)), arg_0.a.x), 0u, select(arg_0.a.x, func_2(!var_1.b.c.x, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, u_input.a, u_input.a, 49261u), vec4<u32>(1u, arg_0.a.x, 4294967295u, arg_0.a.x)), ~arg_0.a.x).a.x, all(select(vec3<bool>(false, var_1.a, var_1.c), var_1.b.c.zwz, arg_0.b))) | 27851u);
    return select(vec2<bool>(!all(var_1.b.c.zzw), !(!select(arg_0.b, var_0, true))), !var_1.b.c.yz, var_1.b.c.xy);
}

fn func_1() -> vec2<bool> {
    var var_0 = vec3<i32>(u_input.c, ~(i32(-1i) * -44206i), u_input.c);
    var_0 = ~(-(~(~vec3<i32>(-24056i, u_input.c, var_0.x)))) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.c, ~u_input.b.x, 2147483647i ^ var_0.x), vec3<i32>(1i, u_input.c >> (9179u % 32u), _wgslsmith_mod_i32(-1598i, 46411i))) ^ -vec3<i32>(-5415i, 30651i, min(2147483647i, -20320i)));
    let var_1 = firstTrailingBit(-(~_wgslsmith_mod_i32(u_input.b.x, var_0.x)));
    var var_2 = u_input.a < ~89091u;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(2001f, 2246f))))))));
    return !func_4(func_2(true, vec4<u32>(u_input.a, u_input.a | 1u, 0u, 1u), abs(~45214u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = !(!func_4(Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), true)));
    var_0 = !(!(!(!select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)))));
    let var_1 = ~12259u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, 606f, -2026f, -1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1784f, -2061f, -311f, 1222f)) - vec4<f32>(-441f, _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_div_f32(-1000f, -1108f), _wgslsmith_f_op_f32(max(-281f, 269f)))), true)), true, !(!(!(!vec4<bool>(false, false, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1889f))))), -1366f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1060f * _wgslsmith_f_op_f32(abs(-272f))), _wgslsmith_f_op_f32(-1898f - _wgslsmith_f_op_f32(f32(-1f) * -256f)))));
    var var_3 = ~(~_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(var_1, var_1, 125470u, 4294967295u)), ~(~vec4<u32>(var_1, 722u, var_1, u_input.a)), vec4<u32>(~u_input.a, ~var_1, var_1, 30930u)));
    let var_4 = true;
    let var_5 = vec4<u32>(min(abs(select(4294967295u, ~u_input.a, var_0.x)), ~func_2(!var_0.x, ~vec4<u32>(4294967295u, 23684u, var_1, var_1), _wgslsmith_add_u32(45835u, var_3.x)).a.x), u_input.a, var_1, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(max(28715u, var_3.x), ~abs(35606u), !var_0.x | (var_0.x | (var_2.a.x <= -832f))), vec4<f32>(var_2.d, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.e.x, _wgslsmith_f_op_f32(var_2.d - var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(541f, -1187f) - _wgslsmith_f_op_f32(-var_2.a.x)))), var_2.d, _wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(-2109f - var_2.d)))), _wgslsmith_f_op_vec2_f32(sign(var_2.e)));
}

