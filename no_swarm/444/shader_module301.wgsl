struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    global0 = _wgslsmith_dot_vec4_u32(~firstTrailingBit(firstTrailingBit(~vec4<u32>(u_input.a, 17256u, arg_0.c.a.x, 0u))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(36408u, 4294967295u, 0u, u_input.a), select(vec4<u32>(arg_0.c.a.x, 3934u, u_input.a, arg_1.b.a.x), vec4<u32>(arg_0.a.a.x, 0u, 4294967295u, u_input.b.x), global1.x)), 1u, u_input.a, (49471u << (arg_0.a.a.x % 32u)) & arg_0.a.a.x));
    global1 = vec3<bool>(arg_0.b.x, all(arg_0.b.xxy), false);
    global0 = 1u;
    global0 = 115676u;
    global1 = !vec3<bool>(false, false, any(select(!arg_0.b.yzz, arg_0.b.yyx, select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.b.x, true), false))));
    return arg_0;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = Struct_3(Struct_1(~abs(~arg_3.b.a.xz)), vec4<bool>(global1.x, -1000f >= _wgslsmith_f_op_f32(-659f * arg_0.x), all(!(!vec3<bool>(false, false, global1.x))), any(global1.yz)), Struct_2(arg_3.b.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_3.a)), _wgslsmith_f_op_f32(-958f * arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-607f)), _wgslsmith_div_f32(arg_3.b.b.x, arg_3.b.b.x), true)))), arg_0.yyx);
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_3.b.b + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1082f));
    var_0 = Struct_3(Struct_1(~(~u_input.b)), vec4<bool>(global1.x, !all(var_0.b.xyy), global1.x, _wgslsmith_f_op_f32(step(-1541f, arg_0.x)) == arg_3.b.b.x), arg_3.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(_wgslsmith_f_op_f32(var_0.c.b.x - 241f), 1868f, _wgslsmith_f_op_f32(var_0.c.b.x * arg_3.c))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 1168f, _wgslsmith_f_op_f32(246f - var_0.d.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b.x, var_0.c.b.x, var_1.x)))), true))));
    var var_2 = func_2(func_2(Struct_3(Struct_1(var_0.a.a), vec4<bool>(false, true, var_0.d.x >= 886f, false), Struct_2(~arg_3.b.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-988f, 272f), vec2<f32>(var_1.x, var_1.x), vec2<bool>(true, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c, arg_0.x, -1894f) * _wgslsmith_f_op_vec3_f32(var_0.d * var_0.d))), Struct_4(_wgslsmith_div_f32(-919f, -827f), Struct_2(max(vec3<u32>(var_0.a.a.x, arg_2.a.x, 4294967295u), vec3<u32>(0u, arg_3.b.a.x, arg_1)), _wgslsmith_f_op_vec2_f32(-var_0.d.yx)), 1261f), var_1.x), Struct_4(_wgslsmith_div_f32(-1789f, arg_3.b.b.x), arg_3.b, _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(round(1000f)))), var_0.d.x).c;
    var var_3 = func_2(Struct_3(arg_2, !(!(!var_0.b)), func_2(func_2(func_2(Struct_3(arg_2, vec4<bool>(true, global1.x, true, global1.x), Struct_2(var_2.a, arg_0.zx), vec3<f32>(arg_3.b.b.x, -1205f, 2359f)), arg_3, -2476f), Struct_4(886f, Struct_2(vec3<u32>(var_2.a.x, 31160u, 0u), vec2<f32>(arg_0.x, -1431f)), -129f), _wgslsmith_f_op_f32(ceil(arg_0.x))), Struct_4(_wgslsmith_f_op_f32(floor(1000f)), func_2(Struct_3(var_0.a, var_0.b, Struct_2(vec3<u32>(0u, var_0.c.a.x, var_0.a.a.x), vec2<f32>(arg_3.b.b.x, 327f)), arg_0.wyz), arg_3, arg_3.c).c, _wgslsmith_f_op_f32(ceil(-688f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-798f + var_1.x) + 783f)).c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_0.yyx, var_0.d))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1587f, 204f, 169f) - vec3<f32>(arg_3.a, 264f, 625f))))))), arg_3, var_2.b.x).c;
    return -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(1i, -12664i, -53082i, -2147483647i)), select(-vec4<i32>(-68043i, -2147483647i, -17595i, 15022i), _wgslsmith_sub_vec4_i32(vec4<i32>(12579i, -15666i, 0i, 0i), vec4<i32>(-47841i, 5574i, 1i, 2147483647i)), !var_0.b)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x))))));
    global0 = 6428u;
    let var_1 = _wgslsmith_sub_vec2_u32(~arg_1.yz, _wgslsmith_div_vec2_u32(~arg_1.ww, ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_2.a.a.x), arg_1.ww)));
    var var_2 = func_2(Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(~arg_2.a.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, var_1.x), arg_2.c.a.zy, arg_2.c.a.yx))), vec4<bool>(!(global1.x || true), false, arg_2.b.x, any(vec2<bool>(false, false))), Struct_2(arg_2.c.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_2.d.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.b.x, 780f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(549f, 953f, -1000f) - arg_2.d))), vec3<f32>(-623f, _wgslsmith_f_op_f32(select(1307f, var_0.x, global1.x)), _wgslsmith_f_op_f32(1500f * -1093f)))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_2(Struct_3(arg_2.a, vec4<bool>(arg_2.b.x, true, false, arg_2.b.x), Struct_2(vec3<u32>(1u, arg_2.c.a.x, 63345u), vec2<f32>(var_0.x, 1236f)), arg_2.d), Struct_4(-904f, arg_2.c, arg_2.c.b.x), var_0.x).c.b.x))), func_2(func_2(Struct_3(Struct_1(vec2<u32>(707u, 42662u)), arg_2.b, Struct_2(vec3<u32>(52486u, var_1.x, 0u), arg_2.d.xx), vec3<f32>(var_0.x, -1000f, 932f)), Struct_4(var_0.x, arg_2.c, arg_2.d.x), 1000f), Struct_4(var_0.x, Struct_2(arg_1.ywx, arg_2.d.yx), _wgslsmith_f_op_f32(max(var_0.x, arg_2.c.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -405f)).c, arg_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))).a;
    let var_3 = arg_2;
    return true | global1.x;
}

