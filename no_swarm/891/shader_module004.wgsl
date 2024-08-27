struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -302f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_0 = Struct_3(_wgslsmith_mult_vec2_u32(~max(_wgslsmith_mod_vec2_u32(vec2<u32>(72479u, 29144u), vec2<u32>(1u, 4294967295u)), max(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u))), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 7237u)))), arg_0, Struct_2(642f, arg_0.b, Struct_1(arg_0.c.a, !select(arg_0.b.xy, vec2<bool>(arg_0.c.a, false), arg_0.c.a))));
    var var_1 = min(~min(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(0u, 16206u, 4294967295u, 6397u))), ~20013u), 1u);
    global0 = var_0.c.a;
    let var_2 = var_0.b.a;
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(~37856u, abs(~var_0.a.x)), ~vec2<u32>(30920u, firstLeadingBit(var_0.a.x)));
}

fn func_2() -> vec3<u32> {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 52872u, _wgslsmith_sub_u32(func_3(Struct_2(-868f, vec3<bool>(false, true, false), Struct_1(true, vec2<bool>(false, false)))), 1u), ~1u), select(abs(~vec4<u32>(5449u, 46271u, 11746u, 1u)), vec4<u32>(~39432u, _wgslsmith_mult_u32(13259u, 15065u), firstLeadingBit(0u), max(4294967295u, 1u)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(25905u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 0u, 14621u)), vec3<u32>(1u, 4294967295u, 119810u)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(598f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-281f * -741f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -895f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-603f, 940f, -1189f, -407f), _wgslsmith_f_op_vec4_f32(vec4<f32>(597f, 1000f, -1202f, -1205f) + vec4<f32>(407f, 219f, 1272f, -811f))))));
    var var_2 = 32631u;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1f)))))));
    return countOneBits(~vec3<u32>(~26179u, var_0.x & 44983u, countOneBits(var_0.x))) | ~vec3<u32>(~max(var_0.x, var_0.x), var_0.x | ~var_0.x, 4294967295u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2)))) - arg_2);
    var var_0 = ~((_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, -8527i, -2147483647i), select(arg_1.wyx, vec3<i32>(33896i, -2147483647i, arg_1.x), false)) & ~arg_1.zww) << (vec3<u32>(arg_0.x, arg_0.x, ~57138u) % vec3<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1854f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2), -1000f, arg_2) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, 410f, arg_2))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1410f, 269f, arg_2), vec3<f32>(arg_2, arg_2, -274f)))))));
    let var_2 = vec2<i32>(var_0.x, 43629i);
    return Struct_2(_wgslsmith_f_op_f32(1029f - var_1.x), vec3<bool>(!select(any(vec2<bool>(false, false)), true, true), arg_0.x < arg_0.x, select(true, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))))), Struct_1(true, vec2<bool>(_wgslsmith_f_op_f32(min(arg_2, arg_2)) != arg_2, true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-824f * _wgslsmith_f_op_f32(f32(-1f) * -1142f)))), arg_2.b.a));
    var var_0 = _wgslsmith_add_vec2_i32(u_input.a, u_input.a);
    return func_4(vec4<u32>(~1u, ~_wgslsmith_dot_vec3_u32(func_2(), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, arg_3, 1762u), vec3<u32>(77952u, 1u, 9972u))), reverseBits(89808u), arg_3), _wgslsmith_sub_vec4_i32(vec4<i32>(33846i, var_0.x, _wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_clamp_i32(-1i, 1i, -1i)), countOneBits(_wgslsmith_sub_i32(1i, var_0.x))), ~(-vec4<i32>(-23118i, 0i, -297i, 1i) | vec4<i32>(var_0.x, -27719i, u_input.a.x, -1i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(floor(arg_2.b.a))))));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = vec4<bool>(arg_1.b.x, u_input.b == u_input.b, all(select(select(vec4<bool>(false, arg_1.c.a, arg_1.c.a, true), vec4<bool>(arg_1.c.a, arg_1.c.b.x, false, arg_1.c.b.x), true), vec4<bool>(any(arg_1.c.b), arg_1.b.x, false, !arg_1.b.x), ~241i == _wgslsmith_mult_i32(2147483647i, u_input.a.x))), arg_1.b.x);
    var var_1 = arg_1.a;
    var_1 = -529f;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(721f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1147f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(846f - -1364f) - 1000f)))));
    global0 = 683f;
    return select(var_0, vec4<bool>(0i == (u_input.b << (arg_0 % 32u)), all(vec4<bool>(arg_1.c.b.x, true, !var_0.x, any(var_0))), true, true), !(firstTrailingBit(u_input.b) >= u_input.b) | any(!(!arg_1.c.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(!any(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), !all(vec4<bool>(false, false, true, false)), false), select(func_5(abs(0u), func_1(vec3<f32>(-238f, 624f, -377f), Struct_2(-1656f, vec3<bool>(false, true, false), Struct_1(true, vec2<bool>(true, true))), Struct_3(vec2<u32>(1u, 0u), Struct_2(426f, vec3<bool>(true, true, true), Struct_1(false, vec2<bool>(false, true))), Struct_2(1213f, vec3<bool>(true, true, true), Struct_1(true, vec2<bool>(false, true)))), 0u)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))));
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_add_u32(56235u, 1u), 1u);
    let var_2 = func_5(0u, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-371f, -1122f, -575f))), Struct_2(1000f, vec3<bool>(var_0.x, !var_0.x, true), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, 1406f, 1860f)), func_1(vec3<f32>(1080f, 1000f, -1257f), Struct_2(-535f, var_0.zzz, Struct_1(false, vec2<bool>(true, var_0.x))), Struct_3(vec2<u32>(var_1, 4294967295u), Struct_2(-1024f, var_0.xwx, Struct_1(false, vec2<bool>(var_0.x, true))), Struct_2(1000f, vec3<bool>(true, true, var_0.x), Struct_1(var_0.x, var_0.zx))), var_1), Struct_3(vec2<u32>(var_1, 19562u), Struct_2(-740f, var_0.www, Struct_1(var_0.x, var_0.wz)), Struct_2(947f, var_0.xyz, Struct_1(true, vec2<bool>(true, var_0.x)))), 50245u).c), Struct_3(_wgslsmith_div_vec2_u32(max(vec2<u32>(var_1, 86214u), vec2<u32>(var_1, var_1)), vec2<u32>(57902u, 4294967295u)), func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-137f, 793f, -1695f), vec3<f32>(-586f, 631f, 384f), vec3<bool>(false, var_0.x, var_0.x))), func_4(vec4<u32>(var_1, var_1, 36361u, 47520u), vec4<i32>(u_input.a.x, u_input.b, 2147483647i, 0i), -1004f), Struct_3(vec2<u32>(var_1, 0u), Struct_2(-197f, vec3<bool>(false, false, false), Struct_1(true, vec2<bool>(true, var_0.x))), Struct_2(1000f, vec3<bool>(var_0.x, false, var_0.x), Struct_1(var_0.x, var_0.yx))), func_2().x), func_1(vec3<f32>(865f, -175f, 739f), func_4(vec4<u32>(var_1, 17366u, var_1, 1u), vec4<i32>(-37928i, -1i, -1i, u_input.a.x), 1028f), Struct_3(vec2<u32>(4294967295u, 0u), Struct_2(-1645f, var_0.wyx, Struct_1(var_0.x, vec2<bool>(var_0.x, false))), Struct_2(1646f, vec3<bool>(false, var_0.x, true), Struct_1(false, var_0.zw))), ~var_1)), ~var_1));
    global0 = _wgslsmith_f_op_f32(select(265f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(817f - -2230f)))), select(var_0.x, true, true) | false));
    global0 = _wgslsmith_f_op_f32(select(-1159f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(121f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(352f))))))), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-107f, 798f, 1084f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

