struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_3,
    e: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1544f)), _wgslsmith_f_op_f32(f32(-1f) * -1158f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1401f - -208f), _wgslsmith_f_op_f32(round(-215f))), vec4<u32>(u_input.a.x, reverseBits(9896u), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 1u))), Struct_1(-200f, -679f, firstTrailingBit(~vec4<u32>(u_input.a.x, 17543u, 14661u, 5865u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(360f))), -131f, vec4<u32>(4294967295u, 0u, u_input.a.x, 4294967295u) >> (~vec4<u32>(0u, 59168u, 0u, 64640u) % vec4<u32>(32u)))), false, Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(1985f * 830f), any(vec4<bool>(true, true, true, false)))), vec4<u32>(1u, u_input.a.x & u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(36580u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 0u, 79087u)), abs(1u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2266f, 381f)), 670f, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~u_input.a)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1395f, -517f, false)), -1275f)), _wgslsmith_f_op_f32(trunc(1f)), abs(min(vec4<u32>(85533u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))))));
    let var_1 = vec3<bool>(false, any(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, var_0.b), vec4<bool>(false, true, var_0.b, true)), !vec4<bool>(var_0.b, var_0.b, true, var_0.b), all(vec3<bool>(true, true, false)))), true);
    var var_2 = var_0.c.a.c.zz;
    var_2 = var_0.a.a.c.yx;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1999f, _wgslsmith_f_op_f32(-736f * 1239f), var_0.b && false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c.b + -918f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1115f), -617f, true))), ~vec4<u32>(u_input.a.x, ~var_0.c.a.c.x, var_2.x, ~u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(round(var_0.c.a.a)), 719f, var_0.a.c.c), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.c.c.a)), _wgslsmith_f_op_f32(trunc(var_0.c.c.a)), any(vec4<bool>(true, true, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f), var_0.c.a.a))), -780f, var_0.a.c.c >> (var_0.c.a.c % vec4<u32>(32u))));
    return vec2<i32>(~(-(-19100i & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 732i, -7447i), vec4<i32>(63351i, -22747i, -2147483647i, 52692i)))), countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), min(vec2<i32>(-13228i, 1i), vec2<i32>(-2147483647i, 2147483647i))), ~1i)));
}

fn func_2() -> Struct_1 {
    let var_0 = func_3();
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -652f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -134f), _wgslsmith_f_op_f32(293f + 1000f)), u_input.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-576f, -1198f)))), u_input.a), Struct_1(511f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<u32>(1076u, 36633u, 37850u, u_input.a.x)))), true, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1355f + -475f)), 386f, ~(~u_input.a)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077f + 1085f) + _wgslsmith_f_op_f32(ceil(536f))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(16791u, u_input.a.x, 4294967295u, 0u), vec4<u32>(u_input.a.x, 21470u, 68903u, u_input.a.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-984f, -1211f)), -1376f), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), reverseBits(u_input.a)))));
    let var_2 = Struct_3(Struct_2(Struct_1(1950f, var_1.a.a.a, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, var_1.a.a.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.a.c.x, 17101u, var_1.c.a.c.x, 0u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, var_1.a.b.c.x)))), var_1.c.a, var_1.c.a), true, var_1.c);
    let var_3 = vec2<f32>(-1299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c.b - var_2.c.b.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c.b.a)))) * var_2.a.c.b));
    let var_4 = min(~(~0u), 4662u);
    return Struct_1(var_1.a.b.a, _wgslsmith_f_op_f32(var_2.a.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.a.b), _wgslsmith_f_op_f32(var_1.a.b.a - 498f))))), vec4<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.b.c.x, var_4, 4294967295u, 9913u), _wgslsmith_clamp_vec4_u32(var_1.c.c.c, var_1.c.b.c, var_1.a.c.c)), max(reverseBits(var_1.c.c.c.x), 1u << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(trunc(var_2.c.a.b)) > _wgslsmith_f_op_f32(exp2(var_1.c.b.b))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(20741u, var_4)), _wgslsmith_add_vec2_u32(reverseBits(var_2.c.b.c.wy), reverseBits(var_1.a.c.c.yx))), firstLeadingBit(var_1.c.a.c.x), ~_wgslsmith_sub_u32(var_4, var_2.a.a.c.x) | var_2.a.b.c.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_div_vec2_i32(select(vec2<i32>(14857i, 0i), vec2<i32>(0i, 63464i), false), vec2<i32>(25767i, 14129i) >> (arg_3.c.zx % vec2<u32>(32u))) >> (vec2<u32>(arg_3.c.x, 90898u) % vec2<u32>(32u)));
    let var_1 = -(i32(-1i) * -(~(var_0.x | -81559i)));
    var var_2 = -2147483647i;
    var_0 = firstLeadingBit(reverseBits(select(func_3(), vec2<i32>(var_1, -2147483647i) & _wgslsmith_mod_vec2_i32(vec2<i32>(-30521i, var_0.x), vec2<i32>(var_0.x, var_1)), true)));
    return arg_2.c;
}

