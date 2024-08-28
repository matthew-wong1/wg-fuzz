struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11>;

var<private> global1: array<i32, 25> = array<i32, 25>(-20109i, 35435i, 1i, -1i, 36541i, -14129i, 1i, 0i, 22628i, -1i, 1i, 40644i, -9145i, i32(-2147483648), -27450i, 16818i, 21925i, -10568i, -1i, -44038i, -1i, 2147483647i, 52800i, 0i, 27285i);

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32) -> f32 {
    global1 = array<i32, 25>();
    let var_0 = _wgslsmith_mod_i32(min(global1[_wgslsmith_index_u32(~reverseBits(4294967295u), 25u)], u_input.a), global1[_wgslsmith_index_u32(1u, 25u)]);
    global0 = array<vec2<i32>, 11>();
    global2 = vec4<bool>(any(vec3<bool>(true, true, global2.x)), false, true, true);
    var var_1 = true;
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    global1 = array<i32, 25>();
    global2 = !vec4<bool>(!(global2.x && all(vec3<bool>(global2.x, global2.x, true))), global2.x, true || (_wgslsmith_f_op_f32(297f * arg_0.x) <= 1000f), !global2.x);
    global1 = array<i32, 25>();
    var var_0 = -273f;
    let var_1 = Struct_2(true);
    return _wgslsmith_f_op_f32(-196f - 150f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x)));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    global0 = array<vec2<i32>, 11>();
    global1 = array<i32, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, arg_2, 766f, -1902f)))))));
    let var_1 = _wgslsmith_clamp_u32(select(firstLeadingBit(arg_3.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 9172u, arg_3.x, 52823u), vec4<u32>(arg_0, 5116u, 4294967295u, arg_3.x)), select(_wgslsmith_f_op_f32(-arg_2) > _wgslsmith_f_op_f32(sign(-939f)), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1423f, 1000f, arg_2), var_0)), global2.x)), _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~arg_0), 1u ^ arg_3.x), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, arg_3.x, 0u, arg_3.x), vec4<u32>(88915u, 11721u, arg_0, 7738u) >> (vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x) % vec4<u32>(32u)))), arg_3.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.wzw - var_0.ywz) * _wgslsmith_div_vec3_f32(vec3<f32>(671f, 2883f, var_0.x), vec3<f32>(-156f, 774f, -1196f))), vec3<f32>(1121f, _wgslsmith_f_op_f32(round(524f)), _wgslsmith_f_op_f32(var_0.x + var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2, arg_2), -727f)), -640f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * 659f), _wgslsmith_f_op_f32(-131f + arg_2))) + var_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -227f)), arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, 1265f, -1889f, 1318f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(620f, -750f, 193f, 485f), vec4<f32>(1205f, 426f, 445f, -293f)))))));
    let var_2 = global2.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(371f, _wgslsmith_div_f32(208f, 1000f), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-143f + 274f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(abs(856f)))))));
    let var_4 = -vec3<i32>(global1[_wgslsmith_index_u32(~countOneBits(4294967295u), 25u)] ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(-34063i, -2147483647i), global0[_wgslsmith_index_u32(20702u, 11u)]) & _wgslsmith_add_i32(-2147483647i, 0i)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, _wgslsmith_mult_u32(~3829u, 1u), select(~0u, reverseBits(4294967295u), global2.x)), 25u)], ~_wgslsmith_clamp_i32(50575i | u_input.a, -2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 25u)]));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(635f, var_3.x) - var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-110f)), 911f)) + var_1.x), -1020f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(func_2(36353u, vec4<i32>(var_4.x, u_input.a, -12533i, u_input.a), -1000f, vec3<u32>(1u, 0u, 32165u)))))))));
    var var_5 = -621f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-781f * _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(select(629f, var_3.x, global2.x)), global2.x))))));
}

