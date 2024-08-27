struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_4(arg_0.a);
    let var_1 = Struct_3(Struct_2(~(-1i), Struct_1(arg_0.b.a, select(!vec2<bool>(arg_0.a.b.b.x, arg_0.a.b.b.x), var_0.a.b.b, var_0.a.b.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-361f, -1133f))))), -915f), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.c, arg_0.b.c, _wgslsmith_f_op_f32(arg_2 - var_0.a.b.a.x), _wgslsmith_f_op_f32(sign(-1404f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a.b.a, vec4<f32>(arg_2, 1000f, 977f, 127f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, -620f, arg_0.a.b.a.x, var_0.a.b.c))), select(vec4<bool>(false, true, var_0.a.b.b.x, var_0.a.b.b.x), vec4<bool>(true, arg_0.b.b.x, true, true), arg_0.b.b.x))), select(!vec2<bool>(false, arg_0.a.b.b.x), arg_0.b.b, any(!vec2<bool>(false, arg_0.b.b.x))), arg_2), arg_0.c);
    var var_2 = Struct_2(2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.c, arg_0.b.c, -586f, -520f) - vec4<f32>(var_1.a.c, var_1.a.b.c, var_0.a.b.c, arg_0.b.a.x))), vec2<bool>(var_0.a.b.b.x, !arg_0.b.b.x), _wgslsmith_div_f32(-1634f, var_1.a.c)), var_1.b.a.x);
    var_0 = Struct_4(Struct_2(11391i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.a) - arg_0.b.a), select(arg_0.a.b.b, !vec2<bool>(false, arg_0.a.b.b.x), !vec2<bool>(var_1.a.b.b.x, false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.a.b.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f) - var_0.a.c)));
    var_0 = Struct_4(Struct_2(var_1.a.a >> (countOneBits(select(59748u, 85788u, true)) % 32u), var_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(290f, _wgslsmith_f_op_f32(var_1.b.a.x * -1585f))), arg_0.b.a.x)));
    return vec3<u32>(arg_1.x, _wgslsmith_mod_u32(50405u, arg_1.x | 0u), select(~(~countOneBits(0u)), arg_1.x, arg_0.b.b.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    let var_0 = true;
    var var_1 = !arg_1.b;
    let var_2 = _wgslsmith_mod_vec3_u32(max(abs(~vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u)), ~max(vec3<u32>(~29026u, ~16124u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), func_3(Struct_3(Struct_2(u_input.a.x, Struct_1(vec4<f32>(arg_1.c, arg_2, -1152f, arg_1.a.x), vec2<bool>(arg_1.b.x, true), -1441f), arg_1.a.x), Struct_1(vec4<f32>(1267f, arg_0.a.x, arg_0.c, arg_0.a.x), arg_0.b, arg_1.c), vec4<i32>(708i, 1i, u_input.a.x, u_input.a.x)), vec2<u32>(1u, 106567u), 1000f))));
    var_1 = vec2<bool>(false, arg_0.b.x);
    var var_3 = Struct_3(Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_1.a)), !select(arg_1.b, arg_0.b, false), arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_2)))), arg_0, vec4<i32>(12351i, u_input.a.x, -1i, _wgslsmith_div_i32(u_input.a.x, abs(u_input.a.x))));
    return Struct_4(var_3.a);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> vec4<f32> {
    var var_0 = reverseBits(u_input.a.yy);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a.b.a - arg_1.a.b.a), arg_1.a.b.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1229f - _wgslsmith_div_f32(arg_1.a.c, -2069f))), arg_2)));
    var var_2 = Struct_3(arg_1.a, func_2(Struct_1(var_1.a, select(select(arg_1.a.b.b, vec2<bool>(arg_1.a.b.b.x, var_1.b.x), true), vec2<bool>(arg_1.a.b.b.x, false), true), _wgslsmith_f_op_f32(-1561f - 620f)), arg_1.a.b, _wgslsmith_f_op_f32(round(-270f))).a.b, vec4<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, arg_1.a.a), -(i32(-1i) * -25615i), -38966i));
    var var_3 = 1u;
    let var_4 = ~(~arg_1.a.a);
    return vec4<f32>(-1235f, _wgslsmith_f_op_f32(step(357f, -266f)), 645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(var_1.a.x + 961f))) * arg_0));
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    let var_1 = u_input.a.yx;
    let var_2 = !(!vec3<bool>(true, var_0, false));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(-667f, func_2(Struct_1(vec4<f32>(811f, -199f, -185f, 216f), var_2.zz, -510f), Struct_1(vec4<f32>(-542f, 896f, -577f, 1004f), var_2.zy, -939f), -726f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<f32>(1000f, 1000f, -616f, 206f), var_2.zx, -361f), func_2(Struct_1(vec4<f32>(-397f, -1000f, 145f, 203f), var_2.xz, -1639f), Struct_1(vec4<f32>(-932f, -1574f, 950f, 358f), var_2.zy, -1229f), 552f).a.b, 1397f).a.b.a + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-961f, -2195f, -616f, -1319f) * vec4<f32>(-762f, -1019f, -2177f, 951f)))))));
    var var_4 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_3 * func_2(func_2(Struct_1(var_3, var_2.zx, var_3.x), Struct_1(var_3, var_2.xz, -889f), var_3.x).a.b, Struct_1(var_3, vec2<bool>(var_2.x, var_0), var_3.x), -1000f).a.b.a), var_2.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1645f))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 + vec4<f32>(var_3.x, -1048f, 601f, 1026f))), func_2(func_2(Struct_1(vec4<f32>(var_3.x, 2283f, -892f, var_3.x), vec2<bool>(var_2.x, var_2.x), -439f), Struct_1(vec4<f32>(var_3.x, -939f, 175f, -443f), var_2.zy, var_3.x), -1140f).a.b, func_2(Struct_1(var_3, var_2.xx, var_3.x), Struct_1(vec4<f32>(var_3.x, 1089f, 787f, 1208f), vec2<bool>(var_2.x, var_2.x), var_3.x), var_3.x).a.b, _wgslsmith_f_op_f32(-var_3.x)).a.b.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-664f + var_3.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(var_3)), var_2.yy, -693f), _wgslsmith_f_op_f32(var_3.x * var_3.x)).a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-849f))))) * _wgslsmith_f_op_f32(-var_3.x)));
    return Struct_2(abs(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, -211f, -217f, var_4.a.b.c))), !vec2<bool>(var_0, var_2.x), _wgslsmith_f_op_f32(-var_4.a.b.c)), var_4.a.b, func_2(func_2(var_4.a.b, var_4.a.b, var_3.x).a.b, func_2(Struct_1(vec4<f32>(var_3.x, 866f, var_4.a.c, -654f), var_4.a.b.b, -613f), Struct_1(vec4<f32>(583f, -1358f, var_4.a.b.a.x, -1590f), vec2<bool>(var_0, false), 1667f), var_4.a.b.a.x).a.b, _wgslsmith_f_op_f32(abs(var_4.a.c))).a.b.a.x).a.a), var_4.a.b, _wgslsmith_div_f32(var_4.a.b.a.x, _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4) -> StorageBuffer {
    let var_0 = 1i;
    let var_1 = _wgslsmith_mult_vec2_u32(abs(_wgslsmith_add_vec2_u32(arg_0.wy, ~arg_0.yy)), select(vec2<u32>(arg_0.x, arg_0.x) >> (firstLeadingBit(arg_0.wz) % vec2<u32>(32u)), arg_0.zz, func_2(Struct_1(arg_1.a.b.a, arg_1.a.b.b, -486f), arg_1.a.b, _wgslsmith_f_op_f32(min(arg_1.a.b.c, -148f))).a.b.b) | min(arg_0.zx, vec2<u32>(firstLeadingBit(43458u), 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f));
    var_2 = arg_1.a.b.a.x;
    let var_3 = _wgslsmith_f_op_f32(ceil(-434f));
    return StorageBuffer(((~var_0 >> ((var_1.x ^ arg_0.x) % 32u)) ^ var_0) & u_input.a.x, var_1 << (var_1 % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.b.a.zx)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-106f + arg_1.a.c))), 1598f), _wgslsmith_sub_vec3_u32(arg_0.xyy, ~arg_0.xyz));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(~vec4<u32>(~(~23576u), 1u, ~1u, ~_wgslsmith_add_u32(0u, 41054u)), Struct_4(func_1()));
}

