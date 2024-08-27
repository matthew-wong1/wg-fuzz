struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = -1i;

var<private> global2: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_5) -> bool {
    global0 = false;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-390f, arg_3.d))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1475f), 1448f), arg_3.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_3.d, 116f)), arg_3.d))))), vec4<f32>(arg_0.a.x, 1496f, arg_3.d, arg_0.d.a.a), vec4<bool>(true, arg_3.d > _wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(-arg_3.d))), ~select(arg_0.c, arg_0.c, false) != arg_0.c, all(!vec2<bool>(arg_1.x, false)) | (u_input.d.x != _wgslsmith_dot_vec3_u32(vec3<u32>(10796u, 57815u, 4294967295u), u_input.d.xxw)))));
    var var_2 = ~(~reverseBits(arg_0.d.d.x));
    let var_3 = var_1.zy;
    return arg_0.d.e;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = ~(~(~min(vec4<u32>(28624u, 36505u, u_input.a.x, 1u), vec4<u32>(u_input.d.x, arg_0, 40297u, arg_0))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1352f);
    var var_2 = Struct_5(_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(u_input.d.x, 16644u, 4294967295u)), abs(abs(var_0.www))), select(~(~firstLeadingBit(u_input.d.x)), ~abs(arg_0), all(!(!vec3<bool>(false, arg_2, true)))), min(arg_1.yz, vec2<i32>(2147483647i, _wgslsmith_add_i32(~arg_1.x, u_input.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)), -1319f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1347f, 483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) * _wgslsmith_f_op_f32(step(1226f, 462f)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, -1000f, var_2.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d + var_2.d)), 577f, _wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(abs(-457f)))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_2.d + var_2.d), _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-var_2.d))))));
    let var_4 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, _wgslsmith_f_op_f32(var_2.d + -137f), _wgslsmith_f_op_f32(var_2.d - var_3.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(select(1258f, 1350f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1266f - var_2.d)))), vec2<bool>(select(func_3(Struct_4(vec3<f32>(-1223f, var_3.x, 1932f), vec2<bool>(arg_2, arg_2), 40715u, Struct_2(Struct_1(-145f, -8816i), Struct_1(329f, u_input.c), vec3<bool>(arg_2, true, false), vec3<i32>(2147483647i, 1i, u_input.c), true)), !vec2<bool>(arg_2, arg_2), var_0.xw, Struct_5(u_input.a.x, 4294967295u, vec2<i32>(-32922i, -30585i), var_2.d)), false, false), true), 46894u, Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(351f, var_2.d), 1000f)), select(-41397i, 2147483647i, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, 1364f)) + _wgslsmith_f_op_f32(select(-1172f, var_2.d, arg_2))), countOneBits(var_2.c.x)), !vec3<bool>(true, false && arg_2, !arg_2), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, var_2.c.x) & (vec3<i32>(arg_1.x, u_input.b, -2147483647i) | arg_1.xzy), arg_1.zww), true));
    return var_4.d.a;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    global2 = false;
    let var_0 = firstLeadingBit(_wgslsmith_div_u32(~(_wgslsmith_mod_u32(u_input.d.x, 1u) ^ 4294967295u), 4294967295u));
    global2 = arg_0.b != u_input.e;
    let var_1 = var_0 & var_0;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(-1341f - -646f));
    return vec3<i32>(~(~(~(~0i))), arg_0.b, 1i);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = !arg_2.c.x;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1362f), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.a.x, u_input.a.x), u_input.a.xyz), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_2.a.b, 0i), vec4<i32>(1i, arg_1.x, arg_1.x, arg_1.x)), true).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a, -1419f, arg_2.b.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a, -1110f, 1529f) * vec3<f32>(arg_2.b.a, -1590f, arg_2.a.a)), vec3<f32>(arg_2.a.a, -1440f, -1890f)), !select(arg_2.c, arg_2.c, arg_2.c.x)))), vec2<bool>(true, var_0), max(_wgslsmith_dot_vec3_u32(u_input.d.yzx, vec3<u32>(~30840u, _wgslsmith_div_u32(0u, u_input.d.x), ~4294967295u)), ~(~5909u)), Struct_2(Struct_1(arg_2.a.a, (arg_1.x << (u_input.a.x % 32u)) & 71189i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(630f)) + _wgslsmith_f_op_f32(arg_2.b.a - -867f)), arg_0.x), !vec3<bool>(var_0 || arg_2.c.x, true, all(arg_2.c)), vec3<i32>(arg_1.x, arg_2.b.b, ~u_input.b), true));
    var var_2 = select(abs(reverseBits(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 2719u, u_input.d.x, u_input.d.x), u_input.a), vec4<u32>(u_input.a.x, u_input.d.x, 0u, 4294967295u) & vec4<u32>(var_1.c, 0u, 86806u, 5887u)))), ~vec4<u32>(~(~u_input.a.x), 1u, 1u, ~(~u_input.a.x)), true);
    let var_3 = Struct_1(arg_2.a.a, _wgslsmith_mult_i32(firstLeadingBit(i32(-1i) * -1i), _wgslsmith_clamp_i32((arg_1.x << (4294967295u % 32u)) ^ select(var_1.d.d.x, 1i, true), 2147483647i, i32(-1i) * -arg_0.x)));
    var var_4 = firstLeadingBit(~countOneBits(func_2(_wgslsmith_mod_u32(var_2.x, u_input.a.x), abs(vec4<i32>(1i, var_3.b, -1i, 41516i)), arg_2.e).b));
    return !(!select(vec2<bool>(!var_1.d.e, arg_2.e), select(select(arg_2.c.yy, vec2<bool>(true, var_0), var_1.b), var_1.d.c.xz, true), arg_2.c.yy));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    let var_0 = vec4<u32>(1u, 13101u, u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~14171u, 1u), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 23880u), vec2<u32>(arg_1.c, arg_1.c) & vec2<u32>(arg_1.c, 102667u)))));
    var var_1 = arg_0.c;
    global0 = all(func_5(func_4(func_2(u_input.d.x, abs(vec4<i32>(u_input.e, arg_0.d.d.x, 32934i, u_input.c)), false)), -(~(~vec3<i32>(-31738i, 25991i, arg_2.b))), arg_1.d));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1426f * _wgslsmith_f_op_f32(trunc(arg_2.a))) * -1568f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.a.a - -468f) - _wgslsmith_f_op_f32(floor(1f))));
    var var_3 = ~(-u_input.e);
    return Struct_3((~abs(u_input.a.xx) << (_wgslsmith_sub_vec2_u32(countOneBits(u_input.d.zy), abs(vec2<u32>(4217u, arg_0.c))) % vec2<u32>(32u))) & ~_wgslsmith_mod_vec2_u32(var_0.yx & vec2<u32>(u_input.d.x, arg_0.c), u_input.d.xz));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: Struct_4) -> Struct_5 {
    var var_0 = !vec3<bool>((all(vec2<bool>(arg_3.b.x, true)) && arg_3.d.c.x) && !all(vec4<bool>(true, arg_3.d.c.x, arg_3.d.e, false)), !(-2147483647i < -arg_1.x), !(true | !arg_3.d.c.x));
    let var_1 = firstLeadingBit(~1u);
    let var_2 = arg_3.d;
    let var_3 = arg_3;
    global0 = false;
    return arg_2;
}

