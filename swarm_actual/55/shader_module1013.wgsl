struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(arg_0.xz, arg_0.zz);
    return 1f;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = all(vec4<bool>(true, arg_1.b.b, all(select(select(vec4<bool>(true, arg_2.a.c, arg_2.a.b, false), vec4<bool>(true, arg_2.b.c, arg_1.b.b, arg_1.b.b), true), !vec4<bool>(true, arg_2.b.b, false, arg_1.b.c), select(vec4<bool>(arg_1.a.b, true, true, arg_2.a.b), vec4<bool>(true, arg_2.b.c, false, arg_1.a.b), arg_1.b.b))), all(vec3<bool>(arg_0 < -222f, arg_2.a.b, arg_1.b.c))));
    let var_1 = _wgslsmith_mult_i32(24677i << (_wgslsmith_div_u32(u_input.a.x, ~(~u_input.b.x)) % 32u), -countOneBits(arg_1.a.a.x) << (13395u % 32u));
    let var_2 = u_input.a;
    var var_3 = Struct_4(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(~arg_1.b.d, _wgslsmith_clamp_i32(var_1, 52867i, 0i), firstTrailingBit(var_1)), firstLeadingBit(select(vec3<i32>(-32678i, var_1, arg_1.b.d), arg_1.b.a, vec3<bool>(false, var_0, arg_1.b.b))), arg_1.b.a), true, select(true, all(vec3<bool>(var_0, arg_1.a.b, true)), var_0 && true) | (var_0 || true), 28475i), Struct_3(arg_2.a, vec2<i32>(-1i) * -vec2<i32>(var_1, 43353i), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f), 645f), _wgslsmith_f_op_f32(arg_0 - arg_0))), 57738u);
    let var_4 = arg_2;
    return vec4<f32>(var_3.b.c.x, -475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(504f, _wgslsmith_f_op_f32(555f - -1453f)))), var_3.b.c.x);
}

fn func_2(arg_0: vec4<i32>) -> vec4<f32> {
    var var_0 = 1u != (~u_input.b.x | ~(~(~u_input.a.x)));
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x) >> (u_input.a.x % 32u), 1948u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, 1000f, -184f, -1768f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(637f, 489f, 295f, -1731f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1080f, -1260f, -192f, -704f))), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false)))))) * _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(func_3(abs(-vec4<i32>(-26936i, -1i, 1i, -2147483647i)), var_1.x, select(arg_0.x, 51288i, true) << (790u % 32u), _wgslsmith_dot_vec2_u32(u_input.b.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(var_1.x, var_1.x), vec2<u32>(u_input.b.x, u_input.a.x))))), Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(arg_0.wyx, arg_0.zzx), any(vec4<bool>(false, false, false, true)), true, -arg_0.x), Struct_1(~vec3<i32>(-18317i, 1346i, -40373i), any(vec2<bool>(true, true)), true, _wgslsmith_mult_i32(-2147483647i, arg_0.x))), Struct_2(Struct_1(-vec3<i32>(arg_0.x, arg_0.x, 0i), true, all(vec4<bool>(false, false, false, false)), -arg_0.x), Struct_1(countOneBits(arg_0.yyw), true, true, firstLeadingBit(1i))))));
    var var_3 = Struct_1(arg_0.xxx, all(vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true)) && all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true)))), true, arg_0.x);
    var_1 = reverseBits(min(vec2<u32>(~var_1.x, 0u), u_input.b.xz));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(var_2.x + -205f), true)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-var_2.x)), var_2.x, var_2.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: bool) -> bool {
    var var_0 = Struct_4(Struct_1(arg_1, !arg_2 || true, arg_2 | false, ~(~arg_1.x & firstTrailingBit(24843i))), Struct_3(Struct_1(abs(arg_1), arg_2 & (arg_1.x == arg_1.x), any(vec2<bool>(false, arg_2)), 1i), _wgslsmith_mult_vec2_i32(arg_1.yx, vec2<i32>(abs(arg_1.x), -arg_1.x)), _wgslsmith_div_vec2_f32(arg_0.xw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1792f, 787f)))), ~(~(u_input.a.x << (~u_input.b.x % 32u))));
    var var_1 = select(!select(!select(vec4<bool>(false, true, var_0.a.c, arg_2), vec4<bool>(true, true, arg_2, true), arg_2), !vec4<bool>(arg_2, arg_2, true, true), !any(vec2<bool>(false, false))), vec4<bool>(true, !(select(arg_2, false, var_0.b.a.b) == var_0.b.a.b), var_0.a.b, all(select(vec2<bool>(arg_2, false), vec2<bool>(true, true), !arg_2))), select(~u_input.a.x <= var_0.c, arg_2, arg_2));
    var var_2 = -arg_1.xz ^ abs(abs(arg_1.xz << (vec2<u32>(u_input.a.x, var_0.c) % vec2<u32>(32u))) | -vec2<i32>(var_0.a.d, arg_1.x));
    var_1 = !select(vec4<bool>(any(var_1.zy), true && !var_1.x, var_1.x && !var_1.x, !arg_2), !vec4<bool>(var_1.x, true, true, true), var_0.a.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, -25254i, 33124i, var_0.a.a.x), vec4<i32>(1i, 32318i, -2147483647i, var_2.x)))).x, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.yyw)));
    return all(vec4<bool>(false, true, all(select(!var_1.zw, !var_1.wz, false)), any(var_1.yzx)));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> vec3<f32> {
    let var_0 = !func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, arg_1, 1262f, arg_0.b.c.x)), vec4<f32>(arg_3.x, 1000f, arg_2, 462f)) - _wgslsmith_f_op_vec4_f32(func_2(firstLeadingBit(vec4<i32>(arg_0.b.b.x, -22264i, arg_0.a.d, -137i))))), arg_0.a.a, true);
    return _wgslsmith_f_op_vec3_f32(round(arg_3));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_5, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(arg_1.c.x + arg_2.a));
    var var_1 = !(!vec2<bool>(false, arg_1.a.b));
    var_1 = vec2<bool>(!(1i == _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.a.a.x, 1i), abs(arg_1.a.d))), !(arg_3 == arg_3));
    var var_2 = abs(39461u);
    var var_3 = Struct_2(Struct_1(reverseBits(countOneBits(-vec3<i32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.b.x))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-206f, arg_3, arg_2.a, -647f) + vec4<f32>(arg_0.x, arg_0.x, var_0.a, arg_2.a))), firstTrailingBit(~arg_1.a.a), countOneBits(u_input.b.x) == u_input.b.x), var_1.x, _wgslsmith_div_i32(-arg_1.b.x, _wgslsmith_div_i32(arg_1.b.x, arg_1.b.x ^ 1i))), Struct_1(~arg_1.a.a, true, arg_1.a.c, 66115i));
    return arg_1;
}

