struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    var var_0 = ~(abs(vec3<u32>(~44327u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 13602u), u_input.a), ~4294967295u)) >> (~countOneBits(~vec3<u32>(arg_2, arg_2, u_input.a.x)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(min(-1398f, -1750f));
    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 86412u, var_0.x, _wgslsmith_div_u32(u_input.a.x, ~arg_2)), _wgslsmith_mod_vec4_u32(max(min(vec4<u32>(0u, 42836u, u_input.a.x, 1u), vec4<u32>(arg_2, 16526u, arg_2, 24610u)), vec4<u32>(u_input.a.x, arg_2, 1u, var_0.x) >> (vec4<u32>(10220u, 1u, var_0.x, 1u) % vec4<u32>(32u))), max(vec4<u32>(1u, arg_2, u_input.a.x, var_0.x), vec4<u32>(18030u, u_input.a.x, var_0.x, arg_2)))), ~u_input.a.x, Struct_1(vec2<u32>(_wgslsmith_sub_u32(var_0.x, _wgslsmith_mod_u32(arg_2, 0u)), 0u), !select(!vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)), vec2<bool>(arg_0, arg_0)), -669f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1) * vec2<f32>(-989f, -386f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -160f, var_1), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, -422f, 1527f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) * vec3<f32>(-296f, var_1, var_1)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-656f, -915f, var_1), vec3<f32>(369f, var_1, -396f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, -1702f, 3009f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1037f, -1457f, var_1)), vec4<f32>(341f, 1379f, var_1, var_1))))));
    var_2 = Struct_2(vec4<u32>(~var_2.a.x, _wgslsmith_mult_u32(countOneBits(u_input.a.x), _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), ~89781u, arg_2)), ~abs(~4294967295u), select(~var_0.x, arg_2, !var_2.c.b.x)), select(_wgslsmith_sub_u32(_wgslsmith_div_u32(6621u, var_2.b), 1u) & abs(var_2.c.a.x | arg_2), u_input.a.x, all(vec2<bool>(var_2.c.b.x, any(vec4<bool>(var_2.c.b.x, false, false, arg_0))))), Struct_1(~var_0.zz, !(!select(vec2<bool>(false, false), var_2.c.b, arg_0)), _wgslsmith_f_op_f32(977f * var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d.xz * var_2.c.d) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.d.x, -305f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_1 - -1167f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_2.e.x)), vec3<f32>(-2130f, _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(-var_2.d.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, var_2.d.x, 383f), vec4<f32>(-488f, -1755f, -1876f, 315f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, -120f, var_2.c.d.x, -1246f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_2.e.x, var_2.c.d.x) * vec4<f32>(-872f, 1347f, 1438f, -745f))), !vec4<bool>(arg_0, false, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.e))));
    var var_3 = var_2.a;
    return reverseBits(firstLeadingBit(u_input.c));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.c <= _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, func_3(true, _wgslsmith_mult_vec2_i32(vec2<i32>(-23506i, 3459i), u_input.b.wz), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), u_input.c);
    var var_1 = Struct_2(~vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 13203u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 14235u))), u_input.a.x, 0u, u_input.a.x), u_input.a.x, Struct_1(vec2<u32>(45596u, 1u), !vec2<bool>(var_0, true), -1027f, vec2<f32>(517f, _wgslsmith_f_op_f32(round(-1018f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(185f, 371f, -356f), vec3<f32>(1199f, -338f, 890f))), vec3<f32>(_wgslsmith_f_op_f32(1221f - 587f), _wgslsmith_f_op_f32(round(967f)), -425f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1797f, 939f, 1163f) + vec4<f32>(322f, 873f, -125f, -571f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(783f, 471f, -689f, 1420f), vec4<f32>(-421f, 1677f, 600f, -301f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-734f, 531f, -1554f, 498f), vec4<f32>(752f, 789f, 1000f, -532f), vec4<bool>(var_0, true, false, var_0))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1258f, -986f, -1330f, -189f) * vec4<f32>(-1449f, -2539f, 294f, -388f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1042f, 1063f, 474f, 1355f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-757f, -381f, 1430f, 1000f) * vec4<f32>(2013f, 637f, -1000f, 1000f)), select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(true, var_0, false, var_0), true)))), select(select(!vec4<bool>(var_0, false, true, var_0), select(vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, false)), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, var_0, var_0), true), select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0)), true), !vec4<bool>(var_0, var_0, var_0, false)))));
    var var_2 = Struct_2(~var_1.a, 13936u, Struct_1(_wgslsmith_sub_vec2_u32(var_1.c.a, firstTrailingBit(vec2<u32>(var_1.c.a.x, var_1.b))), !vec2<bool>(true, var_0), var_1.c.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-536f, _wgslsmith_f_op_f32(floor(var_1.c.c))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1327f + _wgslsmith_f_op_f32(max(-992f, var_1.c.c))), var_1.c.d.x, var_1.d.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.e.x, var_1.c.d.x, -489f, var_1.e.x), var_1.e)), _wgslsmith_f_op_vec4_f32(-var_1.e)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.d.x, 398f, 641f, var_1.e.x)))))))));
    let var_3 = Struct_3(Struct_2(var_2.a & var_2.a, ~4294967295u, var_2.c, _wgslsmith_f_op_vec3_f32(max(var_2.e.xyy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.e.zwy, var_1.d, var_0)) * var_1.e.wwx))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-242f, -370f)), _wgslsmith_f_op_f32(-455f + _wgslsmith_f_op_f32(var_2.e.x - 606f)), var_2.c.c, var_1.d.x)), Struct_1(u_input.a, var_2.c.b, -1500f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(-var_1.c.c))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f + var_1.c.d.x)), _wgslsmith_f_op_f32(min(var_2.d.x, 1000f)))), var_1.d.x, !var_0)));
    var_1 = Struct_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(40897u, 25837u | u_input.a.x, 2256u, _wgslsmith_dot_vec4_u32(vec4<u32>(36622u, var_3.b.a.x, 29952u, 4623u), vec4<u32>(4u, var_2.a.x, var_1.c.a.x, u_input.a.x))), ~_wgslsmith_clamp_vec4_u32(var_3.a.a, var_1.a, var_1.a)), u_input.a.x, var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.d - vec3<f32>(_wgslsmith_f_op_f32(-var_2.e.x), -1221f, 1142f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.e.xxy + _wgslsmith_f_op_vec3_f32(-var_1.d)))), _wgslsmith_f_op_vec4_f32(-var_2.e));
    return Struct_1(~firstLeadingBit(max(~vec2<u32>(1u, var_2.b), ~var_2.a.zz)), select(var_3.a.c.b, !var_2.c.b, select(vec2<bool>(var_2.c.b.x & false, all(var_1.c.b)), !var_2.c.b, !var_2.c.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -2596f), var_1.c.d);
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = func_2();
    var var_1 = u_input.b.wz;
    let var_2 = arg_0.a;
    var var_3 = !arg_0.a.c.b.x;
    var_3 = select(false, -u_input.b.x != u_input.b.x, arg_0.a.c.b.x);
    return 78546u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-35082i, ~16593i, -2147483647i);
    var_0 = ~(~u_input.d);
    var_0 = ~vec3<i32>(-12679i, _wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(u_input.c, var_0.x) & u_input.b.x, abs(u_input.c)), ~(-u_input.b.x) >> (1u % 32u));
    let var_1 = vec2<bool>(select(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1447f - -350f))) < -298f, 1u < (u_input.a.x << (func_1(Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 48694u), 1u, Struct_1(vec2<u32>(4294967295u, u_input.a.x), vec2<bool>(true, false), -389f, vec2<f32>(-1417f, -1585f)), vec3<f32>(-532f, -888f, 1252f), vec4<f32>(-969f, 1387f, -277f, 1787f)), Struct_1(vec2<u32>(4294967295u, u_input.a.x), vec2<bool>(true, true), -196f, vec2<f32>(167f, 851f)), -819f)) % 32u))), true);
    var_0 = vec3<i32>(~u_input.c, 25052i, _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.x, -2147483647i, u_input.c), u_input.b), u_input.b.x));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(1983f)))) + _wgslsmith_f_op_f32(f32(-1f) * -645f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1543f + -383f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f + _wgslsmith_f_op_f32(trunc(1000f))) * 320f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-140f, -889f)))), 2417f)));
    var var_3 = Struct_2(select(vec4<u32>(firstTrailingBit(1u), _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), u_input.a.x & 1u), 53879u, 0u), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 24193u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x))), all(vec4<bool>(-17455i >= var_0.x, var_1.x, var_1.x, false))), min(143741u, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 63043u, u_input.a.x)), min(abs(vec3<u32>(25768u, u_input.a.x, 1u)), ~vec3<u32>(24223u, u_input.a.x, 74099u)))), Struct_1(vec2<u32>(abs(u_input.a.x), ~1317u), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1286f, var_2.x)))), _wgslsmith_f_op_vec2_f32(floor(var_2.yz))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-317f, -1000f, var_2.x) + _wgslsmith_f_op_vec3_f32(-var_2.zyw))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1053f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1124f * var_2.x) * _wgslsmith_f_op_f32(-var_2.x)), -366f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(456f, 1256f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) - var_2) - vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(var_2.x)), var_2.x, 247f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, 0u) | u_input.a.x, _wgslsmith_dot_vec2_u32(~(~(var_3.c.a | vec2<u32>(0u, 4629u))), ~select(vec2<u32>(u_input.a.x, var_3.a.x), var_3.a.xx, true)), var_3.e, vec2<u32>(4294967295u, min(~1u, _wgslsmith_clamp_u32(105650u, 2678u, u_input.a.x) | abs(0u))), 9612i);
}

