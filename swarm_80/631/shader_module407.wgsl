struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, true, Struct_1(-1061f, vec3<i32>(19663i, 1574i, 0i), vec3<f32>(-232f, 1218f, 332f), vec2<u32>(1u, 23536u), vec4<bool>(false, false, true, false)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = ~global0.c.d.x;
    let var_1 = global0.b;
    global0 = Struct_4(any(arg_0.a.e.yz), arg_0.a.e.x, global0.c);
    global0 = Struct_4(all(!select(select(vec3<bool>(global0.b, false, true), global0.c.e.wzy, vec3<bool>(global0.c.e.x, true, arg_0.a.e.x)), global0.c.e.xzw, global0.c.e.zyy)), true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c.a, _wgslsmith_f_op_f32(floor(global0.c.c.x)))) + global0.c.a), arg_0.a.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-841f, global0.c.c.x, _wgslsmith_f_op_f32(1454f - arg_0.a.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a.a, arg_0.a.a, global0.c.a)))))), u_input.c.zx, !global0.c.e));
    var var_2 = Struct_2(arg_0.a);
    return ~_wgslsmith_sub_u32(firstTrailingBit(~4294967295u), 4389u >> (countOneBits(reverseBits(u_input.b)) % 32u));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = global0.c.e.wz;
    var_0 = select(vec2<bool>(false, func_3(Struct_2(Struct_1(global0.c.c.x, arg_2.a, vec3<f32>(global0.c.c.x, arg_0.c.a, -1909f), vec2<u32>(arg_0.c.d.x, 1u), vec4<bool>(arg_0.a, arg_0.a, var_0.x, arg_0.c.e.x)))) <= ~min(807u, 4369u)), select(!global0.c.e.wy, vec2<bool>(true, false), vec2<bool>(all(select(arg_0.c.e, arg_0.c.e, global0.c.e)), !(global0.c.e.x && true))), (select(any(vec4<bool>(true, true, false, false)), all(global0.c.e), true || var_0.x) | !any(vec2<bool>(false, var_0.x))) && var_0.x);
    let var_1 = abs(firstTrailingBit(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.c.b.xz, arg_0.c.b.xx), 2147483647i, _wgslsmith_add_i32(0i, 35904i), arg_1))));
    let var_2 = _wgslsmith_f_op_f32(min(global0.c.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1948f - arg_0.c.a)))));
    var var_3 = arg_2;
    return Struct_1(_wgslsmith_f_op_f32(arg_0.c.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d - var_2) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1571f - 1305f), _wgslsmith_f_op_f32(floor(517f)))))), -(arg_2.a | _wgslsmith_mod_vec3_i32(var_3.a, global0.c.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.c) + global0.c.c), ~arg_0.c.d, !select(select(vec4<bool>(arg_0.a, true, var_0.x, true), !vec4<bool>(global0.b, var_0.x, true, global0.b), !vec4<bool>(true, true, global0.c.e.x, global0.c.e.x)), vec4<bool>(!var_0.x, true, global0.c.d.x == arg_0.c.d.x, !global0.b), true));
}

