struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    let var_0 = 31491u | u_input.d.x;
    var var_1 = vec2<u32>(arg_0.a.b.a.x, 1u | ~select(11076u, 0u, arg_0.a.b.d)) | (min(abs(abs(vec2<u32>(u_input.d.x, var_0))), _wgslsmith_mult_vec2_u32(u_input.d.xy, ~u_input.d.wy)) << (arg_0.a.b.a % vec2<u32>(32u)));
    let var_2 = !(!vec2<bool>(!arg_0.a.b.d, true));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(325f, 1728f)))))) * vec2<f32>(-240f, _wgslsmith_f_op_f32(arg_0.a.b.e * _wgslsmith_f_op_f32(select(arg_0.a.b.e, _wgslsmith_f_op_f32(arg_0.a.b.e * -988f), var_2.x)))));
    var_1 = arg_0.a.b.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1722f, -134f, _wgslsmith_f_op_f32(-1000f + -214f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(391f, -618f, var_3.x) - vec3<f32>(859f, var_3.x, arg_0.a.b.e))), any(select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(var_2.x, arg_0.a.b.b, arg_0.a.b.b, false), vec4<bool>(arg_0.a.b.b, arg_0.a.b.d, var_2.x, var_2.x)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = arg_1.b.d;
    let var_1 = ~(((_wgslsmith_sub_vec3_u32(u_input.d.yxw, vec3<u32>(29024u, arg_2.c, arg_1.b.a.x)) << (firstTrailingBit(u_input.d.wzw) % vec3<u32>(32u))) | firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(58716u, 1u, arg_2.c), vec3<u32>(72614u, 28752u, u_input.d.x)))) | vec3<u32>(51590u, ~4294967295u, ~arg_1.b.c));
    var var_2 = ~(~(abs(~0u) >> (1u % 32u)));
    var_2 = min(reverseBits(8326u), arg_1.b.a.x);
    var var_3 = arg_1.b;
    return vec2<u32>(select(abs(min(1u, ~1u)), arg_2.a.x, arg_1.b.d), ~(~var_3.a.x));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_4(vec4<i32>(max(u_input.b, u_input.a), 93246i, u_input.a, ~_wgslsmith_sub_i32(u_input.a, 1i)) & ~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.b, -10074i, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1102f, 1727f, -152f) * vec3<f32>(-602f, 738f, 1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1035f, -144f, 1077f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1178f, 1000f, 499f) * vec3<f32>(991f, -304f, 413f))))), Struct_1(~func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(1i, Struct_1(u_input.d.xz, false, u_input.d.x, false, 343f))), u_input.c)), Struct_2(u_input.a, Struct_1(u_input.d.wx, true, u_input.d.x, false, -952f)), Struct_1(vec2<u32>(37653u, 34116u), false, 0u, true, 480f)), true, u_input.d.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(2147483647i, Struct_1(u_input.d.wy, false, u_input.d.x, true, 3165f))), -63636i)).x - -1178f)));
    let var_1 = Struct_2(~u_input.a, var_0.c);
    let var_2 = -266f;
    var var_3 = abs(u_input.d.www);
    let var_4 = firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), countOneBits(-vec2<i32>(var_1.a, -1i)) & var_0.a.xz));
    return vec2<u32>(~(~(~countOneBits(var_0.c.c))), _wgslsmith_mult_u32(u_input.d.x | var_3.x, ~var_0.c.c));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_1.e, 777f, arg_1.e) * vec4<f32>(-878f, arg_0, arg_1.e, arg_0))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, 346f, arg_0, arg_1.e) + vec4<f32>(-182f, arg_1.e, arg_1.e, arg_1.e)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(189f, -349f, -187f, arg_1.e)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(arg_2.x, arg_1)), u_input.b)).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.e, arg_1.e, arg_1.b)), -164f), arg_0, arg_1.e), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1005f, arg_0, 603f, -1046f), vec4<f32>(arg_0, arg_0, 1907f, arg_1.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, -695f, arg_0, -701f) + vec4<f32>(-1491f, arg_0, arg_0, -242f)))))))));
    let var_1 = -firstTrailingBit(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.b, 2147483647i, arg_2.x)) << (~vec3<u32>(u_input.d.x, u_input.d.x, 0u) % vec3<u32>(32u)), vec3<i32>(-u_input.b, abs(1i), abs(arg_2.x)), reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.c) & vec3<i32>(arg_2.x, -56967i, arg_2.x))));
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_1.e));
    var_2 = 519f;
    let var_3 = vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(0i >> (arg_3.x % 32u), u_input.c), var_1.x), 25693i);
    return Struct_4(~arg_2 | select(select(_wgslsmith_mod_vec4_i32(arg_2, vec4<i32>(-5599i, u_input.c, -1i, -12404i)), arg_2, vec4<bool>(true, arg_1.d, true, true)), ~arg_2 << (select(u_input.d, u_input.d, vec4<bool>(false, arg_1.b, arg_1.d, false)) % vec4<u32>(32u)), vec4<bool>(true, arg_1.d, true, arg_1.d)), vec3<f32>(arg_1.e, var_0.x, 463f), Struct_1(vec2<u32>(0u, firstLeadingBit(arg_1.a.x)), arg_1.d, func_4(vec3<f32>(-493f, 1000f, _wgslsmith_f_op_f32(-arg_0)), Struct_2(_wgslsmith_sub_i32(var_1.x, -10733i), arg_1), arg_1).x, arg_1.b, arg_0));
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = (~(-(arg_3.a.xx | arg_3.a.yx)) >> ((~arg_3.c.a | ~abs(vec2<u32>(3355u, arg_2.x))) % vec2<u32>(32u))) << (arg_2 % vec2<u32>(32u));
    let var_1 = arg_3.c;
    let var_2 = 0u;
    let var_3 = func_5(arg_3.c.e, arg_3.c, -(~(~vec4<i32>(u_input.b, u_input.a, -2147483647i, -2147483647i))) & -abs(abs(vec4<i32>(-2147483647i, u_input.c, arg_3.a.x, 1i))), _wgslsmith_add_vec2_u32(u_input.d.wy, arg_1.c.a << (vec2<u32>(~64343u, arg_3.c.c & arg_2.x) % vec2<u32>(32u))));
    let var_4 = arg_1.a.x;
    return arg_3;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = func_6(arg_0.c.e, func_5(537f, arg_0.c, min(_wgslsmith_add_vec4_i32(arg_0.a, ~arg_0.a), ~(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) >> (u_input.d % vec4<u32>(32u)))), ~(func_2() ^ vec2<u32>(0u, 45710u))), vec2<u32>(~(~16973u), arg_0.c.c), arg_0);
    var var_1 = 0u;
    var_1 = 31514u;
    return Struct_4(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -12281i, ~(-1i), var_0.a.x), firstTrailingBit(var_0.a) >> (u_input.d % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 1142f, var_0.b.x)) + vec3<f32>(arg_0.c.e, _wgslsmith_f_op_f32(step(arg_0.c.e, 1537f)), _wgslsmith_f_op_f32(f32(-1f) * -613f))) + var_0.b), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.b.x, 254f)), -163f, !var_0.c.b))), func_6(arg_0.b.x, arg_0, _wgslsmith_add_vec2_u32(arg_0.c.a ^ vec2<u32>(arg_0.c.a.x, 4294967295u), countOneBits(var_0.c.a)), func_5(-1264f, Struct_1(vec2<u32>(47371u, 48554u), var_0.c.b, var_0.c.c, true, var_0.c.e), firstTrailingBit(var_0.a), arg_0.c.a)).c, _wgslsmith_add_vec4_i32((vec4<i32>(u_input.c, var_0.a.x, var_0.a.x, 18592i) >> (u_input.d % vec4<u32>(32u))) & ~vec4<i32>(1i, u_input.b, -2147483647i, 22454i), var_0.a), vec2<u32>(~1u, firstLeadingBit(var_0.c.c ^ var_0.c.a.x))).c);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_div_u32(~32585u, arg_1.a.b.a.x);
    var var_1 = select(!select(select(vec4<bool>(true, arg_2.b, false, false), !vec4<bool>(false, true, true, arg_0.c.b), select(vec4<bool>(arg_2.b, false, arg_2.b, arg_1.a.b.d), vec4<bool>(false, true, arg_2.d, arg_0.c.d), arg_2.b)), !(!vec4<bool>(false, arg_0.c.b, arg_0.c.b, arg_0.c.d)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(arg_0.c.b, false, false, true), vec4<bool>(false, arg_1.a.b.b, arg_0.c.d, arg_0.c.b), false), true)), vec4<bool>(!(-1520f <= arg_1.a.b.e), true, arg_0.c.b, true), vec4<bool>(arg_2.d, false, true & (all(vec3<bool>(false, false, false)) || any(vec3<bool>(false, arg_1.a.b.d, arg_2.d))), all(select(vec2<bool>(arg_2.d, arg_2.b), !vec2<bool>(false, arg_2.d), vec2<bool>(false, false)))));
    let var_2 = ~(-abs(0i));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-189f))))), -1016f);
    var var_4 = var_1.yww;
    return _wgslsmith_div_vec2_f32(arg_0.b.yy, arg_0.b.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(min(~1u, u_input.d.x), u_input.d.x);
    var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2090f, -485f) - vec2<f32>(-1637f, 836f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(583f, 611f), vec2<f32>(966f, -1317f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_7(func_1(Struct_4(vec4<i32>(u_input.c, 62213i, -2147483647i, -4881i), vec3<f32>(1459f, -1092f, 1344f), Struct_1(vec2<u32>(11428u, 1u), false, 1u, true, 996f)), vec4<bool>(true, false, true, true)), Struct_3(Struct_2(u_input.a, Struct_1(vec2<u32>(u_input.d.x, 42832u), true, u_input.d.x, true, 603f))), Struct_1(vec2<u32>(4294967295u, 1u), false, 4294967295u, true, 1231f)))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-239f, 202f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-111f, -1334f)))))));
    let var_2 = ~4294967295u;
    let var_3 = Struct_4(~_wgslsmith_add_vec4_i32(func_6(_wgslsmith_f_op_f32(-var_1.x), Struct_4(vec4<i32>(34600i, 0i, u_input.a, 1i), vec3<f32>(629f, -433f, 180f), Struct_1(u_input.d.xw, true, 1u, true, 270f)), ~vec2<u32>(u_input.d.x, 27991u), func_6(-1000f, Struct_4(vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a), vec3<f32>(1000f, var_1.x, -363f), Struct_1(u_input.d.yz, true, 75813u, false, var_1.x)), vec2<u32>(var_2, 50607u), Struct_4(vec4<i32>(u_input.c, 2147483647i, -47049i, 25205i), vec3<f32>(var_1.x, var_1.x, 1000f), Struct_1(vec2<u32>(0u, var_2), true, 40285u, true, var_1.x)))).a, vec4<i32>(65093i, 29414i, -1i, u_input.b) | vec4<i32>(2147483647i, 2147483647i, 2147483647i, u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(func_6(func_1(Struct_4(vec4<i32>(u_input.a, u_input.b, 2147483647i, u_input.c), vec3<f32>(var_1.x, var_1.x, var_1.x), Struct_1(u_input.d.xw, true, 1u, false, var_1.x)), vec4<bool>(false, false, false, false)).c.e, func_1(Struct_4(vec4<i32>(2147483647i, 2147483647i, u_input.b, 1i), vec3<f32>(182f, var_1.x, 1595f), Struct_1(vec2<u32>(u_input.d.x, var_2), true, u_input.d.x, false, var_1.x)), vec4<bool>(true, false, false, true)), _wgslsmith_mult_vec2_u32(u_input.d.xz, vec2<u32>(1u, 35359u)), func_5(-330f, Struct_1(u_input.d.wx, false, u_input.d.x, true, 678f), vec4<i32>(u_input.a, u_input.c, 2147483647i, 1381i), u_input.d.xw)).b.x + _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -261f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(u_input.b, Struct_1(u_input.d.yw, true, var_2, false, 552f))), u_input.a)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(trunc(2106f)))) - _wgslsmith_f_op_f32(-546f * _wgslsmith_f_op_f32(f32(-1f) * -1260f)))), Struct_1(u_input.d.ww, true, ~_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mod_u32(3872u, 2314u), firstLeadingBit(4294967295u)), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), var_1.x));
    let var_4 = vec4<i32>(-var_3.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, -var_3.a.x >> (_wgslsmith_sub_u32(u_input.d.x, 0u) % 32u)), u_input.c, 47383i), _wgslsmith_dot_vec4_i32(var_3.a, vec4<i32>(_wgslsmith_mult_i32(var_3.a.x, ~2147483647i), 40504i, u_input.b, 1i)), 1i);
    var_0 = 65049u;
    var var_5 = _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.xw, u_input.d.xw));
    let var_6 = var_3.a.xw;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().x, var_4.zzx, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f)), 1038f), vec3<f32>(_wgslsmith_f_op_f32(-1062f - func_5(-656f, Struct_1(vec2<u32>(var_2, var_2), true, var_2, var_3.c.b, -631f), var_4, u_input.d.ww).b.x), func_6(func_6(var_3.c.e, Struct_4(vec4<i32>(76756i, -160i, var_4.x, 1i), var_3.b, Struct_1(vec2<u32>(93805u, var_2), var_3.c.b, 76134u, var_3.c.b, var_3.c.e)), u_input.d.zy, var_3).b.x, func_1(var_3, vec4<bool>(var_3.c.d, true, false, false)), ~vec2<u32>(var_2, 4294967295u), func_5(var_1.x, Struct_1(var_3.c.a, var_3.c.b, var_2, true, -233f), var_3.a, var_3.c.a)).c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f * 733f))))), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(var_2 ^ u_input.d.x, 60574u), abs(4294967295u)), -((_wgslsmith_add_i32(0i, u_input.a) ^ var_3.a.x) | var_3.a.x));
}

