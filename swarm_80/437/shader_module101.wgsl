struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2157f;

var<private> global1: vec4<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global0 = _wgslsmith_f_op_f32(trunc(-991f));
    global1 = vec4<bool>(global1.x, all(!vec4<bool>(true, true & global1.x, all(vec2<bool>(global1.x, global1.x)), false)), all(select(select(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, global1.x, true, global1.x), false), vec4<bool>(true, true, true, global1.x), false), !select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, true, true, false), vec4<bool>(false, true, global1.x, true)), true)), true);
    var var_0 = select(!global1.zwy, select(!vec3<bool>(false, true, arg_0.x > u_input.b), vec3<bool>(u_input.e.x <= _wgslsmith_add_u32(66361u, 1u), true, select(true, true, global1.x) | all(vec4<bool>(global1.x, global1.x, true, false))), false), true);
    let var_1 = any(!select(global1.zxw, !(!global1.wyz), vec3<bool>(u_input.b <= arg_0.x, true, !global1.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, _wgslsmith_f_op_f32(sign(132f)), 306f)));
    return true;
}

fn func_2(arg_0: i32) -> f32 {
    global1 = vec4<bool>(false, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-329f)), _wgslsmith_f_op_f32(f32(-1f) * -1097f))) == _wgslsmith_f_op_f32(-218f * -213f), global1.x);
    global0 = -1000f;
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(458f + 1000f)), -556f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(413f, -580f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, 1234f)))))));
    global1 = !(!select(select(vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), vec4<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x | global1.x, func_3(vec3<i32>(7571i, 55273i, u_input.c.x)), all(global1.xzy)), select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, global1.x, false, global1.x))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-732f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-480f, var_1.x)))), var_1.x)), -249f));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    global1 = !(!select(vec4<bool>(true, global1.x || global1.x, all(vec3<bool>(global1.x, global1.x, true)), false), select(select(vec4<bool>(global1.x, global1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, true, false), true), !vec4<bool>(true, true, false, arg_1.x), vec4<bool>(true, true, true, true)), vec4<bool>(arg_1.x, true, !global1.x, all(global1.yyy))));
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_2(~(-34092i))), _wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1252f)), -821f, arg_1.x & false)))));
    global1 = select(!select(select(!vec4<bool>(false, arg_1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(false, arg_1.x, true, true)), vec4<bool>(arg_1.x | true, u_input.e.x == arg_0.x, all(global1.xx), global1.x), select(true, arg_1.x || true, !global1.x)), !select(select(!vec4<bool>(arg_1.x, global1.x, true, arg_1.x), vec4<bool>(arg_1.x, global1.x, false, false), vec4<bool>(arg_1.x, global1.x, false, global1.x)), !select(vec4<bool>(arg_1.x, global1.x, true, false), vec4<bool>(arg_1.x, true, arg_1.x, true), true), !select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(arg_1.x, global1.x, true, arg_1.x))), arg_1.x);
    var_0 = Struct_2(var_0.a);
    global0 = -1197f;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1364f + _wgslsmith_f_op_f32(f32(-1f) * -1312f)));
    global0 = -566f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(911f))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1367f, -1000f, 1967f))), vec3<f32>(686f, 144f, -773f)))));
    let var_1 = vec2<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 14895u, u_input.a), vec3<u32>(u_input.e.x, 29405u, u_input.a), false) | u_input.e, vec3<u32>(func_1(vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.a), vec3<bool>(global1.x, global1.x, global1.x), u_input.c.x), _wgslsmith_clamp_u32(4294967295u, 26651u, 1u), u_input.a)));
    let var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 7545u), vec3<u32>(22768u, 33104u, u_input.e.x))), 4294967295u) >> ((u_input.e.x & 25562u) % 32u), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.a.x, 1092f))), 1124f, -1789f, _wgslsmith_f_op_f32(456f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.a.x)) + _wgslsmith_f_op_f32(floor(-637f))))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(59995i, 17533i)), select(u_input.c.zx, u_input.c.xz, vec2<bool>(global1.x, global1.x))), firstTrailingBit(-u_input.d.zy)), abs(-2147483647i), -u_input.c.x >> (3906u % 32u), firstLeadingBit(-_wgslsmith_add_i32(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(sign(860f)));
}

