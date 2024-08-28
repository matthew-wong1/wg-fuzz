struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(_wgslsmith_mult_u32(96375u, _wgslsmith_mod_u32(min(reverseBits(u_input.c), 4294967295u), _wgslsmith_div_u32(firstLeadingBit(u_input.c), 0u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 176f, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1561f)))))), ~vec4<i32>(_wgslsmith_clamp_i32(u_input.b, -2147483647i, u_input.b), select(u_input.b, -2147483647i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(1i, u_input.b, 1i)), 0i) ^ ~abs(vec4<i32>(u_input.b, 252i, 4545i, u_input.b)), var_0.x);
    var var_2 = Struct_2(var_1.c << (~countOneBits(abs(u_input.a)) % vec4<u32>(32u)), Struct_1(~(~var_1.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))), var_1.c, false), Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.b, var_1.b))) - vec4<f32>(549f, _wgslsmith_f_op_f32(495f - -936f), var_1.b.x, _wgslsmith_f_op_f32(arg_1.x * 1063f))), firstLeadingBit(vec4<i32>(abs(u_input.b), u_input.b, -2859i, u_input.b)), u_input.b < ~1i), 0i);
    let var_3 = var_2.b;
    var var_4 = vec4<bool>(false, var_2.b.d, true, true);
    return vec4<bool>(false, true, true, !(!all(select(arg_0, vec2<bool>(var_1.d, false), arg_0.x))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    var var_0 = arg_1.b;
    let var_1 = vec2<i32>(arg_1.a.x, -2147483647i);
    return !select(select(func_3(vec2<bool>(arg_1.c.d, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -947f))), vec4<bool>(!arg_1.c.d, true, !var_0.d, var_0.d), !select(vec4<bool>(arg_1.b.d, false, arg_1.b.d, var_0.d), vec4<bool>(false, false, arg_1.b.d, arg_1.c.d), vec4<bool>(arg_1.b.d, false, true, var_0.d))), !select(vec4<bool>(false, var_0.d, true, true), vec4<bool>(arg_1.b.d, false, false, var_0.d), true), func_3(!vec2<bool>(false, var_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.zw))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = vec2<i32>(-max(0i, 40959i), -1i);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zz), _wgslsmith_add_vec2_u32(vec2<u32>(~0u, 5314u), _wgslsmith_div_vec2_u32(u_input.a.yy, ~u_input.a.yx))), 3245u, 0u, ~(~firstLeadingBit(arg_2.b.a)));
    var var_2 = vec4<i32>(var_0.x, ~2147483647i, arg_2.a.x, firstLeadingBit(-1i));
    let var_3 = Struct_1(0u, arg_2.c.b, arg_2.b.c, !(1u != var_1.x));
    var_2 = vec4<i32>(max((_wgslsmith_mult_i32(u_input.b, arg_1.x) | -1i) << (~var_3.a % 32u), abs(1i)), reverseBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, 1i), -56441i)), 0i, var_2.x);
    return Struct_1(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.b))), vec4<f32>(_wgslsmith_f_op_f32(265f * -358f), _wgslsmith_f_op_f32(arg_2.b.b.x - _wgslsmith_f_op_f32(-var_3.b.x)), arg_2.b.b.x, -1247f)), vec4<i32>(-_wgslsmith_sub_i32(13693i << (1u % 32u), ~u_input.b), ~(-_wgslsmith_clamp_i32(arg_1.x, arg_1.x, -16954i)), 45313i, -2147483647i), !(!(!(!arg_2.c.d))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(vec2<bool>((~2762u == (21223u ^ u_input.a.x)) && false, any(select(func_2(1239f, Struct_2(vec4<i32>(-2147483647i, -36716i, 44226i, u_input.b), Struct_1(u_input.a.x, vec4<f32>(1384f, 1949f, -1802f, 1309f), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), false), Struct_1(1u, vec4<f32>(764f, -775f, -2096f, 1106f), vec4<i32>(-2147483647i, 2499i, 74629i, 1i), true), u_input.b), u_input.b), func_3(vec2<bool>(true, false), vec2<f32>(732f, -137f)), all(vec4<bool>(false, true, false, true))))), vec2<i32>(-u_input.b, max(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, 0i), vec3<i32>(-2147483647i, u_input.b, u_input.b)) | 9056i)), Struct_2(abs(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & ~vec4<i32>(u_input.b, -20077i, -1i, u_input.b)), Struct_1(~u_input.c, vec4<f32>(1f, 1f, 1f, 1f), select(~vec4<i32>(u_input.b, -27920i, u_input.b, -18620i), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<bool>(true, true, true, false)), true), Struct_1(_wgslsmith_dot_vec3_u32(min(u_input.a.yyz, vec3<u32>(u_input.c, u_input.a.x, 30644u)), ~u_input.a.yxz), vec4<f32>(-608f, -211f, _wgslsmith_f_op_f32(f32(-1f) * -901f), _wgslsmith_f_op_f32(max(782f, -190f))), abs(select(vec4<i32>(u_input.b, u_input.b, -15168i, -2147483647i), vec4<i32>(-2147483647i, 29251i, u_input.b, -2147483647i), true)), func_2(_wgslsmith_div_f32(144f, -1000f), Struct_2(vec4<i32>(u_input.b, 19349i, u_input.b, u_input.b), Struct_1(u_input.c, vec4<f32>(325f, 2913f, -443f, 598f), vec4<i32>(0i, 31061i, -2147483647i, 41227i), true), Struct_1(0u, vec4<f32>(550f, -166f, -971f, -168f), vec4<i32>(-37300i, u_input.b, 18761i, u_input.b), false), u_input.b), _wgslsmith_div_i32(-1i, u_input.b)).x), -24468i), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(588f))))), Struct_2(-vec4<i32>(6610i, u_input.b, -1i, u_input.b) << (~u_input.a % vec4<u32>(32u)), Struct_1(21846u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(102f, -1285f, 1990f, -367f), vec4<f32>(411f, 199f, 1289f, -1737f))), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), select(false, false, true)), Struct_1(~u_input.c, vec4<f32>(900f, -1370f, -425f, 955f), vec4<i32>(u_input.b, u_input.b, u_input.b, -33377i), select(false, false, false)), ~(~u_input.b)), i32(-1i) * -1i).xyy);
    var var_1 = -2147483647i;
    let var_2 = countOneBits(abs(vec2<i32>(1i, _wgslsmith_add_i32(u_input.b, var_0.c.x)))) | max(vec2<i32>(-abs(22865i), _wgslsmith_div_i32(u_input.b, reverseBits(-10380i))), max(var_0.c.yz, max(countOneBits(var_0.c.xw), -vec2<i32>(-13043i, -26150i))));
    var var_3 = var_0.d;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x < var_0.b.x)), var_0.b.x, -1225f) - vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-706f * 961f), _wgslsmith_f_op_f32(min(-306f, 445f)))), var_0.b.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(var_0.b)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, 1686f, -1049f, -926f), vec4<f32>(var_0.b.x, var_0.b.x, -250f, -2736f), var_0.d || true)), func_4(select(vec2<bool>(true, var_0.d), vec2<bool>(false, true), vec2<bool>(var_0.d, var_0.d)), ~var_0.c.xy, Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.b, var_2.x), Struct_1(1u, var_0.b, vec4<i32>(0i, 38335i, 81137i, u_input.b), var_0.d), Struct_1(u_input.c, var_0.b, var_0.c, true), var_2.x), vec3<bool>(var_0.d, true, var_0.d)).b))));
    return Struct_2(abs(vec4<i32>(~0i, var_0.c.x, firstLeadingBit(var_2.x), _wgslsmith_add_i32(34275i, var_2.x))) ^ var_0.c, func_4(func_2(822f, Struct_2(vec4<i32>(-1874i, u_input.b, 23787i, var_2.x), func_4(vec2<bool>(var_0.d, true), vec2<i32>(var_2.x, u_input.b), Struct_2(vec4<i32>(u_input.b, var_2.x, -13031i, 0i), Struct_1(19685u, vec4<f32>(var_0.b.x, -1241f, 1176f, 1681f), vec4<i32>(-2613i, var_2.x, 0i, var_2.x), var_0.d), Struct_1(26804u, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 994f), vec4<i32>(-1i, u_input.b, var_2.x, var_0.c.x), true), var_0.c.x), vec3<bool>(var_0.d, false, false)), Struct_1(u_input.a.x, var_0.b, vec4<i32>(u_input.b, -39989i, var_0.c.x, var_2.x), false), -19671i), _wgslsmith_sub_i32(u_input.b, var_0.c.x)).xw, var_0.c.xw ^ var_2, Struct_2(-min(var_0.c, var_0.c), func_4(!vec2<bool>(false, var_0.d), var_2 | vec2<i32>(-1i, var_2.x), Struct_2(var_0.c, Struct_1(u_input.c, vec4<f32>(1223f, 300f, -1188f, -1000f), vec4<i32>(2147483647i, 2147483647i, u_input.b, 2147483647i), false), Struct_1(var_0.a, var_0.b, vec4<i32>(1i, var_0.c.x, -1i, u_input.b), true), u_input.b), !vec3<bool>(false, var_0.d, true)), func_4(vec2<bool>(true, var_0.d), var_0.c.yz, Struct_2(vec4<i32>(var_2.x, var_2.x, u_input.b, var_0.c.x), Struct_1(var_0.a, vec4<f32>(var_0.b.x, var_4.x, var_0.b.x, -183f), vec4<i32>(76455i, u_input.b, -2147483647i, 23505i), false), Struct_1(u_input.a.x, var_0.b, var_0.c, var_0.d), 0i), func_3(vec2<bool>(var_0.d, var_0.d), vec2<f32>(-885f, -596f)).wxx), ~firstTrailingBit(-22756i)), !select(vec3<bool>(false, var_0.d, var_0.d), !vec3<bool>(var_0.d, false, false), all(vec2<bool>(true, false)))), func_4(!func_3(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, 1000f))).yy, vec2<i32>(-u_input.b, ~0i), Struct_2(countOneBits(vec4<i32>(-1i, var_2.x, var_2.x, u_input.b)), Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, var_0.b.x, 383f, -575f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_0.c.x, -2147483647i, 2147483647i), vec4<i32>(14008i, var_2.x, 1i, u_input.b), vec4<i32>(1i, 3606i, var_0.c.x, var_2.x)), !var_0.d), Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yz), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-272f, var_0.b.x, -1603f, var_4.x))), vec4<i32>(0i, var_0.c.x, 1i, 3104i) & vec4<i32>(1i, -1i, 46232i, 1i), any(vec4<bool>(true, true, true, false))), 1i), vec3<bool>(!(false && var_0.d), all(func_2(var_4.x, Struct_2(var_0.c, Struct_1(37330u, vec4<f32>(-2174f, 283f, 444f, -467f), vec4<i32>(-1i, u_input.b, var_2.x, -1i), var_0.d), Struct_1(1u, vec4<f32>(-170f, var_0.b.x, 201f, -427f), vec4<i32>(u_input.b, 1i, -1i, u_input.b), true), var_0.c.x), u_input.b)), all(vec3<bool>(false, var_0.d, var_0.d)))), 0i);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(17969u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-591f, 484f)), 242f, arg_1.c.b.x)), arg_1.b.c, false);
    var var_1 = ~_wgslsmith_div_vec4_u32(firstLeadingBit(~(~vec4<u32>(1u, 48263u, 4294967295u, var_0.a))), ~(~abs(u_input.a)));
    var var_2 = vec3<f32>(arg_0.x, var_0.b.x, 275f);
    var_1 = ~(~vec4<u32>(var_0.a, 23516u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.c, var_1.x, 455u, 1u)), firstLeadingBit(u_input.a)), _wgslsmith_clamp_u32(58146u, var_0.a, var_1.x)));
    var_2 = _wgslsmith_div_vec3_f32(var_0.b.xyy, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1097f, var_0.b.x)), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-988f * var_0.b.x)), vec3<f32>(730f, 337f, -1000f)))));
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(17020i, select(-1i, func_5(vec2<f32>(1f, 1f), func_1()) >> (20984u % 32u), true));
    var_0 = ~(abs(u_input.b) & u_input.b);
    var_0 = -42276i;
    var var_1 = false;
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(true, true), vec2<i32>(1i, 1i), func_1(), vec3<bool>(true, true, true)).b.zx - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -245f) - vec2<f32>(150f, 1123f)), vec2<f32>(-2343f, 244f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(603f, 1958f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1066f, 848f) + vec2<f32>(-1159f, 1364f))))), 1000f);
}