fn func_7(arg_0: Struct_5, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1655f, _wgslsmith_f_op_f32(arg_0.d - -935f), _wgslsmith_div_f32(598f, arg_0.d))))), select(vec2<bool>(true, true), vec2<bool>(1i < (u_input.c ^ 1i), false), func_5(~reverseBits(vec3<i32>(arg_0.c.x, 1i, arg_0.c.x)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.e), vec3<i32>(arg_0.c.x, -1i, 17852i)), Struct_2(Struct_1(1687f, arg_0.c.x), func_2(u_input.a.x, vec4<i32>(u_input.c, arg_0.c.x, 17770i, -33289i), true), vec3<bool>(true, false, false), func_4(Struct_1(arg_0.d, -2678i)), u_input.c == arg_0.c.x))), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(arg_0.a, arg_0.b), 46737u) & _wgslsmith_mult_u32(abs(u_input.a.x), arg_0.b), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(arg_0.d)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b) ^ arg_0.c, vec2<i32>(-14579i, u_input.c) | vec2<i32>(u_input.e, u_input.b))), Struct_1(_wgslsmith_f_op_f32(-903f + _wgslsmith_div_f32(arg_0.d, arg_0.d)), arg_0.c.x), vec3<bool>(true, true, true), -_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -21745i, u_input.c), vec3<i32>(arg_0.c.x, arg_0.c.x, -7461i)), select(vec3<i32>(-2147483647i, 0i, 21728i), vec3<i32>(63413i, arg_0.c.x, 1i), true)), arg_0.c.x <= ~(i32(-1i) * -64363i)));
    var var_1 = vec3<i32>(func_2(4294967295u, firstLeadingBit(vec4<i32>(-1i, 1i, -1i, var_0.d.d.x) | vec4<i32>(var_0.d.b.b, 16778i, u_input.b, u_input.b)) << (abs(vec4<u32>(15617u, 4294967295u, arg_0.b, var_0.c)) % vec4<u32>(32u)), func_3(Struct_4(_wgslsmith_f_op_vec3_f32(min(var_0.a, var_0.a)), select(vec2<bool>(false, false), var_0.b, vec2<bool>(false, false)), ~arg_0.a, var_0.d), vec2<bool>(var_0.b.x && true, true), abs(vec2<u32>(4294967295u, var_0.c)), func_6(Struct_3(arg_1.a), _wgslsmith_div_vec3_i32(var_0.d.d, var_0.d.d), arg_0, Struct_4(var_0.a, vec2<bool>(var_0.b.x, var_0.b.x), 0u, Struct_2(var_0.d.a, var_0.d.b, var_0.d.c, var_0.d.d, var_0.b.x))))).b, func_2(~select(min(arg_0.a, 0u), 15587u, true), vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -11276i, i32(-1i) * -8659i), func_6(arg_1, vec3<i32>(1i, -1839i, -8550i), Struct_5(var_0.c, var_0.c, var_0.d.d.yy, var_0.a.x), Struct_4(vec3<f32>(var_0.a.x, -1064f, -347f), var_0.d.c.xz, arg_0.b, Struct_2(var_0.d.b, Struct_1(-496f, 0i), vec3<bool>(var_0.b.x, false, true), var_0.d.d, false))).c.x, 1i, _wgslsmith_clamp_i32(-1i, var_0.d.a.b, 2147483647i)), var_0.b.x).b, u_input.e | _wgslsmith_mod_i32(i32(-1i) * -1i, -42359i));
    global1 = -var_0.d.a.b;
    var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(0i, u_input.c, _wgslsmith_mult_i32(~var_1.x, -arg_0.c.x))), -1i, 31458i);
    var var_2 = min(48979i, var_1.x);
    return 492f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), vec2<bool>(1u < _wgslsmith_add_u32(u_input.a.x ^ 59160u, _wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.a.wz)), (~u_input.a.x < 261u) | all(vec4<bool>(true, true, true, true))), 327f >= _wgslsmith_f_op_f32(func_7(func_6(func_1(Struct_4(vec3<f32>(-2153f, 1163f, -170f), vec2<bool>(false, true), 2602u, Struct_2(Struct_1(445f, u_input.c), Struct_1(424f, 2147483647i), vec3<bool>(false, false, true), vec3<i32>(u_input.b, 22400i, 16710i), false)), Struct_4(vec3<f32>(398f, 712f, -1763f), vec2<bool>(false, true), u_input.a.x, Struct_2(Struct_1(-2471f, u_input.e), Struct_1(-1336f, u_input.c), vec3<bool>(false, true, false), vec3<i32>(u_input.b, -13354i, u_input.c), false)), Struct_1(1000f, u_input.e), true), _wgslsmith_mod_vec3_i32(vec3<i32>(-4678i, 25493i, 2147483647i), vec3<i32>(52090i, -34884i, u_input.c)), Struct_5(u_input.a.x, 102903u, vec2<i32>(u_input.e, u_input.c), 428f), Struct_4(vec3<f32>(-695f, 680f, -889f), vec2<bool>(true, true), 60982u, Struct_2(Struct_1(188f, u_input.e), Struct_1(-1171f, 0i), vec3<bool>(false, false, false), vec3<i32>(-2147483647i, u_input.c, u_input.c), false))), Struct_3(min(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.d.x, 21297u))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-642f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1579f, 446f)) + -1021f), _wgslsmith_f_op_f32(-383f - 1f))), u_input.e);
    var var_2 = ~((func_4(Struct_1(var_1.a, var_1.b)).x ^ reverseBits(_wgslsmith_clamp_i32(var_1.b, 2147483647i, 1i))) >> ((u_input.a.x ^ u_input.d.x) % 32u));
    var var_3 = func_5(vec3<i32>(_wgslsmith_mod_i32(-1879i, var_1.b), func_6(func_1(Struct_4(vec3<f32>(var_1.a, var_1.a, 788f), var_0, 1u, Struct_2(Struct_1(1000f, -1i), Struct_1(var_1.a, -1i), vec3<bool>(false, false, var_0.x), vec3<i32>(2147483647i, 1i, 1i), var_0.x)), Struct_4(vec3<f32>(1000f, -1530f, -1433f), vec2<bool>(true, false), 45612u, Struct_2(Struct_1(222f, -3279i), Struct_1(3287f, u_input.c), vec3<bool>(false, var_0.x, true), vec3<i32>(var_1.b, var_1.b, 2147483647i), false)), Struct_1(-2105f, u_input.e), var_0.x), (vec3<i32>(var_1.b, -11419i, 1i) >> (vec3<u32>(u_input.d.x, 24662u, 4247u) % vec3<u32>(32u))) << (vec3<u32>(1u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), Struct_5(u_input.a.x, ~0u, -vec2<i32>(u_input.e, -28774i), var_1.a), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-980f, var_1.a, var_1.a)), var_0, 39102u, Struct_2(var_1, Struct_1(var_1.a, u_input.c), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<i32>(u_input.b, 24936i, var_1.b), var_0.x))).c.x, -1i), firstLeadingBit(select(reverseBits(abs(vec3<i32>(u_input.c, 22993i, u_input.e))), vec3<i32>(var_1.b, u_input.b, 0i) >> (~vec3<u32>(u_input.a.x, u_input.d.x, 20523u) % vec3<u32>(32u)), !vec3<bool>(true, var_0.x, var_0.x))), Struct_2(var_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, var_1.a, var_0.x))), func_4(var_1).x & 1i), vec3<bool>(var_0.x, func_5(func_4(Struct_1(var_1.a, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.e, var_1.b), vec3<i32>(-1i, -34042i, -95365i)), Struct_2(Struct_1(var_1.a, -2147483647i), Struct_1(287f, var_1.b), vec3<bool>(var_0.x, true, var_0.x), vec3<i32>(u_input.e, 6006i, -37348i), false)).x, !(u_input.d.x > u_input.d.x)), vec3<i32>(_wgslsmith_clamp_i32(var_1.b, 7321i, 2547i) & -2147483647i, countOneBits(-u_input.c), var_1.b), false));
    let var_4 = select(var_0, vec2<bool>(false && (var_3.x || all(vec3<bool>(var_0.x, false, var_0.x))), select(true, any(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_0.x, var_3.x), false)), any(vec3<bool>(false, false, true)))), (var_3.x & (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -4207i, 1i), vec4<i32>(-1i, u_input.e, -32325i, 2147483647i)) >= ~var_1.b)) || var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(763f, -208f, var_1.a)) + vec3<f32>(_wgslsmith_f_op_f32(736f - 843f), _wgslsmith_f_op_f32(-1855f * 1000f), -949f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-289f, -236f, 2349f) * vec3<f32>(-1268f, 615f, 268f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, -721f, var_1.a))))), u_input.d.x >> (((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 293u, 0u), vec3<u32>(1u, 1u, u_input.a.x)) & select(u_input.d.x, u_input.a.x, var_3.x)) ^ ~_wgslsmith_sub_u32(u_input.a.x, u_input.d.x)) % 32u));
}

