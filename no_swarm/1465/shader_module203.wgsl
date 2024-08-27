struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-17174i), vec2<i32>(2147483647i, 11079i));

var<private> global1: array<i32, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = select(-1i, global1[_wgslsmith_index_u32(abs(countOneBits(firstTrailingBit(40959u)) ^ 101519u), 8u)], false);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1934f))), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1))))), arg_1) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * -129f), _wgslsmith_f_op_f32(sign(922f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, arg_1)) * arg_1)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f + _wgslsmith_f_op_f32(-arg_1)))));
    var var_3 = arg_3;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1387f);
    return (((_wgslsmith_div_u32(4294967295u, 27763u) ^ _wgslsmith_clamp_u32(11416u, 1u, 0u)) >> (1u % 32u)) >> (~min(_wgslsmith_mod_u32(0u, 48165u), ~29248u) % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)) % 32u);
}

fn func_2() -> vec2<bool> {
    let var_0 = ~select(~vec4<u32>(27811u, 4589u, 54880u, 31800u), vec4<u32>(1u, ~2301u, min(1u, 0u), firstLeadingBit(94434u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), all(vec4<bool>(true, false, true, true)))) ^ vec4<u32>(max(_wgslsmith_sub_u32(11294u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 62159u, 0u), vec3<u32>(0u, 22350u, 70469u))), ~max(4294967295u, 36971u)), 1u, func_3(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1424f, -402f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), Struct_1(_wgslsmith_add_i32(0i, global1[_wgslsmith_index_u32(3940u, 8u)]))), 4294967295u);
    var var_1 = true;
    global1 = array<i32, 8>();
    var_1 = false;
    global1 = array<i32, 8>();
    return !vec2<bool>(true, abs(_wgslsmith_dot_vec2_u32(var_0.xx, var_0.xx)) <= _wgslsmith_clamp_u32(var_0.x & var_0.x, var_0.x, var_0.x));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = Struct_2(Struct_1(~2147483647i), reverseBits(-countOneBits(vec2<i32>(global0.a.a, global0.b.x))));
    var var_0 = 713f;
    let var_1 = Struct_3(!vec2<bool>(false, arg_0 && true), select(!(!vec2<bool>(arg_0, true)), !(!func_2()), func_2()), -(~(global0.b.x & global1[_wgslsmith_index_u32(32117u, 8u)])) <= u_input.a.x, Struct_2(global0.a, _wgslsmith_mod_vec2_i32(u_input.b.yx, u_input.b.yz ^ ~global0.b)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-696f, 520f)) * _wgslsmith_f_op_f32(step(-832f, _wgslsmith_f_op_f32(1184f - 2399f))))) + -263f);
    var_0 = -449f;
    return var_1.d;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> f32 {
    global1 = array<i32, 8>();
    global0 = Struct_2(func_1((24000u > _wgslsmith_clamp_u32(12057u, 43698u, 4294967295u)) && false).a, global0.b);
    let var_0 = true;
    global0 = arg_3;
    var var_1 = ~global0.b;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1902f + -1369f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1486f)))), var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 8>();
    var var_0 = 57021u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(751f, -1216f, 1891f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -132f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1992f, -755f, 380f, 906f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)), func_1(true)))));
    let var_2 = -(i32(-1i) * -_wgslsmith_sub_i32(global0.b.x, 3556i)) <= global1[_wgslsmith_index_u32(4294967295u, 8u)];
    var var_3 = !vec2<bool>(true, select(any(select(vec4<bool>(true, var_2, true, true), vec4<bool>(var_2, true, true, false), vec4<bool>(var_2, true, false, false))), true, !var_2));
    var var_4 = select(abs(reverseBits(~vec2<u32>(94244u, 1u))), vec2<u32>(~(~0u), abs(_wgslsmith_mod_u32(~27209u, ~99408u))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1254f, var_1.x, u_input.a.x, _wgslsmith_add_u32(~var_4.x, var_4.x));
}

