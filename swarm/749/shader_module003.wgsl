struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: i32) -> bool {
    let var_0 = Struct_2(global0.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1140f, _wgslsmith_f_op_f32(select(arg_0, -1210f, false)), _wgslsmith_f_op_f32(min(-716f, 521f))) + vec3<f32>(_wgslsmith_f_op_f32(max(215f, arg_0)), -809f, _wgslsmith_f_op_f32(step(-922f, arg_0))))), ~vec2<u32>(1u, 1u), Struct_1(min(global0.x, u_input.a.x & u_input.a.x), true, !(all(vec3<bool>(false, true, true)) == true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, -726f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(796f * arg_0), arg_0, _wgslsmith_f_op_f32(floor(arg_0))) + vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), arg_0, _wgslsmith_f_op_f32(step(-293f, arg_0))))), countOneBits(~_wgslsmith_clamp_vec4_u32(~u_input.a, vec4<u32>(5190u, global0.x, 56028u, u_input.c.x), u_input.a | vec4<u32>(4294967295u, 54804u, u_input.a.x, 0u))));
    let var_1 = var_0.d.e;
    var var_2 = var_0.d;
    var var_3 = (all(select(!vec2<bool>(true, var_2.b), !vec2<bool>(var_0.d.c, var_0.d.b), vec2<bool>(true, true))) || !any(select(vec3<bool>(var_0.d.b, var_2.b, var_0.d.b), vec3<bool>(false, var_2.c, var_2.b), var_2.c))) & true;
    let var_4 = _wgslsmith_sub_u32(u_input.a.x, var_0.c.x);
    return var_2.c;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    let var_0 = select(vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(arg_2.x, true, false, true)) | true, select(true, false, func_3(arg_1.d.x, vec2<i32>(1i, 14838i), 3821i)), any(vec4<bool>(false, true, arg_2.x, arg_1.b)), !all(arg_2)), true);
    let var_1 = any(var_0);
    let var_2 = arg_1.e.yz;
    let var_3 = 47792u >> (~u_input.c.x % 32u);
    global0 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, arg_1.a, 4294967295u) | ~vec3<u32>(global0.x, 1u, var_3), u_input.a.yzw), vec3<u32>(abs(9222u), _wgslsmith_div_u32(arg_1.a, u_input.b) >> ((arg_1.a << (var_3 % 32u)) % 32u), u_input.b << (arg_1.a % 32u)));
    return arg_1.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = (~(u_input.a | u_input.a) ^ firstLeadingBit(u_input.a)) >> (firstLeadingBit(vec4<u32>(countOneBits(34136u & arg_2), select(countOneBits(arg_2), 0u, any(vec2<bool>(false, arg_1))), u_input.b, 0u)) % vec4<u32>(32u));
    global0 = vec3<u32>(~(~_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(var_0.x, 43122u))), countOneBits(~abs(global0.x)), u_input.a.x) & ~(~var_0.wxx);
    var var_1 = 2147483647i;
    global0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(~var_0.x, 4294967295u, ~(~80877u)), (vec3<u32>(_wgslsmith_clamp_u32(65689u, global0.x, global0.x), 59911u, func_2(arg_1, Struct_1(global0.x, arg_1, false, vec2<f32>(500f, -595f), vec3<f32>(-988f, 1024f, -276f)), vec2<bool>(arg_1, arg_1))) >> (~(~vec3<u32>(global0.x, arg_2, u_input.b)) % vec3<u32>(32u))) << (~max(~vec3<u32>(4294967295u, var_0.x, var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, var_0.x, global0.x), vec3<u32>(6285u, global0.x, u_input.b))) % vec3<u32>(32u)));
    let var_2 = -1000f;
    return Struct_1(max(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.x, _wgslsmith_clamp_u32(74434u, 0u, 40800u)), 1u), _wgslsmith_sub_u32(4294967295u, global0.x)), !arg_1, func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * -181f))), arg_0.wx, -2147483647i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, 1000f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(165f - var_2), -2020f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global0 = abs(_wgslsmith_sub_vec3_u32(u_input.a.xwz ^ _wgslsmith_mod_vec3_u32(u_input.a.xwy, u_input.a.zyx), u_input.a.xyy));
    let var_0 = vec3<i32>(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, arg_0.x), vec3<i32>(-35523i, arg_0.x, -63195i))), 0i)), ~arg_0.x, 3170i);
    global0 = vec3<u32>(arg_3.a, firstTrailingBit(0u), global0.x);
    let var_1 = ~max(abs(global0.zz), u_input.a.zy) ^ global0.xx;
    let var_2 = ~(-2147483647i);
    return Struct_2(vec2<u32>(~arg_2, 46335u >> (1u % 32u)), func_1(vec4<i32>(var_2, firstLeadingBit(1i), _wgslsmith_add_i32(-var_2, ~0i), 1i), arg_3.b, 0u).e, reverseBits(max(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(5631u, arg_2)), vec2<u32>(arg_3.a, 18708u) ^ vec2<u32>(var_1.x, arg_2))), func_1(vec4<i32>(abs(reverseBits(var_2)), -firstLeadingBit(var_0.x), -abs(var_2), var_0.x), arg_3.b, 15986u), abs(~u_input.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.d;
    var var_1 = ~(~arg_1.e.wzz);
    var var_2 = func_4(_wgslsmith_clamp_vec3_i32(~vec3<i32>(15002i, 2147483647i, 27539i) << (arg_1.e.yzz % vec3<u32>(32u)), min(min(vec3<i32>(-40910i, 1i, 2147483647i), -vec3<i32>(44740i, 0i, -1i)), ~vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i)), vec3<f32>(arg_1.d.d.x, _wgslsmith_f_op_f32(func_4(~vec3<i32>(15315i, 2147483647i, -23550i), vec3<f32>(1602f, -896f, var_0.e.x), 32313u, var_0).d.d.x * arg_2.e.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-311f, -1560f))))), 26082u, func_4(~(-abs(vec3<i32>(-13676i, -48459i, -13308i))), _wgslsmith_f_op_vec3_f32(-var_0.e), 6139u, func_1(select(vec4<i32>(41183i, -27730i, 44187i, -2771i), vec4<i32>(36962i, -1i, 56431i, -1345i), !vec4<bool>(false, false, arg_0.x, arg_1.d.b)), !(arg_2.c && arg_2.b), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(var_1.x, 79713u), ~3392u))).d);
    var_2 = func_4(vec3<i32>(1i, 0i, _wgslsmith_sub_i32(-2147483647i, 1i)), vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-166f + 374f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(1423f + -937f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1204f * arg_2.d.x)))))), min(_wgslsmith_add_u32(~4294967295u, 1u), var_0.a), Struct_1(var_0.a, true, true, _wgslsmith_f_op_vec2_f32(var_2.d.d + var_2.b.yy), _wgslsmith_f_op_vec3_f32(-var_2.b)));
    let var_3 = -22841i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), false), func_4(-vec3<i32>(7378i, 2147483647i, 13057i), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2287f, 997f, -161f))), firstTrailingBit(u_input.a.x), func_1(~vec4<i32>(-28682i, 38311i, 1i, 0i), true, ~global0.x)), func_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(50921i, 35236i, -1i, 0i), vec4<i32>(1i, 48182i, -4957i, 33555i), vec4<i32>(59447i, 0i, -38705i, 1i)), false, u_input.b >> (~176u % 32u)));
    let var_1 = vec2<bool>(var_0.x, !var_0.x);
    let var_2 = func_4(vec3<i32>(4827i, ~firstLeadingBit(_wgslsmith_sub_i32(3573i, -30205i)), -_wgslsmith_clamp_i32(i32(-1i) * -1i, 1i, i32(-1i) * -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(firstTrailingBit(vec4<i32>(29488i, 0i, 1i, 0i)), true, u_input.a.x).e)), max(56828u, ~(~0u)), func_4(vec3<i32>(1i, 1i, 1i) << (countOneBits(vec3<u32>(4355u, 0u, 9792u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-186f * -820f), _wgslsmith_f_op_f32(trunc(210f)), 133f)), global0.x, Struct_1(4294967295u, var_1.x, true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(657f, -1237f) - vec2<f32>(-1944f, -689f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-177f, -1000f, -360f) + vec3<f32>(820f, -224f, -227f))))).d);
    var var_3 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(83i, 29375i), ~vec2<i32>(-32917i, -2147483647i)), _wgslsmith_sub_i32(~2147483647i, -1i)), vec2<i32>(-(i32(-1i) * -1i), 77933i), abs(-vec2<i32>(1i, 1i)));
    let var_4 = vec3<i32>(min(-var_3.x, var_3.x), _wgslsmith_clamp_i32(var_3.x, ~_wgslsmith_sub_i32(~(-2147483647i), abs(var_3.x)), -15080i), _wgslsmith_dot_vec4_i32((-vec4<i32>(var_3.x, var_3.x, 2147483647i, -2147483647i) | _wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, 0i, var_3.x, 1i), vec4<i32>(var_3.x, var_3.x, 2147483647i, var_3.x))) & firstLeadingBit(~vec4<i32>(0i, var_3.x, var_3.x, 0i)), vec4<i32>(0i, select(2147483647i, 1i, var_2.d.b), min(13796i, 1i), -24895i) & vec4<i32>(~var_3.x, -var_3.x, 2147483647i, -17085i)));
    let var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_4.x, 13638i), var_3.x, var_3.x ^ (0i | var_3.x)), vec3<i32>(_wgslsmith_sub_i32(var_4.x, var_4.x) | var_3.x, var_3.x, var_3.x)), 1u & (20774u << (var_5.x % 32u)));
}

