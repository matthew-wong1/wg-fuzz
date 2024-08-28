struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(~vec3<u32>(~abs(50237u), ~u_input.a.x, 4294967295u), Struct_1((0u >> (~u_input.a.x % 32u)) < (u_input.a.x >> ((u_input.a.x >> (36695u % 32u)) % 32u))), Struct_2(Struct_1(any(vec4<bool>(true, true, true, true)))));
    var_0 = Struct_3(~abs(~var_0.a << (vec3<u32>(14297u, 35723u, u_input.a.x) % vec3<u32>(32u))), Struct_1(!any(select(vec4<bool>(true, false, false, var_0.b.a), vec4<bool>(var_0.c.a.a, var_0.c.a.a, true, var_0.b.a), vec4<bool>(var_0.c.a.a, false, var_0.c.a.a, true)))), Struct_2(var_0.c.a));
    let var_1 = var_0.c.a;
    var var_2 = vec3<i32>(-(~_wgslsmith_mult_i32(2005i, u_input.b)) ^ -u_input.b, u_input.b, u_input.b);
    var var_3 = _wgslsmith_f_op_f32(-686f + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-1470f + 482f))));
    return vec2<bool>(var_0.c.a.a, false);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_2(arg_2.b.c.a);
    var var_1 = max(vec4<i32>(-_wgslsmith_sub_i32(-u_input.b, ~arg_0), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b), abs(arg_0), ~arg_0), u_input.b, -(arg_0 ^ 2912i)), 1i, ~(i32(-1i) * -arg_0)), vec4<i32>(-u_input.b, select(arg_0, _wgslsmith_mod_i32(u_input.b, 21433i), ~arg_0 > ~(-10875i)), ~1i & u_input.b, reverseBits(_wgslsmith_sub_i32(u_input.b, 1i))));
    var var_2 = _wgslsmith_sub_vec3_i32(select(var_1.yww, -_wgslsmith_clamp_vec3_i32(var_1.yzx, var_1.xzx, vec3<i32>(-15385i, arg_0, -25249i)), vec3<bool>(true, true, true)) << (~u_input.a.wyy % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(-(abs(vec3<i32>(-2147483647i, -19971i, 2147483647i)) ^ ~vec3<i32>(u_input.b, var_1.x, 28947i)), min(vec3<i32>(-1i) * -var_1.xyw, _wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_0, var_1.x, -1408i)), firstLeadingBit(var_1.yzy))), ~var_1.xwz));
    var_2 = _wgslsmith_div_vec3_i32(var_1.wwx >> (~(vec3<u32>(1u, arg_2.b.a.x, arg_2.b.a.x) >> (~u_input.a.zwx % vec3<u32>(32u))) % vec3<u32>(32u)), abs(var_1.wzy));
    let var_3 = Struct_1(select(false, !(!all(vec4<bool>(var_0.a.a, false, false, false))), !(!arg_2.d.x)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(1067f * _wgslsmith_f_op_f32(1110f * arg_2.c.x)))))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_4(0i << (~(~u_input.a.x) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, 737f, -1744f, -846f))) - vec4<f32>(-661f, 657f, arg_1.x, arg_1.x))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -863f) * _wgslsmith_f_op_f32(min(-1000f, arg_1.x))), Struct_3(~vec3<u32>(13756u, u_input.a.x, u_input.a.x), Struct_1(false), Struct_2(Struct_1(true))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)), 776f), func_3()))), Struct_3(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 24018u), u_input.a.xyw)), Struct_1(true), Struct_2(Struct_1(true))), arg_1, !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(all(vec4<bool>(false, true, false, true)), true), vec2<bool>(true, true)));
    var_0 = Struct_4(393f, var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-140f, -1130f)) * _wgslsmith_f_op_f32(arg_1.x + 194f)), _wgslsmith_f_op_f32(max(-1209f, _wgslsmith_f_op_f32(-arg_1.x))), 391f)), !vec2<bool>(var_0.d.x, var_0.d.x));
    var_0 = Struct_4(-779f, var_0.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1482f + arg_1.x)) - _wgslsmith_f_op_f32(-1142f - -222f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1137f + -1000f)))), _wgslsmith_f_op_f32(-var_0.c.x)), !(!(!func_3())));
    var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(568f * var_0.a)), arg_1.x), Struct_3(var_0.b.a, Struct_1(all(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1356f, 154f, var_0.a))), _wgslsmith_f_op_vec3_f32(-arg_1)))), select(vec2<bool>(true, var_0.a > _wgslsmith_f_op_f32(func_4(arg_0, vec4<f32>(var_0.a, 166f, var_0.c.x, var_0.c.x), Struct_4(arg_1.x, Struct_3(var_0.b.a, var_0.b.c.a, var_0.b.c), arg_1, var_0.d)))), select(var_0.d, vec2<bool>(!var_0.d.x, false), var_0.b.b.a), !var_0.d));
    var var_1 = ~vec2<i32>(-u_input.b, arg_0);
    return Struct_2(Struct_1(any(vec3<bool>(true, arg_0 == -16905i, true))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(374f, 435f, -1624f), vec3<f32>(-700f, -795f, 834f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1078f, 585f, -137f), vec3<f32>(275f, 255f, 980f), vec3<bool>(true, false, false))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(610f)), 1063f, _wgslsmith_f_op_f32(step(-1226f, 1000f))))));
    let var_1 = vec2<i32>(-82i, u_input.b);
    var var_2 = var_0.a;
    var var_3 = vec2<i32>(-1i) * -(~(abs(var_1) | vec2<i32>(1i, -36528i)));
    let var_4 = Struct_3(u_input.a.xzy, func_2(var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(948f, -850f, 176f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, 205f, -633f) - vec3<f32>(-1210f, 1531f, -248f)), var_2.a)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2260f, -1000f, 123f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1091f, 883f, -265f)), var_2.a)))).a, func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b, _wgslsmith_sub_i32(-1i, var_1.x), _wgslsmith_add_i32(-20689i, 15958i)), vec3<i32>(-32012i, -23588i, 2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(floor(-1019f)), _wgslsmith_f_op_f32(f32(-1f) * -996f), -449f)));
    return var_4;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_add_u32(arg_0, 63153u);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-197f, -1408f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1469f) * _wgslsmith_div_f32(-747f, 1000f))), _wgslsmith_f_op_f32(step(2454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -783f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -217f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-817f, -288f, -325f, 899f) - vec4<f32>(-1058f, -781f, 551f, -641f)) * vec4<f32>(915f, -1123f, 629f, -1000f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_div_f32(2069f, _wgslsmith_f_op_f32(f32(-1f) * -932f)))), -895f));
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1i << (_wgslsmith_add_u32(arg_2.x, 42625u) % 32u), -2147483647i), vec3<i32>(-_wgslsmith_mod_i32(2147483647i, -2147483647i), _wgslsmith_clamp_i32(u_input.b, -1442i, ~(-1i)), -1i)), vec3<i32>(-u_input.b, countOneBits(_wgslsmith_clamp_i32(-1i, -1i, 2154i)), u_input.b) << (func_1().a % vec3<u32>(32u)));
    var_1 = vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-var_1.x), -1049f);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -860f)), -637f)) + var_1.x), func_1(), vec3<f32>(_wgslsmith_f_op_f32(trunc(1393f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-962f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, -1046f))) + -348f)), vec2<bool>(true, false));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_2 {
    return func_2(_wgslsmith_mult_i32(-17008i, u_input.b ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -27228i, u_input.b), vec4<i32>(23604i, -1i, 0i, u_input.b))) | 0i, _wgslsmith_f_op_vec3_f32(min(arg_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-145f, arg_2.c.x, 1163f))) * _wgslsmith_f_op_vec3_f32(floor(arg_2.c)))))));
}

