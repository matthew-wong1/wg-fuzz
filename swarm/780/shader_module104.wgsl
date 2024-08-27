struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(37576i, 23946i, 2147483647i, 0i), vec4<i32>(-34079i, 28895i, 0i, 0i)), i32(-1i) * -1i, min(-1i, 1i))), select(~firstLeadingBit(vec4<u32>(arg_0, u_input.a, u_input.a, 46861u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(arg_0, u_input.a, 4294967295u, arg_0)), vec4<u32>(65325u, arg_0, u_input.a, 0u) << (vec4<u32>(u_input.a, u_input.a, arg_0, 1u) % vec4<u32>(32u))), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], false, global0[_wgslsmith_index_u32(1u, 3u)], true), !vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(16956u, 3u)]), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], false, false))) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 25047u, 52327u, 31300u) << (~vec4<u32>(u_input.a, 4294967295u, 24501u, 0u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, ~1u, reverseBits(u_input.a))));
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(-var_0.a.x), 10034i << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 54837u, 79851u)) % 32u), max(_wgslsmith_mod_i32(var_0.a.x, -24859i), -2147483647i)), vec3<i32>(20679i, 1i | ~var_0.a.x, firstLeadingBit(_wgslsmith_mult_i32(var_0.a.x, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(759f))), reverseBits(4294967295u));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 449f, 2831f, arg_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-371f, var_1.b, var_1.b, -2053f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.x, 546f, -130f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(227f, arg_1.x, var_1.b, arg_1.x) - vec4<f32>(arg_1.x, 1429f, 700f, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), arg_1.x, -766f, _wgslsmith_f_op_f32(ceil(-451f))), true))));
    var var_3 = ~u_input.a;
    let var_4 = ~(~((~var_1.c | (22242u << (u_input.a % 32u))) | 4294967295u));
    return firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(30905u, var_4, var_1.c), max(var_0.b.wxz, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, var_1.c), vec3<u32>(var_4, 0u, 4294967295u)))) & 1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> bool {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c | ~arg_3.b.x, reverseBits(countOneBits(~arg_3.b.x))), vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(arg_3.b.zyy, arg_3.b.ywx)), select(~arg_3.b.x, _wgslsmith_mod_u32(82911u, u_input.a), false)) << (arg_3.b.xw % vec2<u32>(32u)));
    let var_1 = Struct_2(arg_1.a, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_3.b, ~reverseBits(arg_0)), reverseBits(vec4<u32>(arg_1.c & 29772u, abs(43486u), ~u_input.a, 1u))));
    global0 = array<bool, 3>();
    return !(!all(vec4<bool>(any(vec2<bool>(arg_2, arg_2)), global0[_wgslsmith_index_u32(func_3(1995u, vec3<f32>(-1248f, arg_1.b, -1320f)), 3u)], true, true)));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: bool, arg_3: f32) -> vec4<u32> {
    let var_0 = !(!vec2<bool>(true && global0[_wgslsmith_index_u32(~4294967295u, 3u)], true));
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_add_i32(-2147483647i, abs(1i) << (u_input.a % 32u)), -select(firstLeadingBit(-1i), -2147483647i, true), 2147483647i << (abs(abs(u_input.a)) % 32u)), ~vec4<u32>(abs(_wgslsmith_div_u32(4294967295u, u_input.a)), u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), ~vec3<u32>(u_input.a, 35936u, u_input.a))));
    let var_2 = _wgslsmith_mod_vec2_u32(var_1.b.xy, min(countOneBits(vec2<u32>(abs(0u), _wgslsmith_add_u32(var_1.b.x, u_input.a))), ~min(vec2<u32>(u_input.a, 61962u) & var_1.b.yx, var_1.b.ww)));
    global0 = array<bool, 3>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 + arg_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_div_vec3_f32(vec3<f32>(394f, arg_1.x, -1000f), vec3<f32>(arg_3, -1791f, -1049f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-924f, -266f, arg_3) - arg_1))) - arg_1));
    return ~(~(~vec4<u32>(var_1.b.x, u_input.a, _wgslsmith_sub_u32(var_2.x, 16051u), ~0u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = func_5(!(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, arg_0.a.x, arg_0.a.x), vec3<i32>(-42980i, 2147483647i, arg_0.a.x), true), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0.a.x, 34489i), vec3<i32>(-23295i, arg_0.a.x, 2147483647i))) <= (arg_0.a.x << (10723u % 32u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -553f), 573f, _wgslsmith_f_op_f32(ceil(-2161f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b, 748f, arg_0.b)))))), !func_4(vec4<u32>(_wgslsmith_add_u32(0u, 788u), arg_0.c, func_3(arg_0.c, vec3<f32>(-277f, -851f, 708f)), arg_0.c << (arg_0.c % 32u)), arg_0, ~arg_0.c > arg_0.c, Struct_2(arg_0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 71232u, u_input.a, arg_0.c), vec4<u32>(0u, u_input.a, u_input.a, arg_0.c), vec4<u32>(4294967295u, arg_0.c, 0u, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)) - arg_0.b));
    let var_1 = arg_0;
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    return all(!select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c, 3u)], global0[_wgslsmith_index_u32(50320u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.c, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c, 3u)], true, false)), !vec3<bool>(global0[_wgslsmith_index_u32(var_1.c, 3u)], false, global0[_wgslsmith_index_u32(20573u, 3u)]), true), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(61887u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 3u)], true))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(-arg_0.a, ~(~vec4<u32>(4294967295u, arg_0.c, u_input.a, 4294967295u >> (u_input.a % 32u))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(var_0.a.x, ~(~_wgslsmith_clamp_i32(arg_0.a.x, 16291i, arg_0.a.x))), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 0i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, 66423i, 7859i), var_0.a, var_0.a)), arg_0.a.x << (0u % 32u))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, var_0.a.x << (var_0.b.x % 32u), i32(-1i) * -2147483647i)), arg_0.a), countOneBits(min(22951i, arg_0.a.x)));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    return arg_0;
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 3>();
    let var_0 = func_6(Struct_1(min(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-52287i, -1i, -26545i), vec3<i32>(-49526i, 18511i, 5367i))), ~vec3<i32>(0i, -1i, 26057i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-347f * -1163f), _wgslsmith_f_op_f32(abs(312f))))), ~(~_wgslsmith_clamp_u32(41822u, 53322u, u_input.a))), ~(~abs(4897u) ^ u_input.a), vec2<f32>(466f, -3100f), func_2(Struct_1(firstLeadingBit(min(vec3<i32>(-10305i, 0i, -2147483647i), vec3<i32>(-2147483647i, -4245i, 1i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1035f, 1642f)), -1039f)), 40481u)));
    var var_1 = Struct_1(-((var_0.a << (~vec3<u32>(20366u, 4294967295u, var_0.c) % vec3<u32>(32u))) ^ -firstLeadingBit(vec3<i32>(var_0.a.x, var_0.a.x, 10247i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_6(func_6(Struct_1(var_0.a, -229f, u_input.a), 1u, vec2<f32>(1716f, var_0.b), true), _wgslsmith_mod_u32(34763u, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), false).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1126f)) + _wgslsmith_f_op_f32(step(-468f, var_0.b)))))), _wgslsmith_dot_vec2_u32(vec2<u32>(func_5(global0[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-399f, -387f, var_0.b), vec3<f32>(var_0.b, var_0.b, 1052f))), true, 750f).x, max(var_0.c, u_input.a) ^ 1u), ~_wgslsmith_sub_vec2_u32(func_5(global0[_wgslsmith_index_u32(u_input.a, 3u)], vec3<f32>(var_0.b, var_0.b, -507f), true, var_0.b).zz, reverseBits(vec2<u32>(u_input.a, 0u)))));
    let var_2 = _wgslsmith_clamp_vec4_u32(countOneBits(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 16299u, var_0.c, var_1.c), vec4<u32>(4294967295u, 68918u, 4294967295u, var_1.c)), vec4<u32>(var_1.c, 4294967295u, 1u, 140754u))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_0.c, var_1.c, var_1.c), ~vec4<u32>(var_1.c, var_0.c, 8607u, 45090u)) ^ vec4<u32>(var_0.c, min(u_input.a, u_input.a), u_input.a & u_input.a, var_0.c), firstLeadingBit(firstLeadingBit(~vec4<u32>(4294967295u, 37876u, 0u, 4956u)))), vec4<u32>(~(~(~u_input.a)), 1u, func_3(firstTrailingBit(var_1.c), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, 1594f, var_0.b))))), var_1.c));
    var_1 = func_6(var_0, _wgslsmith_mod_u32(55163u, var_2.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, 732f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1892f, var_0.b), vec2<f32>(var_0.b, var_1.b)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, var_0.b)))), !(false & global0[_wgslsmith_index_u32(0u, 3u)]))), true);
    return Struct_2(vec3<i32>(var_1.a.x, _wgslsmith_mod_i32(firstLeadingBit(-41160i), ~(i32(-1i) * -20367i)), 2147483647i), vec4<u32>(abs(~68055u), var_0.c, _wgslsmith_dot_vec2_u32(var_2.yx, countOneBits(~vec2<u32>(var_2.x, 4503u))), func_6(Struct_1(vec3<i32>(var_1.a.x, -1019i, var_0.a.x) << (vec3<u32>(25726u, 0u, var_2.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(var_1.b, 1608f)), ~var_1.c), u_input.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-996f, -1864f), vec2<f32>(var_1.b, var_1.b), all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_2.x, 3u)], false)))), _wgslsmith_clamp_i32(-78038i, 0i, -18529i) > -54461i).c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 3u)];
    let var_1 = ~vec4<u32>(_wgslsmith_mod_u32(u_input.a, ~(~32011u)), 1u, reverseBits(_wgslsmith_mod_u32(1u, u_input.a << (u_input.a % 32u))), u_input.a);
    var_0 = any(vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a) << (reverseBits(var_1.x) % 32u), 3u)], true));
    let var_2 = vec2<u32>(abs(4294967295u), u_input.a << (min(~_wgslsmith_div_u32(var_1.x, 72925u), ~(0u << (u_input.a % 32u))) % 32u));
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1127f);
    let var_5 = 1i;
    var_0 = all(!(!vec2<bool>(!global0[_wgslsmith_index_u32(var_2.x, 3u)], true)));
    let x = u_input.a;
    s_output = StorageBuffer(-822f, -(~abs(var_5 | 5789i)), func_5(false, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(802f, -1212f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4, var_4, var_4), vec3<f32>(var_4, -1316f, var_4), vec3<bool>(global0[_wgslsmith_index_u32(var_3.b.x, 3u)], false, true))) * vec3<f32>(372f, 1000f, -658f)))), false, var_4));
}

