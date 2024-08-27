struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_3(~vec4<i32>(reverseBits(arg_0.x) | abs(1i), ~arg_0.x, -countOneBits(u_input.c.x), -48181i << (u_input.a % 32u)));
    var var_1 = arg_1.a.a;
    return arg_1.a.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(-u_input.d.yy);
    let var_1 = -firstLeadingBit(u_input.c | ~vec3<i32>(29845i, var_0.x, var_0.x));
    var var_2 = arg_2.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(910f, -427f, var_2.a, arg_2.a.a))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a, var_2.a, 964f, var_2.a))), !arg_2.b.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a, arg_2.a.a, var_2.a, 141f))) * vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.a - arg_2.a.a), -383f, var_2.a, _wgslsmith_f_op_f32(func_3(u_input.c, Struct_2(Struct_1(-497f), arg_2.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, -1000f, -668f, arg_2.a.a))), true)), select(select(select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_1.x, true, arg_2.b.x, false), false && arg_0.x), select(arg_0, vec4<bool>(arg_0.x, true, true, arg_1.x), vec4<bool>(true, true, arg_0.x, false)), abs(u_input.d.x) != var_1.x), vec4<bool>(arg_0.x, arg_1.x, !all(vec4<bool>(true, true, true, true)), true), vec4<bool>(!arg_1.x, any(vec3<bool>(arg_1.x, arg_0.x, false)) == true, any(vec2<bool>(false, false)), any(vec2<bool>(arg_2.b.x, arg_1.x))))));
    var_0 = vec2<i32>(var_0.x >> (abs(5994u ^ u_input.a) % 32u), _wgslsmith_div_i32(-2147483647i >> (~abs(u_input.a) % 32u), abs(u_input.c.x)));
    return _wgslsmith_f_op_f32(exp2(var_3.x));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1987f)))), _wgslsmith_f_op_f32(step(-1046f, 1f)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(vec4<bool>(!(u_input.c.x == -1i), true | (u_input.c.x > -42153i), false, false), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(u_input.d.xxw, Struct_2(Struct_1(var_0.a), vec3<bool>(true, false, true))))), vec3<bool>(true, true, true)))));
    var var_1 = -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d.yyy, u_input.c), abs(u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -18442i, 1i), u_input.d.ywz) >> ((vec3<u32>(u_input.a, 0u, 11363u) | vec3<u32>(0u, u_input.a, u_input.a)) % vec3<u32>(32u))) | (_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(u_input.c), _wgslsmith_div_vec3_i32(u_input.c, u_input.c)), -vec3<i32>(u_input.d.x, -90706i, u_input.c.x)) & u_input.c);
    let var_2 = u_input.c;
    var var_3 = _wgslsmith_sub_vec4_u32(~vec4<u32>(max(u_input.a, 0u) ^ ~u_input.a, u_input.a, _wgslsmith_clamp_u32(~u_input.a, u_input.a, u_input.a), ~4294967295u | _wgslsmith_sub_u32(49758u, u_input.a)), firstLeadingBit(firstLeadingBit(abs(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))))));
    return Struct_3(-_wgslsmith_div_vec4_i32(~vec4<i32>(0i, -42362i, var_1.x, -25675i) & vec4<i32>(6270i, 2147483647i, var_2.x, u_input.b), _wgslsmith_clamp_vec4_i32(abs(u_input.d), -u_input.d, vec4<i32>(2147483647i, var_2.x, -2147483647i, -52470i))));
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = ~u_input.d.x;
    var var_1 = _wgslsmith_mod_u32(arg_1.x, abs(~arg_1.x) << (u_input.a % 32u));
    var var_2 = Struct_3(arg_2.a);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1262f));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(246f, 1350f, var_3.a, var_3.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, var_3.a, var_3.a))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(var_3.a + var_3.a), var_3.a))));
    return var_3;
}

