struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(95336u, 4294967295u, 1u, 0u);

var<private> global2: array<vec3<f32>, 10>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    global0 = Struct_1(vec3<i32>(_wgslsmith_div_i32(-25979i, i32(-1i) * -1i), -1i, 0i));
    let var_0 = !select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true);
    let var_1 = Struct_1(-(~vec3<i32>(-22562i ^ arg_0, select(u_input.c, 23349i, var_0.x), global0.a.x)));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1267f)))) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(189f + 520f), -781f)) - _wgslsmith_f_op_f32(175f - _wgslsmith_f_op_f32(f32(-1f) * -1234f))), 1f, -996f), select(!select(select(var_0, var_0, vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), var_0, vec2<bool>(false, var_0.x)), var_0.x), select(!(!var_0), vec2<bool>(any(vec2<bool>(true, false)), var_0.x), select(select(var_0, vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x)), !vec2<bool>(false, var_0.x), var_0)), var_0.x));
    var var_3 = var_1;
    return arg_1.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1062f, 1928f, 730f, arg_0)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1322f, arg_1, arg_0, arg_1), vec4<f32>(arg_0, 138f, arg_1, 454f), vec4<bool>(arg_3.x, true, arg_3.x, arg_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-567f, arg_1, -654f, -420f), vec4<f32>(arg_1, 265f, arg_1, 1083f))) - vec4<f32>(372f, arg_0, -1000f, arg_0))))), select(arg_3, vec2<bool>(arg_2, true), false));
    global1 = u_input.e;
    var var_1 = Struct_1(u_input.a);
    var_1 = Struct_1(var_1.a);
    let var_2 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(func_3(-24556i, vec2<i32>(-1i, 22582i)), ~var_1.a.x, _wgslsmith_mod_i32(~var_1.a.x, i32(-1i) * -1820i)), -global0.a));
    return Struct_1(var_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = arg_1;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, 904f, -830f, var_0.a.x), _wgslsmith_f_op_vec4_f32(abs(var_0.a))))), var_0.b);
    var var_2 = var_1;
    var var_3 = Struct_1(arg_2.a);
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(1498f, -232f, var_1.a.x, -319f)), vec4<f32>(-269f, var_1.a.x, var_1.a.x, 1131f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(1547f, -249f, 116f, var_2.a.x))))))), arg_1.b);
    return (var_1.b.x | true) || (all(vec4<bool>(false, false, !arg_1.b.x, all(vec3<bool>(var_0.b.x, var_1.b.x, true)))) && any(vec4<bool>(false, all(vec4<bool>(var_1.b.x, true, var_2.b.x, var_2.b.x)), arg_1.b.x, any(vec4<bool>(true, arg_1.b.x, true, var_1.b.x)))));
}

fn func_1() -> vec4<f32> {
    global2 = array<vec3<f32>, 10>();
    var var_0 = ~vec2<u32>(~7688u, ~(~max(global1.x, u_input.e.x)));
    var var_1 = select(abs(~u_input.b | (u_input.a.zy | global0.a.xx)) | global0.a.xx, global0.a.yx, false);
    var var_2 = all(vec4<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false)), false, func_4(func_2(418f, 979f, false, vec2<bool>(true, false)), Struct_2(vec4<f32>(-843f, -1233f, 260f, -1336f), vec2<bool>(false, true)), Struct_1(vec3<i32>(23933i, 65775i, -41391i))), true)) || !(!select(true, all(vec3<bool>(false, false, true)), true));
    var var_3 = countOneBits(u_input.a);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(233f)) - -547f), 369f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(-732f))) + 591f), -431f, all(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1917f - -1500f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1486f, 601f))))), _wgslsmith_f_op_f32(408f - -394f));
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    global0 = func_2(arg_0.x, -572f, false, vec2<bool>(any(vec2<bool>(false, true)), true));
    let var_0 = !vec2<bool>(!(arg_0.x < arg_0.x), true);
    global1 = vec4<u32>(~_wgslsmith_clamp_u32(global1.x, 4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.e.x, 1u), 1u)), global1.x, ~global1.x << (global1.x % 32u), 70890u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x);
    global1 = firstLeadingBit(select(abs(select(u_input.e, u_input.e, vec4<bool>(false, var_0.x, var_0.x, var_0.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e.x, 1u, 29955u, global1.x), u_input.e), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x) << (max(u_input.e, u_input.e) % vec4<u32>(32u))), vec4<bool>(false, _wgslsmith_f_op_f32(sign(1102f)) < _wgslsmith_f_op_f32(trunc(997f)), true, var_0.x)));
    return func_2(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(round(-722f))), var_0.x, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.e;
    global0 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2602f, -2403f, -318f, -170f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1()))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1967f, 1280f, -170f, -928f)))))));
    global0 = Struct_1(abs(global0.a));
    global1 = u_input.e;
    var var_0 = vec2<i32>(-2147483647i, -43864i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1110f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-410f + 1275f), -113f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f * _wgslsmith_f_op_f32(abs(378f))) - 308f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(615f)) * 1190f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1776f))), -786f);
}

