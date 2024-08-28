struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-546f, -275f, -1010f, 877f, -845f, -871f, -435f, 1000f, -1090f, -1087f, -362f, 1038f, -712f, -1000f, -949f, 117f, 750f, -788f, -1523f, 112f, 636f, 314f, -141f, -1297f, -1000f, -1211f, 324f, -617f, 2051f, -2777f, -396f, -517f);

var<private> global1: array<i32, 9> = array<i32, 9>(22498i, -67636i, -1i, -34205i, 0i, 27781i, -4318i, 48270i, 2147483647i);

var<private> global2: f32;

var<private> global3: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> i32 {
    global3 = 0u;
    global0 = array<f32, 32>();
    let var_0 = Struct_1(select(arg_0.xyx, select(arg_0.zyy, !(!vec3<bool>(arg_0.x, true, false)), !(!arg_0.xwx)), vec3<bool>(arg_0.x, any(arg_0.yw), select(true, all(arg_0), any(arg_0)))));
    return countOneBits(u_input.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = vec2<i32>(func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1202f, -332f) * vec2<f32>(1543f, global0[_wgslsmith_index_u32(u_input.d, 32u)]))))), -1i);
    global1 = array<i32, 9>();
    let var_1 = true && any(vec4<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 32u)]) >= _wgslsmith_f_op_f32(f32(-1f) * -873f), true, false, true));
    var_0 = -arg_0.xz;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 32u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 32u)] - -866f) * _wgslsmith_f_op_f32(max(1644f, global0[_wgslsmith_index_u32(u_input.e, 32u)])))))), global0[_wgslsmith_index_u32(u_input.d, 32u)]);
    return Struct_1(!select(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_1, var_1), vec3<bool>(true, var_1, var_1)), vec3<bool>(true, var_1, true), (global1[_wgslsmith_index_u32(4294967295u, 9u)] & var_0.x) == (i32(-1i) * -24329i)));
}

fn func_1() -> Struct_1 {
    global3 = 0u;
    var var_0 = !select(vec2<bool>(!select(false, false, true), !(global0[_wgslsmith_index_u32(1u, 32u)] >= global0[_wgslsmith_index_u32(u_input.e, 32u)])), vec2<bool>(true, true), true);
    var var_1 = func_2(u_input.a, -max(u_input.a.x << (min(4439u, u_input.d) % 32u), u_input.a.x));
    var var_2 = Struct_1(vec3<bool>(false, any(vec4<bool>(var_0.x | false, any(vec4<bool>(true, false, false, var_1.a.x)), true, false)), true == !(var_1.a.x != true)));
    var_2 = func_2(_wgslsmith_mult_vec3_i32(u_input.c, abs(u_input.c)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c.x, global1[_wgslsmith_index_u32(~13416u, 9u)]), firstLeadingBit(u_input.c.x)));
    return Struct_1(func_2(~(vec3<i32>(-48528i, global1[_wgslsmith_index_u32(53322u, 9u)], -18476i) | vec3<i32>(69226i, u_input.c.x, global1[_wgslsmith_index_u32(u_input.d, 9u)])) | abs(vec3<i32>(u_input.c.x, -5955i, 0i)), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(24685u, u_input.e, u_input.d)), vec3<u32>(4294967295u, u_input.e, u_input.b) | vec3<u32>(u_input.d, u_input.e, u_input.e))), 9u)]).a);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.e, 9u)];
    global0 = array<f32, 32>();
    let var_1 = 156f;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], 444f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-557f, 1249f, global0[_wgslsmith_index_u32(u_input.d, 32u)]), vec3<f32>(-519f, var_1, 1000f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], 477f, var_1) * vec3<f32>(2130f, 441f, var_1)));
    global3 = ~33299u ^ ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.d, u_input.e), vec3<u32>(1u, u_input.b, u_input.e) ^ vec3<u32>(u_input.e, u_input.b, 4294967295u)), vec3<u32>(0u, 5814u, select(1u, 5472u, arg_0.a.x)));
    return func_2(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(~u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(21104u, 9u)]), firstLeadingBit(reverseBits(1i))), -12966i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    global1 = array<i32, 9>();
    global3 = ~16440u & ~u_input.e;
    global0 = array<f32, 32>();
    var var_0 = arg_0;
    var_0 = arg_2;
    return !(!(!(!all(arg_2.a.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<i32>(-(~u_input.a.x | (u_input.a.x << (4294967295u % 32u))), -15001i, 20638i, countOneBits(-(~5316i))));
    global2 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(abs(7870u), 32u)], global0[_wgslsmith_index_u32(u_input.d << (~(~(~4294967295u)) % 32u), 32u)], any(vec2<bool>(select(true, false, all(vec2<bool>(true, true))), (global0[_wgslsmith_index_u32(0u, 32u)] >= -373f) & true))));
    var_0 = vec4<i32>(var_0.x, countOneBits(var_0.x), abs(u_input.c.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-var_0.wxy, var_0.zzy, abs(var_0.wxx)), u_input.a)) << ((vec4<u32>(0u, _wgslsmith_sub_u32(~4294967295u, firstLeadingBit(u_input.d)), 46645u, ~u_input.e) ^ ~(vec4<u32>(7538u, u_input.d, 2215u, 22494u) << (~vec4<u32>(u_input.d, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global0 = array<f32, 32>();
    var var_1 = Struct_1(vec3<bool>(true, !(u_input.b >= ~u_input.e), func_5(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), func_4(func_1(), var_0.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(66582u & u_input.e, firstTrailingBit(1u)), 9u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(abs(var_0.zw), ~_wgslsmith_div_vec2_i32(min(u_input.a.xy, var_0.zw), var_0.wx & var_0.zy)), firstLeadingBit(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.d, 0u, u_input.b), ~vec3<u32>(u_input.d, u_input.b, u_input.b), true), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.d, 25900u), vec3<u32>(u_input.b, 1u, 6163u))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.e, 32u)], global0[_wgslsmith_index_u32(58404u, 32u)]) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1754f, global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], 228f)))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1242f)))), _wgslsmith_f_op_f32(-1526f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 32u)])))), !select(vec4<bool>(var_1.a.x, var_1.a.x, true, false), select(vec4<bool>(true, var_1.a.x, true, true), vec4<bool>(true, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)), !vec4<bool>(var_1.a.x, var_1.a.x, true, true)))), ~(~_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1u, 31482u)), vec3<u32>(u_input.b, u_input.b, 88298u))));
}

