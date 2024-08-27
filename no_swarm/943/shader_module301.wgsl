struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> bool {
    var var_0 = Struct_1(countOneBits(u_input.b), _wgslsmith_div_f32(-1232f, 1213f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1931f, 1329f, 1369f, 350f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(865f)) * 586f), 1418f))));
    let var_1 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.c.xx)), var_0.a.x, _wgslsmith_clamp_i32(-2147483647i, u_input.c.x ^ -2147483647i, ~51615i), abs(u_input.b.x)), var_0.c.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(913f, 449f)), _wgslsmith_f_op_f32(-var_0.d), var_0.b, -2655f))), 810f), Struct_1(-select(vec4<i32>(-1i, 0i, -2147483647i, 86603i), u_input.b, arg_0) >> (u_input.d % vec4<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(round(var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, var_0.b) + -648f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d))), -1779f), _wgslsmith_f_op_f32(-871f - 306f)), u_input.d.x, u_input.d.x, _wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.x + 1000f))))));
    var_0 = var_1.a;
    let var_2 = var_1;
    let var_3 = var_1.b;
    return arg_0.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.b.c.xwy - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(122f, -729f, arg_1.b.d), arg_2.zwy))), _wgslsmith_f_op_vec3_f32(sign(arg_2.zxy)))))));
    global0 = false;
    var var_1 = arg_1.b;
    var var_2 = !vec4<bool>(func_3(vec4<bool>(true, true, true, true), arg_1.c.x ^ 54608u) & all(vec3<bool>(true, true, true)), true, true, true);
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1281f - _wgslsmith_f_op_f32(f32(-1f) * -1214f)))) <= _wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.b)))));
    return !var_2.xyw;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<u32> {
    global0 = true;
    global0 = true;
    var var_0 = ~(~u_input.a);
    var var_1 = func_2(_wgslsmith_f_op_f32(-arg_0), Struct_3(abs(min(abs(vec4<u32>(u_input.d.x, arg_1, arg_1, arg_1)), _wgslsmith_add_vec4_u32(vec4<u32>(61757u, 1u, u_input.d.x, 4294967295u), vec4<u32>(arg_1, arg_1, u_input.d.x, arg_1)))), Struct_1(abs(~u_input.b), 784f, _wgslsmith_div_vec4_f32(vec4<f32>(726f, -1346f, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1000f, arg_0, 300f) - vec4<f32>(arg_0, arg_0, arg_0, arg_0))), 1000f), u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 970f, 1096f, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1431f, 254f, 512f, arg_0))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-793f, arg_0, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1820f, 493f, arg_0, arg_0) - vec4<f32>(arg_0, -1000f, arg_0, arg_0)))) - vec4<f32>(_wgslsmith_f_op_f32(314f * arg_0), arg_0, _wgslsmith_div_f32(1207f, arg_0), 204f))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c.x, u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, 0i, u_input.a) & u_input.b, u_input.b, vec4<i32>(-23670i, u_input.b.x, -52499i, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1547f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 132f) * _wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, arg_0, 1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1810f, arg_0, -1941f), vec4<f32>(arg_0, -1256f, arg_0, arg_0)))), _wgslsmith_f_op_f32(ceil(arg_0))), Struct_1(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -9211i), arg_0, vec4<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(arg_0 * arg_0), var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1200f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - _wgslsmith_f_op_f32(arg_0 - 453f)), 329f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), -343f))), ~58243u, _wgslsmith_add_u32(~(~1u & abs(u_input.d.x)), _wgslsmith_add_u32(1u, u_input.d.x)), _wgslsmith_f_op_f32(-arg_0));
    return u_input.d.xzz;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -583f);
    global0 = true;
    global0 = true;
    var var_1 = func_2(-968f, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -458f) + vec4<f32>(arg_2.e, arg_1.b.b, arg_1.b.b, -1373f)), vec4<f32>(arg_2.e, -851f, 935f, var_0)))))).x;
    global0 = true;
    return Struct_1(min(firstLeadingBit(~(~vec4<i32>(1i, 0i, arg_1.b.a.x, arg_1.b.a.x))), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(604f))))) * _wgslsmith_f_op_f32(min(1144f, arg_2.a.b))), arg_2.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(775f + _wgslsmith_f_op_f32(-arg_2.e)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(804f + -432f))), arg_2.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_dot_vec3_u32(func_1(-678f, ~u_input.d.x), vec3<u32>(~u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, 1u), countOneBits(u_input.d.x & 4294967295u))), Struct_3(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.zxx, vec3<u32>(45415u, 1u, 144671u)), _wgslsmith_mult_u32(u_input.d.x ^ 61265u, 1u), 13789u, 1u), Struct_1(vec4<i32>(u_input.c.x ^ u_input.b.x, u_input.b.x, u_input.a ^ u_input.a, firstTrailingBit(47580i)), 1246f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2365f, -864f, 609f, 616f))), vec4<f32>(646f, 1000f, -360f, 553f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1348f * 931f) + -257f)), vec4<u32>(~4294967295u, 81772u, 37682u, _wgslsmith_mult_u32(firstTrailingBit(u_input.d.x), ~40321u))), Struct_2(Struct_1(vec4<i32>(u_input.a, 0i, reverseBits(u_input.c.x), _wgslsmith_clamp_i32(-1i, 0i, -50577i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1246f, -1000f, 316f, 1818f) * vec4<f32>(-1071f, 434f, -229f, -360f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(276f, 371f, -1000f, -1358f) * vec4<f32>(1380f, -411f, 1959f, -938f)), u_input.d.x <= u_input.d.x)), -902f), Struct_1(vec4<i32>(select(2923i, u_input.b.x, false), -u_input.a, -16929i, ~u_input.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -565f))), vec4<f32>(_wgslsmith_div_f32(2509f, 183f), 645f, -1000f, _wgslsmith_f_op_f32(782f * -272f)), _wgslsmith_div_f32(307f, _wgslsmith_f_op_f32(min(735f, 544f)))), ~(~(u_input.d.x | 32077u)), 1u, -361f));
    var_0 = func_4(u_input.d.x, Struct_3(_wgslsmith_div_vec4_u32(~(~u_input.d), vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_mod_u32(u_input.d.x, 1u), 0u, u_input.d.x)), func_4(_wgslsmith_dot_vec2_u32(countOneBits(u_input.d.wx), vec2<u32>(u_input.d.x, u_input.d.x)), Struct_3(u_input.d, Struct_1(vec4<i32>(var_0.a.x, -12113i, 11151i, var_0.a.x), var_0.b, vec4<f32>(-272f, var_0.d, var_0.b, -1439f), var_0.b), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 20575u)), Struct_2(Struct_1(vec4<i32>(u_input.b.x, -42647i, 21059i, -17575i), var_0.b, vec4<f32>(-1338f, var_0.d, -465f, 1596f), var_0.c.x), func_4(1u, Struct_3(u_input.d, Struct_1(u_input.b, var_0.b, var_0.c, var_0.d), vec4<u32>(u_input.d.x, 1u, 27712u, u_input.d.x)), Struct_2(Struct_1(u_input.b, 282f, var_0.c, var_0.b), Struct_1(var_0.a, var_0.b, var_0.c, var_0.b), 4294967295u, u_input.d.x, -1253f)), reverseBits(4294967295u), reverseBits(4294967295u), func_4(u_input.d.x, Struct_3(vec4<u32>(u_input.d.x, 1u, u_input.d.x, 57271u), Struct_1(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, 1i), -384f, var_0.c, -452f), vec4<u32>(63787u, u_input.d.x, u_input.d.x, u_input.d.x)), Struct_2(Struct_1(vec4<i32>(0i, u_input.b.x, 0i, -3213i), var_0.b, var_0.c, var_0.d), Struct_1(var_0.a, -1185f, vec4<f32>(var_0.c.x, -399f, 546f, var_0.d), var_0.d), u_input.d.x, 90032u, var_0.d)).d)), ~(~abs(u_input.d))), Struct_2(func_4(~u_input.d.x, Struct_3(u_input.d, Struct_1(var_0.a, var_0.c.x, var_0.c, -1712f), u_input.d), Struct_2(func_4(6150u, Struct_3(vec4<u32>(0u, 1393u, 8402u, u_input.d.x), Struct_1(u_input.b, var_0.b, var_0.c, -481f), u_input.d), Struct_2(Struct_1(var_0.a, -442f, vec4<f32>(var_0.c.x, -495f, -229f, var_0.d), 179f), Struct_1(vec4<i32>(0i, var_0.a.x, u_input.b.x, u_input.b.x), 747f, vec4<f32>(var_0.c.x, 974f, -442f, var_0.d), -3690f), u_input.d.x, u_input.d.x, 494f)), Struct_1(vec4<i32>(u_input.a, 15568i, var_0.a.x, var_0.a.x), var_0.d, vec4<f32>(var_0.b, var_0.c.x, 1071f, var_0.c.x), var_0.c.x), 1u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), -781f)), Struct_1(-(~vec4<i32>(u_input.a, u_input.c.x, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(-668f + func_4(u_input.d.x, Struct_3(u_input.d, Struct_1(vec4<i32>(u_input.c.x, 0i, 81766i, -2147483647i), 1024f, vec4<f32>(196f, 338f, var_0.d, var_0.b), 1965f), vec4<u32>(16137u, 4294967295u, u_input.d.x, u_input.d.x)), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.c.x), var_0.d, vec4<f32>(598f, -420f, 484f, -451f), 804f), Struct_1(u_input.b, var_0.d, vec4<f32>(var_0.d, var_0.b, var_0.d, var_0.c.x), var_0.c.x), u_input.d.x, 1u, 493f)).d), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), -945f, -777f, _wgslsmith_f_op_f32(round(102f))), var_0.c.x), ~(~u_input.d.x), _wgslsmith_mod_u32(41013u, 15449u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2236f + 1586f) - _wgslsmith_div_f32(var_0.c.x, var_0.b)))));
    let var_1 = Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~114757u, u_input.d.x), func_1(_wgslsmith_f_op_f32(-var_0.d), abs(u_input.d.x)).x, ~max(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec3_u32(~u_input.d.wyw, u_input.d.wyx)), (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 57076u, 1u), u_input.d) >> (reverseBits(vec4<u32>(u_input.d.x, 38204u, u_input.d.x, 19336u)) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x), _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(4294967295u, u_input.d.x, 0u, 43260u)))), Struct_1(select(-firstTrailingBit(vec4<i32>(-2147483647i, var_0.a.x, u_input.b.x, 0i)), vec4<i32>(~var_0.a.x, ~(-26531i), -u_input.c.x, abs(-1i)), select(any(vec3<bool>(true, true, false)), all(vec3<bool>(true, true, true)), true)), -181f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.c)) * var_0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -666f, var_0.b, -2069f)) - _wgslsmith_f_op_vec4_f32(var_0.c - var_0.c))), _wgslsmith_f_op_f32(-var_0.b)), select(u_input.d, reverseBits(u_input.d | u_input.d), true));
    var var_2 = var_1;
    var_0 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, 0u, u_input.d.x, ~var_2.c.x), var_2.c);
}

