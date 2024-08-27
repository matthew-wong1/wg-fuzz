struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -1000f);

var<private> global1: vec3<f32>;

var<private> global2: array<vec4<i32>, 22>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    global0 = vec2<f32>(-1146f, 906f);
    global2 = array<vec4<i32>, 22>();
    var var_0 = 0u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(arg_0.b)), _wgslsmith_f_op_vec3_f32(floor(arg_0.b)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1117f - 237f)), arg_0.a.x)) * _wgslsmith_f_op_f32(sign(var_1.b.x))), 546f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xz + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.a.zy))))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, global1.x) + vec3<f32>(global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, -1163f, global1.x), vec3<f32>(global0.x, -505f, -169f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global1.x, 628f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-210f, -530f, global1.x))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(1000f - global1.x), _wgslsmith_f_op_f32(min(-1561f, -1000f)))))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global1.x, global0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 954f, global1.x), vec3<f32>(-845f, 416f, global0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), -109f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.x)))))))).x;
    let var_1 = u_input.c.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(568f, -2254f, global0.x) - _wgslsmith_div_vec3_f32(vec3<f32>(-349f, -454f, 1141f), vec3<f32>(global1.x, global1.x, -158f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-227f, global1.x, global1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -872f, global0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, global0.x, global1.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, 1277f, -514f) + vec3<f32>(1000f, global1.x, -504f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1539f, global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1322f, global1.x, -961f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-237f, global0.x, global1.x) + vec3<f32>(1553f, global0.x, global1.x)), global0.x > global1.x)))));
    var var_3 = vec3<f32>(-1425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f))), global0.x);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1015f, 221f, 3071f))))), vec3<f32>(_wgslsmith_div_f32(680f, -718f), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-245f)) - _wgslsmith_div_f32(-829f, -738f))));
    return var_2.b.x;
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(75364u, 445u, u_input.c.x, u_input.a.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.b.x)), u_input.b), ~u_input.c);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-511f, global0.x), global1.yz) * _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<f32>(-1044f, -403f, arg_1), vec3<f32>(-1000f, arg_1, 737f)), Struct_1(vec3<f32>(-1259f, -647f, global0.x), vec3<f32>(global0.x, arg_1, 549f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zz) - _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<f32>(107f, 1000f, -3655f), vec3<f32>(global1.x, 858f, arg_1)), Struct_1(vec3<f32>(global0.x, -458f, arg_1), vec3<f32>(1056f, arg_1, 1563f))))), false)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.yy, global1.yz, vec2<bool>(false, false))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(554f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(trunc(-1909f))), _wgslsmith_f_op_f32(step(281f, _wgslsmith_f_op_f32(min(677f, global0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(233f, global1.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -980f) - vec3<f32>(-1063f, 1000f, -1236f))))))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_f32(-global0.x)));
    let var_2 = Struct_1(vec3<f32>(-487f, -646f, _wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_vec3_f32(-var_1.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1167f)))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a.x + 1000f), _wgslsmith_f_op_f32(-var_2.b.x))))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1585f), var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))))), var_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(-var_2.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(firstTrailingBit(max(~vec4<i32>(-56222i, 1i, 2147483647i, 2147483647i) ^ global2[_wgslsmith_index_u32(~24326u, 22u)], vec4<i32>(_wgslsmith_add_i32(1i, -89263i), _wgslsmith_mod_i32(-2147483647i, 2870i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-332i, 0i, 822i), vec3<i32>(0i, -21992i, -1i))))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -277f, global1.x), vec3<f32>(global0.x, -347f, 1109f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, 1000f), vec3<f32>(-508f, global1.x, global1.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1509f, 1000f, global1.x))))), _wgslsmith_f_op_vec3_f32(func_1(var_0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(exp2(global0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(145f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1000f))), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1401f)));
    var var_2 = vec4<bool>(true, !all(vec4<bool>(all(vec3<bool>(true, false, false)), false, false, true)), !(!all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), true);
    var var_3 = 38472u;
    let var_4 = 35337u;
    global2 = array<vec4<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(32324i, 1i));
}

