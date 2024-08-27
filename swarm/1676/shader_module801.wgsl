struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<i32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: Struct_2) -> u32 {
    let var_0 = -1000f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -715f), arg_0.a.b.b.b.x);
    var var_1 = arg_0.a;
    var var_2 = all(vec4<bool>(true, var_1.d, true, _wgslsmith_f_op_f32(-arg_0.a.b.c.b.x) >= -363f));
    let var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(42500u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 45538u)), arg_2.b.x), var_1.b.d.b.x), vec3<u32>(3829u, _wgslsmith_mult_u32(arg_0.a.b.d.b.x >> (arg_0.a.b.d.b.x % 32u), ~arg_2.b.x), 1u));
    let var_4 = ~firstTrailingBit(var_3);
    return countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_4, 0u, 13861u, var_1.b.a.b.x)), vec4<u32>(var_1.b.a.b.x, var_1.b.a.b.x, _wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec3_u32(var_1.b.a.b, vec3<u32>(arg_0.a.b.a.b.x, arg_2.b.x, var_1.b.a.b.x))), ~vec4<u32>(4487u, var_3, 1u, var_3) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b.x, 15275u, 0u, var_3), vec4<u32>(arg_0.a.b.a.b.x, arg_2.b.x, var_3, var_1.b.d.b.x)) % vec4<u32>(32u))), vec4<u32>(arg_2.b.x, var_3, _wgslsmith_mod_u32(var_1.b.a.b.x, 78096u), _wgslsmith_sub_u32(min(16623u, var_1.b.a.b.x), 59717u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_3 {
    var var_0 = !vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)) & any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)));
    var_0 = vec3<bool>(true, false, any(!select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, false, var_0.x), var_0.x)));
    var var_1 = Struct_5(Struct_4(~2147483647i >> (select(~104660u, func_3(Struct_5(Struct_4(3097i, Struct_3(Struct_2(vec4<i32>(-36083i, -69990i, u_input.a.x, u_input.a.x), vec3<u32>(34830u, 8113u, 28105u)), Struct_1(true, vec3<f32>(arg_0.x, -344f, arg_1), vec4<bool>(var_0.x, false, false, var_0.x)), Struct_1(var_0.x, vec3<f32>(602f, arg_1, arg_1), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), Struct_2(vec4<i32>(u_input.a.x, -42975i, 0i, 33943i), vec3<u32>(75059u, 1u, 1u)), 1162f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), true)), -337f, Struct_2(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(10042u, 1u, 4294967295u))), all(vec3<bool>(var_0.x, var_0.x, var_0.x))) % 32u), Struct_3(Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-50061i, u_input.a.x, 2147483647i, 37809i), vec4<i32>(u_input.a.x, -4306i, u_input.a.x, 2147483647i)), ~vec3<u32>(0u, 15443u, 78836u)), Struct_1(all(var_0.xx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(623f, arg_0.x, arg_1)), vec4<bool>(false, var_0.x, false, var_0.x)), Struct_1(any(vec4<bool>(false, var_0.x, false, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2155f, arg_1, arg_1) - vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, false), var_0.x)), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, 8027i, u_input.a.x) >> (vec4<u32>(29522u, 107368u, 18268u, 4294967295u) % vec4<u32>(32u)), vec3<u32>(63428u, 0u, 1u)), arg_0.x), vec4<i32>(-_wgslsmith_sub_i32(1i, u_input.a.x), u_input.a.x, max(~u_input.a.x, u_input.a.x), u_input.a.x), true));
    var_0 = !(!select(!(!vec3<bool>(true, false, var_0.x)), vec3<bool>(296f >= arg_1, true, var_1.a.b.d.b.x <= 1u), var_0.x));
    var var_2 = var_1.a.b.b.b.x;
    return var_1.a.b;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: Struct_3) -> bool {
    var var_0 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_3.b.b.yy)), vec2<f32>(-523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f - arg_1.a.b.c.b.x)))), 1970f);
    var_0 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.b.b.b.zy)), arg_3.c.b.xy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1689f, arg_1.a.b.e) * _wgslsmith_f_op_f32(ceil(981f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.c.b.x - var_0.e) + _wgslsmith_f_op_f32(-603f + var_0.e)))).a, func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.a.b.b.b.x, -830f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.b.b.b.xx), vec2<f32>(-1000f, -1104f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) * var_0.b.b.x))).c, var_0.b, var_0.d, -1463f);
    var var_1 = arg_1;
    var_0 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.b.c.b.zy), _wgslsmith_f_op_vec2_f32(var_1.a.b.c.b.xz + arg_3.b.b.xx))), 1000f).d, arg_3.b, arg_3.c, var_0.a, 1126f);
    let var_2 = 150f;
    return _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, var_1.a.b.d.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, arg_1.a.b.d.a.x, arg_1.a.a), var_1.a.b.d.a)), _wgslsmith_clamp_i32(arg_1.a.a, -45415i, max(1i, i32(-1i) * -1i)), 22642i) > 2147483647i;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = 1u;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), arg_2.x, _wgslsmith_f_op_f32(max(-319f, arg_0)), arg_0))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1826f, arg_0, -980f, arg_2.x) + vec4<f32>(-206f, arg_2.x, arg_2.x, 1323f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1156f, arg_2.x, 929f, 2082f) + vec4<f32>(arg_0, -598f, arg_2.x, 309f)))))));
    var_1 = arg_1.x;
    var var_3 = abs(select(~(~vec2<u32>(42813u, 25241u)), select(~vec2<u32>(14209u, 0u), ~vec2<u32>(35842u, 1u), select(vec2<bool>(false, false), arg_1, false)), true) | ~(~vec2<u32>(38712u, 84519u)));
    return ~func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(654f, -1976f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, arg_0))) + var_2.zz), var_2.x).a.b;
}

