struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(4294967295u, 1u, 104593u, 1u), vec3<f32>(-469f, 1409f, 558f), 31196i, vec4<f32>(-1000f, -539f, 505f, 1223f), vec2<u32>(0u, 52908u)), Struct_1(vec4<u32>(4294967295u, 60506u, 1u, 47457u), vec3<f32>(647f, 1519f, 1000f), 16150i, vec4<f32>(1000f, -975f, -345f, -1088f), vec2<u32>(63506u, 4294967295u)), Struct_1(vec4<u32>(30229u, 0u, 97114u, 1609u), vec3<f32>(670f, -1255f, 1000f), -1660i, vec4<f32>(-1853f, 1604f, 214f, 532f), vec2<u32>(1u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 100556u), vec3<f32>(2188f, -1000f, 2459f), 1i, vec4<f32>(2756f, 1708f, 157f, -1842f), vec2<u32>(0u, 62197u)), Struct_1(vec4<u32>(51691u, 20187u, 27004u, 11395u), vec3<f32>(355f, -546f, 401f), 3647i, vec4<f32>(747f, 609f, 1441f, 109f), vec2<u32>(0u, 1u)), Struct_1(vec4<u32>(20411u, 0u, 0u, 0u), vec3<f32>(-1000f, 1040f, 1000f), -6015i, vec4<f32>(770f, -422f, -799f, -283f), vec2<u32>(4294967295u, 33855u)), Struct_1(vec4<u32>(1u, 1u, 2116u, 22446u), vec3<f32>(384f, -1000f, -683f), -21882i, vec4<f32>(1263f, -172f, 1907f, -2341f), vec2<u32>(4294967295u, 20873u)), Struct_1(vec4<u32>(1u, 4294967295u, 52213u, 1u), vec3<f32>(826f, -544f, -465f), -33027i, vec4<f32>(1114f, 923f, 1590f, -1896f), vec2<u32>(35457u, 58254u)), Struct_1(vec4<u32>(1u, 67521u, 0u, 34816u), vec3<f32>(582f, -170f, -420f), 15449i, vec4<f32>(2288f, -639f, 527f, 1585f), vec2<u32>(1u, 1u)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(-684f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f)), _wgslsmith_f_op_f32(f32(-1f) * -321f), -1000f));
    global0 = ~(-((reverseBits(u_input.a) >> (1u % 32u)) << (~(~u_input.b) % 32u)));
    var var_2 = Struct_2(max(~(~vec4<u32>(91643u, u_input.c.x, u_input.b, u_input.b)) ^ min(max(vec4<u32>(u_input.d, 1u, 38587u, 16836u), vec4<u32>(0u, u_input.b, 52392u, 0u)), firstLeadingBit(vec4<u32>(439u, u_input.c.x, 4294967295u, 14979u))), vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.zz), ~u_input.c.zy), ~u_input.d, u_input.b, u_input.b)), _wgslsmith_f_op_f32(-var_1.x), Struct_1(reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 8867u, 95500u, u_input.b), vec4<u32>(51438u, u_input.c.x, u_input.d, 36525u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.yzz))), vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x, _wgslsmith_f_op_f32(floor(-1110f))), vec3<bool>(true, true, true))), ~_wgslsmith_mult_i32(max(u_input.a, u_input.a), -u_input.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1839f, var_1.x, 298f, -296f))), _wgslsmith_f_op_vec4_f32(floor(var_1)), vec4<bool>(false, true, true, false))), var_1)), u_input.c.yx), true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.x, var_2.c.b.x, false)))))) + -593f) - _wgslsmith_f_op_f32(-var_1.x));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(257f, var_3, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-552f + 797f), -699f)))), var_3)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    global0 = _wgslsmith_dot_vec4_i32(max(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(40371i, u_input.a, 30150i, -4993i) << (vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(-vec4<i32>(u_input.a, 24901i, 1i, u_input.a))), vec4<i32>(i32(-1i) * -1i, -15348i, -1i, ~u_input.a << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 3609u, u_input.c.x), vec4<u32>(3482u, u_input.b, u_input.c.x, u_input.b)), ~vec4<u32>(u_input.c.x, 51891u, 47844u, 8116u)) % 32u)));
    let var_0 = vec3<u32>(48938u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 107941u), ~firstTrailingBit(max(u_input.c.x >> (1u % 32u), 67766u)));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x & abs(0u), _wgslsmith_sub_u32(4294967295u, ~0u), ~firstTrailingBit(4294967295u), var_0.x), ~(~vec4<u32>(42120u, 33571u, 93889u, var_0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, 971f, -582f)))), vec3<f32>(_wgslsmith_div_f32(-268f, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), arg_1.x), abs(-26388i) != abs(_wgslsmith_div_i32(0i, u_input.a)))), u_input.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1070f)), _wgslsmith_f_op_f32(arg_0 + arg_0), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_1), _wgslsmith_sub_vec2_u32(u_input.c.yx, ~(~var_0.xz)));
    return u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    let var_0 = arg_0;
    global1 = array<Struct_1, 9>();
    let var_1 = var_0.c;
    global1 = array<Struct_1, 9>();
    global0 = _wgslsmith_mod_i32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 1047f)) * var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), 0i);
    return var_1.a;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = vec3<i32>(2147483647i, ~48649i, _wgslsmith_dot_vec3_i32(~(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i, 1529i), vec3<i32>(1i, arg_0.c.c, arg_1)) & vec3<i32>(arg_1, u_input.a, arg_1)), ~reverseBits(-vec3<i32>(arg_0.c.c, -23776i, 0i))));
    let var_1 = arg_0;
    var var_2 = var_1.c;
    var var_3 = select(arg_0.d, 4294967295u > (_wgslsmith_dot_vec3_u32(~var_2.a.wwy, ~vec3<u32>(63140u, var_1.c.e.x, 3532u)) & ~var_2.a.x), arg_0.d);
    return Struct_2(~func_2(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(290f)), _wgslsmith_f_op_f32(arg_0.c.b.x * 359f))), -701f, global1[_wgslsmith_index_u32(1u, 9u)], true);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    return func_5(Struct_2(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(func_2(Struct_2(arg_0.a, 1253f, arg_0.c, arg_0.d), 2596f), ~arg_0.c.a), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.a, vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.d, 0u)), arg_0.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b))), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d, 28067u), 4294967295u)), 9u)], false), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.c, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(-18714i, arg_1), vec2<i32>(u_input.a, u_input.a)))));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(arg_3.e.x, ~_wgslsmith_sub_u32(u_input.b, arg_2.a.x));
    var var_1 = func_5(arg_2, arg_2.c.c).c;
    let var_2 = firstLeadingBit(~var_1.a.zxw);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1709f, var_1.d.x, -614f, arg_3.b.x)));
    global0 = -2147483647i;
    return arg_2;
}

