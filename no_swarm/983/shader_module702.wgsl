struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec4<i32>, 9>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_1(arg_0.wx, select(!vec4<bool>(false, true, global0.x | global0.x, u_input.d.x == u_input.c), !vec4<bool>(select(global0.x, global0.x, true), !global0.x, any(vec2<bool>(false, global0.x)), true), global0.x));
    var var_1 = firstLeadingBit(vec2<u32>(52301u, 22595u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_0);
    var var_3 = 0u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -582f))), var_0.a.x)), var_4));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(-472f, -277f, 1493f, 598f))) + vec2<f32>(-790f, 683f)))), select(!vec4<bool>(global0.x & global0.x, true, true, all(arg_1.yyz)), vec4<bool>(false, global0.x, global0.x && all(vec2<bool>(global0.x, true)), false), vec4<bool>(true, true, false, !(!global0.x))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global0 = !func_2(u_input.d, arg_2.b, 69482i).b.zw;
    var var_0 = _wgslsmith_div_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(-1i, -2147483647i, 1i)) << (~vec3<u32>(countOneBits(0u), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, arg_0, u_input.b.x), vec4<u32>(4557u, arg_1, 40361u, arg_0))) % vec3<u32>(32u)), vec3<i32>(-_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, 34520i, -30767i)), select(vec3<i32>(1i, -24570i, -41200i), vec3<i32>(-14344i, 1i, -28289i), arg_2.b.x)), max(~firstLeadingBit(2147483647i), i32(-1i) * -14427i), _wgslsmith_div_i32(1i, -1i << (arg_1 % 32u)) | 2147483647i));
    let var_1 = firstLeadingBit(-31943i);
    let var_2 = arg_2;
    let var_3 = any(!vec3<bool>(all(vec4<bool>(global0.x, true, false, false)), !arg_2.b.x, !arg_3.x));
    return func_2(~vec3<u32>(abs(1u), ~arg_0, _wgslsmith_sub_u32(4294967295u, arg_1)) & u_input.d, vec4<bool>(true, !arg_3.x, any(select(vec4<bool>(false, true, arg_2.b.x, false), var_2.b, var_2.b)), arg_3.x), _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_mult_i32(var_0.x, var_1)), _wgslsmith_mod_i32(var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(15098i, -27140i), vec2<i32>(0i, -26176i)))) | var_1);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = func_4(0u, u_input.d.x, func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(38196u >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(u_input.c, u_input.b.x, 136137u), 61952u), ~_wgslsmith_div_vec3_u32(u_input.a, u_input.a)), vec4<bool>(var_0.b.x, !arg_0.b.x, true, false), i32(-1i) * -32882i), !(!(!arg_0.b.zwz)));
    let var_2 = ~vec3<i32>(1i, abs(-2147483647i >> (u_input.b.x % 32u)), _wgslsmith_div_i32(58142i, 1i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(func_2(u_input.d, select(vec4<bool>(false, var_0.b.x, false, true), var_1.b, global0.x), var_2.x).a.x, var_1.a.x))));
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x * 830f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) + -1399f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-525f - arg_0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(403f)) - _wgslsmith_f_op_f32(-var_3))))));
    return _wgslsmith_f_op_vec2_f32(sign(func_4(u_input.b.x, 0u, var_0, func_4(~(~u_input.d.x), max(~0u, 46404u), Struct_1(vec2<f32>(var_4.x, arg_0.a.x), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x)), var_0.b.wyz).b.zxx).a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 9>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(-843f, -497f), vec4<bool>(global0.x, global0.x, global0.x, true)))), _wgslsmith_div_vec2_f32(vec2<f32>(-691f, 555f), vec2<f32>(-129f, -507f)), func_4(u_input.c, u_input.b.x, Struct_1(vec2<f32>(1040f, 2076f), vec4<bool>(global0.x, false, global0.x, true)), vec3<bool>(false, global0.x, true)).b.xw)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1901f, 1253f), vec2<f32>(-1425f, -235f)))))), vec2<f32>(1f, 1f))), !(!vec4<bool>(all(vec4<bool>(global0.x, global0.x, true, global0.x)), any(vec2<bool>(global0.x, false)), func_4(u_input.b.x, u_input.b.x, Struct_1(vec2<f32>(350f, 1000f), vec4<bool>(global0.x, global0.x, false, global0.x)), vec3<bool>(global0.x, false, true)).b.x, !global0.x)));
    global0 = func_2(~abs(u_input.d), !var_0.b, -1i).b.xx;
    let var_1 = !var_0.b.zxz;
    let var_2 = firstTrailingBit(select(-18141i, _wgslsmith_mult_i32(~(-872i), abs(37401i)), true)) | firstLeadingBit(1i);
    global1 = array<vec4<i32>, 9>();
    global1 = array<vec4<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, 4294967295u, u_input.b.wx, u_input.a.x);
}