fn func_1() -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343f * -381f)))) + _wgslsmith_f_op_f32(-global0.c.a)), 1077f);
    global0 = Struct_4(global0.b | (all(vec2<bool>(false, global0.b)) && false), false, func_2(Struct_4(any(global0.c.e.wx), !global0.c.e.x, Struct_1(-1608f, -vec3<i32>(1i, global0.c.b.x, -5997i), _wgslsmith_f_op_vec3_f32(trunc(global0.c.c)), vec2<u32>(u_input.b, 17095u), select(vec4<bool>(false, true, global0.b, false), vec4<bool>(true, true, true, global0.c.e.x), global0.c.e))), -1i, Struct_3(~(global0.c.b & global0.c.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 423f), _wgslsmith_f_op_f32(165f * global0.c.c.x), false)), global0.c.b.x, -614f)));
    let var_1 = Struct_5(global0.c.e.yxw, global0.c.c, 2772i, global0.c.e.xz, 4294967295u);
    let var_2 = vec2<i32>(~var_1.c, func_2(Struct_4(true, true, Struct_1(global0.c.a, vec3<i32>(-25390i, global0.c.b.x, 2316i), var_1.b, vec2<u32>(11777u, 31273u), global0.c.e)), ~1i, Struct_3(_wgslsmith_add_vec3_i32(vec3<i32>(8510i, var_1.c, var_1.c), global0.c.b), var_0.x, ~var_1.c, var_1.b.x)).b.x) ^ firstLeadingBit(~max(reverseBits(global0.c.b.zy), global0.c.b.yx));
    var var_3 = Struct_4(true, global0.b, func_2(Struct_4(var_1.d.x, true, global0.c), _wgslsmith_add_i32(-_wgslsmith_clamp_i32(-42035i, var_2.x, -18885i), (var_2.x >> (u_input.b % 32u)) | 1i), Struct_3(vec3<i32>(var_1.c, reverseBits(global0.c.b.x), _wgslsmith_mod_i32(var_2.x, global0.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) * _wgslsmith_f_op_f32(-1177f + -1921f)), 60757i, global0.c.a)));
    return -var_3.c.b.x;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global0 = Struct_4(!(!arg_0 || (arg_2 < (arg_2 ^ 7304i))), abs(min(max(-43883i, -23674i), reverseBits(arg_1.a.b.x))) < arg_1.a.b.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1578f - global0.c.c.x)))), _wgslsmith_add_vec3_i32(arg_1.a.b, arg_1.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1782f, arg_1.a.c.x, -270f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1464f, global0.c.a, -683f)), any(vec3<bool>(global0.b, false, arg_0))))), _wgslsmith_sub_vec2_u32(vec2<u32>(~global0.c.d.x, ~global0.c.d.x), ~reverseBits(global0.c.d)), vec4<bool>((6204i == arg_1.a.b.x) & true, !arg_1.a.e.x || !arg_1.a.e.x, false, _wgslsmith_f_op_f32(global0.c.a * global0.c.a) != _wgslsmith_f_op_f32(abs(862f)))));
    var var_0 = Struct_1(arg_1.a.c.x, arg_1.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.c.a), -684f, -183f) * arg_1.a.c)), vec2<u32>(countOneBits(arg_1.a.d.x) | ~abs(u_input.a), ~(~global0.c.d.x & 1u)), select(global0.c.e, global0.c.e, !global0.c.e.x));
    var var_1 = global0.c.d;
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = -vec4<i32>(-max(abs(0i), -23204i), 4303i, _wgslsmith_sub_i32(global0.c.b.x, ~(-2106i)), countOneBits(global0.c.b.x));
    var var_1 = !(!global0.c.e);
    var var_2 = Struct_4(var_1.x, false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a))) + _wgslsmith_f_op_f32(f32(-1f) * -299f)), _wgslsmith_sub_vec3_i32(var_0.yxx, vec3<i32>(18172i, global0.c.b.x, 2147483647i)) << (vec3<u32>(39541u, ~arg_0.d.x, arg_0.d.x) % vec3<u32>(32u)), vec3<f32>(-511f, 1121f, _wgslsmith_f_op_f32(select(arg_0.c.x, -1561f, func_2(Struct_4(var_1.x, true, Struct_1(global0.c.c.x, vec3<i32>(global0.c.b.x, var_0.x, 5853i), global0.c.c, arg_0.d, arg_0.e)), 2147483647i, Struct_3(global0.c.b, -488f, 41488i, 255f)).e.x))), abs(global0.c.d), arg_0.e));
    var var_3 = 2147483647i;
    var_1 = !arg_0.e;
    return true;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a * global0.c.c.x), -431f), _wgslsmith_div_f32(_wgslsmith_div_f32(-244f, 994f), global0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a - 1957f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.c.x, global0.c.a, -577f, global0.c.a) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, global0.c.c.x, 573f), vec4<f32>(global0.c.a, global0.c.a, global0.c.a, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c.c.x, var_0.x, var_0.x, 1008f), vec4<f32>(global0.c.a, var_0.x, 987f, global0.c.a))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1963f, 1962f, 193f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a, var_0.x, -210f, -522f)))))) + vec4<f32>(-1182f, _wgslsmith_f_op_f32(-1898f - 324f), -257f, -726f));
    var var_1 = true;
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = firstLeadingBit(~global0.c.d.x);
    return Struct_4(!func_2(Struct_4(!global0.c.e.x, var_3 >= 0u, Struct_1(var_0.x, vec3<i32>(global0.c.b.x, -45187i, -31888i), var_0.xwy, u_input.c.yy, arg_1)), _wgslsmith_add_i32(~arg_2.x, firstTrailingBit(-2147483647i)), Struct_3(reverseBits(global0.c.b), _wgslsmith_f_op_f32(-var_0.x), global0.c.b.x ^ arg_2.x, 1504f)).e.x, !global0.c.e.x, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_i32(global0.c.b, _wgslsmith_mult_vec3_i32(global0.c.b, ~(-_wgslsmith_div_vec3_i32(vec3<i32>(global0.c.b.x, -11554i, 6895i), vec3<i32>(global0.c.b.x, global0.c.b.x, global0.c.b.x)))), (global0.c.b & min(global0.c.b >> (u_input.c.www % vec3<u32>(32u)), global0.c.b)) | vec3<i32>(-12802i, global0.c.b.x << (global0.c.d.x % 32u), -global0.c.b.x));
    global0 = func_6(select(select(!(!vec2<bool>(global0.a, global0.c.e.x)), select(global0.c.e.xx, select(global0.c.e.yx, vec2<bool>(global0.c.e.x, global0.b), global0.c.e.yy), false), !(!global0.c.e.wx)), select(global0.c.e.zx, vec2<bool>(any(vec4<bool>(global0.b, false, global0.c.e.x, true)), true), false), true), vec4<bool>(func_5(func_4(any(vec2<bool>(global0.c.e.x, global0.b)), Struct_2(Struct_1(global0.c.c.x, global0.c.b, global0.c.c, u_input.c.zx, global0.c.e)), func_1()), false), any(global0.c.e), func_4(false && all(global0.c.e.wxy), Struct_2(Struct_1(global0.c.c.x, vec3<i32>(global0.c.b.x, global0.c.b.x, global0.c.b.x), global0.c.c, vec2<u32>(4294967295u, global0.c.d.x), vec4<bool>(global0.a, global0.c.e.x, global0.c.e.x, false))), _wgslsmith_sub_i32(i32(-1i) * -1i, 2147483647i)).e.x, func_1() <= func_2(Struct_4(global0.b, global0.c.e.x, Struct_1(1315f, vec3<i32>(14705i, 1i, var_0.x), global0.c.c, u_input.c.zy, vec4<bool>(false, global0.a, true, global0.c.e.x))), 1i, Struct_3(global0.c.b, global0.c.a, global0.c.b.x, -534f)).b.x), global0.c.b.zy);
    var_0 = ~(-global0.c.b);
    let var_1 = min(~((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(4294967295u, u_input.c.x)) | _wgslsmith_sub_u32(7574u, 0u)) ^ func_4(func_2(Struct_4(false, false, global0.c), global0.c.b.x, Struct_3(global0.c.b, global0.c.a, 0i, global0.c.a)).e.x, Struct_2(Struct_1(global0.c.a, vec3<i32>(global0.c.b.x, -24258i, -2147483647i), global0.c.c, vec2<u32>(1u, 4294967295u), vec4<bool>(true, global0.a, global0.b, global0.b))), _wgslsmith_div_i32(-2147483647i, global0.c.b.x)).d.x), ~_wgslsmith_mod_u32(~(~global0.c.d.x), func_2(func_6(vec2<bool>(global0.b, false), vec4<bool>(global0.a, global0.b, false, global0.b), global0.c.b.yx), select(-1i, 0i, false), Struct_3(global0.c.b, global0.c.c.x, 1i, global0.c.a)).d.x));
    global0 = Struct_4(global0.c.e.x & any(func_2(Struct_4(false, true, global0.c), ~38196i, Struct_3(global0.c.b, global0.c.c.x, 53161i, 153f)).e.wz), global0.c.e.x, func_2(Struct_4(true, any(vec4<bool>(global0.a, false, global0.c.e.x, global0.c.e.x)) == true, func_2(func_6(vec2<bool>(false, false), global0.c.e, vec2<i32>(2147483647i, 1i)), abs(-12430i), Struct_3(global0.c.b, 598f, var_0.x, -677f))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_0.x, global0.c.b.x)), reverseBits(-vec2<i32>(0i, var_0.x))), Struct_3(global0.c.b, 1000f, min(9496i, var_0.x), 672f)));
    let var_2 = vec4<i32>(global0.c.b.x, _wgslsmith_mod_i32(var_0.x, ~_wgslsmith_sub_i32(global0.c.b.x, global0.c.b.x)), global0.c.b.x, i32(-1i) * -7085i);
    let x = u_input.a;
    s_output = StorageBuffer(-global0.c.b, u_input.c);
}