fn func_1() -> f32 {
    var var_0 = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1201f)))), vec2<bool>(any(vec4<bool>(false, false, true, all(vec2<bool>(true, false)))), func_4(4294967295u, Struct_5(Struct_4(u_input.a.x, Struct_3(Struct_2(vec4<i32>(-2147483647i, u_input.a.x, 7294i, 1i), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(true, vec3<f32>(-762f, 1460f, -157f), vec4<bool>(false, true, false, true)), Struct_1(true, vec3<f32>(1322f, -1659f, -1572f), vec4<bool>(false, false, true, true)), Struct_2(vec4<i32>(u_input.a.x, -35569i, 29212i, 0i), vec3<u32>(2722u, 50959u, 15304u)), 1452f), vec4<i32>(-1i, 0i, -1i, u_input.a.x), false)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 0u, 0u), vec3<u32>(78689u, 4294967295u, 38589u), true), ~vec3<u32>(53574u, 0u, 4294967295u)), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1050f, 1401f), vec2<f32>(-475f, 911f)), -258f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-645f)), _wgslsmith_f_op_f32(step(1022f, 560f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1375f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-419f - -2158f))))), -571f));
    var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, var_0.x, _wgslsmith_sub_u32(19921u, var_0.x) >> (0u % 32u)), vec3<u32>((func_3(Struct_5(Struct_4(u_input.a.x, Struct_3(Struct_2(vec4<i32>(-1i, -9970i, u_input.a.x, u_input.a.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), Struct_1(true, vec3<f32>(-379f, 1528f, 290f), vec4<bool>(false, true, true, true)), Struct_1(true, vec3<f32>(1333f, -1722f, 700f), vec4<bool>(true, true, false, true)), Struct_2(vec4<i32>(-2147483647i, 1i, -24345i, -29442i), vec3<u32>(16578u, var_0.x, 10415u)), -589f), vec4<i32>(-29913i, 1i, -7191i, u_input.a.x), false)), 168f, Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, 24660i, u_input.a.x), vec3<u32>(var_0.x, var_0.x, 0u))) >> (12397u % 32u)) & firstTrailingBit(1u), var_0.x ^ 63204u, 4294967295u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f + -107f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2603f * -858f))) + 1025f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f + 1411f))))));
    var_0 = vec3<u32>(~(~4294967295u), 70532u, func_3(Struct_5(Struct_4(firstLeadingBit(u_input.a.x), func_2(vec2<f32>(3155f, var_1), 1016f), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -7757i, 10761i), vec4<i32>(u_input.a.x, u_input.a.x, 1i, 2815i)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3387f + -1266f))).d));
    var var_2 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1171f, _wgslsmith_div_f32(921f, -390f)), 1377f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 16338i), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 1i, -2147483647i, 1i), vec4<i32>(26673i, -2147483647i, -10232i, 0i)), vec4<i32>(u_input.a.x, u_input.a.x, -12339i, -1091i))) ^ -vec4<i32>(_wgslsmith_mod_i32(17003i, -12421i), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.a.x, 1i), ~reverseBits(func_5(_wgslsmith_f_op_f32(trunc(-790f)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 506f, var_0))))));
    let var_2 = vec4<bool>(any(vec3<bool>(true, true, true)) & true, (abs(min(var_1.b.x, 19889u)) >= var_1.b.x) && false, any(!vec4<bool>(true, true, true, all(vec3<bool>(false, false, false)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(vec2<u32>(var_1.b.x, 0u)), ~(~(vec2<u32>(var_1.b.x, var_1.b.x) >> (var_1.b.zy % vec2<u32>(32u)))), vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 1u, 79850u), vec4<u32>(53779u, 4294967295u, 1u, var_1.b.x)) == var_1.b.x, _wgslsmith_f_op_f32(-var_0) > var_0)));
}

