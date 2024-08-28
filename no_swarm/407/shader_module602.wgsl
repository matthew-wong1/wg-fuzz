struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_u32(u_input.b.x, ~reverseBits(~(~u_input.b.x)));
    global0 = Struct_2(global0.b, global0.c, global0.a, select(vec2<bool>(select(all(vec4<bool>(global0.d.x, false, true, false)), var_0 < arg_3.x, false), global0.c.b.x), vec2<bool>((arg_0 && false) | any(vec3<bool>(true, true, false)), global0.d.x), global0.c.b.wy));
    return vec4<u32>(0u, 4294967295u, abs(u_input.d.x), 1u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x >> (var_0 % 32u), _wgslsmith_div_u32(var_0, 4294967295u), arg_3.x, 1u), ~(~u_input.b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f * 284f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1831f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-574f, 1717f)))), true & !arg_1)), vec3<i32>(~_wgslsmith_mod_i32(u_input.c, -41623i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.c, 11076i, u_input.c), u_input.c, _wgslsmith_add_i32(16941i, u_input.c)), -2494i), u_input.c), 4294967295u, ~func_3(global0.c.b.x, 392f, _wgslsmith_sub_i32(reverseBits(5237i), ~2147483647i), ~_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(10926u, arg_0.x, arg_0.x, 76264u))));
    var var_1 = false;
    let var_2 = firstLeadingBit(~(vec4<u32>(global0.b.a, 33671u, global0.a.a, ~var_0.c) ^ countOneBits(var_0.d)));
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -3489i, -1i, 2147483647i, _wgslsmith_mod_i32(select(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), min(1i, var_0.b.x), arg_1), _wgslsmith_add_i32(var_0.b.x >> (global0.b.a % 32u), ~u_input.a.x))), min(select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, -1580i, var_0.b.x, u_input.a.x), vec4<i32>(var_0.b.x, var_0.b.x, 2147483647i, u_input.c), -vec4<i32>(-2147483647i, -8971i, var_0.b.x, var_0.b.x)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-28992i, u_input.c, 2147483647i, 31324i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, u_input.a.x, u_input.a.x, -42282i), vec4<i32>(10007i, 0i, u_input.c, u_input.c)), vec4<i32>(u_input.c, u_input.c, var_0.b.x, -98983i)), !(1u != var_2.x)), vec4<i32>(-(u_input.a.x >> (47606u % 32u)), 2147483647i, 1i, u_input.a.x >> (var_0.c % 32u))));
    var_1 = arg_1;
    return global0.a;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(898f, 1579f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-464f - 868f) - _wgslsmith_f_op_f32(trunc(2612f))))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(124f, _wgslsmith_f_op_f32(f32(-1f) * -942f), global0.b.b.x)))));
    var var_1 = func_2(~u_input.b.wyw, false);
    global0 = Struct_2(global0.c, global0.c, func_2(vec3<u32>(~global0.c.a, u_input.b.x, var_1.a), false), var_1.b.zw);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-775f)) * -1169f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f))));
    global0 = Struct_2(func_2(u_input.b.ywx, !(!func_2(u_input.b.yyy, var_1.b.x).b.x)), Struct_1(abs(u_input.b.x | 36582u) >> ((12347u >> (u_input.b.x % 32u)) % 32u), !(!func_2(u_input.b.yxy, false).b)), global0.c, select(vec2<bool>(abs(-45247i) < firstTrailingBit(u_input.c), u_input.b.x >= ~40143u), !func_2(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 8142u, 74089u), u_input.b.wxz), false & var_1.b.x).b.xw, var_1.b.yz));
    return Struct_2(global0.c, global0.b, global0.a, vec2<bool>(var_1.b.x, all(select(func_2(u_input.b.zyz, false).b.yxy, !vec3<bool>(var_1.b.x, false, var_1.b.x), any(var_1.b.ww)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global0 = Struct_2(Struct_1(~firstLeadingBit(~11167u), !global0.b.b), global0.a, func_1().a, select(vec2<bool>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) >= -717f, true), !(!global0.a.b.yy), vec2<bool>(global0.a.b.x, true)));
    global0 = arg_1;
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2, arg_2), -32231i), firstLeadingBit(_wgslsmith_sub_i32(firstTrailingBit(arg_2), u_input.a.x)), ~u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_i32(~select(countOneBits(vec4<i32>(2147483647i, arg_2, u_input.c, 0i)), ~vec4<i32>(u_input.a.x, u_input.a.x, -29079i, -3579i), arg_1.a.b), vec4<i32>(-1i) * -select(vec4<i32>(0i, arg_2, u_input.a.x, arg_2), vec4<i32>(u_input.a.x, 52270i, arg_2, 14506i), arg_1.a.b)));
    var var_1 = vec4<bool>(any(vec4<bool>(false, arg_1.d.x, false, global0.a.a >= _wgslsmith_mod_u32(35158u, global0.b.a))), all(vec2<bool>(func_2(~vec3<u32>(arg_1.a.a, u_input.d.x, 0u), arg_0.x == 844f).b.x, (arg_0.x <= -514f) && true)), arg_1.c.b.x, true);
    return func_1();
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = vec4<i32>(i32(-1i) * -u_input.c, -(~2147483647i), -1i, firstTrailingBit(reverseBits(~(~(-53678i)))));
    let var_1 = func_1().a.b;
    global0 = arg_2;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * 202f), _wgslsmith_f_op_f32(abs(1342f)), ~10983i > (u_input.a.x << (arg_0 % 32u))))), min(vec3<i32>(_wgslsmith_sub_i32(var_0.x | 1i, ~u_input.c), _wgslsmith_mod_i32(abs(var_0.x), ~6060i), -9715i), var_0.wzw), 21582u, abs(vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(u_input.d.x, arg_0), 0u, ~0u) >> (u_input.b % vec4<u32>(32u))));
    global0 = func_1();
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_5(4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-591f, _wgslsmith_f_op_f32(738f - -1000f))), func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-466f, -1598f)), vec2<f32>(671f, 315f))), func_1(), _wgslsmith_mult_i32(u_input.c, 0i)), abs(~16450u)), Struct_1(global0.c.a, vec4<bool>(!(!global0.a.b.x), func_5(global0.b.a, vec2<f32>(-612f, -528f), Struct_2(Struct_1(10471u, vec4<bool>(false, global0.d.x, false, false)), global0.b, Struct_1(u_input.b.x, vec4<bool>(global0.a.b.x, global0.a.b.x, global0.c.b.x, false)), vec2<bool>(global0.c.b.x, false)), global0.a.a).a <= (1u >> (u_input.d.x % 32u)), global0.a.b.x, true)), Struct_1(global0.b.a, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, 199f)), func_1(), u_input.c).a.b), select(global0.b.b.wx, func_1().d, true));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1090f), _wgslsmith_f_op_f32(-406f - 430f))) * _wgslsmith_f_op_f32(-129f + _wgslsmith_div_f32(236f, -2042f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 2001f))))), -930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(264f - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(var_0.x)))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.x)))));
    global0 = Struct_2(global0.c, Struct_1(~u_input.b.x, vec4<bool>(all(!global0.a.b.yz), abs(u_input.d.x) >= u_input.b.x, _wgslsmith_sub_u32(u_input.d.x, 4294967295u) <= ~1u, global0.b.b.x)), global0.b, !func_4(var_0.wy, Struct_2(func_2(u_input.b.wwy, global0.a.b.x), global0.c, global0.a, !global0.d), -11094i >> (func_3(false, var_0.x, 13991i, u_input.b).x % 32u)).b.b.wz);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) + var_0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) + _wgslsmith_f_op_vec4_f32(var_0 + var_0))), ~abs(reverseBits(vec4<u32>(u_input.b.x, u_input.d.x, u_input.d.x, global0.a.a))) & min(max(vec4<u32>(12227u, u_input.d.x, 29559u, 4294967295u) & u_input.b, abs(vec4<u32>(8830u, 31664u, global0.c.a, u_input.d.x))), ~u_input.b), select(select(global0.a.b.yzx, select(select(global0.a.b.xwz, vec3<bool>(global0.d.x, global0.c.b.x, global0.d.x), global0.c.b.yxw), func_4(var_0.zx, Struct_2(global0.b, global0.b, global0.c, vec2<bool>(global0.b.b.x, false)), u_input.a.x).b.b.wyw, global0.c.b.xzx), vec3<bool>(true, true, true)), func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -101f))))), func_4(vec2<f32>(-1169f, 734f), Struct_2(global0.a, global0.a, global0.b, vec2<bool>(false, global0.a.b.x)), u_input.a.x), -23956i).b.b.www, all(vec4<bool>(false, select(global0.a.b.x, global0.c.b.x, false), u_input.a.x >= 1i, true))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1043f, var_0.x, _wgslsmith_f_op_f32(max(-1522f, -135f)), _wgslsmith_f_op_f32(var_2.a.x - var_0.x)), var_0, any(func_5(var_2.b.x, vec2<f32>(421f, 1693f), Struct_2(Struct_1(31490u, global0.c.b), Struct_1(1u, global0.a.b), global0.b, vec2<bool>(global0.d.x, global0.c.b.x)), 4294967295u).b.xzz))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(432f + -1927f))), _wgslsmith_f_op_f32(ceil(-1043f)))), ~_wgslsmith_sub_vec4_u32(var_2.b, vec4<u32>(_wgslsmith_add_u32(1u, global0.c.a), global0.b.a, global0.b.a, max(52045u, 57864u))), vec3<bool>(func_4(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-382f - var_2.a.x)), func_1(), 33400i).c.b.x, (-572f < var_0.x) | (true == var_2.c.x), all(!vec4<bool>(var_2.c.x, false, false, global0.c.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_3.b.wzx, firstLeadingBit(var_3.b.ywy)), ~min(var_2.b.zxx, vec3<u32>(u_input.d.x, var_3.b.x, var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -594f)))), var_0.x);
}

