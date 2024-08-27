struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(1628f, 1098f), vec2<f32>(1044f, -170f), vec2<f32>(-662f, 263f), vec2<f32>(1615f, -783f), vec2<f32>(-592f, 465f), vec2<f32>(-988f, -468f), vec2<f32>(1000f, -600f), vec2<f32>(1471f, -908f), vec2<f32>(-2302f, 913f), vec2<f32>(-829f, 1000f), vec2<f32>(-1607f, -988f));

var<private> global1: Struct_1 = Struct_1(7426u);

var<private> global2: vec2<u32>;

var<private> global3: array<vec2<u32>, 8>;

var<private> global4: array<vec3<bool>, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>) -> f32 {
    let var_0 = countOneBits(~u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-228f, -851f), _wgslsmith_f_op_f32(1372f + 1000f), -410f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(339f, -274f, -262f), vec3<f32>(-224f, -560f, -407f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -532f, -283f) + vec3<f32>(-1042f, 554f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-968f, 419f, 410f)))))));
    global1 = Struct_1(min(4294967295u, 1u) | global2.x);
    global0 = array<vec2<f32>, 11>();
    var var_2 = all(!vec2<bool>(!any(arg_0.zz), arg_0.x));
    return 2257f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    global4 = array<vec3<bool>, 7>();
    global0 = array<vec2<f32>, 11>();
    var var_0 = 1i;
    global4 = array<vec3<bool>, 7>();
    var_0 = -1i;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2.wyz, select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(u_input.d, -2147483647i)), vec2<i32>(u_input.d, -1i), select(vec2<bool>(false, true), vec2<bool>(arg_2.x, arg_2.x), true)))) + _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_2.x, !arg_2.x, arg_2.x), ~reverseBits(vec2<i32>(u_input.d, 1i)))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> i32 {
    global4 = array<vec3<bool>, 7>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0, arg_0, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false)), reverseBits(~global1.a))) + _wgslsmith_f_op_f32(trunc(1132f))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)) * 1f), arg_1);
    global4 = array<vec3<bool>, 7>();
    var var_1 = !vec4<bool>(false, false, !all(vec4<bool>(true, true, true, true)), _wgslsmith_div_u32(~arg_0.a, 1u) >= _wgslsmith_mult_u32(u_input.c, arg_2));
    let var_2 = arg_0;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 11>();
    var var_0 = vec3<i32>(~1i, ~(~func_1(Struct_1(17418u), -376f, 105330u)), u_input.d);
    var var_1 = -27259i;
    var var_2 = Struct_1(_wgslsmith_div_u32(0u, global1.a) >> ((0u << (firstLeadingBit(global2.x) % 32u)) % 32u));
    let var_3 = Struct_1(min(select(~0u, global1.a, true) << (_wgslsmith_clamp_u32(~global1.a, var_2.a, ~u_input.c) % 32u), 28370u));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1299f), abs(global1.a), ~reverseBits(vec4<u32>(global2.x, _wgslsmith_clamp_u32(4294967295u, 12592u, global2.x), select(3661u, global2.x, true), _wgslsmith_add_u32(var_2.a, 0u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-454f + 1315f), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), var_0.xy)), -332f)))));
}

