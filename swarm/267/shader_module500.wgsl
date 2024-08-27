struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(u_input.d.yz, select(~u_input.d.xz, u_input.c.yz, !select(vec2<bool>(global0.x, true), vec2<bool>(true, false), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(218f, -1405f, 222f))), global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1215f, 1000f, 212f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2218f, 1287f, -108f), vec3<f32>(567f, 1000f, -2401f), true)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(849f - 2463f), -264f, -512f))));
    global0 = vec2<bool>(global0.x, (true & ((var_0 >= u_input.d.x) && true)) && ((~u_input.d.x >> (2640u % 32u)) > select(u_input.d.x, u_input.d.x, !global0.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(486f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1098f, -275f), _wgslsmith_f_op_f32(var_1.x + 1614f))))));
    var var_2 = Struct_1(all(vec4<bool>(false, global0.x, any(vec2<bool>(global1.a, false)), true)));
    return -444f;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(global1.a);
    global0 = select(!vec2<bool>(all(!vec4<bool>(true, var_0.a, global0.x, var_0.a)), global1.a), vec2<bool>(_wgslsmith_f_op_f32(func_3()) >= _wgslsmith_f_op_f32(f32(-1f) * -624f), global1.a), vec2<bool>(global0.x || select(global1.a, var_0.a | var_0.a, any(vec3<bool>(var_0.a, false, false))), !global1.a));
    let var_1 = vec3<bool>(true, max(~u_input.d.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), u_input.c.wxw)) != ~(u_input.c.x >> (88146u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2199f - 109f))));
    var_0 = Struct_1(true);
    var_0 = Struct_1(true);
    return var_1.yz;
}

fn func_1() -> u32 {
    global0 = !func_2();
    var var_0 = Struct_1(false);
    let var_1 = _wgslsmith_mod_vec2_u32(~(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.d.yx))), u_input.d.xx);
    let var_2 = -2147483647i;
    let var_3 = Struct_1(var_0.a);
    return _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(~(~(~u_input.c)), vec4<u32>(u_input.c.x, var_1.x ^ 0u, 4294967295u, ~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(1u, func_1() << (~4294967295u % 32u));
    var var_1 = u_input.b.ww;
    global1 = Struct_1(false);
    let var_2 = Struct_1(var_0.x <= _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(46377u, u_input.c.x), vec2<u32>(7646u, 13293u), true), ~vec2<u32>(4294967295u, u_input.c.x), ~vec2<u32>(4294967295u, 1u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(1100u, 48296u), vec2<u32>(var_0.x, 92912u))));
    var var_3 = reverseBits(-_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(25990i, var_1.x, 18615i), u_input.a.xyy), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(160f)) - _wgslsmith_f_op_f32(abs(-281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-232f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(738f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1235f - -304f)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1550f, -121f, true)))), 1336f)));
}

