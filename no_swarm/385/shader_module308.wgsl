struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    let var_0 = vec4<u32>(~(~(~(~u_input.c))), 4294967295u, arg_1.a, u_input.c);
    return _wgslsmith_clamp_vec4_u32(var_0, select(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.xy, var_0.xx), vec2<u32>(4294967295u, 136274u)), abs(_wgslsmith_div_u32(arg_1.a, 1u)), _wgslsmith_dot_vec3_u32(var_0.wyw, var_0.zzy), _wgslsmith_sub_u32(select(73592u, arg_1.a, true), _wgslsmith_mod_u32(var_0.x, u_input.c))), reverseBits(var_0 >> (~vec4<u32>(61050u, 22639u, u_input.c, arg_1.a) % vec4<u32>(32u))), arg_1.c.x), var_0);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = select(~(~func_3(Struct_1(arg_2.wzx, arg_2.x, vec4<i32>(0i, u_input.b, 8788i, 44562i)), Struct_2(0u, vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<bool>(arg_1, arg_1, arg_1)), -1i)), firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(18931u, 20357u, 34916u, 1u), vec4<u32>(u_input.c, 1u, u_input.c, 45998u))), arg_1) << (countOneBits(firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 5658u, 1u, 49634u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)), ~vec4<u32>(1u, u_input.c, 40481u, 76439u)))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~firstLeadingBit(u_input.c)), 0u), abs(vec2<u32>(~(~76664u), u_input.c)));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - arg_2.x)))), -1309f)), 431f));
    let var_3 = _wgslsmith_add_i32(u_input.b, u_input.a);
    let var_4 = -19447i;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0, -2143f))))), Struct_2(u_input.c, vec3<i32>(_wgslsmith_mod_i32(0i, u_input.a) | -1i, 19621i, firstLeadingBit(-2147483647i)), !(!select(vec3<bool>(true, false, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    var var_0 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(19443u, 0u, u_input.c), vec3<u32>(u_input.c, 50741u, arg_3.x)) & func_3(arg_0, Struct_2(0u, arg_0.c.wxw, arg_2.c), u_input.b).yzx, func_3(Struct_1(arg_0.a, -149f, vec4<i32>(11756i, arg_1.a.b.b.x, 1i, arg_1.a.b.b.x)), arg_1.a.b, countOneBits(arg_0.c.x)).yzy), max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9827u, 4294967295u, 1u), vec4<u32>(4294967295u, arg_1.a.b.a, 4294967295u, 0u) | vec4<u32>(2163u, arg_2.a, arg_2.a, 17574u)), 1u));
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.b))))), !any(!vec2<bool>(arg_2.c.x, true)), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.b) - _wgslsmith_div_f32(1235f, 1547f))), arg_1.a.a, arg_0.b));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1810f)), _wgslsmith_f_op_f32(-429f * _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(trunc(arg_0.a.x)))), any(!func_2(arg_1.a.a, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, var_1.a, arg_1.a.a, arg_1.a.a))).b.c)));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = arg_0.a.b.b.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, 329f, arg_0.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a, 1043f) + _wgslsmith_div_f32(-1740f, arg_0.a.a)), -(~vec4<i32>(arg_0.a.b.b.x, 16738i, u_input.a, var_0))), Struct_4(func_2(_wgslsmith_div_f32(-630f, arg_0.a.a), false, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1000f, -186f, arg_0.a.a), vec4<f32>(arg_0.a.a, arg_0.a.a, -613f, -882f))))), arg_0.a.b, vec2<u32>(~u_input.c, _wgslsmith_mod_u32(arg_0.a.b.a, 25514u)) & ~(vec2<u32>(20181u, u_input.c) ^ vec2<u32>(1u, 37162u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2869f * -2626f) - _wgslsmith_f_op_f32(-594f - -1330f)))) - _wgslsmith_f_op_f32(arg_0.a.a + arg_0.a.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.a, _wgslsmith_f_op_f32(max(305f, arg_0.a.a)), _wgslsmith_div_f32(-248f, 479f), arg_0.a.a))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(757f, arg_0.a.a, -895f, arg_0.a.a) - vec4<f32>(-250f, -969f, arg_0.a.a, -416f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-330f, 1690f, 264f, arg_0.a.a) + vec4<f32>(arg_0.a.a, -1261f, arg_0.a.a, 273f)))))));
    let var_3 = arg_0.a;
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -120f)))), _wgslsmith_f_op_f32(ceil(arg_0.a.a)), var_3.a), func_2(arg_0.a.a, false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1016f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 607f, var_3.a)).a, vec4<i32>(var_3.b.b.x ^ -u_input.a, max(-min(-2147483647i, arg_0.a.b.b.x), (-20043i & arg_0.a.b.b.x) | u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-1i, arg_0.a.b.b.x), -var_3.b.b.x), vec2<i32>(abs(u_input.a), firstTrailingBit(var_3.b.b.x))), 0i));
    return var_3.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -782f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-682f, -387f, -912f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1253f, -751f, 695f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1225f, 1572f, 1061f))), _wgslsmith_f_op_f32(trunc(1f)), vec4<i32>(-1i) * -min(max(vec4<i32>(arg_0.b.x, -2147483647i, arg_0.b.x, arg_0.b.x), vec4<i32>(-19375i, u_input.a, 41885i, 1i)), vec4<i32>(2147483647i, 0i, u_input.a, 4042i) ^ vec4<i32>(u_input.a, -45918i, u_input.b, 12999i)));
    let var_2 = Struct_1(var_1.a, -150f, vec4<i32>(0i, select(0i, ~var_1.c.x, false), ~arg_0.b.x, 1i) & -reverseBits(_wgslsmith_mult_vec4_i32(var_1.c, vec4<i32>(0i, var_1.c.x, -1i, u_input.b))));
    let var_3 = arg_0;
    let var_4 = func_1(Struct_4(Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_2.b)))), func_2(-398f, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.b, var_2.b, 1822f) - vec4<f32>(-1884f, var_2.a.x, var_1.a.x, -1091f))).b)));
    return 27793u;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.yx), arg_0.a.yz);
    var var_1 = -31866i;
    let var_2 = max(vec2<u32>(abs(abs(u_input.c)), firstLeadingBit(4294967295u)) >> (~min(~vec2<u32>(u_input.c, arg_1.x), vec2<u32>(21873u, u_input.c)) % vec2<u32>(32u)), vec2<u32>(arg_1.x, u_input.c));
    var var_3 = (_wgslsmith_mult_i32(-38893i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 19531i, -9840i, u_input.b), arg_0.c) ^ 1619i) <= (-_wgslsmith_div_i32(2147483647i, arg_0.c.x) ^ ~1i)) | false;
    var_3 = false;
    return Struct_3(-638f, Struct_2(4294967295u, ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.a), arg_0.c.xxw), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
}

