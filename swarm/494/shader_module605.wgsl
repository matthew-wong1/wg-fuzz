struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(24114i, 1i, -49489i, -11148i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    global1 = array<vec4<i32>, 1>();
    global0 = !(!(!(!(!vec4<bool>(false, global0.x, false, global0.x)))));
    global1 = array<vec4<i32>, 1>();
    var var_0 = Struct_2(Struct_1(firstLeadingBit(vec2<i32>(1i, -3220i)) << (~(~vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u)), true, !vec3<bool>(global0.x, true, global0.x | true)));
    let var_1 = any(global0.xyy);
    return global0.x;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> vec3<bool> {
    global1 = array<vec4<i32>, 1>();
    var var_0 = u_input.a.x;
    global1 = array<vec4<i32>, 1>();
    let var_1 = -1000f;
    var var_2 = _wgslsmith_div_vec2_u32(~u_input.a.zz, ~firstLeadingBit(~u_input.a.yz | u_input.a.zz));
    return select(select(!(!(!global0.zzy)), global0.wwy, arg_0), vec3<bool>(arg_0, false & ((arg_2.x < -527f) && false), false), global0.wzy);
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = any(func_3(true || func_1(), select(4294967295u, u_input.a.x, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-124f, -1601f, 947f) + vec3<f32>(-1536f, 1000f, 623f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1297f, -108f, -464f), vec3<f32>(269f, 406f, -888f))))));
    global0 = vec4<bool>(arg_0, !arg_0, !(u_input.a.x <= 37634u), any(!global0.yxz) != false);
    let var_1 = Struct_3(Struct_2(Struct_1(vec2<i32>(-36734i >> (1u % 32u), -2147483647i), false, global0.yzx)));
    let var_2 = arg_0;
    let var_3 = Struct_2(var_1.a.a);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(func_1(), !((4294967295u & _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) <= 50734u), select(true, true, global0.x) && true, func_1());
    let var_0 = Struct_2(Struct_1(~firstTrailingBit(-vec2<i32>(0i, 0i)), global0.x, global0.www));
    var var_1 = false;
    var var_2 = var_0;
    var var_3 = vec2<bool>(true, all(select(var_0.a.c.yz, vec2<bool>(true, func_2(false)), vec2<bool>(true, !var_0.a.c.x))));
    let var_4 = Struct_4(var_2.a.c.yx, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(-vec3<i32>(-6126i, -11831i, -1i), -vec3<i32>(-1i, var_0.a.a.x, 40792i)), var_2.a.a.x), Struct_3(var_0), Struct_3(Struct_2(Struct_1(-vec2<i32>(var_0.a.a.x, var_2.a.a.x), true, select(var_2.a.c, vec3<bool>(true, false, true), global0.yyy)))));
    var var_5 = true;
    let var_6 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - 1f), 2136f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(752f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(199f, 1648f, true)))), 1568f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1235f)), _wgslsmith_f_op_f32(1000f * 915f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(188f, -981f)))))));
    var var_7 = _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, abs(firstTrailingBit(u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1941f - 2082f))), ~(~56619u), _wgslsmith_f_op_f32(abs(951f)), abs(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-13830i, var_2.a.a.x, var_4.d.a.a.a.x)), ~vec3<i32>(24522i, var_0.a.a.x, -32426i)), -(vec3<i32>(-7981i, 2147483647i, var_4.c.a.a.a.x) ^ vec3<i32>(var_4.c.a.a.a.x, 0i, 63156i)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~62866u, ~u_input.a.x), 51938u, _wgslsmith_clamp_u32(0u, ~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 1u)), ~(~4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(38261u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 63228u), u_input.a), countOneBits(1u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(3796u, u_input.a.x, 4294967295u, 1u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
}

