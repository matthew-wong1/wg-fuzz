struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(arg_1), Struct_1(~firstLeadingBit(arg_1)), true, Struct_1(-1i), 1267f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(218f)) * _wgslsmith_f_op_f32(-339f + -777f)), 382f, arg_2.a <= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -50555i, arg_1, -1i), vec4<i32>(arg_1, -24590i, 45706i, arg_1)))));
    let var_1 = Struct_2(Struct_1(9020i), Struct_1(~(_wgslsmith_clamp_i32(2115i, arg_2.a, -2147483647i) & max(arg_1, u_input.c.x))), var_0.c, arg_2, !var_0.c);
    var_0 = Struct_2(Struct_1(reverseBits(var_0.b.a)), var_1.d, true, Struct_1(arg_2.a), !any(vec2<bool>(any(vec4<bool>(var_1.c, true, false, var_0.c)), false && var_1.e)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1158f + -1000f))))) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(570f - -821f), _wgslsmith_f_op_f32(select(285f, 418f, var_0.e)))))));
    global0 = ~(~_wgslsmith_sub_u32(4294967295u, firstTrailingBit(arg_0.x)) & 1u);
    return !any(vec2<bool>(var_0.e | all(vec3<bool>(var_0.e, false, false)), all(vec3<bool>(var_0.c, var_1.c, var_0.e))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(~0i);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1303f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-178f * -111f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 2471f)) + -440f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1677f, -185f, 239f, -1873f)), vec4<f32>(-1203f, 818f, -1902f, -1034f), !vec4<bool>(arg_3.e, true, true, arg_1.e))))));
    global0 = ~1u;
    global0 = ~1u;
    var var_2 = abs(~vec4<u32>(~1u, countOneBits(74323u >> (0u % 32u)), 1u, select(max(0u, 45387u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 21092u, 1u), vec4<u32>(4294967295u, 35635u, 23715u, 61217u)), false)));
    return arg_3.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = -594f;
    let var_1 = all(arg_1);
    var var_2 = arg_1.wxw;
    let var_3 = select(!select(arg_1.yyx, vec3<bool>(true, !arg_1.x, !arg_1.x), vec3<bool>(!var_2.x, false | var_2.x, -1i < u_input.a.x)), vec3<bool>(true, true == !any(var_2.xy), func_4(Struct_1(reverseBits(arg_0.a)), Struct_2(Struct_1(arg_0.a), Struct_1(u_input.b.x), func_3(vec3<u32>(0u, 4261u, 1u), -2147483647i, Struct_1(-21773i)), arg_0, false), _wgslsmith_mult_i32(-1i, 13922i), Struct_2(Struct_1(u_input.c.x), Struct_1(0i), false, Struct_1(u_input.c.x), true))), any(vec4<bool>(false, false, all(arg_1.wz), false)));
    let var_4 = Struct_1(select(2147483647i, ~countOneBits(_wgslsmith_add_i32(50910i, arg_0.a)), arg_1.x));
    return Struct_2(var_4, Struct_1(_wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, arg_0.a))), any(!select(vec4<bool>(false, var_2.x, var_1, var_1), vec4<bool>(true, false, true, var_2.x), var_3.x)) | false, arg_0, any(select(!vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(var_3.x, false, true), var_1)) || false);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> f32 {
    var var_0 = vec3<i32>(arg_0.b.a, abs(countOneBits(~2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0.a.a, 0i), vec3<i32>(u_input.b.x, 23323i, u_input.c.x)))), arg_0.d.a);
    let var_1 = vec4<bool>(arg_0.e, true, arg_0.e, true);
    var var_2 = vec2<i32>(u_input.b.x, 8022i);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-141f, -508f, 2039f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(470f, -1307f, -1882f) + vec3<f32>(-791f, -1052f, 691f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(338f, 375f, -394f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-130f, -2293f, 1805f) * vec3<f32>(929f, 323f, -733f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-175f, -1380f, 1000f), vec3<f32>(836f, 1000f, -683f), arg_0.e))) + vec3<f32>(884f, _wgslsmith_f_op_f32(round(-1182f)), _wgslsmith_f_op_f32(min(903f, 1265f))))));
    var var_4 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(~0u, arg_1.x), ~vec2<u32>(arg_2, _wgslsmith_sub_u32(arg_2, arg_1.x >> (43388u % 32u))), select(_wgslsmith_mod_vec2_u32(~arg_1.xx, countOneBits(~arg_1.yy)), vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(arg_1), vec3<u32>(arg_2, 0u, arg_2)), arg_2 | arg_1.x), reverseBits(-2147483647i) >= arg_0.d.a));
    return -997f;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> i32 {
    var var_0 = arg_1;
    var var_1 = ~(vec2<u32>(34429u, ~16152u) & _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(55576u, 0u), ~vec2<u32>(30475u, arg_1)), ~vec2<u32>(arg_1, arg_1) << (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_5(func_2(Struct_1(u_input.c.x & -1i), select(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, false, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false)), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !arg_0.x)), ~(max(vec3<u32>(var_1.x, arg_1, arg_1), vec3<u32>(var_1.x, 1u, 63145u)) << ((vec3<u32>(4294967295u, arg_1, var_1.x) | vec3<u32>(var_1.x, 1882u, 46901u)) % vec3<u32>(32u))), _wgslsmith_sub_u32(var_1.x, arg_1))));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(-1660f * 637f)))), _wgslsmith_f_op_f32(f32(-1f) * -839f)))));
    var var_3 = !select(arg_0.xz, select(select(!arg_0.xz, vec2<bool>(true, false), arg_0.xz), select(!vec2<bool>(false, arg_0.x), arg_0.zy, arg_0.xy), !arg_0.x), vec2<bool>(!arg_0.x, true));
    return abs(-14041i);
}

