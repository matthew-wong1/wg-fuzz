struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(!any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), arg_1, all(select(vec4<bool>(true, true, 50382i < u_input.e, true), vec4<bool>(false, any(vec4<bool>(true, false, true, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))))));
    var_0 = Struct_2(any(!vec4<bool>(var_0.c, true, var_0.c, false)) || any(select(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), select(vec4<bool>(true, false, false, var_0.a), vec4<bool>(var_0.a, true, var_0.c, true), var_0.a), true)), arg_1, true);
    var_0 = Struct_2(true, Struct_1(select(var_0.b.a, vec4<i32>(-2147483647i, ~2147483647i, -15462i, _wgslsmith_clamp_i32(arg_1.c, var_0.b.a.x, arg_1.c)), select(!vec4<bool>(var_0.c, var_0.c, true, true), !vec4<bool>(true, true, true, var_0.c), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, var_0.a, var_0.c), var_0.c))), 0u, u_input.e), var_0.c);
    var var_1 = Struct_1(~vec4<i32>(arg_1.c, _wgslsmith_mult_i32(arg_1.c, abs(u_input.b.x)), _wgslsmith_div_i32(-25127i, _wgslsmith_mult_i32(var_0.b.c, arg_1.a.x)), -1527i), arg_0, -22168i);
    var_1 = arg_1;
    return select(select(!select(select(vec4<bool>(var_0.a, false, true, false), vec4<bool>(var_0.a, var_0.c, false, false), var_0.a), select(vec4<bool>(false, true, var_0.c, true), vec4<bool>(true, var_0.a, false, var_0.c), vec4<bool>(true, var_0.c, var_0.a, false)), !var_0.c), select(select(select(vec4<bool>(var_0.a, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, var_0.a, var_0.a)), !vec4<bool>(true, var_0.a, false, true), select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(var_0.c, var_0.c, var_0.a, var_0.c), false)), select(select(vec4<bool>(var_0.a, var_0.a, var_0.c, var_0.c), vec4<bool>(var_0.a, true, var_0.a, var_0.c), var_0.c), vec4<bool>(true, var_0.a, var_0.a, var_0.a), !var_0.c), !any(vec3<bool>(var_0.a, true, var_0.a))), vec4<bool>(true, false, true, !(arg_1.b < 4294967295u))), select(select(vec4<bool>(true, var_0.c, !var_0.a, all(vec4<bool>(var_0.c, var_0.a, true, var_0.a))), vec4<bool>(any(vec3<bool>(var_0.c, var_0.a, false)), select(false, true, true), true, var_0.a), select(select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.a, var_0.a, false, false), true), select(vec4<bool>(false, var_0.a, var_0.c, false), vec4<bool>(true, true, var_0.a, var_0.c), true), !vec4<bool>(true, var_0.c, var_0.a, true))), !vec4<bool>(var_0.a, all(vec3<bool>(true, var_0.a, true)), true, !var_0.c), !vec4<bool>(var_0.a, false, u_input.b.x <= var_1.c, true)), false);
}

fn func_2() -> u32 {
    let var_0 = Struct_3(10927u, Struct_2(!all(func_3(0u, Struct_1(vec4<i32>(0i, 71837i, u_input.b.x, 2147483647i), 15352u, u_input.e))), Struct_1(~vec4<i32>(u_input.b.x, 45112i, -1i, -2147483647i), _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, u_input.a), u_input.d)), -abs(u_input.b.x)), !select(true, true, true)), !any(vec2<bool>(false, all(vec4<bool>(false, true, false, false)))), Struct_2(all(vec4<bool>(true, u_input.a != 0u, true, true)), Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.e, u_input.e, 78870i, -10315i), vec4<i32>(u_input.e, 34255i, u_input.b.x, u_input.e), ~vec4<i32>(u_input.e, -2147483647i, 2147483647i, u_input.b.x)), 29078u, ~_wgslsmith_add_i32(16741i, u_input.e)), !(!any(vec2<bool>(false, true)))), _wgslsmith_dot_vec4_u32(max(max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 1u, 0u), vec4<u32>(111455u, 38707u, u_input.c, 75900u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 28372u)), _wgslsmith_mult_vec4_u32(vec4<u32>(26455u, 19907u, u_input.d.x, u_input.a), select(vec4<u32>(0u, u_input.d.x, u_input.d.x, 4113u), vec4<u32>(72768u, u_input.d.x, 1u, 4294967295u), vec4<bool>(false, true, false, false)))), firstTrailingBit(~vec4<u32>(21771u, 12531u, u_input.c, u_input.a))));
    var var_1 = _wgslsmith_add_u32(~1u, (67037u & max(1u, abs(u_input.d.x))) >> (_wgslsmith_mod_u32(var_0.d.b.b, max(u_input.a, abs(4294967295u))) % 32u));
    let var_2 = u_input.a;
    var var_3 = Struct_3(~0u, var_0.d, !(((var_0.b.a & var_0.b.c) || true) | select(var_0.c, true, all(vec2<bool>(var_0.d.a, true)))), Struct_2(all(!(!vec2<bool>(var_0.d.a, false))), Struct_1(vec4<i32>(u_input.b.x, abs(var_0.b.b.a.x), ~(-23776i), u_input.e ^ u_input.e), 0u, 2147483647i & u_input.e), true || (!var_0.d.c & var_0.b.a)), var_2);
    let var_4 = Struct_1(var_3.b.b.a, abs(10974u) ^ _wgslsmith_mult_u32(~var_2, _wgslsmith_add_u32(7771u, 39161u)), var_3.d.b.a.x);
    return abs(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(var_3.a, 5103u), ~1u, 0u) >> (25086u % 32u));
}

