struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> vec4<i32> {
    global0 = 0i;
    global0 = 25047i;
    var var_0 = vec4<i32>(-30050i & u_input.b, -2147483647i, -46418i, u_input.b);
    var var_1 = 39330u;
    let var_2 = !arg_2.x;
    return vec4<i32>(-u_input.a.x, firstTrailingBit((_wgslsmith_mult_i32(var_0.x, -27862i) >> (65821u % 32u)) | 0i), ~u_input.a.x, firstLeadingBit(u_input.b));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    var var_0 = ~(~func_3(arg_2.x, arg_2.xy, vec3<bool>(arg_1.d, false, true)) << (vec4<u32>(~arg_1.c.x, ~arg_0, 1u, arg_1.c.x) % vec4<u32>(32u))) | firstTrailingBit(-(~min(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.b), vec4<i32>(u_input.b, 10974i, 0i, 2147483647i))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-876f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1370f), arg_2.x);
    var var_2 = arg_1;
    var var_3 = Struct_3(Struct_2(Struct_1(any(vec3<bool>(var_2.a, arg_1.d, true)), 693f, ~vec3<u32>(1u, arg_1.c.x, 24107u), !var_2.d), arg_1, arg_1, arg_1, Struct_1(false, -530f, vec3<u32>(arg_1.c.x, 19044u | arg_0, var_2.c.x), !var_2.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(349f - arg_2.x), arg_1.b)), arg_1.b, _wgslsmith_f_op_f32(var_2.b * 1000f)), arg_1, -(-2147483647i >> (~countOneBits(arg_0) % 32u)), Struct_2(arg_1, arg_1, arg_1, arg_1, Struct_1(!arg_1.a, arg_2.x, _wgslsmith_sub_vec3_u32(var_2.c, var_2.c & vec3<u32>(var_2.c.x, 1u, arg_1.c.x)), arg_1.d)));
    var var_4 = var_3.e.c.d;
    return arg_1.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_5) -> Struct_2 {
    global0 = -_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.d, 2147483647i, arg_2.d, 52923i), u_input.a), ~firstLeadingBit(abs(vec4<i32>(arg_3.b.d, 43804i, 2147483647i, -43094i))));
    let var_0 = !func_2(1u, arg_3.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.b.a.e.b, arg_3.b.a.d.b, 185f, -1246f))) + vec4<f32>(1151f, arg_3.b.e.a.b, arg_2.b.x, 942f))) & (arg_2.a.b.c.x != reverseBits(~52u));
    global0 = abs(_wgslsmith_sub_i32(max(_wgslsmith_mult_i32(1i, arg_2.d ^ -6992i), -arg_3.a.a), arg_3.a.a));
    let var_1 = -5556i;
    var var_2 = _wgslsmith_mult_u32(~(4294967295u >> (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_2.a.e.c.x, 4294967295u, 1u, 4294967295u)), reverseBits(vec4<u32>(arg_2.a.e.c.x, 4294967295u, 4294967295u, arg_2.c.c.x))) % 32u)), arg_3.b.e.a.c.x);
    return Struct_2(arg_2.a.d, Struct_1(arg_0.x, _wgslsmith_f_op_f32(-1041f + _wgslsmith_f_op_f32(trunc(arg_3.b.b.x))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(25276u, 4294967295u, arg_3.b.a.a.c.x), vec3<u32>(4294967295u, 0u, arg_3.b.c.c.x)), abs(vec3<u32>(0u, arg_3.b.a.a.c.x, 2228u))), false), Struct_1(arg_2.c.b <= _wgslsmith_f_op_f32(f32(-1f) * -1864f), _wgslsmith_f_op_f32(-arg_3.b.a.d.b), arg_3.b.c.c, true), arg_3.b.a.d, Struct_1(all(!vec3<bool>(false, arg_3.b.a.a.d, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b.x, arg_3.b.e.a.b, true)) - _wgslsmith_f_op_f32(trunc(arg_2.e.c.b))) + arg_3.b.c.b), vec3<u32>(6277u, ~(~arg_2.a.a.c.x), ~1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 44211u), vec2<u32>(15810u, 24747u)), 39974u << (arg_3.b.c.c.x % 32u), _wgslsmith_div_u32(arg_3.b.a.e.c.x, 15202u)) < arg_2.c.c.x));
}

