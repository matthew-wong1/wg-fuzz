struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(35467u, 0u, 1u, 19605u), vec4<u32>(98594u, 35579u, 4294967295u, 1u), vec4<u32>(26114u, 1u, 4294967295u, 0u), vec4<u32>(3741u, 21541u, 42303u, 51577u), vec4<u32>(0u, 52881u, 43422u, 4294967295u), vec4<u32>(46403u, 1u, 0u, 34081u), vec4<u32>(4294967295u, 4294967295u, 1u, 40489u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(57370u, 27564u, 26407u, 6666u), vec4<u32>(5071u, 1u, 4294967295u, 9016u), vec4<u32>(16357u, 66080u, 24796u, 4294967295u), vec4<u32>(57842u, 1u, 4294967295u, 10990u), vec4<u32>(4294967295u, 43494u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(8107u, 78872u, 4294967295u, 4294967295u), vec4<u32>(43337u, 773u, 96379u, 64243u), vec4<u32>(3884u, 1u, 2370u, 4294967295u), vec4<u32>(1u, 1u, 10156u, 51682u), vec4<u32>(55718u, 23035u, 4294967295u, 1u), vec4<u32>(4294967295u, 30689u, 1u, 21117u), vec4<u32>(0u, 61311u, 90187u, 1u), vec4<u32>(1u, 1u, 3570u, 31217u), vec4<u32>(1u, 59584u, 38825u, 1u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(24640u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(28161u, 7791u, 70502u, 0u), vec4<u32>(18820u, 0u, 77134u, 17676u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec2<u32> {
    global0 = array<vec4<u32>, 28>();
    var var_0 = countOneBits(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(4294967295u, 4294967295u, 579u)), vec3<u32>(1u, 1u, 1u)) & 0u);
    let var_1 = vec3<i32>(abs(~(~2147483647i)), abs(-25005i), u_input.b.x) ^ vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, 0i), max(u_input.a.x >> (18245u % 32u), u_input.a.x) | (2147483647i | -u_input.c.x));
    var var_2 = !select(select(vec4<bool>(arg_1, false, arg_1, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, arg_0.x, arg_1, arg_0.x), vec4<bool>(arg_0.x, arg_1, true, arg_0.x)), select(select(vec4<bool>(true, false, true, arg_1), vec4<bool>(arg_1, false, false, arg_0.x), true), select(vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(arg_1, arg_0.x, true, false), vec4<bool>(false, false, arg_0.x, false)), true)), !(!(!vec4<bool>(arg_0.x, true, false, true))), false);
    var_0 = abs(_wgslsmith_mult_u32(abs(~43063u) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(72595u, 0u), vec2<u32>(7219u, 1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(69908u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1886u)) >> (1u % 32u)));
    return min(vec2<u32>(countOneBits(~0u), min(~_wgslsmith_mod_u32(19398u, 15681u), 5878u)), ~vec2<u32>(55100u, 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    let var_0 = Struct_2(1491f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1, 1f, !arg_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-217f, arg_1)))))), Struct_1(~arg_0 & (_wgslsmith_add_vec3_u32(arg_0, vec3<u32>(1u, arg_0.x, arg_0.x)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_0)), _wgslsmith_mult_vec2_u32(func_3(select(vec3<bool>(arg_2, arg_3.x, arg_3.x), vec3<bool>(true, arg_2, true), vec3<bool>(false, arg_3.x, arg_2)), true), ~(~vec2<u32>(52432u, arg_0.x))), _wgslsmith_div_i32(-2147483647i, ~(-2147483647i | u_input.a.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) + _wgslsmith_f_op_f32(min(-1000f, arg_1))), _wgslsmith_f_op_f32(round(arg_1))))));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.c.x, _wgslsmith_clamp_i32(~u_input.b.x, u_input.c.x, i32(-1i) * -21834i), -1i), u_input.c.zww >> (reverseBits(arg_0) % vec3<u32>(32u)));
    return ~u_input.c.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32) -> vec3<u32> {
    var var_0 = vec3<i32>(0i, abs(u_input.c.x), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_mult_i32(arg_0.b.x, abs(u_input.a.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b.x, -919i), -vec2<i32>(-23769i, 21324i)), vec2<i32>(2147483647i, -1i) << (arg_0.c.c.b % vec2<u32>(32u)))));
    var_0 = arg_0.b ^ -(~vec3<i32>(i32(-1i) * -4582i, 1344i, ~0i));
    var_0 = vec3<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), reverseBits(~func_2(min(vec3<u32>(1u, arg_1.x, 1u), vec3<u32>(arg_0.e, arg_0.e, arg_1.x)), -459f, !arg_0.d.x, vec2<bool>(arg_0.d.x, false))), u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(328f, -1390f, 544f, arg_2), vec4<f32>(arg_0.c.d.x, -463f, arg_0.c.d.x, 1576f), vec4<bool>(arg_0.d.x, false, arg_0.d.x, arg_0.d.x))), vec4<f32>(arg_0.c.b, -128f, 522f, arg_0.c.d.x))) + vec4<f32>(843f, arg_2, -686f, -597f))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -505f, -695f) - vec4<f32>(arg_2, 169f, 518f, 539f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a, 149f, -2376f, arg_0.c.d.x)), vec4<bool>(arg_0.d.x, arg_0.d.x, false, arg_0.d.x))))) - vec4<f32>(-623f, 711f, arg_0.c.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2575f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -2109f, arg_0.c.b, 922f)))))), select(select(select(vec4<bool>(arg_0.d.x, false, arg_0.d.x, true), vec4<bool>(arg_0.d.x, arg_0.d.x, false, arg_0.d.x), vec4<bool>(true, arg_0.d.x, arg_0.d.x, arg_0.d.x)), vec4<bool>(var_1.x < arg_2, false, arg_0.d.x, arg_0.d.x), arg_0.d.x), arg_0.d, arg_0.d)));
    return vec3<u32>(select(~1u, ~(~min(arg_1.x, 1u)), all(select(!vec3<bool>(arg_0.d.x, arg_0.d.x, true), select(arg_0.d.yxw, arg_0.d.zww, arg_0.d.wzy), arg_0.d.x))), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(countOneBits(arg_1.x & arg_1.x), arg_1.x)), ~_wgslsmith_mult_u32(1871u, func_3(select(vec3<bool>(arg_0.d.x, false, arg_0.d.x), vec3<bool>(true, arg_0.d.x, false), arg_0.d.x), arg_0.c.c.a.x < 1u).x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1299f, -360f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-145f, -262f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_f_op_f32(231f - -1000f)))));
    var var_1 = true;
    var_1 = 1i == arg_1.c;
    return select(vec2<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))))), vec2<bool>(all(vec2<bool>(true, true)) || false, false), ~_wgslsmith_dot_vec3_i32(u_input.a.yzz, u_input.a.wxx) > firstTrailingBit(~select(-15363i, arg_1.c, true)));
}

