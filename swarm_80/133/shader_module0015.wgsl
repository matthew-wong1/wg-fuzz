struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1242f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = ~(-arg_0.b.d.x);
    var var_1 = arg_0.b.a;
    let var_2 = vec4<f32>(-1705f, arg_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b + -1092f) * arg_0.b.c.x), 641f);
    var var_3 = var_2;
    let var_4 = arg_0.b;
    return vec3<u32>(select(0u, ~(~(~108740u)), true), reverseBits(~min(u_input.a, var_4.a.d.x)), _wgslsmith_mult_u32(arg_0.b.a.d.x, ~(72958u << (1u % 32u))));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = !(!vec4<bool>(arg_0.a.x, !(323f >= arg_0.b.b), _wgslsmith_div_f32(564f, 1519f) != _wgslsmith_f_op_f32(-arg_0.b.b), false));
    let var_1 = Struct_1(arg_0.b.a.a, vec3<bool>(any(arg_0.b.a.a), true, arg_0.c.x), true, arg_0.b.a.d, any(vec3<bool>(false, any(!vec2<bool>(arg_0.b.a.c, false)), arg_0.b.a.a.x)));
    let var_2 = var_1;
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.c.x, 583f, arg_0.b.b) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(943f, 819f, arg_0.b.b), vec3<f32>(713f, 1000f, -536f)))), vec3<f32>(arg_0.b.b, -669f, 1146f))))), vec2<u32>(var_1.d.x, 53299u) & (vec2<u32>(73230u << (var_2.d.x % 32u), 1u) | vec2<u32>(var_1.d.x, reverseBits(1u))));
    global0 = -455f;
    return arg_0.b.a.d.yx;
}

