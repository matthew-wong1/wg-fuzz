struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(1u, vec4<i32>(0i, 3059i, 0i, -9524i), Struct_1(829f, true, 0u, vec4<bool>(false, false, false, false), 24585u), vec3<bool>(true, false, false), vec3<u32>(0u, 18885u, 55108u)), Struct_2(34302u, vec4<i32>(-1i, i32(-2147483648), 1i, -30769i), Struct_1(-1083f, true, 11120u, vec4<bool>(false, false, false, true), 4294967295u), vec3<bool>(true, false, true), vec3<u32>(4294967295u, 67252u, 8179u)), Struct_2(1u, vec4<i32>(-61149i, -1i, 25934i, -1i), Struct_1(-165f, true, 1u, vec4<bool>(true, true, true, true), 40580u), vec3<bool>(false, true, true), vec3<u32>(4294967295u, 45727u, 0u)), Struct_2(27478u, vec4<i32>(-33673i, 1i, i32(-2147483648), -1i), Struct_1(-240f, true, 21079u, vec4<bool>(true, false, false, true), 0u), vec3<bool>(true, true, false), vec3<u32>(0u, 1u, 31631u)), Struct_2(0u, vec4<i32>(1i, 27818i, i32(-2147483648), 1i), Struct_1(958f, true, 0u, vec4<bool>(true, false, true, false), 4294967295u), vec3<bool>(false, false, false), vec3<u32>(1u, 29441u, 14197u)), Struct_2(2449u, vec4<i32>(27445i, -33890i, i32(-2147483648), -1i), Struct_1(620f, false, 20107u, vec4<bool>(false, false, true, false), 0u), vec3<bool>(true, true, false), vec3<u32>(26280u, 5373u, 0u)), Struct_2(0u, vec4<i32>(-27696i, 0i, 1i, 25967i), Struct_1(1181f, true, 4294967295u, vec4<bool>(true, true, false, false), 4294967295u), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 1u)), Struct_2(68162u, vec4<i32>(27686i, i32(-2147483648), i32(-2147483648), -21586i), Struct_1(-1740f, false, 13316u, vec4<bool>(false, true, true, true), 1u), vec3<bool>(true, true, true), vec3<u32>(1u, 4294967295u, 36224u)), Struct_2(61271u, vec4<i32>(2147483647i, -35390i, -2067i, 2147483647i), Struct_1(-1072f, false, 67276u, vec4<bool>(true, false, true, true), 1u), vec3<bool>(false, true, true), vec3<u32>(1u, 1u, 141652u)), Struct_2(4294967295u, vec4<i32>(2147483647i, 23215i, 49967i, 2147483647i), Struct_1(1242f, true, 4294967295u, vec4<bool>(false, true, true, false), 7412u), vec3<bool>(true, false, true), vec3<u32>(4294967295u, 30551u, 4294967295u)), Struct_2(130363u, vec4<i32>(i32(-2147483648), -4875i, -44124i, 1i), Struct_1(461f, false, 15823u, vec4<bool>(true, true, false, false), 1u), vec3<bool>(true, true, false), vec3<u32>(46832u, 0u, 0u)), Struct_2(1u, vec4<i32>(1i, -2289i, 30089i, -1i), Struct_1(517f, true, 1u, vec4<bool>(false, true, false, true), 4294967295u), vec3<bool>(true, true, false), vec3<u32>(2253u, 1u, 35357u)), Struct_2(22327u, vec4<i32>(-20376i, -4655i, 0i, -1i), Struct_1(163f, true, 38078u, vec4<bool>(false, false, false, true), 92686u), vec3<bool>(false, false, false), vec3<u32>(46011u, 1u, 1u)), Struct_2(43964u, vec4<i32>(2147483647i, -2902i, 2147483647i, -5740i), Struct_1(278f, false, 54752u, vec4<bool>(false, true, true, false), 0u), vec3<bool>(true, true, false), vec3<u32>(15991u, 68533u, 1u)), Struct_2(12146u, vec4<i32>(-1i, 75799i, 53562i, i32(-2147483648)), Struct_1(-2081f, false, 26811u, vec4<bool>(true, true, false, true), 4294967295u), vec3<bool>(false, true, false), vec3<u32>(0u, 4650u, 4294967295u)), Struct_2(12120u, vec4<i32>(0i, -28353i, 0i, 33872i), Struct_1(-510f, true, 1u, vec4<bool>(true, true, true, true), 4294967295u), vec3<bool>(false, true, false), vec3<u32>(29373u, 4294967295u, 4294967295u)), Struct_2(1u, vec4<i32>(-1i, 0i, -29877i, -36367i), Struct_1(299f, false, 5987u, vec4<bool>(true, true, true, true), 4294967295u), vec3<bool>(false, false, false), vec3<u32>(38387u, 57587u, 65375u)), Struct_2(4294967295u, vec4<i32>(-67807i, i32(-2147483648), 2147483647i, 30773i), Struct_1(571f, true, 0u, vec4<bool>(false, false, true, true), 111792u), vec3<bool>(false, false, true), vec3<u32>(1u, 4294967295u, 0u)), Struct_2(4294967295u, vec4<i32>(29001i, -28306i, 1i, 40972i), Struct_1(1150f, true, 4294967295u, vec4<bool>(true, false, false, true), 2948u), vec3<bool>(false, true, true), vec3<u32>(94597u, 4728u, 24430u)), Struct_2(0u, vec4<i32>(2147483647i, i32(-2147483648), -57923i, 2248i), Struct_1(926f, true, 4294967295u, vec4<bool>(false, false, false, true), 4294967295u), vec3<bool>(false, true, true), vec3<u32>(29103u, 1u, 12462u)), Struct_2(0u, vec4<i32>(-19946i, 1i, 2147483647i, 1i), Struct_1(-664f, false, 1u, vec4<bool>(false, true, false, true), 0u), vec3<bool>(true, true, false), vec3<u32>(16643u, 4294967295u, 4294967295u)), Struct_2(37231u, vec4<i32>(0i, 14494i, -16402i, 0i), Struct_1(760f, true, 47853u, vec4<bool>(false, true, true, true), 1u), vec3<bool>(true, false, true), vec3<u32>(1u, 1u, 39798u)), Struct_2(0u, vec4<i32>(165i, -70355i, 32181i, -35454i), Struct_1(-345f, false, 4294967295u, vec4<bool>(false, false, false, false), 1u), vec3<bool>(true, true, false), vec3<u32>(69331u, 12075u, 40058u)), Struct_2(0u, vec4<i32>(47598i, -27558i, -1i, 24153i), Struct_1(338f, true, 8188u, vec4<bool>(false, false, false, true), 720u), vec3<bool>(true, false, false), vec3<u32>(4294967295u, 66249u, 35172u)), Struct_2(76737u, vec4<i32>(18480i, 0i, 1i, 27703i), Struct_1(-1116f, true, 1u, vec4<bool>(false, true, false, false), 0u), vec3<bool>(false, true, false), vec3<u32>(4294967295u, 20038u, 0u)), Struct_2(0u, vec4<i32>(-27718i, -1i, -1052i, i32(-2147483648)), Struct_1(554f, true, 1u, vec4<bool>(false, true, false, false), 17834u), vec3<bool>(true, false, true), vec3<u32>(23939u, 31329u, 38997u)), Struct_2(70486u, vec4<i32>(0i, 16889i, 2147483647i, i32(-2147483648)), Struct_1(-666f, true, 84932u, vec4<bool>(false, false, false, false), 49580u), vec3<bool>(true, true, false), vec3<u32>(4294967295u, 93357u, 66452u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_i32(abs(reverseBits(17711i)), u_input.b.x);
    var_0 = u_input.d;
    var var_1 = global0[_wgslsmith_index_u32(~4294967295u, 27u)];
    var_1 = global0[_wgslsmith_index_u32(4294967295u, 27u)];
    var_0 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 2147483647i, u_input.d, var_1.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, 3193i, u_input.d, u_input.b.x), var_1.b)), 1i), ~u_input.b.x) ^ -37854i;
    return arg_0.d.wwx;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 27>();
    let var_0 = arg_0;
    let var_1 = arg_3;
    let var_2 = select(!arg_1.c.d.yxx, arg_2.d, !vec3<bool>(all(!vec4<bool>(false, true, arg_2.c.d.x, false)), false, true));
    var var_3 = min(u_input.b, ~(vec2<i32>(arg_2.b.x, u_input.b.x) ^ arg_2.b.wx) << (vec2<u32>(arg_2.a, arg_3.c.e) % vec2<u32>(32u)));
    return arg_2.c.c;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = ~abs(firstTrailingBit(~arg_0)) >> (vec3<u32>(u_input.a.x >> ((abs(u_input.c) ^ u_input.a.x) % 32u), (u_input.a.x & (u_input.a.x | 1u)) ^ 154402u, 1u) % vec3<u32>(32u));
    global0 = array<Struct_2, 27>();
    let var_1 = vec3<u32>(~(~(~u_input.a.x)) >> (abs(4294967295u << (u_input.c % 32u)) % 32u), func_4(_wgslsmith_div_f32(397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(251f, 2162f, true)))), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 27u)], Struct_2(countOneBits(~1u), vec4<i32>(arg_0.x >> (78057u % 32u), _wgslsmith_clamp_i32(1i, arg_0.x, 1i), _wgslsmith_sub_i32(u_input.d, arg_0.x), -1i), Struct_1(_wgslsmith_f_op_f32(233f - 115f), true, u_input.a.x, vec4<bool>(false, false, false, false), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 100948u, u_input.a.x), vec4<u32>(u_input.c, 0u, u_input.a.x, u_input.c))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), ~vec3<u32>(u_input.c, u_input.c, u_input.a.x)), Struct_2(select(36409u, 0u, any(vec3<bool>(true, false, true))), ~vec4<i32>(arg_0.x, u_input.d, arg_0.x, -1i), Struct_1(_wgslsmith_f_op_f32(488f * -1554f), all(vec2<bool>(false, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 28488u, u_input.c, 9361u), vec4<u32>(u_input.c, 1u, 10082u, 0u)), vec4<bool>(true, true, true, true), _wgslsmith_mod_u32(59757u, 1u)), select(vec3<bool>(false, true, false), func_3(Struct_1(-1817f, false, u_input.c, vec4<bool>(true, true, false, true), u_input.a.x)), true), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 75388u, u_input.a.x), vec3<u32>(u_input.a.x, 57282u, u_input.a.x) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.c)))), 0u);
    global0 = array<Struct_2, 27>();
    var var_2 = 387f;
    return ~40627u;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<Struct_2, 27>();
    var var_0 = max(reverseBits(vec4<i32>(~u_input.b.x, u_input.b.x & u_input.b.x, u_input.d, firstLeadingBit(u_input.b.x))), arg_3.b) >> (~(~vec4<u32>(func_2(arg_3.b.xxw), arg_2.c, abs(arg_2.e), reverseBits(arg_3.c.c))) % vec4<u32>(32u));
    var_0 = _wgslsmith_div_vec4_i32((reverseBits(arg_3.b >> (vec4<u32>(50319u, 1u, 1u, 4294967295u) % vec4<u32>(32u))) >> (((vec4<u32>(u_input.c, 4294967295u, arg_2.e, arg_2.c) | vec4<u32>(arg_2.e, 70635u, u_input.a.x, arg_3.c.c)) | ~vec4<u32>(90870u, arg_3.c.c, u_input.c, arg_2.c)) % vec4<u32>(32u))) | vec4<i32>(u_input.d, 1i >> (0u % 32u), abs(i32(-1i) * -1i), 2147483647i), -(vec4<i32>(-1i) * -arg_3.b));
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    return vec4<bool>(true, abs(abs(countOneBits(u_input.b.x))) > 0i, !select(true, func_3(Struct_1(-1052f, true, 42501u, vec4<bool>(false, arg_3.c.d.x, false, arg_2.b), 54203u)).x, arg_1.x), any(vec2<bool>(!arg_2.d.x, 952f < arg_3.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(u_input.a, ~u_input.a);
    var var_1 = select(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-827f * -1281f)))), select(vec3<bool>(true, true, u_input.d >= u_input.d), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))), Struct_1(-293f, true, 40873u, vec4<bool>(true, true, true, true), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 42611u, u_input.a.x), ~vec3<u32>(var_0.x, var_0.x, u_input.a.x))), global0[_wgslsmith_index_u32(~u_input.c, 27u)]), vec4<bool>(true, false, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(_wgslsmith_f_op_f32(step(2586f, -169f)) <= _wgslsmith_f_op_f32(abs(-1614f)), true, 1i <= u_input.b.x, false), !vec4<bool>(false, true, u_input.d >= 0i, true), !vec4<bool>(true, true, true, select(false, true, true))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2577f))))));
    let var_3 = -firstTrailingBit(reverseBits(~vec4<i32>(-55595i, -1i, -52968i, u_input.b.x)));
    let var_4 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

