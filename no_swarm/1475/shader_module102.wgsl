struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(339f - -269f)), _wgslsmith_f_op_f32(-226f + -148f))), ~u_input.a >> (u_input.c % 32u), Struct_1(false), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a, 35510i), ~36494i, ~u_input.a), -vec3<i32>(2147483647i, u_input.a, -42840i)) & ~_wgslsmith_add_vec3_i32(vec3<i32>(32292i, 21485i, 2147483647i), vec3<i32>(10577i, -24874i, u_input.a)), Struct_3(Struct_2(~_wgslsmith_mult_u32(u_input.c, 63427u)), _wgslsmith_clamp_vec2_u32(~u_input.b.zz, firstTrailingBit(u_input.b.yw), u_input.b.xy) | (~u_input.b.wx & u_input.b.ww), select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))));
    var var_1 = -1i;
    let var_2 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(ceil(-1884f)));
    var_1 = ~_wgslsmith_dot_vec2_i32(-abs(select(var_0.d.yx, vec2<i32>(-1i, var_0.d.x), false)), abs(_wgslsmith_div_vec2_i32(~var_0.d.xz, firstTrailingBit(var_0.d.yz))));
    let var_3 = Struct_4(vec3<f32>(var_2, -498f, -364f), u_input.a, var_0.c, _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), 1i, -67558i)), (vec3<i32>(u_input.a, var_0.d.x, 27189i) | vec3<i32>(var_0.b, var_0.d.x, 2147483647i)) | min(firstTrailingBit(var_0.d), vec3<i32>(u_input.a, u_input.a, var_0.b) & var_0.d)), Struct_3(Struct_2(u_input.b.x), firstTrailingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 41327u), u_input.b.wy)), select(vec3<bool>(true, var_0.c.a, true), select(vec3<bool>(var_0.c.a, false, var_0.c.a), select(vec3<bool>(false, var_0.e.c.x, var_0.e.c.x), var_0.e.c, false), vec3<bool>(var_0.e.c.x, var_0.e.c.x, false)), select(var_0.a.x != -990f, false, var_0.e.c.x))));
    return 25328i;
}

