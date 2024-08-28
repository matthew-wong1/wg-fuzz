struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -8544i;

var<private> global1: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(4294967295u, 0u, 0u, 19986u), vec4<u32>(11610u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 0u, 39061u, 75228u), vec4<u32>(0u, 15216u, 47679u, 15460u), vec4<u32>(80502u, 0u, 45198u, 82251u), vec4<u32>(49498u, 0u, 58626u, 4294967295u), vec4<u32>(119004u, 26173u, 1u, 32506u), vec4<u32>(19859u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(4294967295u, 1u, 13600u, 16468u), vec4<u32>(21228u, 1u, 7474u, 14416u));

var<private> global2: vec2<f32> = vec2<f32>(-599f, 177f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    global1 = array<vec4<u32>, 11>();
    global0 = 2147483647i;
    var var_0 = all(vec2<bool>(true, _wgslsmith_clamp_i32(abs(u_input.c.x), -u_input.c.x, u_input.c.x) <= u_input.e));
    let var_1 = Struct_3(vec2<bool>(all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, false))), true));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(693f, global2.x));
    return Struct_2(vec3<bool>(!var_1.a.x, var_1.a.x, var_1.a.x));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1220f), _wgslsmith_f_op_f32(f32(-1f) * -1346f), _wgslsmith_f_op_f32(floor(global2.x)), global2.x))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(var_0.x, global2.x, false)), 850f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2005f, -1135f, 2029f, -237f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-611f, global2.x, var_0.x, -319f) + vec4<f32>(var_0.x, global2.x, -2181f, 639f)), !vec4<bool>(true, false, true, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, 1344f, global2.x, -381f)))), !vec4<bool>(true, arg_0, arg_0 && true, !arg_0))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(412f, -709f)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-704f))), 1422f));
    var var_1 = Struct_2(vec3<bool>(!(true == all(vec4<bool>(false, arg_0, arg_0, false))), u_input.c.x > ~(1i << (u_input.a % 32u)), !arg_0));
    global0 = u_input.c.x;
    var var_2 = -14154i;
    return var_0.wx;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-global2.x);
    let var_1 = func_2(u_input.d, u_input.d);
    global2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -2407f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - global2.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(var_1.a.x)))), !any(var_1.a.zx)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 523f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(614f, -425f) + vec2<f32>(434f, 138f)))), var_1.a.yy))));
    var_0 = _wgslsmith_f_op_f32(1495f * global2.x);
    global1 = array<vec4<u32>, 11>();
    return -16832i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.x, global2.x, 177f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-362f, global2.x, 679f, global2.x), vec4<f32>(global2.x, global2.x, -221f, global2.x), vec4<bool>(false, false, true, false)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)), global2.x, _wgslsmith_f_op_f32(-global2.x), -833f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 113f) - _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(round(802f))), -9481i < (func_1() ^ ~u_input.c.x))));
    let var_2 = _wgslsmith_mod_i32(1i, -abs(u_input.c.x));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1099f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(182f)) + 1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1026f - -296f) + _wgslsmith_f_op_f32(1082f * 951f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-517f)))), var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~(~u_input.a)), vec2<u32>(min(~u_input.d, u_input.a), _wgslsmith_mod_u32(~15511u, 4294967295u))), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, all(vec4<bool>(true, true, true, true))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~reverseBits(_wgslsmith_mod_u32(u_input.a, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(15576u, u_input.b) ^ ~vec2<u32>(var_3.c, 31886u), vec2<u32>(u_input.b, u_input.d)), ~firstTrailingBit(27842u)), -1000f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(var_3.b)), var_3.b)), vec4<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2167f + -168f) * _wgslsmith_f_op_f32(step(780f, var_1)))))));
}

