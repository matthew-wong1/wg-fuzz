struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(2055f, -330f, -889f), vec3<f32>(1192f, -1351f, -1023f), vec3<f32>(2252f, 887f, -582f), vec3<f32>(-799f, -427f, -938f), vec3<f32>(162f, 1113f, -1176f), vec3<f32>(987f, 516f, -606f), vec3<f32>(-1000f, 1891f, -967f), vec3<f32>(637f, 787f, -195f), vec3<f32>(-537f, -702f, 1536f), vec3<f32>(-655f, -905f, -1767f), vec3<f32>(-1310f, 738f, 1436f), vec3<f32>(-1305f, 2093f, 973f), vec3<f32>(1000f, -1917f, -127f), vec3<f32>(-1041f, -797f, -1000f), vec3<f32>(1188f, -1193f, 177f), vec3<f32>(926f, -222f, -143f), vec3<f32>(-887f, 1000f, -1183f), vec3<f32>(-372f, -1000f, -1618f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = ~select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(arg_0.d, global1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(103858u, global1.x), vec2<u32>(10120u, 4291u)) << (firstLeadingBit(vec2<u32>(27315u, arg_0.d)) % vec2<u32>(32u)), any(select(arg_0.a.zz, vec2<bool>(true, false), arg_0.a.x))) >> ((vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, global1.x, arg_0.b), vec4<u32>(arg_0.d, global1.x, 16011u, 32537u)) << (~4294967295u % 32u)) & _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, global1.x)), vec2<u32>(global1.x, _wgslsmith_div_u32(global1.x, 26717u)), select(~vec2<u32>(1718u, global1.x), ~vec2<u32>(global1.x, global1.x), select(vec2<bool>(true, arg_0.a.x), arg_0.a.zz, vec2<bool>(false, false))))) % vec2<u32>(32u));
    let var_1 = Struct_2(~_wgslsmith_div_i32(u_input.b, ~_wgslsmith_div_i32(u_input.c, 0i)));
    var var_2 = any(!arg_0.a.zw);
    global1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 40106u, 98749u, 0u), vec4<u32>(0u, 1u, global1.x, 4294967295u)), vec4<u32>(arg_0.b, 22008u, ~12375u, global1.x)), 0u);
    var_0 = ~(countOneBits(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.x), vec2<u32>(global1.x, arg_0.b)))) >> (max(~_wgslsmith_mod_vec2_u32(vec2<u32>(30704u, arg_0.b), vec2<u32>(global1.x, global1.x)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(77118u, arg_0.b), vec2<u32>(4294967295u, 19384u)), vec2<u32>(48773u, var_0.x))) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(-1894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    global0 = -1228f;
    let var_0 = 345f;
    global0 = _wgslsmith_div_f32(801f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1030f * var_0), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(arg_1.c, true, arg_1.a.x, true), 4294967295u, true, 0u))), arg_1.a.x))))));
    let var_1 = Struct_1(!(!arg_1.a), 1u | abs(global1.x), any(!(!(!arg_1.a))), max(~firstTrailingBit(arg_1.d), ~_wgslsmith_div_u32(24846u, 4294967295u)));
    var var_2 = var_1.d;
    return -1124f;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(func_2(u_input.c, Struct_1(vec4<bool>(true, any(vec3<bool>(true, true, true)), false, true), ~(~0u), _wgslsmith_clamp_i32(abs(u_input.a), 1i, select(-52635i, u_input.a, false)) < (u_input.c ^ _wgslsmith_mod_i32(u_input.a, u_input.c)), 4294967295u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -444f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1411f - 1986f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f * -1538f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))))));
    global0 = arg_1;
    var var_1 = vec3<bool>(all(vec4<bool>(all(vec2<bool>(false, false)), true, true, true)), true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))) < _wgslsmith_f_op_f32(min(1053f, _wgslsmith_f_op_f32(func_2(-19995i, Struct_1(vec4<bool>(false, true, false, true), global1.x, true, arg_0)))))), true);
    return Struct_2(-2147483647i);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = func_1(16308u, arg_0);
    global0 = 969f;
    var var_1 = u_input.a;
    global2 = array<vec3<f32>, 18>();
    var_1 = u_input.a;
    return ((_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global1.x, 50380u), vec3<u32>(global1.x, global1.x, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, arg_1.b, 0u), vec3<u32>(18248u, 0u, 0u))) | ~(~vec3<u32>(arg_1.d, arg_1.b, arg_1.b))) | firstTrailingBit(~vec3<u32>(3021u, arg_1.b, 16272u))) >> (abs(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_1.d, arg_1.d)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1222u, 0u, 39545u), vec3<u32>(arg_1.d, 4294967295u, 4807u)), abs(0u)), select(_wgslsmith_mult_u32(22515u, arg_1.d), arg_1.d, true))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(func_4(-936f, Struct_1(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), global1.x, all(vec4<bool>(true, true, true, false)), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(610f, 1404f)), func_1(9312u, _wgslsmith_f_op_f32(f32(-1f) * -831f))), max(vec3<u32>(firstTrailingBit(0u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 34297u, 55146u), vec4<u32>(75313u, 4294967295u, 57060u, 4294967295u))), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(global1.x, 0u, global1.x)), ~vec3<u32>(0u, global1.x, 4294967295u))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), u_input.a == u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    global1 = ~var_0.zx;
    var var_1 = func_4(_wgslsmith_f_op_f32(1896f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(f32(-1f) * -365f), all(vec4<bool>(false, true, false, true))))), Struct_1(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, false), true), 4294967295u, true, func_4(-1537f, Struct_1(vec4<bool>(true, true, false, false), var_0.x, true, 10626u), -492f, Struct_2(u_input.a)).x | 12775u), _wgslsmith_f_op_f32(min(-1000f, -371f)), func_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 48011u, 0u, 81494u), vec4<u32>(var_0.x, 0u, global1.x, 78103u)), vec4<u32>(89703u, global1.x, global1.x, global1.x) << (vec4<u32>(1u, var_0.x, 60798u, var_0.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(165f, _wgslsmith_f_op_f32(round(324f)), any(vec2<bool>(true, true)))))).x & ~global1.x;
    global0 = -1604f;
    var var_2 = var_0.x;
    var var_3 = -17594i;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -110f), var_0.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(947f, 918f), vec2<f32>(-1630f, -894f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1555f, 262f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-458f, -1222f)))))), ~firstLeadingBit(~vec3<i32>(u_input.c, -1i, u_input.a) >> (vec3<u32>(var_0.x, global1.x, 1u) % vec3<u32>(32u))));
}

