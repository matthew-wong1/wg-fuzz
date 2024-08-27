struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(-775f)), _wgslsmith_f_op_f32(f32(-1f) * -306f), 793f, _wgslsmith_f_op_f32(-501f - 919f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1561f, 150f, -742f, -386f), vec4<f32>(259f, 116f, -1468f, -1000f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1256f, -668f, 1259f, 930f), vec4<f32>(-395f, 1000f, -1000f, -635f)))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -222f) - _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-354f, -1030f, true)))) - var_0.x)), var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(596f)))))), _wgslsmith_f_op_f32(trunc(281f)));
    return vec2<bool>(any(vec4<bool>(all(vec2<bool>(false, false)) != true, select(true, arg_0 == arg_0, all(vec2<bool>(true, false))), true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), select(~max(arg_1.x, arg_1.x), (1u << (arg_1.x % 32u)) | (12389u & u_input.a), all(vec2<bool>(false, false))) != _wgslsmith_dot_vec2_u32(arg_1.zz, vec2<u32>(u_input.a, arg_1.x)));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(~(-1i), -1i << (u_input.a % 32u)), -2147483647i), -13979i, -(~_wgslsmith_mod_i32(-4711i, -1i))), vec3<i32>(1i, 1i, firstTrailingBit(select(1i, -64727i, arg_0) | -207i)));
    var var_1 = -firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-47288i, 1i, var_0, -8226i), vec4<i32>(-2147483647i, 2147483647i, 21658i, 3294i), -vec4<i32>(1i, 1i, -1i, 45131i)), ~(vec4<i32>(var_0, var_0, -1i, -42158i) & vec4<i32>(1i, 0i, 1i, var_0))));
    var var_2 = _wgslsmith_sub_i32(var_0, firstLeadingBit(max(max(var_1.x | 2147483647i, -37238i), min(var_0, 2147483647i & var_0))));
    var var_3 = Struct_2(vec3<bool>(true, true & arg_0, !all(vec2<bool>(true, true)) & arg_0), !select(!(!vec4<bool>(false, arg_0, arg_0, false)), vec4<bool>(!arg_0, true, arg_0, arg_0 && arg_0), true), vec3<bool>(arg_0, arg_0, !((var_0 & var_0) > firstLeadingBit(var_0))), all(select(select(func_3(26673i, vec4<u32>(50519u, u_input.a, 1u, 159186u)), vec2<bool>(true, true), func_3(-1294i, vec4<u32>(u_input.a, 65333u, 0u, 1u))), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), select(select(vec2<bool>(true, false), vec2<bool>(true, arg_0), arg_0), vec2<bool>(false, false), any(vec3<bool>(true, arg_0, false))))));
    var_3 = Struct_2(vec3<bool>(any(select(var_3.b.xxx, select(var_3.a, vec3<bool>(var_3.c.x, true, true), var_3.b.x), var_3.a)), false, true), vec4<bool>(true, arg_0, !var_3.d, !(false || all(var_3.c))), !var_3.a, var_3.d);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(776f, _wgslsmith_f_op_f32(sign(1856f)), _wgslsmith_div_f32(-1222f, 177f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1430f, -1129f, 442f), vec3<f32>(107f, -1000f, 1000f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-671f, 1028f, -1000f))))), vec3<f32>(1149f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -196f)), -734f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-341f, -865f, -1380f))))), vec3<f32>(-417f, _wgslsmith_f_op_f32(-1612f + 655f), _wgslsmith_div_f32(1000f, -1274f)))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(205f, _wgslsmith_f_op_f32(-1128f * -439f), -2104f)))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(countOneBits(~vec4<u32>(67867u, 4294967295u, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.a, u_input.a, 25692u), ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), !select(vec4<bool>(true, false, arg_1.x, false), arg_1, false)), firstLeadingBit(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 11310u, u_input.a, 0u), ~vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), max(vec4<u32>(u_input.a, u_input.a, u_input.a, 9486u), vec4<u32>(1u, u_input.a, u_input.a, 100164u))), select(vec4<u32>(u_input.a, ~67960u, _wgslsmith_clamp_u32(60972u, u_input.a, 4294967295u), 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 0u, 1u, 15273u), ~vec4<u32>(1u, 4294967295u, 0u, 34296u)), all(arg_1.zzy)), !vec4<bool>(arg_1.x, !arg_1.x, false, arg_1.x)));
    var var_1 = Struct_1(_wgslsmith_sub_u32(39969u, abs(~0u) | _wgslsmith_mult_u32(min(u_input.a, 39010u), u_input.a)), _wgslsmith_add_vec4_u32(var_0, vec4<u32>(77482u, 1u, var_0.x, ~var_0.x | _wgslsmith_clamp_u32(25411u, 79651u, 4294967295u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + 1775f))))));
    var_1 = Struct_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_1.a, var_1.b.x, var_0.x)), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(u_input.a, var_1.b.x, u_input.a)), ~var_0.xyy)), firstTrailingBit(firstTrailingBit(vec4<u32>(~u_input.a, u_input.a, 26636u, _wgslsmith_dot_vec2_u32(var_1.b.xw, vec2<u32>(var_0.x, u_input.a))))));
    var var_3 = ~var_0.yxw >> (~(~(~select(vec3<u32>(var_1.a, 42155u, var_1.b.x), var_1.b.zyx, vec3<bool>(arg_1.x, false, true)))) % vec3<u32>(32u));
    return Struct_3(Struct_2(arg_1.wwz, select(select(select(arg_1, vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), false), !arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), select(arg_1, vec4<bool>(false, true, arg_1.x, true), false), u_input.a >= ~1u), vec3<bool>(arg_1.x, !(arg_0 != -1i), (arg_0 > 1i) && !arg_1.x), true), vec2<i32>(countOneBits(arg_0), -abs(_wgslsmith_add_i32(1i, arg_0))));
}