fn func_5(arg_0: vec3<bool>) -> u32 {
    return _wgslsmith_add_u32(~reverseBits(abs(_wgslsmith_add_u32(0u, u_input.a))), 16766u);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    var var_0 = func_5(vec3<bool>(global1.x, func_4(~arg_1 | arg_1, vec4<u32>(u_input.a | u_input.b.x, ~u_input.a, arg_0.x << (arg_0.x % 32u), arg_0.x << (u_input.b.x % 32u)), func_2(Struct_3(Struct_1(vec2<u32>(1u, arg_0.x)), vec4<bool>(global1.x, true, false, false), Struct_2(vec3<u32>(100502u, 4294967295u, 23459u), vec2<f32>(1745f, -1563f)), vec3<f32>(-1000f, -1333f, 576f)), Struct_4(1425f, Struct_2(vec3<u32>(4294967295u, 1u, arg_0.x), vec2<f32>(658f, -873f)), 278f), _wgslsmith_f_op_f32(f32(-1f) * -2020f)), func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 709f, 223f, 653f), vec4<f32>(-563f, -1000f, 1410f, -274f))), 1u, func_2(Struct_3(Struct_1(vec2<u32>(21926u, arg_0.x)), vec4<bool>(false, global1.x, false, global1.x), Struct_2(vec3<u32>(1u, 3306u, 0u), vec2<f32>(408f, -652f)), vec3<f32>(-1193f, 257f, 206f)), Struct_4(-1000f, Struct_2(vec3<u32>(u_input.b.x, 0u, 98720u), vec2<f32>(339f, 1038f)), 496f), -860f).a, Struct_4(-421f, Struct_2(vec3<u32>(u_input.a, 0u, u_input.b.x), vec2<f32>(-1000f, 1062f)), 933f))), false));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(1053f - -2181f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-703f - 1346f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(251f, 1000f)) + _wgslsmith_f_op_f32(max(-857f, 1000f))))), _wgslsmith_f_op_f32(ceil(-598f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1052f, -412f, 928f, 107f) + vec4<f32>(-1000f, 1000f, -899f, 424f)) * vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-2023f, -1355f)), _wgslsmith_f_op_f32(step(-999f, 1690f)), _wgslsmith_f_op_f32(abs(1152f)), _wgslsmith_f_op_f32(1802f - 674f)))));
    var var_2 = ~(~42204u) & _wgslsmith_mod_u32(firstLeadingBit(arg_0.x), _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(abs(u_input.b.x), u_input.b.x)));
    var var_3 = !func_2(Struct_3(Struct_1(func_2(Struct_3(Struct_1(vec2<u32>(u_input.b.x, 2511u)), vec4<bool>(true, global1.x, global1.x, global1.x), Struct_2(vec3<u32>(37761u, arg_0.x, arg_0.x), var_1.yy), vec3<f32>(-840f, var_1.x, -422f)), Struct_4(193f, Struct_2(vec3<u32>(4294967295u, u_input.b.x, 21601u), var_1.xw), var_1.x), -602f).c.a.xz), select(select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(false, global1.x, false, global1.x), true), select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(false, true, true, false), global1.x), select(global1.x, false, true)), func_2(Struct_3(Struct_1(arg_0), vec4<bool>(global1.x, true, false, global1.x), Struct_2(vec3<u32>(u_input.b.x, 40143u, u_input.b.x), vec2<f32>(793f, -1000f)), var_1.zyw), Struct_4(var_1.x, Struct_2(vec3<u32>(36037u, 1u, u_input.b.x), var_1.xw), var_1.x), -585f).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-111f, -1145f, -717f) - var_1.yzx))), Struct_4(var_1.x, func_2(Struct_3(Struct_1(vec2<u32>(0u, arg_0.x)), vec4<bool>(global1.x, true, global1.x, global1.x), Struct_2(vec3<u32>(4294967295u, arg_0.x, 13900u), var_1.wy), var_1.yxw), Struct_4(var_1.x, Struct_2(vec3<u32>(u_input.a, u_input.b.x, 9730u), vec2<f32>(var_1.x, var_1.x)), var_1.x), _wgslsmith_div_f32(525f, 521f)).c, var_1.x), _wgslsmith_f_op_f32(-var_1.x)).b.ywz;
    let var_4 = !(!select(!select(vec3<bool>(false, var_3.x, false), vec3<bool>(global1.x, true, true), vec3<bool>(var_3.x, global1.x, var_3.x)), vec3<bool>(func_4(arg_1, vec4<u32>(48775u, u_input.b.x, 41219u, 118441u), Struct_3(Struct_1(u_input.b), vec4<bool>(false, true, true, true), Struct_2(vec3<u32>(103518u, 1u, 0u), vec2<f32>(var_1.x, var_1.x)), vec3<f32>(var_1.x, var_1.x, 751f)), vec4<i32>(arg_1, -8721i, 2147483647i, -1522i)), true, var_3.x || var_3.x), true));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    global0 = _wgslsmith_mult_u32(48434u | u_input.a, ~abs(22736u));
    var var_0 = global1.x;
    var var_1 = Struct_1(~vec2<u32>(_wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_clamp_u32(u_input.a, 0u, u_input.b.x)), func_1(u_input.b, _wgslsmith_sub_i32(46169i, 887i))));
    var var_2 = func_2(Struct_3(func_2(Struct_3(func_2(Struct_3(Struct_1(u_input.b), vec4<bool>(global1.x, false, true, false), Struct_2(vec3<u32>(73693u, u_input.a, u_input.b.x), vec2<f32>(664f, 1000f)), vec3<f32>(-434f, -179f, 835f)), Struct_4(-843f, Struct_2(vec3<u32>(u_input.a, 0u, var_1.a.x), vec2<f32>(650f, -402f)), 204f), 1000f).a, !vec4<bool>(true, true, global1.x, global1.x), func_2(Struct_3(Struct_1(vec2<u32>(var_1.a.x, 1u)), vec4<bool>(true, false, true, true), Struct_2(vec3<u32>(0u, u_input.b.x, 0u), vec2<f32>(-259f, 1000f)), vec3<f32>(1542f, 290f, 602f)), Struct_4(-739f, Struct_2(vec3<u32>(8541u, 1u, var_1.a.x), vec2<f32>(1295f, -850f)), -811f), -1074f).c, _wgslsmith_div_vec3_f32(vec3<f32>(1255f, -290f, 1000f), vec3<f32>(-1956f, 1315f, -1171f))), Struct_4(-1815f, Struct_2(vec3<u32>(26757u, 9133u, 4294967295u), vec2<f32>(1167f, 1024f)), _wgslsmith_f_op_f32(sign(2800f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1315f) * -323f)).a, vec4<bool>(true, !global1.x, !global1.x, ~65091u > ~u_input.a), func_2(Struct_3(Struct_1(var_1.a), vec4<bool>(true, global1.x, false, global1.x), func_2(Struct_3(Struct_1(vec2<u32>(var_1.a.x, 37067u)), vec4<bool>(false, true, true, false), Struct_2(vec3<u32>(u_input.b.x, 89539u, u_input.b.x), vec2<f32>(-1000f, 666f)), vec3<f32>(721f, 1145f, 495f)), Struct_4(904f, Struct_2(vec3<u32>(var_1.a.x, u_input.b.x, var_1.a.x), vec2<f32>(-2046f, -1000f)), 466f), -516f).c, vec3<f32>(-1075f, 123f, 1682f)), Struct_4(_wgslsmith_f_op_f32(-1199f * 1162f), func_2(Struct_3(Struct_1(var_1.a), vec4<bool>(false, true, false, global1.x), Struct_2(vec3<u32>(68700u, u_input.a, u_input.a), vec2<f32>(1552f, -1000f)), vec3<f32>(-860f, -440f, 1000f)), Struct_4(-326f, Struct_2(vec3<u32>(21490u, var_1.a.x, 4294967295u), vec2<f32>(-1075f, -1489f)), -179f), 892f).c, -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(170f, -1001f), 542f))).c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1702f, -1332f, -561f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(302f, -106f, 1000f) + vec3<f32>(527f, 161f, 273f)), vec3<f32>(1000f, 400f, -1878f)), select(var_1.a.x, u_input.b.x, global1.x) > (var_1.a.x >> (var_1.a.x % 32u))))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1998f, 1100f))))), func_2(func_2(Struct_3(Struct_1(vec2<u32>(4294967295u, 0u)), vec4<bool>(true, global1.x, false, global1.x), Struct_2(vec3<u32>(var_1.a.x, 4294967295u, 1u), vec2<f32>(180f, 1301f)), vec3<f32>(-2471f, -1000f, 1205f)), Struct_4(-262f, Struct_2(vec3<u32>(0u, var_1.a.x, var_1.a.x), vec2<f32>(-1000f, 1000f)), -303f), -1911f), Struct_4(-1000f, func_2(Struct_3(Struct_1(vec2<u32>(var_1.a.x, 3728u)), vec4<bool>(false, false, true, true), Struct_2(vec3<u32>(40884u, u_input.b.x, u_input.a), vec2<f32>(168f, 388f)), vec3<f32>(-614f, -1000f, 554f)), Struct_4(212f, Struct_2(vec3<u32>(var_1.a.x, u_input.b.x, 44454u), vec2<f32>(-1088f, -1870f)), -543f), -602f).c, -796f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(247f))))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-174f + 475f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-1000f + -415f))), _wgslsmith_f_op_f32(min(-206f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))))).b.zz;
    var var_3 = false;
    var var_4 = vec4<i32>(select(-26276i, abs(0i), all(!(!global1.zz))), 30203i, -2147483647i, firstTrailingBit(1i));
    var_0 = func_4(-18405i, vec4<u32>(~var_1.a.x, 35097u, min(~min(4294967295u, var_1.a.x), func_2(func_2(Struct_3(Struct_1(vec2<u32>(u_input.a, var_1.a.x)), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), Struct_2(vec3<u32>(var_1.a.x, 12116u, var_1.a.x), vec2<f32>(1105f, 923f)), vec3<f32>(580f, -1752f, 1000f)), Struct_4(-1072f, Struct_2(vec3<u32>(u_input.b.x, 0u, 1u), vec2<f32>(1000f, 650f)), -146f), -126f), Struct_4(664f, Struct_2(vec3<u32>(9597u, var_1.a.x, var_1.a.x), vec2<f32>(-260f, 2865f)), -319f), _wgslsmith_f_op_f32(f32(-1f) * -2344f)).a.a.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, 2915u), ~u_input.a), u_input.b.x)), Struct_3(Struct_1(~var_1.a), vec4<bool>((4294967295u >> (var_1.a.x % 32u)) <= _wgslsmith_div_u32(var_1.a.x, 7567u), !(global1.x && false), global1.x, true), Struct_2(~reverseBits(vec3<u32>(u_input.b.x, 85699u, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(round(-151f)), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1624f, -1000f, 844f))))), -_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(0i, -2147483647i, 0i, var_4.x)), ~(vec4<i32>(2147483647i, var_4.x, -2147483647i, 52108i) & vec4<i32>(var_4.x, 44977i, var_4.x, var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 794f, -1243f), vec3<f32>(-1000f, 1101f, 100f), vec3<bool>(var_2.x, false, false))) * vec3<f32>(1f, 1f, 1f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-546f, 1234f, -662f))), vec3<f32>(250f, 1160f, 622f))))), vec4<i32>(1i, _wgslsmith_sub_i32(var_4.x, -1i), -2147483647i, -2147483647i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(1742f)), global1.x)), 1f, 1628f, 558f))), 584f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f * -902f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(434f * -455f), 895f), _wgslsmith_f_op_f32(round(-824f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1642f)), -127f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3146f, -1244f, -333f, 1700f))), vec4<bool>(func_2(Struct_3(Struct_1(vec2<u32>(60770u, 0u)), vec4<bool>(global1.x, true, true, true), Struct_2(vec3<u32>(50229u, var_1.a.x, 1u), vec2<f32>(-117f, -467f)), vec3<f32>(1354f, -1024f, 753f)), Struct_4(-371f, Struct_2(vec3<u32>(var_1.a.x, var_1.a.x, 1u), vec2<f32>(503f, 3909f)), -1821f), 1779f).c.b.x >= _wgslsmith_f_op_f32(-753f + 106f), any(vec4<bool>(false, false, global1.x, false)), true || var_2.x, var_2.x))));
}

