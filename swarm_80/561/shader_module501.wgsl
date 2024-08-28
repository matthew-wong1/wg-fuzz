struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
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

var<private> global0: array<Struct_3, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-543f)), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(2110f * 1000f)), true))), vec2<i32>(firstLeadingBit(2147483647i), -55755i), !select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, arg_0.a.x <= arg_0.a.x, true)));
    let var_1 = ~firstLeadingBit(var_0.b.x);
    let var_2 = arg_0.c.x;
    var var_3 = _wgslsmith_mult_u32(~1u, firstLeadingBit(~(arg_0.d ^ arg_0.a.x)) & ~10268u);
    global0 = array<Struct_3, 16>();
    return arg_0.a.yzx;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> f32 {
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    let var_0 = ~firstLeadingBit(func_3(Struct_1(select(vec4<u32>(arg_3, 4294967295u, arg_1.b.x, arg_1.b.x), vec4<u32>(arg_1.b.x, arg_1.b.x, 0u, arg_1.b.x), vec4<bool>(false, true, arg_2.c.x, arg_2.c.x)), -707f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2.a, arg_0.x, -946f)), 44220u), select(vec2<i32>(1i, 1i), arg_2.b, arg_2.c.zx) ^ -arg_2.b, vec4<f32>(arg_2.a, -766f, arg_0.x, _wgslsmith_f_op_f32(sign(-918f)))));
    var var_1 = true;
    return -1234f;
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(1777f * _wgslsmith_div_f32(245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-593f)))))));
    global0 = array<Struct_3, 16>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -597f, 1000f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, var_0, -1235f)))), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + -1504f), 996f, _wgslsmith_f_op_f32(func_2(vec3<f32>(var_0, -1000f, var_0), Struct_3(vec3<f32>(472f, var_0, -100f), vec2<u32>(21653u, 4294967295u)), Struct_2(var_0, vec2<i32>(u_input.a, u_input.a), vec3<bool>(true, false, true)), 1u))))), select(arg_0.yw, _wgslsmith_add_vec2_u32(arg_0.zx, arg_0.wz), vec2<bool>(true, true)));
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    return !any(vec2<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 16>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(max(-607f, -1435f))), -848f, _wgslsmith_f_op_f32(f32(-1f) * -169f))), abs(vec2<u32>(1u, 14033u)));
    global0 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a.zy + _wgslsmith_f_op_vec2_f32(var_0.a.xy + var_0.a.yz)), var_0.a.yz, func_1(vec4<u32>(var_0.b.x, 15749u, var_0.b.x, 1u)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -383f)))))), !(select(true, false, false) && any(vec2<bool>(false, false)))))));
    let var_2 = vec4<bool>(!(true && (~u_input.a != _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 33388i)))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), false)), all(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), false);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zy));
    let var_4 = var_2.x;
    global0 = array<Struct_3, 16>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b.x, 27204u, var_0.b.x), vec3<u32>(var_0.b.x, 0u, 25571u)) << (4294967295u % 32u), ~var_0.b.x | func_3(Struct_1(vec4<u32>(var_0.b.x, 26231u, 0u, 40781u), -1014f, vec4<f32>(269f, 531f, var_1.x, 588f), 1576u), vec2<i32>(1i, 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_1.x, var_3.x, var_3.x))).x), vec3<u32>(abs(4264u), _wgslsmith_mult_u32(var_0.b.x, abs(~0u)), reverseBits(countOneBits(~var_0.b.x)))), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1627f, -406f, 1844f, -425f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, 373f, var_0.a.x), vec4<f32>(859f, -815f, 464f, var_1.x))), false))))));
}

