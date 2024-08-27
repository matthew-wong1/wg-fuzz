struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_1.d), ~vec2<u32>(u_input.c.x, 1u), !vec2<bool>(arg_1.a.x, all(arg_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.d, arg_1.b.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-348f, arg_1.d), arg_1.b.d, vec2<bool>(false, true))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.a, -251f, arg_1.d, 595f) - vec4<f32>(147f, arg_1.d, arg_1.d, -886f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1102f, arg_1.b.a, 291f, -2649f))), select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false), vec4<bool>(arg_1.b.c.x, true, arg_1.a.x, false), arg_1.b.c.x)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.d.x, arg_1.d, 911f, arg_1.b.a)))))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1.b.a, 1028f)))), arg_1.b.a)), ~arg_3, arg_1.a.zz, vec2<f32>(arg_1.b.d.x, _wgslsmith_f_op_f32(236f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1938f + -2128f)), _wgslsmith_f_op_f32(-arg_1.b.d.x), arg_1.b.a, -1775f));
    let var_1 = select(select(select(vec2<bool>(var_0.a.b.x >= 5337u, false), vec2<bool>(all(vec2<bool>(true, var_0.c.c.x)), any(vec2<bool>(var_0.a.c.x, var_0.c.c.x))), _wgslsmith_f_op_f32(var_0.a.d.x * arg_1.b.d.x) != _wgslsmith_f_op_f32(step(342f, var_0.a.d.x))), !select(!vec2<bool>(arg_1.a.x, arg_1.a.x), select(vec2<bool>(false, var_0.a.c.x), var_0.a.c, vec2<bool>(var_0.c.c.x, true)), select(var_0.c.c, vec2<bool>(var_0.c.c.x, true), vec2<bool>(arg_1.b.c.x, true))), var_0.c.c), var_0.c.c, true);
    var var_2 = countOneBits(vec3<u32>(21574u, arg_1.b.b.x, 0u) ^ _wgslsmith_add_vec3_u32(u_input.c, select(u_input.c, u_input.c, !arg_1.a)));
    var var_3 = Struct_1(var_0.a.d.x, vec2<u32>(arg_3.x, 1u), var_1, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.b.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.d + var_0.d.x), var_0.c.d.x))))));
    var var_4 = Struct_3(var_0.a, var_0.d, var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(147f, 2191f, -918f, var_3.d.x) - var_0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -1588f, -731f, var_0.c.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.d, _wgslsmith_div_vec4_f32(var_0.d, var_0.d), !vec4<bool>(true, var_0.a.c.x, var_3.c.x, var_0.c.c.x)))), vec4<bool>(select(false, arg_1.a.x, false), any(arg_1.a), all(arg_1.a.zy), _wgslsmith_div_u32(0u, u_input.c.x) != 0u))));
    return _wgslsmith_f_op_f32(-var_3.d.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> bool {
    var var_0 = ~arg_0.x;
    var_0 = firstLeadingBit(arg_0.x);
    let var_1 = arg_3;
    var_0 = min(~min(_wgslsmith_mult_u32(max(2188u, 1u), _wgslsmith_dot_vec3_u32(arg_0.ywx, arg_0.xyw)), 0u), 4294967295u);
    var_0 = arg_0.x;
    return !((var_1.d > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 837f))) || (var_1.c.x != 41526i));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_2(vec3<bool>(true, func_4(reverseBits(countOneBits(vec4<u32>(u_input.c.x, arg_1, arg_1, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(vec2<i32>(32772i, u_input.a), Struct_2(vec3<bool>(true, false, false), Struct_1(arg_0, u_input.c.zz, vec2<bool>(true, true), vec2<f32>(-825f, 1166f)), vec2<i32>(u_input.a, u_input.d), arg_0), vec4<i32>(0i, u_input.b, u_input.b, 0i), u_input.c.zy)), -421f, _wgslsmith_f_op_f32(-arg_0)), true | any(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, true), Struct_1(-1265f, vec2<u32>(arg_1, 4294967295u), vec2<bool>(false, false), vec2<f32>(783f, arg_0)), vec2<i32>(-2147483647i, u_input.d), _wgslsmith_f_op_f32(round(arg_0)))), 255f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + -901f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), -1203f))), u_input.c.zy, select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false), vec2<bool>(false, false)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-441f, 1114f) + vec2<f32>(arg_0, 545f))))), vec2<i32>(select(_wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -372i), vec3<i32>(u_input.d, 1i, -36373i))), u_input.a << (~arg_1 % 32u), _wgslsmith_f_op_f32(trunc(arg_0)) == _wgslsmith_f_op_f32(ceil(arg_0))), ~select(u_input.a, 1i, true)), -1359f);
    let var_1 = vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(55012u, arg_1, arg_1), u_input.c));
    let var_2 = abs(~(~(~vec3<u32>(var_1.x, u_input.c.x, var_1.x))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(578f)) * _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_div_f32(-865f, _wgslsmith_div_f32(arg_0, var_0.d)))), _wgslsmith_mult_vec2_u32(~var_1 & var_0.b.b, vec2<u32>(0u, arg_1) ^ ~vec2<u32>(var_0.b.b.x, u_input.c.x)), vec2<bool>(false, !var_0.b.c.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -800f), vec2<f32>(arg_0, 271f), var_0.b.c)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d, var_0.b.d.x), var_0.b.d, var_0.b.c.x)), var_0.b.c.x))))), vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(677f))))), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-701f, var_0.d, var_0.b.a, -952f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, -467f, var_0.d))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(951f)), _wgslsmith_f_op_f32(func_3(var_0.c, Struct_2(vec3<bool>(false, true, true), var_0.b, var_0.c, -1218f), vec4<i32>(var_0.c.x, 10402i, 1i, 27966i), vec2<u32>(var_2.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1969f), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -284f, 439f, 641f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2552f, 476f, arg_0, -335f))))));
    var var_4 = -u_input.b;
    return var_0.a;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x), _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_div_f32(-1252f, arg_2.b.a)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1))));
    let var_1 = select(vec2<bool>(true, arg_2.a.x), vec2<bool>(func_2(-560f, (arg_0.x << (1u % 32u)) | ~36233u).x, arg_2.b.b.x < 46095u), vec2<bool>(true, arg_2.a.x));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, var_0.x, 100f), vec3<f32>(913f, 1275f, -224f)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1))))));
    let var_2 = !all(vec2<bool>(true, true));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1, _wgslsmith_f_op_vec3_f32(-arg_1))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1 * arg_1), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2034f, -1793f, 778f))), vec3<bool>(true, arg_2.b.c.x, arg_2.b.c.x))) - arg_1)) - arg_1);
    return u_input.b ^ 0i;
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = func_5(u_input.c.yx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(floor(1786f)), -375f), Struct_2(select(select(func_2(1471f, u_input.c.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, false, true), true), Struct_1(480f, min(vec2<u32>(u_input.c.x, 0u), u_input.c.yy) << (~u_input.c.xy % vec2<u32>(32u)), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -680f), vec2<f32>(679f, 1372f), vec2<bool>(false, false))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, -2203f)))), vec2<i32>(1i, u_input.b) | select(vec2<i32>(u_input.b, u_input.b), select(vec2<i32>(-1i, u_input.a), vec2<i32>(0i, u_input.d), vec2<bool>(false, true)), func_2(arg_0, u_input.c.x).yz), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1041f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(340f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0)), -2634f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(908f)))), _wgslsmith_f_op_f32(round(arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(max(vec2<i32>(-15274i, var_0), vec2<i32>(5010i, var_0)), Struct_2(vec3<bool>(true, true, true), Struct_1(-251f, u_input.c.zy, vec2<bool>(false, true), vec2<f32>(-553f, 754f)), vec2<i32>(-46175i, 2147483647i), arg_0), -vec4<i32>(var_0, var_0, var_0, 29601i), u_input.c.zy << (vec2<u32>(52463u, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(arg_0 * 1114f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    var var_2 = !(44969u > u_input.c.x);
    let var_3 = true;
    var_2 = true;
    return func_2(arg_0, 42193u);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_0.a.x;
    let var_1 = arg_0.b.d;
    var var_2 = arg_1;
    let var_3 = -_wgslsmith_div_i32(min(min(1i, 34758i), min(31720i, func_5(var_2.c.b, vec3<f32>(253f, 858f, -963f), arg_0))), countOneBits(-24522i));
    var var_4 = Struct_2(vec3<bool>(false, _wgslsmith_mult_u32(firstLeadingBit(24348u), arg_1.c.b.x ^ 1u) == _wgslsmith_mult_u32(1u, u_input.c.x << (35754u % 32u)), !(!func_2(-179f, arg_0.b.b.x).x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -957f)), _wgslsmith_div_f32(1744f, _wgslsmith_f_op_f32(-var_1.x))), var_2.c.b, select(vec2<bool>(arg_0.a.x, arg_0.b.c.x), func_2(-2812f, var_2.c.b.x).zy, any(arg_0.a)), vec2<f32>(var_2.d.x, 1399f)), max(firstLeadingBit(-vec2<i32>(51268i, var_3)), vec2<i32>(-1i) * -max(vec2<i32>(-9284i, var_3), arg_0.c)), 1841f);
    return arg_1.c;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.d;
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 52677u, u_input.c.x), vec4<u32>(arg_0.b.x, arg_0.b.x, 30941u, arg_0.b.x)), ~vec4<u32>(arg_1.b.x, u_input.c.x, arg_1.b.x, u_input.c.x)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(68194u, arg_1.b.x, 1u, 4294967295u), max(vec4<u32>(0u, 36815u, 30843u, arg_1.b.x), vec4<u32>(113904u, 0u, arg_1.b.x, arg_1.b.x))) % vec4<u32>(32u)), ~(~vec4<u32>(arg_1.b.x, 0u, arg_1.b.x, 1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.b.x, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 97412u, 18319u), vec4<u32>(1u, u_input.c.x, arg_0.b.x, 7791u)) ^ vec4<u32>(arg_0.b.x, 33865u, 4294967295u, _wgslsmith_div_u32(arg_0.b.x, u_input.c.x))), select(vec4<u32>(~57880u, ~120564u, ~64577u, arg_1.b.x), reverseBits(vec4<u32>(51566u, 50722u, u_input.c.x, arg_0.b.x)), arg_0.c.x && true) << (vec4<u32>(~arg_1.b.x ^ arg_0.b.x, ~(~arg_1.b.x), ~u_input.c.x, 73416u) % vec4<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(1000f)), select(~arg_0.b, vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, var_1.x, 71969u)), ~(~4294967295u)), vec2<bool>(arg_1.c.x, !arg_1.c.x)), select(!func_6(Struct_2(vec3<bool>(false, false, true), Struct_1(333f, arg_0.b, arg_1.c, vec2<f32>(299f, arg_0.d.x)), vec2<i32>(u_input.d, 2147483647i), var_0.x), Struct_3(Struct_1(1946f, arg_0.b, vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<f32>(var_0.x, var_0.x)), vec4<f32>(-1000f, -463f, arg_0.a, 531f), arg_0, vec4<f32>(657f, var_0.x, -295f, arg_1.a))).c, vec2<bool>(u_input.c.x != 13801u, false), func_2(func_6(Struct_2(vec3<bool>(true, arg_0.c.x, true), arg_0, vec2<i32>(u_input.a, u_input.a), arg_1.a), Struct_3(arg_1, vec4<f32>(arg_1.a, -1104f, var_0.x, arg_0.a), Struct_1(arg_1.a, arg_1.b, arg_1.c, vec2<f32>(arg_0.a, arg_1.d.x)), vec4<f32>(554f, 1000f, arg_1.a, 885f))).d.x, arg_1.b.x).xy), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_0.a) + var_0));
    var_1 = firstLeadingBit(~(~(~vec4<u32>(u_input.c.x, 13247u, var_1.x, u_input.c.x) | ~vec4<u32>(0u, arg_1.b.x, 4294967295u, 51552u))));
    return !vec3<bool>(true, select(false, true, (arg_0.c.x & arg_1.c.x) | true), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_7(Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(-942f, -737f))), vec2<u32>(firstLeadingBit(43458u), ~32440u), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<f32>(_wgslsmith_f_op_f32(ceil(126f)), _wgslsmith_f_op_f32(step(-495f, -1069f)))), func_6(Struct_2(func_1(-1000f), Struct_1(-222f, vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(false, true), vec2<f32>(140f, 999f)), vec2<i32>(3577i, u_input.a), _wgslsmith_f_op_f32(min(-360f, 436f))), Struct_3(Struct_1(-916f, vec2<u32>(u_input.c.x, 0u), vec2<bool>(false, false), vec2<f32>(-1208f, -1493f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(332f, -722f, 883f, -1143f) * vec4<f32>(-1374f, 643f, 108f, -686f)), Struct_1(-294f, vec2<u32>(1u, u_input.c.x), vec2<bool>(false, true), vec2<f32>(706f, -769f)), vec4<f32>(795f, 2482f, 911f, 1745f)))), func_6(Struct_2(func_2(_wgslsmith_f_op_f32(1053f - 903f), 0u), Struct_1(-1000f, u_input.c.yy, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 2071f), vec2<f32>(-1950f, 1179f), vec2<bool>(false, false)))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.d), vec2<i32>(38625i, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1456f)), Struct_3(func_6(Struct_2(vec3<bool>(false, false, true), Struct_1(231f, vec2<u32>(u_input.c.x, 4294967295u), vec2<bool>(false, true), vec2<f32>(-1460f, -183f)), vec2<i32>(-1i, 41293i), 1570f), Struct_3(Struct_1(-1980f, vec2<u32>(u_input.c.x, 4294967295u), vec2<bool>(false, true), vec2<f32>(-263f, -385f)), vec4<f32>(1374f, -532f, 1616f, -352f), Struct_1(-347f, u_input.c.xy, vec2<bool>(false, false), vec2<f32>(1392f, -1000f)), vec4<f32>(504f, -769f, -1087f, 1501f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1737f, -900f, -672f, -516f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1018f, -187f, -183f, 187f), vec4<f32>(675f, 1000f, 553f, 353f), vec4<bool>(false, false, false, true)))), func_6(Struct_2(vec3<bool>(false, true, false), Struct_1(284f, vec2<u32>(26688u, u_input.c.x), vec2<bool>(false, false), vec2<f32>(948f, -546f)), vec2<i32>(u_input.a, 68070i), 2885f), Struct_3(Struct_1(-1209f, vec2<u32>(4294967295u, 0u), vec2<bool>(true, true), vec2<f32>(-956f, -1597f)), vec4<f32>(-1898f, 189f, -466f, -974f), Struct_1(1074f, u_input.c.xx, vec2<bool>(false, true), vec2<f32>(1000f, 1429f)), vec4<f32>(-184f, 1271f, -996f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(1831f + 789f), 1235f, -1102f, _wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.b, u_input.d), Struct_2(vec3<bool>(false, false, false), Struct_1(777f, u_input.c.zx, vec2<bool>(false, false), vec2<f32>(981f, 623f)), vec2<i32>(-52398i, -813i), -1000f), vec4<i32>(-24428i, u_input.a, -2147483647i, 23938i), u_input.c.zx))))), _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 193i), firstTrailingBit(vec2<i32>(1205i, u_input.a)))), firstTrailingBit(-vec2<i32>(u_input.a, -1i)) | abs(abs(vec2<i32>(u_input.a, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1191f, 256f, true)) + -1448f))) * 1743f));
    var var_1 = vec4<u32>(~max(var_0.b.b.x, u_input.c.x), ~var_0.b.b.x, var_0.b.b.x, max(~(~var_0.b.b.x), countOneBits(~var_0.b.b.x)));
    var var_2 = max(firstLeadingBit(max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, -14820i) ^ vec3<i32>(u_input.b, var_0.c.x, -2789i), abs(vec3<i32>(var_0.c.x, -28139i, 2147483647i))), select(vec3<i32>(u_input.a, -14204i, var_0.c.x), vec3<i32>(2147483647i, u_input.b, 31381i), vec3<bool>(true, false, var_0.b.c.x)))), vec3<i32>(var_0.c.x, ~(~45774i), 0i >> (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.x, _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(-15684i), _wgslsmith_add_i32(u_input.b, 1i), u_input.b, var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, var_2.x, var_2.x, 21684i), vec4<i32>(var_0.c.x, -1i, var_0.c.x, u_input.b)) << (reverseBits(vec4<u32>(44770u, 69348u, 0u, u_input.c.x)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.b.b.x, u_input.c.x, var_1.x, u_input.c.x), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(33234u, u_input.c.x, var_0.b.b.x, u_input.c.x), vec4<u32>(1u, var_0.b.b.x, u_input.c.x, 0u)))) % vec4<u32>(32u)));
}

