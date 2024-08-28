struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: array<vec2<i32>, 13>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-arg_2, u_input.a, _wgslsmith_add_i32(i32(-1i) * -48332i, i32(-1i) * -1i)), -4189i << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c.x, 4294967295u, 0u, 0u), vec4<u32>(21085u, u_input.c.x, arg_1.x, 47942u)), _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(0u, 15u)], vec4<u32>(38105u, 23147u, arg_1.x, 44918u))) % 32u)), ~reverseBits(_wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(~35389u, 13u)], -vec2<i32>(2147483647i, u_input.a))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(arg_0 * -709f), arg_0))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-335f, arg_0, arg_0, 1000f), vec4<f32>(-119f, -352f, 452f, -666f))))))));
    var var_2 = ~(u_input.c.yy ^ u_input.c.ww) >> (arg_1.zy % vec2<u32>(32u));
    global1 = array<vec2<i32>, 13>();
    var var_3 = u_input.a;
    return arg_3.yy;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> i32 {
    let var_0 = vec4<bool>(all(vec2<bool>(false, arg_1.x)), all(select(vec4<bool>(true, false, !arg_1.x, false), vec4<bool>(true, arg_1.x, any(vec2<bool>(arg_1.x, true)), u_input.b.x < 0i), select(select(vec4<bool>(false, false, arg_1.x, false), vec4<bool>(false, false, true, arg_1.x), vec4<bool>(true, false, false, arg_1.x)), !vec4<bool>(true, false, arg_1.x, arg_1.x), select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, false, false, false))))), !arg_1.x, all(arg_1));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = ~32401u;
    let var_3 = -41421i;
    global0 = array<vec4<u32>, 15>();
    return var_3;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_3(abs(vec3<i32>(select(-29606i, -51165i, false) >> (abs(8861u) % 32u), arg_1, func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, 701f, arg_2.x, arg_2.x), arg_2)), func_3(790f, vec3<u32>(31484u, u_input.c.x, u_input.c.x), arg_1, vec3<bool>(true, true, true)), ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    global1 = array<vec2<i32>, 13>();
    var var_1 = 349f;
    let var_2 = vec3<i32>(-1i) * -(~abs(-var_0.a));
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(1u), 16588u, ~firstTrailingBit(60689u)), vec3<u32>(abs(~8953u), u_input.c.x, ~(~1u))), min(abs(u_input.c.yxw & u_input.c.wxz), vec3<u32>(u_input.c.x, countOneBits(select(64196u, u_input.c.x, false)), 1u)));
    return vec4<bool>(!(!func_3(1000f, vec3<u32>(u_input.c.x, 8068u, 17731u), _wgslsmith_sub_i32(u_input.b.x, var_0.a.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))).x), false, !all(vec2<bool>(true, true)), !(!any(vec3<bool>(true, true, true)) & true));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(103f, _wgslsmith_f_op_f32(1378f + _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = any(func_2(u_input.b.wx, u_input.b.x, arg_0));
    var var_2 = Struct_1(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, 187f, 1233f, arg_0.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, arg_0.x, -1968f, arg_0.x)))))), func_3(var_0, ~(~vec3<u32>(arg_2.x, arg_2.x, 4294967295u) | vec3<u32>(1u, arg_2.x, 11711u)), -select(~5012i, i32(-1i) * -1i, !var_1), !(!(!vec3<bool>(false, true, var_1)))).x);
    return 1115f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(-1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(105f, _wgslsmith_f_op_f32(f32(-1f) * -865f), _wgslsmith_f_op_f32(292f + 504f), _wgslsmith_f_op_f32(ceil(-823f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2116f, -295f, -199f, -396f) * vec4<f32>(707f, -106f, 1587f, 162f)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1455f, -1189f, 1023f, 304f)), 2147483647i, u_input.c.yzx << (vec3<u32>(4294967295u, 57073u, u_input.c.x) % vec3<u32>(32u)))) != 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1314f + -666f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -266f), -448f, (u_input.a != u_input.a) | true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -836f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-182f - -1760f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1251f), 809f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(-1453f, 577f, 718f, 1596f), u_input.a, vec3<u32>(72787u, u_input.c.x, u_input.c.x))), 572f), -1429f), true));
    var var_1 = min(u_input.b, ~(~firstLeadingBit(vec4<i32>(u_input.b.x, 35356i, u_input.a, 40117i))));
    var var_2 = !select(any(select(!vec2<bool>(true, var_0.d.c), vec2<bool>(false, true), select(vec2<bool>(var_0.a.c, var_0.a.c), vec2<bool>(true, var_0.d.c), false))), all(select(select(vec3<bool>(var_0.a.c, true, var_0.a.c), vec3<bool>(var_0.a.c, false, var_0.d.c), var_0.d.c), !vec3<bool>(var_0.d.c, var_0.d.c, true), !vec3<bool>(true, var_0.a.c, var_0.a.c))), true);
    var_2 = var_0.a.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-608f, 922f, var_0.c) * vec3<f32>(-608f, var_0.a.b.x, var_0.b))) + _wgslsmith_f_op_vec3_f32(var_0.d.b.yyw + var_0.a.b.yzw)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2157f - -1000f), _wgslsmith_f_op_f32(abs(var_0.a.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(919f * var_0.a.a), _wgslsmith_f_op_f32(-429f - 1050f)), -790f)));
    let var_4 = var_1.x;
    let var_5 = true;
    global0 = array<vec4<u32>, 15>();
    let var_6 = Struct_1(-1011f, vec4<f32>(_wgslsmith_f_op_f32(var_0.d.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_3.x)))), var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(231f, -827f)))), -351f), select(true, select(true, !var_5, _wgslsmith_f_op_f32(f32(-1f) * -274f) != _wgslsmith_f_op_f32(-var_0.b)), var_5));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1485f, -123f), min(-max(-vec4<i32>(var_1.x, var_1.x, 6126i, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(-28950i, -48508i, 28440i, u_input.b.x), u_input.b)), vec4<i32>(4968i, ~(~var_1.x), -1i, var_1.x)));
}