fn func_7(arg_0: bool, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = arg_1.d;
    let var_1 = func_6(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), func_5(arg_1, arg_1.c.c).d), !select(vec2<bool>(false, var_0), vec2<bool>(var_0, arg_0), false), vec2<bool>(true, false)), !select(vec2<bool>(var_0, arg_1.d), vec2<bool>(arg_1.d, arg_0), true), !(!func_5(Struct_2(arg_1.c.a, -1868f, Struct_1(arg_1.c.a, vec3<f32>(arg_1.c.d.x, 223f, -912f), -7719i, vec4<f32>(arg_1.c.b.x, arg_1.b, arg_1.b, arg_1.b), vec2<u32>(1779u, 0u)), false), u_input.a).d)), reverseBits(vec2<i32>(arg_1.c.c, firstLeadingBit(-u_input.a))), func_5(func_5(arg_1, arg_1.c.c), arg_1.c.c), func_5(func_1(arg_1, _wgslsmith_add_i32(-82130i, arg_1.c.c)), ~u_input.a).c);
    let var_2 = all(!(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_1.d, arg_1.d), var_1.d))) | any(vec3<bool>(select(!arg_1.d, arg_1.d | arg_1.d, true), var_0, var_0));
    let var_3 = Struct_1(~var_1.c.a, func_1(func_1(arg_1, _wgslsmith_mod_i32(arg_1.c.c, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(3688i, var_1.c.c)) ^ var_1.c.c).c.d.xzz, ~u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1328f, arg_1.b, var_1.b, var_1.c.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 1232f, 335f, var_1.b) * vec4<f32>(978f, arg_1.b, 702f, var_1.b))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(673f, var_1.c.d.x), _wgslsmith_f_op_f32(f32(-1f) * -182f), var_1.c.b.x, _wgslsmith_div_f32(var_1.b, -381f)))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.d, ~u_input.c.x), abs(vec2<u32>(4294967295u, 1u))), ~vec2<u32>(~arg_1.a.x, u_input.b)));
    let var_4 = abs(vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, var_3.a.x, arg_1.a.x), var_1.a.x));
    return _wgslsmith_f_op_vec4_f32(-var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(~vec4<u32>(3717u, 4294967295u, ~4294967295u, 26238u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1071f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2410f, 437f, false))), _wgslsmith_f_op_f32(-1468f * -285f)))), -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_7(false, func_6(vec2<bool>(true, false), -vec2<i32>(u_input.a, 2147483647i), func_1(Struct_2(vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.c.x), -217f, global1[_wgslsmith_index_u32(u_input.c.x, 9u)], true), u_input.a), Struct_1(vec4<u32>(u_input.b, 58743u, u_input.b, 12331u), vec3<f32>(2105f, 554f, -171f), 8942i, vec4<f32>(1000f, -518f, -988f, -553f), vec2<u32>(4294967295u, 4294967295u))))) * _wgslsmith_f_op_vec4_f32(func_3())), ~select(u_input.c.yx, u_input.c.zz, (u_input.a < u_input.a) && all(vec3<bool>(true, true, false))));
    var var_1 = -u_input.a;
    var var_2 = var_0.d.yyx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<i32>(var_0.c, u_input.a), _wgslsmith_mult_vec4_u32(func_1(Struct_2(vec4<u32>(u_input.c.x, 43496u, 3231u, var_0.e.x), var_2.x, var_0, false), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -48111i, -2147483647i, var_0.c), vec4<i32>(-32486i, 1i, u_input.a, var_0.c))).a & var_0.a, var_0.a), u_input.c.x, vec4<f32>(-660f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 946f), _wgslsmith_div_f32(-684f, -237f)) * _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.x, 1296f, func_5(Struct_2(vec4<u32>(var_0.e.x, var_0.e.x, 1u, 1u), var_2.x, var_0, false), -7757i).d)), _wgslsmith_f_op_f32(-1172f + func_6(vec2<bool>(true, true), vec2<i32>(u_input.a, -1i), Struct_2(var_0.a, var_2.x, global1[_wgslsmith_index_u32(var_0.e.x, 9u)], true), global1[_wgslsmith_index_u32(89857u, 9u)]).b)), var_0.b.x));
}

