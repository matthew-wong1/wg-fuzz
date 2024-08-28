struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -17050i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = !(true && !any(vec4<bool>(true, false, true, false)));
    let var_1 = Struct_1(-1058f, select(u_input.d, vec4<u32>(abs(u_input.a.x), 7171u, _wgslsmith_add_u32(0u, 0u) | u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), u_input.d.x)), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))), ~_wgslsmith_div_u32(min(_wgslsmith_clamp_u32(u_input.d.x, 0u, 36069u), ~50653u), firstTrailingBit(~u_input.d.x)), true);
    let var_2 = max(abs(1u), u_input.b.x) != ~_wgslsmith_clamp_u32(~u_input.d.x, _wgslsmith_sub_u32(var_1.c, 0u) >> (reverseBits(28177u) % 32u), _wgslsmith_clamp_u32(21313u, ~60368u, ~4294967295u));
    let var_3 = 1518f;
    var_0 = var_1.d;
    return _wgslsmith_f_op_f32(-var_3);
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = 2147483647i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-354f)) + _wgslsmith_f_op_f32(-482f - -1711f)) * _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u), u_input.d) | vec4<u32>(arg_0 << (22983u % 32u), 74805u, ~0u, 13853u), 25236u, false), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-505f + 298f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(389f)))), u_input.d, arg_0, true), vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)) & all(vec3<bool>(true, false, false)), true, !all(vec3<bool>(false, false, false)) | (any(vec4<bool>(true, true, false, true)) | (u_input.c < u_input.c)), true | any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -378f))), u_input.d, min((1u >> (u_input.a.x % 32u)) & 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 3006u, u_input.d.x) >> (vec3<u32>(u_input.a.x, arg_0, u_input.b.x) % vec3<u32>(32u)), u_input.a.zzx)), all(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(943f + 240f), -821f)), _wgslsmith_div_vec4_u32(~u_input.d, select(~vec4<u32>(4294967295u, 0u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 4294967295u, u_input.d.x), true)), ~14646u, true));
    var_1 = Struct_2(var_1.e, Struct_1(var_1.a.a, ~var_1.e.b, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, arg_0), ~24945u), !(~arg_0 < abs(var_1.e.c))), select(vec4<bool>(all(vec2<bool>(var_1.e.d, var_1.c.x)), select(any(vec4<bool>(var_1.e.d, var_1.c.x, var_1.e.d, true)), !var_1.d.d, false), (true && var_1.c.x) && true, select(true == var_1.c.x, true, !var_1.e.d)), vec4<bool>(all(var_1.c.xw), !(!var_1.e.d), all(var_1.c.zw), true), !var_1.e.d), var_1.a, var_1.a);
    var var_2 = var_1.d.b;
    var var_3 = var_1.c.yzx;
    return ~(-u_input.e);
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    global0 = (((func_2(4294967295u) | 2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.c, u_input.c) & vec3<i32>(2714i, u_input.c, u_input.e), vec3<i32>(u_input.c, -46577i, 1i) | vec3<i32>(u_input.c, u_input.c, 1i))) << (u_input.a.x % 32u)) << (9212u % 32u);
    var var_0 = !select(!select(!vec3<bool>(arg_0.x, false, false), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(false, true, false), arg_0.x), vec3<bool>(true, arg_0.x, false)), vec3<bool>(any(!vec3<bool>(arg_0.x, arg_0.x, false)), any(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, true, arg_0.x), arg_0.x)), !select(arg_0.x, false, false)), arg_0.x & !(arg_0.x | true));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(12724u, u_input.a.x, u_input.b.x, 1u), u_input.d), u_input.a), _wgslsmith_dot_vec2_u32(~reverseBits(u_input.a.xx), vec2<u32>(min(u_input.b.x, 0u), _wgslsmith_div_u32(u_input.a.x, u_input.b.x))), all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), var_0.x)) || arg_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(400f, -108f)))), abs(max(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), ~vec4<u32>(u_input.a.x, u_input.d.x, u_input.d.x, u_input.d.x))), 1u, var_0.x), vec4<bool>(!(1i <= u_input.c), false, arg_0.x && false, (~1u ^ u_input.b.x) < 1u), Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f * 1224f))), reverseBits(vec4<u32>(u_input.b.x & u_input.d.x, ~0u, _wgslsmith_clamp_u32(18499u, 1u, u_input.b.x), ~4294967295u)), 70986u, true), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-104f, -743f)), _wgslsmith_f_op_f32(-599f - -790f)), ~(max(u_input.a, vec4<u32>(35360u, 1843u, u_input.b.x, 1u)) >> (vec4<u32>(u_input.d.x, 4294967295u, 1u, u_input.b.x) % vec4<u32>(32u))), select(59407u, 4294967295u, false), arg_0.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_3()), var_1.a.b >> (var_1.d.b % vec4<u32>(32u)), u_input.b.x, false);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_2.a), vec2<f32>(var_2.a, var_2.a), arg_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1996f, 170f) + vec2<f32>(var_2.a, 359f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, var_1.e.a) + vec2<f32>(1000f, -609f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-469f, var_2.a), vec2<f32>(var_2.a, var_2.a)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1442f, var_2.a), vec2<f32>(1000f, var_2.a), arg_0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, var_1.a.a), vec2<f32>(var_2.a, var_1.d.a)))))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.e.a))), -715f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, 795f)) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.e.a), -1134f)), select(!(!vec2<bool>(var_1.e.d, false)), vec2<bool>(false, all(vec2<bool>(var_1.b.d, var_1.b.d))), vec2<bool>(all(vec3<bool>(false, true, var_1.c.x)), false)))));
    return vec2<f32>(384f, _wgslsmith_f_op_f32(-var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(!any(vec3<bool>(true, true, true)), true)));
    var var_1 = !(true & !(true & any(vec3<bool>(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-286f - -1815f) - -842f)), ~(u_input.a >> (u_input.d % vec4<u32>(32u))), var_0.x);
}

