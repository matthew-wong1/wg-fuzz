struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_f32(401f, _wgslsmith_f_op_f32(-356f + -942f));
    var var_1 = 1f;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1643f, var_0, -1000f, var_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) * vec4<f32>(var_0, 200f, -1326f, 915f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(554f, 996f, 593f, var_0), vec4<f32>(504f, var_0, 356f, var_0))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_0, 827f, -1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, -1206f, var_0, var_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -139f, -922f, var_0) + vec4<f32>(-971f, var_0, 238f, -1308f))))));
    var var_3 = true;
    var_2 = vec4<f32>(474f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(-173f))) * 326f), var_2.x), var_0);
    return !all(vec3<bool>(!any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(min(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, -44834i), i32(-1i) * -18346i), ~0i), ~firstTrailingBit(i32(-1i) * -15318i)), -1i, firstLeadingBit(firstLeadingBit(-7627i)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-720f))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1209f, _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_add_u32(~1u, arg_3), max(52528u, u_input.a.x), ~countOneBits(~42656i) > -var_0);
    let var_2 = ~vec2<i32>(~_wgslsmith_clamp_i32(var_0, 0i, -16384i) ^ var_0, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-12303i, var_0, var_0) | vec3<i32>(var_0, 43759i, var_0), _wgslsmith_sub_vec3_i32(vec3<i32>(3071i, 2147483647i, var_0), vec3<i32>(var_0, -2147483647i, var_0))), var_0));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f + _wgslsmith_f_op_f32(f32(-1f) * -560f)) * 629f)));
    var var_4 = Struct_3(_wgslsmith_add_u32(_wgslsmith_mult_u32(~51157u, _wgslsmith_div_u32(85857u, 33608u) ^ arg_3), 34625u), Struct_2(!(!(!arg_0.xz)), !select(!vec2<bool>(false, arg_2.x), select(vec2<bool>(var_1.d, true), arg_0.yy, arg_2), !var_1.a), Struct_1(vec3<bool>(true, false, true), !func_3(), vec3<bool>(u_input.a.x > u_input.a.x, false, -13196i > var_2.x), select(vec4<bool>(false, true, false, true), select(vec4<bool>(arg_0.x, arg_2.x, false, arg_1.x), vec4<bool>(true, var_1.a, true, var_1.d), arg_0.x), select(arg_1, arg_1, arg_1))), vec3<f32>(-302f, -699f, var_3)));
    return var_4.b;
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = 19839u;
    let var_1 = Struct_5(true, abs(arg_2.b.x), 9107u, true);
    return func_2(!vec3<bool>(select(true, select(false, var_1.a, false), true), all(!vec4<bool>(var_1.a, var_1.d, var_1.a, false)), true != (var_1.c <= 5042u)), !vec4<bool>(!all(vec2<bool>(arg_0.d, arg_0.d)), true, !(!arg_0.a), var_1.a & true), vec2<bool>(all(vec2<bool>(true, true)), true), max(arg_2.b.x, 1u << (~u_input.a.x % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_4 {
    let var_0 = arg_1;
    let var_1 = Struct_3(_wgslsmith_add_u32(u_input.a.x << (reverseBits(~var_0.b.x) % 32u), _wgslsmith_mod_u32(abs(u_input.a.x), firstLeadingBit(arg_1.b.x))), Struct_2(vec2<bool>(arg_3.d.x, !arg_3.c.x), select(arg_0.c.a.yx, select(!arg_3.a.yy, func_2(vec3<bool>(false, false, true), arg_0.c.d, arg_3.a.xy, 1u).a, vec2<bool>(arg_0.c.c.x, false)), !arg_3.d.xw), Struct_1(arg_0.c.c, select(!arg_3.a.x, true, false), func_2(vec3<bool>(arg_3.b, arg_3.a.x, true), vec4<bool>(true, false, arg_3.b, arg_3.c.x), !arg_0.b, ~0u).c.d.zzy, arg_3.d), vec3<f32>(arg_2.x, 993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), var_1.b.d.x);
    var var_3 = all(vec2<bool>(_wgslsmith_f_op_f32(var_1.b.d.x + 1066f) == -365f, false)) & false;
    var_3 = false;
    return Struct_4((~1334i ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(arg_1.a, -47823i))) >> (18099u % 32u), vec4<u32>(firstTrailingBit(max(~arg_1.b.x, _wgslsmith_mult_u32(0u, 50915u))), ~1324u & (firstTrailingBit(arg_1.b.x) ^ firstTrailingBit(var_0.b.x)), 60363u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(select(var_0.b.zx, var_0.b.wz, vec2<bool>(var_1.b.a.x, false)), _wgslsmith_sub_vec2_u32(vec2<u32>(9560u, var_0.b.x), arg_1.b.wy)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = vec3<bool>(func_1(Struct_5(any(arg_0.d), _wgslsmith_mult_u32(arg_2.b.x, ~arg_2.b.x), ~(~arg_2.b.x), !arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_1(Struct_5(arg_0.c.x, 36996u, 0u, arg_0.c.x), -588f, arg_2).d.x, _wgslsmith_f_op_f32(floor(-921f))))), Struct_4(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, arg_1.x), _wgslsmith_mod_i32(-7173i, arg_1.x)), reverseBits(~arg_2.b))).b.x, true, arg_0.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1427f, -1000f, -1015f, 309f), vec4<f32>(-703f, -1598f, -577f, -832f))), vec4<f32>(-321f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(1000f * -878f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-994f - 307f), _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1145f * -784f), func_1(Struct_5(false, 47732u, 48615u, true), -849f, arg_2).d.x), _wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(abs(-257f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f + -325f) + -300f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f * -127f))), 1078f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-830f + 215f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(368f + 2915f) - 282f))), !select(!arg_0.d, !(!arg_0.d), true)));
    var var_2 = i32(-1i) * -abs(-arg_2.a);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -963f);
    let var_4 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-395f)), var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2160f)) - _wgslsmith_f_op_f32(176f + _wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(-var_1.x)));
    return abs(~arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~func_5(Struct_1(vec3<bool>(true, true, true), true, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), vec4<i32>(1i, 1i, 1i, 1i), func_4(func_1(Struct_5(true, 14018u, 4294967295u, false), -126f, Struct_4(-1i, vec4<u32>(6333u, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_4(2147483647i, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-470f, 1788f, 790f, -1676f))), func_1(Struct_5(true, u_input.a.x, u_input.a.x, true), -173f, Struct_4(1i, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u))).c)));
    var var_1 = Struct_2(!select(vec2<bool>(true, select(true, true, false)), !func_2(vec3<bool>(true, true, true), vec4<bool>(false, false, false, false), vec2<bool>(true, true), 36160u).c.a.xx, vec2<bool>(true, true)), !func_1(Struct_5(true, var_0.x, countOneBits(u_input.a.x), true), _wgslsmith_f_op_f32(f32(-1f) * -849f), func_4(Struct_2(vec2<bool>(true, true), vec2<bool>(false, false), Struct_1(vec3<bool>(true, false, true), false, vec3<bool>(true, false, true), vec4<bool>(true, true, true, true)), vec3<f32>(-1000f, -686f, -805f)), Struct_4(-19959i, vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, 46017u)), vec4<f32>(-308f, -1667f, -1460f, 621f), func_2(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false), vec2<bool>(true, false), var_0.x).c)).a, func_1(Struct_5(all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false)), _wgslsmith_clamp_u32(1u, 12015u, var_0.x), u_input.a.x, true), -524f, func_4(func_2(vec3<bool>(true, true, false), vec4<bool>(true, false, true, true), vec2<bool>(true, true), u_input.a.x), func_4(func_1(Struct_5(false, var_0.x, 1u, true), -1054f, Struct_4(10040i, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 12897u))), Struct_4(0i, vec4<u32>(1u, 61165u, u_input.a.x, 9397u)), vec4<f32>(1033f, -1329f, -992f, 1000f), func_2(vec3<bool>(false, true, true), vec4<bool>(true, true, false, true), vec2<bool>(false, false), var_0.x).c), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1204f, 817f, -825f, 994f), vec4<f32>(517f, -2934f, 1000f, 124f), false)))), Struct_1(vec3<bool>(true, true, true), func_2(vec3<bool>(true, false, false), vec4<bool>(true, false, false, false), vec2<bool>(false, true), u_input.a.x).c.a.x, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)))).c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -444f)))), _wgslsmith_f_op_f32(ceil(813f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(228f * -517f) - _wgslsmith_div_f32(-322f, -1257f)))));
    var var_2 = vec2<i32>(1i, 1i);
    var var_3 = Struct_5(func_3(), reverseBits(min(u_input.a.x, abs(4294967295u)) ^ 19727u), min(firstTrailingBit(~_wgslsmith_clamp_u32(1u, 28619u, var_0.x)), 110554u), func_2(func_1(Struct_5(any(var_1.a), var_0.x, u_input.a.x, any(vec2<bool>(true, var_1.c.c.x))), var_1.d.x, Struct_4(~(-24208i), vec4<u32>(u_input.a.x, 0u, 118110u, var_0.x))).c.d.zwx, var_1.c.d, func_1(Struct_5(any(var_1.c.c), 4294967295u, select(4294967295u, var_0.x, var_1.a.x), -9549i != var_2.x), _wgslsmith_div_f32(262f, 334f), func_4(func_1(Struct_5(var_1.a.x, 1u, 4294967295u, var_1.a.x), -385f, Struct_4(var_2.x, vec4<u32>(u_input.a.x, var_0.x, 0u, 41885u))), Struct_4(-31329i, vec4<u32>(0u, 52395u, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(118f, -1450f, var_1.d.x, var_1.d.x), vec4<f32>(var_1.d.x, -1174f, var_1.d.x, -2092f)), var_1.c)).b, 1u >> (var_0.x % 32u)).a.x);
    let var_4 = !(!var_1.c.d.wwy);
    var_0 = ~(min(~vec4<u32>(var_3.b, 11285u, u_input.a.x, u_input.a.x), firstTrailingBit(~vec4<u32>(4294967295u, 62775u, u_input.a.x, var_3.c))) ^ func_5(func_1(Struct_5(var_3.d, var_3.b, var_0.x, true), 1650f, func_4(Struct_2(var_4.zx, var_4.yz, Struct_1(vec3<bool>(false, true, true), true, vec3<bool>(false, false, var_3.a), var_1.c.d), var_1.d), Struct_4(0i, vec4<u32>(4294967295u, u_input.a.x, 1u, 1u)), vec4<f32>(var_1.d.x, var_1.d.x, -598f, -384f), var_1.c)).c, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-18555i, var_2.x, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, 10792i, var_2.x, -8111i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, 9670i, 1i, var_2.x), vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x))), func_4(Struct_2(vec2<bool>(true, var_4.x), vec2<bool>(var_4.x, true), var_1.c, vec3<f32>(var_1.d.x, 1045f, var_1.d.x)), func_4(Struct_2(var_4.xy, var_4.yx, var_1.c, vec3<f32>(-1478f, -533f, var_1.d.x)), Struct_4(1i, vec4<u32>(0u, 4294967295u, var_3.c, var_3.b)), vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), Struct_1(var_1.c.a, var_1.a.x, vec3<bool>(false, true, false), vec4<bool>(false, true, var_4.x, var_4.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1214f, var_1.d.x, var_1.d.x, -708f)), Struct_1(var_1.c.a, false, vec3<bool>(var_4.x, true, true), var_1.c.d))));
    var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, abs(var_0.x), ~(~0u), 22857u), vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(0u, 20166u))), ~(~u_input.a.yx)), ~(4294967295u & var_0.x), func_4(Struct_2(vec2<bool>(var_1.a.x, true), !var_4.yx, Struct_1(var_1.c.d.ywx, var_4.x, vec3<bool>(true, false, var_3.a), vec4<bool>(var_3.a, var_4.x, true, var_4.x)), _wgslsmith_div_vec3_f32(vec3<f32>(633f, var_1.d.x, var_1.d.x), var_1.d)), Struct_4(-40921i ^ var_2.x, countOneBits(vec4<u32>(var_3.c, 1u, 0u, var_3.b))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(439f, -1744f, 982f, 1901f) + vec4<f32>(var_1.d.x, -231f, -258f, var_1.d.x)))), Struct_1(var_1.c.c, var_1.a.x & var_4.x, select(var_4, vec3<bool>(var_1.b.x, true, var_3.d), false), select(vec4<bool>(true, true, var_3.d, false), var_1.c.d, var_4.x))).b.x, var_3.c));
    var_1 = Struct_2(var_4.yz, func_1(Struct_5(var_1.d.x > -465f, 3606u | var_3.c, _wgslsmith_dot_vec3_u32(func_4(Struct_2(var_4.yz, var_4.zx, var_1.c, vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)), Struct_4(-2147483647i, vec4<u32>(var_0.x, 0u, u_input.a.x, 1u)), vec4<f32>(-304f, var_1.d.x, var_1.d.x, 2075f), Struct_1(var_1.c.c, var_3.a, vec3<bool>(var_1.c.b, false, var_4.x), var_1.c.d)).b.xyy, ~vec3<u32>(75625u, 1u, var_0.x)), var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1517f)), Struct_4(abs(4269i), vec4<u32>(54159u, 4294967295u, var_0.x, 33734u) ^ select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(0u, var_3.b, var_3.b, 113085u), vec4<bool>(true, var_3.a, true, var_1.c.c.x)))).b, func_2(vec3<bool>((var_3.d || var_3.a) && !var_3.a, !var_3.d, var_4.x), var_1.c.d, var_1.a, 4294967295u).c, _wgslsmith_f_op_vec3_f32(-var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_5(var_4.x, 30954u, ~(~var_0.x), !var_1.c.a.x || var_3.a), 1f, func_4(func_1(Struct_5(var_4.x, 0u, var_0.x, var_1.c.c.x), -688f, Struct_4(-1i, vec4<u32>(u_input.a.x, u_input.a.x, 112956u, 27458u))), Struct_4(abs(1i), vec4<u32>(1u, 1u, var_3.c, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, -1316f))), func_1(Struct_5(false, var_0.x, var_3.b, false), _wgslsmith_f_op_f32(ceil(533f)), Struct_4(var_2.x, vec4<u32>(var_3.b, u_input.a.x, var_3.b, var_3.b))).c)).d, vec4<i32>(-_wgslsmith_div_i32(~var_2.x, -var_2.x), var_2.x, 2147483647i, 0i));
}

