struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_f_op_f32(1610f * 591f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(137f, -1000f))), -784f), vec2<bool>(!arg_0, select(!arg_0, false, true)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-689f, -825f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) * _wgslsmith_f_op_f32(f32(-1f) * -1640f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(118f, -1579f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, -1031f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, 198f) * vec2<f32>(-1350f, 2384f))))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-21670i, -58004i), ~vec2<i32>(1i, 1i))), vec4<u32>(1u, 105886u, u_input.a.x, 22046u));
    let var_1 = var_0.b.x;
    var var_2 = Struct_1(var_0.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1658f, _wgslsmith_f_op_f32(abs(var_0.a.x)))))), ~vec2<i32>(~var_0.c.x & (i32(-1i) * -18472i), _wgslsmith_mod_i32(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, -1i, -2147483647i), vec4<i32>(var_0.c.x, var_0.c.x, 0i, var_0.c.x)))), var_0.d >> (select(~vec4<u32>(var_0.d.x, 44677u, arg_1, u_input.a.x), ~_wgslsmith_mod_vec4_u32(var_0.d, var_0.d), vec4<bool>(359f < var_0.a.x, true, arg_0, all(vec2<bool>(false, false)))) % vec4<u32>(32u)));
    var var_3 = arg_0;
    var var_4 = -select(max(vec3<i32>(-var_0.c.x, 2147483647i, var_2.c.x), vec3<i32>(~0i, var_0.c.x, 2147483647i)), _wgslsmith_div_vec3_i32(~vec3<i32>(var_0.c.x, var_2.c.x, var_2.c.x), vec3<i32>(-1i) * -vec3<i32>(var_2.c.x, var_0.c.x, -63431i)), -46038i == (reverseBits(-23356i) & ~var_2.c.x));
    return -_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(var_4.xz, var_4.zy), min(select(vec2<i32>(var_0.c.x, var_2.c.x), vec2<i32>(-1i, -1i), vec2<bool>(false, arg_0)), vec2<i32>(var_0.c.x, 0i))) | reverseBits(var_0.c);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1980f, -137f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(406f - -1695f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-111f, 407f), _wgslsmith_f_op_f32(abs(-1544f))) + vec2<f32>(_wgslsmith_f_op_f32(-2805f + -879f), -319f)), func_3(false, ~u_input.a.x) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) ^ u_input.a) % vec2<u32>(32u)), abs(select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 51403u), vec4<bool>(true, true, true, false))) | reverseBits(select(vec4<u32>(25876u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 1u, 21740u, u_input.a.x), false))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - 853f), -1000f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) + vec2<f32>(741f, 2398f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1512f, 1222f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -1802f), vec2<f32>(-2007f, 173f)))))), select(vec2<i32>(~21325i, func_3(false, 31139u).x), vec2<i32>(1630i, ~14142i), !all(vec2<bool>(true, false))), vec4<u32>(countOneBits(110245u & u_input.a.x), _wgslsmith_div_u32(u_input.a.x | 56823u, u_input.a.x), u_input.a.x, 10617u)), Struct_1(vec2<f32>(1f, 1f), vec2<f32>(-291f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1878f)))), ~vec2<i32>(i32(-1i) * -78501i, 30974i), ~(~select(vec4<u32>(19738u, u_input.a.x, 0u, 0u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, false, false)))));
    var var_1 = Struct_2(Struct_1(vec2<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(var_0.c.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.a.x, var_0.b.a.x), _wgslsmith_f_op_vec2_f32(var_0.c.a * vec2<f32>(-1200f, 397f)), any(vec2<bool>(true, true)))))), var_0.c.c, ~(~var_0.c.d ^ ~var_0.c.d)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a.b), _wgslsmith_f_op_vec2_f32(select(var_0.b.a, var_0.a.a, false || all(vec3<bool>(true, false, true)))), var_0.c.c, var_0.a.d), var_0.c);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.b.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x - 1506f)), _wgslsmith_f_op_f32(-var_1.c.a.x)), -vec2<i32>(-2147483647i, var_0.a.c.x), var_1.a.d), var_1.c, Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.b, var_1.a.a), vec2<f32>(var_1.c.b.x, -1797f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.a.b.x), vec2<f32>(var_1.a.b.x, var_0.a.a.x)), var_0.a.a))), ~_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, -2147483647i), var_1.b.c, _wgslsmith_sub_vec2_i32(var_1.b.c, var_1.a.c)), ~_wgslsmith_add_vec4_u32(vec4<u32>(33864u, 0u, var_1.b.d.x, 55351u), var_1.c.d | var_1.b.d)));
    let var_2 = abs(abs(vec2<u32>(var_0.b.d.x, ~abs(4294967295u))));
    let var_3 = any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true))) && (!(~var_1.a.d.x < 1u) | (var_0.b.d.x <= select(4294967295u << (u_input.a.x % 32u), var_2.x, all(vec4<bool>(false, false, false, true)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.a + _wgslsmith_f_op_vec2_f32(-var_1.a.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), _wgslsmith_f_op_f32(var_0.c.b.x + -1000f)))), _wgslsmith_div_vec2_f32(var_1.c.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-510f, -498f))), var_0.b.b.x)), -abs(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_1.b.c.x), var_0.b.c)), min(var_1.c.d, min(min(~vec4<u32>(var_2.x, var_0.b.d.x, var_1.b.d.x, u_input.a.x), var_1.c.d), vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.d.x, var_1.c.d.x), u_input.a), ~var_0.c.d.x, 1u))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = !(!vec4<bool>(!(arg_1 && arg_2), true, true, any(vec4<bool>(arg_2, arg_1, arg_2, arg_1))));
    let var_1 = func_2();
    var_0 = vec4<bool>(arg_2, true, var_1.c.x > var_1.c.x, true);
    var var_2 = Struct_2(var_1, Struct_1(arg_3.b.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-144f, _wgslsmith_f_op_f32(-arg_0)))), var_1.c, select(func_2().d, arg_3.a.d, vec4<bool>(select(true, arg_1, false), var_0.x != false, var_0.x, true))), func_2());
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.b.a.x + _wgslsmith_f_op_f32(ceil(-763f)))))), _wgslsmith_f_op_f32(-1010f + arg_3.a.b.x));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~0i, 7536i, _wgslsmith_add_i32(func_1(-433f, false, true, Struct_2(Struct_1(vec2<f32>(-1716f, 415f), vec2<f32>(802f, -1296f), vec2<i32>(-1i, -2147483647i), vec4<u32>(93694u, 1u, 49020u, u_input.a.x)), Struct_1(vec2<f32>(-659f, 1398f), vec2<f32>(828f, 493f), vec2<i32>(21070i, -53288i), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 69255u)), Struct_1(vec2<f32>(243f, 223f), vec2<f32>(573f, -1975f), vec2<i32>(0i, 250i), vec4<u32>(43238u, u_input.a.x, u_input.a.x, u_input.a.x)))), ~16642i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(1i >> (u_input.a.x % 32u), -94501i, -1i), vec3<i32>(1i, _wgslsmith_div_i32(34941i, 1i), _wgslsmith_clamp_i32(-2147483647i, -41138i, 2147483647i)))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1015f, -634f)) - -1680f) - _wgslsmith_f_op_f32(-503f - _wgslsmith_div_f32(989f, -480f))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1702f, -1556f)))));
}

