struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-537f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f * 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1321f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2187f)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-757f, -876f)))), 1224f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-364f, 314f, 1143f, 737f), vec4<f32>(-822f, 1080f, 1942f, -1278f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(307f, 368f, -2818f, 655f)))))));
    let var_1 = var_0.x;
    var var_2 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, false)), false), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), select(vec4<bool>(false, any(vec2<bool>(true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), !any(vec3<bool>(true, true, true))), !vec4<bool>(true, all(vec3<bool>(true, true, true)), 893f > var_0.x, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_1 < -855f, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))))));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.x, 15765u), u_input.a), arg_0.x) & 4428u, select(~(~(~arg_0.x)), 930u ^ _wgslsmith_sub_u32(43549u, select(0u, u_input.b.x, var_2.x)), false));
    let var_4 = Struct_4(arg_0.x, Struct_1(arg_0.x | _wgslsmith_sub_u32(42284u, _wgslsmith_mult_u32(u_input.a, arg_0.x)), var_2.zz), -38488i, _wgslsmith_sub_u32(arg_0.x, arg_0.x) >> (u_input.b.x % 32u), !vec3<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(var_2.x, false), false))));
    return select(select(select(select(select(vec4<bool>(var_4.e.x, false, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(false, true, true, var_4.b.b.x)), select(vec4<bool>(true, false, var_4.e.x, var_4.b.b.x), vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(false, true, var_2.x, false)), vec4<bool>(var_4.b.b.x, true, var_4.e.x, var_2.x)), select(vec4<bool>(true, var_4.e.x, var_4.b.b.x, true), vec4<bool>(false, true, false, false), all(var_2.zwz)), !(!vec4<bool>(true, var_2.x, false, true))), !select(vec4<bool>(var_4.b.b.x, false, var_4.b.b.x, false), select(vec4<bool>(var_2.x, false, true, false), vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, var_4.b.b.x, false, var_4.e.x)), !var_2.x), false), select(select(!vec4<bool>(var_4.b.b.x, var_2.x, false, false), vec4<bool>(!var_2.x, any(vec3<bool>(var_4.e.x, false, false)), false, false), 53650u >= ~var_4.a), vec4<bool>(var_4.b.b.x, !(!var_4.e.x), ~arg_0.x <= u_input.a, var_2.x), select(select(vec4<bool>(false, false, false, false), !vec4<bool>(var_4.e.x, true, var_4.e.x, true), select(vec4<bool>(true, var_2.x, var_4.e.x, true), vec4<bool>(true, var_2.x, var_4.b.b.x, false), vec4<bool>(false, true, true, false))), !select(vec4<bool>(false, false, var_2.x, true), vec4<bool>(var_4.e.x, true, true, var_2.x), vec4<bool>(false, var_4.e.x, true, var_2.x)), select(!vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(var_4.e.x, false, var_4.b.b.x, var_2.x), var_2.x))), all(!(!(!var_4.e))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-981f)) * 794f) * _wgslsmith_f_op_f32(f32(-1f) * -230f)))));
    var var_1 = vec3<i32>(-13472i, -35505i >> (arg_3.e.a % 32u), min(min(min(arg_2.b.x, _wgslsmith_sub_i32(arg_3.b.x, arg_3.b.x)), ~countOneBits(2147483647i)), 27361i));
    let var_2 = vec3<u32>(arg_2.e.a >> (_wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(arg_0.x, arg_0.x, u_input.a)) % 32u), _wgslsmith_clamp_u32(0u, arg_3.e.a & arg_3.d.a, u_input.b.x), u_input.b.x & 0u);
    var var_3 = ~arg_0;
    var var_4 = Struct_5(arg_3.e);
    return _wgslsmith_clamp_vec3_i32(max(~vec3<i32>(-67663i, _wgslsmith_dot_vec4_i32(vec4<i32>(-49832i, 0i, -30125i, 12984i), vec4<i32>(-42737i, -2147483647i, u_input.c, 2147483647i)), ~var_1.x), vec3<i32>(~var_1.x >> (~1u % 32u), u_input.c, firstLeadingBit(var_1.x) >> (1u % 32u))), vec3<i32>(firstTrailingBit(~u_input.c), arg_3.b.x, ~(-54901i)), -vec3<i32>(firstLeadingBit(~1i), 8768i, arg_3.b.x));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = func_4(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, arg_1, 1u, 4294967295u), vec4<u32>(65069u, 4294967295u, 4294967295u, 5491u)) & max(select(vec4<u32>(63289u, 6317u, 0u, 6432u), vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.a), true), ~vec4<u32>(92479u, 1u, 5293u, arg_2.a.x))), select(select(!func_3(arg_2.a), func_3(~arg_2.a), select(vec4<bool>(arg_2.b.b.x, arg_0, true, arg_2.c.x), vec4<bool>(true, true, arg_0, false), select(vec4<bool>(true, arg_0, arg_2.c.x, arg_2.b.b.x), vec4<bool>(arg_0, arg_0, false, arg_0), false))), func_3(~(~vec2<u32>(4294967295u, u_input.a))), vec4<bool>(false, _wgslsmith_mult_u32(arg_1, arg_2.a.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 4294967295u, arg_1), vec4<u32>(4294967295u, arg_1, arg_2.b.a, arg_2.a.x)), select(false, true, true), true)), Struct_2(func_3(vec2<u32>(25591u, 1u)).yzy, ~(~firstTrailingBit(vec2<i32>(-1i, arg_2.d))), Struct_1(arg_2.a.x, !select(vec2<bool>(arg_2.c.x, arg_0), vec2<bool>(true, arg_2.b.b.x), false)), Struct_1(arg_1, arg_2.c.zy), Struct_1(firstLeadingBit(firstLeadingBit(arg_2.a.x)), func_3(max(vec2<u32>(arg_1, u_input.a), arg_2.a)).yz)), Struct_2(vec3<bool>(true, false, 643f < arg_3.x), vec2<i32>(~(-u_input.c), 54942i), Struct_1(select(arg_1, 48766u, true), arg_2.c.yy), Struct_1(~14243u, vec2<bool>(false, !arg_2.c.x)), arg_2.b));
    let var_1 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(round(arg_3.x)), arg_3.x);
    let var_2 = all(!vec4<bool>(!arg_0, ~11694u == ~arg_2.a.x, true, !(arg_0 != arg_0)));
    var var_3 = true;
    var_3 = arg_2.c.x;
    return Struct_2(arg_2.c, ~vec2<i32>(-7260i >> (1u % 32u), -reverseBits(arg_2.d)), Struct_1(~(~14572u | ~u_input.a), vec2<bool>(0u > _wgslsmith_dot_vec2_u32(arg_2.a, arg_2.a), true)), Struct_1(~(~max(0u, u_input.a)), !vec2<bool>(true, arg_0 || false)), Struct_1(44990u, arg_2.c.zz));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = arg_3.x;
    let var_1 = !arg_1.b.b.x;
    var_0 = -1558f;
    var var_2 = _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-506f * _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1267f, arg_3.x)))))));
    var_0 = _wgslsmith_f_op_f32(min(-1574f, -469f));
    return -_wgslsmith_add_vec4_i32(vec4<i32>(abs(-53441i), -u_input.c ^ _wgslsmith_div_i32(arg_0.b.x, u_input.c), arg_1.c, 1i), abs(vec4<i32>(1i, ~arg_1.c, u_input.c & 2147483647i, arg_1.c)));
}