fn func_7(arg_0: Struct_2) -> Struct_4 {
    var var_0 = false;
    let var_1 = Struct_3(u_input.a.zzz, arg_0.a, Struct_2(Struct_1(func_2(countOneBits(u_input.b), vec3<f32>(-1012f, -795f, -1416f)).a.a)));
    var_0 = -u_input.b == u_input.b;
    var var_2 = ~(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-11579i, u_input.b, 16403i, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(18606i, 27117i, u_input.b, u_input.b)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), var_1.c.a.a) ^ ~vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 65126i, 0i), vec4<i32>(u_input.b, -7203i, 1i, 1i)), -31323i, countOneBits(-2147483647i)));
    var_2 = select(select(vec4<i32>(1i, 2147483647i, var_2.x, _wgslsmith_sub_i32(34047i, var_2.x)) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(75298i, u_input.b, var_2.x, 2147483647i), vec4<i32>(u_input.b, 0i, u_input.b, -1i), vec4<i32>(var_2.x, 0i, 36727i, var_2.x)), vec4<i32>(abs(abs(-2147483647i)), -1i, -var_2.x & var_2.x, firstTrailingBit(-var_2.x)), !(!select(vec4<bool>(arg_0.a.a, arg_0.a.a, var_1.b.a, var_1.c.a.a), vec4<bool>(true, var_1.c.a.a, true, var_1.c.a.a), vec4<bool>(true, false, false, var_1.b.a)))), max(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, var_2.x, 2147483647i, 2147483647i) & -vec4<i32>(var_2.x, -2147483647i, 1i, 22573i), select(select(vec4<i32>(var_2.x, var_2.x, -15735i, u_input.b), vec4<i32>(-2147483647i, var_2.x, 39910i, var_2.x), vec4<bool>(true, true, var_1.c.a.a, var_1.c.a.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, -1i, u_input.b, var_2.x), vec4<i32>(2147483647i, 113468i, u_input.b, 41172i)), any(vec3<bool>(false, var_1.b.a, true))), firstTrailingBit(~vec4<i32>(u_input.b, -6081i, u_input.b, -18037i))), vec4<i32>(var_2.x ^ var_2.x, max(7303i, var_2.x) & -19324i, _wgslsmith_dot_vec2_i32(var_2.wy, vec2<i32>(2147483647i, var_2.x)) << (_wgslsmith_mod_u32(24074u, u_input.a.x) % 32u), max(u_input.b, -44120i))), vec4<bool>(var_1.b.a, true, func_6(var_1.b, vec2<bool>(true, func_6(var_1.b, vec2<bool>(true, var_1.b.a), Struct_4(812f, var_1, vec3<f32>(-138f, 445f, -698f), vec2<bool>(arg_0.a.a, arg_0.a.a))).a.a), Struct_4(1377f, func_1(), vec3<f32>(831f, 663f, 483f), vec2<bool>(false, false))).a.a, var_1.c.a.a));
    return Struct_4(-744f, Struct_3(vec3<u32>(2234u, u_input.a.x, abs(25562u)), var_1.c.a, Struct_2(arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_f_op_f32(select(-829f, -978f, true)), -218f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-341f, -246f, -699f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, 290f, -964f)))))), vec2<bool>(func_5(_wgslsmith_div_u32(var_1.a.x, 4294967295u), var_1, var_1.a).b.c.a.a, arg_0.a.a));
}

