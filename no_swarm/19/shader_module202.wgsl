struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec3<i32> {
    global0 = array<vec2<bool>, 2>();
    let var_0 = true;
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    return select(vec3<i32>(min(10544i, ~0i), 0i, ~max(-1i, firstTrailingBit(-2147483647i))), -vec3<i32>(1i, -36127i, 2147483647i), vec3<bool>(all(vec2<bool>(false, var_0)), var_0, true));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    var var_0 = -189f;
    var var_1 = abs(vec4<i32>(-(~1i | ~arg_1.d.c), firstLeadingBit(38924i), _wgslsmith_add_i32(arg_0.c >> (firstTrailingBit(443u) % 32u), _wgslsmith_mult_i32(arg_0.c, func_2().x)), 19832i));
    var var_2 = arg_1;
    return var_2.c.d.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_3(((select(arg_3, arg_3, false) && !arg_3) & any(!vec4<bool>(arg_3, true, false, arg_3))) || (arg_0.x != -(arg_0.x & arg_0.x)));
    var var_1 = vec4<bool>(true, !all(select(!vec4<bool>(false, true, true, arg_3), select(vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(true, var_0.a, arg_3, var_0.a), arg_3), true)), select(!(!any(vec4<bool>(true, true, false, var_0.a))), true, false), true);
    global0 = array<vec2<bool>, 2>();
    var_1 = select(vec4<bool>((u_input.a | 30982u) < (u_input.a | ~u_input.a), true, (any(var_1.yw) & !var_0.a) && all(select(global0[_wgslsmith_index_u32(44665u, 2u)], var_1.zw, vec2<bool>(var_0.a, false))), !(arg_2.x >= _wgslsmith_f_op_f32(-arg_2.x))), vec4<bool>(all(var_1.xz), var_1.x, arg_2.x >= -1948f, var_0.a), true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(560f + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))))) * 642f);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * 987f), _wgslsmith_f_op_f32(-3219f * -1120f)) * arg_1.xx) * arg_2.xy), ~(~firstLeadingBit(4294967295u)) != _wgslsmith_add_u32(max(u_input.a, _wgslsmith_div_u32(u_input.a, 65062u)), firstTrailingBit(~u_input.a)), abs(~(-arg_0.x)) | -_wgslsmith_sub_i32(-1i, 21997i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.yx + arg_2.yx), _wgslsmith_f_op_vec2_f32(-arg_1.wy)))))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> bool {
    global0 = array<vec2<bool>, 2>();
    var var_0 = func_4(func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(466f, _wgslsmith_f_op_f32(exp2(arg_0.d.a.x)), _wgslsmith_div_f32(arg_0.d.d.x, 1366f), arg_0.c.a.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1041f, _wgslsmith_f_op_f32(min(arg_0.d.a.x, 2031f)), _wgslsmith_f_op_f32(136f * _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(arg_0.c.d.x, arg_0.c.d.x), arg_0.d.b, -1i, arg_0.d.a), arg_0)))))), all(vec3<bool>(true, arg_0.d.b, arg_2)));
    var var_1 = Struct_2(_wgslsmith_sub_i32(abs(var_0.c), ~_wgslsmith_add_i32(-4956i, var_0.c >> (u_input.a % 32u))), u_input.a, arg_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(218f - -2554f), -1130f))), true, -arg_0.c.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(540f, var_0.a.x) - vec2<f32>(arg_0.c.d.x, var_0.d.x)) * _wgslsmith_f_op_vec2_f32(-arg_0.d.d)), var_0.a)), min(arg_0.e, vec4<i32>(71242i, _wgslsmith_sub_i32(~var_0.c, firstLeadingBit(var_0.c)), -14643i, firstLeadingBit(-1i))));
    var var_2 = Struct_3(!select(var_0.b, false, all(select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, true), global0[_wgslsmith_index_u32(arg_1, 2u)]))));
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.d.c, _wgslsmith_mult_i32(35368i, abs(var_1.d.c)), var_0.c), arg_0.e.wzx);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(ceil(-799f))) - vec2<f32>(_wgslsmith_f_op_f32(select(-612f, 562f, false)), _wgslsmith_f_op_f32(trunc(191f))))), all(vec3<bool>(true && func_1(Struct_2(-1i, 15512u, Struct_1(vec2<f32>(-532f, 355f), false, -2147483647i, vec2<f32>(-2546f, -1995f)), Struct_1(vec2<f32>(-1248f, 310f), false, -2147483647i, vec2<f32>(-481f, -1370f)), vec4<i32>(-59787i, -20741i, -1i, 1i)), u_input.a, false), false, false)), -17021i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-111f, _wgslsmith_f_op_f32(sign(185f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, -2117f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(286f, 571f), vec2<f32>(-789f, -1862f)))))));
    let var_1 = Struct_3(u_input.a != 37657u);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(322f * _wgslsmith_div_f32(var_0.a.x, var_0.d.x)))) * 1575f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f + var_0.a.x))))), _wgslsmith_f_op_f32(select(482f, _wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))) < 2013f)), _wgslsmith_f_op_f32(abs(var_0.a.x)));
    var var_3 = vec2<bool>(true, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, var_0.c, -11845i, var_0.c), vec4<i32>(2147483647i, var_0.c, 0i, -1203i))), _wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 25016i, -39232i, 1i), countOneBits(vec4<i32>(-11606i, var_0.c, var_0.c, var_0.c)))) >= _wgslsmith_add_i32(-17645i, -1i));
    var var_4 = -393f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x)))))));
    let var_5 = Struct_2(47810i >> (_wgslsmith_add_u32(~min(u_input.a, u_input.a), u_input.a) % 32u), u_input.a, func_4(vec3<i32>(var_0.c, _wgslsmith_div_i32(abs(var_0.c), _wgslsmith_mult_i32(var_0.c, var_0.c)), var_0.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.d.x, var_0.d.x, -928f) - vec4<f32>(1000f, var_2.x, var_0.a.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, var_2.x, var_0.a.x, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -822f, -414f, var_0.d.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-886f - 604f), _wgslsmith_f_op_f32(step(1673f, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -383f))), (_wgslsmith_add_u32(u_input.a, 14621u) << (4294967295u % 32u)) < u_input.a), Struct_1(var_0.d, true, var_0.c, vec2<f32>(-189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), ~abs(vec4<i32>(max(0i, -45546i), _wgslsmith_sub_i32(-2147483647i, var_0.c), var_0.c >> (4294967295u % 32u), min(var_0.c, -18273i))));
    var var_6 = abs(~reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(u_input.a, 4294967295u, var_5.b, u_input.a) & vec4<u32>(var_5.b, 0u, var_5.b, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & vec4<u32>(14483u, 29458u, 1u, 16378u))));
    var_3 = select(vec2<bool>(var_0.b, !(!var_5.c.b)), vec2<bool>(func_1(Struct_2(var_0.c, u_input.a, func_4(vec3<i32>(var_0.c, -2147483647i, var_0.c), vec4<f32>(var_2.x, var_0.d.x, var_0.d.x, var_2.x), vec3<f32>(var_0.a.x, var_5.d.d.x, var_5.d.d.x), var_3.x), var_5.c, _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c, var_5.e.x, var_0.c, 1i), var_5.e)), countOneBits(reverseBits(1344u)), any(vec2<bool>(var_1.a, var_5.c.b))), any(vec2<bool>(true, var_0.b))), select(vec2<bool>(min(60003u, 4918u) > max(u_input.a, 1u), countOneBits(var_5.b) == ~var_5.b), vec2<bool>(var_0.b, true), global0[_wgslsmith_index_u32(12976u, 2u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_5.e), ~vec3<u32>(38494u, 21373u, 0u), var_0.a.x, func_2(), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_5.a, var_5.a) << ((vec2<u32>(var_6.x, u_input.a) | max(var_6.yy, var_6.yz)) % vec2<u32>(32u)), vec2<i32>(~(i32(-1i) * -7364i), ~var_5.a)));
}

