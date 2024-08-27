struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<f32> {
    let var_0 = !(!(true && (firstTrailingBit(0i) >= 0i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f - arg_0) + 990f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-597f, -932f)), _wgslsmith_f_op_f32(round(1428f))))))));
    let var_2 = select(select(!select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, var_0), false), vec3<bool>(var_0, true, false), var_0), vec3<bool>(var_0, var_0, true), select(vec3<bool>(var_0 && false, true, true), select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, var_0, false), !vec3<bool>(true, true, var_0)), all(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, var_0), vec3<bool>(var_0, false, true))))), !(!select(select(vec3<bool>(false, var_0, true), vec3<bool>(true, false, true), vec3<bool>(true, var_0, true)), !vec3<bool>(false, var_0, var_0), false)), !var_0 | var_0);
    let var_3 = Struct_4(Struct_3(firstLeadingBit(vec3<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.c.xzx, vec3<i32>(1i, u_input.a, u_input.a)), _wgslsmith_sub_i32(-49307i, 534i))), _wgslsmith_mult_u32(0u ^ _wgslsmith_clamp_u32(arg_1, u_input.b, arg_1), _wgslsmith_sub_u32(4294967295u, u_input.b))), Struct_1(vec3<u32>(3994u, countOneBits(~0u), ~0u ^ (arg_1 & 0u)), select(select(vec4<bool>(var_0, var_2.x, false, var_2.x), select(vec4<bool>(var_2.x, false, false, false), vec4<bool>(false, var_2.x, false, true), var_0), any(vec2<bool>(var_2.x, true))), vec4<bool>(true, var_0 && var_2.x, select(true, false, false), var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, 35848u), vec3<u32>(u_input.b, 23982u, 1u)) <= arg_1), firstLeadingBit(vec4<u32>(4294967295u >> (arg_1 % 32u), u_input.b, _wgslsmith_mult_u32(u_input.b, arg_1), 44404u << (u_input.b % 32u))), select(~vec4<u32>(38795u, 34315u, arg_1, 100002u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, arg_1, 1u, arg_1), vec4<u32>(0u, 1u, u_input.b, 74050u)), all(vec3<bool>(var_0, var_0, true))) | _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, 52689u, 59224u) ^ vec4<u32>(4294967295u, arg_1, u_input.b, 4319u), vec4<u32>(u_input.b, u_input.b, 26738u, 4294967295u)), vec2<bool>(var_2.x, var_2.x)), firstLeadingBit(16867i | (-51662i & _wgslsmith_mult_i32(0i, u_input.c.x))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1866f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(427f, -1608f)) * _wgslsmith_f_op_f32(trunc(184f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1163f)) - _wgslsmith_f_op_f32(max(arg_0, arg_0)))) + var_1.x));
    return vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-676f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-455f, arg_0))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0, var_1.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-179f))), -1000f));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * _wgslsmith_f_op_f32(round(1101f))), min(u_input.b, 30063u)));
    let var_1 = -vec4<i32>(-u_input.a, ~(~(-1i)), ~(~(-2147483647i)), -10755i);
    var var_2 = Struct_3(vec3<i32>(i32(-1i) * -u_input.c.x, 7203i, -1i), _wgslsmith_div_u32(_wgslsmith_div_u32(abs(_wgslsmith_sub_u32(arg_1, 1u)), 4294967295u), arg_1));
    var_2 = Struct_3(firstLeadingBit(-firstLeadingBit(vec3<i32>(var_1.x, var_2.a.x, -40689i))) << (vec3<u32>(~34812u, ~arg_1, _wgslsmith_sub_u32(~arg_1, 1u)) % vec3<u32>(32u)), _wgslsmith_add_u32(1u, 0u));
    let var_3 = ~min(vec4<u32>(arg_1 >> (8390u % 32u), _wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b, 1u), vec4<u32>(var_2.b, ~_wgslsmith_clamp_u32(var_2.b, 26356u, var_2.b), 77640u, _wgslsmith_sub_u32(arg_1, ~arg_1)));
    return Struct_3(vec3<i32>(reverseBits(-9280i), abs(i32(-1i) * -1i), 0i) << (vec3<u32>(~(70989u ^ u_input.b), ~0u, firstTrailingBit(var_3.x) << (1u % 32u)) % vec3<u32>(32u)), var_3.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(vec4<bool>(true, false, true, true)) & true));
    let var_1 = Struct_1(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b, u_input.b, 90524u), _wgslsmith_sub_vec3_u32(arg_1.zww, arg_1.wwz))), select(!vec4<bool>(any(vec2<bool>(var_0, var_0)), var_0, any(vec2<bool>(var_0, var_0)), any(vec3<bool>(true, var_0, false))), !vec4<bool>(arg_1.x <= arg_0.b, true, false, any(vec4<bool>(var_0, var_0, true, true))), any(select(select(vec2<bool>(true, false), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0)), vec2<bool>(var_0, true), false))), vec4<u32>(arg_1.x, 0u, min(~abs(u_input.b), u_input.b), min(arg_1.x, ~arg_1.x | (u_input.b << (u_input.b % 32u)))), arg_1, vec2<bool>(var_0, any(vec3<bool>(!var_0, all(vec2<bool>(false, var_0)), all(vec2<bool>(false, var_0))))));
    var var_2 = Struct_3(vec3<i32>(u_input.c.x, arg_0.a.x, ~arg_0.a.x), ~arg_1.x);
    let var_3 = var_1;
    let var_4 = var_1.a.x;
    return Struct_3(vec3<i32>(-8413i, ~u_input.a, _wgslsmith_dot_vec4_i32(max(~u_input.c, ~vec4<i32>(45035i, -22277i, u_input.c.x, arg_0.a.x)), vec4<i32>(var_2.a.x, 65324i, u_input.c.x, arg_0.a.x) & -vec4<i32>(16168i, 68402i, arg_0.a.x, arg_0.a.x))), _wgslsmith_clamp_u32(1u, 165u, _wgslsmith_add_u32(20729u, abs(func_2(vec3<f32>(-292f, -586f, 1252f), 69761u).b))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = (1i ^ _wgslsmith_div_i32(u_input.c.x, _wgslsmith_mult_i32(u_input.a, u_input.c.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.b, arg_0), vec3<u32>(28605u, 1u, u_input.b)) % 32u))) << (_wgslsmith_div_u32(u_input.b, 0u) % 32u);
    var var_1 = u_input.c.x;
    var_1 = _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-var_0, _wgslsmith_clamp_i32(u_input.a, u_input.c.x, 3935i)), 2147483647i & _wgslsmith_clamp_i32(var_0, var_0, -55917i)) & -(~2147483647i));
    var_1 = -u_input.c.x;
    let var_2 = Struct_4(func_4(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(201f, 343f, -528f), vec3<f32>(-1043f, -331f, -125f), vec3<bool>(true, false, true))), ~1u), _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), u_input.b, arg_0 ^ 57533u, _wgslsmith_add_u32(58402u, 1u)), vec4<u32>(~u_input.b, ~3217u, ~u_input.b, u_input.b))), Struct_1(~(~vec3<u32>(18599u, 0u, 19484u)), !vec4<bool>(select(false, true, false), true, u_input.a == var_0, 2147483647i >= u_input.c.x), select(reverseBits(~vec4<u32>(0u, u_input.b, 6173u, 1u)), ~max(vec4<u32>(4294967295u, arg_0, 0u, u_input.b), vec4<u32>(arg_0, 1u, 0u, 47144u)), vec4<bool>(true, true, true, true)), vec4<u32>(abs(arg_0), firstTrailingBit(firstLeadingBit(u_input.b)), _wgslsmith_sub_u32(u_input.b, 4294967295u ^ arg_0), ~1u), vec2<bool>(select(true, true, true), true)), min(abs(1i), var_0 << (arg_0 % 32u)) ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -21059i), vec2<i32>(var_0, u_input.a) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u))));
    return Struct_4(Struct_3(-firstLeadingBit(~u_input.c.ywz), ~func_4(Struct_3(var_2.a.a, 141135u), ~vec4<u32>(var_2.b.d.x, 2588u, 21260u, arg_0)).b), Struct_1(var_2.b.d.xyz, var_2.b.b, vec4<u32>(1u, 18654u, 70404u, arg_0), var_2.b.c, vec2<bool>(all(var_2.b.b.xxx), all(vec3<bool>(false, var_2.b.e.x, true)))), _wgslsmith_dot_vec2_i32(~func_4(func_4(Struct_3(vec3<i32>(-21018i, -2147483647i, u_input.c.x), 0u), vec4<u32>(u_input.b, var_2.b.d.x, 4294967295u, 4294967295u)), vec4<u32>(var_2.b.a.x, 342u, 6858u, 1u) | vec4<u32>(var_2.a.b, arg_0, u_input.b, arg_0)).a.zy, abs(~_wgslsmith_mult_vec2_i32(u_input.c.zz, vec2<i32>(-37397i, 1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<i32>(-7521i, ~(i32(-1i) * -1i), 11700i), _wgslsmith_clamp_u32(51050u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 15120u), vec3<u32>(u_input.b, 29415u, u_input.b)), 24068u), u_input.b << (0u % 32u)), u_input.b));
    let var_1 = func_1(countOneBits(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(var_0.a, var_0.a), 6709i);
}

