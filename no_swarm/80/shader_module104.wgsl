struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = select(vec3<bool>(arg_2.c, true, arg_1.c), select(select(select(!vec3<bool>(arg_1.c, false, false), !vec3<bool>(true, arg_1.c, true), vec3<bool>(arg_2.c, false, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), true), vec3<bool>(false, (-23432i >> (0u % 32u)) < ~arg_0, arg_2.c | true), true), vec3<bool>(true, false, any(!vec4<bool>(false, arg_1.c, arg_2.c, arg_2.c))));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 60876i), firstTrailingBit(vec2<i32>(arg_1.a.x, 20052i))), ~arg_2.e.x), arg_0 << ((arg_2.d.x << (~0u % 32u)) % 32u)), arg_2.b, false && select(arg_1.c, -632f <= _wgslsmith_f_op_f32(step(-1515f, -748f)), !(arg_3 < u_input.a)), vec4<u32>(~(~(~arg_2.b.x)), ~arg_1.d.x, ~1u, arg_2.b.x >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.d.x), arg_2.b.yx) % 32u)), vec2<i32>(min(arg_2.e.x, _wgslsmith_div_i32(21672i, arg_0) & -2147483647i), _wgslsmith_clamp_i32(arg_3, min(-2147483647i, reverseBits(-5176i)), ~_wgslsmith_div_i32(u_input.a, 1i))));
    var_1 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i << (_wgslsmith_mult_u32(0u, 1u) % 32u), reverseBits(countOneBits(arg_2.e.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_2.e.x, 0i), vec3<i32>(var_1.a.x, var_1.e.x, arg_1.a.x)), -2147483647i, _wgslsmith_mod_i32(17968i, arg_1.e.x))), max(-23736i, ~(-2147483647i)) << (~_wgslsmith_mod_u32(arg_2.b.x, var_1.d.x) % 32u)), vec3<u32>(4294967295u, arg_1.d.x, var_1.d.x), !(!(arg_1.c && select(true, arg_2.c, var_0.x))), vec4<u32>(select(arg_1.b.x, ~_wgslsmith_mod_u32(arg_2.d.x, 67878u), true), 47121u, _wgslsmith_div_u32(_wgslsmith_mod_u32(~var_1.b.x, arg_1.d.x ^ 46410u), arg_2.b.x), ~_wgslsmith_mult_u32(arg_1.b.x, 1649u)), arg_2.e);
    var_1 = Struct_1(arg_2.a, vec3<u32>(var_1.d.x, _wgslsmith_dot_vec4_u32(arg_2.d, arg_1.d) ^ ~var_1.d.x, countOneBits(1u ^ (4294967295u << (var_1.b.x % 32u)))), arg_2.c && all(!select(var_0, var_0, var_0)), vec4<u32>(min(~_wgslsmith_mod_u32(1u, var_1.d.x), var_1.b.x), arg_1.d.x, arg_2.b.x, ~arg_2.b.x), arg_2.e);
    let var_2 = true;
    return _wgslsmith_mult_u32(arg_1.b.x, 1u) | arg_1.d.x;
}

fn func_2() -> bool {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(~(~1u)), _wgslsmith_sub_u32(~46996u, func_3(24919i, Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<u32>(46798u, 0u, 33955u), false, vec4<u32>(6505u, 4294967295u, 1664u, 24206u), vec2<i32>(var_0, 15657i)), Struct_1(vec2<i32>(u_input.a, -1i), vec3<u32>(10509u, 11700u, 1u), false, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec2<i32>(46770i, var_0)), -4315i)) | func_3(~var_0, Struct_1(vec2<i32>(1i, 2147483647i), vec3<u32>(0u, 0u, 47653u), true, vec4<u32>(29225u, 20562u, 1u, 80585u), vec2<i32>(u_input.a, var_0)), Struct_1(vec2<i32>(9093i, var_0), vec3<u32>(2627u, 1u, 4294967295u), true, vec4<u32>(46316u, 1u, 91321u, 50201u), vec2<i32>(34238i, 24588i)), 53747i)) << (~(countOneBits(7887u) << (1u % 32u)) % 32u);
    var var_2 = vec2<bool>(!all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), all(vec2<bool>(true, false)))), true);
    let var_3 = !vec2<bool>(false, var_2.x);
    let var_4 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0, u_input.a), vec2<i32>(13904i, var_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, var_0), vec4<i32>(49854i, var_0, var_0, var_0)) ^ -2147483647i) ^ vec2<i32>(2147483647i, u_input.a), vec3<u32>(~var_1, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(86686u, 1u)), var_1), var_1), !(!(any(vec2<bool>(var_2.x, true)) || false)), vec4<u32>(var_1, 1u, abs(_wgslsmith_div_u32(6628u, 37941u) >> ((var_1 << (1u % 32u)) % 32u)), ~(~29512u)), ~vec2<i32>(var_0, 1i));
    return var_4.c;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_1.a, ~(~vec3<u32>(~arg_0.d.x, 1u | arg_0.b.x, 0u)), !func_2(), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(89745u, 47506u, 3052u, arg_0.b.x), vec4<u32>(~0u, 54521u, ~arg_1.d.x, 1u))), ~vec2<i32>(arg_1.e.x << (arg_1.d.x % 32u), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, -4152i)), ~arg_0.e)));
    var var_1 = abs(min(vec4<u32>(~_wgslsmith_mult_u32(76887u, arg_1.b.x), arg_1.b.x, ~(arg_1.b.x >> (arg_0.d.x % 32u)), abs(arg_1.d.x) | ~arg_0.b.x), firstTrailingBit(vec4<u32>(arg_0.b.x, 30378u, ~arg_0.d.x, ~4294967295u))));
    var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_1(-((abs(vec2<i32>(1i, u_input.a)) & vec2<i32>(arg_0.e.x, arg_1.a.x)) | var_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.d.x, arg_1.d.x), 20206u), 0u, var_0.d.x), reverseBits(var_1.zxw)), arg_1.c, ~vec4<u32>(var_0.b.x, ~(var_0.b.x & arg_0.d.x), ~10864u, 0u), arg_1.a);
    return _wgslsmith_f_op_f32(-1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -21944i;
    var var_1 = false;
    var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-724f, _wgslsmith_f_op_f32(step(-1251f, 1000f)))) * -761f)));
    var_1 = all(select(vec4<bool>(true, _wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(-59267i, u_input.a), vec3<u32>(39081u, 0u, 0u), true, vec4<u32>(0u, 1u, 1u, 65013u), vec2<i32>(-8891i, u_input.a)), Struct_1(vec2<i32>(u_input.a, 25094i), vec3<u32>(4294967295u, 6199u, 38245u), true, vec4<u32>(2178u, 4294967295u, 4294967295u, 57985u), vec2<i32>(1i, -1i)))) != _wgslsmith_f_op_f32(1241f + -143f), true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(abs(u_input.a)) | ~(-2284i)), abs(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, 1i)), vec2<i32>(u_input.a, -17812i))) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 40094i, -12592i) << (vec4<u32>(0u, 1u, 1u, 27404u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -2147483647i, 2147483647i))), 1i));
}