fn func_7(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    var var_0 = Struct_4(func_2(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1391f, 1097f, arg_3.a.a))), arg_2.a.a, ~vec4<i32>(6871i, arg_2.a.b.b.x, arg_0, arg_0)), arg_3, func_1(Struct_4(arg_2.a)), vec2<u32>(~0u, _wgslsmith_sub_u32(u_input.c, 1u)))), (1u ^ u_input.c) <= (arg_2.a.b.a | _wgslsmith_mult_u32(7339u, arg_3.a.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-736f * arg_2.a.a), 976f, arg_2.a.a))));
    var_0 = Struct_4(func_2(arg_1.a, !arg_2.a.b.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.a, -1000f, arg_1.a, var_0.a.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(422f, arg_1.a, arg_3.a.a, arg_1.a) + vec4<f32>(1369f, -881f, var_0.a.a, arg_2.a.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a, arg_3.a.a, arg_2.a.a, 215f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.a, var_0.a.a, 191f, 1546f) * vec4<f32>(var_0.a.a, arg_2.a.a, arg_1.a, var_0.a.a))))));
    let var_1 = !var_0.a.b.c.x & (func_1(Struct_4(func_2(arg_3.a.a, arg_3.a.b.c.x, vec4<f32>(arg_2.a.a, arg_1.a, 1367f, arg_1.a)))).a >= 17048u);
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b.a, reverseBits(var_0.a.b.a << (49749u % 32u))), func_3(Struct_1(vec3<f32>(var_0.a.a, -1152f, 870f), arg_3.a.a, vec4<i32>(2147483647i, var_0.a.b.b.x, arg_0, -19785i)), Struct_2(0u, vec3<i32>(-8703i, arg_0, 4655i), vec3<bool>(false, arg_3.a.b.c.x, arg_2.a.b.c.x)), 0i | arg_0).yz ^ countOneBits(~vec2<u32>(u_input.c, 4294967295u))), select(~firstLeadingBit(vec2<u32>(arg_3.a.b.a, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, func_5(var_0.a.b, vec3<u32>(arg_3.a.b.a, 36712u, 57763u), u_input.c))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.a * arg_1.a) * 1220f), all(arg_2.a.b.c.xx), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-453f, var_0.a.a, -607f, 300f), vec4<f32>(487f, 646f, arg_1.a, -1711f), vec4<bool>(var_0.a.b.c.x, arg_3.a.b.c.x, false, arg_2.a.b.c.x)))).b.c.yx));
    var var_3 = func_1(Struct_4(Struct_3(_wgslsmith_f_op_f32(select(-592f, _wgslsmith_f_op_f32(sign(-859f)), arg_2.a.b.c.x)), Struct_2(_wgslsmith_mod_u32(1u, 6031u), var_0.a.b.b, vec3<bool>(var_1, false, arg_3.a.b.c.x)))));
    return Struct_3(arg_2.a.a, func_6(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, var_0.a.a, arg_2.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.a) - arg_3.a.a), min(vec4<i32>(-41935i, -2147483647i, -5937i, var_3.b.x), vec4<i32>(-1i, -44218i, arg_1.b.b.x, u_input.b)) ^ -vec4<i32>(14269i, -2147483647i, arg_3.a.b.b.x, 38646i)), ~vec2<u32>(53778u, ~var_3.a)).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(-10741i, func_6(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(-173f * -413f), _wgslsmith_f_op_f32(select(-1314f, -943f, true))), 1f, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.a, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.b, 12377i), vec4<i32>(-10900i, 2147483647i, u_input.a, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(84970i, u_input.b, u_input.b, 2147483647i), vec4<i32>(u_input.b, -1i, u_input.b, u_input.a)))), vec2<u32>(func_5(func_1(Struct_4(Struct_3(-1000f, Struct_2(u_input.c, vec3<i32>(-1i, 27100i, u_input.b), vec3<bool>(true, true, false))))), vec3<u32>(0u, u_input.c, u_input.c) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)), ~u_input.c), ~u_input.c)), Struct_4(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1315f * 834f), _wgslsmith_f_op_f32(-1189f + 200f)), all(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-927f, 934f, -1776f, -371f))) - vec4<f32>(-179f, 1000f, 108f, -481f)))), Struct_4(Struct_3(669f, Struct_2(~u_input.c, -vec3<i32>(u_input.b, u_input.b, u_input.a), func_1(Struct_4(Struct_3(1223f, Struct_2(u_input.c, vec3<i32>(58350i, 11916i, -2147483647i), vec3<bool>(false, false, false))))).c))));
    var var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) - _wgslsmith_f_op_f32(-var_0.a)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f - var_0.a)), true, func_6(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -232f, 1392f)), -533f, max(vec4<i32>(-51097i, var_0.b.b.x, u_input.a, -2147483647i), vec4<i32>(var_0.b.b.x, var_0.b.b.x, u_input.b, u_input.b))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.a, 1u), vec2<u32>(u_input.c, 4294967295u))).b.c.x, true), vec4<bool>(var_0.b.c.x & var_0.b.c.x, all(select(!vec4<bool>(false, var_0.b.c.x, false, false), vec4<bool>(true, true, var_0.b.c.x, false), select(vec4<bool>(false, var_0.b.c.x, true, true), vec4<bool>(var_0.b.c.x, var_0.b.c.x, true, var_0.b.c.x), vec4<bool>(var_0.b.c.x, false, var_0.b.c.x, false)))), var_0.b.c.x, true), !vec4<bool>(!(var_0.b.a >= 0u), func_2(_wgslsmith_f_op_f32(-var_0.a), true && var_0.b.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1159f, var_0.a, var_0.a))).b.c.x, true, true));
    var_1 = !select(vec4<bool>(func_6(Struct_1(vec3<f32>(var_0.a, -1912f, var_0.a), -1830f, vec4<i32>(-1i, var_0.b.b.x, 0i, -14806i)), vec2<u32>(21614u, 54623u) >> (vec2<u32>(1u, var_0.b.a) % vec2<u32>(32u))).b.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_0.b.a, u_input.c, u_input.c), vec4<u32>(17892u, 1u, var_0.b.a, var_0.b.a)) <= 1u, all(!vec2<bool>(var_0.b.c.x, false)), true), select(select(select(vec4<bool>(false, false, var_0.b.c.x, true), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_0.b.c.x, false, true, var_0.b.c.x)), vec4<bool>(true, false, true, false), var_1.x), vec4<bool>(any(vec4<bool>(false, var_0.b.c.x, true, var_1.x)), false, true, func_2(259f, var_0.b.c.x, vec4<f32>(var_0.a, var_0.a, 326f, var_0.a)).b.c.x), all(var_0.b.c.zz) | true), !vec4<bool>(all(vec3<bool>(false, var_0.b.c.x, true)), any(vec4<bool>(true, true, var_1.x, false)), var_0.b.c.x, var_1.x | false));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.a, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -175f), 1f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) + vec3<f32>(292f, 1490f, var_0.a)))))));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(var_3.b.b.x, ~_wgslsmith_mod_i32(u_input.a, 10600i), var_1.x), min(-countOneBits(-41490i), var_0.b.b.x), 929i, ~(-1i)));
}

