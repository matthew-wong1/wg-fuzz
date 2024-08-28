struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = Struct_1(global0.a);
    let var_0 = global0.a.wz;
    return countOneBits(i32(-1i) * -48081i);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = arg_0.x;
    global0 = Struct_1(!arg_1.a.a);
    var var_1 = vec2<i32>(func_3(global0.a.x), 27575i);
    var var_2 = arg_1.b & false;
    var_1 = ~select(_wgslsmith_sub_vec2_i32(~select(vec2<i32>(var_1.x, -10184i), vec2<i32>(-1i, var_1.x), vec2<bool>(false, arg_1.a.a.x)), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-17431i, var_1.x), vec2<i32>(var_1.x, var_1.x), vec2<i32>(-57555i, -17600i)))), ~min(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(0i, var_1.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, var_1.x))), vec2<bool>(true, true));
    return Struct_4(arg_0.x, ~firstLeadingBit(arg_0));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_5 {
    global0 = Struct_1(vec4<bool>(!global0.a.x, global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-769f, -996f, global0.a.x)), 1099f) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1491f)))), global0.a.x));
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f))))));
    var var_1 = 0u & u_input.c.x;
    var_1 = arg_1.b.x;
    let var_2 = u_input.c.x;
    return Struct_5(18185u, 0i, _wgslsmith_sub_i32(firstLeadingBit(func_3(all(vec4<bool>(false, true, true, false)))), -_wgslsmith_mult_i32(select(-9135i, -2147483647i, global0.a.x), _wgslsmith_add_i32(0i, 6278i))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = 5725u;
    global0 = Struct_1(global0.a);
    global0 = Struct_1(global0.a);
    global0 = Struct_1(select(vec4<bool>(true, arg_1.b, any(global0.a.yzy), false), global0.a, arg_1.a));
    global0 = Struct_1(vec4<bool>(false, !arg_1.b, false, !any(global0.a.zw) == true));
    return Struct_1(global0.a);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> vec4<u32> {
    var var_0 = func_2((arg_2.b | select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.c.x, 1u), vec4<u32>(36783u, arg_2.b.x, u_input.c.x, 19468u)), ~u_input.c, !vec4<bool>(true, false, arg_3, arg_1.a.x))) ^ ~vec4<u32>(~arg_2.a, arg_2.a, arg_2.b.x, 0u), Struct_3(arg_1, true), u_input.c.yx);
    var var_1 = arg_2.b.zw;
    let var_2 = Struct_1(global0.a);
    let var_3 = var_0.b.yxz;
    global0 = func_5(Struct_5(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~arg_2.b.yyz, vec3<u32>(var_0.b.x, 4294967295u, arg_2.a)), 1u), abs(~(-1i)), -1i), Struct_2(!select(false, arg_1.a.x, true), true, min(~abs(u_input.b.x), var_0.b.x)), ~arg_2.a);
    return var_0.b;
}

fn func_1(arg_0: bool) -> vec4<f32> {
    let var_0 = Struct_4(abs(1u), func_6(1672f, func_5(func_4(max(u_input.c.x, u_input.b.x), func_2(u_input.c, Struct_3(Struct_1(vec4<bool>(global0.a.x, arg_0, arg_0, true)), true), vec2<u32>(1u, u_input.b.x))), Struct_2(any(global0.a), true, ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.a.x), 1u)), func_2(u_input.c, Struct_3(func_5(Struct_5(4294967295u, -2946i, 0i), Struct_2(arg_0, false, u_input.b.x), u_input.a.x), false), max(~vec2<u32>(56574u, 0u), select(vec2<u32>(1u, u_input.a.x), u_input.b, true))), !global0.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1307f, 789f, -202f)))))));
    global0 = func_5(func_4(1u, Struct_4(max(min(1u, u_input.a.x), 4294967295u), func_6(_wgslsmith_f_op_f32(-var_1.x), func_5(Struct_5(var_0.a, 1i, 1i), Struct_2(global0.a.x, global0.a.x, 1u), 53720u), var_0, true))), Struct_2(9119i <= _wgslsmith_sub_i32(func_4(0u, Struct_4(var_0.b.x, vec4<u32>(u_input.c.x, u_input.c.x, 1u, 4294967295u))).b, min(1i, 2147483647i)), all(global0.a.wxz), u_input.b.x), 4294967295u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1900f));
    var var_3 = Struct_2(false, arg_0, ~(~func_4(0u, Struct_4(0u, u_input.c)).a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -367f, _wgslsmith_f_op_f32(max(var_1.x, var_2)), _wgslsmith_f_op_f32(abs(594f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, 715f, 105f, var_2), vec4<f32>(-470f, 150f, 1271f, -622f), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1387f, -188f, var_2, var_2) + vec4<f32>(var_2, var_2, -1587f, var_2))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1743f, 482f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, var_2, var_2, var_2)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(true)));
    global0 = Struct_1(select(vec4<bool>(true, true, global0.a.x && !global0.a.x, global0.a.x), !select(!global0.a, global0.a, true), vec4<bool>(all(vec3<bool>(true, global0.a.x, global0.a.x)), true, _wgslsmith_f_op_f32(127f + -819f) == _wgslsmith_f_op_f32(356f - var_0.x), true)));
    let var_1 = vec2<u32>(firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 74865u) ^ u_input.a.yz)), 4294967295u ^ u_input.a.x);
    let var_2 = global0.a.yy;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(139f, 712f, 1096f, 1072f) * vec4<f32>(781f, var_0.x, var_0.x, 378f)) - vec4<f32>(1319f, 518f, -1279f, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, -257f, var_0.x, -1534f))))));
    var var_3 = Struct_1(!vec4<bool>(global0.a.x, !global0.a.x, !var_2.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(var_2.x)).x, 104f, _wgslsmith_f_op_f32(775f * -2029f), var_0.x) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 484f, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))));
}