fn func_8(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32((-(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(0i, u_input.b, u_input.b, 335i)) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(73797u, 7120u, 4294967295u, 13428u), u_input.a) % vec4<u32>(32u))) ^ firstTrailingBit(countOneBits(~vec4<i32>(u_input.b, u_input.b, 1i, u_input.b))), ~(-select(-vec4<i32>(u_input.b, 51744i, u_input.b, -13650i), select(vec4<i32>(u_input.b, u_input.b, -33894i, u_input.b), vec4<i32>(21458i, -2147483647i, u_input.b, -29368i), vec4<bool>(false, true, arg_0.b.b.a, true)), false & arg_0.b.b.a)));
    var var_1 = arg_0.c.x;
    let var_2 = 6576i;
    var_1 = func_5(4294967295u, func_1(), vec3<u32>(12820u, 1u & (0u ^ arg_0.b.a.x), u_input.a.x) & (arg_0.b.a | ~vec3<u32>(4294967295u, 2386u, 0u))).c.x;
    var var_3 = true;
    return arg_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(func_6(Struct_1(true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), func_5(u_input.a.x ^ u_input.a.x, func_1(), ~u_input.a.wxw))), ~u_input.a.x);
    let var_1 = any(vec3<bool>(var_0.a.a, func_1().c.a.a, true));
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_div_f32(1006f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-459f, -123f, var_0.a.a)) + _wgslsmith_f_op_f32(-1413f * 2348f)))));
    var var_4 = ~func_7(Struct_2(Struct_1(var_1))).b.a.x;
    var_2 = _wgslsmith_add_i32(24720i >> (_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(0u, select(1u, u_input.a.x, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a.yyz), ~u_input.a.x)) % 32u), ~_wgslsmith_sub_i32(u_input.b, ~(-u_input.b)));
    var var_5 = var_0;
    var_5 = func_2(~u_input.b | 2147483647i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), 255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1572f, var_3)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, 2147483647i, -50140i)), vec3<i32>(u_input.b, -1i, u_input.b) & vec3<i32>(u_input.b, -11108i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -54676i), vec2<i32>(-2147483647i, u_input.b)) >> (_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(28122u, 4294967295u)) % 32u)) | vec2<i32>(~(u_input.b ^ 64203i), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, 368f, -1888f) - vec4<f32>(var_3, -1251f, var_3, -593f)), vec4<f32>(var_3, 1000f, var_3, -1386f), !vec4<bool>(var_1, true, var_5.a.a, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-624f, var_3, -573f, var_3))))), ~firstLeadingBit(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 37698i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(max(-674f, var_3))))));
}

