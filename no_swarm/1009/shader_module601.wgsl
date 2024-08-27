struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(1750f, -1235f, 465f, -965f, 1113f, -705f, -397f, -1178f, -638f, -1000f, 350f, -1687f, -534f, -970f, 403f, 253f);

var<private> global1: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(2147483647i, 110361i, -1i), vec3<i32>(60328i, -1i, 0i), vec3<i32>(-19216i, -1i, -9220i), vec3<i32>(3202i, 32117i, 2147483647i), vec3<i32>(-13259i, -3805i, 48793i), vec3<i32>(16029i, 2147483647i, -6449i), vec3<i32>(24608i, -37115i, 1i), vec3<i32>(-3700i, 29699i, -44827i), vec3<i32>(-1i, -18842i, 2147483647i), vec3<i32>(1i, 14986i, 1i), vec3<i32>(-7999i, -17438i, -1i), vec3<i32>(-56307i, i32(-2147483648), 1i), vec3<i32>(-1i, 6483i, i32(-2147483648)), vec3<i32>(1i, 0i, 1i), vec3<i32>(-998i, 20687i, 18582i), vec3<i32>(1i, 1i, 7311i), vec3<i32>(25656i, 1i, 1i), vec3<i32>(24140i, 77036i, 13164i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(79930i, -33288i, 11148i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(i32(-2147483648), -43859i, -51055i), vec3<i32>(-1i, -48038i, 16539i));

var<private> global2: Struct_2 = Struct_2(56305u, Struct_1(false, vec4<i32>(1i, -18715i, 2147483647i, -36317i)), 60818u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1598f, global0[_wgslsmith_index_u32(arg_2.x, 16u)])) * _wgslsmith_f_op_f32(-arg_0)) - -968f), _wgslsmith_f_op_f32(-arg_0), arg_0));
    let var_2 = 15480u;
    var_1 = vec3<f32>(-770f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-197f, var_1.x)) * 1299f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))))));
    let var_3 = global2.b.a;
    return ~var_2;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = firstLeadingBit(73619i);
    var var_1 = -914f;
    let var_2 = ~(-(_wgslsmith_div_vec2_i32(global2.b.b.xy, vec2<i32>(var_0, 1i) | vec2<i32>(39347i, var_0)) ^ (global2.b.b.yz | _wgslsmith_sub_vec2_i32(vec2<i32>(global2.b.b.x, var_0), global2.b.b.zz))));
    let var_3 = Struct_2(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 16u)] * _wgslsmith_f_op_f32(ceil(arg_0.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 16u)])))), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22593u, 16u)]) <= _wgslsmith_f_op_f32(arg_0.x * arg_0.x), global2.b.b | _wgslsmith_add_vec4_i32(vec4<i32>(global2.b.b.x, global2.b.b.x, global2.b.b.x, -50480i), global2.b.b)), u_input.b.wxz, global2.b), Struct_1(!(!global2.b.a), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-12857i, global2.b.b.x, var_2.x), vec3<i32>(-2147483647i, var_2.x, 1i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0, 0i), -21354i), _wgslsmith_sub_i32(0i, 0i), _wgslsmith_clamp_i32(~(-1i), firstTrailingBit(-58176i), -global2.b.b.x))), 1u);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_0.x, 555f))) - arg_0);
    return Struct_2(abs(~_wgslsmith_mult_u32(115792u, 0u)), global2.b, firstLeadingBit(_wgslsmith_mult_u32(1u, global2.c) >> (_wgslsmith_div_u32(4294967295u, u_input.c) % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    global2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 16u)] * _wgslsmith_f_op_f32(1792f - 479f)), global0[_wgslsmith_index_u32(75259u, 16u)], -2547f));
    global1 = array<vec3<i32>, 23>();
    global1 = array<vec3<i32>, 23>();
    let var_0 = vec2<bool>(all(!select(select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a), true), vec2<bool>(true, true), true)), select(any(select(select(vec3<bool>(arg_1.b.a, global2.b.a, arg_1.b.a), vec3<bool>(arg_0.a, arg_1.b.a, true), arg_0.a), select(vec3<bool>(global2.b.a, global2.b.a, false), vec3<bool>(global2.b.a, arg_1.b.a, arg_1.b.a), vec3<bool>(arg_0.a, arg_1.b.a, global2.b.a)), vec3<bool>(arg_0.a, arg_1.b.a, arg_1.b.a))), true, arg_1.b.a));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.b.b.x, countOneBits(_wgslsmith_add_i32(56272i, arg_0.b.x))), -1i, _wgslsmith_div_i32(select(arg_0.b.x, 0i, global2.b.a), arg_0.b.x)), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.b.x, 9549i, arg_0.b.x) & global2.b.b.yzz, _wgslsmith_sub_vec3_i32(arg_0.b.wzy, arg_0.b.xxw))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(false, true, global2.b.a, global2.b.a), vec4<bool>(global2.b.a, all(!vec3<bool>(false, global2.b.a, global2.b.a)), true, false), true);
    let var_1 = global2.b.b.x;
    global1 = array<vec3<i32>, 23>();
    global1 = array<vec3<i32>, 23>();
    var var_2 = _wgslsmith_sub_vec4_i32(firstTrailingBit(func_1(Struct_1(global2.b.a, global2.b.b), Struct_2(u_input.b.x, Struct_1(false, vec4<i32>(0i, global2.b.b.x, global2.b.b.x, 0i)), global2.c), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3397u, 16u)]))) << (~vec4<u32>(countOneBits(4294967295u), max(global2.c, 40302u), ~1u, countOneBits(global2.c)) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(global2.b.b, countOneBits(~global2.b.b)));
    global2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -632f), -1333f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(994f, -1503f, -126f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(62922u, 16u)], global0[_wgslsmith_index_u32(global2.a, 16u)])), select(var_0.xzy, var_0.wzx, var_0.x))))));
    let var_3 = select(select(var_0.xx, vec2<bool>(!(!var_0.x), true), !var_0.wy), !vec2<bool>(false, any(var_0)), !var_0.xx);
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.c, ~u_input.c), 0u, reverseBits(global2.c), vec4<i32>(-23521i, 1307i, 10771i, var_2.x));
}

