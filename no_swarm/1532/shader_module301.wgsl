struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(arg_1 - _wgslsmith_f_op_vec2_f32(trunc(arg_1)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(arg_1.c, ~arg_1.e.x >> (arg_1.e.x % 32u), arg_1.c, _wgslsmith_f_op_vec2_f32(arg_1.d.wx - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec2_u32(arg_1.e.xy, firstLeadingBit(arg_1.e.yx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.d.zz)), _wgslsmith_f_op_vec2_f32(-arg_1.d.zw))))), !vec3<bool>(!(!arg_0), arg_0, false));
    var_0 = Struct_3(arg_1.c, var_0.b, Struct_1(_wgslsmith_f_op_f32(-1498f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-555f)))), _wgslsmith_clamp_i32(min(i32(-1i) * -10948i, reverseBits(var_0.a.b)), arg_1.c.b, max(var_0.c.b, arg_1.c.b << (8580u % 32u))), var_0.a.c), vec2<f32>(arg_1.d.x, var_0.d.x), select(arg_1.c.c.xwz, var_0.a.c.zxy, var_0.a.c.x));
    var var_1 = select(true, arg_0, any(vec3<bool>(var_0.c.a <= -1733f, false, true && arg_1.a.x)));
    return Struct_3(arg_1.c, 101513u | _wgslsmith_dot_vec2_u32(~vec2<u32>(60751u, 4294967295u), countOneBits(countOneBits(vec2<u32>(47859u, 0u)))), var_0.a, arg_1.d.zz, !var_0.e);
}

