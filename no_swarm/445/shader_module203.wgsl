struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_5) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(284f)))), _wgslsmith_div_f32(-869f, _wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(-arg_1.e.c.b.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.e.c.b.x * arg_1.e.c.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.e.c.b.x, -798f, arg_1.a.d.d)), 2201f))))), _wgslsmith_f_op_f32(arg_1.a.b.b.x * _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(min(1354f, arg_1.e.b.b.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.yy, _wgslsmith_div_vec2_f32(arg_1.a.b.b.xz, vec2<f32>(-1231f, -541f))))));
    var var_2 = arg_1.e;
    var_2 = arg_1.a;
    var var_3 = Struct_5(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(42905u, arg_3.a.x, var_2.c.e.x)), arg_1.d) ^ (_wgslsmith_add_vec3_u32(reverseBits(arg_1.b), vec3<u32>(arg_3.a.x, arg_3.a.x, 17866u) << (arg_1.d % vec3<u32>(32u))) ^ arg_1.b), arg_3.b);
    return firstLeadingBit(u_input.a) & _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32((vec4<i32>(1i, arg_0.x, -913i, 16006i) | vec4<i32>(arg_2.x, -66918i, -2147483647i, arg_2.x)) & select(vec4<i32>(2147483647i, arg_0.x, 2147483647i, arg_2.x), vec4<i32>(u_input.a, arg_2.x, arg_0.x, -2147483647i), vec4<bool>(true, false, arg_1.a.b.a.x, arg_3.b.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), arg_2), _wgslsmith_mult_i32(33363i, arg_2.x), countOneBits(arg_0.x), arg_2.x)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-26202i, -1i, 45671i, -11672i), ~vec4<i32>(-2147483647i, u_input.b, arg_2.x, arg_2.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_5) -> i32 {
    let var_0 = ~(~arg_2.b);
    return firstLeadingBit(-2147483647i);
}

