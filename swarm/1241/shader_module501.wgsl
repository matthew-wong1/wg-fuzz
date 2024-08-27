struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: Struct_4,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.e.zy, vec2<i32>(-44943i, arg_1.e.x)), -vec2<i32>(-2147483647i, arg_1.e.x)), _wgslsmith_dot_vec2_i32(max(arg_1.d.b, arg_1.d.b), vec2<i32>(arg_1.e.x, -28941i) << (arg_0.xw % vec2<u32>(32u)))), countOneBits(min(firstTrailingBit(arg_1.d.b), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_1.d.a), arg_1.e.xx)))), -(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.e.x, -74261i) >> (arg_0.zz % vec2<u32>(32u)), abs(arg_1.e.yz)) << (arg_2.xy % vec2<u32>(32u))));
    var var_1 = (abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(-33771i, -1i, var_0, 2147483647i), vec4<i32>(36243i, 8963i, arg_1.d.a, 0i))) >> (~countOneBits(u_input.a) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d.b.x, 0i, -arg_1.e.x, _wgslsmith_div_i32(0i, var_0)) & (firstTrailingBit(vec4<i32>(1i, var_0, var_0, arg_1.d.b.x)) | firstTrailingBit(vec4<i32>(arg_1.c, arg_1.d.a, -12739i, 5921i))), _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(arg_1.d.b.x, 0i, -2147483647i, arg_1.e.x)), select(select(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(1i, -43833i, arg_1.d.a, var_0), false), ~vec4<i32>(-2147483647i, var_0, var_0, 21869i), false)));
    var var_2 = ~vec2<i32>(var_1.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.e.x, 0i), i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(16760i, var_1.x, 8266i, var_1.x), vec4<i32>(var_0, arg_1.d.a, 1i, 31515i)))) | -firstTrailingBit(vec2<i32>(1i, 121271i));
    var_2 = abs(firstLeadingBit(~(-vec2<i32>(1i, arg_1.e.x))));
    let var_3 = Struct_1(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), select(abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(arg_0.x, u_input.a.x, arg_1.b, u_input.a.x)))), vec4<u32>(4294967295u, ~reverseBits(u_input.a.x), u_input.a.x, select(arg_2.x, ~u_input.a.x, true)), true));
    return 31370u;
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~func_3(u_input.a ^ vec4<u32>(21269u, 65468u, u_input.a.x, u_input.a.x), Struct_5(Struct_3(-977f), u_input.a.x, 1i, Struct_4(-23573i, vec2<i32>(-52522i, 4762i)), vec3<i32>(11134i, 2147483647i, -2147483647i)), ~u_input.a.xzy), 69670u, func_3(max(u_input.a, u_input.a) << (~u_input.a % vec4<u32>(32u)), Struct_5(Struct_3(358f), min(u_input.a.x, u_input.a.x), firstTrailingBit(-1i), Struct_4(-1i, vec2<i32>(-1i, -26357i)), -vec3<i32>(-6612i, 52264i, -29829i)), u_input.a.xwz), 1u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x));
    var var_1 = Struct_3(1421f);
    var var_2 = -692f;
    var_0 = 1u;
    var var_3 = Struct_4(1i, _wgslsmith_clamp_vec2_i32(select(~vec2<i32>(-1i, 16938i), ~vec2<i32>(1i, 1i), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), any(vec3<bool>(false, false, false)))), _wgslsmith_mult_vec2_i32(select(~vec2<i32>(0i, -41332i), vec2<i32>(-1i, -11516i), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), firstTrailingBit(vec2<i32>(-59535i, 11828i))), reverseBits(vec2<i32>(2147483647i, 22161i) >> (max(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yz) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a) + _wgslsmith_f_op_f32(round(var_1.a)))), 662f, _wgslsmith_f_op_f32(var_1.a + -1096f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, -810f, var_1.a), vec3<f32>(-237f, var_1.a, -658f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, -1888f) * vec3<f32>(-1000f, 190f, var_1.a)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<f32>(var_1.a, -1476f, -394f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a) - vec3<f32>(977f, -329f, var_1.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, 1268f, var_1.a), vec3<f32>(var_1.a, 376f, -526f))) + _wgslsmith_div_vec3_f32(vec3<f32>(424f, var_1.a, 1450f), vec3<f32>(243f, -1000f, var_1.a))))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), -2807f, _wgslsmith_f_op_f32(f32(-1f) * -1167f), arg_1.x);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(214f - 1088f))), var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1930f)), arg_1.x);
    let var_1 = Struct_2(Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true), u_input.a), Struct_1(select(vec3<bool>(select(false, false, false), all(vec3<bool>(false, false, true)), true), vec3<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(true, true, false)), false), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 16694u, u_input.a.x), countOneBits(vec4<u32>(1u, 28363u, 83687u, 1u))), _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.zw), countOneBits(1u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(63769u, u_input.a.x, u_input.a.x), vec3<u32>(17166u, u_input.a.x, u_input.a.x)) % 32u), _wgslsmith_mod_u32(abs(u_input.a.x), u_input.a.x | 0u))), _wgslsmith_add_vec3_i32(firstLeadingBit(-(~vec3<i32>(arg_0, 2147483647i, arg_0))), -firstLeadingBit(~vec3<i32>(arg_0, arg_0, arg_0))), vec2<i32>(_wgslsmith_mult_i32(1i, -(i32(-1i) * -10256i)), -25023i));
    let var_2 = vec4<bool>(any(!vec2<bool>(true, arg_0 != -17275i)), true, var_1.b.a.x, var_1.b.a.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, var_0.x, arg_1.x, -718f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1249f, -774f, 235f, var_0.x))))));
    return ~max(var_1.c.x | _wgslsmith_mod_i32(-12990i, ~(-1633i)), max(var_1.c.x, 2147483647i));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = func_4(0i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-267f, -1000f, -139f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(405f, -148f, 115f))))))));
    return Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-223f - _wgslsmith_f_op_f32(-646f + -1714f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1002f - -1442f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~(-2147483647i >> (u_input.a.x % 32u)), ~(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -11112i), vec2<i32>(-1i, -1i))));
    let var_1 = Struct_5(func_1(var_0.a, ~4294967295u, vec2<u32>(select(1u, 17826u, false), ~4294967295u) & u_input.a.xz), ~(~_wgslsmith_add_u32(reverseBits(u_input.a.x), 4294967295u | u_input.a.x)), max(var_0.a, var_0.b.x), var_0, firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2147483647i, var_0.b.x, -21738i)), vec3<i32>(var_0.a, var_0.b.x, var_0.b.x)))));
    let var_2 = ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 4294967295u, 4294967295u, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_1.b, 0u, u_input.a.x), vec4<u32>(6106u, 85377u, 37822u, var_1.b)))) ^ 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(40438u, 0u), u_input.a.xw, vec2<u32>(4294967295u, 4294967295u)))), vec2<i32>(var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-83262i >> (var_2 % 32u), firstLeadingBit(var_0.a), 1i), ~abs(var_1.e))), u_input.a.x, ~0u);
}

