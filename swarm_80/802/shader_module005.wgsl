struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
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

var<private> global0: array<u32, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> i32 {
    global0 = array<u32, 26>();
    return -2147483647i;
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = vec2<bool>(all(select(vec3<bool>(all(vec3<bool>(true, false, true)), true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)))), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, false)))) | (true == !(0u != u_input.b)));
    global0 = array<u32, 26>();
    let var_1 = -32020i;
    global0 = array<u32, 26>();
    let var_2 = vec2<f32>(1791f, 759f);
    return any(vec4<bool>(var_0.x, any(!select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), !var_0.x, any(vec3<bool>(true, false, false))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = Struct_1(vec3<f32>(-644f, 1242f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1001f + _wgslsmith_f_op_f32(f32(-1f) * -664f)), -303f))), !(!(!arg_2 & (arg_2 & arg_2))), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.b, 19877u), 26u)], 26u)], arg_1 & ((0u ^ global0[_wgslsmith_index_u32(46572u, 26u)]) >> (1u % 32u))));
    var var_1 = abs(~min(u_input.d, _wgslsmith_mod_i32(~u_input.c, _wgslsmith_div_i32(arg_0, arg_0))));
    var_1 = i32(-1i) * -1i;
    var_1 = -(-_wgslsmith_div_i32(~arg_0, u_input.c) ^ ~(-29897i));
    var var_2 = var_0;
    return 18331i << (_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(4294967295u), arg_1, var_2.c.x, 1u), ~abs(firstLeadingBit(vec4<u32>(arg_1, 51284u, 31958u, 10620u)))) % 32u);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c, u_input.c, func_2(max(vec2<i32>(28066i, 1i) & vec2<i32>(10560i, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, 1i))), Struct_1(vec3<f32>(718f, -1149f, 1398f), arg_0.x | false, select(vec2<u32>(0u, 4294967295u), vec2<u32>(23384u, u_input.b), vec2<bool>(false, arg_0.x))), _wgslsmith_f_op_f32(min(-586f, _wgslsmith_f_op_f32(f32(-1f) * -681f))), (u_input.c >> (global0[_wgslsmith_index_u32(35545u, 26u)] % 32u)) & 2147483647i), ~u_input.a), vec4<i32>(abs(u_input.a) | abs(u_input.d), u_input.a, ~func_4(u_input.d, 0u, func_3(0u, 4535u)), max(~_wgslsmith_dot_vec4_i32(vec4<i32>(-9315i, 2147483647i, -15818i, -35579i), vec4<i32>(14907i, u_input.c, 0i, -2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.c), vec3<i32>(u_input.c, 1i, 2147483647i)), vec3<i32>(27138i, 1i, u_input.d) ^ vec3<i32>(-23426i, 20929i, u_input.d)))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1916f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(214f * -1490f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(569f, -1000f, -507f), vec3<f32>(745f, -846f, -989f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, -1160f, -1070f))))), !arg_0.x, max(vec2<u32>(abs(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 18467u), 26u)]), 4294967295u), _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(u_input.b, 2977u)), ~vec2<u32>(4294967295u, 123307u), ~(vec2<u32>(4294967295u, 1u) ^ vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 26u)])))));
    let var_2 = arg_0.xx;
    var var_3 = func_3(u_input.b, u_input.b);
    let var_4 = countOneBits((firstLeadingBit(1u) << (var_1.c.x % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(75845u, var_1.c.x, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(var_1.c.x, 26u)], 11639u, 1u)) % 32u)) >> (21750u % 32u);
    return _wgslsmith_f_op_f32(ceil(-1852f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec3<i32>(_wgslsmith_div_i32(-2147483647i, 1i), -1i, u_input.a));
    let var_1 = abs(~vec3<i32>(-u_input.d, _wgslsmith_mult_i32(u_input.d << (4294967295u % 32u), i32(-1i) * -1i), u_input.d));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) + _wgslsmith_f_op_f32(347f - -2120f)), _wgslsmith_f_op_f32(max(-191f, -877f)))), _wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, u_input.b != u_input.b, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1379f - _wgslsmith_f_op_f32(trunc(205f)))))));
    var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * 530f), var_2.x), var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x + var_2.x))))), -733f, _wgslsmith_f_op_f32(max(-1416f, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1420f, -1432f, 1783f) + vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-723f, var_2.x, var_2.x, var_2.x), vec4<f32>(1117f, var_2.x, var_2.x, var_2.x)))), vec4<f32>(-438f, -467f, -2168f, _wgslsmith_f_op_f32(var_2.x + -331f))) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), 362f, _wgslsmith_f_op_f32(-400f - var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(582f - var_2.x), _wgslsmith_f_op_f32(-var_2.x))))));
    var var_3 = vec3<bool>(true, true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<bool>(true, false), any(vec2<bool>(true, true)))));
    var var_4 = vec3<bool>(!any(!(!vec4<bool>(var_3.x, true, false, var_3.x))), !all(!vec2<bool>(true, var_3.x)), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u));
}

