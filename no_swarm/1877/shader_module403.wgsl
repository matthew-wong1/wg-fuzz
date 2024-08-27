struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), -687f, 1128f, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec4<u32>(52811u, 30584u, 36772u, 28831u)), min(_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a))) >> (abs(~4294967295u ^ (1u >> (u_input.a % 32u))) % 32u), select(48363u, 66162u, true), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(1068f * _wgslsmith_f_op_f32(sign(-627f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(arg_0.zz)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_0.xx, vec2<f32>(545f, arg_1.c)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-438f, arg_0.x), arg_0.xx, vec2<bool>(false, global1.a.x))), global1.a.yx)))))));
    var_1 = global1.b;
    let var_3 = any(arg_1.a);
    return Struct_1(global1.a, 663f, _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)))), true);
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = arg_0.d || true;
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-294f, _wgslsmith_f_op_f32(floor(-1357f)), _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, -522f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -1781f, -385f) - vec3<f32>(-1000f, 832f, global1.b))), vec3<f32>(-204f, global1.c, -1995f))));
    var var_1 = func_2(var_0, Struct_1(select(arg_0.a, vec4<bool>(any(global1.a.zy), global1.c < var_0.x, global1.a.x, true), arg_0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(253f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-326f)))), true), select(arg_0.a.xyy, global1.a.zxy, global1.a.x));
    let var_2 = false;
    let var_3 = var_0.zy;
    return 2147483647i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = arg_1;
    var var_0 = Struct_1(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b, 1450f))), _wgslsmith_f_op_f32(-global1.c), -1954f), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b, 371f, global1.b)))), Struct_1(select(arg_1.a, arg_0.a, true), global1.c, _wgslsmith_f_op_f32(trunc(522f)), global1.d), arg_1.a.xwy), select(!(!vec3<bool>(false, true, arg_1.a.x)), global1.a.xww, arg_0.a.wxx)).a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, -835f, arg_1.c), vec3<f32>(arg_1.c, arg_1.b, arg_1.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(666f, global1.b, arg_1.b) + vec3<f32>(arg_0.b, -572f, -628f)))), Struct_1(func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c, -366f, -513f), vec3<f32>(global1.b, arg_1.c, -1158f))), arg_0, !arg_1.a.zxy).a, 900f, arg_1.c, any(select(arg_1.a, vec4<bool>(false, global1.d, arg_0.a.x, true), true))), select(arg_1.a.yxz, select(arg_0.a.xww, !arg_0.a.yyw, !arg_0.a.yxy), true)).b, 109f, true);
    let var_1 = arg_1.d != !select(true, arg_0.a.x, arg_0.a.x);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1652f)), _wgslsmith_f_op_f32(f32(-1f) * -461f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - -1000f)) * _wgslsmith_f_op_f32(step(-569f, _wgslsmith_f_op_f32(209f * -980f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(ceil(-275f))) - _wgslsmith_f_op_f32(-2334f - _wgslsmith_f_op_f32(abs(arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(f32(-1f) * -438f)), -839f))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c * -153f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1205f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-2123f)))));
    return Struct_1(!(!arg_1.a), _wgslsmith_f_op_f32(ceil(-398f)), -228f, all(select(!global1.a.yw, !func_2(vec3<f32>(1306f, var_2.x, var_2.x), arg_0, global1.a.xzz).a.yx, !(2147483647i == arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_3(Struct_1(!select(select(vec4<bool>(false, false, false, false), global1.a, vec4<bool>(global1.d, true, global1.d, global1.a.x)), global1.a, select(vec4<bool>(true, global1.a.x, global1.a.x, false), global1.a, true)), _wgslsmith_f_op_f32(sign(global1.c)), global1.c, true), Struct_1(!(!select(global1.a, global1.a, global1.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f - global1.c) * _wgslsmith_f_op_f32(-global1.b)))), global1.c, true), -abs(func_1(Struct_1(global1.a, global1.c, global1.b, true))));
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(max(~vec4<u32>(u_input.a, u_input.a, 76986u, 41877u), vec4<u32>(0u, 29602u, 1u, 12798u)), abs(~vec4<u32>(u_input.a, 1u, u_input.a, 0u)), vec4<u32>(0u, 1u, 57942u, u_input.a)), vec4<u32>(~(u_input.a | u_input.a), ~(0u << (u_input.a % 32u)), u_input.a, _wgslsmith_div_u32(u_input.a, ~18054u))), u_input.a);
    global0 = any(vec2<bool>(global1.a.x, false && any(!global1.a)));
    var var_1 = _wgslsmith_f_op_f32(global1.c + global1.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), global1.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-113f, -865f)), -1491f))), vec2<f32>(global1.b, global1.b)));
    var_1 = -454f;
    let x = u_input.a;
    s_output = StorageBuffer((var_0.x >> (2617u % 32u)) << (2302u % 32u));
}

