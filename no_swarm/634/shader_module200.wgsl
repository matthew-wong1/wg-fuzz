struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_4) -> i32 {
    global0 = array<i32, 5>();
    var var_0 = arg_0.b;
    var var_1 = Struct_5(!vec3<bool>(abs(arg_0.b) < 4294967295u, true, arg_0.d.c.c));
    var var_2 = -1000f;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2102f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-359f)) * _wgslsmith_f_op_f32(step(343f, 931f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1006f + -673f)) - _wgslsmith_f_op_f32(334f - -1404f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1265f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1353f), -564f)))), -740f);
    return u_input.c;
}

fn func_3(arg_0: u32) -> vec3<i32> {
    var var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~(~arg_0), _wgslsmith_div_u32(1u, ~0u)), max(u_input.b.zy, u_input.b.zy));
    var_0 = min(~vec2<u32>(u_input.b.x, 28001u), _wgslsmith_mult_vec2_u32(~u_input.b.zy, u_input.a.yy));
    let var_1 = -(u_input.c ^ 2147483647i);
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(0i), u_input.c | ~firstTrailingBit(-1671i)), -firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 5u)], global0[_wgslsmith_index_u32(62401u, 5u)]) >> (vec2<u32>(arg_0, u_input.a.x) % vec2<u32>(32u))));
    var var_3 = any(vec4<bool>(true, (all(vec2<bool>(false, false)) & true) && true, (_wgslsmith_add_u32(arg_0, 4294967295u) & 33649u) < ~select(0u, 65298u, false), !select(true, true, false)));
    return (vec3<i32>(-1i) * -(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], -1i, var_1) << (~u_input.a % vec3<u32>(32u)))) & countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.b.x), 5u)], _wgslsmith_clamp_i32(-2147483647i, -26592i, var_2.x), 0i) & ~(~vec3<i32>(2147483647i, var_1, -1i)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec2<u32> {
    let var_0 = 10060u;
    let var_1 = vec4<bool>(arg_0.c.c, select(all(select(vec3<bool>(arg_2.x, arg_3.x, arg_0.a), vec3<bool>(arg_2.x, true, arg_3.x), true)), true, true), true, !arg_3.x);
    let var_2 = i32(-1i) * -2147483647i;
    let var_3 = i32(-1i) * -6873i;
    let var_4 = Struct_5(arg_2.xwy);
    return _wgslsmith_clamp_vec2_u32(arg_0.c.a, u_input.a.zz, u_input.b.zy);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    return Struct_1(func_4(Struct_3(!arg_0.x, global0[_wgslsmith_index_u32(~61867u, 5u)] & global0[_wgslsmith_index_u32(0u, 5u)], Struct_1(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.a.x)), u_input.a.x, any(arg_0), vec4<i32>(-2147483647i, -35992i, u_input.c, -1i) & vec4<i32>(-8311i, u_input.c, global0[_wgslsmith_index_u32(5521u, 5u)], -1i))), func_3(u_input.b.x), vec4<bool>(arg_0.x, any(select(vec2<bool>(arg_0.x, true), arg_0, vec2<bool>(arg_1, true))), false == any(vec4<bool>(arg_0.x, true, arg_1, false)), true), arg_0), 1u, any(!select(vec4<bool>(arg_1, false, arg_1, arg_0.x), !vec4<bool>(true, arg_1, false, false), all(vec4<bool>(arg_0.x, false, true, arg_0.x)))), select(select(~(vec4<i32>(u_input.c, 19078i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 35185i) ^ vec4<i32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(52536u, 5u)], 0i)), -(~vec4<i32>(-2641i, u_input.c, u_input.c, 52577i)), vec4<bool>(arg_1, true, true, true)), ~vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 58079u), 5u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(1u, 5u)], 23454i, global0[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(global0[_wgslsmith_index_u32(20326u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 8128i, -2147483647i)), 0i, -2147483647i), false));
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = !(!vec3<bool>(all(select(vec3<bool>(true, true, arg_0.b.c), vec3<bool>(false, arg_0.b.c, arg_0.b.c), arg_0.b.c)), false && (u_input.a.x > arg_0.a.x), false | arg_0.b.c));
    let var_1 = ~((u_input.c & global0[_wgslsmith_index_u32(~u_input.b.x, 5u)]) >> (~_wgslsmith_sub_u32(_wgslsmith_mod_u32(25122u, 14071u), _wgslsmith_clamp_u32(9421u, 22060u, 1u)) % 32u));
    global0 = array<i32, 5>();
    var var_2 = vec4<i32>(global0[_wgslsmith_index_u32(~(~4294967295u), 5u)], abs(~(arg_0.b.d.x & u_input.c)) << (_wgslsmith_mult_u32(4294967295u, u_input.b.x) % 32u), func_2(vec2<bool>(any(vec3<bool>(false, var_0.x, false)) & func_2(var_0.xy, arg_0.b.c).c, false), true).d.x, _wgslsmith_mod_i32((~var_1 ^ -22145i) | -33725i, 6256i >> (abs(_wgslsmith_mod_u32(u_input.a.x, arg_0.b.b)) % 32u)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(581f)))) + -1218f), _wgslsmith_f_op_f32(-1982f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1830f + -664f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f - 622f)))), _wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 417f), _wgslsmith_f_op_f32(1678f + -356f)))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_0 = -2147483647i;
    var_0 = -(~(-1i)) ^ (func_1(Struct_4(Struct_2(vec2<u32>(u_input.a.x, 47165u), Struct_1(vec2<u32>(8453u, u_input.a.x), 62550u, false, vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.c, 31785i, -2147483647i))), 56785u, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], Struct_3(true, 0i, Struct_1(vec2<u32>(1u, u_input.b.x), u_input.b.x, true, vec4<i32>(-5290i, u_input.c, 1i, u_input.c))))) & func_5(Struct_2(vec2<u32>(39472u, u_input.a.x) >> (u_input.b.zx % vec2<u32>(32u)), func_2(vec2<bool>(false, false), true))));
    var_0 = func_5(Struct_2(min(u_input.a.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.yz) | vec2<u32>(u_input.b.x, 28159u)), func_2(vec2<bool>(true, true), !(u_input.a.x > 10878u))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-562f, _wgslsmith_f_op_f32(f32(-1f) * -465f)))), 1000f);
    let var_2 = Struct_5(vec3<bool>(func_2(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))).c, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(1103f, vec4<u32>(1u, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, select(28981u, u_input.a.x, false)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 18280u), abs(u_input.b))) ^ _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, u_input.b.x, u_input.b.x, 18898u) << (vec4<u32>(u_input.b.x, u_input.b.x, 28886u, 27813u) % vec4<u32>(32u)), vec4<u32>(1u, u_input.b.x, 2674u, 34358u)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 8963u, 33403u, 0u), vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1136u, 4294967295u, 4294967295u))), abs(~vec4<u32>(u_input.a.x, u_input.b.x, 33327u, 108599u))), _wgslsmith_div_vec3_i32(firstLeadingBit(-select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.c, 9036i), vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), var_2.a)), abs(-abs(vec3<i32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(13841u, 5u)])))));
}

