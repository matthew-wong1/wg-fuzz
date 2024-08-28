struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f));
}

fn func_3() -> vec4<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(363f, 1126f, 1493f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, -761f, 763f), vec3<f32>(global1.x, -237f, global1.x))))) * vec3<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(ceil(-765f)), _wgslsmith_f_op_f32(-496f * global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, -192f, global1.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, global1.x, 367f))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)))))));
    global0 = array<Struct_2, 11>();
    var var_0 = !select(vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), all(vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true));
    var var_1 = 29141i;
    let var_2 = u_input.b;
    return select(select(!(!select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, true, false, var_0.x), false)), vec4<bool>(!var_0.x, var_0.x, true, !(global1.x < global1.x)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.x, true, true, var_0.x), var_0.x), vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, false, true)), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), select(select(select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, true, true, var_0.x), false), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true), vec4<bool>(!var_0.x, var_0.x, true, false), select(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, true, false, var_0.x), var_0.x), !vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(var_0.x, !var_0.x, true, select(false, var_0.x, true) == true), true), var_0.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: i32) -> vec3<f32> {
    var var_0 = arg_2;
    var_0 = firstLeadingBit(u_input.a.x);
    global0 = array<Struct_2, 11>();
    let var_1 = ~(~reverseBits(vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 61752u, 13569u, u_input.b), vec4<u32>(4294967295u, 7972u, 4720u, 0u)))));
    var_0 = arg_2;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_1, arg_1), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))), -1000f, global1.x), vec3<bool>(any(func_3()), all(vec3<bool>(true, true, true)), arg_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1875f, arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, _wgslsmith_f_op_f32(func_1(-vec2<i32>(0i, u_input.a.x))), _wgslsmith_f_op_f32(sign(-1215f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(false, true), vec3<f32>(global1.x, global1.x, global1.x), -2147483647i)))))));
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(~1u), 11u)];
    var var_1 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(u_input.b, 0u, 77250u)), vec3<u32>(4294967295u, 0u, 0u)), max(var_0.a, vec3<u32>(4294967295u, var_0.a.x, u_input.b)) & ~var_0.a), ~_wgslsmith_clamp_vec3_u32(countOneBits(var_0.a), vec3<u32>(0u, 907u, var_0.a.x), ~vec3<u32>(53751u, u_input.b, u_input.b)), ~(~vec3<u32>(553u, 4294967295u, u_input.b))), Struct_1(true, true | all(vec4<bool>(var_0.b.c.x, true, false, false)), func_3().xzz, vec2<bool>(!var_0.b.d.x, func_3().x)));
    let var_2 = global0[_wgslsmith_index_u32(var_0.a.x, 11u)];
    var var_3 = abs(_wgslsmith_dot_vec3_i32(-u_input.a.xyy, u_input.a.zyw));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -584f, -767f) * vec3<f32>(1000f, global1.x, global1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.xx, vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec2_i32(u_input.a.yy, u_input.a.yw))))), var_4.x, -1070f), ~u_input.a.yw);
}