fn func_7(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, -24535i, arg_2.a.d), vec4<i32>(-1i, arg_2.b.x, 77305i, -42952i)), ~(~31918u), func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(-283f, arg_0, -536f) - vec3<f32>(-802f, 1000f, arg_2.c.x)), Struct_3(Struct_1(arg_2.a.a, false, arg_2.a.c, arg_2.a.d), vec2<i32>(arg_2.b.x, arg_2.b.x), arg_2.c), Struct_5(-503f), arg_0).b.x, ~1u)))), _wgslsmith_f_op_f32(arg_2.c.x * 540f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -943f), arg_0)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -644f, -1620f), vec3<f32>(1255f, -2078f, arg_2.c.x), vec3<bool>(true, arg_2.a.c, true))), _wgslsmith_f_op_vec4_f32(func_4(-1582f, Struct_2(Struct_1(arg_2.a.a, true, false, -1i), Struct_1(vec3<i32>(37198i, 23521i, arg_2.a.a.x), true, false, arg_2.b.x)), Struct_2(Struct_1(vec3<i32>(arg_2.b.x, arg_2.b.x, arg_2.b.x), false, arg_2.a.b, arg_2.a.d), arg_2.a))).wwz, vec3<bool>(false, arg_2.a.b, arg_2.a.c))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-368f, var_0.x, -137f), vec3<f32>(-503f, arg_2.c.x, arg_2.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_2.c.x, arg_0)), true))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_div_f32(-284f, 1348f)), -1404f, _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, arg_2.c.x, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.x, -776f) - vec3<f32>(-137f, var_0.x, arg_2.c.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, arg_2.c.x, 1427f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-829f, 793f, 1586f), vec3<f32>(arg_2.c.x, -1094f, arg_0)))))));
    let var_1 = Struct_2(func_6(vec3<f32>(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 453f, 884f)), func_6(vec3<f32>(1381f, arg_0, arg_2.c.x), Struct_3(Struct_1(arg_2.a.a, true, arg_2.a.c, -19895i), vec2<i32>(-14181i, arg_2.b.x), arg_2.c), Struct_5(arg_0), arg_2.c.x), Struct_5(var_0.x), _wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x)).c.x, -1853f, _wgslsmith_f_op_vec3_f32(func_1(Struct_4(arg_2.a, arg_2, 56916u), -1556f, var_0.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -114f, -1000f), vec3<f32>(-119f, arg_2.c.x, 111f), vec3<bool>(true, arg_2.a.b, arg_2.a.b))))).x), Struct_3(Struct_1(arg_2.a.a, !arg_2.a.b, true, _wgslsmith_mult_i32(41406i, arg_2.a.a.x)), vec2<i32>(2147483647i, _wgslsmith_sub_i32(arg_2.b.x, arg_2.b.x)), arg_2.c), Struct_5(_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-281f * 1000f)))).a, Struct_1(vec3<i32>(arg_2.a.a.x ^ ~arg_2.a.d, ~firstTrailingBit(arg_2.b.x), _wgslsmith_mod_i32(-40221i, -36713i)), true, arg_2.a.c, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.x, 0i), vec2<i32>(arg_2.b.x, 40677i)))));
    var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x * _wgslsmith_f_op_f32(func_3(abs(vec4<i32>(arg_2.b.x, 2147483647i, arg_2.a.d, 9073i)), ~4294967295u, ~(-2147483647i), 0u)))), var_0.x);
    var var_2 = Struct_1(vec3<i32>(-max(1i, firstTrailingBit(24580i)), firstTrailingBit(2147483647i), firstTrailingBit(-2147483647i)), false, !all(!select(vec3<bool>(false, false, arg_2.a.b), vec3<bool>(var_1.b.b, false, arg_2.a.b), vec3<bool>(false, false, true))), _wgslsmith_clamp_i32(-43870i, abs(arg_2.b.x), arg_2.a.a.x & 0i));
    return arg_2.a.a.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(1000f, ~firstTrailingBit(u_input.b.x), func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_4(Struct_1(vec3<i32>(23542i, 25135i, 0i), true, true, -36152i), Struct_3(Struct_1(vec3<i32>(0i, -1i, 21097i), false, false, -19676i), vec2<i32>(2147483647i, -12437i), vec2<f32>(-974f, -256f)), u_input.b.x), -151f, 867f, vec3<f32>(863f, 482f, -764f)))), Struct_3(Struct_1(vec3<i32>(2147483647i, -32452i, -2147483647i), true, false, -1i), ~vec2<i32>(-2147483647i, -4593i), vec2<f32>(339f, -137f)), Struct_5(_wgslsmith_f_op_f32(1781f - 533f)), _wgslsmith_f_op_f32(-640f + _wgslsmith_f_op_f32(f32(-1f) * -575f))), u_input.a.x) << ((u_input.b.zy & u_input.a) % vec2<u32>(32u));
    var var_1 = select(~(-reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, 28286i), vec3<i32>(16711i, var_0.x, 1i)))), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(2147483647i, var_0.x, -13172i)), vec3<i32>(1i | var_0.x, i32(-1i) * -41508i, 0i >> (u_input.b.x % 32u))) ^ func_6(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, -1193f, -451f)), vec3<f32>(1058f, 1348f, -618f), false)), func_6(vec3<f32>(-1746f, -365f, 414f), Struct_3(Struct_1(vec3<i32>(var_0.x, -2147483647i, 2147483647i), false, true, 65235i), vec2<i32>(2147483647i, var_0.x), vec2<f32>(-230f, 753f)), Struct_5(116f), _wgslsmith_f_op_f32(ceil(776f))), Struct_5(_wgslsmith_f_op_f32(round(244f))), -268f).a.a, func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, -550f, -1147f, -1329f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, 112f, 1003f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, 526f, -499f, 738f))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true))), vec3<i32>(~max(var_0.x, var_0.x), -reverseBits(var_0.x), 1i), true));
    var var_2 = Struct_4(func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-626f, -399f, 833f), vec3<f32>(2405f, 876f, -164f))) - vec3<f32>(181f, -567f, 178f))), Struct_3(Struct_1(firstLeadingBit(vec3<i32>(var_1.x, -2147483647i, 1i)), true, true, -var_1.x), vec2<i32>(~var_0.x, 0i >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(831f, 681f)))))), Struct_5(-206f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(631f - 114f) * 1f))).a, func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-458f, -130f, -777f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-191f, 722f, 147f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1173f, -1399f, -1000f)))), Struct_3(Struct_1(countOneBits(vec3<i32>(var_0.x, 69540i, var_1.x)), false, true, var_1.x), vec2<i32>(-1i, -12151i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1474f), 849f)), Struct_5(-574f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1663f + 1700f)) * _wgslsmith_f_op_f32(step(-1102f, -339f)))), u_input.a.x << (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, u_input.b.x, 5290u)), ~u_input.b | countOneBits(u_input.b)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c.x))), 0u, func_6(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.c.x, var_2.b.c.x, var_2.b.c.x), vec3<f32>(var_2.b.c.x, -1165f, -1000f), vec3<bool>(var_2.b.a.b, true, var_2.a.c))))), var_2.b, Struct_5(var_2.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1440f)))), 32287u).x);
}