fn func_6(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    global0 = select(~1u, 0u, true);
    let var_0 = vec4<u32>(max(1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(6416u, 65691u, 1u, 106292u)), vec4<u32>(46165u, 0u, 55166u, 1u)) << (1u % 32u)), select(_wgslsmith_div_u32(_wgslsmith_mult_u32(~18208u, _wgslsmith_clamp_u32(57519u, 1u, 4294967295u)), _wgslsmith_mult_u32(45071u, abs(43321u))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(28753u, 4294967295u, 0u, 1u)), min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_dot_vec2_i32(-arg_1.zz, countOneBits(arg_1.zy)) <= firstLeadingBit(arg_1.x ^ 9777i)), countOneBits(0u), firstLeadingBit(127739u));
    var var_1 = vec2<f32>(374f, _wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(arg_1.zwx, arg_1.yyw)), Struct_1(u_input.c.x), false, Struct_1(-2555i), all(vec3<bool>(true, true, true))), vec3<u32>(84959u ^ _wgslsmith_add_u32(var_0.x, var_0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(29908u, 37787u, var_0.x, var_0.x), var_0), vec4<u32>(var_0.x, 19537u, 39765u, var_0.x)), ~(~var_0.x)), ~1u)));
    global0 = ~_wgslsmith_sub_u32(1u, var_0.x);
    var var_2 = select(-firstLeadingBit(abs(~arg_1)), arg_1, select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), any(vec4<bool>(true, true, true, true))), !vec4<bool>(select(false, false, true), arg_1.x <= 2147483647i, false, arg_1.x < 1i), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), all(vec2<bool>(false, false)))));
    return func_2(Struct_1(-25218i), vec4<bool>(true, !any(vec2<bool>(true, false)) || func_2(func_2(Struct_1(u_input.c.x), vec4<bool>(true, false, false, true)).b, vec4<bool>(true, true, true, true)).e, true, false)).d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    global0 = ~67711u;
    global0 = ~23730u;
    var var_0 = 4294967295u;
    let var_1 = func_6(func_1(!vec3<bool>(-2147483647i > u_input.a.x, false, any(vec2<bool>(true, true))), ~_wgslsmith_mult_u32(abs(80669u), _wgslsmith_dot_vec2_u32(vec2<u32>(90107u, 0u), vec2<u32>(33247u, 4294967295u)))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 0i), vec4<i32>(u_input.c.x, 22293i, u_input.c.x, -2147483647i)) & vec4<i32>(1i, -2147483647i, -2147483647i, u_input.a.x), vec4<i32>(-30828i, -u_input.c.x, _wgslsmith_mod_i32(u_input.b.x, u_input.a.x), 0i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)))) & select(min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.b.x, 797i, u_input.c.x)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(false, true, all(vec2<bool>(false, false)), func_3(vec3<u32>(109592u, 0u, 26272u), 1i, Struct_1(u_input.a.x)))));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, abs(0u) ^ min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16266u), vec2<u32>(0u, 33175u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(37345u, ~0u, 4294967295u), ~(~vec3<u32>(1u, 1u, 1u))));
    var var_2 = _wgslsmith_clamp_vec2_i32(~firstTrailingBit(-vec2<i32>(0i, 39759i)), max(select(~_wgslsmith_sub_vec2_i32(u_input.b.yx, vec2<i32>(-31047i, u_input.b.x)), -vec2<i32>(12789i, 1i), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, false))), vec2<i32>(reverseBits(0i), -1i)), select(vec2<i32>(_wgslsmith_add_i32(var_1.a, -2147483647i), var_1.a), _wgslsmith_div_vec2_i32(-max(u_input.c, u_input.b.xx), u_input.b.yz), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), 669f, -285f, -1605f)))), abs(firstTrailingBit(_wgslsmith_div_u32(~1u, 69014u))), select(vec2<i32>(u_input.a.x, ~abs(-45543i)), abs(~(vec2<i32>(u_input.a.x, -61519i) << (vec2<u32>(0u, 83695u) % vec2<u32>(32u)))), false));
}