fn func_5(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = arg_0;
    let var_1 = Struct_1(~(~0u) << ((51900u << (abs(u_input.a) % 32u)) % 32u), _wgslsmith_add_vec4_u32(vec4<u32>(select(1u, u_input.a, false) & u_input.a, countOneBits(~48442u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 1u) >> (vec4<u32>(u_input.a, 60725u, 28307u, u_input.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(u_input.a, u_input.a, 44586u, 51479u)))), min(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 24674u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 23818u, 4294967295u, 50506u), vec4<u32>(7817u, u_input.a, u_input.a, 0u))), ~vec4<u32>(29003u, u_input.a, 22572u, 0u) & vec4<u32>(u_input.a, 27341u, u_input.a, 3214u))));
    var var_2 = var_1;
    var var_3 = var_0.b.x ^ (-1i >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.a, var_1.b.x, var_2.a, 0u), var_2.b >> (vec4<u32>(u_input.a, var_2.a, var_1.b.x, 41364u) % vec4<u32>(32u))), vec4<u32>(u_input.a, select(u_input.a, 33005u, true), 45290u, _wgslsmith_dot_vec4_u32(var_2.b, var_2.b))) % 32u));
    let var_4 = 11238u;
    return var_1.b.zx;
}

fn func_1() -> vec3<bool> {
    let var_0 = ~vec2<u32>(min(max(u_input.a, u_input.a), 4294967295u), abs(max(31081u, 7579u))) << ((func_5(func_4(-19738i, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec3_f32(func_2(false)))) >> ((vec2<u32>(~1u, u_input.a) << ((_wgslsmith_add_vec2_u32(vec2<u32>(21188u, u_input.a), vec2<u32>(u_input.a, u_input.a)) >> (~vec2<u32>(1u, 49850u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = false;
    var var_2 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(604f * -906f)), -796f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1130f, -614f))))))), func_4(firstLeadingBit(func_4(~(-2147483647i), vec4<bool>(true, true, true, true), vec3<f32>(1126f, 1494f, 428f)).b.x), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, false, true), func_4(-2147483647i, vec4<bool>(true, false, false, true), vec3<f32>(1764f, 460f, 101f)).a.b), vec4<bool>(true, func_4(-1i, vec4<bool>(false, true, true, true), vec3<f32>(718f, -1076f, -1713f)).a.d, true, any(vec3<bool>(false, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(448f, -235f, -881f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1658f, 1337f, -462f) + _wgslsmith_div_vec3_f32(vec3<f32>(1648f, -807f, -148f), vec3<f32>(-979f, -1000f, 885f))))), 1i);
    let var_3 = firstLeadingBit(vec3<i32>(0i, var_2.d, _wgslsmith_add_i32(var_2.c.b.x, -30529i)));
    var var_4 = 4245u;
    return func_4(reverseBits(~var_3.x), func_4(1i, vec4<bool>(var_2.c.a.b.x, true, 1u > var_0.x, false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(176f, var_2.b.x, -353f), vec3<f32>(var_2.a, 399f, var_2.a), var_2.c.a.b.x))), vec3<f32>(_wgslsmith_div_f32(487f, var_2.a), _wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(round(1094f))))).a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-438f, var_2.b.x, 1000f) + vec3<f32>(var_2.a, var_2.a, -257f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1461f, 1519f, -153f), vec3<f32>(-118f, var_2.a, var_2.b.x)) * vec3<f32>(-132f, var_2.a, -1000f)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-207f)), 1349f, -544f)))).a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1())), select(func_4(~(~(-1i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-893f, -812f, 581f))) * vec3<f32>(338f, 1793f, -1231f))).a.b, !vec4<bool>(all(vec3<bool>(false, false, false)), true, true, false), false), select(!vec3<bool>(false, true, all(vec4<bool>(false, false, false, true))), !func_4(~(-7754i), vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_f32(vec3<f32>(-1276f, 172f, -958f), vec3<f32>(-1188f, 1224f, -438f))).a.b.xxx, func_1()), any(vec2<bool>(true, true)));
    let var_1 = Struct_1(~u_input.a, max(~firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 34778u, 1u))), ~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 55111u)))));
    let var_2 = Struct_5(1f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1257f, 1128f), vec2<f32>(906f, 756f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(401f, -456f), vec2<f32>(-1189f, -504f), true)))))), func_4(_wgslsmith_dot_vec2_i32(min(~vec2<i32>(0i, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(-13436i, 38462i), vec2<i32>(1i, 16806i))), -select(vec2<i32>(0i, -25898i), vec2<i32>(-11647i, 2147483647i), var_0.b.xw)), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-324f, -865f, -878f)))))), -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-6314i, 20393i, 0i, -2147483647i), vec4<i32>(0i, 23957i, 1i, -21020i)) >> (_wgslsmith_mult_u32(u_input.a, 7667u) % 32u), ~0i));
    var var_3 = _wgslsmith_div_u32(reverseBits(select(var_1.b.x, 4294967295u, !var_0.b.x)), var_1.a);
    var var_4 = var_2.c.a.b;
    var_3 = u_input.a & var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_2(false)).x)), var_2.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b - vec2<f32>(var_2.b.x, 814f)) * var_2.b), _wgslsmith_f_op_vec2_f32(-var_2.b), true)))));
}