fn func_6(arg_0: i32, arg_1: vec4<i32>) -> vec3<f32> {
    var var_0 = func_2(!all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), ~(~u_input.b.x | ~(u_input.b.x >> (u_input.b.x % 32u))), Struct_3(u_input.b.zx, Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(52309u, 0u, u_input.b.x), ~0u), func_2(all(vec2<bool>(true, true)), ~u_input.a, Struct_3(u_input.b.zx, Struct_1(1u, vec2<bool>(true, true)), vec3<bool>(false, false, true), u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-789f, -127f, -1000f))).c.b), !vec3<bool>(true, any(vec3<bool>(true, true, false)), true), arg_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-917f, -1269f, 1000f), vec3<f32>(253f, -289f, 146f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-315f, -537f, 1073f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(201f, -1390f, -1187f), vec3<f32>(-1154f, 389f, -944f), vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(707f, 1000f), 996f, -736f)))).a.xy;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1052f, 1000f, 1207f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, 705f, -967f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -919f), -602f, 752f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f + -487f)) - -685f), -166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1127f, -104f))))));
    let var_2 = Struct_3(vec2<u32>(u_input.a, u_input.b.x), Struct_1(~u_input.a, func_3(_wgslsmith_add_vec2_u32(firstLeadingBit(u_input.b.zy), vec2<u32>(27631u, u_input.b.x))).ww), func_2(false, firstLeadingBit(max(_wgslsmith_dot_vec2_u32(vec2<u32>(7569u, u_input.a), vec2<u32>(u_input.b.x, u_input.a)), 0u)), Struct_3(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.a, u_input.b.x), ~60173u), func_2(true, min(u_input.b.x, 26523u), Struct_3(u_input.b.yz, Struct_1(u_input.b.x, vec2<bool>(var_0.x, var_0.x)), vec3<bool>(var_0.x, var_0.x, var_0.x), arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 512f, -191f))).c, vec3<bool>(any(vec3<bool>(false, true, var_0.x)), true, -21761i <= arg_0), func_5(Struct_2(vec3<bool>(false, var_0.x, false), arg_1.xx, Struct_1(0u, vec2<bool>(var_0.x, true)), Struct_1(4294967295u, vec2<bool>(var_0.x, true)), Struct_1(1u, vec2<bool>(true, var_0.x))), Struct_4(4294967295u, Struct_1(4294967295u, vec2<bool>(false, true)), -24651i, 1u, vec3<bool>(var_0.x, var_0.x, var_0.x)), ~u_input.b, vec4<f32>(var_1.x, var_1.x, -1170f, 383f)).x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, 690f, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1250f) + vec3<f32>(var_1.x, var_1.x, 110f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.x, var_1.x)))))).a, ~max(17504i, select(12697i, -2147483647i, var_0.x)));
    let var_3 = Struct_4(firstTrailingBit(u_input.a), Struct_1(4294967295u, select(var_2.c.zx, select(vec2<bool>(var_2.c.x, false), func_2(true, 41274u, Struct_3(vec2<u32>(var_2.b.a, 0u), Struct_1(59111u, var_2.c.yy), vec3<bool>(true, var_2.b.b.x, var_0.x), 1i), vec3<f32>(var_1.x, var_1.x, 652f)).c.b, var_2.c.yx), var_2.b.b)), u_input.c, u_input.a, var_2.c);
    var var_4 = func_2(!(_wgslsmith_f_op_f32(sign(812f)) >= _wgslsmith_f_op_f32(exp2(var_1.x))), ~(4294967295u >> (firstLeadingBit(_wgslsmith_mod_u32(var_3.a, u_input.b.x)) % 32u)), Struct_3(countOneBits(u_input.b.zx), func_2(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, var_2.b.b.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_2.b.a, 40590u, 12997u), vec4<u32>(var_3.b.a, u_input.a, var_2.b.a, var_2.b.a)), vec4<u32>(19078u, 33448u, var_2.b.a, var_3.d) | vec4<u32>(4294967295u, 1u, var_3.a, var_3.b.a)), Struct_3(vec2<u32>(var_2.b.a, 49191u), Struct_1(0u, vec2<bool>(false, true)), !var_2.c, var_2.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(228f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1605f, var_1.x, var_1.x), vec3<f32>(1000f, -864f, -533f))))).d, vec3<bool>(!var_2.c.x, all(func_3(vec2<u32>(21728u, 0u)).ywy), true), -6478i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-156f, var_1.x, _wgslsmith_div_f32(-645f, 1486f)), vec3<f32>(-268f, var_1.x, var_1.x), any(vec2<bool>(var_2.b.b.x, var_0.x)))))).e;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -390f)))), var_1.x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_6(u_input.c, vec4<i32>(_wgslsmith_dot_vec4_i32(func_5(func_2(false, u_input.b.x, Struct_3(u_input.b.xy, Struct_1(70265u, vec2<bool>(true, true)), vec3<bool>(true, false, true), u_input.c), vec3<f32>(-1624f, -924f, 849f)), Struct_4(1u, Struct_1(arg_0, vec2<bool>(true, false)), -1i, 25072u, vec3<bool>(false, true, true)), vec3<u32>(0u, arg_0, 4294967295u), vec4<f32>(963f, 1545f, 766f, 381f)), max(vec4<i32>(u_input.c, -21260i, 0i, u_input.c), countOneBits(vec4<i32>(u_input.c, 38207i, 51677i, u_input.c)))), func_5(Struct_2(vec3<bool>(true, true, true), vec2<i32>(u_input.c, u_input.c), Struct_1(27470u, vec2<bool>(true, false)), Struct_1(u_input.a, vec2<bool>(true, false)), Struct_1(arg_0, vec2<bool>(true, false))), Struct_4(1u, Struct_1(4294967295u, vec2<bool>(false, true)), -9285i, u_input.a, vec3<bool>(true, false, true)), u_input.b, vec4<f32>(1577f, -627f, 297f, 1000f)).x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), ~vec2<i32>(u_input.c, -2147483647i)), 1i, -1i)));
    let var_1 = func_3(u_input.b.xx);
    var var_2 = Struct_5(Struct_1(1u, !var_1.zx));
    var_2 = Struct_5(func_2(func_3(_wgslsmith_div_vec2_u32(select(vec2<u32>(arg_0, 0u), u_input.b.yx, var_1.x), vec2<u32>(var_2.a.a, u_input.b.x) >> (u_input.b.yx % vec2<u32>(32u)))).x, arg_0, Struct_3(select(vec2<u32>(arg_0, 1u), ~u_input.b.zy, true), func_2(var_2.a.b.x, var_2.a.a, Struct_3(vec2<u32>(var_2.a.a, arg_0), Struct_1(arg_0, vec2<bool>(false, true)), var_1.yyx, u_input.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1522f, var_0.x, var_0.x), vec3<f32>(-392f, var_0.x, -248f), true))).d, vec3<bool>(var_2.a.b.x, !var_2.a.b.x, var_2.a.b.x), 1i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, var_0.x, 1121f)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_6(u_input.c, vec4<i32>(u_input.c, 0i, 1i, 60610i))).x, _wgslsmith_f_op_f32(f32(-1f) * -203f), 1463f))).d);
    var_2 = Struct_5(func_2(false, ~(select(var_2.a.a, 170842u, var_2.a.b.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(0u, 4294967295u)) % 32u)), Struct_3(_wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.b.yx), ~u_input.b.zy), func_2(true, min(var_2.a.a, 1u), Struct_3(u_input.b.yz, Struct_1(arg_0, vec2<bool>(true, false)), vec3<bool>(true, var_1.x, true), u_input.c), _wgslsmith_f_op_vec3_f32(-var_0)).d, select(var_1.zzy, var_1.zxz, true == var_2.a.b.x), u_input.c), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(-var_0)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1020f, var_0.x, var_0.x)))))))).e);
    return Struct_1(43068u, var_2.a.b);
}

