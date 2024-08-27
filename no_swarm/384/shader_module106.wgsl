struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(1497f, -1321f, -113f), vec3<f32>(-1020f, -1355f, 1599f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.e;
    var var_1 = select(select(vec3<bool>(arg_1, arg_2.d, !arg_1), vec3<bool>(true, arg_1, true | (arg_2.b >= 55612u)), !all(select(vec2<bool>(false, arg_2.a), vec2<bool>(arg_1, arg_1), false))), vec3<bool>(false, true, select(false, all(vec2<bool>(arg_2.a, false)), any(select(vec2<bool>(false, false), vec2<bool>(true, arg_1), false)))), all(select(select(!vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_2.d, false, false), arg_2.a), false), !select(vec3<bool>(arg_2.a, arg_1, arg_1), vec3<bool>(arg_2.d, arg_2.d, false), vec3<bool>(false, arg_1, true)), arg_1)));
    var var_2 = -23238i >= u_input.a;
    global0 = _wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_sub_i32(arg_0.x, -53204i), ~(-1i), -21246i), reverseBits(~arg_0.zxy), !(!arg_1)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-2147483647i, arg_0.x, 18563i), vec3<i32>(21979i, -1i, 32652i)), arg_0.ywz | arg_0.zwz), vec3<i32>(1i, 0i, arg_2.c), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_2.c, -2147483647i), vec3<i32>(arg_2.c, 16979i, -27478i)), vec3<i32>(-24326i, arg_2.c, u_input.a), true))));
    global1 = array<vec3<f32>, 2>();
    return 15933u;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    global1 = array<vec3<f32>, 2>();
    var var_1 = firstLeadingBit(arg_0.x);
    global1 = array<vec3<f32>, 2>();
    global0 = arg_0.x >> (abs(1u | abs(var_0.b >> (var_0.b % 32u))) % 32u);
    return var_0.c | ~var_0.c;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    global0 = i32(-1i) * -1i;
    global0 = u_input.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1226f)))), _wgslsmith_f_op_f32(-199f * -470f))));
    global0 = select(func_4(~_wgslsmith_clamp_vec2_i32(~vec2<i32>(-16177i, u_input.a), -vec2<i32>(0i, 0i), -vec2<i32>(u_input.a, u_input.a)), Struct_1(arg_0, func_3(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(15527i, 31331i, -11030i, u_input.a)), any(vec3<bool>(true, true, arg_0)), Struct_1(arg_0, 0u, u_input.a, arg_0, vec4<f32>(-185f, var_0.x, -320f, -253f))), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -7231i)), 1u != func_3(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), false, Struct_1(arg_0, 10932u, u_input.a, arg_0, vec4<f32>(var_0.x, -518f, -1000f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, -1799f, 495f, var_0.x))), Struct_1(true, countOneBits(~1u), countOneBits(i32(-1i) * -76959i), false, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1513f, -1466f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1021f, var_0.x, var_0.x)), 2147483647i != u_input.a)))), u_input.a, true);
    var var_1 = false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1159f, -725f, var_0.x, 1000f) + vec4<f32>(898f, var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1218f, var_0.x) * vec4<f32>(434f, var_0.x, var_0.x, var_0.x)))))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec3_i32(~min(firstLeadingBit(vec3<i32>(46147i, -12699i, 0i)), vec3<i32>(arg_0.c, u_input.a, arg_0.c) ^ vec3<i32>(u_input.a, arg_0.c, -2147483647i)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c, -72537i, 11984i) | vec3<i32>(36760i, 1i, u_input.a), vec3<i32>(-7354i, arg_0.c, u_input.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-4556i, u_input.a, arg_0.c), vec3<i32>(arg_0.c, u_input.a, 9259i)), vec3<i32>(arg_0.c, -2147483647i, arg_0.c) | vec3<i32>(0i, u_input.a, 15760i), abs(vec3<i32>(u_input.a, -2147483647i, u_input.a)))));
    return Struct_1(true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 600u, 1u >> (arg_0.b % 32u)), abs(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 6344u))), -23512i, !any(!vec3<bool>(arg_0.a, true, false)) && false, arg_0.e);
}

fn func_1() -> f32 {
    var var_0 = func_5(Struct_1(false, _wgslsmith_div_u32(~abs(103832u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), i32(-1i) * -_wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a), true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(true)))))));
    var var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(max(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.b, var_0.b, var_0.b), vec4<u32>(17883u, 0u, var_0.b, 12256u)), vec4<u32>(1u, 59646u, var_0.b, 30059u) & vec4<u32>(16064u, var_0.b, var_0.b, 1u))), ~countOneBits(vec4<u32>(14594u, var_0.b, var_0.b, 0u))) != ~(~var_0.b ^ countOneBits(4294967295u));
    return -568f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1231f + 1000f));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f)))));
    global1 = array<vec3<f32>, 2>();
    var_1 = true;
    var_1 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))) < var_2.x);
    var var_3 = Struct_1(true, ~1u, abs(-2147483647i), false, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_1()), var_2.x, _wgslsmith_f_op_f32(702f + 1339f), _wgslsmith_f_op_f32(max(650f, _wgslsmith_f_op_f32(select(-463f, -936f, true))))))));
    var var_4 = !var_3.a;
    let var_5 = func_5(func_5(func_5(func_5(Struct_1(var_3.a, 0u, -2147483647i, true, var_3.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(129f, _wgslsmith_f_op_f32(-1165f - _wgslsmith_f_op_f32(select(-251f, _wgslsmith_f_op_f32(f32(-1f) * -1218f), true))), var_3.e.x), vec3<u32>(var_5.b, 1u, 0u), 46785u, 14920i);
}

