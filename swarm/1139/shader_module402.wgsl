struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -201f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_2(firstTrailingBit(-10143i), _wgslsmith_f_op_f32(min(-223f, -1120f)));
    global0 = arg_0.b;
    var var_1 = false;
    global0 = arg_1.b;
    var_1 = all(select(vec3<bool>(arg_0.b != _wgslsmith_f_op_f32(-arg_0.b), true, any(vec3<bool>(true, false, false))), !select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), any(vec4<bool>(all(vec2<bool>(false, true)), u_input.c == 25845u, 2617u < u_input.c, all(vec3<bool>(true, true, false))))));
    return !select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), false), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = select(arg_1.x, ~(~arg_1.x), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1464f, 594f)) - _wgslsmith_f_op_f32(select(1004f, -2582f, true)))), vec2<u32>(select(firstLeadingBit(4294967295u) >> (0u % 32u), u_input.d, true), ~49054u << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 491u, u_input.d, arg_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(86813u, u_input.a, arg_0.x, u_input.d), vec4<u32>(1u, u_input.c, u_input.d, arg_0.x))) % 32u)), vec4<u32>(~_wgslsmith_add_u32(108638u, 46271u), firstLeadingBit(u_input.a ^ arg_0.x), _wgslsmith_sub_u32(arg_0.x, 0u & u_input.d), ~33617u) | ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c, 25244u, 0u, 10624u), vec4<u32>(1u, 1u, arg_0.x, arg_0.x), true), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 15866u, u_input.c), vec4<u32>(27475u, 40371u, arg_0.x, 0u))), !(!func_3(Struct_2(-24273i, -2232f), Struct_2(-2147483647i, 1516f))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a, var_1.a, any(!vec3<bool>(false, true, var_1.d.x)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(254f - -1026f)))), var_1.b | max(vec2<u32>(_wgslsmith_dot_vec4_u32(var_1.c, var_1.c), ~arg_0.x), select(arg_0, ~var_1.c.yw, !var_1.d.x)), var_1.c, var_1.d);
    return Struct_1(1242f, var_2.c.xw >> (vec2<u32>(~(~68744u), 0u) % vec2<u32>(32u)), ~(~max(vec4<u32>(arg_0.x, 18790u, 4294967295u, u_input.c), var_1.c & vec4<u32>(4294967295u, u_input.d, 9845u, 9359u))), func_3(Struct_2(~(-var_0), var_2.a), Struct_2(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1676f, -390f))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> vec4<bool> {
    global0 = arg_3.x;
    let var_0 = func_2(~(vec2<u32>(~47108u, 1u) & vec2<u32>(_wgslsmith_mult_u32(u_input.c, u_input.d), u_input.d)), ~u_input.b.zy);
    global0 = arg_3.x;
    return vec4<bool>(func_3(Struct_2(_wgslsmith_mod_i32(u_input.e, arg_0.x >> (u_input.d % 32u)), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(select(arg_3.x, 1000f, true)))), Struct_2(~0i, arg_3.x)).x, !(countOneBits(-1i) < arg_0.x), all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, arg_1, var_0.d.x), vec3<bool>(arg_1, true, arg_1)), select(select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, false, var_0.d.x), true), vec3<bool>(false, true, false), vec3<bool>(arg_1, var_0.d.x, true)), true)), _wgslsmith_f_op_f32(-var_0.a) >= _wgslsmith_div_f32(-606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(select(reverseBits(firstTrailingBit(arg_1.a)), arg_0.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.d))))));
    let var_1 = Struct_2(i32(-1i) * -1i, arg_1.d);
    let var_2 = arg_1.c;
    let var_3 = arg_1;
    var var_4 = min(-countOneBits(u_input.b.x), ~9299i);
    return Struct_2(-arg_1.a, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-13132i, 1211f);
    global0 = -283f;
    var_0 = func_4(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.zz, vec2<i32>(-28821i, -1i)), u_input.b.zz), vec2<i32>(23029i, max(1i, u_input.b.x))), Struct_3(2147483647i, true, Struct_1(var_0.b, vec2<u32>(u_input.c << (u_input.c % 32u), u_input.d), ~_wgslsmith_div_vec4_u32(vec4<u32>(5479u, 79294u, u_input.d, u_input.d), vec4<u32>(u_input.c, u_input.d, u_input.a, u_input.c)), vec2<bool>(true, true)), -2460f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, var_0.b, -1313f), vec4<f32>(1307f, var_0.b, 1286f, var_0.b), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -2119f, var_0.b) + vec4<f32>(var_0.b, var_0.b, var_0.b, 491f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2016f, var_0.b, var_0.b, var_0.b)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -143f, var_0.b, var_0.b)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, 893f, var_0.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b, var_0.b, var_0.b, -1376f))), func_1(vec2<i32>(2147483647i, -13771i), false, u_input.e, vec4<f32>(-116f, var_0.b, 136f, -381f))))))));
    let var_1 = vec4<bool>(!(~(~24833u) < _wgslsmith_div_u32(~u_input.a, 30894u)), true, func_3(Struct_2(_wgslsmith_mod_i32(-2147483647i, var_0.a | 2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.b)), var_0.b)), func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-1920i, -1i), u_input.b.zz), firstLeadingBit(vec2<i32>(2147483647i, 2147483647i))), Struct_3(-6141i, all(vec2<bool>(true, false)), Struct_1(883f, vec2<u32>(u_input.d, 34233u), vec4<u32>(u_input.a, 0u, u_input.d, 4294967295u), vec2<bool>(true, false)), -1649f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 1117f, var_0.b, var_0.b))))).x, false);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), vec2<u32>(max(23118u, firstLeadingBit(0u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 9645u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.a, u_input.a)))) & firstLeadingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.d, u_input.d))), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.d, u_input.d, 103964u, u_input.d) | ~(~vec4<u32>(6820u, u_input.c, u_input.c, u_input.d)), reverseBits(vec4<u32>(u_input.c, 1u, _wgslsmith_add_u32(u_input.d, u_input.a), ~u_input.c))), vec2<bool>(var_1.x, true));
    let var_3 = Struct_3(max(-1i, ~(~_wgslsmith_mult_i32(var_0.a, -10885i))), func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.e, 36411i), u_input.b.zz), var_1.x, _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(countOneBits(2147483647i), var_0.a)), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.a)), _wgslsmith_f_op_f32(-func_2(var_2.b, u_input.b.xz).a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-2502f, -882f)), _wgslsmith_div_f32(var_2.a, var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1354f) * _wgslsmith_f_op_f32(-var_0.b)))).x, var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(187f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * -1240f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(trunc(1387f)))) + 185f)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-797f, 574f, -554f, 2099f) + vec4<f32>(-192f, var_0.b, 1627f, var_2.a)))))));
    let var_5 = var_3.c.c.xxw;
    var var_6 = Struct_3(3009i, var_3.c.d.x, func_2(_wgslsmith_mod_vec2_u32(~(~var_2.c.zz), ~vec2<u32>(var_2.c.x, var_3.c.c.x) ^ func_2(vec2<u32>(4294967295u, 86362u), u_input.b.xz).c.wy), -(~firstTrailingBit(vec2<i32>(u_input.e, var_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-747f + _wgslsmith_f_op_f32(-var_3.c.a)) * var_3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, _wgslsmith_sub_u32(~73309u, ~firstTrailingBit(27761u)), var_3.c.b.x, func_2(var_2.b, vec2<i32>(1i, _wgslsmith_mult_i32(var_6.a, -2147483647i))).c.x), _wgslsmith_f_op_f32(sign(var_2.a)), vec2<i32>(-1i, ~var_3.a));
}

