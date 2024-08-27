struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: f32 = 228f;

var<private> global2: array<vec3<f32>, 22>;

var<private> global3: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_3(select(!select(select(vec3<bool>(true, false, global0.x), global0.wxz, vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), false), true), global0.xzx, global0.wzw), arg_1.a, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(25749u, 36260u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 20351u), vec2<u32>(15995u, 17936u), vec2<u32>(4294967295u, 0u)))));
    var var_1 = arg_0;
    global0 = vec4<bool>(false, any(vec2<bool>(global0.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) - _wgslsmith_div_f32(var_1.a.x, -857f)) < _wgslsmith_f_op_f32(abs(arg_0.a.x)), true);
    global2 = array<vec3<f32>, 22>();
    var var_2 = var_0;
    return vec4<bool>(var_1.a.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - 540f), any(var_0.a.yy), true, all(var_2.a));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    let var_0 = 70973u;
    global0 = select(select(vec4<bool>(true, any(vec4<bool>(false, true, arg_0, false)), true & !global0.x, true), vec4<bool>(all(!vec4<bool>(true, false, global0.x, global0.x)), true, global0.x, true), !select(vec4<bool>(true, arg_0, global0.x, true), !vec4<bool>(arg_0, arg_0, global0.x, global0.x), !vec4<bool>(arg_0, false, arg_0, true))), select(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(!select(vec4<bool>(arg_0, false, true, false), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(arg_0, false, false, false)), select(select(vec4<bool>(arg_0, global0.x, false, arg_0), vec4<bool>(false, arg_0, true, false), vec4<bool>(false, global0.x, arg_0, arg_0)), !vec4<bool>(arg_0, true, arg_0, false), !vec4<bool>(false, global0.x, false, global0.x)), vec4<bool>(-4364i == arg_1.x, global0.x, any(vec4<bool>(true, true, true, global0.x)), any(vec3<bool>(arg_0, false, true)))), (true && any(global0.yw)) | select(!arg_0, true, false && arg_0)), all(global0.zww));
    var var_1 = any(global0.yz);
    global0 = !(!(!select(func_3(Struct_2(vec2<f32>(238f, arg_2)), Struct_1(-2147483647i, vec4<i32>(2147483647i, arg_1.x, arg_1.x, arg_1.x)), -1049f), !vec4<bool>(false, arg_0, false, arg_0), false)));
    var var_2 = 6028i;
    return 1u;
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 1u), countOneBits(~29537u)), ~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(0u, 34373u, 80938u, 70291u), abs(vec4<u32>(0u, 631u, 4294967295u, 4294967295u)), false), vec4<u32>(1u, ~22013u, 1u, 1u)));
    var var_1 = ~(~vec3<u32>(4490u, func_2(true, vec3<i32>(-3250i, -2147483647i, -27099i), 697f), _wgslsmith_add_u32(func_2(global0.x, vec3<i32>(u_input.b, 2147483647i, u_input.a.x), 948f), 4294967295u >> (0u % 32u))));
    var_0 = vec2<u32>(~var_0.x, ~_wgslsmith_div_u32(abs(1u), _wgslsmith_dot_vec2_u32(~var_1.yy, select(vec2<u32>(var_0.x, var_1.x), vec2<u32>(var_1.x, var_0.x), true))));
    var_0 = vec2<u32>(var_0.x, 1u << (_wgslsmith_div_u32(~_wgslsmith_add_u32(0u, 0u), reverseBits(var_1.x & 61876u)) % 32u));
    global3 = all(!func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1432f, 307f))), Struct_1(u_input.a.x, firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, -12412i, -2147483647i))), -1000f));
    return Struct_4(_wgslsmith_sub_vec3_i32(-abs(vec3<i32>(-1i, u_input.a.x, u_input.b)), ((vec3<i32>(0i, u_input.b, u_input.b) | vec3<i32>(u_input.b, u_input.b, u_input.b)) | vec3<i32>(u_input.b, 15377i, -56736i)) ^ u_input.a));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    global3 = !(-15631i == arg_1.b.x);
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(ceil(arg_2.x))), arg_2));
    var var_1 = vec3<i32>(arg_1.b.x, -arg_1.a, _wgslsmith_add_i32(_wgslsmith_div_i32(arg_0.a.x, 0i), ~countOneBits(max(-2147483647i, arg_1.a))));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, arg_2.x, true)), arg_2.x))) * vec2<f32>(var_0.a.x, 1571f)));
    let var_2 = func_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.a.x)), vec2<bool>(global0.x, true)))), Struct_1(max(1i, -(arg_1.b.x ^ -43160i)), vec4<i32>(u_input.b << (~1u % 32u), var_1.x, arg_0.a.x, -abs(-33347i))), _wgslsmith_f_op_f32(1172f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-119f)) - _wgslsmith_f_op_f32(-559f + 1360f))))).wy;
    return Struct_3(vec3<bool>(true, true, any(var_2)), ~u_input.b, select(firstTrailingBit(select(vec2<u32>(24433u, 4294967295u), vec2<u32>(46866u, 39959u), !vec2<bool>(global0.x, true))), ~(~min(vec2<u32>(4294967295u, 0u), vec2<u32>(12011u, 8585u))), !(!(!var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_1(u_input.a.x, vec4<i32>(_wgslsmith_div_i32(-15182i, u_input.b), u_input.a.x, u_input.a.x, -32020i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-952f, -188f) + vec2<f32>(-708f, 502f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(304f, -334f) - vec2<f32>(-299f, 773f))), false)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(518f, 1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(577f, 438f) - vec2<f32>(-873f, -810f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b, _wgslsmith_clamp_i32(var_0.b, -15969i, -2147483647i), firstTrailingBit(var_0.b), -2011i), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(0i, var_0.b, 1i, 60834i)), firstTrailingBit(vec4<i32>(-9001i, 0i, 62199i, 1i)), ~vec4<i32>(1111i, 30555i, 1i, var_0.b)))));
}

