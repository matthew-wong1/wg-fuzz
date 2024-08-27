struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32> = vec2<u32>(81356u, 41601u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = abs(~u_input.e.x);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(max(arg_0, 398f)), _wgslsmith_sub_u32(_wgslsmith_div_u32(44461u, 1u), 1u), select((vec4<u32>(59979u, 24399u, u_input.c.x, u_input.b.x) & vec4<u32>(22535u, 54802u, global1.x, global1.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, u_input.d.x, 7054u, 1u), vec4<u32>(5678u, u_input.d.x, global1.x, u_input.b.x)), vec4<u32>(_wgslsmith_mod_u32(0u, u_input.c.x), u_input.c.x, ~global1.x, u_input.b.x), 4613i >= -u_input.e.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, 1i), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(arg_0 * -643f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))))));
    var var_2 = false;
    var_0 = 2147483647i;
    let var_3 = Struct_4(Struct_3(var_1.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -139f, var_1.a.e, var_1.a.e))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -167f, arg_0, 777f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2289f, -158f, var_1.a.e, 1008f) - vec4<f32>(arg_0, 571f, var_1.a.e, -1244f)))))), 1u, min(_wgslsmith_div_i32(u_input.a.x & -2147483647i, u_input.e.x) | abs(1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.d, u_input.e.x, var_1.a.d, -39556i) & vec4<i32>(u_input.e.x, var_1.a.d, 2147483647i, var_1.a.d), vec4<i32>(u_input.a.x, -10803i, -48730i, var_1.a.d) & vec4<i32>(-9602i, var_1.a.d, var_1.a.d, 30651i))), Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -261f), 0u, _wgslsmith_div_vec4_u32(var_1.a.c, var_1.a.c << (var_1.a.c % vec4<u32>(32u))), u_input.a.x, var_1.a.e)));
    return firstLeadingBit(_wgslsmith_clamp_u32(0u, reverseBits(var_3.c), 88755u)) ^ _wgslsmith_mod_u32(var_3.e.a.b, var_3.e.a.c.x);
}

fn func_2() -> Struct_2 {
    global1 = vec2<u32>(global1.x, 4294967295u);
    var var_0 = -60209i;
    global0 = func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(294f, _wgslsmith_div_f32(1718f, 1149f)))))) ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.b.x, 0u), global1.x), global1.x, ~global1.x);
    var var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(175f, 129f)) * -1823f), countOneBits(global1.x), vec4<u32>(global1.x, 1u, ~u_input.d.x, global1.x), -u_input.a.x, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, -581f, -872f, 2898f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(610f, -798f, -774f, -559f) + vec4<f32>(532f, 753f, -1137f, 574f))))), ~36025u, i32(-1i) * -u_input.e.x, Struct_3(Struct_1(_wgslsmith_f_op_f32(-120f + -146f), ~max(2643u, 27466u), ~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(global1.x, u_input.b.x, global1.x, global1.x)), firstLeadingBit(_wgslsmith_mult_i32(-2147483647i, u_input.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-686f * -508f))))));
    let var_2 = select(!vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-var_1.e.a.e) >= var_1.b.x, true, false), !(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, false), true)), false);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.e.a.a), firstLeadingBit(firstLeadingBit(global1.x)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_1.e.a.b, u_input.d.x, var_1.c, var_1.e.a.b)), var_1.a.a.c, ~_wgslsmith_sub_vec4_u32(var_1.e.a.c, vec4<u32>(64492u, 4294967295u, 0u, 24143u))), i32(-1i) * -1i, _wgslsmith_f_op_f32(-var_1.e.a.a)), var_2.wz, var_1.a.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_2) -> u32 {
    var var_0 = 1u;
    global0 = ~4294967295u;
    var var_1 = 4294967295u;
    var var_2 = arg_3;
    let var_3 = Struct_4(Struct_3(Struct_1(var_2.a.a, _wgslsmith_div_u32(30677u, 99305u), vec4<u32>(abs(var_2.a.b), _wgslsmith_mod_u32(u_input.b.x, 4294967295u), var_2.a.b, reverseBits(arg_1.b)), max(~(-1i), var_2.c.d), _wgslsmith_f_op_f32(-1712f * _wgslsmith_div_f32(142f, arg_0.a.a)))), _wgslsmith_f_op_vec4_f32(trunc(arg_2.b.b)), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(func_2().c.b, ~61722u), 4294967295u), ~global1.x), -19332i, arg_2.b.a);
    return arg_0.c.c.x;
}