fn func_5(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    let var_0 = u_input.a.zw;
    return Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(max(_wgslsmith_add_u32(53969u, 0u), 1u), 1u, func_3(vec3<bool>(arg_0.x, arg_0.x, false), !arg_0.x).x)), vec2<u32>(~countOneBits(1u), 1u), _wgslsmith_sub_i32(u_input.b.x, func_2(max(vec3<u32>(0u, 0u, 105497u), ~vec3<u32>(0u, 1892u, 0u)), _wgslsmith_f_op_f32(round(257f)), arg_0.x, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    var var_0 = ~u_input.c.x;
    let var_1 = vec3<i32>(firstLeadingBit(u_input.b.x), -(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -22626i), -vec2<i32>(2147483647i, u_input.a.x)) | 8084i), countOneBits(1i));
    let var_2 = func_5(func_4(Struct_1(~func_1(Struct_3(u_input.a.wx, vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), Struct_2(152f, 215f, Struct_1(vec3<u32>(0u, 76342u, 0u), vec2<u32>(29146u, 0u), 1i), vec2<f32>(-709f, -768f)), vec4<bool>(false, false, true, false), 4294967295u), vec3<u32>(1u, 4294967295u, 0u), 1299f), vec2<u32>(1u, 38060u), var_1.x), Struct_1(vec3<u32>(1u, 1u, 1u), vec2<u32>(func_1(Struct_3(vec2<i32>(11518i, u_input.b.x), u_input.a.zyy, Struct_2(584f, 1615f, Struct_1(vec3<u32>(4294967295u, 0u, 55125u), vec2<u32>(4294967295u, 56846u), var_1.x), vec2<f32>(-211f, -474f)), vec4<bool>(false, false, true, true), 4294967295u), vec3<u32>(51838u, 0u, 16612u), -1751f).x, ~4294967295u), var_1.x)), var_1.x ^ select(func_2(max(vec3<u32>(9512u, 1u, 1u), vec3<u32>(23961u, 1u, 81270u)), _wgslsmith_f_op_f32(sign(943f)), true, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_div_i32(var_1.x & u_input.b.x, abs(u_input.c.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~var_2.b.x)));
}

