struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<f32>,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_sub_u32(83981u, 0u);
    let var_1 = true;
    let var_2 = Struct_3(Struct_2(vec3<f32>(-116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1926f * 1763f) + -638f), 510f), Struct_1(!all(vec4<bool>(var_1, var_1, var_1, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(352f, -293f) * vec2<f32>(-2230f, -814f)))), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.a, -42811i, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 4677i) & vec4<i32>(u_input.a, -1i, -1i, -1i), var_1), ~vec4<i32>(u_input.a, u_input.a, 2147483647i, -2147483647i))), Struct_1(var_1), select(vec4<bool>(true, var_1, true, true), vec4<bool>(var_1, true, any(vec3<bool>(var_1, false, true)), true), vec4<bool>(any(vec2<bool>(var_1, false)), (var_0 >> (19472u % 32u)) >= min(1954u, var_0), select(true, true, var_1), true)));
    var var_3 = reverseBits(_wgslsmith_mult_vec3_i32(max(-(vec3<i32>(var_2.a.d, u_input.a, var_2.a.d) ^ vec3<i32>(u_input.a, u_input.a, -21444i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(3026i, var_2.a.d, u_input.a), ~vec3<i32>(-1i, 26534i, 1i))), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(54073i, u_input.a, u_input.a)) >> (~firstLeadingBit(vec3<u32>(var_0, 1u, 4294967295u)) % vec3<u32>(32u))));
    var var_4 = _wgslsmith_clamp_vec3_u32(min(~vec3<u32>(25763u, var_0, var_0), vec3<u32>(1u, ~_wgslsmith_div_u32(22860u, var_0), var_0)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, var_0), vec3<u32>(89416u, 1u, 36418u))), vec3<u32>(~0u, ~var_0, var_0), select(~vec3<u32>(24126u, var_0, var_0), _wgslsmith_mod_vec3_u32(vec3<u32>(97268u, 11316u, 58522u), vec3<u32>(var_0, var_0, 4294967295u)), false)) | vec3<u32>(var_0, select(abs(var_0), reverseBits(1u), all(vec3<bool>(true, false, var_2.a.b.a))), ~min(var_0, 8759u)), vec3<u32>(var_0, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0, var_0, var_0), vec4<u32>(var_0, var_0, 16358u, var_0)), firstLeadingBit(vec4<u32>(4294967295u, var_0, 0u, var_0))), ~(~var_0)), countOneBits(1u)));
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(func_3());
    var_0 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x));
    let var_3 = vec3<u32>(arg_2.x, arg_2.x, _wgslsmith_mod_u32(6955u, firstTrailingBit(~1u)));
    return -107f;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = !(((_wgslsmith_f_op_f32(func_2(vec2<f32>(1506f, -312f), vec4<bool>(false, arg_1.x, arg_1.x, arg_0.x), vec2<u32>(4294967295u, 0u), arg_1)) < -767f) || true) && true);
    return Struct_1(arg_1.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = 33638u;
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1863f, 1449f, 149f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-361f, arg_2.x, -769f, -2018f), vec4<f32>(arg_1.c.x, -1011f, 131f, arg_2.x), true))))));
    var_0 = ~117574u;
    var var_2 = u_input.a;
    let var_3 = ~arg_1.d;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, arg_1.c.x, arg_2.x), vec3<f32>(-255f, -536f, arg_1.c.x))))), func_1(!(!vec2<bool>(arg_1.b.a, false)), select(select(vec4<bool>(false, arg_1.b.a, arg_1.b.a, arg_1.b.a), vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a, arg_1.b.a), false), vec4<bool>(arg_1.b.a, false, true, true), select(vec4<bool>(arg_1.b.a, arg_1.b.a, true, arg_1.b.a), vec4<bool>(false, false, true, false), false))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x + -262f), 1000f))), arg_1.d), Struct_1(arg_1.b.a), !vec4<bool>(arg_1.b.a, all(select(vec2<bool>(arg_1.b.a, arg_1.b.a), vec2<bool>(arg_1.b.a, arg_1.b.a), arg_1.b.a)), true, any(vec3<bool>(arg_1.b.a, arg_1.b.a, true))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> vec2<bool> {
    var var_0 = arg_1.b.a.d >> (~select(_wgslsmith_mult_u32(arg_3, arg_3), arg_3, firstTrailingBit(arg_3) > arg_3) % 32u);
    var_0 = 70305i;
    var_0 = ~abs(arg_1.a.a.d);
    return vec2<bool>(func_3(), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!vec3<bool>(true, true, any(vec3<bool>(true, true, true))), Struct_4(func_4(vec2<f32>(_wgslsmith_f_op_f32(max(472f, 894f)), _wgslsmith_f_op_f32(1185f * 589f)), Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(567f, 307f, 743f))), func_1(vec2<bool>(true, false), vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(789f, 1357f), vec2<f32>(616f, 395f), vec2<bool>(true, false))), u_input.a), vec2<f32>(_wgslsmith_f_op_f32(step(-463f, 685f)), _wgslsmith_f_op_f32(f32(-1f) * -347f))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2169f, 633f))), Struct_2(vec3<f32>(-411f, -123f, -1049f), Struct_1(true), _wgslsmith_div_vec2_f32(vec2<f32>(1544f, 1334f), vec2<f32>(867f, 491f)), min(-1i, u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1082f, 1580f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1936f, -609f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-899f, 178f, -207f) - vec3<f32>(481f, -1131f, -439f)))), -877f, false), u_input.a, countOneBits(73893u));
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-482f, -2004f))) + vec2<f32>(-2806f, 761f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 679f)))))))), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1272f), -226f) + vec2<f32>(485f, _wgslsmith_div_f32(1556f, -1618f))), func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(2371f, 859f), vec2<f32>(629f, 200f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(860f, 876f), vec2<f32>(-1444f, -641f), vec2<bool>(var_0.x, false))))), func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-264f, -213f), vec2<f32>(313f, 1494f), vec2<bool>(var_0.x, true))), func_4(vec2<f32>(831f, -309f), Struct_2(vec3<f32>(-757f, -1153f, 1000f), Struct_1(var_0.x), vec2<f32>(314f, 470f), 7979i), vec2<f32>(-2247f, 148f)).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2154f) + vec2<f32>(-733f, 328f))).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1349f, 951f))).a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 980f)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2476f, -562f))))).a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1337f - -243f), 1006f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-351f * 699f))))))).c.xy;
    var_0 = !vec2<bool>(var_0.x, all(vec4<bool>(!var_0.x, var_0.x, true, var_0.x)));
    var_0 = vec2<bool>(var_0.x, false);
    var_0 = vec2<bool>(!(_wgslsmith_div_f32(-2668f, _wgslsmith_f_op_f32(567f - -506f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(1121f, 938f), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec2<u32>(90128u, 30101u), vec4<bool>(false, true, true, var_0.x))), 1544f)), _wgslsmith_clamp_i32(1i, func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-238f, -630f))), func_4(vec2<f32>(1391f, -290f), Struct_2(vec3<f32>(-260f, -210f, -332f), Struct_1(var_0.x), vec2<f32>(-729f, -1142f), u_input.a), vec2<f32>(-1579f, -694f)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1434f, -554f))).a.d, -20176i) > u_input.a);
    var_0 = select(!(!(!vec2<bool>(var_0.x, var_0.x))), vec2<bool>(true, !all(func_5(vec3<bool>(var_0.x, false, true), Struct_4(Struct_3(Struct_2(vec3<f32>(-591f, 642f, -965f), Struct_1(true), vec2<f32>(2171f, 1252f), -1i), Struct_1(false), vec4<bool>(false, var_0.x, false, true)), Struct_3(Struct_2(vec3<f32>(-950f, -1000f, -242f), Struct_1(var_0.x), vec2<f32>(-585f, 554f), 6120i), Struct_1(var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec3<f32>(258f, -1240f, -246f), 1603f, var_0.x), u_input.a, 38526u))), true);
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1473f, 137f, _wgslsmith_f_op_f32(step(737f, 878f)), 111f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1380f, 1000f, 1419f, 1160f)) + vec4<f32>(-238f, 1535f, -433f, -1662f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(900f, -1559f, _wgslsmith_f_op_f32(select(1208f, -1002f, true)), _wgslsmith_f_op_f32(func_2(vec2<f32>(154f, -1374f), vec4<bool>(var_1, var_1, var_0.x, false), vec2<u32>(1u, 1u), vec4<bool>(true, true, true, false))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -319f));
}

