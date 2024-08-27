struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_div_f32(-366f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, arg_1.a)))) + -149f));
    var_0 = -237f;
    let var_1 = vec4<i32>(-2147483647i, 7711i, 2147483647i, 0i);
    let var_2 = arg_1;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-arg_1.a), Struct_3(var_2.b.a), firstTrailingBit(arg_1.c));
    return arg_3;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, max(~24858i, 27435i), ~(~2219i)), vec3<i32>(~_wgslsmith_mod_i32(1i, -13040i), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 20325i), vec2<i32>(0i, -28172i))), select(1i, func_3(vec2<u32>(288u, 1u), Struct_4(arg_1, Struct_3(arg_0.d), 27347u), 48945i, 2147483647i), arg_0.c | arg_0.c))), -(~vec3<i32>(1i, 1i, 1i)));
    let var_1 = Struct_3(all(!(!select(vec3<bool>(arg_0.c, arg_0.d, arg_0.d), vec3<bool>(arg_0.d, arg_0.d, arg_0.c), vec3<bool>(true, false, false)))));
    var var_2 = select(!select(select(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.d, var_1.a)), !vec2<bool>(arg_0.d, true), true), !(!vec2<bool>(var_1.a, arg_0.d)), vec2<bool>(var_1.a, true)), !(!vec2<bool>(any(vec4<bool>(var_1.a, arg_0.c, var_1.a, var_1.a)), true)), false);
    var_2 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.d), !vec2<bool>(true, var_2.x), true), !select(vec2<bool>(var_2.x, var_1.a), vec2<bool>(var_1.a, var_1.a), true)), vec2<bool>(true, true), !vec2<bool>(!var_2.x, select(false, false, var_1.a)));
    var_2 = select(vec2<bool>(true, all(!select(vec4<bool>(var_1.a, arg_0.d, arg_0.d, false), vec4<bool>(true, true, false, true), vec4<bool>(var_2.x, var_2.x, arg_0.d, true)))), !(!select(vec2<bool>(false, true), vec2<bool>(var_2.x, var_2.x), select(vec2<bool>(false, true), vec2<bool>(arg_0.c, var_2.x), var_2.x))), false);
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    let var_0 = !select(!vec2<bool>(false, all(vec3<bool>(false, true, arg_0.d))), !(!vec2<bool>(true, arg_0.c)), false);
    let var_1 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(29262u, 1u, 50185u, u_input.a) ^ ~vec4<u32>(u_input.a, 0u, 14475u, 1116u))), vec4<u32>(arg_0.a, u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, arg_0.a, arg_0.a), vec3<u32>(49619u, arg_0.a, 89832u) ^ vec3<u32>(10759u, arg_0.a, 1u)), vec3<u32>(~u_input.a, 1u, abs(124424u))), func_2(func_2(Struct_1(u_input.a, 619f, arg_0.c, false), 776f), _wgslsmith_f_op_f32(-arg_0.b)).a & _wgslsmith_mod_u32(~74333u, _wgslsmith_add_u32(u_input.a, 1u))));
    let var_2 = var_1.x;
    var var_3 = Struct_2(func_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1657f))), var_0.x, false), _wgslsmith_f_op_f32(arg_0.b * func_2(Struct_1(var_1.x, -1403f, arg_0.d, true), _wgslsmith_f_op_f32(-arg_0.b)).b)), vec3<bool>(!all(vec4<bool>(true, var_0.x, arg_0.d, false)), any(!select(var_0, vec2<bool>(true, var_0.x), var_0)), arg_0.c), arg_0.b, func_2(Struct_1(~6317u | u_input.a, -1800f, true, true), arg_0.b));
    var var_4 = Struct_2(var_3.a, !(!(!(!vec3<bool>(false, var_3.a.c, arg_0.d)))), var_3.a.b, arg_0);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.c)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_4.c)), var_3.c, select(all(var_3.b.zy), false, false)))), Struct_3(!any(var_3.b)), _wgslsmith_sub_u32(_wgslsmith_add_u32(~(~u_input.a), _wgslsmith_clamp_u32(~var_2, ~22552u, _wgslsmith_mult_u32(var_4.a.a, 6842u))), var_4.a.a));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<bool>) -> vec2<i32> {
    let var_0 = -1i;
    var var_1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -398f))), true, arg_1.b.a || (any(arg_3.zy) || true));
    let var_2 = arg_2;
    let var_3 = func_4(func_2(Struct_1(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - 1177f) - _wgslsmith_f_op_f32(-arg_1.a)), true, var_0 != -3213i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * -1000f) + _wgslsmith_div_f32(var_2.a, 1050f))))).b;
    let var_4 = vec4<bool>(var_3.a, true, any(!(!(!vec3<bool>(true, arg_1.b.a, true)))), var_1.c);
    return (vec2<i32>((var_0 ^ -64944i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a, var_2.c), vec3<u32>(u_input.a, arg_1.c, 2140u)) % 32u), var_0) | abs(select(vec2<i32>(var_0, var_0) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(23035i, var_0)), arg_2.b.a))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -1930i, var_0, 2147483647i), -vec4<i32>(var_0, var_0, 1i, var_0)), ~countOneBits(var_0)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, -1i)), -vec2<i32>(0i, -1i)), min(vec2<i32>(var_0, 2147483647i), ~vec2<i32>(var_0, var_0))));
}

