struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1398f, 308f, 1239f);

var<private> global1: array<i32, 18> = array<i32, 18>(-11702i, 21931i, 32139i, 2147483647i, 0i, -13884i, -27403i, 0i, 2147483647i, 2147483647i, -1575i, -1i, -1i, -19576i, -1i, -94478i, 0i, 1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    var var_0 = Struct_3(select(0u, 57705u, !all(vec4<bool>(false, arg_0, arg_0, arg_0))) | u_input.c);
    var_0 = Struct_3((~1u & u_input.c) >> (var_0.a % 32u));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2255f), global0.x)))));
    return !(!arg_0);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1199f, global0.x, -792f, -917f)))))));
    let var_1 = -1188f;
    var var_2 = Struct_3(~u_input.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zyy) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.zyy, vec3<f32>(var_1, -1000f, 1719f)), _wgslsmith_f_op_vec3_f32(sign(var_0.a.wxy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, global0.x, 135f), vec3<f32>(global0.x, 391f, -210f))) * arg_0.wxz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(arg_0.yxx, var_0.a.yww)))) + _wgslsmith_f_op_vec3_f32(arg_0.zxw - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_0.a.x, -677f)))))));
    var_2 = Struct_3(~_wgslsmith_mod_u32(~(41904u >> (1u % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xz), var_2.a)));
    return global0.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> vec3<f32> {
    global1 = array<i32, 18>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1233f, 184f, 1014f, 281f), vec4<f32>(arg_1.a.x, global0.x, -1000f, -1660f))), _wgslsmith_f_op_vec4_f32(-arg_1.a))), Struct_1(vec4<bool>(func_3(true), all(vec3<bool>(false, false, true)), true, false)), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)))), vec3<i32>(-global1[_wgslsmith_index_u32(~u_input.c, 18u)], global1[_wgslsmith_index_u32(~1u, 18u)], _wgslsmith_mod_i32(-2147483647i, 1i)))), arg_1.a.x);
    var var_1 = u_input.c;
    var var_2 = !select(!vec3<bool>(true, false, func_3(false)), select(vec3<bool>(true, func_3(true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), true), false);
    var_2 = !(!(!vec3<bool>(var_2.x, true, any(vec4<bool>(var_2.x, var_2.x, true, false)))));
    return arg_1.a.zwz;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1732f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -559f, -912f) - vec3<f32>(global0.x, -578f, -230f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(u_input.a.x), Struct_2(vec4<f32>(-194f, global0.x, -1000f, 1361f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1389f, -1000f, _wgslsmith_f_op_f32(min(global0.x, global0.x))))));
    var var_0 = arg_0;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(440f)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1316f));
    return -_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.c >> ((~u_input.b & select(u_input.b, u_input.a.x, var_0.a.x)) % 32u), 18u)], -18123i ^ (firstTrailingBit(global1[_wgslsmith_index_u32(74666u, 18u)]) | ~13743i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), 791f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(-1709f + _wgslsmith_f_op_f32(global0.x + global0.x))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~firstLeadingBit(-vec3<i32>(global1[_wgslsmith_index_u32(52294u, 18u)], -1i, global1[_wgslsmith_index_u32(4294967295u, 18u)])), -(~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(21188u, 18u)]))), ~global1[_wgslsmith_index_u32(u_input.c | _wgslsmith_mod_u32(23628u, 1u), 18u)], ~(~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c, 18u)], func_1(Struct_1(vec4<bool>(true, true, true, true)), true))));
    let var_2 = true;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.wwx + vec3<f32>(-488f, -243f, 155f)) + var_0.yxy) - vec3<f32>(var_0.x, _wgslsmith_div_f32(2186f, -621f), _wgslsmith_f_op_f32(-global0.x)))), var_0.wwx);
    global1 = array<i32, 18>();
    global0 = var_3;
    global1 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_1, var_1), -1i), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], -41209i)));
}

