struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = Struct_1(vec4<u32>(select(~_wgslsmith_add_u32(35416u, 12807u), abs(1u >> (0u % 32u)), false), abs(68004u), u_input.d.x, global0.a.x), _wgslsmith_f_op_vec2_f32(step(global0.b, vec2<f32>(_wgslsmith_f_op_f32(abs(global0.b.x)), global1.b.x))));
    var var_1 = arg_1.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))))), 1000f);
    let var_3 = 1447f;
    global2 = abs(firstLeadingBit(0u));
    return select(var_0.a, ~vec4<u32>(21199u, 55121u, max(1u, _wgslsmith_mult_u32(31849u, var_0.a.x)), _wgslsmith_dot_vec3_u32(~global0.a.wyy, global0.a.www)), -1i >= arg_0.x);
}

fn func_2(arg_0: bool, arg_1: u32) -> vec2<f32> {
    global1 = Struct_1(~(~firstTrailingBit(func_3(vec2<i32>(1i, u_input.a), vec2<i32>(-2147483647i, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(-global1.b));
    let var_0 = Struct_1(abs(_wgslsmith_clamp_vec4_u32(global1.a, ~(vec4<u32>(41243u, arg_1, 7903u, arg_1) >> (global1.a % vec4<u32>(32u))), (global1.a & u_input.e) >> (~vec4<u32>(global1.a.x, 0u, u_input.e.x, 3188u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b) + global0.b));
    global2 = _wgslsmith_sub_u32(~var_0.a.x, _wgslsmith_add_u32(17010u, 0u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(global1.b.x, 1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, 533f)) - vec2<f32>(global1.b.x, -476f))), vec2<f32>(_wgslsmith_div_f32(-2021f, var_0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.x))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    var var_0 = all(vec4<bool>(!(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -54278i, -5823i), vec3<i32>(u_input.b, u_input.b, 84892i)) > abs(u_input.c.x)), select(select(false, false, false) | true, true, false), (u_input.a >= (i32(-1i) * -1i)) | any(vec3<bool>(true, false, true)), false));
    global2 = 103429u;
    return global0.b.x;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    global2 = global1.a.x & firstLeadingBit(global1.a.x);
    let var_0 = Struct_1(~countOneBits(global0.a & vec4<u32>(59922u, arg_1.x, arg_1.x, 15674u)) & vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.x, 40462u), ~global0.a.xxw), firstTrailingBit(~global0.a.x), ~arg_1.x | 2090u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(floor(arg_2)))));
    var var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(0u >= global0.a.x, 35884u)) + _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-global0.b))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f + global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(123f, var_0.b.x))))), var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1441f * arg_2)), _wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(548f, var_0.b.x), _wgslsmith_div_f32(-484f, global1.b.x), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1190f, global0.b.x, 166f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-846f, global1.b.x, global0.b.x) - vec3<f32>(var_0.b.x, -1985f, arg_2)), all(vec3<bool>(true, arg_3, true)))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.x)))), 977f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -359f), _wgslsmith_f_op_f32(-arg_2), (arg_3 | false) == (u_input.b >= u_input.a))), -617f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1187f), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -1088f)), 124f, var_0.b.x)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 653f);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d.x;
    global1 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.x)) - _wgslsmith_f_op_f32(-global1.b.x)), 433f)))), ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global1.a.zw, vec2<u32>(var_0, 89635u)), abs(global1.a.zw))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(939f - _wgslsmith_f_op_f32(919f + global0.b.x))), -544f), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), (var_0 <= 6116u) && false)));
    var var_1 = Struct_1(countOneBits(~countOneBits(global0.a >> (vec4<u32>(global1.a.x, global1.a.x, 2567u, u_input.e.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(trunc(-126f)))));
    global1 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-677f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.b.x)), _wgslsmith_f_op_f32(sign(global0.b.x))))), var_1.b.x), u_input.e.zx, -1000f, !select(true, false, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-608f - global0.b.x), var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -818f), 1205f) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(ceil(global0.b.x)), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.x - 1310f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(335f)) - _wgslsmith_f_op_f32(floor(var_1.b.x))))), vec3<u32>(88911u, ~0u, ~(~var_1.a.x ^ _wgslsmith_clamp_u32(u_input.d.x, 17343u, 31638u))), firstTrailingBit(vec3<u32>(~select(var_0, global0.a.x, false), _wgslsmith_dot_vec4_u32(u_input.e, min(var_1.a, vec4<u32>(74844u, 4294967295u, global0.a.x, 4294967295u))), var_0)), var_1.b.x);
}