fn func_1() -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1729f, -646f)), _wgslsmith_f_op_f32(-168f - 141f), _wgslsmith_f_op_f32(764f * 240f), _wgslsmith_f_op_f32(sign(361f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(859f)), 1347f, _wgslsmith_f_op_f32(round(-2004f)), _wgslsmith_f_op_f32(trunc(-1106f))))), func_2(), Struct_3(Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(step(263f, -1433f)), _wgslsmith_f_op_f32(f32(-1f) * -718f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), Struct_1(_wgslsmith_f_op_f32(max(497f, 1690f)), -362f, vec4<u32>(66819u, 4294967295u, u_input.a.x, 0u))), true, Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-1484f, 564f)), -438f, u_input.a), Struct_1(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -754f), func_2().c), Struct_1(_wgslsmith_f_op_f32(abs(-549f)), -836f, _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(0u, u_input.a.x, 17845u, 18593u), u_input.a)))), func_2());
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.b)), _wgslsmith_f_op_f32(var_0.c.b - -556f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1005f) - vec2<f32>(var_0.b.a, -156f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1806f, -1414f), vec2<f32>(1663f, -1164f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, var_0.c.b)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.b, var_0.c.b), vec2<f32>(-1166f, var_0.b.b))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(func_4(vec4<f32>(-555f, var_0.a.a, 1000f, var_0.a.b), var_0.a, Struct_3(var_0, true, var_0), Struct_1(-1000f, var_0.a.b, u_input.a)).a.b, var_0.a.b) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, var_0.a.a) - vec2<f32>(741f, var_0.c.b)) * vec2<f32>(var_0.c.a, var_0.c.b))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.b.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, -647f)), vec2<bool>(true, true)))));
    var var_3 = ~(~_wgslsmith_sub_vec4_u32(abs(var_0.c.c) << ((vec4<u32>(13432u, 112024u, u_input.a.x, 66374u) | var_0.a.c) % vec4<u32>(32u)), abs(func_2().c)));
    var_3 = u_input.a;
    return ~(~(var_3.x | _wgslsmith_add_u32(var_0.a.c.x, firstTrailingBit(var_0.a.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-471f, -2038f) - _wgslsmith_f_op_f32(ceil(-633f))), -265f, true));
    let var_1 = func_1();
    var var_2 = vec3<bool>(all(vec4<bool>(true, false, true, true)) && true, true, select(any(vec4<bool>(true, true, true, true)), true, true || !(400f < var_0)));
    let var_3 = _wgslsmith_f_op_f32(exp2(var_0));
    var var_4 = u_input.a.x;
    var_2 = select(!(!vec3<bool>(true, var_2.x, true)), vec3<bool>(var_2.x, var_2.x, var_2.x), !var_2.x);
    var_2 = !select(vec3<bool>(true, var_2.x, any(vec2<bool>(var_2.x, true))), vec3<bool>(any(!vec3<bool>(false, false, var_2.x)), false, _wgslsmith_f_op_f32(abs(1576f)) != _wgslsmith_f_op_f32(var_0 * var_3)), !vec3<bool>(all(vec3<bool>(var_2.x, true, true)), var_0 < var_3, true));
    let var_5 = select(vec4<bool>(select(true, var_2.x, !any(var_2.xy)), false, false, !var_2.x), select(select(select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), !vec4<bool>(true, var_2.x, var_2.x, var_2.x), all(vec3<bool>(true, false, false))), vec4<bool>(all(vec4<bool>(false, var_2.x, var_2.x, false)), var_2.x, var_2.x, true), vec4<bool>(var_2.x, true, var_2.x | var_2.x, true)), !(!(!vec4<bool>(false, false, false, var_2.x))), select(vec4<bool>(false, all(vec2<bool>(var_2.x, false)), true, false), vec4<bool>(any(vec4<bool>(true, true, var_2.x, false)), false, true, var_2.x), vec4<bool>(true, true, var_2.x, !var_2.x))), !(!any(vec2<bool>(true, var_2.x))));
    var var_6 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i, 74541i), vec2<i32>(1i, 2694i)), reverseBits(vec2<i32>(-2147483647i, -1i)))), -1i, -1i, _wgslsmith_sub_i32(~1i, _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_add_i32(-1i, 1i), 2147483647i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 5017i, -39570i), vec4<i32>(-21175i, 28201i, 2147483647i, 1i), vec4<i32>(2147483647i, -26540i, 62026i, -1i)), abs(vec4<i32>(0i, 0i, 2147483647i, -2147483647i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(4654i, -1i, -3396i, 2147483647i), vec4<i32>(30567i, -1i, 11515i, 1i)), abs(~select(vec4<i32>(1i, 325i, 64679i, -2701i), vec4<i32>(-1853i, 52898i, -14091i, -2147483647i), true)), firstLeadingBit(~vec4<i32>(2147483647i, -8934i, -3785i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(min(u_input.a.x, u_input.a.x)), var_1, true), _wgslsmith_div_vec4_u32(vec4<u32>(~1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, var_1), _wgslsmith_mod_u32(u_input.a.x, var_1)), 35574u, u_input.a.x), vec4<u32>(~(u_input.a.x | var_1), 1u, ~99094u, ~(~96182u))), select(_wgslsmith_sub_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_6.x, var_6.x, var_6.x), var_6.wwx, var_6.zyz), ~var_6.www >> (~u_input.a.xwy % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(33122i, var_6.x, var_6.x), vec3<i32>(var_6.x, var_6.x, var_6.x) | vec3<i32>(var_6.x, -42768i, -4425i)), abs(var_6.x), -2147483647i), var_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3))));
}

