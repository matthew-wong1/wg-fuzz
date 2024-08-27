struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = ~_wgslsmith_div_u32(14077u, u_input.a.x);
    global0 = 4294967295u;
    global0 = min(_wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(u_input.a.x, ~23160u, 1u)), _wgslsmith_div_u32(arg_2.c.x, _wgslsmith_mod_u32(~(4294967295u ^ arg_1.c.x), 0u)));
    var var_0 = false != !select(true, true, false);
    let var_1 = countOneBits(u_input.a);
    return _wgslsmith_f_op_f32(round(-1000f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = select(~(~min(vec4<u32>(u_input.a.x, arg_0.c.x, arg_1.c.x, arg_0.c.x), vec4<u32>(arg_1.c.x, arg_1.c.x, u_input.a.x, 68484u))), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, firstLeadingBit(u_input.a)), abs(arg_0.c.x), u_input.a.x, arg_0.c.x), true) & (~vec4<u32>(0u, ~4687u, ~30960u, 6507u) << ((vec4<u32>(arg_0.c.x, ~arg_1.c.x, u_input.a.x, _wgslsmith_mod_u32(0u, 49283u)) ^ vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(arg_0.c.x, arg_0.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, u_input.a.x, 0u), u_input.a), _wgslsmith_sub_u32(u_input.a.x, 1u))) % vec4<u32>(32u)));
    global0 = ~abs(arg_1.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_0.b.x, arg_1.b.x, arg_1.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -113f, arg_0.b.x, -349f)))))));
    global0 = ~(~arg_0.c.x);
    var var_2 = u_input.a.x;
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(663f * 611f) - _wgslsmith_f_op_f32(max(340f, -1438f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1041f + -963f) * 637f)), -314f))));
    let var_1 = arg_1.zzx;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1093f) - -842f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f + -1897f)))));
    var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(vec4<i32>(-(0i >> (u_input.a.x % 32u)), _wgslsmith_sub_i32(firstLeadingBit(-20628i), countOneBits(-45285i)), ~firstLeadingBit(-14814i), ~1i), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-882f - -1250f))), 1f, _wgslsmith_f_op_f32(func_3(var_1.x, Struct_1(vec4<i32>(19604i, 19529i, 2147483647i, -2147483647i), vec3<f32>(384f, -1148f, 1432f), u_input.a.zx), Struct_1(vec4<i32>(23947i, 21748i, 32339i, 2147483647i), vec3<f32>(-1164f, 876f, -1058f), vec2<u32>(u_input.a.x, u_input.a.x))))), ~abs(vec2<u32>(694u, 30479u))), Struct_1(~vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1652f, -712f, 1514f)))), ~reverseBits(~u_input.a.xz))));
    let var_2 = Struct_1(vec4<i32>(~(-15600i), _wgslsmith_div_i32(~(i32(-1i) * -1i), _wgslsmith_mult_i32(-1i, 1i)), _wgslsmith_add_i32(reverseBits(44903i), _wgslsmith_dot_vec4_i32(vec4<i32>(13582i, -21439i, 1i, -47414i), vec4<i32>(-11396i, -35930i, -24555i, 30458i))) >> (~u_input.a.x % 32u), -countOneBits(~1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -976f, -605f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1187f, -244f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1071f, 1539f, 253f), vec3<f32>(2631f, -1925f, 789f)))) + vec3<f32>(_wgslsmith_f_op_f32(157f - 1106f), 472f, -2330f))), vec2<u32>(46639u, u_input.a.x) >> (firstTrailingBit(abs(~vec2<u32>(0u, 2018u))) % vec2<u32>(32u)));
    return countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_2.a, var_2.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-var_2.a.x, 0i, -7042i, abs(var_2.a.x)), ~(-var_2.a), select(vec4<i32>(-2147483647i, var_2.a.x, 0i, 2147483647i), ~vec4<i32>(var_2.a.x, -71415i, 18649i, 2147483647i), arg_1))));
}

fn func_1() -> vec4<i32> {
    let var_0 = ~(u_input.a << (select(firstLeadingBit(vec3<u32>(u_input.a.x, 90048u, 0u)), u_input.a, true) % vec3<u32>(32u)));
    return _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -1i, 0i, 1i, _wgslsmith_mod_i32(func_2(false, vec4<bool>(true, false, false, false)), 1i)), ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, 2147483647i, -2147483647i), 1i), 1i, -2147483647i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(), vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(~vec4<i32>(0i, 0i, 0i, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(2297f, 692f, -744f) - vec3<f32>(491f, -2283f, -1741f)), countOneBits(vec2<u32>(u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 0i, 0i), vec4<i32>(-1i, -1i, -2147483647i, 1i)), vec3<f32>(-550f, -1224f, -408f), u_input.a.yz))), 1648f, -1000f), reverseBits(vec2<u32>(~u_input.a.x, u_input.a.x)));
    var var_1 = vec3<u32>(23204u, select(39469u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(4294967295u, var_0.c.x, 1794u), firstLeadingBit(~98496u)), true), countOneBits(countOneBits(1u)));
    var var_2 = _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x);
    let var_3 = Struct_1(firstLeadingBit(var_0.a) | -min(var_0.a, vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, 14257i)), _wgslsmith_f_op_vec3_f32(min(var_0.b, var_0.b)), u_input.a.yx);
    var var_4 = max(-(var_0.a.x ^ _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_3.a, var_0.a, var_0.a), vec4<i32>(9368i, var_0.a.x, -2147483647i, var_0.a.x))), abs(_wgslsmith_mult_i32(12211i, max(max(22145i, 2147483647i), var_0.a.x))));
    var var_5 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.c.x, var_0.c.x << (~u_input.a.x % 32u), var_0.c.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(max(23771u, var_1.x), _wgslsmith_mult_u32(1u, 1u), _wgslsmith_mod_u32(var_0.c.x, 4294967295u)), ((u_input.a ^ u_input.a) | ~u_input.a) << (firstTrailingBit(~u_input.a) % vec3<u32>(32u))));
    var var_6 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, false), true, var_5.x <= var_0.c.x, true), 1i != var_3.a.x));
    var_4 = firstLeadingBit(-var_3.a.x);
    let var_7 = vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(~(-var_0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-25977i, var_0.a.x, 2147483647i, var_0.a.x) << (vec4<u32>(1u, 73542u, var_3.c.x, var_0.c.x) % vec4<u32>(32u)), vec4<i32>(-4735i, -2147483647i, 43516i, var_3.a.x)), reverseBits(min(vec4<i32>(var_0.a.x, var_3.a.x, var_0.a.x, var_3.a.x), var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(~var_0.c.x, var_3.c.x >> (abs(var_3.c.x) % 32u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(10741u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.c.x, var_1.x), vec3<u32>(0u, u_input.a.x, u_input.a.x))), ~min(4294967295u, 4294967295u)), 0u), var_3.a.yw << (_wgslsmith_mod_vec2_u32(~var_1.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), var_3.c) ^ var_0.c) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, var_1.x));
}

