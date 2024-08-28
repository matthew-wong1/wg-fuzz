struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = Struct_2(select(vec2<bool>(select(true, all(vec2<bool>(arg_0.a, true)), select(arg_0.a, arg_0.e, arg_0.e)), reverseBits(2147483647i) == ~arg_0.d.x), !(!(!vec2<bool>(false, arg_0.e))), all(!(!vec3<bool>(false, arg_0.e, false)))), !(!(!select(vec4<bool>(arg_0.b.b, true, arg_0.e, true), vec4<bool>(arg_0.a, arg_0.e, false, false), vec4<bool>(false, true, arg_0.a, arg_0.c)))), Struct_1(~arg_0.d.x, true), ~select(~u_input.a, ~vec4<u32>(u_input.c.x, 41331u, 0u, 0u), select(vec4<bool>(true, false, arg_0.c, true), vec4<bool>(false, arg_0.b.b, true, arg_0.a), vec4<bool>(false, arg_0.e, arg_0.e, false))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(14245u, 7057u, u_input.b, u_input.a.x), u_input.c >> (u_input.a % vec4<u32>(32u)), u_input.c) % vec4<u32>(32u)));
    let var_1 = Struct_2(var_0.a, !var_0.b, Struct_1(~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-10785i, 45709i), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.a, arg_0.b.a, var_0.c.a), vec3<i32>(arg_0.b.a, -16910i, var_0.c.a))), !(true | !var_0.a.x)), ~vec4<u32>(u_input.a.x, ~firstLeadingBit(u_input.a.x), u_input.c.x, ~9525u));
    let var_2 = _wgslsmith_f_op_f32(1420f - 1000f);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(394f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(920f))), -3127f) * vec4<f32>(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(round(-1277f)))), var_2)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, var_2, 1260f, -1723f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(948f, 208f, 374f, 508f) * vec4<f32>(309f, var_2, -393f, -561f)), var_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-181f, var_2, var_2, var_2)))), vec4<f32>(_wgslsmith_f_op_f32(1201f * var_2), var_2, 612f, _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(f32(-1f) * -1059f)))));
    let var_4 = vec3<i32>(_wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_div_i32(~var_0.c.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 29916i), vec3<i32>(var_1.c.a, -40545i, 1i))), firstLeadingBit(-_wgslsmith_div_i32(37334i, -8420i))), -2147483647i, _wgslsmith_dot_vec2_i32(arg_0.d, vec2<i32>(27456i, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -12322i, 0i, var_0.c.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, 47551i, -15327i), vec4<i32>(var_1.c.a, 2147483647i, arg_0.d.x, -58494i))))));
    return vec2<bool>(!(((i32(-1i) * -1i) | _wgslsmith_add_i32(arg_0.d.x, var_4.x)) > 1i), true);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(vec2<bool>(any(select(vec2<bool>(true, true), func_3(Struct_4(false, Struct_1(-2979i, true), false, vec2<i32>(2147483647i, 2147483647i), false)), vec2<bool>(true, true))), !select(1u > u_input.c.x, true, false)), vec4<bool>(!any(vec4<bool>(false, false, true, false)) || true, _wgslsmith_clamp_i32(~2147483647i, -17949i, 1i) <= _wgslsmith_mult_i32(1i, 1i), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), false), Struct_1((~(-2147483647i) & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(4869i, 25952i))) >> ((415u ^ _wgslsmith_mult_u32(u_input.c.x, 45863u)) % 32u), false), u_input.a | u_input.a);
    var var_1 = Struct_3(var_0.c, Struct_2(var_0.b.ww, vec4<bool>(var_0.b.x | true, var_0.a.x, !var_0.b.x, !(u_input.a.x < var_0.d.x)), Struct_1(~(-38321i), var_0.c.b), ~(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 29157u, 0u, var_0.d.x), u_input.c) >> ((u_input.a & u_input.c) % vec4<u32>(32u)))), 448f, Struct_1(var_0.c.a, var_0.b.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1218f, -737f, var_1.c, var_1.c) - vec4<f32>(var_1.c, var_1.c, var_1.c, var_1.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 277f, 961f, var_1.c) - vec4<f32>(-776f, var_1.c, var_1.c, var_1.c)))))));
    var_1 = Struct_3(Struct_1(abs(161i), !(!any(var_1.b.b.xwz))), Struct_2(!var_1.b.b.wy, !(!select(vec4<bool>(var_0.b.x, true, false, var_1.a.b), var_1.b.b, true)), var_0.c, vec4<u32>(min(u_input.a.x, var_0.d.x), 23948u, select(var_0.d.x, 1u, var_1.b.c.b), _wgslsmith_div_u32(1u, var_0.d.x)) & abs(vec4<u32>(23772u, u_input.c.x, var_1.b.d.x, 0u))), 1510f, var_0.c);
    var_0 = Struct_2(select(var_1.b.b.wy, vec2<bool>(true, true), var_0.b.wz), vec4<bool>(var_1.b.c.b, all(select(vec4<bool>(true, var_1.b.a.x, var_0.a.x, false), vec4<bool>(var_0.c.b, true, true, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false))) | var_1.d.b, true, (66244u != reverseBits(u_input.a.x)) | true), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(6476i, var_0.c.a) & vec2<i32>(17805i, var_0.c.a), -min(vec2<i32>(var_1.d.a, -1i), vec2<i32>(var_1.d.a, var_1.d.a))), !(_wgslsmith_f_op_f32(f32(-1f) * -506f) == _wgslsmith_f_op_f32(max(var_2.x, var_1.c)))), ~(~u_input.c));
    return var_1.c;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-491f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1319f, var_0, var_0))))));
    var var_2 = Struct_3(Struct_1(i32(-1i) * -2147483647i, true), Struct_2(vec2<bool>(true, false), vec4<bool>(any(vec2<bool>(true, true)), true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), true), Struct_1(1i, u_input.a.x < 0u), vec4<u32>(82158u, 4294967295u, u_input.c.x, 4294967295u)), var_1.x, Struct_1(~(-56120i), true));
    var var_3 = vec4<f32>(1176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(-var_2.c)))) - _wgslsmith_f_op_f32(func_2())), -175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2798f)))))));
    var var_4 = select(select(vec4<bool>(true | (u_input.c.x > 0u), ~1u > ~u_input.b, false, false), !(!vec4<bool>(var_2.a.b, true, false, var_2.d.b)), all(vec2<bool>(true, true))), !var_2.b.b, vec4<bool>(all(select(!vec3<bool>(false, var_2.d.b, var_2.a.b), select(var_2.b.b.zxy, var_2.b.b.zzw, var_2.a.b), var_2.b.b.wzw)), var_2.d.b | (var_2.d.b & true), false, true));
    return false;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> StorageBuffer {
    var var_0 = ~select(27856u, _wgslsmith_div_u32(30218u ^ (u_input.b >> (u_input.a.x % 32u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a.yx), _wgslsmith_dot_vec2_u32(vec2<u32>(106378u, u_input.b), vec2<u32>(1u, 1u)))), !arg_2.x);
    var var_1 = _wgslsmith_add_i32(arg_0, arg_0);
    var_1 = min(arg_0, -1i);
    var var_2 = false;
    let var_3 = _wgslsmith_dot_vec4_i32(-min(min(vec4<i32>(0i, arg_0, -33013i, 56001i), vec4<i32>(arg_0, 2147483647i, arg_0, arg_0)), ~vec4<i32>(-1i, arg_0, arg_0, arg_0)) & (vec4<i32>(-1i) * -(~vec4<i32>(1i, -29546i, arg_0, arg_0))), _wgslsmith_mod_vec4_i32(vec4<i32>(~(-25620i), arg_0, arg_0 << (u_input.b % 32u), 1i) >> (vec4<u32>(select(u_input.a.x, u_input.c.x, arg_1), ~1u, u_input.a.x ^ 0u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(1i, min(arg_0, arg_0), arg_0, arg_0)));
    return StorageBuffer(u_input.c.wwy, u_input.a.x, countOneBits(~(~vec3<u32>(1u, u_input.c.x, 1u))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-1i), ~(~(-2147483647i))), ~(~(-4833i)), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -107360i, 1i, -14413i), vec4<i32>(-10389i, 16787i, 9028i, -35489i))), true, vec2<bool>(func_1(), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
}

