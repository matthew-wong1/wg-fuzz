struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1364f, _wgslsmith_f_op_f32(f32(-1f) * -1001f), 1232f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

fn func_2() -> f32 {
    var var_0 = -(~(-36047i));
    let var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(min(-vec4<i32>(2147483647i, 6287i, u_input.a.x, -42844i), -vec4<i32>(u_input.c, 1i, 2147483647i, u_input.c)), ~select(vec4<u32>(4294967295u, 10051u, 100107u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), var_1.x)))));
    let var_3 = var_1.x;
    let var_4 = var_1.x == !all(vec4<bool>(var_3, all(var_1), any(vec3<bool>(false, true, var_1.x)), !var_3));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(sign(var_2.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_4 {
    var var_0 = -576f;
    var_0 = arg_2.d;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1880f, arg_2.d)) * -1136f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + arg_2.c);
    var var_2 = Struct_4(arg_1.e.c.c, arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - arg_1.d), -496f), _wgslsmith_f_op_f32(round(arg_1.c)), arg_1.e);
    return Struct_4(var_2.e.c.c, vec4<bool>(any(vec4<bool>(var_2.e.c.c.a, false, true, true)) & (all(vec3<bool>(false, var_2.e.c.c.a, arg_2.b.x)) == true), false, false, !(arg_0.x && any(vec3<bool>(arg_2.e.b, true, var_2.a.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1059f)), _wgslsmith_f_op_vec3_f32(func_3(-vec4<i32>(-19334i, _wgslsmith_mod_i32(u_input.c, u_input.c), ~(-17099i), -66220i), ~_wgslsmith_div_vec4_u32(~vec4<u32>(26366u, 1u, 6014u, arg_2.a.b.x), vec4<u32>(arg_2.e.c.c.c, 78761u, 4294967295u, arg_2.a.c) >> (vec4<u32>(arg_2.a.b.x, 8353u, 76880u, var_2.e.c.c.b.x) % vec4<u32>(32u))))).x, Struct_3(-1000f, true, Struct_2(~arg_1.e.c.c.c, all(select(arg_2.b.zz, var_2.b.xw, vec2<bool>(arg_2.a.a, arg_2.a.a))), Struct_1(any(vec4<bool>(false, false, true, var_2.b.x)), u_input.b | arg_1.a.b, ~u_input.b.x, !arg_2.b.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -476f), var_2.e.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, -1000f))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_add_vec4_i32(~((_wgslsmith_mult_vec4_i32(vec4<i32>(61690i, 28962i, u_input.c, -2147483647i), vec4<i32>(-24966i, u_input.c, u_input.a.x, u_input.a.x)) ^ abs(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, -1i))) << (~vec4<u32>(arg_0.e.c.a, arg_1.x, arg_1.x, 1u) % vec4<u32>(32u))), vec4<i32>(1i & abs(_wgslsmith_div_i32(u_input.c, 0i)), _wgslsmith_dot_vec2_i32(max(u_input.a.zx, vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.a.x, u_input.c)) | (_wgslsmith_div_i32(0i, u_input.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 44655u, u_input.b.x, 46424u), vec4<u32>(arg_1.x, 4294967295u, 80080u, 14056u)) % 32u)), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), ~select(vec2<i32>(u_input.a.x, -48859i), vec2<i32>(2147483647i, -56392i), true))));
    var var_1 = Struct_4(func_1(vec2<bool>(all(arg_0.b), false || (arg_3 & arg_0.e.c.c.d)), func_1(arg_0.b.xx, Struct_4(func_1(vec2<bool>(arg_0.a.d, true), arg_0, arg_0).e.c.c, vec4<bool>(true, false, arg_0.e.b, false), arg_0.e.a, arg_2, Struct_3(-101f, arg_0.a.d, arg_0.e.c, arg_0.e.d)), Struct_4(func_1(arg_0.b.yz, Struct_4(arg_0.a, arg_0.b, arg_2, arg_0.c, arg_0.e), Struct_4(Struct_1(true, arg_0.a.b, 1u, false), vec4<bool>(arg_3, arg_3, arg_3, false), 856f, arg_0.e.d.x, Struct_3(1988f, true, arg_0.e.c, vec2<f32>(781f, arg_0.e.a)))).a, vec4<bool>(arg_0.b.x, true, arg_0.a.a, arg_3), _wgslsmith_f_op_f32(-arg_0.d), -716f, Struct_3(arg_2, false, arg_0.e.c, arg_0.e.d))), arg_0).a, vec4<bool>(arg_3, false, false, false), 497f, 727f, arg_0.e);
    var var_2 = vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-func_1(vec2<bool>(arg_0.a.a, arg_0.e.b), arg_0, func_1(arg_0.b.wz, arg_0, arg_0)).e.a))));
    var_1 = arg_0;
    let var_3 = _wgslsmith_clamp_u32(min(51412u, min(35668u, _wgslsmith_div_u32(arg_1.x, 1u))), ~min(var_1.a.b.x, arg_0.a.c), u_input.b.x);
    return _wgslsmith_sub_u32(0u, arg_0.a.c);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: f32, arg_3: u32) -> Struct_4 {
    var var_0 = vec2<bool>(true, !(!arg_1.e.b));
    var var_1 = _wgslsmith_f_op_f32(abs(1987f));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1098f + -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1031f))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((_wgslsmith_mod_i32(-1i, ~u_input.a.x) <= -_wgslsmith_add_i32(u_input.a.x, u_input.c)) & true, vec2<u32>(~1u, reverseBits(_wgslsmith_mult_u32(1u, ~19504u))), abs(25674u), false);
    var var_1 = !var_0.d;
    var var_2 = func_5(-(~(-vec4<i32>(-55042i, u_input.c, 2147483647i, u_input.a.x))) >> (vec4<u32>(func_4(func_1(vec2<bool>(var_0.d, false), Struct_4(Struct_1(var_0.a, var_0.b, u_input.b.x, var_0.a), vec4<bool>(true, true, var_0.d, false), -164f, -560f, Struct_3(-202f, false, Struct_2(u_input.b.x, var_0.d, Struct_1(var_0.a, vec2<u32>(45700u, 26893u), 4294967295u, var_0.a)), vec2<f32>(498f, -158f))), Struct_4(Struct_1(var_0.d, vec2<u32>(u_input.b.x, 4294967295u), 0u, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a), 1242f, -681f, Struct_3(440f, true, Struct_2(var_0.c, var_0.d, Struct_1(false, u_input.b, 40680u, false)), vec2<f32>(-442f, -1000f)))), firstLeadingBit(vec3<u32>(1u, 40086u, 1u)), 276f, var_0.a), 1u, ~1u, _wgslsmith_clamp_u32(firstLeadingBit(var_0.c), u_input.b.x, 1u)) % vec4<u32>(32u)), Struct_4(func_1(func_1(func_1(vec2<bool>(false, false), Struct_4(Struct_1(var_0.d, u_input.b, var_0.b.x, false), vec4<bool>(false, var_0.d, true, false), -2359f, 853f, Struct_3(-143f, false, Struct_2(1u, false, Struct_1(false, var_0.b, 1u, var_0.a)), vec2<f32>(-487f, -539f))), Struct_4(Struct_1(var_0.d, vec2<u32>(0u, u_input.b.x), 43687u, true), vec4<bool>(var_0.a, true, var_0.a, var_0.d), 1635f, -748f, Struct_3(-247f, var_0.d, Struct_2(u_input.b.x, var_0.a, Struct_1(false, vec2<u32>(var_0.c, 66256u), u_input.b.x, var_0.a)), vec2<f32>(-630f, -679f)))).b.xx, Struct_4(Struct_1(false, u_input.b, 18181u, false), vec4<bool>(var_0.a, false, var_0.d, true), -310f, -484f, Struct_3(420f, var_0.a, Struct_2(var_0.c, true, Struct_1(var_0.a, vec2<u32>(14111u, u_input.b.x), 20717u, var_0.d)), vec2<f32>(1476f, 205f))), Struct_4(Struct_1(true, vec2<u32>(1u, 7195u), u_input.b.x, false), vec4<bool>(true, var_0.d, false, false), -243f, -809f, Struct_3(347f, var_0.d, Struct_2(u_input.b.x, var_0.d, Struct_1(var_0.d, var_0.b, 38139u, var_0.a)), vec2<f32>(-2035f, 1000f)))).b.yx, Struct_4(Struct_1(true, u_input.b, 1u, var_0.a), vec4<bool>(true, false, true, false), _wgslsmith_f_op_f32(999f - -684f), _wgslsmith_f_op_f32(round(-427f)), func_1(vec2<bool>(var_0.a, false), Struct_4(Struct_1(false, vec2<u32>(var_0.c, u_input.b.x), 0u, true), vec4<bool>(false, false, true, var_0.d), 218f, -1024f, Struct_3(507f, true, Struct_2(0u, true, Struct_1(true, u_input.b, u_input.b.x, var_0.a)), vec2<f32>(-249f, -782f))), Struct_4(Struct_1(var_0.d, vec2<u32>(1u, var_0.c), 22201u, true), vec4<bool>(false, var_0.a, true, false), -868f, 111f, Struct_3(-526f, var_0.a, Struct_2(23138u, false, Struct_1(false, u_input.b, u_input.b.x, var_0.a)), vec2<f32>(-567f, -127f)))).e), func_1(!vec2<bool>(var_0.d, true), func_1(vec2<bool>(false, var_0.d), Struct_4(Struct_1(true, u_input.b, var_0.c, true), vec4<bool>(true, var_0.a, true, var_0.d), 126f, 250f, Struct_3(-247f, var_0.a, Struct_2(125525u, false, Struct_1(true, u_input.b, u_input.b.x, var_0.a)), vec2<f32>(352f, 288f))), Struct_4(Struct_1(var_0.a, vec2<u32>(u_input.b.x, 4294967295u), var_0.b.x, false), vec4<bool>(true, var_0.a, var_0.a, true), -1110f, -830f, Struct_3(-898f, var_0.a, Struct_2(var_0.c, var_0.a, Struct_1(var_0.d, u_input.b, u_input.b.x, var_0.a)), vec2<f32>(-123f, 473f)))), Struct_4(Struct_1(false, u_input.b, u_input.b.x, var_0.d), vec4<bool>(var_0.a, false, true, false), -1000f, 376f, Struct_3(-656f, false, Struct_2(var_0.b.x, var_0.d, Struct_1(true, vec2<u32>(u_input.b.x, var_0.c), u_input.b.x, false)), vec2<f32>(-997f, -960f))))).e.c.c, vec4<bool>((u_input.c >= 6512i) || true, any(select(vec4<bool>(var_0.d, true, var_0.d, true), vec4<bool>(false, false, var_0.a, var_0.a), var_0.a)), select(!var_0.d, all(vec3<bool>(true, false, false)), var_0.a), true), _wgslsmith_f_op_vec3_f32(func_3(firstTrailingBit(vec4<i32>(27150i, u_input.c, u_input.a.x, -4391i)), firstLeadingBit(~vec4<u32>(var_0.b.x, u_input.b.x, 21386u, 51948u)))).x, 816f, Struct_3(_wgslsmith_f_op_f32(202f - _wgslsmith_f_op_f32(trunc(1000f))), var_0.a, Struct_2(0u, true, Struct_1(var_0.d, vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.x, false)), vec2<f32>(-1710f, _wgslsmith_f_op_f32(f32(-1f) * -1134f)))), _wgslsmith_div_f32(-389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1103f) - _wgslsmith_f_op_f32(1273f * -1004f)) * _wgslsmith_f_op_f32(select(596f, -1076f, true)))), reverseBits(0u));
    let var_3 = false;
    var var_4 = vec4<i32>(2330i, abs(abs(u_input.c)), u_input.a.x, u_input.a.x);
    var_4 = _wgslsmith_sub_vec4_i32(~(~vec4<i32>(var_4.x, var_4.x, 1i, 0i)) & vec4<i32>(-2147483647i, -u_input.a.x, -(var_4.x ^ -1i), var_4.x), -_wgslsmith_sub_vec4_i32(vec4<i32>(min(0i, -15333i), -2147483647i, -888i & u_input.c, 1i), reverseBits(vec4<i32>(1i, 39322i, var_4.x, var_4.x) << (vec4<u32>(u_input.b.x, 58908u, var_0.c, var_2.e.c.c.c) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.c);
}

