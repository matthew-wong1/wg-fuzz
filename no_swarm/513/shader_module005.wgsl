struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> vec4<bool> {
    global0 = vec4<bool>(!global0.x, true, any(!vec4<bool>(true, all(vec2<bool>(global0.x, true)), global0.x && global0.x, all(global0.wxx))), true);
    var var_0 = -710f;
    return !(!(!vec4<bool>(true, any(vec3<bool>(true, global0.x, true)), true, !global0.x)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = select(select(~(~_wgslsmith_add_vec3_u32(u_input.a.yzx, vec3<u32>(u_input.a.x, u_input.a.x, 7891u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.a.x)), ~vec3<u32>(1u, u_input.a.x, 15562u)), vec3<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true, true)), _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_sub_u32(18715u, u_input.b)), u_input.a.x, min(firstLeadingBit(u_input.b), 1u)), u_input.a.zyy), false);
    var var_1 = 1i;
    let var_2 = Struct_1(-750f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2175f, 851f) - -701f) + _wgslsmith_div_f32(134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1077f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0), ~firstTrailingBit(u_input.a ^ vec4<u32>(4294967295u, 30260u, var_0.x, u_input.b)));
    let var_3 = -abs(vec4<i32>(-30352i, _wgslsmith_mult_i32(u_input.c.x, firstTrailingBit(-24406i)), -u_input.c.x, -29127i));
    let var_4 = var_2;
    return firstLeadingBit(54241u);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = !any(!(!(!global0.wxz)));
    var var_1 = u_input.c.x;
    var var_2 = arg_1;
    var var_3 = ~(~vec3<i32>(u_input.c.x, ~min(0i, 0i), u_input.c.x));
    let var_4 = arg_1;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1610f, arg_1.c.x, 1957f, -1203f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-251f, -184f, -677f, arg_2.b) + vec4<f32>(arg_1.c.x, 966f, var_2.c.x, 1530f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, 1052f, var_2.b, 1009f)), func_1().x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, arg_1.c.x, 1358f, 1523f), vec4<f32>(913f, 305f, arg_1.a, -1185f), func_1().x)), vec4<f32>(var_2.a, _wgslsmith_f_op_f32(floor(arg_1.b)), _wgslsmith_div_f32(arg_2.c.x, -1347f), var_4.a)))))));
}

fn func_2(arg_0: vec4<i32>) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -619f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(354f - 951f), -924f))), _wgslsmith_div_vec3_f32(vec3<f32>(-660f, -188f, _wgslsmith_f_op_f32(f32(-1f) * -604f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(469f, 638f, -545f)))))), ~vec4<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, u_input.a.x), u_input.a), _wgslsmith_div_u32(_wgslsmith_mod_u32(38624u, 1u), ~u_input.b), _wgslsmith_mod_u32(4294967295u & u_input.b, u_input.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-177f, var_0.a, var_0.c.x, var_0.c.x), vec4<f32>(-1684f, -1000f, -446f, 1000f))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-509f, -158f, -141f, -964f)), vec4<f32>(328f, var_0.b, var_0.c.x, -1412f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.c.x, var_0.a, var_0.c.x), vec4<f32>(var_0.a, 180f, var_0.a, var_0.c.x), global0.x)))))) * _wgslsmith_f_op_vec4_f32(func_4(u_input.c.x < select(8570i, select(u_input.c.x, arg_0.x, true), 54173u > var_0.d.x), Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - -144f), var_0.c, vec4<u32>(func_3(-779f), abs(var_0.d.x), firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(u_input.b, 4294967295u))), var_0)));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(global0.x, var_0, var_0));
    var var_3 = 4294967295u;
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(-1579f)), _wgslsmith_mod_u32(var_0.d.x, ~_wgslsmith_mod_u32(var_0.d.x, u_input.a.x ^ 5846u)), ~(~(vec4<u32>(u_input.b, var_0.d.x, u_input.b, 32844u) << (min(vec4<u32>(var_0.d.x, var_0.d.x, 74831u, 0u), var_0.d) % vec4<u32>(32u)))), -2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-12638i, _wgslsmith_sub_i32(~(-70119i), 1i)), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.xy, reverseBits(_wgslsmith_add_vec2_i32(u_input.c.yz, u_input.c.yy))), u_input.c.yx);
    var var_1 = global0.x || select(global0.x, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(878f - 1518f), _wgslsmith_f_op_f32(-445f - 265f)) < _wgslsmith_f_op_f32(select(-291f, -167f, true)));
    var_1 = _wgslsmith_add_i32(abs(-var_0), 0i | (var_0 << (~0u % 32u))) > firstLeadingBit(min(u_input.c.x, _wgslsmith_clamp_i32(var_0 | u_input.c.x, var_0, u_input.c.x)));
    let x = u_input.a;
    s_output = func_2(vec4<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 1i, var_0, -13052i), vec4<i32>(u_input.c.x, 17874i, -15272i, u_input.c.x)) ^ (u_input.c.x >> (63792u % 32u))), _wgslsmith_div_i32(i32(-1i) * -17198i, var_0), ~var_0, i32(-1i) * -2147483647i));
}