fn func_1() -> u32 {
    let var_0 = func_5(42862u, countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) << ((vec2<u32>(39595u, 1u) >> (vec2<u32>(224u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)))), func_2());
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false)), vec2<bool>(true, true), Struct_2(var_0, vec3<bool>(false, u_input.c.x >= -2147483647i, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-974f - 1169f) + _wgslsmith_f_op_f32(step(var_0.a, var_0.a)))))));
    let var_1 = func_5(u_input.a, ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 1u) | (vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, u_input.a)), ~(~vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(1u, u_input.a)), func_2());
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))), var_0);
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(512f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.b.a, -769f)), 1082f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-864f * 711f)), all(vec4<bool>(true, true, true, true))));
    return 702u;
}

fn func_6(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(arg_3.a, vec3<bool>(min(func_2().a.x, _wgslsmith_sub_i32(1i, 1i)) <= 1i, false, arg_3.b.x));
    var_0 = arg_3;
    return func_5(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(22445u, 4294967295u)), vec2<u32>(arg_0, _wgslsmith_div_u32(arg_0, u_input.a))), vec2<u32>(u_input.a, min(_wgslsmith_div_u32(26675u, 14387u), ~4294967295u))), select(arg_1.yz, vec2<u32>(4294967295u, 1u), var_0.b.yx), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(-901f > _wgslsmith_f_op_f32(max(-1010f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(698f)))))), !all(vec2<bool>(true, true)), true, true);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(floor(-1743f)), func_6(reverseBits(52371u), ~vec3<u32>(1u, func_1(), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(24087u, 0u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, -1002f, 795f, -1000f))))), Struct_2(func_5(u_input.a, abs(vec2<u32>(5901u, u_input.a)), func_2()), vec3<bool>(true, u_input.a == 0u, true))));
    let var_2 = !select(!vec3<bool>(var_0.x, false, all(vec4<bool>(var_0.x, true, false, var_0.x))), vec3<bool>(true, true, true), vec3<bool>(3827i >= _wgslsmith_div_i32(u_input.b, -28181i), _wgslsmith_f_op_f32(1292f - var_1.b.a) == _wgslsmith_f_op_f32(floor(1108f)), true));
    var_0 = select(!vec4<bool>(!var_2.x == (u_input.b >= -2147483647i), false, !var_0.x, false), vec4<bool>(var_0.x, any(var_2), all(!select(vec4<bool>(var_0.x, var_2.x, false, false), vec4<bool>(true, true, false, false), true)), false), select(select(select(vec4<bool>(var_2.x, true, var_2.x, true), !vec4<bool>(var_0.x, false, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_0.x, false, var_2.x), vec4<bool>(true, false, var_0.x, true), var_0.x)), !(!vec4<bool>(var_2.x, true, false, var_2.x)), true), !vec4<bool>(all(vec3<bool>(var_2.x, var_0.x, var_2.x)), false, var_2.x & false, !var_0.x), var_0.x));
    let var_3 = 4294967295u;
    var var_4 = Struct_2(Struct_1(var_1.a), vec3<bool>(false, any(var_2), var_0.x == (!var_0.x | var_2.x)));
    global0 = var_1.b.a;
    var var_5 = Struct_3(vec4<i32>(_wgslsmith_mod_i32(4508i, ~(11569i << (var_3 % 32u))), -2603i, ~14689i, i32(-1i) * -u_input.c.x));
    var_4 = Struct_2(Struct_1(var_1.a), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(256f)))))), func_6(51947u | firstTrailingBit(reverseBits(4294967295u)), countOneBits(~vec3<u32>(1u, u_input.a, 0u) >> ((vec3<u32>(1u, u_input.a, 4294967295u) & vec3<u32>(4294967295u, 46746u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.a.a, -1382f, var_4.a.a, var_4.a.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-121f, 1986f, var_1.a, var_1.a))))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(319f - var_1.a)), !var_2)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec4<bool>(var_2.x, var_0.x, var_0.x, false), vec4<bool>(false, false, var_0.x, false), true), select(vec2<bool>(false, true), var_4.b.yz, vec2<bool>(true, false)), Struct_2(Struct_1(var_4.a.a), vec3<bool>(false, false, false))))) - _wgslsmith_f_op_f32(floor(-257f))), 38123u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_3, var_3, ~(1u | var_3)), _wgslsmith_clamp_u32(~1u, 25766u, u_input.a) | 0u));
}

