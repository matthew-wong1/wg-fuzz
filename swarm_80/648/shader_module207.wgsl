struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    var var_0 = -22243i;
    let var_1 = arg_0;
    return 5724i;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(1i, func_3(arg_1));
    var var_1 = select(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), !vec3<bool>(true, false, select(true, true, false) | (var_0 <= 12142i)), false);
    var_1 = select(vec3<bool>(any(vec2<bool>(!var_1.x, select(true, false, false))), false, true), vec3<bool>(true, !(!any(var_1.xz)), true), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-509f, -781f, arg_0), vec3<f32>(arg_0, arg_1.a.x, arg_1.a.x), false)) * arg_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1651f + arg_1.a.x), arg_0, _wgslsmith_f_op_f32(min(arg_0, arg_1.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1380f, -549f, 958f))) + arg_1.a)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(910f)))))), arg_1.a.x, _wgslsmith_f_op_f32(trunc(-565f)))));
    var var_3 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 * vec3<f32>(arg_0, _wgslsmith_f_op_f32(trunc(var_3.a.x)), _wgslsmith_f_op_f32(floor(729f))))), arg_1.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = vec2<f32>(arg_2.a.x, -1208f);
    global0 = array<u32, 13>();
    var var_1 = select(vec3<i32>(countOneBits(-1i), 1i, _wgslsmith_div_i32(-1766i, _wgslsmith_sub_i32(abs(0i), 1i))), select(vec3<i32>(-31048i, 1i, -1i), reverseBits(~vec3<i32>(1i, 1i, 1i)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), vec3<bool>(all(vec3<bool>(false, true, false)), select(true, false, false), true), any(vec2<bool>(true, true)))), select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), false)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true))));
    var var_2 = reverseBits(abs(58720u));
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(abs(max(-1i, i32(-1i) * -21044i)), var_1.x, var_1.x), -(vec3<i32>(var_1.x, abs(-2147483647i), _wgslsmith_add_i32(var_1.x, -21971i)) & countOneBits(-vec3<i32>(var_1.x, var_1.x, var_1.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1742f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1456f, arg_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1208f)))), var_0.x);
}

fn func_1(arg_0: f32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_4(1020u, Struct_1(vec3<f32>(1505f, -275f, arg_0), u_input.c), func_2(421f, Struct_1(vec3<f32>(-1000f, arg_0, arg_0), 1u)), func_2(-731f, Struct_1(vec3<f32>(-1241f, arg_0, arg_0), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24297u, 13u)], 13u)], 13u)])))), arg_0, arg_0), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1485f, _wgslsmith_f_op_f32(f32(-1f) * -592f), -2234f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, 260f, arg_0))))), (4294967295u << (u_input.b.x % 32u)) != _wgslsmith_sub_u32(54188u, global0[_wgslsmith_index_u32(0u, 13u)]))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true))) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(-1f), 497f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(vec4<bool>(false, true, !any(vec2<bool>(true, true)), all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), true);
    var_0 = select(!vec4<bool>((u_input.c | global0[_wgslsmith_index_u32(0u, 13u)]) > 1u, all(vec4<bool>(false, false, var_0.x, var_0.x)), var_0.x || true, true), !(!vec4<bool>(true, any(vec4<bool>(true, var_0.x, false, false)), true, var_0.x)), false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_2(_wgslsmith_div_f32(2322f, arg_0.a.x), func_2(arg_0.a.x, Struct_1(vec3<f32>(arg_0.a.x, arg_1.a.x, 1468f), arg_0.b))).a.x)) - -1441f));
    var_0 = select(!vec4<bool>(true & var_0.x, !var_0.x, select(var_0.x, !var_0.x, true), true), vec4<bool>(true, false || all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), false, var_0.x), !vec4<bool>(all(vec4<bool>(var_0.x, true, false, var_0.x)), true, true, all(!vec4<bool>(var_0.x, false, false, true))));
    var var_2 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(trunc(-1000f)))), vec3<f32>(_wgslsmith_f_op_f32(max(313f, -1063f)), 1f, 1027f)), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-396f + 833f))), Struct_1(func_2(688f, Struct_1(vec3<f32>(-792f, 270f, 2215f), 0u)).a, ~u_input.c)).b), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1183f, -394f, -144f), vec3<f32>(1747f, -246f, -728f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(476f, 2023f, -809f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1418f, 651f, -325f) - vec3<f32>(900f, -634f, 413f))))), 1u));
    var var_1 = _wgslsmith_clamp_i32(-1i, ~(-2147483647i), _wgslsmith_mult_i32(~(-50161i), firstLeadingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -36681i)))));
    global0 = array<u32, 13>();
    var_0 = func_2(-777f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f))), func_5(func_5(func_2(var_0.a.x, Struct_1(var_0.a, 43097u)), func_2(var_0.a.x, Struct_1(var_0.a, u_input.c))), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(var_0.a.x, -575f, -1280f)), var_0.b ^ var_0.b))));
    global0 = array<u32, 13>();
    var_1 = 1i;
    global0 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-9784i, -13316i, 0i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 0u, 15515u), vec3<u32>(1u, 57225u, 1u)) % vec3<u32>(32u))), -vec3<i32>(1i, 1i, 1i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 1291f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1422f) * _wgslsmith_f_op_f32(round(var_0.a.x)))), var_0.a.x), vec2<i32>(-1i) * -min(~vec2<i32>(1i, -1i), select(vec2<i32>(-22370i, 1i), vec2<i32>(-2147483647i, 2147483647i), vec2<bool>(true, true))));
}