fn func_2(arg_0: Struct_5) -> vec4<f32> {
    let var_0 = firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), max(vec2<i32>(-25221i, u_input.a), vec2<i32>(-11046i, -2147483647i))) & (~vec2<i32>(u_input.b, u_input.a) >> (arg_0.a.xy % vec2<u32>(32u))));
    var var_1 = func_4(_wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 0i, 2964i)), countOneBits(vec3<i32>(-2147483647i, 0i, 32549i)))), vec3<i32>(func_3(-vec3<i32>(2147483647i, u_input.b, u_input.a), Struct_3(Struct_2(false, Struct_1(vec3<bool>(arg_0.b.x, false, arg_0.b.x), vec4<f32>(-312f, 1196f, -177f, 1527f), true, false, arg_0.a.zz), Struct_1(vec3<bool>(false, true, arg_0.b.x), vec4<f32>(1000f, 127f, -344f, 1478f), arg_0.b.x, false, arg_0.a.zx), Struct_1(arg_0.b, vec4<f32>(392f, -1753f, -1092f, -288f), arg_0.b.x, arg_0.b.x, arg_0.a.xx), 22508u), vec3<u32>(arg_0.a.x, arg_0.a.x, 36918u), 1244f, vec3<u32>(31780u, 0u, arg_0.a.x), Struct_2(arg_0.b.x, Struct_1(vec3<bool>(true, arg_0.b.x, true), vec4<f32>(1120f, -955f, 475f, 222f), arg_0.b.x, arg_0.b.x, arg_0.a.yz), Struct_1(vec3<bool>(false, arg_0.b.x, false), vec4<f32>(-136f, 150f, -1303f, 1321f), arg_0.b.x, false, arg_0.a.yx), Struct_1(vec3<bool>(arg_0.b.x, true, false), vec4<f32>(979f, -195f, 1300f, -678f), true, arg_0.b.x, vec2<u32>(arg_0.a.x, 0u)), arg_0.a.x)), firstTrailingBit(var_0), Struct_5(arg_0.a, arg_0.b)), -1i, countOneBits(1i))), Struct_4(Struct_1(select(vec3<bool>(true, true, true), select(arg_0.b, arg_0.b, arg_0.b.x), select(vec3<bool>(false, false, arg_0.b.x), vec3<bool>(arg_0.b.x, false, true), true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-808f, -621f, -1434f, -492f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1937f, -903f, 3240f, -245f) - vec4<f32>(272f, -871f, 379f, 581f)))), false, !(arg_0.b.x && true), select(vec2<u32>(4294967295u, arg_0.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(95800u, arg_0.a.x), vec2<u32>(1u, arg_0.a.x)), arg_0.b.x)), Struct_1(arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1158f, -820f, -127f, -235f))) - vec4<f32>(-299f, 1837f, -545f, 741f)), false, arg_0.a.x < ~22886u, ~min(vec2<u32>(arg_0.a.x, 1u), vec2<u32>(arg_0.a.x, 1u))), false), Struct_3(Struct_2(!(!arg_0.b.x), Struct_1(!arg_0.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-788f, 405f, -369f, 1485f), vec4<f32>(894f, 243f, -1072f, 632f), true)), arg_0.b.x, arg_0.b.x, ~arg_0.a.xy), Struct_1(vec3<bool>(true, arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, -1000f, 275f, 713f)), true, true, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0.a.x), vec2<u32>(arg_0.a.x, 1736u))), Struct_1(arg_0.b, vec4<f32>(-2397f, 2235f, 486f, 340f), arg_0.b.x, !arg_0.b.x, vec2<u32>(96486u, arg_0.a.x)), _wgslsmith_mult_u32(arg_0.a.x & 68281u, 0u)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.a.x, 18995u, 1u)), ~min(arg_0.a, vec3<u32>(4294967295u, arg_0.a.x, arg_0.a.x))), -1000f, countOneBits(~(vec3<u32>(arg_0.a.x, 1u, arg_0.a.x) ^ arg_0.a)), Struct_2(_wgslsmith_f_op_f32(round(1229f)) == _wgslsmith_f_op_f32(1145f - 1014f), Struct_1(arg_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(968f, 202f, -660f, 142f) * vec4<f32>(-1000f, -398f, 168f, -200f)), arg_0.b.x, false, vec2<u32>(arg_0.a.x, 1u)), Struct_1(arg_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, 1001f, -639f, -1104f) - vec4<f32>(-1603f, 240f, 288f, -548f)), arg_0.b.x, select(true, true, arg_0.b.x), countOneBits(vec2<u32>(arg_0.a.x, arg_0.a.x))), Struct_1(arg_0.b, vec4<f32>(235f, -199f, 1097f, 807f), arg_0.b.x, true, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_0.a.x), vec2<u32>(arg_0.a.x, arg_0.a.x))), ~(~1u))), arg_0);
    var_1 = u_input.a;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -833f) - -1183f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-542f))))), -1661f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-983f, _wgslsmith_f_op_f32(max(-1000f, 685f))))) - _wgslsmith_f_op_f32(ceil(-365f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-189f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(-918f)))) + _wgslsmith_f_op_f32(f32(-1f) * -140f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    let var_0 = arg_0.x ^ 0i;
    let var_1 = max(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, arg_0.x, var_0), vec3<i32>(arg_0.x, 10557i, u_input.a)), -vec3<i32>(var_0, u_input.a, arg_0.x)), arg_0.x), 1i);
    let var_2 = Struct_1(arg_1.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1113f, 1557f, -1100f, -603f) * vec4<f32>(-707f, 631f, 649f, -624f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1633f, -422f, -1340f, -305f)))))), true | arg_1.b.x, min(arg_2, firstLeadingBit(arg_3.x) | _wgslsmith_div_u32(arg_1.a.x, 1u)) >= (_wgslsmith_div_u32(arg_1.a.x, arg_3.x) & ~_wgslsmith_dot_vec2_u32(arg_1.a.zz, arg_3.yy)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, 0u), ~vec2<u32>(4294967295u, arg_3.x)) | _wgslsmith_sub_vec2_u32(~vec2<u32>(35648u, arg_1.a.x) >> (vec2<u32>(68204u, arg_2) % vec2<u32>(32u)), ~arg_1.a.zz));
    var var_3 = Struct_2(true | any(var_2.a.xy), Struct_1(select(var_2.a, !var_2.a, var_1 > ~1i), var_2.b, all(select(select(arg_1.b.yz, arg_1.b.zz, var_2.c), select(vec2<bool>(true, true), vec2<bool>(arg_1.b.x, arg_1.b.x), true), select(vec2<bool>(false, arg_1.b.x), vec2<bool>(true, var_2.d), vec2<bool>(true, arg_1.b.x)))), var_2.d, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(40650u, var_2.e.x), vec2<u32>(1u, arg_2)))), Struct_1(vec3<bool>(true, all(!vec2<bool>(true, arg_1.b.x)), arg_1.b.x), var_2.b, var_2.d, !all(vec2<bool>(true, false)), vec2<u32>(4294967295u & ~var_2.e.x, arg_1.a.x)), Struct_1(select(select(select(var_2.a, vec3<bool>(false, arg_1.b.x, true), vec3<bool>(true, arg_1.b.x, true)), !var_2.a, vec3<bool>(var_2.c, false, arg_1.b.x)), var_2.a, vec3<bool>(true, true, true)), var_2.b, arg_1.b.x, false, abs(select(vec2<u32>(64382u, arg_3.x), ~vec2<u32>(arg_2, var_2.e.x), true))), 0u);
    var_3 = Struct_2(!(var_2.c || var_2.d), Struct_1(arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, 1239f, var_2.b.x, var_3.b.b.x))) * var_2.b), var_3.d.d && !all(vec3<bool>(false, arg_1.b.x, true)), !var_3.b.a.x, var_2.e), var_2, Struct_1(!(!arg_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_2.b)))), var_2.a.x, var_3.a, vec2<u32>(arg_2 & firstLeadingBit(19313u), countOneBits(50436u << (var_3.e % 32u)))), _wgslsmith_add_u32(_wgslsmith_mult_u32(~var_3.c.e.x, _wgslsmith_add_u32(~51520u, ~arg_2)), arg_3.x));
    return _wgslsmith_mult_u32(arg_3.x, _wgslsmith_clamp_u32(arg_3.x, ~(~var_3.b.e.x), select(~1u, arg_3.x, !any(vec4<bool>(false, true, false, var_3.d.d)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = vec2<u32>(1888u, _wgslsmith_add_u32(countOneBits(~arg_1.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 1u) ^ vec4<u32>(1u, 4320u, arg_1.x, 1u), vec4<u32>(0u, arg_1.x, arg_1.x, 11693u)), 4294967295u)));
    var var_1 = Struct_5(arg_1, vec3<bool>((countOneBits(arg_1.x) >= ~24602u) || !select(true, false, arg_0.x), true || (var_0.x <= arg_1.x), !any(arg_0.xwy)));
    var var_2 = vec3<i32>(-2147483647i, _wgslsmith_mod_i32(-1i, 2147483647i), 0i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1039f - -597f), -1876f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-229f, -402f)) * -2135f)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-619f, _wgslsmith_f_op_f32(f32(-1f) * -177f)), -1231f)))));
    return Struct_4(Struct_1(!arg_0.zwz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -209f, -418f, var_3), vec4<f32>(var_3, -430f, var_3, var_3)))), (-2147483647i != u_input.a) & var_1.b.x, !(!(!arg_0.x)), vec2<u32>(~arg_1.x, arg_1.x)), Struct_1(arg_0.zxy, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, var_3, var_3, var_3)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, var_3, 1356f, var_3))))), !all(vec3<bool>(arg_0.x, var_1.b.x, var_1.b.x)), true, firstTrailingBit(max(vec2<u32>(var_0.x, var_1.a.x), vec2<u32>(var_1.a.x, 1u)) | arg_1.zx)), !((var_1.a.x | firstTrailingBit(24949u)) > _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.x), ~vec2<u32>(var_1.a.x, 7448u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>(true, !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(337f * 3113f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1070f))), true), _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 0u, 24957u), vec3<u32>(1u, 1u, 1u), vec3<u32>(29906u, 16454u, 6025u)), vec3<u32>(_wgslsmith_sub_u32(func_1(vec2<i32>(u_input.b, u_input.a), Struct_5(vec3<u32>(21892u, 172u, 1u), vec3<bool>(true, false, true)), 58204u, vec4<u32>(16286u, 37791u, 3005u, 37867u)), reverseBits(51782u)), 1u, 0u)));
    var_0 = func_5(!vec4<bool>(!var_0.c, false, true, _wgslsmith_f_op_f32(var_0.a.b.x + 1592f) < _wgslsmith_f_op_f32(min(-182f, var_0.a.b.x))), min(countOneBits(min(abs(vec3<u32>(var_0.a.e.x, 30896u, 0u)), select(vec3<u32>(var_0.b.e.x, 1u, var_0.a.e.x), vec3<u32>(var_0.b.e.x, 270u, var_0.a.e.x), false))), vec3<u32>(var_0.b.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.e.x, 26690u, 4294967295u, 1u) & vec4<u32>(var_0.b.e.x, 8709u, 66989u, var_0.b.e.x), vec4<u32>(67242u, 16694u, var_0.b.e.x, var_0.b.e.x)), select(~var_0.b.e.x, func_5(vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.a.c, false), vec3<u32>(16652u, var_0.b.e.x, 1u)).b.e.x, all(vec4<bool>(var_0.b.d, false, var_0.b.c, false))))));
    var var_1 = min(~vec3<u32>(var_0.b.e.x, 4294967295u ^ var_0.b.e.x, 68174u), vec3<u32>(var_0.a.e.x, _wgslsmith_div_u32(var_0.a.e.x >> (82195u % 32u), ~var_0.a.e.x), reverseBits(_wgslsmith_clamp_u32(9281u, var_0.a.e.x, var_0.b.e.x))) & firstTrailingBit(_wgslsmith_mod_vec3_u32(max(vec3<u32>(42208u, var_0.a.e.x, 21010u), vec3<u32>(0u, 2510u, var_0.a.e.x)), ~vec3<u32>(var_0.a.e.x, var_0.a.e.x, 58121u))));
    let var_2 = vec3<u32>(~var_0.b.e.x, var_1.x, 4294967295u);
    let var_3 = vec2<u32>(var_0.b.e.x, min(23965u, reverseBits(var_1.x) & _wgslsmith_sub_u32(func_5(vec4<bool>(var_0.c, true, true, true), vec3<u32>(4294967295u, var_2.x, 1u)).a.e.x, 1u)));
    let var_4 = Struct_5(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_2.x), _wgslsmith_mod_vec3_u32(var_2, firstTrailingBit(firstLeadingBit(vec3<u32>(var_1.x, 56613u, 16578u))))), var_0.a.a);
    let var_5 = var_4;
    let var_6 = func_5(select(vec4<bool>(any(vec3<bool>(var_4.b.x, var_0.c, var_4.b.x)), var_4.b.x, !(!var_4.b.x), 36066u == firstTrailingBit(var_5.a.x)), select(select(!vec4<bool>(false, false, false, var_4.b.x), select(vec4<bool>(var_5.b.x, var_0.b.d, true, false), vec4<bool>(false, false, true, var_4.b.x), vec4<bool>(var_0.c, var_0.c, var_0.c, false)), !vec4<bool>(var_0.c, true, false, false)), select(vec4<bool>(true, var_5.b.x, true, false), vec4<bool>(var_5.b.x, var_5.b.x, false, var_5.b.x), !vec4<bool>(var_0.b.d, var_0.a.d, true, true)), !select(vec4<bool>(true, var_0.a.c, true, var_4.b.x), vec4<bool>(var_4.b.x, true, true, true), var_0.c)), vec4<bool>(true, any(!var_0.a.a.yx), var_0.a.d, true)), max(~(~min(var_5.a, var_4.a)), vec3<u32>(~(var_4.a.x << (var_2.x % 32u)), abs(_wgslsmith_sub_u32(var_0.a.e.x, var_1.x)), 105458u))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(var_0.b.b.yz)), 570f, -countOneBits(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.b)) & -vec3<i32>(-27046i, u_input.a, u_input.b)), abs(~_wgslsmith_add_u32(30908u, 15233u)) >> (_wgslsmith_add_u32(var_6.e.x, abs(var_0.a.e.x) << (1u % 32u)) % 32u), min(u_input.a, u_input.a) << (~1u % 32u));
}

