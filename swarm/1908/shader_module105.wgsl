struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec2<f32>, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    global0 = array<Struct_1, 30>();
    let var_0 = Struct_1(!select(vec2<bool>(any(vec3<bool>(false, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, all(vec4<bool>(false, false, false, false)))), ~((u_input.b << (u_input.c % 32u)) | ~17103u) == _wgslsmith_add_u32(firstLeadingBit(13848u), min(82922u, u_input.c) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.d.x), u_input.d.wz)), abs(~(~u_input.d.x << (_wgslsmith_clamp_u32(4294967295u, 70280u, 1u) % 32u))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.x)), -141f)))), arg_0.x), _wgslsmith_f_op_f32(-arg_0.x));
    global0 = array<Struct_1, 30>();
    let var_1 = arg_0.ww;
    global0 = array<Struct_1, 30>();
    return _wgslsmith_mod_vec3_u32(~(abs(u_input.d.xxx) | u_input.d.zyz), u_input.d.xyy);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, any(vec4<bool>(false, false, true, true)), true, true), vec4<bool>(true, true, true, true)));
    let var_1 = u_input.d.wzx;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(u_input.c, 44508u), ~u_input.b, u_input.b), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))) >> (55942u % 32u), 28u)];
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~_wgslsmith_mod_u32(var_1.x, var_1.x)), u_input.d.x), 30u)];
    let var_4 = global0[_wgslsmith_index_u32(var_1.x, 30u)];
    return true;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(13105u, 6608u);
    var var_1 = true;
    global1 = array<vec2<f32>, 28>();
    let var_2 = arg_2;
    global1 = array<vec2<f32>, 28>();
    return Struct_1(select(arg_2.a, !var_2.a, select(!select(vec2<bool>(false, arg_2.a.x), var_2.a, true), select(!vec2<bool>(true, arg_2.a.x), vec2<bool>(true, true), !vec2<bool>(var_2.b, var_2.b)), arg_0)), var_2.b, 13371u, vec2<f32>(_wgslsmith_f_op_f32(-145f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(578f, var_2.e) + 1000f)), _wgslsmith_f_op_f32(-238f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.x, 925f, arg_0)), _wgslsmith_f_op_f32(arg_2.e + arg_2.e)))), 182f);
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(~arg_2.c, arg_2.c);
    let var_1 = func_4(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1f, func_4(false, vec4<f32>(arg_2.e, 1022f, arg_2.d.x, -1440f), arg_2).e)), arg_2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.e)), _wgslsmith_div_f32(arg_0, 723f)), 463f)), func_4(!arg_1.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-527f, arg_0, 252f, 562f), vec4<f32>(-1184f, arg_0, 1093f, -149f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-223f, arg_0, arg_2.d.x, -1821f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(654f, 1816f, arg_0, arg_2.d.x))))))), func_4(!all(arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1000f, arg_2.d.x) - vec4<f32>(-2822f, arg_0, arg_2.d.x, arg_2.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, -1255f, arg_0, arg_0) + vec4<f32>(arg_2.d.x, -1077f, -1055f, 1677f))), func_4(1177f == arg_0, vec4<f32>(arg_0, arg_0, arg_2.e, arg_0), func_4(arg_1.x, vec4<f32>(-1000f, arg_2.d.x, 1126f, -1816f), global0[_wgslsmith_index_u32(u_input.c, 30u)])))));
    var var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -u_input.a, _wgslsmith_mult_vec3_i32(abs(~u_input.a), vec3<i32>(u_input.a.x, u_input.a.x >> (64189u % 32u), min(u_input.a.x, 2147483647i))), ~select(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a), max(vec3<i32>(1i, u_input.a.x, 4010i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), arg_1.yxw));
    let var_3 = var_1;
    let var_4 = 0u;
    return arg_2;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = func_5(arg_0, select(vec4<bool>(true, true, _wgslsmith_f_op_f32(1000f - -1072f) >= _wgslsmith_f_op_f32(-arg_0), !(u_input.a.x < 0i)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), func_4(false && all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, arg_0, -1000f, 1000f))) * vec4<f32>(-1486f, _wgslsmith_f_op_f32(arg_0 * 2463f), -280f, _wgslsmith_f_op_f32(-arg_0))), Struct_1(vec2<bool>(func_2(vec4<i32>(1i, 1840i, 0i, u_input.a.x)), true), any(vec2<bool>(true, true)), 1u, vec2<f32>(arg_0, _wgslsmith_f_op_f32(floor(1471f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0)))))), -1995f > arg_0);
    var var_1 = var_0.b;
    let var_2 = !(!any(select(vec3<bool>(var_0.b, var_0.a.x, var_0.b), !vec3<bool>(var_0.a.x, var_0.b, true), select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.a.x, false, var_0.b), vec3<bool>(true, true, false)))));
    global0 = array<Struct_1, 30>();
    let var_3 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(1289f + var_0.e)));
    return _wgslsmith_f_op_f32(floor(var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(-1449f)), -771f, any(vec3<bool>(false, true, true)))) * _wgslsmith_f_op_f32(trunc(-406f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1276f + -1356f) + _wgslsmith_f_op_f32(-819f * -1474f))))), _wgslsmith_f_op_f32(-618f - 2599f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, -(firstLeadingBit(2147483647i) << (firstLeadingBit(57873u) % 32u)), u_input.a.x, -36263i));
}

