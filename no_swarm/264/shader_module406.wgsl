struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    var_0 = _wgslsmith_mult_i32(u_input.b, firstTrailingBit(u_input.b | -2147483647i));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(1000f + arg_1.x))))) + _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * -1197f), 175f)), 0i <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 22767i, u_input.d.x, u_input.b), vec4<i32>(-2147483647i, u_input.b, -2147483647i, u_input.b))))));
    var_1 = arg_1.x;
    return vec2<f32>(-158f, -1000f);
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1725f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-629f + _wgslsmith_div_f32(-1000f, -1131f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2035f, 361f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(431f, 859f, -611f, -510f)))).x), _wgslsmith_f_op_vec2_f32(func_1(-154f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, -1000f, 108f, -641f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, -2342f, -134f, 497f))))).x));
    var var_1 = vec2<i32>(-_wgslsmith_mult_i32(1943i << (select(75328u, arg_0.a, true) % 32u), firstLeadingBit(-32538i)), select(-u_input.d.x, u_input.b, !all(vec3<bool>(false, false, false)) | true));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1453f);
    var var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1748f) * -519f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 1384f), -717f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(var_0.x, vec4<f32>(var_0.x, var_0.x, 468f, var_3))).x + _wgslsmith_f_op_f32(f32(-1f) * -503f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-539f * _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(exp2(var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3)) + _wgslsmith_f_op_f32(min(var_3, 858f))), var_0.x);
    return _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(trunc(var_0.x)));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -2256f, -435f, 940f), vec4<f32>(1789f, -1179f, 1006f, -1425f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1247f, -770f, -745f, 154f), vec4<f32>(-896f, 468f, -818f, -2015f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1053f, -1000f)));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(1u)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * var_1))))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(33581u)))));
    let var_2 = -31482i;
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-945f)), _wgslsmith_f_op_f32(var_0.x + -1108f))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(sign(2020f))), _wgslsmith_f_op_f32(-461f + -2828f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1315f, 402f, var_0.x, -539f), vec4<f32>(var_0.x, var_0.x, -1637f, -794f)))))));
    return _wgslsmith_mult_vec3_u32(min(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 15489u, 1u), firstLeadingBit(~vec3<u32>(1u, 5914u, u_input.a.x))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 0u, 18083u), u_input.a.xxx, any(vec4<bool>(true, true, true, true))), abs(~u_input.a.xyy))), firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 58412u, u_input.a.x), u_input.a.zwz | vec3<u32>(31793u, 1u, u_input.a.x))) >> (vec3<u32>(u_input.e, u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x), u_input.a.wwx)) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = ~(~u_input.a);
    var var_1 = arg_1.c.x;
    let var_2 = abs(vec4<u32>(4294967295u, arg_0, _wgslsmith_mod_u32(1u, abs(~arg_0)), ~firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, 50808u))));
    let var_3 = vec4<bool>(arg_2.x, false, !arg_2.x, _wgslsmith_f_op_f32(-arg_1.a.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.d)) - arg_1.a.x));
    var_1 = u_input.d.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a, vec2<f32>(arg_1.d, -245f)))), vec3<u32>(max(arg_0 >> (4294967295u % 32u), ~1u), reverseBits(max(4294967295u, var_0.x)), 0u), -(~(-vec3<i32>(u_input.d.x, 2147483647i, u_input.b))), _wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(abs(-504f))), ~(~(~4294967295u))), arg_1, countOneBits(~arg_0), arg_1);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = var_0.c >> ((reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 4294967295u, var_0.e), var_0.b & vec3<u32>(4294967295u, 4294967295u, arg_3.a.e))) & arg_3.a.b) % vec3<u32>(32u));
    var_1 = _wgslsmith_clamp_vec3_i32(var_0.c, ~(~vec3<i32>(2147483647i, 102i, 2147483647i) >> (arg_0.b.b % vec3<u32>(32u))), -arg_0.d.c);
    var_1 = max(_wgslsmith_sub_vec3_i32(max(var_0.c, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, arg_1.x), arg_0.a.c))), arg_3.a.c), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, arg_1.x, arg_0.a.c.x, 2147483647i), firstLeadingBit(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -8270i))), -2147483647i), arg_3.d.c));
    let var_2 = 15450i;
    return Struct_1(arg_3.d.a, min(abs(arg_3.a.b & u_input.a.yww), ~func_2()), vec3<i32>(min(var_0.c.x, var_2), var_0.c.x, -var_1.x), arg_2.x, max(u_input.e, ~var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.a.x & _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.e, 0u)));
    let var_1 = Struct_2(func_5(func_4(32127u, Struct_1(_wgslsmith_f_op_vec2_f32(func_1(-1902f, vec4<f32>(1447f, -1000f, -351f, -175f))), func_2(), vec3<i32>(26441i, -1i, 17401i), _wgslsmith_f_op_f32(-1000f + 686f), 1u), vec3<bool>(select(false, false, false), true, false)), vec3<i32>(17883i | u_input.b, firstLeadingBit(-48960i), u_input.b >> (0u % 32u)) >> (~vec3<u32>(90989u, u_input.a.x, u_input.e) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_div_f32(-549f, _wgslsmith_f_op_f32(1263f + -1717f)), 234f, _wgslsmith_f_op_vec2_f32(func_1(-1149f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1093f, -511f, -242f, 253f) * vec4<f32>(956f, -1100f, 1000f, 571f)))).x), func_4(1u >> (u_input.a.x % 32u), Struct_1(vec2<f32>(1294f, -1333f), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, u_input.e, u_input.c.x), vec3<u32>(u_input.a.x, var_0.a, 0u)), ~vec3<i32>(u_input.b, u_input.b, -2147483647i), _wgslsmith_f_op_f32(673f + -2201f), 1u), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), func_5(Struct_2(func_5(func_4(4294967295u, Struct_1(vec2<f32>(-1372f, 678f), u_input.a.zxx, vec3<i32>(-1i, u_input.d.x, u_input.b), 1000f, var_0.a), vec3<bool>(false, true, false)), vec3<i32>(u_input.d.x, 0i, u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(737f, 859f, -265f) + vec3<f32>(248f, -412f, 236f)), Struct_2(Struct_1(vec2<f32>(-1358f, 239f), vec3<u32>(u_input.c.x, 26798u, 27347u), vec3<i32>(0i, -1i, 11222i), -246f, 1u), Struct_1(vec2<f32>(1000f, 387f), u_input.a.zwx, vec3<i32>(u_input.b, u_input.b, 0i), 251f, u_input.c.x), u_input.a.x, Struct_1(vec2<f32>(319f, 1000f), u_input.a.yxw, vec3<i32>(-1i, u_input.d.x, -35806i), -151f, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1045f, -878f) * vec2<f32>(-303f, 106f)), u_input.a.xww, vec3<i32>(u_input.d.x, -1i, 0i), _wgslsmith_f_op_f32(max(-1557f, -482f)), ~0u), 0u, func_5(func_4(4658u, Struct_1(vec2<f32>(971f, -577f), vec3<u32>(1u, var_0.a, 15397u), vec3<i32>(u_input.d.x, -44499i, u_input.d.x), 1553f, var_0.a), vec3<bool>(true, false, false)), select(vec3<i32>(u_input.d.x, -1i, u_input.d.x), vec3<i32>(-2147483647i, u_input.b, 16785i), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1095f, 124f, 328f)), func_4(105703u, Struct_1(vec2<f32>(-1000f, 1415f), vec3<u32>(62874u, 22707u, 0u), vec3<i32>(65939i, -18875i, u_input.d.x), 1332f, 1u), vec3<bool>(true, false, true)))), func_5(func_4(~var_0.a, Struct_1(vec2<f32>(842f, -592f), vec3<u32>(u_input.c.x, u_input.e, 6668u), vec3<i32>(u_input.b, -2147483647i, 19790i), 1495f, u_input.c.x), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i, u_input.d.x, u_input.d.x)), vec3<i32>(-1404i, u_input.b, -1i)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, 571f, 309f)))), Struct_2(Struct_1(vec2<f32>(1105f, 100f), u_input.a.yyw, vec3<i32>(u_input.b, 0i, u_input.b), 1083f, 1u), func_4(1u, Struct_1(vec2<f32>(323f, -2030f), vec3<u32>(var_0.a, 9228u, 54021u), vec3<i32>(u_input.b, u_input.b, 0i), 1125f, var_0.a), vec3<bool>(false, false, false)).b, var_0.a, Struct_1(vec2<f32>(879f, 578f), u_input.a.wyx, vec3<i32>(u_input.b, u_input.d.x, 2147483647i), 127f, var_0.a))).c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-186f, 565f, 1000f), vec3<f32>(-755f, -1613f, 304f)))))), func_4(u_input.c.x << (0u % 32u), Struct_1(vec2<f32>(-742f, 216f), vec3<u32>(var_0.a, var_0.a, u_input.e), _wgslsmith_sub_vec3_i32(vec3<i32>(513i, u_input.d.x, u_input.b), vec3<i32>(u_input.d.x, 2147483647i, u_input.b)), _wgslsmith_f_op_f32(floor(1496f)), u_input.c.x >> (u_input.e % 32u)), vec3<bool>(true, select(false, false, false), true))), 48489u, func_4(83496u, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(169f, -1000f)), u_input.a.yxx, ~(~vec3<i32>(u_input.d.x, u_input.b, u_input.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_1(1249f, vec4<f32>(-1994f, -1438f, -467f, 245f))).x, _wgslsmith_div_f32(-413f, 1849f))), u_input.c.x | abs(var_0.a)), select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false)), vec3<bool>(true, any(vec3<bool>(false, true, false)), true), true)).d);
    var var_2 = abs(1u << (u_input.e % 32u));
    let var_3 = ~func_5(var_1, ~_wgslsmith_div_vec3_i32(min(vec3<i32>(12895i, -46545i, u_input.d.x), vec3<i32>(u_input.b, 1i, u_input.d.x)), ~vec3<i32>(u_input.d.x, var_1.b.c.x, u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-423f * _wgslsmith_f_op_f32(var_1.b.d + -951f)), var_1.d.a.x, _wgslsmith_f_op_f32(-var_1.b.d)), func_4(abs(var_1.a.e | var_1.b.b.x), Struct_1(vec2<f32>(1168f, 1000f), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.a), vec3<u32>(var_1.d.e, 4294967295u, var_1.b.b.x)), func_4(4294967295u, Struct_1(var_1.b.a, vec3<u32>(4294967295u, var_1.b.b.x, 1u), vec3<i32>(var_1.d.c.x, -33500i, 7723i), var_1.d.a.x, 4294967295u), vec3<bool>(true, false, false)).a.c, _wgslsmith_div_f32(var_1.b.a.x, -945f), ~9204u), vec3<bool>(false, true, true))).b.x;
    let var_4 = true;
    var var_5 = 383f;
    let var_6 = vec3<bool>(any(select(vec2<bool>(all(vec4<bool>(true, var_4, true, true)), var_4), vec2<bool>(var_4, var_4), !select(vec2<bool>(false, false), vec2<bool>(var_4, false), var_4))), ~select(-57568i, func_4(38414u, Struct_1(vec2<f32>(var_1.d.d, var_1.b.a.x), var_1.d.b, vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x), var_1.d.d, 44185u), vec3<bool>(false, true, var_4)).a.c.x, var_4) == 2147483647i, _wgslsmith_mult_i32(var_1.b.c.x, 1i) < func_5(var_1, var_1.d.c, vec3<f32>(var_1.b.a.x, _wgslsmith_f_op_vec2_f32(func_1(var_1.a.d, vec4<f32>(-1196f, var_1.d.d, var_1.a.a.x, var_1.b.d))).x, var_1.b.d), Struct_2(Struct_1(vec2<f32>(var_1.a.a.x, var_1.b.d), u_input.a.zwx, var_1.b.c, -1086f, 41003u), func_5(var_1, var_1.b.c, vec3<f32>(741f, var_1.d.d, -1752f), var_1), abs(u_input.c.x), func_5(var_1, vec3<i32>(var_1.d.c.x, u_input.b, var_1.b.c.x), vec3<f32>(-1048f, -187f, 1179f), var_1))).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.a.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-342f + var_1.a.d), var_1.d.a.x, var_4))))));
}

