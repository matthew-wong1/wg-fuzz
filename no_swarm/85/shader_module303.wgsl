struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_1(vec2<bool>(arg_2.a.x, arg_0.a.x), vec2<f32>(2356f, -505f), 838f);
    var var_1 = true;
    var var_2 = Struct_1(!select(!var_0.a, var_0.a, vec2<bool>(false, !arg_2.a.x)), arg_3.yy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-135f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), 1191f))), -265f));
    let var_3 = arg_0;
    let var_4 = _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-u_input.a | (-15365i ^ u_input.a), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(1i, 1i, -26620i)), vec3<i32>(u_input.a, u_input.a, 2147483647i)), 20946i), select(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 1i), -vec3<i32>(-1i, 0i, 0i)), ~(~vec3<i32>(-62232i, 2147483647i, -67200i)), true)), vec3<i32>(u_input.a, select(u_input.a, -2147483647i, all(vec2<bool>(true, true))), ~(~u_input.a)), ~(~reverseBits(-vec3<i32>(-15644i, -11853i, -1i))));
    return arg_3.ww;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -516f) * vec2<f32>(arg_0.c, -984f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, 119f), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_0.a, arg_0.b, -302f), arg_0.c, Struct_1(vec2<bool>(arg_0.a.x, false), vec2<f32>(474f, arg_0.c), arg_0.c), vec4<f32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)))))), u_input.a < -(~25138i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, 475f)))));
    var var_1 = var_0;
    var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 4294967295u, 1u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u))))), ~vec2<u32>(18322u, 1u));
    var_1 = Struct_1(select(var_0.a, vec2<bool>((var_0.a.x & var_1.a.x) & false, true), arg_0.a), arg_0.b, 1f);
    return any(!select(vec4<bool>(true, any(vec2<bool>(true, true)), 18896i >= arg_1, any(vec3<bool>(false, var_1.a.x, true))), vec4<bool>(var_1.a.x || arg_0.a.x, any(vec3<bool>(var_1.a.x, true, arg_0.a.x)), true, true), !vec4<bool>(false, var_1.a.x, true, false)));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(32928u, 4294967295u, 1412u)), 1u, 13211u, _wgslsmith_mod_u32(0u, 4294967295u) >> (1u % 32u)), min(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_sub_u32(32687u, 24121u), ~1u, ~30042u, _wgslsmith_div_u32(4294967295u, 19190u))));
    let var_1 = arg_0;
    let var_2 = Struct_1(!vec2<bool>(all(vec3<bool>(false, true, true)) || true, !func_2(Struct_1(vec2<bool>(false, false), vec2<f32>(arg_0, var_1), 261f), arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 442f) - vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1049f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(841f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(618f)), _wgslsmith_f_op_f32(1605f * 938f), select(true, false, true)))), 1055f));
    let var_3 = -arg_1.x;
    var var_4 = 8044u;
    return Struct_1(var_2.a, var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))) - -590f), _wgslsmith_f_op_f32(f32(-1f) * -815f)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec3<f32> {
    var var_0 = Struct_1(vec2<bool>(arg_0.a.x, all(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), arg_0.b, _wgslsmith_f_op_f32(-380f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) + arg_2))));
    var_0 = arg_0;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), 645f, 778f);
    let var_2 = select(~(min(_wgslsmith_add_u32(23594u, 0u), reverseBits(arg_1)) ^ _wgslsmith_add_u32(max(arg_1, 12233u), ~14948u)), ~1u, (func_2(Struct_1(arg_0.a, vec2<f32>(var_0.b.x, var_0.c), arg_2), i32(-1i) * -2147483647i) || arg_0.a.x) | false);
    var var_3 = ~71980u;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c))))), arg_0.c, -142f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-(~vec2<i32>(reverseBits(u_input.a), abs(2147483647i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 667f, 860f)))), vec3<f32>(_wgslsmith_f_op_f32(step(-489f, _wgslsmith_f_op_f32(1266f - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f - -1815f)), _wgslsmith_f_op_f32(f32(-1f) * -1952f))))));
    let var_2 = abs(2147483647i);
    var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(var_1.x, vec2<i32>(u_input.a, var_0.x)), _wgslsmith_add_u32(0u, 1u), _wgslsmith_f_op_f32(var_1.x - var_1.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, 613f), vec3<f32>(808f, var_1.x, var_1.x), true))), vec3<f32>(447f, var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(select(-1000f, var_1.x, true)))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(round(-1541f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1251f)), _wgslsmith_f_op_f32(var_1.x - -516f), true)))))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-157f, _wgslsmith_f_op_f32(-var_1.x), var_1.x), vec3<f32>(-1560f, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(325f, 844f, -230f), vec3<f32>(var_1.x, 1523f, 772f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, 2217f, var_1.x)))))))));
    let var_4 = var_1.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.x, -2202f, _wgslsmith_f_op_f32(floor(-1506f)), _wgslsmith_f_op_f32(trunc(479f))));
}

