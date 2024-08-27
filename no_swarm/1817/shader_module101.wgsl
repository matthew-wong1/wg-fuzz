struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(1182f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c)) + _wgslsmith_f_op_f32(round(arg_0.c)))), reverseBits(arg_0.b), -808f), !select(vec3<bool>(true, u_input.e < u_input.e, true), vec3<bool>(true, true, true), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true))), vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(exp2(arg_0.c))), Struct_2(_wgslsmith_dot_vec3_u32(arg_0.b.yzw, select(vec3<u32>(134125u, 64793u, 1u), arg_0.b.xyy, false)) <= (4294967295u ^ select(1u, 0u, false)), arg_0.a, vec2<bool>(true, firstTrailingBit(arg_0.b.x) > arg_0.b.x)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.b, -334f)) - _wgslsmith_f_op_f32(floor(-1492f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-640f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, -1962f)))));
    let var_2 = Struct_3(u_input.b.x);
    var var_3 = var_0.d;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + arg_0.c) + _wgslsmith_f_op_f32(-arg_0.a));
    return vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) - _wgslsmith_f_op_f32(var_3.b * -352f))), 1204f, any(!vec4<bool>(var_0.b.x, var_0.d.c.x, true, var_0.b.x)))), 112f, _wgslsmith_f_op_f32(floor(-242f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_5) -> u32 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-725f, var_0.a, arg_1.x, -301f)) * vec4<f32>(var_0.a, arg_0.b, -2822f, -608f)))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), 3133f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(-arg_1.x), true)), -312f, 780f))));
    var var_2 = arg_0.c;
    let var_3 = arg_0.c;
    let var_4 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.c.b.wx, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.c.b.www, var_0.c.b.wxz), 1u), _wgslsmith_div_vec2_u32(arg_2.c.b.zy, abs(vec2<u32>(arg_2.c.b.x, arg_2.c.b.x)))), arg_2.c.b.zx), abs(vec2<u32>(select(arg_2.c.b.x ^ arg_2.c.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 64610u), var_0.c.b.ywz), var_2.x), 39369u)));
    return _wgslsmith_dot_vec4_u32(var_0.c.b, ~arg_2.c.b) & ~_wgslsmith_div_u32(u_input.d, ~1305u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> vec2<f32> {
    let var_0 = func_4(Struct_2(!(arg_0.x != _wgslsmith_mod_i32(-1i, arg_0.x)), _wgslsmith_f_op_f32(270f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), !vec2<bool>(true, 719f > arg_2.x)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(117f, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 32209u, 0u, 33949u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, arg_1.x, 1u, arg_1.x), vec4<u32>(u_input.c, u_input.d, arg_1.x, u_input.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-362f, -694f)) * _wgslsmith_f_op_f32(arg_2.x + 2102f))))), Struct_5(arg_2.x, arg_0.x, Struct_1(_wgslsmith_f_op_f32(min(1399f, 1f)), abs(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u)), 272f), Struct_3(-_wgslsmith_div_i32(arg_0.x, -7318i))));
    var var_1 = true;
    let var_2 = 1i;
    var_1 = false || all(vec3<bool>(true, true, true));
    var_1 = true;
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) * arg_2.x), 229f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.ywx, _wgslsmith_f_op_vec3_f32(floor(var_0.xxw))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(-1319f, vec4<u32>(1u, ~26387u, u_input.d, 66941u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))).x, -(0i | u_input.e), Struct_1(394f, ~firstLeadingBit(vec4<u32>(1u, u_input.d, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(473f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 668f)))), Struct_3(firstTrailingBit(-50153i)));
    var var_3 = ~(u_input.b & (_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(var_2.b, var_2.d.a, var_2.d.a, u_input.b.x)), u_input.b, vec4<i32>(var_2.d.a, var_2.d.a, 20437i, -2147483647i)) >> (firstTrailingBit(var_2.c.b) % vec4<u32>(32u))));
    var_1 = _wgslsmith_f_op_vec3_f32(var_0.xwx + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1948f, 1029f, -2134f)))))))));
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(~min(23451u, arg_0.b.x), 11306u << (_wgslsmith_mult_u32(u_input.c, 1u) % 32u)), ~5058u), ~var_2.c.b.x, ~22519u, _wgslsmith_dot_vec4_u32(arg_0.b, abs(var_2.c.b)));
}

fn func_1() -> u32 {
    let var_0 = Struct_3(1i);
    var var_1 = vec2<u32>(~(~4294967295u), countOneBits(u_input.c));
    var_1 = ~vec2<u32>(u_input.c, reverseBits(~_wgslsmith_mod_u32(u_input.c, var_1.x)));
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(119f, -277f, true)))) + -975f), vec4<u32>(0u, var_1.x, countOneBits(var_1.x), firstLeadingBit(var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f + -1000f)), 1f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(ceil(1067f))) - _wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(-34753i, -1i, -25171i, var_0.a), vec3<u32>(var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-488f, -1612f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-487f - -1610f), _wgslsmith_div_f32(152f, -335f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-562f, 1406f), vec2<f32>(634f, -2867f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(408f, -821f, true)), _wgslsmith_f_op_f32(trunc(-572f)), -527f, _wgslsmith_f_op_f32(select(263f, 1386f, true))))))));
    var_1 = abs(var_2.yy);
    return func_5(Struct_1(_wgslsmith_div_f32(-685f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(393f - -193f))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(var_2, var_2) ^ var_2, ~(vec4<u32>(1u, u_input.d, var_1.x, 25089u) ^ vec4<u32>(0u, var_2.x, var_2.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1954f * _wgslsmith_f_op_f32(232f + -1000f))), -994f), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-653f + _wgslsmith_div_f32(-299f, -466f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2048f * -921f)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, 159f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-299f))))), _wgslsmith_f_op_f32(abs(-518f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zxw;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1059f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -981f), _wgslsmith_f_op_f32(trunc(-766f)))), _wgslsmith_f_op_f32(f32(-1f) * -867f))))), abs(vec4<u32>(~func_1(), ~u_input.c, abs(u_input.c ^ 11471u), firstTrailingBit(_wgslsmith_div_u32(u_input.c, u_input.d)))), _wgslsmith_f_op_f32(-198f - -139f));
    var_0 = vec3<i32>(var_0.x, u_input.e, u_input.a >> (_wgslsmith_mult_u32(~u_input.d, (1u << (u_input.c % 32u)) | _wgslsmith_div_u32(4294967295u, 1u)) % 32u));
    let var_2 = any(!select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)));
    var var_3 = -u_input.b;
    var_0 = vec3<i32>(-1i) * -(~(_wgslsmith_sub_vec3_i32(u_input.b.www, vec3<i32>(u_input.b.x, -2147483647i, u_input.a)) << (_wgslsmith_div_vec3_u32(var_1.b.ywz, var_1.b.zyz) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(abs(0u), 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.b.x, 29994u), _wgslsmith_mod_vec2_u32(vec2<u32>(41858u, var_1.b.x), ~var_1.b.wy)), ~(~(60784u >> (0u % 32u))), ~_wgslsmith_mult_u32(1u, u_input.c) | _wgslsmith_mult_u32(var_1.b.x, 1u)));
}