fn func_1() -> Struct_1 {
    var var_0 = ~select(vec2<u32>(countOneBits(167u), func_2()) ^ ~(~vec2<u32>(4661u, u_input.a)), u_input.d.yz, !((64057u ^ u_input.a) <= ~u_input.d.x));
    var_0 = (_wgslsmith_clamp_vec2_u32(~select(vec2<u32>(var_0.x, var_0.x), u_input.d.xz, vec2<bool>(true, true)), ~vec2<u32>(4294967295u, u_input.a), u_input.d.zy) | u_input.d.xx) | ~select(vec2<u32>(~4294967295u, firstTrailingBit(0u)), u_input.d.xz, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false)));
    let var_1 = ~max(vec4<u32>(70345u, u_input.a, select(firstTrailingBit(u_input.a), var_0.x, true), 38409u), abs(vec4<u32>(_wgslsmith_mod_u32(1u, 22105u), ~12679u, abs(var_0.x), ~u_input.a)));
    var_0 = ~((var_1.wy & countOneBits(~vec2<u32>(76065u, var_1.x))) | u_input.d.yx);
    let var_2 = Struct_1(~vec4<i32>(_wgslsmith_mult_i32(u_input.e, -2147483647i), 1i, _wgslsmith_add_i32(-51279i, u_input.e), -10787i) >> (firstLeadingBit(vec4<u32>(1551u, ~var_1.x, u_input.d.x, _wgslsmith_sub_u32(4294967295u, 120821u))) % vec4<u32>(32u)), ~_wgslsmith_dot_vec2_u32(u_input.d.xz, var_1.xw), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.e, u_input.e, u_input.b.x)), vec3<i32>(u_input.b.x, -10632i, u_input.b.x) & u_input.b) << (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(42595u, var_0.x, 0u)), var_1.zyx) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_i32(~u_input.b, ~u_input.b)));
    return Struct_1(min(vec4<i32>(-41048i, min(max(2147483647i, 0i), 16814i), u_input.b.x, u_input.b.x), vec4<i32>(34127i, select(max(var_2.c, 45857i), 0i, true), min(u_input.b.x, 0i), -52428i)), _wgslsmith_div_u32(max(var_0.x, ~_wgslsmith_sub_u32(0u, var_2.b)), select(abs(var_1.x) | 23051u, 9454u, all(vec2<bool>(true, true)))), 19847i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-vec4<i32>(~(-2147483647i), ~_wgslsmith_clamp_i32(0i, u_input.e, 0i), 46356i, -2147483647i), _wgslsmith_dot_vec2_u32(max(~u_input.d.yx, u_input.d.yy) | ~vec2<u32>(1u, 99174u), select(vec2<u32>(u_input.c, u_input.a), u_input.d.yz, vec2<bool>(select(true, true, true), any(vec4<bool>(false, false, true, true))))), -u_input.b.x);
    var_0 = func_1();
    let var_1 = vec3<u32>(u_input.a, firstLeadingBit(var_0.b), u_input.a);
    var var_2 = ~vec4<u32>(~var_0.b, _wgslsmith_clamp_u32(firstTrailingBit(~0u), var_1.x, var_1.x), ~6704u, select(~4294967295u, 51143u, select(true, false, true)) << (~var_1.x % 32u));
    let var_3 = Struct_3(max(var_2.x, _wgslsmith_mult_u32(var_1.x, 4294967295u)), Struct_2(any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))), func_1(), !any(vec4<bool>(false, false, false, true))), !all(vec2<bool>(true, true)), Struct_2(true, Struct_1(abs(vec4<i32>(var_0.c, var_0.c, u_input.b.x, -1i)), countOneBits(var_1.x) >> (func_2() % 32u), reverseBits(var_0.c)), all(vec2<bool>(true, true))), _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 0u, u_input.a, 27891u) & vec4<u32>(13559u, 0u, 0u, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_2.x, 4235u, 18926u), vec4<u32>(1u, var_0.b, var_0.b, 1u))) & vec4<u32>(var_2.x & var_2.x, ~25226u, ~61144u, u_input.d.x), ~(~abs(vec4<u32>(0u, var_1.x, 4294967295u, var_2.x)))));
    var var_4 = var_3.b;
    var var_5 = _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1074f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-174f)) + 182f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -629f), _wgslsmith_f_op_f32(f32(-1f) * -2568f))), -458f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_5.x, var_5.x, var_5.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, -807f, var_5.x) + var_5.yzw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5.xzy)))));
}

