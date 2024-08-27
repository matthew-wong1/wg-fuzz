struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = -(~_wgslsmith_sub_i32(u_input.a, 8947i));
    let var_1 = all(vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, true));
    var var_2 = Struct_2(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46507u, arg_0), vec3<u32>(arg_0, 0u, arg_0)), arg_0)));
    var var_3 = false;
    var_3 = any(select(vec2<bool>(true, all(vec2<bool>(var_1, var_1)) || (var_1 || false)), select(!vec2<bool>(var_1, true), vec2<bool>(all(vec3<bool>(false, var_1, false)), var_1), !vec2<bool>(var_1, false)), select(!vec2<bool>(var_1, false), !(!vec2<bool>(var_1, true)), true)));
    return _wgslsmith_f_op_f32(f32(-1f) * -431f);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(74246u))))), arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f * 829f)))), 369f, -318f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(350f)), _wgslsmith_f_op_f32(-1807f - -325f)))), _wgslsmith_mod_i32(u_input.a ^ countOneBits(reverseBits(-40783i)), u_input.a));
    let var_1 = Struct_3(_wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(29277i, u_input.a, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(var_0.d, var_0.d, -1i))), -vec3<i32>(_wgslsmith_sub_i32(-9284i, -2746i), u_input.a, var_0.d)), Struct_1(var_0.c.x, ~(arg_0.a >> (abs(var_0.b) % vec2<u32>(32u))), var_0.c, reverseBits(~var_0.d)), select(vec2<u32>(arg_0.a.x, var_0.b.x), arg_0.a, vec2<bool>(true, true)), vec3<u32>(_wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(var_0.b.x, arg_0.a.x)), ~(var_0.b.x ^ 1u)), 9009u, reverseBits(var_0.b.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -700f);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = vec2<i32>(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2.yz, vec2<i32>(u_input.a, arg_1)), arg_2.yx), -18593i), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, arg_1), vec3<i32>(arg_1, u_input.a, -2147483647i)) | 1i) << (_wgslsmith_add_u32(countOneBits(~0u), countOneBits(abs(18712u))) % 32u));
    var var_1 = Struct_1(arg_0.x, vec2<u32>(1u, 27278u), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(1u, 1u)))), -104f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), -2147483647i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.c.x)), _wgslsmith_f_op_f32(-278f + 1504f))), _wgslsmith_f_op_f32(exp2(var_1.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1173f));
    var_0 = select(~_wgslsmith_sub_vec2_i32(-vec2<i32>(var_0.x, arg_2.x), arg_2.zy), select(vec2<i32>(var_1.d, ~u_input.a), -arg_2.wz, vec2<bool>(false, true)), true) << (max(vec2<u32>(~var_1.b.x, var_1.b.x) | firstLeadingBit(~vec2<u32>(var_1.b.x, 76750u)), vec2<u32>(firstLeadingBit(4294967295u), 4294967295u)) % vec2<u32>(32u));
    var var_3 = vec3<u32>(var_1.b.x, _wgslsmith_div_u32(43797u, min(var_1.b.x, abs(47213u))), firstLeadingBit(12967u));
    return Struct_2(var_3.zx);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = arg_0.a;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-425f, -1063f, 412f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-302f, 140f, -1067f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1549f, -651f, -257f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-749f + -413f), _wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(var_0.x, 0u))))))), all(select(vec4<bool>(false, true, arg_1.x, false), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(true, false, arg_1.x, false), arg_1.x))))), u_input.a, vec4<i32>(~(-(u_input.a & 1i)), -41785i, ~1i, ~26026i));
    let var_2 = Struct_2(vec2<u32>(var_1.a.x, 1u));
    var var_3 = Struct_3(min(vec3<i32>(-1i) * -countOneBits(vec3<i32>(-4918i, u_input.a, 8446i)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(0i, u_input.a, 7388i)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(-15548i, u_input.a, u_input.a)), vec3<i32>(u_input.a, -99i, -2147483647i)))), Struct_1(_wgslsmith_f_op_f32(min(440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f * 127f)))), min(vec2<u32>(var_0.x, 4294967295u) << (~vec2<u32>(31555u, var_2.a.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 51070u), _wgslsmith_mult_vec2_u32(vec2<u32>(86373u, 0u), vec2<u32>(43506u, 72548u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(220f, 1525f, -142f, 1185f) + vec4<f32>(-785f, 1058f, -715f, -859f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(478f, 1000f, -1069f, -1390f)))))), 0i | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, 18913i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 2147483647i), vec4<i32>(2147483647i, u_input.a, u_input.a, 0i)))), var_2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, (57386u | var_1.a.x) << (arg_0.a.x % 32u), ~4294967295u), ~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.x), vec3<u32>(arg_0.a.x, var_2.a.x, var_1.a.x)))));
    var var_4 = var_3.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.b.a, _wgslsmith_f_op_f32(-var_4.a), all(select(select(arg_1, vec2<bool>(arg_1.x, true), false), select(arg_1, vec2<bool>(true, false), vec2<bool>(arg_1.x, arg_1.x)), false)))) + -486f);
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = 0u;
    let var_1 = !(!any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))));
    var var_2 = arg_2.x;
    let var_3 = Struct_3(vec3<i32>(i32(-1i) * -1i, select(_wgslsmith_mod_i32(-u_input.a, 2147483647i), -11274i, !all(vec2<bool>(false, var_1))), 0i), Struct_1(551f, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(149700u, 0u), func_4(vec3<f32>(-119f, arg_0, -2119f), -48714i, vec4<i32>(1i, u_input.a, 46291i, 2147483647i)).a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.x), arg_0, _wgslsmith_f_op_f32(floor(arg_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2670f, arg_1.x, 1462f, 1491f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_0, -1306f, arg_0) + vec4<f32>(973f, -1469f, arg_2.x, -1364f)))), u_input.a), ~(~vec2<u32>(1u, 1u)), ~max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 54352u, 18844u)));
    let var_4 = _wgslsmith_clamp_u32(select(~func_4(var_3.b.c.yww, var_3.b.d, vec4<i32>(-25572i, 1i, -15736i, var_3.a.x)).a.x & ~var_3.d.x, 1u, var_1), 31872u | ~(~_wgslsmith_div_u32(var_3.d.x, 15531u)), var_3.c.x);
    return func_4(vec3<f32>(arg_0, arg_2.x, _wgslsmith_f_op_f32(abs(-1146f))), -_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 2147483647i), -abs(var_3.a.yx)), -(~select(~vec4<i32>(var_3.a.x, -1840i, 2147483647i, u_input.a), vec4<i32>(var_3.b.d, u_input.a, -1i, 0i), !vec4<bool>(true, var_1, var_1, true))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = -1i;
    var var_1 = select(vec3<bool>(!((1i ^ u_input.a) > 61745i), false, arg_1.x), select(select(select(select(vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, arg_1.x, false)), vec3<bool>(arg_1.x, false, true), true), !(!vec3<bool>(arg_1.x, arg_1.x, true)), arg_1.x), !(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !vec3<bool>(arg_1.x, true, arg_1.x)), !arg_1.x);
    let var_2 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(select(firstTrailingBit(1i), 1i, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), abs(u_input.a) ^ countOneBits(-2147483647i)), abs(abs(-1i)) >> ((_wgslsmith_mod_u32(arg_2.a.x, arg_0.a.x) >> (arg_0.a.x % 32u)) % 32u), reverseBits(u_input.a)), Struct_1(_wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(1185f * _wgslsmith_f_op_f32(max(1853f, -768f)))), arg_2.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1234f, 1000f, -771f, 1055f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1191f, -588f, 1026f, -394f) - vec4<f32>(-943f, -589f, -135f, 162f))))), 53281i), vec2<u32>(reverseBits(4294967295u), _wgslsmith_div_u32(~arg_0.a.x, ~30843u)), firstTrailingBit(max(firstTrailingBit(vec3<u32>(48743u, 13380u, 14823u)) | ~vec3<u32>(arg_0.a.x, 53617u, arg_0.a.x), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x), vec3<u32>(arg_0.a.x, arg_2.a.x, 9633u)))));
    var var_3 = var_2.b.d;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.b.c), _wgslsmith_div_vec4_f32(var_2.b.c, vec4<f32>(var_2.b.c.x, var_2.b.a, var_2.b.a, 1000f)), vec4<bool>(false, var_1.x, var_1.x, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-570f, var_2.b.c.x, var_2.b.c.x, 464f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b.c) * vec4<f32>(var_2.b.c.x, -703f, 753f, -162f)))));
    return Struct_3(~var_2.a, var_2.b, arg_2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a.x, 4294967295u, _wgslsmith_dot_vec2_u32(var_2.b.b, vec2<u32>(arg_2.a.x, 4294967295u) | vec2<u32>(arg_2.a.x, 25360u))), vec3<u32>(~(~1u), _wgslsmith_add_u32(countOneBits(4294967295u), var_2.d.x), ~arg_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = func_6(func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(713f, 615f) - _wgslsmith_f_op_f32(round(1049f))))), vec2<f32>(_wgslsmith_f_op_f32(min(-414f, _wgslsmith_div_f32(328f, 928f))), -523f), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<u32>(16293u, 0u)), select(vec2<bool>(true, true), vec2<bool>(false, true), false))), -367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1314f - -1523f)))), select(vec2<bool>(any(vec2<bool>(false, true)), true != all(vec3<bool>(true, false, true))), vec2<bool>(!select(false, true, false), true), true), Struct_2(vec2<u32>(~1u << (0u % 32u), 1u)));
    let var_2 = func_6(Struct_2(_wgslsmith_mult_vec2_u32(var_1.b.b, ~(~var_1.c))), !select(vec2<bool>(true, var_1.c.x < var_1.b.b.x), vec2<bool>(all(vec4<bool>(true, true, true, false)), true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false))), Struct_2(vec2<u32>(abs(_wgslsmith_add_u32(1u, var_1.c.x)), reverseBits(1u ^ var_1.b.b.x))));
    var_0 = 61891i;
    var var_3 = var_1;
    let var_4 = ~(_wgslsmith_add_i32(~u_input.a >> (0u % 32u), -40742i) ^ 8979i);
    var_3 = func_6(func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.a, -251f) - _wgslsmith_f_op_f32(-var_1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.c.x))), ~var_3.a.x, vec4<i32>(firstLeadingBit(0i), ~(-1i), var_1.b.d, 50686i)), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), any(vec3<bool>(true, true, false)))), vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)))), Struct_2(~vec2<u32>(1u, var_1.d.x & var_3.c.x)));
    var var_5 = var_2.b;
    let var_6 = !(!(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.b.b.x), firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 1u, var_5.b.x, var_2.b.b.x), vec4<u32>(0u, func_5(var_2.b.a, vec2<f32>(var_3.b.c.x, -2817f), var_2.b.c.zxx).a.x, firstLeadingBit(24669u), ~var_3.d.x))));
}