fn func_2(arg_0: f32) -> vec4<f32> {
    let var_0 = vec2<u32>(~u_input.c, u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1453f, arg_0) + _wgslsmith_div_f32(1175f, 792f)), arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1514f, 779f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(498f, 1593f)))))))));
    let var_2 = vec4<i32>(u_input.a, firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a ^ u_input.a, func_3()), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a, -17579i) << (u_input.b.wxz % vec3<u32>(32u)), -vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -4610i, u_input.a)), vec3<i32>(i32(-1i) * -59037i, _wgslsmith_div_i32(-411i, u_input.a), u_input.a))), -u_input.a);
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1898f, var_1.x)), _wgslsmith_f_op_f32(arg_0 * var_1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(238f, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, arg_0))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1073f, -1268f) * vec2<f32>(var_1.x, -135f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1097f, 954f))))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(810f, var_1.x)), 601f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1178f, var_1.x) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -162f), arg_0, any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-var_1.x)))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(2153f, _wgslsmith_f_op_f32(trunc(-1035f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-242f * 191f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(1004f - arg_0), var_0.x == u_input.c)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f + arg_0)), arg_0, _wgslsmith_f_op_f32(285f + -1215f))));
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)) + -747f)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(580f, 187f, false))))), arg_0);
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(818f, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(506f)).x, arg_0), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * arg_0)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, _wgslsmith_f_op_f32(f32(-1f) * -1118f), 1f, var_0.x))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(-696f)).x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-350f)), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(arg_0, 265f))) - _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -438f))).x))));
    let var_2 = Struct_3(Struct_2(min(28891u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u) & u_input.b.zwy, abs(u_input.b.wwz)))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), firstLeadingBit(vec2<u32>(u_input.c, 14381u) | u_input.b.wx)), vec2<u32>(abs(abs(u_input.c)), 20414u)), select(vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))), all(vec4<bool>(true, true, true, true)), true), vec3<bool>(all(vec3<bool>(true, true, true)), false, u_input.a < -2147483647i), true));
    var var_3 = min(vec3<i32>(-(~(-2147483647i)) | ((0i | u_input.a) << (max(var_2.b.x, 1u) % 32u)), u_input.a, max(2147483647i, u_input.a)), max(vec3<i32>(_wgslsmith_mult_i32(abs(-2147483647i), 1i), 50756i, 1i), vec3<i32>(2147483647i, -2147483647i, firstTrailingBit(1i >> (1u % 32u)))));
    return ~_wgslsmith_sub_u32(u_input.b.x, 0u);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_clamp_u32(select(u_input.c, 6484u, true), u_input.c, u_input.c)), u_input.b.x, ~min(arg_1.a << (arg_1.a % 32u), _wgslsmith_clamp_u32(arg_1.a, arg_1.a, arg_1.a))), vec3<u32>(1u >> (abs(~u_input.b.x) % 32u), u_input.c, arg_1.a));
    var_0 = _wgslsmith_mult_vec3_u32(u_input.b.zyy, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wwz, vec3<u32>(arg_1.a, 26042u, 66409u)), var_0.x, firstLeadingBit(1u)), ~(~vec3<u32>(48739u, u_input.b.x, 0u))) >> (vec3<u32>(var_0.x, ~abs(u_input.b.x), ~1u) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0));
    let var_2 = ~abs(var_0.x);
    let var_3 = arg_1;
    return Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 116f)) * -1222f), _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(round(804f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f * 1106f), -789f, var_1))), -2147483647i, Struct_1(true), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -select(vec3<i32>(u_input.a, 21325i, 0i), vec3<i32>(u_input.a, -23114i, -1i), false), vec3<i32>(min(u_input.a, u_input.a >> (var_3.a % 32u)), u_input.a, 0i)), Struct_3(Struct_2(~_wgslsmith_sub_u32(var_2, 0u)), vec2<u32>(~(u_input.b.x ^ arg_1.a), ~abs(var_2)), select(vec3<bool>(true, true, u_input.a <= 0i), vec3<bool>(true, true, true), false)));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(countOneBits(arg_3.x));
    var var_1 = min(vec2<u32>(48887u, _wgslsmith_div_u32(~select(16974u, 62413u, true), arg_3.x)), vec2<u32>(~6130u, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(1u, var_0.a) >> (29422u % 32u))));
    var_1 = max(_wgslsmith_sub_vec2_u32(firstTrailingBit(func_4(_wgslsmith_div_f32(arg_1.x, 462f), var_0).e.b), ~arg_3), arg_3);
    return func_4(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1823f) * -1000f)))), Struct_2(_wgslsmith_mult_u32(arg_3.x, var_1.x))).e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_5(Struct_2(max(u_input.b.x, 0u ^ u_input.c)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1602f, 1512f, true))), Struct_2(func_1(-2304f, u_input.c)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-599f * _wgslsmith_f_op_f32(f32(-1f) * -639f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2005f))), true, vec2<u32>(u_input.c >> (u_input.c % 32u), u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-244f, 1000f, 1097f, 118f), vec4<f32>(-512f, -111f, -250f, 854f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1237f, -690f, 266f, -1000f), vec4<f32>(-809f, -824f, -273f, 929f))))) * vec4<f32>(1350f, _wgslsmith_f_op_f32(f32(-1f) * -271f), -768f, _wgslsmith_div_f32(-1485f, 2096f)))) * vec4<f32>(188f, _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(abs(534f)), var_0).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_f32(-792f, -1000f))).x), 1216f));
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(~vec3<i32>(-64255i, u_input.a, 31297i) << (min(u_input.b.xwx, u_input.b.xwy) % vec3<u32>(32u)), countOneBits(~vec3<i32>(u_input.a, 50141i, -7882i)), false), _wgslsmith_clamp_vec3_i32(-vec3<i32>(3192i, -1i, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 3243i, 25206i), vec3<i32>(u_input.a, 1i, 1i))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, 17108i)), vec3<i32>(49580i, 2147483647i, 1447i))), vec3<i32>(func_4(-260f, Struct_2(65865u)).d.x, u_input.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, u_input.a)))), ~abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -7125i, -2147483647i), vec3<i32>(51812i, 2934i, 350i)) << (vec3<u32>(u_input.c, 14553u, 0u) % vec3<u32>(32u))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -278f, -819f, 1078f) * vec4<f32>(-192f, var_1.x, -343f, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -195f) - vec4<f32>(var_1.x, var_1.x, var_1.x, -772f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-246f, var_1.x, -603f, 1937f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1445f, var_1.x, 1921f, -1438f), vec4<f32>(1554f, 935f, var_1.x, -1171f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -1024f, true))), var_1.x, -422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f - var_1.x))))));
    var var_3 = func_5(Struct_5(var_0, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-481f + var_1.x) * var_1.x), func_4(_wgslsmith_f_op_f32(-508f + -1531f), var_0).e.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.xzz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -358f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-var_1.x))).wzz))), true, ~vec2<u32>(~var_0.a, abs(~var_0.a)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(ceil(var_1.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-399f * var_1.x), -293f)), var_1.x, true | (var_0.a >= u_input.c)))), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -445f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), _wgslsmith_f_op_f32(step(968f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(func_4(-594f, var_0).a.x, var_1.x, false)))))));
    var_2 = firstTrailingBit(2147483647i);
    var var_4 = 14611u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(~vec3<i32>(2147483647i, u_input.a, u_input.a))) | select(-(~vec3<i32>(55153i, u_input.a, 9426i)), ~min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_2(-634f)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * func_4(1327f, Struct_2(var_0.a)).a.x) * var_1.x))), vec3<u32>(1099u, var_3.a, _wgslsmith_div_u32(1u, ~var_3.a)) ^ _wgslsmith_add_vec3_u32(abs(~u_input.b.yzz), firstLeadingBit(abs(vec3<u32>(u_input.b.x, 41506u, 4294967295u)))), select((firstTrailingBit(vec2<i32>(124136i, u_input.a)) | ~vec2<i32>(1i, u_input.a)) << (_wgslsmith_mult_vec2_u32(u_input.b.zx, min(vec2<u32>(var_0.a, var_3.a), vec2<u32>(u_input.c, var_0.a))) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a), vec2<bool>(select(true, func_4(var_1.x, Struct_2(131723u)).c.a, false), all(vec3<bool>(true, true, true)))), vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, select(u_input.a, u_input.a, false), u_input.a), vec3<i32>(0i, _wgslsmith_mult_i32(u_input.a, -19343i), max(u_input.a, -2147483647i))), 4348i));
}

