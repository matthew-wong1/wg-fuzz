struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> bool {
    let var_0 = Struct_1(-_wgslsmith_mod_vec4_i32(select(vec4<i32>(-17574i, -2147483647i, u_input.a.x, -1i) << (vec4<u32>(u_input.b.x, u_input.b.x, 23964u, 0u) % vec4<u32>(32u)), vec4<i32>(u_input.d.x, 32510i, u_input.a.x, u_input.a.x), false), ~(~vec4<i32>(0i, u_input.d.x, u_input.c.x, 20589i))), vec2<i32>((-52667i & u_input.a.x) >> ((4294967295u & u_input.b.x) % 32u), 1i ^ select(-669i, u_input.c.x, false)) | u_input.c, u_input.b.x);
    var var_1 = Struct_1(vec4<i32>(0i, _wgslsmith_sub_i32(1i, u_input.a.x >> (21461u % 32u)), -64710i, u_input.d.x) | _wgslsmith_div_vec4_i32(~var_0.a, min(var_0.a, _wgslsmith_clamp_vec4_i32(var_0.a, var_0.a, vec4<i32>(-40962i, u_input.d.x, u_input.d.x, 2147483647i)))), select(vec2<i32>(-_wgslsmith_mult_i32(var_0.a.x, -16467i), u_input.d.x), vec2<i32>(-43943i, -1i & u_input.a.x), u_input.b.x >= var_0.c), _wgslsmith_dot_vec3_u32(u_input.b.wxz, u_input.b.ywx));
    let var_2 = false;
    let var_3 = 1i;
    var_1 = var_0;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)), vec4<f32>(-292f, 679f, -924f, arg_1), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 682f, -484f) * vec4<f32>(-284f, 398f, arg_1, -654f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1195f, arg_1, arg_1, -285f))), true)), true)));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(arg_2.a, vec4<i32>(firstLeadingBit(-60377i), 16174i, 0i, _wgslsmith_div_i32(u_input.d.x, 1i))), vec4<i32>(53805i, 26778i, firstLeadingBit(-2147483647i), arg_2.a.x)), ~vec2<i32>(-(arg_2.b.x ^ u_input.d.x), var_0.a.x), abs(arg_2.c));
    let var_3 = 1u;
    var_2 = Struct_1(~vec4<i32>(-2147483647i, firstTrailingBit(1i), min(0i, -87307i) | (arg_2.b.x ^ 0i), var_2.a.x | -2147483647i), u_input.a.xx, arg_2.c);
    return firstLeadingBit(vec2<i32>(-1i, ~(var_2.b.x << (var_0.c % 32u))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = 692f;
    let var_1 = vec4<bool>(!(!(!all(vec2<bool>(true, true)))), !(!(!any(vec3<bool>(false, false, false)))), true, func_2());
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.d.x, -2147483647i), vec3<i32>(-5460i, u_input.d.x, 46243i)), vec3<i32>(-1i) * -vec3<i32>(-34667i, 45308i, -1i)), arg_0.a.x, _wgslsmith_sub_i32(~(i32(-1i) * -57586i), 28384i), abs(abs(_wgslsmith_div_i32(u_input.a.x, arg_0.a.x)))), _wgslsmith_clamp_vec2_i32(select(reverseBits(u_input.c), ~(arg_0.b & vec2<i32>(arg_0.a.x, u_input.d.x)), var_1.xy), select(_wgslsmith_mod_vec2_i32(arg_0.b, u_input.c) ^ func_3(arg_0, 1971f, Struct_1(arg_0.a, u_input.d, u_input.b.x), u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-54344i, 1i), ~vec2<i32>(15053i, arg_0.b.x)), vec2<bool>(true || var_1.x, !var_1.x)), _wgslsmith_sub_vec2_i32(arg_0.a.xx, select(vec2<i32>(u_input.d.x, arg_0.a.x), u_input.d, var_1.xw))), arg_0.c);
    var var_3 = _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, arg_0.c), u_input.b.x);
    var var_4 = select(select(!select(var_1, !vec4<bool>(var_1.x, true, false, false), all(vec2<bool>(false, true))), !(!var_1), true), select(vec4<bool>(true, all(!var_1.yx), true, all(var_1.yyx)), vec4<bool>(any(select(var_1.xw, var_1.zw, var_1.x)), var_1.x, var_1.x, any(var_1.wx)), select(vec4<bool>(var_1.x, false, true, true), select(vec4<bool>(var_1.x, var_1.x, false, false), select(var_1, var_1, var_1.x), var_1), !func_2())), !(!any(var_1.xxy)));
    return _wgslsmith_f_op_f32(abs(-879f));
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-482f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(778f - 1615f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(876f, -2209f)))))), -1635f, 2255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-798f, 1000f)) + 731f), -1444f, select(u_input.a.x <= u_input.c.x, true, arg_0 || true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(1i, u_input.c.x, -2147483647i, 1i), vec2<i32>(u_input.c.x, -1i), u_input.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f * -921f) + _wgslsmith_f_op_f32(max(-1516f, 223f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-237f, _wgslsmith_div_f32(869f, var_0.x), -488f, _wgslsmith_f_op_f32(max(-715f, var_0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, 367f, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(596f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1205f, var_0.x, 336f)))))))));
    var var_1 = _wgslsmith_div_vec3_i32(u_input.a, select(vec3<i32>(~firstLeadingBit(u_input.d.x), -1i, u_input.c.x), vec3<i32>(max(2147483647i, i32(-1i) * -2147483647i), 2147483647i, -min(1i, u_input.a.x)), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, true, false), 14950u != u_input.b.x), select(vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, false, true), vec3<bool>(true, true, arg_0)), arg_0), !select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, true, false)))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.zxz, var_0.wwy)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.www, var_0.zxx), var_0.xww))));
    var var_3 = true || any(vec4<bool>(false, false, all(!vec2<bool>(arg_0, arg_0)), arg_0));
    return Struct_1(~(-abs(vec4<i32>(-11684i, -2147483647i, var_1.x, 2147483647i)) | _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c.x, var_1.x, -12498i, u_input.c.x), ~vec4<i32>(-2147483647i, 1i, 1i, 19510i))), var_1.yx, _wgslsmith_mod_u32(u_input.b.x, max(_wgslsmith_dot_vec2_u32(u_input.b.yz, ~u_input.b.yx), ~(~u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(step(721f, _wgslsmith_f_op_f32(select(1031f, _wgslsmith_f_op_f32(round(1000f)), true)))) != _wgslsmith_f_op_f32(1233f - _wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(-2147483647i, -1i, u_input.c.x, u_input.a.x), vec2<i32>(-2147483647i, -8761i), u_input.b.x)))));
    var var_1 = Struct_1(firstTrailingBit(abs(var_0.a ^ ~var_0.a)), _wgslsmith_sub_vec2_i32(~select(vec2<i32>(u_input.d.x, -13259i), u_input.d, select(vec2<bool>(false, false), vec2<bool>(false, false), true)), ~(var_0.b | vec2<i32>(var_0.b.x, -11207i)) ^ _wgslsmith_add_vec2_i32(-var_0.a.xw, firstLeadingBit(var_0.a.zw))), ~var_0.c);
    var_1 = var_0;
    var var_2 = all(vec3<bool>(true, ~var_0.c < 0u, true)) | (-1000f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-414f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-279f)))), true)));
    var var_3 = _wgslsmith_div_u32(~abs(var_0.c), _wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, ~u_input.b.x), countOneBits(min(vec2<u32>(var_1.c, var_0.c), vec2<u32>(var_1.c, 31267u)))), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(28621u, var_0.c, 4294967295u), vec3<u32>(var_1.c, 59787u, 0u))), ~var_0.c)));
    let var_4 = Struct_1(var_1.a, ~vec2<i32>(0i, 27586i), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(var_1.c, var_1.c), firstLeadingBit(~var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c);
}

