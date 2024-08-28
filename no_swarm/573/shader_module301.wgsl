struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 27>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec2<bool> {
    global2 = !(!select(!(!vec4<bool>(global2.x, global2.x, false, global2.x)), vec4<bool>(all(global2.xxy), global2.x, true, global0.x), !vec4<bool>(global0.x, true, false, global0.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(621f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_0), -1193f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1251f, _wgslsmith_f_op_f32(floor(arg_0)), select(global0.x, true, global0.x)))), -313f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_0, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(300f, arg_1, arg_1, arg_1) + vec4<f32>(arg_1, 1000f, arg_0, -286f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_1, -1315f, arg_0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, -915f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 152f, arg_1))))), any(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, true), global2.wzw))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(282f, var_0.x), var_0.xz)))))));
    var var_2 = select(!vec3<bool>(all(global2.yww), true, global0.x), vec3<bool>(global2.x, global0.x, false), any(!vec4<bool>(true, global0.x, global0.x, !global0.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1090f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - arg_1) + _wgslsmith_f_op_f32(-516f * arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-497f, 560f)))));
    return select(global2.xx, var_2.yx, !(!global2.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(-978f, -446f);
    global2 = select(vec4<bool>(global0.x, global0.x, (global2.x || !global0.x) | true, global2.x), vec4<bool>(false, all(vec4<bool>(true, false, 1u < u_input.a.x, true)), !select(global2.x, u_input.b.x >= 20741u, all(global2.wx)), global2.x), true);
    let var_1 = _wgslsmith_mult_i32(1356i, abs(_wgslsmith_sub_i32(firstLeadingBit(-49792i), arg_1.x) | ~(-10080i)));
    let var_2 = global1[_wgslsmith_index_u32(min(abs(select(12234u, 0u, all(global2.wx))), u_input.a.x), 27u)];
    global0 = func_3(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1015f, -401f, global2.x)) - _wgslsmith_f_op_f32(-var_0.x)))));
    return Struct_1(_wgslsmith_f_op_f32(select(-692f, 477f, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 537f, var_2.a, -910f), vec4<f32>(var_0.x, var_2.a, -475f, 402f))))) + vec4<f32>(-1267f, var_2.a, _wgslsmith_f_op_f32(floor(var_0.x)), 1168f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, arg_0.x, 222f, 882f), vec4<f32>(arg_0.x, arg_0.x, -214f, 158f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.a, -635f, 779f)))))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = 1i;
    global0 = global2.zy;
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.yz), arg_2.xy, true)), ~(-vec2<i32>(abs(u_input.d.x), u_input.d.x ^ 0i)));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(arg_0, max(u_input.a.x, 38005u)), 32771u);
    var var_3 = vec3<bool>(_wgslsmith_dot_vec2_i32(u_input.d, _wgslsmith_mod_vec2_i32(~u_input.d, _wgslsmith_clamp_vec2_i32(u_input.d, u_input.d, u_input.d))) <= -12631i, global2.x, (func_3(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).x && !(!global2.x)) | global0.x);
    return global1[_wgslsmith_index_u32(5737u, 27u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a + 1264f), _wgslsmith_f_op_f32(arg_3.a - 1537f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1122f, _wgslsmith_f_op_f32(arg_2.a - arg_3.a)) + _wgslsmith_f_op_f32(-222f * _wgslsmith_f_op_f32(666f - -1338f))))));
    var var_0 = all(global2.xwx);
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.a, 343f), vec2<f32>(986f, -443f), true)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-714f, arg_3.a))))) + vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a * arg_3.a) * _wgslsmith_f_op_f32(-arg_3.a)))), u_input.d);
    var var_2 = var_1.b.yxz;
    global0 = vec2<bool>(false, global0.x);
    return 13715u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    var var_0 = global0.x;
    var var_1 = true;
    var_0 = global2.x != global0.x;
    global0 = global2.zz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, abs(u_input.d), _wgslsmith_sub_u32(u_input.b.x, func_4(vec2<bool>(true, !global2.x), u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], func_1(56370u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1057f, 407f, -616f) * vec3<f32>(-282f, -1261f, -1102f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, 193f, 801f) + vec3<f32>(-583f, -356f, -1342f))))));
}

