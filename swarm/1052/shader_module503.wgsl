struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(true, true))), -vec3<i32>(-2147483647i, abs(-14427i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 23804i, u_input.a), vec3<i32>(u_input.a, -10619i, -5212i))));
    let var_1 = 1u;
    let var_2 = vec2<bool>(786f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-302f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f - 545f)), !var_0.a.x)), !(!(u_input.a > -1i)));
    let var_3 = u_input.a;
    var_0 = Struct_1(vec2<bool>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1157f, -1304f))) <= _wgslsmith_f_op_f32(step(-1000f, 807f))), _wgslsmith_div_vec3_i32(var_0.b, var_0.b & vec3<i32>(var_3, 15569i, ~var_0.b.x)));
    return var_3;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(vec2<bool>(true, false), vec3<i32>(9966i, func_3(14882u) & abs(i32(-1i) * -1i), u_input.a));
    let var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1100f, 323f), 297f)) + 1f)));
    var var_2 = vec3<bool>(any(vec2<bool>(var_0.a.x | !var_0.a.x, any(!vec2<bool>(var_0.a.x, var_0.a.x)))), true, true);
    var var_3 = !select(select(vec4<bool>(var_1 == var_1, all(vec3<bool>(var_0.a.x, var_2.x, var_0.a.x)), true, var_0.a.x), vec4<bool>(true, true, var_0.a.x | var_0.a.x, var_0.a.x), !(!vec4<bool>(var_2.x, var_0.a.x, var_0.a.x, var_2.x))), select(select(vec4<bool>(false, false, var_2.x, var_0.a.x), !vec4<bool>(true, var_2.x, var_2.x, var_0.a.x), 55443u > u_input.b), select(select(vec4<bool>(var_0.a.x, var_2.x, false, false), vec4<bool>(var_2.x, var_0.a.x, var_0.a.x, var_2.x), true), vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, var_0.a.x, false, false)), vec4<bool>(u_input.b > 0u, any(vec4<bool>(var_0.a.x, var_0.a.x, true, var_2.x)), u_input.c.x == 4294967295u, -46257i != var_0.b.x)), true);
    let var_4 = !vec4<bool>(any(select(vec4<bool>(true, false, var_0.a.x, false), !vec4<bool>(false, false, var_2.x, true), !vec4<bool>(var_3.x, var_0.a.x, true, var_0.a.x))), !all(var_2.zy) && false, (var_3.x | true) | any(select(vec4<bool>(var_3.x, true, var_0.a.x, true), vec4<bool>(var_0.a.x, false, var_0.a.x, var_3.x), var_0.a.x)), false);
    return !select(select(!select(var_3.yyw, var_3.zwz, vec3<bool>(false, var_2.x, false)), var_4.xwx, vec3<bool>(var_0.a.x & false, var_2.x, true)), var_3.yxx, var_3.x);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), select(all(func_2()), true, false), true), select(vec3<bool>(true || any(vec4<bool>(false, false, true, true)), true, min(u_input.c.x, u_input.c.x) > ~59963u), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), _wgslsmith_div_f32(arg_1.x, arg_1.x) <= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.x, 614f)))), select(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 54234u, u_input.b, 0u), vec4<u32>(0u, 8281u, 29252u, 4294967295u)) == ~0u, false, !all(vec3<bool>(true, false, true))), vec3<bool>(!(arg_1.x <= 737f), -593f != _wgslsmith_f_op_f32(min(-524f, arg_1.x)), -2147483647i > ~arg_0), vec3<bool>(true, true, true)));
    let var_1 = Struct_1(vec2<bool>(var_0.x, !(all(vec3<bool>(false, true, var_0.x)) & false)), vec3<i32>(countOneBits(-(u_input.a | u_input.a)), ~_wgslsmith_add_i32(9686i, i32(-1i) * -34647i), -abs(arg_0)));
    return Struct_1(var_1.a, abs(-(~var_1.b) | var_1.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(1119f)), _wgslsmith_f_op_f32(771f * 487f), -438f, 687f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 646f, 1667f, -1000f) * vec4<f32>(712f, -118f, -722f, 1232f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(947f, -301f, -872f, -174f) * vec4<f32>(-2035f, -1361f, 1178f, -602f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, -573f, 655f, 1281f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(119f, -1201f, -284f, -1541f)))))));
    let var_1 = ~select(vec3<u32>(u_input.b, 73321u, 4294967295u), vec3<u32>(~(~40790u), ~u_input.c.x, u_input.b), arg_2.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -221f, var_0.x, var_0.x), vec4<f32>(680f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-3129f, -328f, -931f, 917f), vec4<f32>(308f, var_0.x, var_0.x, var_0.x)))) - vec4<f32>(1f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(686f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), -510f, true || arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f * 156f)), _wgslsmith_f_op_f32(-1145f * _wgslsmith_f_op_f32(max(-451f, var_0.x)))) - -606f), -471f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f + 1183f)), max(-941i, arg_0.b.x) >= _wgslsmith_clamp_i32(u_input.a, 0i, arg_0.b.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(-606f)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -566f), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), -173f, _wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(277f, 429f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -188f, 1565f, -405f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(458f, var_0.x, 1188f, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<f32>(1233f, -518f, var_0.x, var_0.x), vec4<bool>(arg_2.x, false, false, false))))), arg_2.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(2147483647i, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(460f)), -1886f), -390f)), func_2().yz, vec2<bool>(true, true));
    var var_1 = !(!(!select(vec4<bool>(var_0.a.x, false, false, true), !vec4<bool>(var_0.a.x, var_0.a.x, false, true), select(vec4<bool>(false, false, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))));
    var var_2 = func_4(func_1(40684i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1745f * -1043f), _wgslsmith_f_op_f32(-1516f + -684f)))), !var_0.a, var_0.a);
    var_1 = vec4<bool>(var_1.x, func_3(u_input.c.x << (36853u % 32u)) >= ~_wgslsmith_mod_i32(~(-15295i), _wgslsmith_sub_i32(-1i, 0i)), ~1i < ~_wgslsmith_mult_i32(var_0.b.x, ~0i), !(var_1.x & var_0.a.x));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, reverseBits(select(u_input.c, vec3<u32>(u_input.b, u_input.c.x, 24763u), true))), reverseBits(_wgslsmith_mod_u32(u_input.b, u_input.c.x)) >> (~(u_input.c.x & 43981u) % 32u), u_input.c.x, select(1u, 39938u & u_input.b, true) >> (~u_input.b % 32u)) >> (abs(vec4<u32>(firstLeadingBit(abs(19010u)), ~_wgslsmith_mult_u32(u_input.c.x, 18535u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 35101u) ^ vec3<u32>(6867u, 0u, 33398u), u_input.c), u_input.b >> (~0u % 32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_0.b.x, -2147483647i, -14414i), vec4<i32>(-2147483647i, -2136i, var_2.b.x, u_input.a)))), vec3<i32>(-27291i | var_0.b.x, abs(u_input.a), u_input.a));
}

