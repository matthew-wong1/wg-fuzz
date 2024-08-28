struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> bool {
    let var_0 = max(36917u, firstLeadingBit(48272u));
    var var_1 = arg_1.x;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(160f, _wgslsmith_f_op_f32(round(556f)))))), _wgslsmith_div_f32(1116f, arg_1.x)));
    var_1 = -931f;
    let var_2 = ~u_input.b.yy;
    return ~0i != ~(-_wgslsmith_div_i32(_wgslsmith_add_i32(var_2.x, arg_0), arg_0));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(arg_0);
    var_0 = ~(~max(select(u_input.a, 0i, arg_0.c), u_input.a)) | -1i;
    var var_2 = 7011i;
    var var_3 = select(select(!vec3<bool>(all(vec3<bool>(var_1.a.c, var_1.a.c, false)), any(vec4<bool>(false, true, false, false)), arg_0.c), vec3<bool>(true, true & !arg_0.c, var_1.a.c), arg_0.c), vec3<bool>(-(u_input.a << (96223u % 32u)) != -countOneBits(u_input.a), true, select(true, u_input.b.x != countOneBits(2147483647i), true)), true);
    return Struct_2(var_1.a);
}

fn func_3() -> u32 {
    var var_0 = ~max(7113u, abs(_wgslsmith_sub_u32(53475u, _wgslsmith_div_u32(0u, 4294967295u))));
    var var_1 = func_2(Struct_1(vec4<f32>(-259f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(f32(-1f) * -2589f))), -729f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(345f, -150f, 2138f, -411f), vec3<f32>(-1005f, -1000f, 2242f), true, vec4<f32>(-176f, -392f, 345f, 988f)), vec2<f32>(-1273f, 889f)).a.d.x - _wgslsmith_f_op_f32(floor(126f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_div_f32(314f, -2032f), -657f) * _wgslsmith_div_vec3_f32(func_2(Struct_1(vec4<f32>(180f, -1217f, 1645f, 131f), vec3<f32>(237f, -2542f, 1181f), false, vec4<f32>(764f, 2156f, 1417f, 228f)), vec2<f32>(1170f, 1000f)).a.a.yxw, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1137f, -906f, 2031f) + vec3<f32>(488f, -1000f, 1768f)))), true, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-474f)))), -975f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(433f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1409f * -327f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-961f, 1000f))) - vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))).a;
    var_1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.d.x, var_1.a.x, var_1.a.x, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(Struct_1(var_1.d, vec3<f32>(var_1.b.x, var_1.b.x, var_1.d.x), var_1.c, var_1.a), var_1.b.xx).a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(step(var_1.b.x, 898f)))), all(select(select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(false, var_1.c, var_1.c), vec3<bool>(false, var_1.c, var_1.c)), vec3<bool>(false, true, false), var_1.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(var_1.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -228f, 1344f, 1000f) + var_1.d), select(vec4<bool>(var_1.c, false, true, false), vec4<bool>(true, var_1.c, var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, true)))), vec4<f32>(1499f, 428f, _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(var_1.a.x - 783f))))), vec2<f32>(-1543f, 896f)).a;
    var_0 = 1u;
    return ~13938u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-566f, 1094f, -1604f, 1191f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -474f, -1000f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1505f, 461f, -224f))))), func_1(u_input.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(218f, 807f, 403f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1846f, 842f, 1003f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-995f, 181f, -135f, 780f), vec4<f32>(1000f, 945f, 1186f, -464f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-964f, -1000f, -102f, -261f))))), vec2<f32>(1701f, 1702f));
    let var_1 = vec3<bool>(var_0.a.c, all(!(!(!vec2<bool>(false, var_0.a.c)))), ((1i >> (func_3() % 32u)) >> (_wgslsmith_clamp_u32(~65356u, _wgslsmith_mod_u32(37659u, 69500u), ~728u) % 32u)) <= u_input.a);
    let var_2 = -796f;
    let var_3 = Struct_1(var_0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-328f, -659f, 1154f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1487f, var_0.a.d.x))), vec3<f32>(var_0.a.b.x, func_2(Struct_1(var_0.a.d, vec3<f32>(753f, var_0.a.b.x, var_0.a.a.x), true, vec4<f32>(var_0.a.b.x, 839f, 2519f, var_2)), vec2<f32>(var_0.a.d.x, var_0.a.b.x)).a.a.x, _wgslsmith_f_op_f32(162f * var_2))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1900f, 696f, var_0.a.d.x) - _wgslsmith_f_op_vec3_f32(-var_0.a.a.zxx)))), !any(vec3<bool>(var_0.a.c, !var_1.x, all(vec4<bool>(var_1.x, false, var_0.a.c, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -763f), _wgslsmith_f_op_f32(var_0.a.a.x - var_0.a.d.x), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(567f + var_2)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.a.d), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, 598f, var_2, var_0.a.d.x))))))));
    let var_4 = -max(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2600i, u_input.b.x, u_input.b.x) >> (vec4<u32>(0u, 14853u, 24893u, 31292u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, -2147483647i, -28711i, u_input.b.x)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~30036u, _wgslsmith_mod_u32(37893u, 16593u))), vec2<u32>(1u, reverseBits(~3114u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-279f, _wgslsmith_f_op_f32(ceil(-411f)))) - var_3.d.x))), 1115f, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 0u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 22702u), vec2<u32>(18575u, 4294967295u)))), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)));
}

