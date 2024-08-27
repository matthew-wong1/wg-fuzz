struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = Struct_1(select(select(!select(arg_0.d.a, arg_0.a.a, arg_0.b.x), !select(arg_0.a.a, vec3<bool>(false, arg_0.c.a.x, arg_0.d.a.x), true), select(vec3<bool>(true, true, arg_0.d.a.x), vec3<bool>(true, false, true), !arg_0.b.x)), select(vec3<bool>(arg_0.d.b.x <= arg_0.c.b.x, any(arg_0.c.a), false), vec3<bool>(true, false, !arg_0.b.x), arg_0.a.a.x & all(arg_0.a.a)), select(!select(arg_0.a.a, arg_0.a.a, arg_0.a.a), vec3<bool>(arg_0.c.a.x, false, false), vec3<bool>(true, arg_0.c.a.x, arg_0.a.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.b.x), _wgslsmith_f_op_f32(abs(-1380f)), _wgslsmith_f_op_f32(-arg_0.c.b.x), 118f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1177f, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x) + vec4<f32>(arg_0.d.b.x, 405f, -813f, arg_0.a.b.x)), _wgslsmith_f_op_vec4_f32(arg_0.d.b + arg_0.d.b))), _wgslsmith_f_op_vec4_f32(min(arg_0.a.b, vec4<f32>(_wgslsmith_div_f32(arg_0.c.b.x, arg_0.d.b.x), _wgslsmith_f_op_f32(arg_0.d.b.x - arg_0.d.b.x), arg_0.c.b.x, _wgslsmith_f_op_f32(exp2(arg_0.a.b.x))))), true)));
    global0 = ~4698u;
    let var_1 = ~(~countOneBits(u_input.a));
    global0 = u_input.a.x;
    let var_2 = vec4<u32>(u_input.a.x, var_1.x, abs(1u), 3825u);
    return !(!vec3<bool>(var_0.a.x, var_0.a.x, all(vec2<bool>(true, false))));
}