fn func_6(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = abs(31034u);
    return func_4(func_2(func_2(Struct_1(4294967295u, _wgslsmith_f_op_f32(-1105f + 202f), all(vec4<bool>(false, true, false, false)), func_2(Struct_1(42360u, 1362f, false, true), -205f).d), _wgslsmith_f_op_f32(1012f + 1118f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1605f * -817f) - _wgslsmith_f_op_f32(max(1073f, 674f)))))));
}

fn func_1() -> Struct_4 {
    var var_0 = func_6(-func_5(true, func_4(func_2(Struct_1(37282u, 225f, false, true), -458f)), Struct_4(-1897f, func_4(Struct_1(4294967295u, 384f, true, false)).b, u_input.a), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false))));
    var var_1 = true;
    var var_2 = var_0.b;
    let var_3 = Struct_3(_wgslsmith_div_f32(-470f, var_0.a) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))));
    return func_4(Struct_1(_wgslsmith_div_u32(~func_6(vec2<i32>(-2147483647i, -62082i)).c, 1u ^ var_0.c), var_0.a, false, func_2(Struct_1(_wgslsmith_sub_u32(13015u, var_0.c), 687f, var_3.a, false == var_0.b.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a - -497f)))).c));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~(~(-19161i));
    let var_1 = Struct_4(arg_0.a, func_6(_wgslsmith_clamp_vec2_i32(~vec2<i32>(41461i, 710i), -countOneBits(vec2<i32>(var_0, 26842i)), countOneBits(vec2<i32>(var_0, var_0)))).b, 0u);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(371f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_1(31223u, arg_0.a, arg_1.a, arg_1.a)).a)), arg_0.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, var_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -298f, var_1.a, arg_0.a)))))), !var_1.b.a));
    let var_3 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1541f + var_1.a) * _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1581f, var_1.a) * 383f))), 1380f);
    var var_4 = 5326u;
    return func_2(func_2(func_2(Struct_1(u_input.a, 447f, true, var_1.b.a & arg_0.b.a), _wgslsmith_f_op_f32(181f + 2384f)), -113f), _wgslsmith_f_op_f32(f32(-1f) * -397f));
}

fn func_8(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-677f, 1000f, 1000f, arg_1.a.b), vec4<f32>(arg_1.d.b, arg_1.a.b, -235f, arg_1.d.b))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -485f, 1539f, 246f) * vec4<f32>(-386f, arg_1.c, arg_1.c, 178f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(185f, arg_1.c, -275f, 1169f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1128f, 157f, -1505f, arg_1.d.b))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c) * vec4<f32>(1110f, arg_1.c, 1902f, 1013f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, arg_1.a.b, 1000f, arg_1.d.b), vec4<f32>(-465f, -453f, 463f, arg_1.c))), select(vec4<bool>(true, arg_1.d.c, arg_1.a.d, false), vec4<bool>(false, true, arg_1.d.c, true), true))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, arg_1.c, arg_1.a.b, arg_1.a.b), vec4<f32>(arg_1.a.b, arg_1.d.b, arg_1.a.b, arg_1.a.b), arg_3))))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(arg_1.d).a, -1267f, var_0.x, _wgslsmith_f_op_f32(func_1().a * -1118f)));
    let var_1 = Struct_3(false);
    let var_2 = var_0.xw;
    let var_3 = arg_2;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(133f + -720f)))), var_1, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1423f, -351f)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -440f);
    let var_1 = func_8(false, Struct_2(func_7(func_1(), Struct_3(true)), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), true), -2393f, Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 1u)), ~vec2<u32>(u_input.a, 0u)), _wgslsmith_f_op_f32(-868f + 1247f), func_2(Struct_1(u_input.a, 1737f, false, false), _wgslsmith_f_op_f32(max(514f, 1829f))).d, all(vec4<bool>(false, true, false, true)))), 0i, !(select(-1i, ~(-28492i), true) >= ~func_5(false, Struct_4(143f, Struct_3(true), u_input.a), Struct_4(-1477f, Struct_3(true), 24733u), vec4<bool>(false, true, false, false)).x));
    var var_2 = var_1.c;
    var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(-var_1.a), -44516i, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, var_1.c), vec2<u32>(41170u, u_input.a) | vec2<u32>(0u, var_1.c)), vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(0u, 1u)), ~vec2<u32>(u_input.a, var_1.c))) ^ ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4522u), firstLeadingBit(vec2<u32>(var_1.c, u_input.a)), vec2<u32>(909u, 59181u)));
}

