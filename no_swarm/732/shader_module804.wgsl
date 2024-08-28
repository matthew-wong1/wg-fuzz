struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_2,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.c, 35371u, 15552u)), firstTrailingBit(vec3<u32>(16934u, 7778u, u_input.a)))) << ((vec3<u32>(1u, ~(0u & u_input.c), firstTrailingBit(u_input.a)) << (reverseBits(vec3<u32>(arg_0, _wgslsmith_mult_u32(u_input.d, 4294967295u), 1374u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = ~(~(~_wgslsmith_div_u32(var_0.x, ~1u)));
    var var_2 = var_1 | 9910u;
    let var_3 = Struct_2(~vec4<u32>(25859u, 14680u, 45118u, arg_0), _wgslsmith_clamp_u32(1u, var_1 | firstTrailingBit(_wgslsmith_add_u32(74891u, arg_0)), 10979u), firstLeadingBit(firstTrailingBit(abs(firstTrailingBit(vec3<i32>(u_input.e, -1i, 2147483647i))))));
    var_0 = var_3.a.wyw;
    return ~u_input.d;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d, 13358u, u_input.d), vec4<u32>(63210u, u_input.d, u_input.d, 1u))), 0u, select(-select(vec3<i32>(u_input.b, u_input.b, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -60170i, 0i), vec3<i32>(7236i, 1i, u_input.e)), select(true, false, false)), vec3<i32>(u_input.e, abs(-4721i), u_input.b), true));
    let var_1 = Struct_1(arg_0.x, true, var_0.a.wzx, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32((vec4<i32>(-2147483647i, var_0.c.x, var_0.c.x, 2376i) << (var_0.a % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(vec4<i32>(98141i, u_input.b, var_0.c.x, 25101i), vec4<i32>(-2147483647i, 0i, 53731i, 0i)), select(vec4<i32>(-29434i, -15972i, u_input.b, var_0.c.x), ~vec4<i32>(u_input.b, 1i, -2147483647i, var_0.c.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false))), 17451i << (u_input.d % 32u)));
    var_0 = Struct_2(var_0.a, var_1.c.x, max(var_0.c, var_0.c));
    let var_2 = var_1.d;
    var var_3 = Struct_4(-(~46040i), var_1, var_1);
    return Struct_1(arg_0.x, !(reverseBits(_wgslsmith_mult_i32(-28927i, var_0.c.x)) < _wgslsmith_add_i32(~var_3.c.d, _wgslsmith_clamp_i32(var_0.c.x, var_1.d, 34628i))), firstLeadingBit(vec3<u32>(countOneBits(19368u), ~124981u, func_3(var_3.b.c.x, arg_0.x)) & _wgslsmith_clamp_vec3_u32(var_3.c.c, var_0.a.xzx, firstTrailingBit(var_3.c.c))), -var_3.b.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    var var_0 = arg_3;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-290f + -383f), _wgslsmith_f_op_f32(ceil(arg_2.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1138f), arg_0.b)));
    let var_2 = -arg_0.d;
    let var_3 = -6218i;
    return -1140f;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_2(vec4<f32>(715f, arg_0, arg_2, arg_2)), ~arg_1, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1195f, -568f, -1000f))), -576f)), -383f)), 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -815f, arg_0) * vec3<f32>(arg_2, arg_0, 220f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_0, arg_0), vec3<f32>(-1000f, 1000f, -236f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-169f, 1000f, 853f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, -1786f, -1276f)))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -401f, arg_0, var_0.x))).a))));
    return any(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), arg_0 >= _wgslsmith_f_op_f32(var_1 - -1048f)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 24369u;
    var var_1 = any(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), !vec4<bool>(true, true, true, select(true, false, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, func_1(-696f, vec3<u32>(var_0, u_input.c, u_input.a), -1000f)))));
    let var_2 = Struct_5(Struct_4(_wgslsmith_clamp_i32(~(-91967i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.e, u_input.b), ~(-1i)), u_input.b), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1845f, -816f))), false, ~vec3<u32>(48133u, var_0, var_0), u_input.b), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -607f), true, _wgslsmith_add_vec3_u32(abs(vec3<u32>(24557u, 0u, 0u)), ~vec3<u32>(0u, var_0, 43805u)), -u_input.e)), var_0, Struct_2(~vec4<u32>(u_input.d, _wgslsmith_div_u32(1u, var_0), 1u, 4294967295u & u_input.a), max(_wgslsmith_mod_u32(4294967295u, var_0) & u_input.a, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_0), vec3<u32>(54767u, u_input.c, 0u)))), abs(vec3<i32>(_wgslsmith_sub_i32(-1i, u_input.e), -32583i, reverseBits(u_input.b)))), (-abs(vec4<i32>(u_input.e, u_input.b, u_input.e, u_input.b)) >> (firstLeadingBit(vec4<u32>(4294967295u, 14847u, 14995u, var_0) | vec4<u32>(39794u, u_input.c, var_0, 6476u)) % vec4<u32>(32u))) >> (vec4<u32>(countOneBits(~29565u), ~(~var_0), 4294967295u, min(var_0, u_input.c ^ 31254u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-955f - 1000f) + -1416f), 313f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(253f * -268f), _wgslsmith_f_op_f32(f32(-1f) * -626f), 0i < u_input.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-883f - -1988f) + 2283f), _wgslsmith_f_op_f32(f32(-1f) * -1756f))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_2.e - _wgslsmith_f_op_vec3_f32(-var_2.e)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(502f, var_2.a.b.a, -440f))))))) + _wgslsmith_f_op_vec3_f32(var_2.e + _wgslsmith_div_vec3_f32(var_2.e, var_2.e))), var_2.d, _wgslsmith_div_vec3_u32(~var_2.c.a.yyy, select(firstLeadingBit(~vec3<u32>(u_input.c, var_0, var_2.c.b)), vec3<u32>(var_0, u_input.a, 1u), true)), max(var_2.a.c.d, 0i), 0u);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1120f, var_2.a.c.a, 646f, 590f) + vec4<f32>(-1290f, 821f, var_3.a.x, var_2.a.b.a)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-590f, var_2.e.x, -585f, var_2.a.c.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, 1630f, var_3.a.x, -283f)), vec4<f32>(832f, var_2.a.b.a, 570f, -746f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2450f, 1110f, var_2.a.b.a, var_3.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_2.d.x, -5515i));
}