fn func_2() -> vec4<bool> {
    global0 = _wgslsmith_mod_u32(u_input.a.x, u_input.a.x);
    var var_0 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), func_3(Struct_4(Struct_1(vec3<bool>(false, false, false), vec4<f32>(312f, 101f, 401f, -542f)), vec2<bool>(false, false), Struct_1(vec3<bool>(true, true, true), vec4<f32>(385f, 148f, -295f, 1144f)), Struct_1(vec3<bool>(false, true, false), vec4<f32>(611f, -889f, 116f, -1000f)))))), vec3<bool>(true || any(vec4<bool>(true, false, true, true)), true, any(vec4<bool>(false, false, false, true))), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(314f, 1070f, -669f, -1220f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, -259f, 1000f, -1735f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, 338f, -1000f, 675f) * vec4<f32>(-823f, 765f, 701f, -1203f)), _wgslsmith_div_vec4_f32(vec4<f32>(-162f, -3170f, -1218f, 135f), vec4<f32>(-533f, -292f, -193f, -740f))), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-366f, 1040f, -708f, -1000f))))));
    global0 = _wgslsmith_sub_u32(select(4294967295u, u_input.a.x, true), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 1u)) ^ (_wgslsmith_add_u32(53799u, u_input.a.x) >> (~firstTrailingBit(4294967295u) % 32u)));
    var var_1 = Struct_2(-1253f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(681f, 1f, -1788f)), func_3(Struct_4(Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, -831f, var_0.b.x))), var_0.a.xz, Struct_1(func_3(Struct_4(Struct_1(vec3<bool>(true, true, var_0.a.x), var_0.b), vec2<bool>(true, false), Struct_1(var_0.a, vec4<f32>(909f, 771f, 2244f, 263f)), Struct_1(var_0.a, vec4<f32>(var_0.b.x, -948f, 412f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(trunc(var_0.b))), Struct_1(vec3<bool>(true, var_0.a.x, true), var_0.b))), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.b)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f - var_0.b.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), var_1.a))) - -1063f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -871f, var_1.b.x)), !func_3(Struct_4(var_1.d, vec2<bool>(var_1.d.a.x, true), Struct_1(vec3<bool>(var_1.d.a.x, true, var_0.a.x), var_0.b), Struct_1(vec3<bool>(var_1.d.a.x, var_1.c.x, false), vec4<f32>(151f, 243f, 991f, 180f)))), var_1.d);
    return vec4<bool>(var_0.a.x | false, any(vec3<bool>(all(vec3<bool>(var_1.c.x, true, true)) && var_0.a.x, var_0.a.x, !var_1.d.a.x)), false, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(trunc(-752f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) * _wgslsmith_f_op_f32(-var_1.a)));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = arg_0;
    return !(!func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<u32>(~_wgslsmith_add_u32(u_input.a.x, 99284u), ~u_input.a.x, min(u_input.a.x, max(u_input.a.x, 5844u) << (u_input.a.x % 32u))), ~(~(~u_input.a | ~u_input.a)), vec3<bool>(any(vec4<bool>(true, true, true, false)) || !select(false, true, false), false, true));
    var var_1 = false;
    global0 = ~_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 5118u, 0u)), vec3<u32>(u_input.a.x, 25704u, u_input.a.x))) >> (~4294967295u % 32u);
    let var_2 = true;
    global0 = 4294967295u;
    global0 = reverseBits(~(~91356u));
    var var_3 = any(func_1(-616f));
    let var_4 = Struct_5(max(vec3<u32>(~max(48910u, var_0.x), ~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, u_input.a.x, 18027u), ~vec4<u32>(0u, var_0.x, var_0.x, var_0.x))), vec3<u32>(~var_0.x, ~30525u, abs(_wgslsmith_mod_u32(var_0.x, 1u)))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1506f - 345f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(912f + 205f), _wgslsmith_f_op_f32(min(678f, 427f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1036f * -705f), _wgslsmith_f_op_f32(abs(1716f)), _wgslsmith_div_f32(-529f, -908f))), select(vec3<bool>(true, !var_2, any(vec2<bool>(true, false))), vec3<bool>(!var_2, any(vec2<bool>(var_2, var_2)), var_2 && var_2), func_3(Struct_4(Struct_1(vec3<bool>(var_2, true, false), vec4<f32>(-353f, -1288f, 1000f, -307f)), vec2<bool>(var_2, var_2), Struct_1(vec3<bool>(var_2, var_2, var_2), vec4<f32>(140f, -1047f, 683f, 397f)), Struct_1(vec3<bool>(var_2, false, false), vec4<f32>(-128f, -695f, -2200f, 1208f))))), Struct_1(vec3<bool>(var_2, false, true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2034f, 884f, -441f, -1230f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, -951f, 671f, -690f)))))), Struct_3(vec2<u32>(firstLeadingBit(0u), _wgslsmith_sub_u32(1u, u_input.a.x & 27067u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2237f) - _wgslsmith_f_op_f32(-1000f + 457f)), vec3<f32>(1093f, -192f, _wgslsmith_f_op_f32(round(-1961f))), func_1(_wgslsmith_div_f32(-1287f, -1000f)).wyx, Struct_1(vec3<bool>(true, false, var_2), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(262f, 1550f, -1000f, -1175f))))), -24338i), func_1(1074f).yz);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec4<i32>(var_4.c.c, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -5202i, -31822i), vec3<i32>(2147483647i, var_4.c.c, -2147483647i)), -1i, -1i | var_4.c.c), -firstLeadingBit(vec4<i32>(39610i, var_4.c.c, 0i, 2147483647i)), any(vec4<bool>(true, true, true, true)))), var_4.c.c, _wgslsmith_dot_vec3_u32(~max(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(u_input.a.x, 0u, 4294967295u)), ~vec3<u32>(u_input.a.x, 19442u, var_4.c.a.x)), ~abs(countOneBits(var_4.a))));
}