fn func_4(arg_0: Struct_4) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.d.x, func_2(select(true, true, true), Struct_2(vec3<bool>(false, arg_0.c, false), vec2<u32>(arg_0.a.b, 1u), Struct_1(arg_0.a.d.x, arg_0.a.a.b, vec4<bool>(arg_0.c, false, true, arg_0.c)), vec4<f32>(arg_0.a.d.x, -1000f, arg_0.a.a.a, 2072f), vec4<u32>(33278u, arg_0.d, 4294967295u, arg_0.a.b))).d.x, arg_0.a.d.x), vec3<f32>(_wgslsmith_f_op_f32(-1f), -1369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(arg_0.a.b, 0u), arg_0.a.d)).x * 1f)), arg_0.a.c.c.x)));
    let var_1 = func_2(!(any(vec2<bool>(arg_0.a.e.x, true)) && (arg_0.a.c.c.x == (true || arg_0.a.c.c.x))), Struct_2(arg_0.a.c.c.xyw, vec2<u32>(_wgslsmith_clamp_u32(18289u, arg_0.d, 54024u), abs(arg_0.d)) << (vec2<u32>(1u, max(1u, 36096u)) % vec2<u32>(32u)), arg_0.a.c, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.c.a - -148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.c.a, arg_0.a.a.a))), var_0.x, var_0.x), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(1u, 1u, arg_0.d, 0u), vec4<u32>(arg_0.d, 4294967295u, arg_0.a.b, arg_0.a.b), true), firstLeadingBit(vec4<u32>(arg_0.a.b, 76537u, 4687u, 0u) >> (vec4<u32>(6287u, arg_0.a.b, arg_0.d, 4294967295u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.b, 11744u, 20263u, arg_0.a.b), vec4<u32>(arg_0.a.b, 1u, 2046u, arg_0.d)))));
    var var_2 = firstLeadingBit(vec3<u32>(~var_1.b, var_1.b, max(arg_0.d, var_1.b)) | select(abs(vec3<u32>(arg_0.d, 121636u, arg_0.d)), ~vec3<u32>(45636u, var_1.b, 4294967295u), vec3<bool>(var_1.a.c.x, var_1.e.x, true))) << ((vec3<u32>(1u, 1u, abs(4990u)) >> (_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.b, 47554u, arg_0.a.b), vec3<u32>(65734u, var_1.b, 523u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.b, var_1.b, var_1.b), vec3<u32>(var_1.b, 38809u, arg_0.d), vec3<u32>(22662u, 1u, arg_0.a.b))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = Struct_5(countOneBits(_wgslsmith_clamp_vec3_u32(min(select(vec3<u32>(4294967295u, 15587u, 4294967295u), vec3<u32>(16734u, var_2.x, var_2.x), false), abs(vec3<u32>(var_1.b, 34740u, var_1.b))), countOneBits(vec3<u32>(var_2.x, var_1.b, 36637u) ^ vec3<u32>(var_1.b, var_1.b, var_1.b)), select(vec3<u32>(1u, 117196u, var_1.b), vec3<u32>(20472u, var_2.x, var_1.b), false) >> (select(vec3<u32>(4294967295u, var_1.b, var_2.x), vec3<u32>(56855u, var_2.x, arg_0.a.b), var_1.c.c.ywx) % vec3<u32>(32u)))), 41125i, select(!select(func_2(false, Struct_2(var_1.c.c.xxw, vec2<u32>(38446u, 57920u), arg_0.a.c, vec4<f32>(var_1.a.a, -148f, var_1.d.x, 523f), vec4<u32>(4294967295u, 4294967295u, var_2.x, arg_0.a.b))).a.c, select(var_1.a.c, var_1.a.c, false), select(arg_0.a.a.c, vec4<bool>(false, true, false, arg_0.a.c.c.x), false)), !(!arg_0.a.c.c), true));
    var var_4 = ~arg_0.d;
    return firstTrailingBit(firstLeadingBit(vec4<i32>(var_1.c.b, 17203i, var_3.b, 2147483647i)));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_5(vec3<u32>(~(_wgslsmith_add_u32(arg_3, 0u) << (11706u % 32u)), ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(41756u, 1u, arg_3, arg_1.e.x), arg_1.e), firstTrailingBit(arg_1.e)), ~arg_1.b.x), arg_2, vec4<bool>(true, any(!select(vec2<bool>(false, arg_1.c.c.x), arg_1.a.yz, arg_1.c.c.x)), any(!func_2(arg_1.c.c.x, arg_1).e.xx), all(vec4<bool>(true, any(vec4<bool>(false, arg_1.c.c.x, arg_1.a.x, arg_1.a.x)), false, any(vec2<bool>(arg_1.c.c.x, true))))));
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(7415u | arg_3, func_2(func_2(arg_1.c.c.x, Struct_2(vec3<bool>(var_0.c.x, false, false), var_0.a.xy, Struct_1(745f, 1i, arg_1.c.c), arg_1.d, vec4<u32>(9566u, 1u, arg_3, 0u))).a.c.x, Struct_2(arg_1.c.c.xyz, _wgslsmith_sub_vec2_u32(var_0.a.zy, arg_1.b), arg_1.c, vec4<f32>(arg_1.d.x, arg_1.c.a, -1131f, 1368f), vec4<u32>(arg_3, 42697u, 4294967295u, 4294967295u))).b, _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(~arg_3, 1u))), ~countOneBits(vec3<u32>(12726u, var_0.a.x, arg_1.b.x)) & ~select(~vec3<u32>(1u, 1u, arg_3), ~vec3<u32>(1u, 1u, var_0.a.x), any(vec2<bool>(false, true))));
    let var_2 = arg_1;
    var var_3 = 1u;
    let var_4 = func_2(arg_1.c.c.x, Struct_2(func_2(firstTrailingBit(9413i) >= u_input.a.x, Struct_2(!vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec2<u32>(0u, 4294967295u), func_2(var_0.c.x, arg_1).a, vec4<f32>(var_2.c.a, var_2.d.x, -1001f, 876f), var_2.e)).c.c.ywx, arg_1.e.wy, arg_1.c, _wgslsmith_f_op_vec4_f32(-arg_1.d), ~vec4<u32>(0u, arg_3, 38063u, 0u))).e;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_1.c.a), ~u_input.a.x, var_0.c), 6525u, Struct_1(var_2.d.x, var_2.c.b, vec4<bool>(true, all(select(vec2<bool>(true, arg_1.a.x), vec2<bool>(var_0.c.x, var_4.x), vec2<bool>(var_4.x, arg_1.a.x))), arg_1.a.x, true)), _wgslsmith_f_op_vec2_f32(arg_1.d.yy * arg_1.d.yx), !vec3<bool>(false, false, !var_4.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> i32 {
    var var_0 = func_5(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, -2147483647i) & vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x), vec4<i32>(-3866i, 0i, 7725i, -31268i))), func_4(Struct_4(func_2(true, Struct_2(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 0u), Struct_1(arg_1, 33311i, vec4<bool>(true, true, false, false)), vec4<f32>(arg_0.x, arg_1, 1000f, arg_1), vec4<u32>(88071u, 3169u, 1u, 4294967295u))), ~u_input.a.x, any(vec3<bool>(false, true, false)), 1u))), Struct_2(func_2(true, Struct_2(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), max(vec2<u32>(0u, 0u), vec2<u32>(50718u, 1u)), Struct_1(1246f, u_input.a.x, vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, 625f, arg_0.x), vec4<f32>(arg_0.x, arg_1, arg_0.x, arg_0.x))), ~vec4<u32>(37344u, 4294967295u, 33866u, 4294967295u))).a.c.zxw, ~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(4294967295u, 102714u)), vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1200f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, -754f, 1928f), vec4<f32>(-106f, -331f, -682f, arg_0.x), vec4<bool>(false, false, true, true)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_1, 1970f, arg_0.x)), ~vec4<u32>(1u, 1u, 1u, 1u)), ~select(u_input.a.x, -24956i, _wgslsmith_f_op_f32(-arg_1) <= arg_0.x), min(~(~1u), firstTrailingBit(abs(4694u))) | 4647u);
    var_0 = func_5(-(~countOneBits(firstTrailingBit(2147483647i))), Struct_2(var_0.c.c.zyw, ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 41013u), vec2<u32>(55214u, var_0.b) << (vec2<u32>(var_0.b, 56729u) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-var_0.a.a)), ~var_0.c.b, var_0.c.c), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -676f, 967f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.a), 652f, !var_0.e.x))), ~firstLeadingBit(min(vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<u32>(0u, 1u, 14568u, var_0.b)))), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(var_0.c.b, 60813i) << ((~var_0.b ^ 4294967295u) % 32u), var_0.c.b), var_0.b);
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-227f, var_0.a.a))), ~countOneBits(var_0.c.b), vec4<bool>(func_2(var_0.c.c.x, Struct_2(vec3<bool>(var_0.e.x, var_0.c.c.x, var_0.e.x), vec2<u32>(1441u, 21991u), Struct_1(arg_1, u_input.a.x, vec4<bool>(var_0.e.x, var_0.e.x, var_0.c.c.x, false)), vec4<f32>(757f, 366f, -1549f, -1258f), vec4<u32>(var_0.b, var_0.b, 73229u, var_0.b))).e.x || (var_0.b > var_0.b), func_5(~u_input.a.x, Struct_2(var_0.a.c.xzx, vec2<u32>(var_0.b, var_0.b), Struct_1(1932f, -1i, vec4<bool>(var_0.e.x, var_0.a.c.x, false, true)), vec4<f32>(419f, 1110f, arg_1, arg_1), vec4<u32>(var_0.b, var_0.b, var_0.b, 58270u)), ~0i, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, 54889u, 45734u), vec4<u32>(var_0.b, var_0.b, var_0.b, 4294967295u))).a.c.x, func_5(-u_input.a.x, Struct_2(var_0.e, vec2<u32>(21928u, var_0.b), Struct_1(150f, var_0.a.b, var_0.c.c), vec4<f32>(-134f, 1492f, -344f, 703f), vec4<u32>(var_0.b, var_0.b, 4294967295u, var_0.b)), -2147483647i, ~var_0.b).c.c.x, !var_0.e.x)), _wgslsmith_sub_u32(~func_5(-2349i, Struct_2(var_0.c.c.wyw, vec2<u32>(4294967295u, 75863u), var_0.a, vec4<f32>(var_0.c.a, var_0.a.a, -631f, var_0.c.a), vec4<u32>(4294967295u, var_0.b, var_0.b, 2757u)), u_input.a.x | u_input.a.x, 64361u).b, ~0u & var_0.b), var_0.c, _wgslsmith_f_op_vec2_f32(-arg_0), select(var_0.a.c.wzw, var_0.c.c.zxy, var_0.a.c.wyy));
    var_0 = Struct_3(func_2(all(!var_0.e), Struct_2(vec3<bool>(any(var_0.c.c.zy), any(vec3<bool>(var_0.c.c.x, true, var_0.e.x)), func_5(u_input.a.x, Struct_2(var_0.c.c.xxz, vec2<u32>(var_0.b, var_0.b), var_0.a, vec4<f32>(arg_0.x, -1296f, arg_0.x, arg_1), vec4<u32>(var_0.b, 0u, var_0.b, 90347u)), var_0.c.b, var_0.b).a.c.x), vec2<u32>(4294967295u, ~30041u), var_0.a, vec4<f32>(1000f, -1389f, _wgslsmith_div_f32(465f, arg_0.x), arg_0.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.b, 0u, var_0.b, 105221u), ~vec4<u32>(5898u, var_0.b, 10990u, var_0.b)))).a, 66581u << (_wgslsmith_div_u32((var_0.b & 87849u) << (~var_0.b % 32u), 0u) % 32u), Struct_1(func_5(-(~var_0.c.b), Struct_2(!var_0.e, vec2<u32>(var_0.b, 10835u) & vec2<u32>(54400u, var_0.b), var_0.a, vec4<f32>(arg_0.x, 481f, arg_1, 159f), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, var_0.b, 1u), vec4<u32>(1u, var_0.b, 1u, 11191u))), -1i, var_0.b).a.a, -1i, func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.a.x, 2147483647i), vec4<i32>(-2147483647i, var_0.a.b, var_0.a.b, -23334i)), Struct_2(vec3<bool>(false, var_0.a.c.x, var_0.a.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, 4294967295u), vec2<u32>(var_0.b, 0u)), Struct_1(-2217f, u_input.a.x, var_0.a.c), _wgslsmith_div_vec4_f32(vec4<f32>(-663f, 276f, -261f, -962f), vec4<f32>(-924f, -247f, 321f, arg_0.x)), vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b) << (vec4<u32>(1u, var_0.b, 56756u, 4294967295u) % vec4<u32>(32u))), -2147483647i, 16609u).c.c), arg_0, vec3<bool>(true, !(var_0.a.c.x && (false | var_0.a.c.x)), !var_0.c.c.x));
    let var_1 = arg_1;
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, -7718i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.b, var_0.a.b, -21949i) ^ vec3<i32>(2147483647i, 44998i, u_input.a.x), vec3<i32>(1i, u_input.a.x, var_0.a.b) ^ vec3<i32>(var_0.c.b, 2147483647i, u_input.a.x))) ^ _wgslsmith_div_i32(-(~u_input.a.x), 2147483647i), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-345f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * _wgslsmith_f_op_f32(-1044f + _wgslsmith_f_op_f32(523f + -467f)));
    var var_1 = firstTrailingBit(1u) & _wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(24779u, 13464u), vec2<u32>(1u, 37473u))), 4294967295u);
    var_1 = 24968u;
    let var_2 = select(all(vec2<bool>(true, true)), u_input.a.x > func_1(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -364f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, -472f))), _wgslsmith_f_op_f32(trunc(var_0))), false);
    var_1 = 688u;
    var_1 = 1u;
    let var_3 = Struct_5(vec3<u32>(1u, 1u, 1u), reverseBits(~abs(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), vec4<bool>(false, false, var_2, var_2));
    var var_4 = vec4<bool>(!(firstTrailingBit(var_3.a.x) >= _wgslsmith_div_u32(var_3.a.x, 1u)), any(var_3.c), true | !all(!var_3.c.ww), var_2);
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, 1534f, true)))) + var_0), 2147483647i & u_input.a.x, 11627u, func_5(reverseBits(-2147483647i), Struct_2(func_2(!var_5.c.x, Struct_2(var_5.c.yzx, vec2<u32>(0u, var_5.a.x), Struct_1(-293f, var_3.b, var_5.c), vec4<f32>(var_0, var_0, var_0, var_0), vec4<u32>(var_3.a.x, 21037u, var_5.a.x, var_5.a.x))).c.c.zxx, _wgslsmith_add_vec2_u32(var_3.a.xy, var_5.a.xz) << (_wgslsmith_add_vec2_u32(vec2<u32>(49863u, 25770u), vec2<u32>(var_3.a.x, 28307u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-272f * 506f), -2147483647i, !var_3.c), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(var_0 - -990f), _wgslsmith_f_op_f32(min(-1507f, 1000f)), -1004f), vec4<u32>(abs(58449u), firstLeadingBit(26254u), var_5.a.x, ~var_3.a.x)), u_input.a.x, 1u).a.a);
}

