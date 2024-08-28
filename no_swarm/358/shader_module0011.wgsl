struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = all(vec4<bool>(arg_0.x | true, arg_0.x, !(!any(vec3<bool>(arg_0.x, false, false))), any(select(select(vec2<bool>(arg_0.x, false), arg_0, arg_0), !arg_0, any(vec4<bool>(arg_0.x, false, arg_0.x, false))))));
    let var_1 = arg_2;
    var_0 = arg_0.x;
    var_0 = !(!arg_0.x);
    var_0 = true;
    return max(arg_1, max(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -37941i, u_input.a.x, -7670i), arg_2.b), ~0i), ~_wgslsmith_dot_vec4_i32(arg_2.b, arg_2.c)));
}

fn func_2() -> bool {
    var var_0 = Struct_4(false, _wgslsmith_dot_vec3_i32(vec3<i32>(-func_3(vec2<bool>(true, true), u_input.a.x, Struct_1(u_input.a.x, vec4<i32>(0i, -18591i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -3359i), 56716u), 4294967295u), u_input.a.x, u_input.a.x), firstLeadingBit(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(25206i, u_input.a.x, 1i), vec3<i32>(26335i, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 6700i, 0i))))), Struct_1(u_input.a.x, vec4<i32>(1i, -2147483647i, u_input.a.x, _wgslsmith_add_i32(-2147483647i >> (1u % 32u), 20139i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (abs(vec4<u32>(12064u, 4294967295u, 0u, 0u)) % vec4<u32>(32u)), -vec4<i32>(-10879i, u_input.a.x, u_input.a.x, u_input.a.x)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(77428u, 21569u, 108198u), vec3<u32>(21238u, 49534u, 4328u)))), Struct_2(select(vec4<bool>(any(vec3<bool>(true, true, false)), false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec2<bool>(false, false)), true))), -1039f);
    let var_1 = ~_wgslsmith_div_i32(~(var_0.c.c.x & 0i), _wgslsmith_add_i32(firstLeadingBit(1i), u_input.a.x)) >> (var_0.c.d % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1941f)), _wgslsmith_f_op_f32(var_0.e + var_0.e), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f + var_0.e)))), _wgslsmith_f_op_f32(floor(var_0.e))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, 202f, 901f, 1006f) * vec4<f32>(var_0.e, var_0.e, var_0.e, var_0.e)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.e, var_0.e, var_0.e, 1458f)))))))));
    var var_3 = countOneBits(~_wgslsmith_mod_vec4_u32(~select(vec4<u32>(46893u, 1u, var_0.c.d, var_0.c.d), vec4<u32>(21367u, 7182u, 48213u, var_0.c.d), false), countOneBits(vec4<u32>(var_0.c.d, var_0.c.d, 0u, 120826u) ^ vec4<u32>(1u, 0u, 4294967295u, var_0.c.d))));
    let var_4 = Struct_5(!vec2<bool>(var_0.d.a.x, var_0.e <= _wgslsmith_div_f32(var_2.x, var_2.x)), var_0.c, select(vec4<bool>(any(vec3<bool>(false, true, true)), true, all(!var_0.d.a.wyz), !any(vec4<bool>(var_0.d.a.x, var_0.d.a.x, true, true))), var_0.d.a, select(!select(var_0.d.a, vec4<bool>(true, false, true, false), vec4<bool>(var_0.a, false, var_0.d.a.x, var_0.a)), select(select(var_0.d.a, var_0.d.a, vec4<bool>(var_0.a, var_0.d.a.x, var_0.a, var_0.a)), !var_0.d.a, select(var_0.d.a, vec4<bool>(false, true, var_0.a, var_0.d.a.x), vec4<bool>(false, true, false, var_0.d.a.x))), select(select(var_0.d.a, var_0.d.a, vec4<bool>(true, var_0.a, false, true)), var_0.d.a, any(var_0.d.a.yxw)))), Struct_3(_wgslsmith_f_op_vec2_f32(round(var_2.xz)), -48354i, var_0.d, _wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.c.d, var_3.x, var_3.x, 98061u) & vec4<u32>(var_0.c.d, 28101u, 4294967295u, 1u)), vec4<u32>(_wgslsmith_mult_u32(14250u, 1u), ~13727u, _wgslsmith_dot_vec4_u32(vec4<u32>(2054u, 1u, var_3.x, 9736u), vec4<u32>(var_0.c.d, var_0.c.d, 15888u, var_3.x)), 1u)), ~(~(~vec4<u32>(1u, var_0.c.d, 1u, var_0.c.d)))));
    return var_4.a.x;
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec4<bool>(func_2(), true, any(vec4<bool>(true, true, true, true)), select(true, true, 1096i < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -21026i), vec4<i32>(0i, 3831i, 1i, -2147483647i)))), select(vec4<bool>(select(false, false, true) & all(vec3<bool>(true, false, true)), -1i < u_input.a.x, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-854f, -292f)));
    var_0 = select(vec4<bool>(false, all(!select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x))), func_2() & true, any(vec3<bool>(true, var_0.x, var_0.x))), vec4<bool>(any(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))), any(vec2<bool>(var_0.x | var_0.x, false | var_0.x)), false, !(1i > u_input.a.x)), var_0.x);
    var_0 = !select(vec4<bool>(!(!var_0.x), var_0.x, any(!var_0.xyz), any(vec3<bool>(var_0.x, false, var_0.x))), select(vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), all(var_0.wx), true, false), !select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, false, true), var_0.x), vec4<bool>(all(vec4<bool>(true, var_0.x, true, var_0.x)), func_2(), var_0.x, -1i >= u_input.a.x)), !(var_0.x && !var_0.x));
    var var_2 = var_0.yz;
    return Struct_1(~(u_input.a.x << (4294967295u % 32u)), -select(abs(-vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, -2147483647i)), vec4<i32>(-24315i, ~(-39483i), _wgslsmith_div_i32(13642i, 24109i), ~u_input.a.x), var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, ~1i, abs(34934i), _wgslsmith_mult_i32(-65843i & u_input.a.x, 2147483647i >> (0u % 32u))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 6982i, u_input.a.x, 16605i), vec4<i32>(8070i, -2147483647i, u_input.a.x, 39365i)) ^ ~firstLeadingBit(vec4<i32>(-46032i, u_input.a.x, 16180i, u_input.a.x))), ~38232u);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_5(vec2<bool>(arg_0.a.x | all(vec3<bool>(arg_1.a, arg_0.a.x, arg_0.c.x)), arg_1.a), arg_1.c, arg_0.d.c.a, Struct_3(arg_0.d.a, 19394i, Struct_2(select(arg_1.d.a, arg_0.c, false)), min(vec4<u32>(arg_0.d.d.x, 1u, arg_0.d.d.x, min(arg_1.c.d, 83159u)), select(select(arg_0.d.e, arg_0.d.e, vec4<bool>(arg_0.a.x, false, arg_0.c.x, true)), arg_0.d.e, !vec4<bool>(arg_0.d.c.a.x, arg_1.d.a.x, arg_1.d.a.x, false))), vec4<u32>(~66149u, arg_1.c.d, arg_0.b.d, arg_0.d.e.x >> (0u % 32u)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0.d.e, vec4<u32>(21739u, arg_0.d.e.x, arg_1.c.d, arg_0.d.e.x)), ~arg_0.b.d, _wgslsmith_mod_u32(arg_0.b.d, 0u), ~27487u) % vec4<u32>(32u))));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = _wgslsmith_mult_i32(10431i, var_0.d.b);
    let var_3 = Struct_1(-abs(_wgslsmith_clamp_i32(2147483647i, var_0.b.c.x, ~53254i)), vec4<i32>(-10679i, var_2, -2147483647i, 16568i | arg_0.b.b.x), min(~_wgslsmith_clamp_vec4_i32(select(var_0.b.c, arg_0.b.b, vec4<bool>(false, true, var_1.a, true)), _wgslsmith_div_vec4_i32(arg_1.c.b, arg_0.b.b), vec4<i32>(arg_0.d.b, var_2, arg_0.b.b.x, 1i)), vec4<i32>(arg_0.d.b, _wgslsmith_add_i32(arg_1.c.b.x, 8319i), var_0.b.a, var_1.c.a)), 13224u ^ arg_0.b.d);
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.e, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a.x, 949f) + arg_2.zz), select(vec2<bool>(true, var_0.d.c.a.x), arg_0.d.c.a.xx, arg_0.a.x))))) - vec2<f32>(-442f, arg_0.d.a.x)), _wgslsmith_sub_i32(1i, min(var_2 << (arg_1.c.d % 32u), var_0.d.b) | min(abs(var_2), var_3.a)), var_0.d.c, var_0.d.d, ~vec4<u32>(abs(90161u | arg_1.c.d), ~_wgslsmith_add_u32(arg_0.b.d, 1805u), countOneBits(~59087u), var_3.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(vec2<bool>(true, true), func_1(), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), true), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-425f, -1797f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2445f, -412f)))), 0i, Struct_2(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), select(vec4<u32>(44347u, 0u, 14400u, 29588u), ~vec4<u32>(1u, 122150u, 41169u, 4294967295u), true), vec4<u32>(1u, 1u, 1u, 1u))), Struct_4(true, ~u_input.a.x, Struct_1(_wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 27885i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x | -27199i), ~firstTrailingBit(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2147483647i)), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x) | firstTrailingBit(vec4<i32>(u_input.a.x, 0i, 8184i, 33395i)), _wgslsmith_div_u32(countOneBits(0u), 4294967295u)), Struct_2(vec4<bool>(true, true, true, all(vec3<bool>(true, true, false)))), -1000f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, -1547f, -323f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2012f, -508f, 1198f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1338f, -583f, -384f))))));
    var var_1 = var_0.c.a.zy;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, var_0.a.x, var_0.a.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2370f, var_0.a.x, var_0.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-219f + -1713f), var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 1395f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(332f, -907f, 769f)))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, 2854f)) - -2595f))), 1474f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-627f, -598f)))));
    var var_3 = -712f;
    var_1 = !select(vec2<bool>(!(var_0.c.a.x || var_1.x), all(var_0.c.a)), vec2<bool>((var_1.x && false) && true, !(38377u >= var_0.e.x)), select(!(!var_0.c.a.yw), func_4(Struct_5(var_0.c.a.ww, Struct_1(-2147483647i, vec4<i32>(var_0.b, -15031i, u_input.a.x, u_input.a.x), vec4<i32>(var_0.b, u_input.a.x, var_0.b, -15016i), var_0.e.x), vec4<bool>(false, var_0.c.a.x, var_1.x, var_1.x), Struct_3(vec2<f32>(var_0.a.x, -873f), 0i, Struct_2(vec4<bool>(var_0.c.a.x, true, var_1.x, false)), var_0.e, var_0.d)), Struct_4(var_0.c.a.x, var_0.b, Struct_1(u_input.a.x, vec4<i32>(var_0.b, u_input.a.x, var_0.b, var_0.b), vec4<i32>(var_0.b, u_input.a.x, var_0.b, u_input.a.x), var_0.e.x), var_0.c, var_0.a.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, var_2.x, var_0.a.x))), vec3<f32>(var_2.x, var_0.a.x, -1001f)).c.a.yx, !(var_0.c.a.x || var_0.c.a.x)));
    let var_4 = func_4(Struct_5(!var_0.c.a.yw, func_1(), select(vec4<bool>(var_1.x, !var_0.c.a.x, any(vec2<bool>(var_1.x, var_0.c.a.x)), false), select(var_0.c.a, select(vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x), var_0.c.a, var_0.c.a), select(vec4<bool>(var_0.c.a.x, var_1.x, var_1.x, true), vec4<bool>(true, var_0.c.a.x, var_0.c.a.x, var_1.x), vec4<bool>(var_1.x, true, var_0.c.a.x, true))), vec4<bool>(var_0.e.x > 4294967295u, var_0.c.a.x, var_1.x & false, true)), var_0), Struct_4(var_1.x, -_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(var_0.b, 2147483647i)), func_1(), var_0.c, var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1315f + -828f), var_0.a.x, _wgslsmith_f_op_f32(min(-1000f, var_2.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1487f, var_0.a.x, var_2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1318f, var_0.a.x, 1385f) - vec3<f32>(-1136f, 963f, var_0.a.x))))))).c;
    var_3 = var_0.a.x;
    var_1 = select(select(!vec2<bool>(func_4(Struct_5(vec2<bool>(var_0.c.a.x, var_1.x), Struct_1(u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 0i), vec4<i32>(16213i, -17803i, -31662i, var_0.b), var_0.e.x), var_0.c.a, var_0), Struct_4(false, var_0.b, Struct_1(28397i, vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(0i, var_0.b, var_0.b, -30323i), var_0.e.x), var_0.c, 581f), vec3<f32>(var_0.a.x, -140f, var_2.x), vec3<f32>(var_2.x, var_2.x, var_0.a.x)).c.a.x, true), select(var_0.c.a.zz, var_0.c.a.yw, !func_4(Struct_5(var_4.a.yz, Struct_1(u_input.a.x, vec4<i32>(var_0.b, var_0.b, 18811i, u_input.a.x), vec4<i32>(0i, 11983i, 0i, u_input.a.x), var_0.d.x), var_0.c.a, var_0), Struct_4(var_0.c.a.x, var_0.b, Struct_1(var_0.b, vec4<i32>(16669i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(var_0.b, 2147483647i, u_input.a.x, 0i), 4294967295u), var_0.c, -158f), vec3<f32>(var_2.x, var_0.a.x, var_2.x), vec3<f32>(var_0.a.x, -497f, 746f)).c.a.wx), var_0.c.a.yy), vec2<bool>(false, var_1.x), func_4(Struct_5(select(func_4(Struct_5(vec2<bool>(var_0.c.a.x, var_1.x), Struct_1(1i, vec4<i32>(u_input.a.x, u_input.a.x, 23802i, u_input.a.x), vec4<i32>(29493i, var_0.b, 35429i, u_input.a.x), 78574u), var_4.a, Struct_3(vec2<f32>(1776f, var_2.x), 0i, var_0.c, var_0.e, vec4<u32>(0u, 15972u, 9281u, 0u))), Struct_4(var_4.a.x, 30629i, Struct_1(10465i, vec4<i32>(2147483647i, -26974i, u_input.a.x, var_0.b), vec4<i32>(-2147483647i, 2147483647i, 26699i, 1i), 4294967295u), var_0.c, var_2.x), vec3<f32>(var_0.a.x, var_2.x, var_2.x), vec3<f32>(var_0.a.x, var_0.a.x, var_2.x)).c.a.yy, var_4.a.yy, var_1.x), func_1(), vec4<bool>(!var_0.c.a.x, false, false, true), var_0), Struct_4(true, -7357i, func_1(), Struct_2(vec4<bool>(var_4.a.x, var_1.x, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1292f, 304f, 1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2460f, var_0.a.x, 2369f), vec3<f32>(var_0.a.x, var_2.x, var_2.x), true)), all(vec3<bool>(var_1.x, var_4.a.x, var_0.c.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_0.a.x, -521f), vec3<f32>(var_2.x, -483f, 116f))))), !(!var_0.c.a.zwz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1666f)), 1992f, -488f))).c.a.yz);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-510f + _wgslsmith_f_op_f32(min(983f, var_0.a.x)))))), 1181f, _wgslsmith_f_op_f32(round(var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, ~firstLeadingBit(_wgslsmith_clamp_u32(60125u, var_0.e.x, var_0.e.x))), vec3<u32>(var_0.d.x, var_0.e.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0.d.x), vec2<u32>(56698u, 1u))) << ((func_4(Struct_5(var_0.c.a.xx, Struct_1(u_input.a.x, vec4<i32>(-24072i, u_input.a.x, var_0.b, u_input.a.x), vec4<i32>(var_0.b, -22078i, 18677i, u_input.a.x), var_0.d.x), var_4.a, var_0), Struct_4(var_4.a.x, u_input.a.x, Struct_1(9267i, vec4<i32>(-9749i, -2147483647i, var_0.b, 7210i), vec4<i32>(-2147483647i, -1i, u_input.a.x, -2147483647i), 23245u), Struct_2(vec4<bool>(false, true, true, var_0.c.a.x)), var_2.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<f32>(-746f, var_2.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, 792f, var_2.x) * vec3<f32>(-420f, var_0.a.x, var_0.a.x))).e.yzy & ~var_0.d.ywx) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(abs(func_4(Struct_5(vec2<bool>(var_1.x, true), Struct_1(u_input.a.x, vec4<i32>(0i, 2147483647i, 1i, 9832i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, var_0.b), var_0.d.x), var_4.a, Struct_3(vec2<f32>(-942f, 403f), -27629i, Struct_2(var_4.a), vec4<u32>(4294967295u, var_0.d.x, 39782u, 15530u), var_0.e)), Struct_4(var_0.c.a.x, var_0.b, Struct_1(var_0.b, vec4<i32>(27169i, var_0.b, var_0.b, -2147483647i), vec4<i32>(var_0.b, var_0.b, var_0.b, -22359i), 33225u), var_4, -1285f), vec3<f32>(-670f, -1014f, 139f), vec3<f32>(var_0.a.x, var_0.a.x, var_2.x)).a.x))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, 1644f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_2.xz)))))), _wgslsmith_dot_vec2_i32(vec2<i32>(~abs(var_0.b), -_wgslsmith_mod_i32(2147483647i, u_input.a.x)), firstTrailingBit(_wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(u_input.a.x, -68534i) | u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -2609f));
}

