struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(floor(-188f));
    let var_0 = _wgslsmith_f_op_f32(ceil(1195f));
    global0 = var_0;
    global0 = _wgslsmith_f_op_f32(-757f * var_0);
    return !vec3<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), true | any(vec4<bool>(true, true, true, true)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = Struct_3(-221f);
    let var_2 = vec2<u32>(~4755u, 1u);
    let var_3 = Struct_3(var_1.a);
    global0 = _wgslsmith_f_op_f32(max(arg_3.c.x, arg_3.c.x));
    return 89389u >> (max(u_input.b.x, 18u) % 32u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: u32) -> vec2<bool> {
    global0 = -381f;
    let var_0 = select(vec2<bool>(false, select(any(vec2<bool>(arg_1.e.b.x, true)) | true, u_input.c.x > arg_0.a, true)), select(select(arg_1.e.a, !(!arg_1.d.a), all(arg_1.d.b) || (arg_1.c < 11201u)), vec2<bool>(_wgslsmith_f_op_f32(-arg_1.e.c.x) == _wgslsmith_f_op_f32(f32(-1f) * -574f), all(vec4<bool>(true, arg_1.d.b.x, arg_1.e.a.x, arg_1.e.a.x))), vec2<bool>(any(vec2<bool>(false, arg_1.e.a.x)) & func_1(Struct_3(-519f)).x, arg_1.d.b.x | (arg_1.b.x > 20996u))), !func_1(arg_2.b).xx);
    global0 = arg_0.b.a;
    global0 = arg_2.b.a;
    var var_1 = ~vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(arg_1.b.x, 1u), ~70500u & arg_3, ~(~u_input.b.x)), arg_3, ~(~_wgslsmith_sub_u32(arg_1.c, 8805u)));
    return select(vec2<bool>(false, false), var_0, vec2<bool>(!(~var_1.x < ~66511u), false));
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<f32>) -> f32 {
    global0 = arg_2.x;
    var var_0 = 0i;
    let var_1 = u_input.c.zw;
    var var_2 = Struct_1(vec2<bool>(all(vec4<bool>(!arg_0.x, arg_0.x, true, true)), true & arg_0.x), vec3<bool>(arg_0.x, true, any(arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1782f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(361f, -108f))));
    var_2 = Struct_1(!(!func_1(Struct_3(arg_2.x)).yy), select(select(vec3<bool>(select(var_2.b.x, var_2.b.x, false), any(vec4<bool>(var_2.b.x, false, true, false)), true), !var_2.b, func_1(Struct_3(-974f))), func_1(Struct_3(-1590f)), any(var_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-439f, arg_2.x, 1813f, _wgslsmith_f_op_f32(exp2(var_2.c.x)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))) + _wgslsmith_f_op_f32(exp2(arg_1)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32) -> vec3<bool> {
    global0 = -872f;
    global0 = _wgslsmith_div_f32(1556f, _wgslsmith_f_op_f32(func_5(func_4(Struct_4(-u_input.a, Struct_3(765f)), Struct_2(-arg_2, vec3<u32>(5227u, u_input.b.x, arg_1), 1u, Struct_1(vec2<bool>(false, true), vec3<bool>(true, arg_0, true), vec4<f32>(1004f, 464f, -587f, 1000f)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, arg_0), vec4<f32>(-468f, -774f, 1406f, 1104f))), Struct_4(74019i >> (arg_1 % 32u), Struct_3(-678f)), ~0u | func_3(vec4<bool>(true, arg_0, true, arg_0), 1u, arg_2, Struct_1(vec2<bool>(false, true), vec3<bool>(arg_0, arg_0, false), vec4<f32>(149f, 2264f, -148f, 3331f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1147f + 1f)), vec4<f32>(_wgslsmith_f_op_f32(-1756f * _wgslsmith_f_op_f32(-393f - -1662f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(300f)) + _wgslsmith_f_op_f32(f32(-1f) * -1694f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-541f, 542f) - -1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-930f, 299f, -549f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1353f, -403f, 343f)))), vec3<f32>(1f, 1f, 1f)))));
    let var_0 = !select(vec2<bool>(any(vec2<bool>(true, true)), true), func_1(Struct_3(1000f)).xx, !func_1(Struct_3(-225f)).yx);
    let var_1 = u_input.c;
    global0 = 496f;
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 28622u;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1271f));
    var var_1 = Struct_1(vec2<bool>(true, true), select(vec3<bool>(_wgslsmith_div_i32(u_input.a, u_input.a) >= -17944i, ~(-35091i) < min(u_input.a, u_input.c.x), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), func_1(Struct_3(-858f)), true), func_2(true, 4294967295u, i32(-1i) * -1i)), any(select(vec3<bool>(true, true, true), func_1(Struct_3(1603f)), true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f * 365f) - -1178f) * _wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -1462f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(188f, 1558f, 831f, -1859f), vec4<f32>(-1000f, 916f, 1122f, -341f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-452f, -963f, 866f) - vec3<f32>(-461f, 1503f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) - _wgslsmith_f_op_f32(abs(-810f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f + 1000f) * _wgslsmith_f_op_f32(1416f - 615f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2462f, _wgslsmith_f_op_f32(-962f + -937f)))));
    let var_2 = !(!select(var_1.a.x, u_input.c.x >= ~u_input.c.x, _wgslsmith_f_op_f32(ceil(456f)) > var_1.c.x));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.c.zyz * vec3<f32>(461f, var_3.a, 882f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(849f, var_3.a, 137f)), _wgslsmith_f_op_vec3_f32(select(var_1.c.xyx, vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x), var_2)), var_2))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_1.c.wzx + _wgslsmith_f_op_vec3_f32(vec3<f32>(180f, 583f, -114f) + vec3<f32>(1204f, var_1.c.x, var_1.c.x))), var_1.c.yzz))), _wgslsmith_f_op_f32(abs(var_1.c.x)));
}