fn func_1() -> f32 {
    let var_0 = u_input.c;
    var var_1 = any(vec4<bool>(true, func_4(func_2(), Struct_1(-2036f, u_input.c.x, vec4<u32>(13465u, 4294967295u, var_0.x, 1u), u_input.a.x, -802f), Struct_5(1u, Struct_4(Struct_3(Struct_1(-537f, global1.x, vec4<u32>(var_0.x, 0u, 57820u, 71081u), -58055i, -1907f)), vec4<f32>(797f, 242f, 1000f, 998f), global1.x, u_input.e.x, Struct_3(Struct_1(1546f, global1.x, vec4<u32>(global1.x, global1.x, 4294967295u, global1.x), u_input.a.x, -450f))), vec4<f32>(-1000f, 372f, -536f, 1152f), false), Struct_2(Struct_1(-1221f, 16480u, vec4<u32>(2537u, 64987u, 19987u, global1.x), 54391i, -1309f), vec2<bool>(false, false), Struct_1(-285f, 0u, vec4<u32>(28224u, 1u, 4294967295u, u_input.b.x), u_input.a.x, -739f))) > var_0.x, true, 1u <= ~(u_input.b.x ^ 1u)));
    global1 = u_input.b.zx;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(-395f)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 4294967295u, global1.x), vec4<u32>(firstLeadingBit(var_0.x), 87459u, 1u, 1u)), reverseBits(vec4<u32>(4294967295u, u_input.b.x, 2358u, 4294967295u) | vec4<u32>(var_0.x, var_0.x, u_input.b.x, 1u)) & _wgslsmith_sub_vec4_u32(max(vec4<u32>(34668u, global1.x, global1.x, global1.x), vec4<u32>(0u, var_0.x, 4294967295u, var_0.x)), ~vec4<u32>(18919u, var_0.x, 25178u, 53639u))), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 38917u, 61548u, global1.x) << (vec4<u32>(4294967295u, 4285u, u_input.c.x, var_0.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_0.x, u_input.c.x, var_0.x, 59316u))), _wgslsmith_add_u32(1u, func_2().c.c.x), 40794u, var_0.x ^ abs(global1.x))), u_input.e.x | u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1697f)));
    let var_3 = abs(vec4<u32>(u_input.d.x, 0u ^ firstTrailingBit(func_4(Struct_2(Struct_1(-1163f, 5597u, vec4<u32>(u_input.c.x, 7186u, 4294967295u, var_0.x), u_input.a.x, var_2.e), vec2<bool>(true, false), Struct_1(var_2.a, 1u, vec4<u32>(var_2.c.x, var_0.x, 1u, var_2.c.x), u_input.a.x, -379f)), Struct_1(-1000f, global1.x, var_2.c, var_2.d, -688f), Struct_5(55279u, Struct_4(Struct_3(Struct_1(var_2.a, 0u, vec4<u32>(0u, var_2.b, 1u, 23302u), u_input.a.x, var_2.a)), vec4<f32>(-1061f, var_2.e, var_2.a, 1188f), 106990u, u_input.e.x, Struct_3(Struct_1(var_2.e, u_input.d.x, vec4<u32>(7901u, global1.x, u_input.d.x, global1.x), 1i, var_2.e))), vec4<f32>(var_2.a, var_2.e, var_2.e, 1000f), false), Struct_2(Struct_1(var_2.a, u_input.d.x, var_2.c, var_2.d, var_2.a), vec2<bool>(false, false), Struct_1(var_2.a, 4294967295u, var_2.c, 1i, var_2.a)))), var_2.b, 1u));
    return _wgslsmith_div_f32(-1219f, var_2.e);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_5) -> u32 {
    let var_0 = arg_3.b.a.a.c;
    var var_1 = arg_3.b.e.a;
    global1 = ~var_1.c.xw;
    global0 = ~_wgslsmith_mod_u32(global1.x, func_3(_wgslsmith_f_op_f32(f32(-1f) * -762f)) | func_4(func_2(), Struct_1(172f, 0u, vec4<u32>(global1.x, global1.x, var_1.c.x, global1.x), 2147483647i, arg_2.x), Struct_5(var_1.b, arg_3.b, arg_3.b.b, arg_3.d), Struct_2(Struct_1(1114f, 3019u, vec4<u32>(4294967295u, var_1.c.x, 71884u, var_1.b), 1i, arg_3.c.x), vec2<bool>(arg_1, arg_3.d), arg_3.b.a.a)));
    global0 = abs(_wgslsmith_dot_vec3_u32(~min(u_input.b, var_1.c.yxy) ^ max(vec3<u32>(12458u, var_1.c.x, 111912u), _wgslsmith_mod_vec3_u32(var_1.c.wwz, var_0.wyw)), ~(~(~u_input.c))));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(u_input.a.x, !any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false)), vec4<f32>(-1623f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 258f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -712f)) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), -340f), Struct_5(select(~u_input.d.x, global1.x, (u_input.d.x == 48651u) | false), Struct_4(Struct_3(Struct_1(-1000f, global1.x, vec4<u32>(u_input.c.x, global1.x, 4294967295u, global1.x), u_input.e.x, 1068f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, -187f, -1000f, 345f)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.d.x, 49107u, 97947u) & vec4<u32>(39011u, 104649u, 3818u, u_input.b.x), ~vec4<u32>(1u, 6467u, u_input.b.x, global1.x)), u_input.a.x, Struct_3(Struct_1(-1918f, 79388u, vec4<u32>(15430u, global1.x, 17080u, u_input.b.x), 27418i, -1419f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, 246f, -1016f, 1069f) - vec4<f32>(2052f, -1364f, 874f, 1187f)), vec4<f32>(-610f, 1360f, 1210f, -397f)))), false));
    global0 = 4294967295u;
    var var_0 = ~vec3<u32>(23692u ^ ~global1.x, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-281f, 1334f)) + -301f)), u_input.d.x);
    var var_1 = Struct_2(func_2().c, select(vec2<bool>(u_input.a.x < -1i, false), vec2<bool>(_wgslsmith_f_op_f32(floor(1372f)) < 1f, any(vec4<bool>(true, true, true, false))), false & any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1396f - _wgslsmith_f_op_f32(-2557f * -497f)) + -1094f), 21114u, reverseBits(firstTrailingBit(firstLeadingBit(vec4<u32>(115498u, global1.x, 1u, var_0.x)))), abs(max(u_input.a.x, max(u_input.e.x, u_input.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(767f - -1190f))) * _wgslsmith_div_f32(-651f, _wgslsmith_f_op_f32(f32(-1f) * -2348f)))));
    global0 = ~_wgslsmith_dot_vec2_u32(var_0.xy, abs(var_0.yz) | var_0.zy);
    var var_2 = -vec4<i32>(-5666i, -2147483647i, abs(var_1.c.d), _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.e.x ^ -42655i, 36587i & u_input.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(countOneBits(func_2().c.c.x), ~max(38190u, ~var_1.c.b), func_3(var_1.c.e)), 30479u);
}