fn func_7(arg_0: u32, arg_1: Struct_5, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = arg_2;
    let var_1 = 44729u;
    let var_2 = !(!select(arg_2.a, select(vec3<bool>(arg_2.a.x, var_0.e.b.x, true), !arg_2.a, arg_2.d.b.x), true));
    var var_3 = ~firstLeadingBit(u_input.b.xy);
    var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.a, _wgslsmith_div_u32(var_3.x, abs(u_input.b.x))), vec2<u32>(_wgslsmith_div_u32(arg_2.d.a, 51403u) & ~0u, select(0u, 4294967295u, true)), u_input.b.yy) >> (_wgslsmith_div_vec2_u32(reverseBits(u_input.b.zz), vec2<u32>(var_3.x, ~firstTrailingBit(4294967295u))) % vec2<u32>(32u));
    return -min(var_0.b, -func_2(-29499i < var_0.b.x, ~5936u, Struct_3(u_input.b.xx, Struct_1(var_0.e.a, vec2<bool>(false, false)), var_0.a, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1955f, -953f, -996f) * vec3<f32>(414f, 276f, 139f))).b);
}

fn func_8(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_5 {
    let var_0 = _wgslsmith_div_f32(2527f, -386f);
    let var_1 = abs(func_4(vec4<u32>(~14253u, arg_1.a ^ 20439u, reverseBits(0u), 9010u), !vec4<bool>(true, arg_1.b.b.x, false, true), func_2(select(false, arg_1.e.x, false), _wgslsmith_sub_u32(arg_1.d, 1u), Struct_3(u_input.b.zx, Struct_1(6897u, arg_1.e.yz), vec3<bool>(arg_1.e.x, arg_1.b.b.x, true), 33253i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1060f, var_0, 1671f)))), Struct_2(arg_1.e, select(arg_2.xx, arg_2.yw, vec2<bool>(true, true)), func_2(arg_1.e.x, 0u, Struct_3(vec2<u32>(arg_1.b.a, arg_1.b.a), Struct_1(u_input.a, arg_1.b.b), arg_1.e, -2147483647i), vec3<f32>(309f, -469f, var_0)).d, arg_1.b, arg_1.b)).x) >> (~(_wgslsmith_clamp_u32(u_input.a & arg_1.b.a, 0u, 4294967295u) ^ _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, arg_1.a, arg_1.d) | vec3<u32>(u_input.b.x, u_input.b.x, arg_1.a))) % 32u);
    var var_2 = Struct_4(~arg_1.a, Struct_1(_wgslsmith_mult_u32(~18144u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 23424u, u_input.b.x, arg_1.d), vec4<u32>(u_input.b.x, 21549u, u_input.a, arg_1.a))), vec2<bool>(all(vec2<bool>(arg_1.e.x, arg_1.b.b.x)), all(vec2<bool>(arg_1.e.x, false)))), ~arg_1.c, _wgslsmith_add_u32(~select(4294967295u, reverseBits(4294967295u), arg_1.e.x && true), ~u_input.a), arg_1.e);
    var_2 = arg_1;
    let var_3 = func_2(!arg_1.b.b.x | (_wgslsmith_f_op_f32(f32(-1f) * -585f) <= _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(var_2.b.a, var_2.b.a)), reverseBits(abs(vec2<u32>(4150u, 4294967295u)))) & 1u, Struct_3(min(u_input.b.yy, firstLeadingBit(vec2<u32>(0u, u_input.a))) << (_wgslsmith_sub_vec2_u32(u_input.b.zx, ~vec2<u32>(arg_1.a, 14144u)) % vec2<u32>(32u)), var_2.b, vec3<bool>(false, true, func_1(~var_2.a).b.x), _wgslsmith_sub_i32(-min(67717i, -26018i), 41257i)), vec3<f32>(1000f, 2222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-179f * 1297f), 1237f)))));
    return Struct_5(arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(reverseBits(u_input.b.x), Struct_5(func_1(u_input.a >> (u_input.a % 32u))), func_2(_wgslsmith_f_op_f32(1716f + -738f) != _wgslsmith_f_op_f32(sign(944f)), select(_wgslsmith_mod_u32(24984u, 1u), 0u, all(vec2<bool>(true, true))), Struct_3(vec2<u32>(u_input.a, 47636u), Struct_1(u_input.a, vec2<bool>(false, true)), vec3<bool>(false, false, true), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-126f, -1383f, 483f), vec3<f32>(1000f, 1502f, 1034f)) + vec3<f32>(-1602f, -106f, -1381f)))), Struct_4(u_input.a, func_2(_wgslsmith_add_i32(0i, 15499i) < _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 8607i), vec2<i32>(u_input.c, 50113i)), 26511u, Struct_3(~u_input.b.yy, func_1(4294967295u), func_3(vec2<u32>(4294967295u, 33523u)).xxw, func_4(vec4<u32>(u_input.a, u_input.a, 0u, u_input.b.x), vec4<bool>(true, false, true, false), Struct_2(vec3<bool>(false, false, false), vec2<i32>(-2147483647i, u_input.c), Struct_1(u_input.a, vec2<bool>(false, false)), Struct_1(0u, vec2<bool>(false, false)), Struct_1(u_input.a, vec2<bool>(true, false))), Struct_2(vec3<bool>(false, false, true), vec2<i32>(2147483647i, u_input.c), Struct_1(u_input.b.x, vec2<bool>(false, true)), Struct_1(0u, vec2<bool>(true, false)), Struct_1(0u, vec2<bool>(false, true)))).x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1856f, 1000f, -2503f)))).c, u_input.c, ~0u, func_3(~(~vec2<u32>(u_input.b.x, u_input.b.x))).wyw), countOneBits(~reverseBits(vec4<i32>(u_input.c, u_input.c, 26640i, -2147483647i))) | abs((vec4<i32>(2175i, u_input.c, 0i, u_input.c) >> (vec4<u32>(23242u, 90910u, 4294967295u, u_input.a) % vec4<u32>(32u))) | vec4<i32>(0i, -1i, -6450i, 30605i)));
    var var_1 = Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(func_1(func_1(18423u).a).a, var_0.a.a), vec2<u32>(0u, u_input.a >> (var_0.a.a % 32u)) | firstTrailingBit(u_input.b.yy & u_input.b.xz)), func_1(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, var_0.a.a << (1u % 32u), var_0.a.a), 49012u)), u_input.c, max(6712u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(4294967295u, 1u) & _wgslsmith_clamp_u32(98677u, 286u, 41824u))), vec3<bool>(func_8(select(firstTrailingBit(vec2<i32>(-5302i, u_input.c)), ~vec2<i32>(u_input.c, 0i), true), Struct_4(1u, Struct_1(31193u, vec2<bool>(var_0.a.b.x, true)), -1i, 1u >> (var_0.a.a % 32u), vec3<bool>(true, true, var_0.a.b.x)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c, u_input.c, -812i, u_input.c), vec4<i32>(-1i, u_input.c, u_input.c, -47460i))).a.b.x, firstTrailingBit(u_input.c) > _wgslsmith_add_i32(24987i, u_input.c), true));
    var var_2 = ~(-(~(~(~vec2<i32>(-19033i, 43168i)))));
    var var_3 = vec2<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c, 1i), reverseBits(vec2<i32>(-2147483647i, u_input.c))), vec2<i32>(var_1.c, 20037i)), func_5(func_2(var_1.e.x, func_1(4294967295u).a, Struct_3(abs(u_input.b.xy), var_0.a, var_1.e, _wgslsmith_div_i32(-6885i, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(-687f + 196f), 1f, -1110f)), Struct_4(~reverseBits(var_1.a), Struct_1(abs(65308u), func_2(var_0.a.b.x, var_1.d, Struct_3(vec2<u32>(var_1.a, 4294967295u), var_1.b, var_1.e, var_1.c), vec3<f32>(-445f, 128f, 1000f)).c.b), -1i, _wgslsmith_mod_u32(1u, u_input.a), var_1.e), ~u_input.b >> (~(~u_input.b) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, -616f, 1033f, -1079f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-735f, 214f, 656f, -215f) - vec4<f32>(-447f, 886f, 1203f, -1000f))))).x);
    var_1 = Struct_4(select(var_1.b.a, var_0.a.a, var_0.a.b.x), func_1(_wgslsmith_div_u32(1008u, _wgslsmith_dot_vec2_u32(vec2<u32>(25862u, u_input.b.x) >> (u_input.b.yx % vec2<u32>(32u)), u_input.b.zx))), -31959i, var_1.d, select(vec3<bool>(true, !var_0.a.b.x == true, var_0.a.b.x), !select(!var_1.e, vec3<bool>(false, true, var_0.a.b.x), func_2(true, var_1.a, Struct_3(u_input.b.yx, Struct_1(var_1.d, vec2<bool>(false, true)), vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_1.b.b.x), -2147483647i), vec3<f32>(-757f, -141f, 328f)).a), !(~u_input.b.x <= 37143u)));
    var var_4 = func_2(var_0.a.b.x, 0u, Struct_3(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(4294967295u, var_1.d)) ^ u_input.b.xz, vec2<u32>(4294967295u, ~4294967295u)), func_2(_wgslsmith_f_op_f32(abs(-905f)) >= _wgslsmith_f_op_f32(ceil(868f)), 33152u, Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.a.a), u_input.b.xx), var_0.a, var_1.e, var_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2328f, -235f, -395f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-255f, -1490f, -1071f) - vec3<f32>(1121f, 2771f, 1000f)))).c, func_2(func_8(-vec2<i32>(u_input.c, -2147483647i), Struct_4(38061u, Struct_1(0u, var_1.b.b), var_3.x, 3966u, var_1.e), vec4<i32>(var_2.x, -6752i, var_1.c, -26216i)).a.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a, var_0.a.a) << (u_input.b.yx % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.b.x, u_input.b.x))), Struct_3(u_input.b.yz, func_1(u_input.b.x), !vec3<bool>(true, var_1.e.x, false), ~1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-141f, 270f, 299f), vec3<f32>(1051f, 872f, 1244f))))).a, func_5(Struct_2(vec3<bool>(var_0.a.b.x, false, var_1.e.x), vec2<i32>(0i, var_3.x), Struct_1(var_1.d, var_1.e.xx), func_8(vec2<i32>(var_3.x, -15166i), Struct_4(0u, Struct_1(82418u, var_1.e.xz), -2147483647i, var_0.a.a, var_1.e), vec4<i32>(var_2.x, var_3.x, -53963i, -2147483647i)).a, Struct_1(4294967295u, var_0.a.b)), Struct_4(u_input.b.x, var_0.a, ~var_3.x, 0u, !var_1.e), countOneBits(vec3<u32>(u_input.a, 1u, var_1.a)) >> ((u_input.b | vec3<u32>(var_0.a.a, 29998u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(443f, 901f, 1101f, -993f)))).x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(621f, 925f, -951f), vec3<f32>(182f, 572f, 655f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1913f, -901f, -944f), vec3<f32>(930f, 163f, 507f), var_1.e)))))));
    var_2 = vec2<i32>(~_wgslsmith_clamp_i32(-46115i, u_input.c, 0i) & var_4.b.x, 39564i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(max(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.c.a, 27900u), vec2<u32>(var_0.a.a, 0u)), 60221u, ~4822u, 1u), vec4<u32>(5535u, 1u, var_4.c.a, ~0u)), select(min(~vec4<u32>(1u, u_input.b.x, 1714u, 44988u), reverseBits(vec4<u32>(36108u, 1u, var_4.c.a, var_0.a.a))), ~vec4<u32>(u_input.a, var_1.b.a, var_1.b.a, 1u) | vec4<u32>(49756u, 4487u, 0u, u_input.a), !(!var_1.e.x))), ~countOneBits(~var_4.c.a ^ ~var_4.e.a), u_input.b.xy);
}