fn func_1() -> u32 {
    var var_0 = ~1i;
    var var_1 = any(vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), false, true));
    var var_2 = (~select(_wgslsmith_mod_u32(u_input.a, 5243u), u_input.a ^ u_input.a, true) | ~u_input.a) | (firstLeadingBit(abs(0u ^ u_input.a)) >> (_wgslsmith_dot_vec3_u32(func_2(Struct_3(vec4<bool>(true, true, false, true), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, false), false, vec3<u32>(u_input.a, u_input.a, 0u), false), 1216f, vec2<f32>(-313f, 450f), vec2<i32>(-4932i, 6804i)), vec3<bool>(true, false, false), 33886i)), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, 11919u)))) % 32u));
    let var_3 = !select(vec3<bool>(true, true, false), vec3<bool>(false, all(vec2<bool>(true, true)), true), !any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1882f, 180f, 765f) * vec3<f32>(-298f, 444f, -147f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1960f, 1690f, -431f)))))), _wgslsmith_clamp_vec2_u32(func_3(Struct_3(vec4<bool>(var_3.x, false, var_3.x, false), Struct_2(Struct_1(vec4<bool>(true, false, var_3.x, false), var_3, var_3.x, vec3<u32>(4294967295u, 0u, u_input.a), var_3.x), 1711f, vec2<f32>(1149f, -1963f), vec2<i32>(-41396i, 18552i)), vec3<bool>(var_3.x, var_3.x, var_3.x), -38752i)) << (vec2<u32>(max(0u, 4294967295u), ~u_input.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, 0u)), max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(56646u, 8990u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(28130u, 50823u), vec2<u32>(u_input.a, 0u)) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(12647u, func_1()), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a ^ 0u), ~59314u), func_3(Struct_3(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), true), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), false, vec3<u32>(u_input.a, u_input.a, u_input.a), false), _wgslsmith_f_op_f32(f32(-1f) * -1030f), vec2<f32>(163f, -376f), countOneBits(vec2<i32>(31910i, 2147483647i))), vec3<bool>(all(vec3<bool>(true, true, true)), true, true), reverseBits(countOneBits(-8358i)))).x, u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-479f * 716f), _wgslsmith_div_f32(-730f, 874f), _wgslsmith_f_op_f32(select(174f, 598f, false)), _wgslsmith_f_op_f32(f32(-1f) * -194f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 797f, -714f, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(621f, 458f, -287f, 1494f) + vec4<f32>(816f, -936f, -557f, -769f))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, -579f, -570f, -2274f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 153f, -1398f, -774f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1473f, -324f, -111f, -301f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1474f, -1000f, 606f, 1031f), vec4<f32>(-140f, -337f, -345f, 469f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1776f, -629f, -706f, -1000f))), all(vec4<bool>(true, true, true, true)))), vec4<f32>(1f, _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(f32(-1f) * -945f), 501f)));
    var var_2 = Struct_1(vec4<bool>(select(true, !all(vec2<bool>(true, true)), false), true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true))), any(select(vec2<bool>(false, false), vec2<bool>(true, false), any(vec2<bool>(false, false))))), vec3<bool>(true && !all(vec3<bool>(true, true, true)), true, !any(vec2<bool>(true, true))), var_0.x != 4294967295u, vec3<u32>(u_input.a, 9861u, ~(~55857u)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_3 = vec2<bool>(any(select(var_2.b, vec3<bool>(any(var_2.a), any(vec4<bool>(false, var_2.e, var_2.e, true)), false), any(select(vec2<bool>(false, true), var_2.a.zz, var_2.c)))), all(!(!var_2.a.zzw)));
    var var_4 = var_2.a;
    var var_5 = Struct_3(vec4<bool>(var_4.x, !select(true, any(var_2.a), var_4.x), all(!(!vec3<bool>(true, var_4.x, true))), true), Struct_2(Struct_1(select(var_2.a, !vec4<bool>(false, false, var_3.x, var_4.x), false), !var_2.b, !var_4.x, var_0.zxx, true), 2051f, _wgslsmith_f_op_vec2_f32(abs(var_1.xz)), ~(firstTrailingBit(vec2<i32>(-2925i, 1362i)) >> (_wgslsmith_mult_vec2_u32(var_0.yy, vec2<u32>(var_2.d.x, var_2.d.x)) % vec2<u32>(32u)))), !select(var_4.wzy, select(select(vec3<bool>(true, false, var_2.a.x), vec3<bool>(true, var_3.x, var_2.b.x), var_2.e), vec3<bool>(true, true, true), vec3<bool>(true, var_4.x, true)), select(var_4.xzy, var_2.b, vec3<bool>(true, false, var_3.x))), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-64325i, 2147483647i, 45131i), vec3<i32>(-2147483647i, -51333i, 1i)), countOneBits(-4510i)) ^ 1i);
    var var_6 = !vec3<bool>(true, any(var_5.b.a.a), !(var_2.c || var_5.c.x));
    var var_7 = true;
    var_5 = Struct_3(vec4<bool>(true, !all(select(vec3<bool>(true, false, true), var_4.xxz, var_4.x)), any(!vec4<bool>(var_5.a.x, false, var_3.x, var_2.e)), all(var_5.a)), Struct_2(var_5.b.a, var_1.x, vec2<f32>(_wgslsmith_f_op_f32(select(126f, _wgslsmith_f_op_f32(f32(-1f) * -1420f), all(vec3<bool>(true, var_3.x, true)))), var_1.x), vec2<i32>(-1i, ~var_5.d) ^ min(vec2<i32>(var_5.d, var_5.b.d.x) & var_5.b.d, var_5.b.d)), vec3<bool>((countOneBits(var_5.d) >> (103409u % 32u)) <= var_5.d, var_2.e, var_1.x > -471f), abs(var_5.b.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.a.d.zz, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, var_5.b.d.x), vec3<i32>(-2147483647i, var_5.b.d.x, 0i))), vec3<i32>(var_5.b.d.x, -var_5.d, _wgslsmith_mod_i32(-42976i, 23208i))), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(var_5.d, 17701i, 56435i)), firstTrailingBit(reverseBits(vec3<i32>(var_5.d, -243i, var_5.d))))), ~var_5.b.a.d.x);
}

