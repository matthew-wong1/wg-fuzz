struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false));

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_1(413f), Struct_2(Struct_1(609f), 0i), Struct_2(Struct_1(-411f), 43707i)), Struct_3(Struct_1(1024f), Struct_2(Struct_1(-255f), 1i), Struct_2(Struct_1(1028f), 0i)), Struct_3(Struct_1(945f), Struct_2(Struct_1(-1000f), -35213i), Struct_2(Struct_1(-1000f), -11046i)), Struct_3(Struct_1(586f), Struct_2(Struct_1(-764f), 0i), Struct_2(Struct_1(-845f), 0i)), Struct_3(Struct_1(1000f), Struct_2(Struct_1(-341f), 12238i), Struct_2(Struct_1(167f), -32005i)), Struct_3(Struct_1(-1061f), Struct_2(Struct_1(1000f), 1i), Struct_2(Struct_1(550f), -8137i)), Struct_3(Struct_1(127f), Struct_2(Struct_1(280f), i32(-2147483648)), Struct_2(Struct_1(2337f), 2147483647i)), Struct_3(Struct_1(363f), Struct_2(Struct_1(-1109f), 16832i), Struct_2(Struct_1(1856f), 65260i)), Struct_3(Struct_1(1362f), Struct_2(Struct_1(1034f), 2147483647i), Struct_2(Struct_1(1225f), -1i)), Struct_3(Struct_1(770f), Struct_2(Struct_1(1122f), 0i), Struct_2(Struct_1(455f), -290i)), Struct_3(Struct_1(-1012f), Struct_2(Struct_1(-1511f), 46232i), Struct_2(Struct_1(693f), 47461i)), Struct_3(Struct_1(651f), Struct_2(Struct_1(-308f), 1i), Struct_2(Struct_1(-239f), 2147483647i)), Struct_3(Struct_1(841f), Struct_2(Struct_1(426f), -49515i), Struct_2(Struct_1(330f), 61183i)), Struct_3(Struct_1(465f), Struct_2(Struct_1(488f), 16609i), Struct_2(Struct_1(456f), -8803i)), Struct_3(Struct_1(-1652f), Struct_2(Struct_1(-1810f), 2147483647i), Struct_2(Struct_1(-1052f), 2147483647i)), Struct_3(Struct_1(1403f), Struct_2(Struct_1(-2752f), -31199i), Struct_2(Struct_1(-401f), -20739i)), Struct_3(Struct_1(-642f), Struct_2(Struct_1(-633f), 0i), Struct_2(Struct_1(1955f), -1418i)), Struct_3(Struct_1(-173f), Struct_2(Struct_1(244f), 56428i), Struct_2(Struct_1(-1127f), -2571i)), Struct_3(Struct_1(-1073f), Struct_2(Struct_1(833f), -15555i), Struct_2(Struct_1(1405f), 2147483647i)), Struct_3(Struct_1(-2504f), Struct_2(Struct_1(1340f), -1i), Struct_2(Struct_1(-466f), -9678i)), Struct_3(Struct_1(-917f), Struct_2(Struct_1(1000f), -22706i), Struct_2(Struct_1(280f), 0i)), Struct_3(Struct_1(-951f), Struct_2(Struct_1(-781f), 2147483647i), Struct_2(Struct_1(-625f), 38545i)), Struct_3(Struct_1(1002f), Struct_2(Struct_1(769f), -28912i), Struct_2(Struct_1(964f), i32(-2147483648))), Struct_3(Struct_1(255f), Struct_2(Struct_1(-487f), -6975i), Struct_2(Struct_1(520f), -33550i)), Struct_3(Struct_1(-1000f), Struct_2(Struct_1(-833f), 1i), Struct_2(Struct_1(309f), 28919i)), Struct_3(Struct_1(-1000f), Struct_2(Struct_1(-639f), 21629i), Struct_2(Struct_1(-889f), 1i)), Struct_3(Struct_1(1281f), Struct_2(Struct_1(309f), 2147483647i), Struct_2(Struct_1(-795f), 0i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<vec4<bool>, 28>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1332f)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-328f)))), u_input.a);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, firstTrailingBit(4294967295u)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(39473u, 57709u), u_input.c.zy))), 27u)];
    let var_3 = -reverseBits(_wgslsmith_clamp_i32(6594i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.b, var_2.b.b), 2147483647i, 0i), max(_wgslsmith_add_i32(-1i, u_input.a), -14656i)));
    return var_1.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = 18044u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 323f)))))));
    var var_2 = func_2(arg_1);
    var var_3 = func_2(arg_1);
    let var_4 = arg_2.x;
    return !(!global0[_wgslsmith_index_u32(arg_0.x, 28u)]);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec2<i32> {
    global0 = array<vec4<bool>, 28>();
    var var_0 = _wgslsmith_sub_u32(u_input.c.x, ~0u);
    var var_1 = all(!(!vec4<bool>(false, arg_0.x | true, arg_0.x, select(arg_0.x, arg_0.x, arg_0.x))));
    var var_2 = u_input.c.x;
    var_2 = u_input.c.x;
    return vec2<i32>(arg_1.x, (arg_1.x << (29918u % 32u)) ^ u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_mult_vec2_i32(~vec2<i32>(~(u_input.b | 4746i), (u_input.a ^ 1i) >> (~var_0 % 32u)), vec2<i32>(u_input.b, u_input.b));
    global0 = array<vec4<bool>, 28>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1390f, 215f, -772f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1211f, _wgslsmith_f_op_f32(-1430f * 1385f)))), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-931f - 208f)))))));
    var var_3 = 34143i;
    let var_4 = true && (_wgslsmith_mod_i32(countOneBits(-29645i), u_input.a) >= 39510i);
    let var_5 = min(_wgslsmith_add_vec2_i32(var_1, func_3(func_1(vec2<u32>(0u, 1u), -884f, global0[_wgslsmith_index_u32(var_0, 28u)]), vec3<i32>(var_1.x, var_1.x, 1i)) ^ -(~var_1)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x | 1i, 6637u, ~firstTrailingBit(vec3<i32>(var_1.x, -1i, 74355i)) & vec3<i32>(var_5.x, ~(~2147483647i), ~(~var_5.x)), -firstTrailingBit(i32(-1i) * -var_5.x));
}

