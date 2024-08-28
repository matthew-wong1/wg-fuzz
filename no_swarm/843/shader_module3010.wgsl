struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> vec2<u32> {
    var var_0 = arg_0;
    var var_1 = vec4<bool>(true, 0u == (~u_input.b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 11931u), max(vec2<u32>(var_0.b, arg_0.a.x), var_0.a))), false, true);
    var var_2 = i32(-1i) * -arg_1.x;
    let var_3 = max(abs(_wgslsmith_div_i32(-4756i, -_wgslsmith_clamp_i32(-34686i, arg_1.x, -2147483647i))), _wgslsmith_dot_vec2_i32(countOneBits(u_input.c), vec2<i32>(-(~arg_1.x), ~(-u_input.c.x))));
    let var_4 = Struct_2(!arg_2, vec3<f32>(_wgslsmith_div_f32(var_0.c.a.x, _wgslsmith_f_op_f32(-var_0.c.a.x)), arg_0.d.a.x, var_0.c.a.x), -1i);
    return ~(~(~(~vec2<u32>(arg_0.b, 4294967295u))) & vec2<u32>(~41634u, arg_0.a.x));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(ceil(1511f));
    let var_1 = Struct_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(140f - _wgslsmith_f_op_f32(-var_0)), var_0, 554f)), ~(~firstTrailingBit(-1871i)));
    return Struct_3(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(func_3(Struct_3(vec2<u32>(0u, 1u), 50773u, Struct_1(vec3<f32>(-430f, var_1.b.x, -133f)), Struct_1(vec3<f32>(-678f, -194f, -558f))), vec4<i32>(var_1.c, u_input.c.x, -2147483647i, u_input.c.x), var_1.a), vec2<u32>(u_input.a, 1u) >> (vec2<u32>(70062u, u_input.a) % vec2<u32>(32u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 4294967295u))), u_input.b), countOneBits(9672u), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), 2308f, var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-406f, -2170f, var_1.b.x), vec3<f32>(-343f, 1290f, 2269f))))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = -(-1i << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, arg_0.a.x) << (0u % 32u), 97817u | func_3(arg_0, vec4<i32>(u_input.c.x, 29388i, -42253i, 31200i), false).x) % 32u));
    var var_1 = Struct_2(any(vec2<bool>(true, true)) && true, arg_1.a, -65451i);
    var_1 = Struct_2(var_1.a || false, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(854f, _wgslsmith_f_op_f32(arg_0.d.a.x * 260f), var_1.b.x), vec3<f32>(551f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2019f, arg_1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.x)))))), 37975i);
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(abs(var_1.b))))), -1i);
    var var_2 = !(!select(!(!vec4<bool>(var_1.a, false, var_1.a, var_1.a)), select(!vec4<bool>(true, true, var_1.a, var_1.a), vec4<bool>(false, true, var_1.a, true), !vec4<bool>(false, var_1.a, var_1.a, true)), any(!vec3<bool>(false, var_1.a, true))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a.x, 959f, arg_0.d.a.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = u_input.c;
    var_1 = abs(u_input.c);
    var var_2 = _wgslsmith_div_i32(-20755i, ~var_0.d);
    var_2 = ~u_input.c.x;
    return Struct_2(any(select(vec3<bool>(true, false, true), vec3<bool>(var_0.a | arg_0.a, true, u_input.c.x <= -32147i), any(vec4<bool>(false, var_0.a, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1684f)) + _wgslsmith_f_op_f32(912f - var_0.c)), _wgslsmith_f_op_f32(1496f + var_0.c), _wgslsmith_f_op_f32(943f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, -147f)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-7192i, arg_0.d, 1i) & vec3<i32>(u_input.c.x, 30390i, var_0.d), vec3<i32>(-1i, arg_0.d, 29101i)), ~vec3<i32>(-32707i, u_input.c.x, -1i)), ~0i));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f));
    let var_1 = func_5(Struct_4(true, reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(62068u, arg_2, 4294967295u, u_input.a), select(vec4<u32>(u_input.a, arg_2, arg_2, 1u), vec4<u32>(u_input.a, arg_2, arg_2, arg_2), vec4<bool>(false, arg_1, false, false)))), -364f, i32(-1i) * -33108i), func_4(func_2(), func_2().c, _wgslsmith_f_op_vec2_f32(abs(arg_0.a.zx))), func_2().c, func_2().c);
    var_0 = _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x);
    var var_2 = !select(!select(vec4<bool>(arg_1, true, true, var_1.a), vec4<bool>(var_1.a, true, false, true), vec4<bool>(var_1.a, false, var_1.a, false)), select(vec4<bool>(any(vec4<bool>(false, var_1.a, false, arg_1)), arg_1 | arg_1, arg_2 != 33298u, true), vec4<bool>(false, var_1.a, true, true), true), arg_1);
    let var_3 = arg_0.a.x;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-827f, -749f)))), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = min(~_wgslsmith_div_vec2_u32(vec2<u32>(~64857u, ~arg_2.a.x), _wgslsmith_sub_vec2_u32(~vec2<u32>(11956u, 69244u), ~arg_2.a)), vec2<u32>(arg_2.b ^ ~1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~arg_2.a, func_3(Struct_3(arg_2.a, 11622u, Struct_1(arg_2.d.a), Struct_1(arg_1.a)), vec4<i32>(arg_0.c, arg_0.c, u_input.c.x, arg_0.c), false)), u_input.b)));
    let var_1 = -u_input.c.x == _wgslsmith_mod_i32(1i, ~2147483647i);
    let var_2 = ~1u;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, -1688f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(arg_0.b), arg_0.a, _wgslsmith_clamp_u32(1u, 0u, var_0.x))).x))), _wgslsmith_f_op_f32(f32(-1f) * -2082f)));
    var var_4 = func_4(func_2(), func_2().d, arg_0.b.xz);
    return vec3<f32>(-197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.d.a.x)), _wgslsmith_div_f32(296f, -607f))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-231f * var_4.a.x), -338f)))), _wgslsmith_div_f32(692f, _wgslsmith_f_op_f32(sign(func_2().c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1074f) + vec2<f32>(-414f, -651f))), vec2<f32>(-748f, _wgslsmith_f_op_f32(trunc(1f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_6(Struct_2(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 355f) + vec3<f32>(var_0.x, var_0.x, -851f)), _wgslsmith_mod_i32(-1i, 1i)), Struct_1(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x)), true, 93115u))), Struct_3(firstLeadingBit(vec2<u32>(u_input.a, u_input.b)), u_input.a | 0u, func_2().d, Struct_1(vec3<f32>(1073f, var_0.x, var_0.x))))))));
    var var_2 = all(vec2<bool>(true, true));
    let var_3 = func_5(Struct_4(true, ~reverseBits(vec4<u32>(u_input.a, 31663u, u_input.a, 0u)) ^ vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.b), vec4<u32>(33912u, 0u, u_input.a, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().d.a.x) + _wgslsmith_f_op_f32(-var_0.x)), ~_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(u_input.c.x, -3290i))), var_1, var_1, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(-1000f, 562f, var_0.x)))) - var_1.a))).a;
    let var_4 = func_2();
    var var_5 = var_1;
    var var_6 = 1i;
    let var_7 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1055f), var_4.d.a.x, func_5(Struct_4(!var_3, ~vec4<u32>(0u, u_input.b, var_4.a.x, 75753u), _wgslsmith_f_op_f32(step(707f, var_4.c.a.x)), reverseBits(2147483647i)), func_2().d, var_4.c, Struct_1(_wgslsmith_f_op_vec3_f32(-var_4.c.a))).b.x), vec4<f32>(823f, var_5.a.x, var_5.a.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(~abs(firstLeadingBit(vec4<u32>(34235u, var_4.b, u_input.b, 69246u))), ~vec4<u32>(u_input.a, ~34228u, 1u, ~u_input.b)), 43440i, func_3(func_2(), vec4<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.c.x, u_input.c.x, select(1i, -55051i, true) | _wgslsmith_mod_i32(-18776i, 32860i)), var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().c.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(~4294967295u, 4294967295u, 28198u << (0u % 32u), ~u_input.b), min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.a.x, 56507u, u_input.a, 51566u), vec4<u32>(var_4.b, u_input.a, var_4.a.x, u_input.a)) >> (abs(vec4<u32>(38119u, var_4.a.x, 16765u, u_input.a)) % vec4<u32>(32u)), ~min(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a), vec4<u32>(1u, u_input.a, var_4.b, u_input.a)))));
}

