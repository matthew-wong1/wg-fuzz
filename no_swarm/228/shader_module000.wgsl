struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> f32 {
    global0 = -1552f;
    let var_0 = vec3<i32>(u_input.c.x, u_input.c.x, _wgslsmith_sub_i32(reverseBits(u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.c.x), u_input.c.x & u_input.c.x, ~1i), max(-vec3<i32>(2147483647i, 2147483647i, 31851i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 24657i), vec3<i32>(-24417i, -3473i, u_input.c.x), vec3<i32>(u_input.c.x, -76274i, u_input.c.x))))));
    var var_1 = ~(var_0 >> (arg_0 % vec3<u32>(32u)));
    var var_2 = -1i;
    let var_3 = true | !(!(!(var_1.x == u_input.c.x)));
    return _wgslsmith_f_op_f32(round(arg_1.x));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec3<i32>(~u_input.c.x, -27700i, _wgslsmith_sub_i32(0i, 36812i)) & ~select(vec3<i32>(2147483647i, -2147483647i, u_input.c.x), vec3<i32>(-2147483647i, -2147483647i, u_input.c.x), vec3<bool>(true, false, false))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -810f), 1000f, all(vec3<bool>(true, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1474f, 847f))), _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b.x, ~select(u_input.b.x, u_input.a, true), firstTrailingBit(46452u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1426f, 418f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, -770f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1032f, 1189f), vec2<f32>(-811f, 797f))))))));
    let var_1 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1234f, -545f, 1989f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(224f, 1363f, -250f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -743f, -554f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(258f, 609f))), _wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(19520u, 64422u, 22850u), vec2<f32>(-167f, -996f))), _wgslsmith_f_op_f32(1188f + -1270f)))))));
    return var_0;
}

fn func_1() -> vec3<i32> {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-429f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-483f, 1636f, true)) * -1748f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-3312f * _wgslsmith_div_f32(-1005f, -1446f)))) * vec4<f32>(447f, _wgslsmith_div_f32(-1872f, _wgslsmith_f_op_f32(trunc(-839f))), 1820f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1693f))))));
    let var_3 = vec3<bool>(all(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false))), !((_wgslsmith_f_op_f32(var_2.x - var_2.x) == _wgslsmith_f_op_f32(-var_2.x)) & any(vec2<bool>(true, true))));
    return vec3<i32>(2147483647i, -(-33278i & _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a.a.x, 16007i, 1i, u_input.c.x), -vec4<i32>(var_1.a.a.x, -2147483647i, 5088i, u_input.c.x))), _wgslsmith_sub_i32(~countOneBits(firstTrailingBit(0i)), abs(var_0.a.a.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_2().a;
    let var_1 = u_input.a;
    var var_2 = ~(-u_input.c.x << (var_1 % 32u));
    global0 = _wgslsmith_f_op_f32(ceil(-469f));
    var var_3 = Struct_1(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -arg_0.a, _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_0.a.x, 22542i, -36091i), arg_0.a, min(vec3<i32>(-1i, 2147483647i, 5476i), var_0.a))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(func_1()));
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~(~0u), u_input.a, select(firstTrailingBit(u_input.a), ~u_input.a, any(vec4<bool>(true, true, true, true))), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 30834u), _wgslsmith_mod_u32(u_input.a, u_input.a))), ~(vec4<u32>(u_input.a, 0u, u_input.b.x, 4294967295u) | vec4<u32>(110u, 1u, 70875u, u_input.a)) ^ vec4<u32>(0u, firstTrailingBit(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, u_input.a), 34513u)), vec4<u32>(abs(min(u_input.a, u_input.a)), firstLeadingBit(4294967295u), 90246u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, max(88966u, 3198u)))));
    global0 = _wgslsmith_f_op_f32(-1660f * _wgslsmith_f_op_f32(func_3(reverseBits(min(reverseBits(var_1.yxw), var_1.xyw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(926f, -598f)))))));
    var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(56923u, 17603u, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-789f, 1435f) + vec2<f32>(1055f, 859f))))))) * 1230f);
    var var_2 = 25627u;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1052f * -725f), 1000f, 602f, _wgslsmith_div_f32(-1731f, 1298f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1083f, 406f, -120f, 678f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zyz, vec2<u32>(_wgslsmith_sub_u32(25651u, _wgslsmith_mod_u32(40584u, reverseBits(var_1.x))), 59503u));
}

