struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    let var_0 = arg_0.b.d.b.a;
    var var_1 = arg_0;
    var_1 = Struct_5(var_1.a, var_1.b);
    var_1 = Struct_5(_wgslsmith_mod_vec3_i32(reverseBits(var_1.a), arg_0.a), Struct_4(arg_0.a.x, arg_0.b.b, _wgslsmith_mod_vec3_u32(~arg_0.b.c, arg_0.b.c), Struct_3(arg_0.b.d.b, var_1.b.e, -(u_input.a << (var_1.b.c.x % 32u))), Struct_1(select(!vec4<bool>(arg_0.b.e.a.x, false, var_0.x, var_1.b.e.a.x), select(vec4<bool>(arg_0.b.e.a.x, var_0.x, false, arg_0.b.d.b.a.x), var_1.b.d.a.a, vec4<bool>(var_1.b.e.a.x, false, var_0.x, arg_0.b.d.b.a.x)), false))));
    var var_2 = Struct_3(Struct_1(select(!(!vec4<bool>(false, var_1.b.d.a.a.x, var_0.x, true)), select(select(var_1.b.e.a, arg_0.b.d.b.a, var_1.b.d.b.a.x), vec4<bool>(var_1.b.d.a.a.x, var_0.x, false, var_0.x), var_0), var_0.x)), arg_0.b.e, ~var_1.a.x);
    return vec4<bool>(!all(vec3<bool>(true, any(var_0.xxy), true)), true, false, var_1.b.c.x != _wgslsmith_dot_vec2_u32(var_1.b.c.xy, vec2<u32>(0u, ~var_1.b.c.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: i32) -> Struct_5 {
    let var_0 = Struct_5(vec3<i32>(-2147483647i, 2147483647i, 40604i), Struct_4(firstLeadingBit(u_input.a), Struct_2(-650f), ~(~(~vec3<u32>(28774u, 0u, 1u))), Struct_3(Struct_1(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), Struct_1(!vec4<bool>(false, true, arg_0.x, false)), max(-30i, u_input.a) >> (_wgslsmith_div_u32(0u, 63661u) % 32u)), Struct_1(!func_3(Struct_5(vec3<i32>(-2147483647i, -15884i, arg_2), Struct_4(u_input.a, Struct_2(747f), vec3<u32>(0u, 1u, 2902u), Struct_3(Struct_1(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), Struct_1(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), -1i), Struct_1(vec4<bool>(false, false, arg_0.x, true))))))));
    let var_1 = ~var_0.a.xx;
    return Struct_5(vec3<i32>(_wgslsmith_mult_i32(min(_wgslsmith_dot_vec2_i32(var_0.a.xz, vec2<i32>(11117i, var_0.b.d.c)), -15022i | var_1.x), ~1i), -55506i, 25697i), Struct_4(2147483647i, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1089f, var_0.b.b.a)), _wgslsmith_div_f32(-146f, -231f))), var_0.b.c, var_0.b.d, var_0.b.d.b));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec3<i32>) -> Struct_4 {
    var var_0 = abs(0u);
    let var_1 = arg_1.b.d;
    let var_2 = func_2(arg_1.b.d.b.a.xyx, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -263f), arg_1.b.b.a, true)), arg_1.b.b.a, _wgslsmith_f_op_f32(max(1000f, arg_1.b.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1210f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b.a, arg_1.b.b.a, arg_1.b.b.a, arg_1.b.b.a) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(250f, arg_1.b.b.a, arg_1.b.b.a, arg_1.b.b.a))))))), -(~firstTrailingBit(i32(-1i) * -46405i))).b.d.b;
    var var_3 = Struct_1(func_3(arg_1));
    var_3 = Struct_1(var_3.a);
    return Struct_4(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-func_2(var_1.a.a.xxx, vec4<f32>(-2766f, arg_1.b.b.a, arg_1.b.b.a, -1222f), arg_2.x).b.a, 1i, u_input.a), _wgslsmith_dot_vec2_i32(arg_2.xx, arg_2.yx << (arg_1.b.c.yz % vec2<u32>(32u)))), func_2(var_3.a.wzz, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b.b.a, arg_1.b.b.a, 268f, 1289f))))), ~(~_wgslsmith_sub_i32(-2147483647i, arg_2.x))).b.b, ~_wgslsmith_add_vec3_u32(func_2(func_3(Struct_5(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.b.d.c), arg_1.b)).zzy, vec4<f32>(arg_1.b.b.a, arg_1.b.b.a, arg_1.b.b.a, -485f), u_input.a).b.c, vec3<u32>(arg_1.b.c.x, ~arg_1.b.c.x, _wgslsmith_sub_u32(arg_1.b.c.x, arg_1.b.c.x))), func_2(arg_1.b.e.a.yyw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b.a, -418f, arg_1.b.b.a, -1245f) * vec4<f32>(-206f, arg_1.b.b.a, arg_1.b.b.a, -1216f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1322f, arg_1.b.b.a, arg_1.b.b.a, -1918f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1118f, 732f, arg_1.b.b.a, arg_1.b.b.a), vec4<f32>(arg_1.b.b.a, arg_1.b.b.a, arg_1.b.b.a, arg_1.b.b.a)))), -arg_1.a.x << ((_wgslsmith_mult_u32(arg_1.b.c.x, 4294967295u) ^ arg_1.b.c.x) % 32u)).b.d, var_2);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    let var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c.x >> (arg_0.c.x % 32u), arg_0.c.x) ^ (~arg_0.c.xx | countOneBits(arg_0.c.xz)), _wgslsmith_div_vec2_u32(vec2<u32>(~4795u, arg_0.c.x), firstLeadingBit(~arg_0.c.zz)));
    let var_1 = func_2(func_2(arg_0.e.a.yyw, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-973f, _wgslsmith_f_op_f32(arg_0.b.a * arg_0.b.a), -541f, -151f), vec4<f32>(arg_0.b.a, _wgslsmith_f_op_f32(sign(arg_0.b.a)), _wgslsmith_f_op_f32(-482f * -1645f), arg_0.b.a))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.d.c, arg_0.d.c, -3001i, -2147483647i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_0.d.c, u_input.a, arg_0.a, 39962i), select(vec4<i32>(u_input.a, u_input.a, arg_0.a, u_input.a), vec4<i32>(arg_0.d.c, -25751i, u_input.a, 11586i), vec4<bool>(false, false, true, arg_1))))).b.d.b.a.xwz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-980f, arg_0.b.a, 410f, -1170f)) + vec4<f32>(arg_0.b.a, -1120f, arg_0.b.a, arg_0.b.a)))), -60414i & select(~abs(u_input.a), abs(-arg_0.a), _wgslsmith_dot_vec3_u32(arg_0.c, arg_0.c) > (arg_0.c.x >> (arg_0.c.x % 32u)))).b.b;
    let var_2 = firstTrailingBit(~(~var_0.x));
    var var_3 = vec4<bool>(func_3(Struct_5(~(-vec3<i32>(arg_0.a, u_input.a, 40680i)), func_2(arg_0.e.a.www, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1762f, var_1.a, var_1.a)), -36536i).b)).x, !(!arg_2.x | select(any(vec3<bool>(true, arg_1, true)), var_0.x > arg_0.c.x, 621f < arg_0.b.a)), any(arg_0.d.a.a), arg_2.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, var_1.a, -716f), vec3<f32>(1535f, arg_0.b.a, -1054f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, arg_0.b.a, var_1.a), vec3<f32>(var_1.a, -609f, -1169f), arg_0.e.a.yyw))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(113f, -1666f, -2448f) * vec3<f32>(var_1.a, arg_0.b.a, -1000f))))))));
    return _wgslsmith_f_op_f32(-arg_0.b.a);
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_4(any(vec4<bool>(true, true, true, true)), func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1253f, -1903f, 547f, 2047f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-448f, 194f, -1000f, -532f))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 2147483647i), vec3<i32>(u_input.a, u_input.a, 1i)) & 0i), ~firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.a, 3373i, u_input.a)))), _wgslsmith_mult_u32((0u << (1u % 32u)) << (1u % 32u), ~(~0u)) >= ((firstTrailingBit(30926u) & 48120u) | 1u), !func_3(func_2(func_3(Struct_5(vec3<i32>(u_input.a, u_input.a, 1i), Struct_4(-11112i, Struct_2(1841f), vec3<u32>(62003u, 4294967295u, 0u), Struct_3(Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, false, true)), u_input.a), Struct_1(vec4<bool>(true, false, true, false))))).yzx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, 460f, 618f, 366f)), u_input.a)).xw));
    let var_1 = Struct_4(countOneBits(_wgslsmith_mult_i32(max(u_input.a, func_4(false, Struct_5(vec3<i32>(u_input.a, u_input.a, -19854i), Struct_4(-2147483647i, Struct_2(-219f), vec3<u32>(0u, 62740u, 1u), Struct_3(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, true)), u_input.a), Struct_1(vec4<bool>(false, false, false, true)))), vec3<i32>(-2147483647i, 1i, u_input.a)).d.c), u_input.a)), func_4(_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-27227i, 0i), vec2<i32>(0i, -33571i))) >= 0i, Struct_5(~vec3<i32>(49683i, u_input.a, 59857i), Struct_4(~u_input.a, func_4(false, Struct_5(vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_4(u_input.a, Struct_2(821f), vec3<u32>(1u, 50713u, 37182u), Struct_3(Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, false, false)), -11718i), Struct_1(vec4<bool>(false, true, true, true)))), vec3<i32>(-36774i, u_input.a, 26484i)).b, ~vec3<u32>(4294967295u, 0u, 4294967295u), func_4(false, Struct_5(vec3<i32>(u_input.a, -2244i, 0i), Struct_4(34862i, Struct_2(-158f), vec3<u32>(1u, 11096u, 23180u), Struct_3(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), 24488i), Struct_1(vec4<bool>(true, false, true, false)))), vec3<i32>(u_input.a, 0i, u_input.a)).d, Struct_1(vec4<bool>(false, true, true, false)))), vec3<i32>(abs(firstTrailingBit(u_input.a)), u_input.a, u_input.a)).b, vec3<u32>(1u, 1u, 1u) | max(func_4(true, func_2(vec3<bool>(false, false, true), vec4<f32>(var_0, 201f, var_0, var_0), -2147483647i), vec3<i32>(0i, u_input.a, u_input.a)).c, vec3<u32>(1u >> (0u % 32u), ~18898u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(130874u, 4294967295u, 45854u, 30647u)))), Struct_3(Struct_1(vec4<bool>(true, true, true, false)), func_2(vec3<bool>(true, true, true), vec4<f32>(1257f, var_0, var_0, var_0), u_input.a).b.e, ~1i), func_4(func_3(func_2(vec3<bool>(true, true, true), vec4<f32>(-2099f, var_0, var_0, 1293f), min(u_input.a, -24954i))).x, func_2(func_2(func_2(vec3<bool>(false, true, true), vec4<f32>(var_0, -1214f, var_0, 476f), -2147483647i).b.e.a.xzw, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1483f, -249f, var_0, var_0) - vec4<f32>(679f, 348f, 222f, var_0)), 0i).b.d.b.a.zyx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(850f, -2728f, var_0, -896f), vec4<f32>(140f, 789f, var_0, var_0))), 0i), ~(~vec3<i32>(u_input.a, 84744i, 0i)) | vec3<i32>(1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-13308i, u_input.a, u_input.a), vec3<i32>(u_input.a, -69733i, u_input.a)))).e);
    var var_2 = func_2(var_1.d.a.a.zzy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1572f, var_1.b.a, var_0, var_1.b.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_0, var_1.b.a, var_0))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1028f, -477f, 623f, var_1.b.a)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_1.b.a, -500f, -1007f) - vec4<f32>(var_1.b.a, -164f, var_0, var_1.b.a)))), vec4<f32>(-229f, var_0, _wgslsmith_f_op_f32(ceil(1032f)), -127f), vec4<bool>(all(vec3<bool>(var_1.d.b.a.x, false, true)), true, true, 21398u >= var_1.c.x)))), -firstLeadingBit(-_wgslsmith_add_i32(2147483647i, -32714i)));
    var var_3 = select(var_1.e.a.zww, var_1.d.a.a.zzw, true);
    var_2 = Struct_5(func_2(vec3<bool>(!(2147483647i < var_1.a), all(vec4<bool>(false, var_2.b.d.b.a.x, var_1.d.b.a.x, var_1.d.a.a.x)) && true, var_3.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1500f), -644f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2284f), _wgslsmith_mod_i32(var_1.d.c, u_input.a)).a, func_2(!vec3<bool>(any(var_2.b.e.a), any(var_1.e.a), any(var_1.e.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, var_0, var_2.b.b.a, var_2.b.b.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_2.b.b.a, 747f, var_0)) * vec4<f32>(-312f, var_2.b.b.a, 1000f, -1241f))), 12335i).b);
    return vec3<i32>(-36537i, ~min(u_input.a, 3102i) & abs(var_2.b.a), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-(~_wgslsmith_div_i32(min(1i, -11644i), _wgslsmith_dot_vec2_i32(vec2<i32>(15896i, u_input.a), vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = !vec4<bool>(false, all(vec4<bool>(true, true, true, all(vec2<bool>(true, false)))), true, ~reverseBits(-2147483647i) > _wgslsmith_mod_i32(1i, var_0));
    let var_2 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-u_input.a, ~var_0, var_0)), func_1());
    var var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~(~7270u), ~min(4294967295u, 41907u), min(109111u, 4294967295u) >> (1u % 32u), 1u), select(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(4294967295u, 26944u, 0u, 0u), vec4<u32>(4294967295u, 0u, 25289u, 59270u), vec4<bool>(false, false, var_1.x, var_1.x)), vec4<bool>(false, false, false, false)) >> (vec4<u32>(func_4(false, Struct_5(var_2, Struct_4(var_2.x, Struct_2(290f), vec3<u32>(1u, 1u, 16889u), Struct_3(Struct_1(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), Struct_1(vec4<bool>(true, true, var_1.x, true)), var_0), Struct_1(vec4<bool>(true, false, var_1.x, true)))), vec3<i32>(u_input.a, var_0, -1i)).c.x, 1u, 0u, 105760u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1708u, 5668u), vec4<u32>(4294967295u, 33310u, 5713u, 1u)), true), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(abs(~1u), countOneBits(func_4(var_1.x, Struct_5(vec3<i32>(0i, var_0, -2147483647i), Struct_4(var_2.x, Struct_2(-596f), vec3<u32>(63242u, 4294967295u, 4294967295u), Struct_3(Struct_1(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), Struct_1(vec4<bool>(false, var_1.x, false, true)), var_0), Struct_1(vec4<bool>(false, var_1.x, false, false)))), var_2).c.x), min(~1u, 59524u), func_4(true, Struct_5(var_2, Struct_4(u_input.a, Struct_2(290f), vec3<u32>(8232u, 6176u, 0u), Struct_3(Struct_1(vec4<bool>(false, var_1.x, false, false)), Struct_1(vec4<bool>(false, false, var_1.x, true)), -53881i), Struct_1(vec4<bool>(var_1.x, var_1.x, true, var_1.x)))), func_2(vec3<bool>(var_1.x, var_1.x, false), vec4<f32>(135f, -692f, -1275f, -1587f), -1i).a).c.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 1000f))))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1106f * -763f), _wgslsmith_f_op_f32(-1082f - -1086f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1912f, 1000f), vec2<f32>(456f, 593f))))))));
    var var_5 = Struct_3(Struct_1(!select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), Struct_1(vec4<bool>(all(!vec3<bool>(var_1.x, true, true)), !(var_1.x & var_1.x), var_1.x, var_1.x)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(u_input.a, -21392i), -firstTrailingBit(-35043i)), abs(u_input.a)));
    var var_6 = _wgslsmith_f_op_f32(func_5(func_2(!vec3<bool>(var_3.x == var_3.x, var_5.b.a.x && false, var_3.x != var_3.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, -159f, -1181f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 353f, var_4.x, var_4.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_2.yz, var_2.zy), var_0), var_2.zx)).b, true, !(!vec2<bool>(!var_1.x, true))));
    var_3 = vec4<u32>(_wgslsmith_div_u32(var_3.x, countOneBits(max(var_3.x, var_3.x)) & (countOneBits(var_3.x) | func_2(vec3<bool>(false, true, var_1.x), vec4<f32>(-1383f, 1206f, 902f, 1556f), 40661i).b.c.x)), _wgslsmith_mult_u32(1u, var_3.x), ~(~6345u), var_3.x);
    let var_7 = 30887u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(806f, _wgslsmith_f_op_f32(abs(-422f)), 1f, var_4.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, var_4.x, 1097f, -663f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, 311f, var_4.x)))))), ~(select(reverseBits(vec4<u32>(var_7, 25022u, 96298u, 1u)), vec4<u32>(23232u, var_3.x, var_7, 4294967295u), var_5.a.a) | _wgslsmith_mult_vec4_u32(~vec4<u32>(var_7, 23112u, var_3.x, 1u), min(vec4<u32>(4294967295u, var_7, var_3.x, 47428u), vec4<u32>(16637u, 1u, 28178u, var_3.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1323f))) + var_4.x))));
}