fn func_1() -> Struct_2 {
    let var_0 = 54498u;
    global0 = -1i;
    global0 = i32(-1i) * -1i;
    return func_4(select(!vec3<bool>(all(vec2<bool>(true, true)), true, u_input.b < 1i), vec3<bool>(select(var_0 <= var_0, any(vec3<bool>(false, true, true)), any(vec2<bool>(false, false))), true, true), vec3<bool>(func_2(4294967295u, Struct_1(false, 1675f, vec3<u32>(4294967295u, 58768u, var_0), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, 701f, -498f, 733f))), true, true)), Struct_4(-1i), Struct_3(Struct_2(Struct_1(true, _wgslsmith_f_op_f32(step(-568f, -1703f)), vec3<u32>(85588u, var_0, 1u) >> (vec3<u32>(0u, var_0, 1u) % vec3<u32>(32u)), false), Struct_1(false, -133f, vec3<u32>(var_0, 30115u, 78542u), true), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -684f), ~vec3<u32>(var_0, 40908u, 0u), true), Struct_1(true, _wgslsmith_f_op_f32(969f - -986f), ~vec3<u32>(var_0, var_0, 1u), any(vec4<bool>(true, true, true, false))), Struct_1(all(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -603f), ~vec3<u32>(var_0, var_0, var_0), true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f + 1927f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(368f, 707f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1193f + -1206f) - _wgslsmith_f_op_f32(f32(-1f) * -1458f))), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2027f)) + _wgslsmith_f_op_f32(abs(677f))), select(~vec3<u32>(4294967295u, 1u, 18980u), vec3<u32>(1u, var_0, 53376u) | vec3<u32>(2046u, var_0, 8666u), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), true), (_wgslsmith_div_i32(1i, 11135i) & _wgslsmith_add_i32(u_input.a.x, u_input.b)) ^ -u_input.a.x, Struct_2(Struct_1(true, _wgslsmith_f_op_f32(1993f + 877f), ~vec3<u32>(var_0, 14155u, var_0), true), Struct_1(func_2(98748u, Struct_1(false, -942f, vec3<u32>(1u, var_0, 67233u), true), vec4<f32>(421f, -447f, -313f, 1173f)), _wgslsmith_f_op_f32(trunc(-1389f)), vec3<u32>(124383u, var_0, 5646u), true), Struct_1(true, _wgslsmith_f_op_f32(step(-579f, -370f)), abs(vec3<u32>(50870u, 0u, var_0)), true), Struct_1(true, _wgslsmith_f_op_f32(-354f - -1125f), vec3<u32>(var_0, 0u, var_0) ^ vec3<u32>(var_0, var_0, var_0), true), Struct_1(true, _wgslsmith_f_op_f32(-617f - 782f), firstLeadingBit(vec3<u32>(0u, 4294967295u, 1u)), true))), Struct_5(Struct_4(min(u_input.b, _wgslsmith_mod_i32(1i, u_input.b))), Struct_3(Struct_2(Struct_1(true, 862f, vec3<u32>(var_0, 18749u, 49530u), false), Struct_1(false, 359f, vec3<u32>(var_0, var_0, 16958u), false), Struct_1(false, 570f, vec3<u32>(4294967295u, var_0, 4294967295u), true), Struct_1(false, 676f, vec3<u32>(var_0, var_0, var_0), true), Struct_1(true, 1255f, vec3<u32>(var_0, 4294967295u, var_0), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, -587f, 657f)), Struct_1(func_2(var_0, Struct_1(true, -208f, vec3<u32>(var_0, var_0, 0u), false), vec4<f32>(585f, 1301f, 1000f, -251f)), -245f, vec3<u32>(36628u, 1u, var_0) | vec3<u32>(4294967295u, 0u, var_0), true), -_wgslsmith_dot_vec2_i32(vec2<i32>(14967i, -2147483647i), u_input.a.zx), Struct_2(Struct_1(false, -108f, vec3<u32>(79144u, var_0, 8906u), false), Struct_1(true, -846f, vec3<u32>(1u, var_0, 0u), false), Struct_1(false, 933f, vec3<u32>(1u, var_0, var_0), true), Struct_1(true, 372f, vec3<u32>(var_0, 65812u, 65391u), false), Struct_1(true, 344f, vec3<u32>(var_0, var_0, 22806u), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_4(reverseBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.b), u_input.a.x & u_input.a.x))), Struct_3(func_1(), vec3<f32>(1282f, _wgslsmith_f_op_f32(f32(-1f) * -1829f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(368f)), _wgslsmith_f_op_f32(sign(-1268f))))), func_4(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)), Struct_4(_wgslsmith_div_i32(u_input.a.x, -24714i)), Struct_3(func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-561f, -667f, -257f)), func_1().c, 6349i, Struct_2(Struct_1(false, 282f, vec3<u32>(31054u, 26187u, 4294967295u), true), Struct_1(false, -696f, vec3<u32>(4294967295u, 67134u, 31988u), true), Struct_1(false, -789f, vec3<u32>(105955u, 1u, 0u), false), Struct_1(false, -296f, vec3<u32>(4294967295u, 10253u, 0u), true), Struct_1(false, 789f, vec3<u32>(1u, 16343u, 4294967295u), true))), Struct_5(Struct_4(u_input.a.x), Struct_3(Struct_2(Struct_1(false, -1777f, vec3<u32>(1u, 0u, 118490u), true), Struct_1(false, 787f, vec3<u32>(8900u, 2979u, 115603u), false), Struct_1(true, 1445f, vec3<u32>(0u, 0u, 52512u), false), Struct_1(true, -609f, vec3<u32>(51049u, 0u, 1u), false), Struct_1(false, -1121f, vec3<u32>(89232u, 73021u, 95u), false)), vec3<f32>(-2109f, -710f, -330f), Struct_1(true, -547f, vec3<u32>(2122u, 33772u, 0u), false), u_input.b, Struct_2(Struct_1(false, 681f, vec3<u32>(54955u, 54148u, 0u), false), Struct_1(false, -660f, vec3<u32>(1u, 23432u, 0u), false), Struct_1(true, -443f, vec3<u32>(52285u, 18593u, 57663u), true), Struct_1(true, -763f, vec3<u32>(4294967295u, 1u, 4294967295u), true), Struct_1(false, 509f, vec3<u32>(1u, 1u, 64599u), false))))).d, u_input.b, func_1()));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.e.b.b, var_0.b.c.b, var_0.b.e.c.b, var_0.b.e.a.b) + vec4<f32>(var_0.b.b.x, -213f, var_0.b.b.x, -749f)))))))));
    global0 = -_wgslsmith_sub_i32(u_input.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.a.a, var_0.a.a, u_input.a.x), u_input.a));
    let var_2 = func_1().e.b;
    let var_3 = vec4<u32>(~(~4294967295u), 66248u ^ _wgslsmith_dot_vec3_u32(var_0.b.a.c.c, abs(~var_0.b.e.c.c)), _wgslsmith_sub_u32(21675u, ~var_0.b.a.a.c.x), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 0u, firstTrailingBit(var_0.b.a.e.c.x)) & vec3<u32>(var_3.x, _wgslsmith_sub_u32(~var_0.b.a.d.c.x, var_0.b.a.c.c.x), 502u), func_4(vec3<bool>(func_1().c.a, var_0.b.c.a, false), var_0.a, var_0.b, var_0).a.c);
}

