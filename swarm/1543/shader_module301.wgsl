struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<f32>) -> bool {
    let var_0 = arg_2;
    var var_1 = -566f;
    let var_2 = _wgslsmith_add_u32(~var_0, var_0 ^ ~var_0);
    let var_3 = Struct_3(vec4<u32>(u_input.b.x, arg_0, 82552u, 4294967295u), Struct_2(arg_1.a, min(66803u, select(firstLeadingBit(arg_0), 8261u, any(vec4<bool>(false, true, true, false)))), arg_1.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1010f, -205f, 1928f, -718f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1039f, 199f, 218f, arg_3.x))))))), Struct_2(arg_1.a, arg_1.b, -arg_1.c), 22784u);
    let var_4 = !vec2<bool>(any(!select(vec4<bool>(false, true, true, arg_1.a.a), vec4<bool>(var_3.d.a.a, arg_1.a.a, false, arg_1.a.a), vec4<bool>(true, false, true, false))), all(select(vec3<bool>(var_3.b.a.a, false, var_3.d.a.a), !vec3<bool>(var_3.b.a.a, var_3.b.a.a, arg_1.a.a), false)));
    return !any(select(select(select(vec3<bool>(arg_1.a.a, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, arg_1.a.a), vec3<bool>(arg_1.a.a, true, false), false), all(vec3<bool>(false, true, false))), !(!vec3<bool>(arg_1.a.a, arg_1.a.a, true)), false));
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 969f)) * -338f)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(780f, 3182f, global0.x, var_0.x), vec4<f32>(var_0.x, global0.x, 498f, var_0.x), false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1497f, 597f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1622f, 1000f, 1000f, -644f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1031f, 1000f, 337f, var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, global0.x, -320f, var_0.x), vec4<f32>(-2415f, -1000f, global0.x, 1726f), true))))))));
    let var_1 = Struct_1(((true && func_3(4535u, Struct_2(Struct_1(true, u_input.b.x), 4294967295u, vec3<i32>(67288i, 2147483647i, -18489i)), 0u, global0.zy)) && all(vec2<bool>(true, true))) != (_wgslsmith_f_op_f32(step(1992f, _wgslsmith_f_op_f32(-global0.x))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -259f))), u_input.c.x);
    var var_2 = _wgslsmith_div_f32(global0.x, var_0.x);
    let var_3 = _wgslsmith_mod_vec2_i32(-vec2<i32>(84506i, ~1i), _wgslsmith_div_vec2_i32(firstTrailingBit(abs(-vec2<i32>(2147483647i, 31902i))), _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 1i), -firstTrailingBit(vec2<i32>(-23747i, 1i)))));
    return Struct_2(var_1, u_input.c.x, _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~(~vec3<i32>(4031i, var_3.x, var_3.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.x, var_3.x, 2147483647i), ~vec3<i32>(1701i, var_3.x, 6180i), -vec3<i32>(var_3.x, 2147483647i, var_3.x))), -_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -399i, -32681i), vec3<i32>(-3870i, 1i, -43227i) ^ vec3<i32>(var_3.x, -2147483647i, var_3.x))));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_3(countOneBits(u_input.b), func_2(), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -714f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-736f, global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1161f, 1000f) + _wgslsmith_f_op_f32(-global0.x))))), func_2(), _wgslsmith_mult_u32(arg_1.x, (u_input.a.x >> (61398u % 32u)) ^ arg_0));
    let var_1 = !(!vec4<bool>(var_0.d.a.a, all(!vec3<bool>(true, var_0.b.a.a, var_0.b.a.a)), !any(vec4<bool>(var_0.b.a.a, true, var_0.d.a.a, false)), all(select(vec3<bool>(false, true, var_0.b.a.a), vec3<bool>(var_0.d.a.a, false, var_0.b.a.a), vec3<bool>(true, var_0.d.a.a, var_0.b.a.a)))));
    var var_2 = var_0;
    var var_3 = var_0.a.wy;
    let var_4 = -446f;
    return Struct_4(firstTrailingBit(vec2<i32>(var_2.d.c.x, ~2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(280f)))), var_1.wx);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    var var_0 = select(vec4<i32>(func_1(_wgslsmith_mult_u32(arg_2, arg_3.d.a.b) >> ((u_input.d.x >> (arg_3.e % 32u)) % 32u), ~(~u_input.b.zxx)).a.x, -15729i, min(arg_3.b.c.x ^ -49879i, -39858i), arg_3.b.c.x), vec4<i32>(arg_0.a.x, 0i, _wgslsmith_add_i32(~_wgslsmith_add_i32(arg_0.a.x, -25834i), func_1(71385u, vec3<u32>(27964u, arg_3.d.a.b, arg_2)).a.x), 0i), !(!vec4<bool>(false, arg_1.c.x, arg_3.b.a.a, arg_3.d.a.a)));
    var_0 = _wgslsmith_mult_vec4_i32(~countOneBits(countOneBits(max(vec4<i32>(var_0.x, arg_3.b.c.x, var_0.x, -34851i), vec4<i32>(2147483647i, var_0.x, -51188i, -1i)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.x, _wgslsmith_sub_i32(-1i, arg_1.a.x), var_0.x, arg_3.b.c.x), vec4<i32>(6508i | var_0.x, -5819i, ~arg_3.b.c.x, arg_3.b.c.x << (arg_2 % 32u)), vec4<i32>(var_0.x, 1i, -8775i, arg_1.a.x | arg_1.a.x)));
    let var_1 = arg_1.c.x;
    var var_2 = func_2().a;
    let var_3 = vec2<bool>(!(!var_2.a), select(var_2.a & func_2().a.a, all(arg_1.c), func_1(firstTrailingBit(var_2.b), countOneBits(arg_3.a.xww)).c.x != false));
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = max(arg_1.d.c.x, -6732i) << (1u % 32u);
    let var_1 = !select(vec3<bool>(!(!arg_0.c.x), all(vec4<bool>(arg_1.b.a.a, arg_0.c.x, arg_0.c.x, arg_0.c.x)), arg_1.b.a.a), vec3<bool>(true, !(false && arg_0.c.x), false), true);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(ceil(-534f)), _wgslsmith_f_op_f32(-func_1(35828u, vec3<u32>(18262u, u_input.b.x, 4294967295u)).b))));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1.c)), _wgslsmith_f_op_vec4_f32(step(arg_1.c, _wgslsmith_f_op_vec4_f32(trunc(arg_1.c))))))));
    global0 = vec4<f32>(_wgslsmith_div_f32(arg_1.c.x, global0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -1060f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1141f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b)))))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1606f))))));
    return arg_1.b;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> StorageBuffer {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(426f * global0.x) - global0.x) < global0.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) == _wgslsmith_f_op_f32(min(func_4(Struct_4(vec2<i32>(arg_0.c.x, 2147483647i), -714f, arg_1.xy), Struct_4(vec2<i32>(2357i, arg_0.c.x), global0.x, arg_1.xz), 20380u | arg_0.b, Struct_3(u_input.a, arg_0, vec4<f32>(-1143f, -1000f, global0.x, 219f), arg_0, 4294967295u)).b, 1314f)), func_4(Struct_4(arg_0.c.zz, -1083f, func_4(func_1(1u, vec3<u32>(arg_0.b, 4294967295u, 0u)), func_4(Struct_4(vec2<i32>(arg_0.c.x, arg_2), 257f, vec2<bool>(arg_1.x, false)), Struct_4(vec2<i32>(0i, arg_2), 132f, arg_1.xx), 78775u, Struct_3(vec4<u32>(arg_0.a.b, u_input.d.x, 40219u, 0u), arg_0, vec4<f32>(102f, -1000f, global0.x, 1751f), Struct_2(arg_0.a, arg_0.b, arg_0.c), 0u)), _wgslsmith_mod_u32(81653u, u_input.c.x), Struct_3(vec4<u32>(4294967295u, arg_0.b, arg_0.a.b, 0u), arg_0, vec4<f32>(global0.x, 1941f, global0.x, global0.x), Struct_2(arg_0.a, 75755u, arg_0.c), 75691u)).c), Struct_4(arg_0.c.zz, -846f, func_4(func_1(arg_0.a.b, u_input.c), Struct_4(vec2<i32>(arg_2, arg_0.c.x), global0.x, vec2<bool>(arg_0.a.a, arg_1.x)), u_input.a.x, Struct_3(u_input.a, Struct_2(Struct_1(arg_0.a.a, arg_0.a.b), arg_0.a.b, vec3<i32>(-53722i, -24948i, -2147483647i)), vec4<f32>(152f, -416f, global0.x, 1307f), Struct_2(arg_0.a, 1u, arg_0.c), arg_0.b)).c), func_2().a.b, Struct_3(vec4<u32>(4294967295u, 17206u ^ arg_0.b, arg_0.b, _wgslsmith_sub_u32(u_input.d.x, u_input.b.x)), func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -924f, -1567f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1355f, global0.x, -565f, -1378f))), Struct_2(Struct_1(arg_1.x, 4294967295u), _wgslsmith_clamp_u32(28904u, 44118u, arg_0.b), -vec3<i32>(arg_2, -56797i, -1i)), ~func_5(Struct_4(vec2<i32>(arg_0.c.x, arg_2), -2409f, arg_1.xx), Struct_3(vec4<u32>(arg_0.b, arg_0.b, 1u, u_input.a.x), Struct_2(Struct_1(true, arg_0.b), 0u, vec3<i32>(arg_2, arg_2, arg_2)), vec4<f32>(global0.x, 1391f, global0.x, global0.x), Struct_2(Struct_1(true, arg_0.b), u_input.d.x, arg_0.c), arg_0.a.b)).b)).c.x);
    var var_1 = !select(arg_1.zx, select(vec2<bool>(true, true), var_0.yy, all(vec4<bool>(var_0.x, arg_1.x, arg_0.a.a, arg_0.a.a))), func_2().a.a);
    var var_2 = ~u_input.d.x;
    var_2 = 100480u;
    var var_3 = select(arg_1.x, true, ((~arg_0.b | u_input.b.x) > arg_0.b) & false);
    return StorageBuffer(2147483647i, ~0u, -arg_0.c.xy ^ arg_0.c.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-7647i, 0i, 2147483647i, -37182i), -vec4<i32>(1i, 1i, 1i, 1i));
    var_0 = vec4<i32>(var_0.x, var_0.x, var_0.x, _wgslsmith_clamp_i32(-select(~(-2147483647i), ~var_0.x, true), var_0.x, ~_wgslsmith_div_i32(-var_0.x, i32(-1i) * -2940i)));
    var var_1 = var_0.wz;
    let var_2 = true;
    var_0 = min(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, -2835i, 37863i), vec4<i32>(31687i, var_1.x, -72971i, 14706i) & vec4<i32>(var_1.x, var_0.x, var_1.x, 92787i)), vec4<i32>(var_0.x, -36143i, ~2347i, -var_1.x), vec4<i32>(var_1.x, i32(-1i) * -3518i, 0i, var_0.x ^ var_1.x)), vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x));
    let x = u_input.a;
    s_output = func_6(func_5(func_4(Struct_4(var_0.ww, _wgslsmith_f_op_f32(369f + global0.x), select(vec2<bool>(false, var_2), vec2<bool>(var_2, var_2), true)), func_1(u_input.b.x, u_input.c), 1u, Struct_3(vec4<u32>(u_input.c.x, u_input.a.x, 0u, 83411u), Struct_2(Struct_1(var_2, u_input.d.x), u_input.b.x, vec3<i32>(-10288i, var_1.x, 0i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 1292f, global0.x, -1010f))), func_2(), ~0u)), Struct_3(~u_input.d | countOneBits(vec4<u32>(u_input.d.x, u_input.a.x, u_input.c.x, 0u)), func_2(), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1245f, global0.x, 137f, 1532f)))), func_2(), ~(~u_input.d.x))), !vec3<bool>(any(select(vec2<bool>(var_2, true), vec2<bool>(true, false), var_2)), var_2, func_4(Struct_4(var_0.xx, global0.x, vec2<bool>(false, var_2)), func_1(u_input.b.x, u_input.b.xwx), 1u, Struct_3(vec4<u32>(u_input.a.x, u_input.d.x, u_input.b.x, u_input.a.x), Struct_2(Struct_1(var_2, 29941u), u_input.d.x, vec3<i32>(var_1.x, 1i, 2147483647i)), vec4<f32>(931f, 274f, -1121f, -335f), Struct_2(Struct_1(true, 95594u), 8360u, vec3<i32>(var_1.x, 0i, var_0.x)), u_input.c.x)).c.x), var_0.x);
}

