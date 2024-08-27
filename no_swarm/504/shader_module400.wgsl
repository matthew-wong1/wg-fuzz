struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a.a)) + arg_0.c.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.x, arg_0.a.a.x) * vec2<f32>(366f, arg_0.a.a.x)), vec2<f32>(356f, arg_0.a.a.x)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c.a.x, 256f))))), arg_0.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(90880u, arg_3.b, u_input.a, u_input.a)), vec4<u32>(~22687u, 53483u, 4294967295u, select(arg_3.c, arg_3.b, true))) & 88462u, 0u, 29140u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-822f * 203f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a + vec2<f32>(arg_0.a.x, -873f)) - _wgslsmith_f_op_vec2_f32(-arg_2.a)))))), arg_0.b);
    var var_2 = false;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), -961f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * arg_0.a.x) + _wgslsmith_f_op_f32(step(-1765f, 1773f))) - -570f))));
    let var_4 = Struct_5(arg_3);
    return any(vec3<bool>(false, all(vec2<bool>(true, true)), abs(51599u) == _wgslsmith_clamp_u32(_wgslsmith_div_u32(22069u, 21352u), 1u, 1u)));
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_2(abs(~firstLeadingBit(_wgslsmith_sub_u32(arg_0, u_input.a))), 1u, _wgslsmith_sub_u32(66847u, 1u));
    var var_1 = false;
    var_1 = func_4(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-711f, 470f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 394f) * vec2<f32>(-1123f, -785f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, -402f) + vec2<f32>(1000f, -708f)))), countOneBits(-u_input.b.wz ^ u_input.b.xw)), _wgslsmith_clamp_i32(12655i, u_input.b.x, -u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(Struct_1(vec2<f32>(-277f, -230f), u_input.b.yz), vec3<bool>(false, true, false), Struct_1(vec2<f32>(584f, 1265f), vec2<i32>(u_input.b.x, u_input.b.x)), vec3<bool>(true, true, true), u_input.b.xx))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(294f, -263f), vec2<f32>(924f, 268f), vec2<bool>(true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-686f, -951f))), vec2<f32>(844f, 591f)))), vec2<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(1i, u_input.b.x))), Struct_2(max(~1u, 4169u), ~1u, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 18820u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)), ~vec3<u32>(148943u, arg_0, 4294967295u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1179f, _wgslsmith_div_f32(123f, 825f)))))));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1106f, var_2.x) * vec2<f32>(var_2.x, var_2.x))))), vec2<i32>(_wgslsmith_clamp_i32(1i, 19972i, u_input.b.x), ~39458i) ^ _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true), vec3<bool>(-1000f != var_2.x, false, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), true), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(784f, var_2.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-237f, 1823f) - vec2<f32>(1426f, var_2.x)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(465f, -1868f))))), vec2<i32>(3402i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(37336i, 2147483647i, u_input.b.x)), u_input.b.x, -29362i ^ u_input.b.x))), vec3<bool>(all(vec3<bool>(true, true, true)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true)), (all(vec3<bool>(false, false, true)) && (329f > var_2.x)) & true), max(u_input.b.zw, vec2<i32>(-1i, _wgslsmith_sub_i32(abs(u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, 0i, u_input.b.x)))));
    return vec3<u32>(1u, 1u, 1u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_2.a.a.x)), -625f)), _wgslsmith_f_op_f32(1129f - arg_2.a.a.x)), select(vec2<i32>(~2147483647i, -4006i), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.b.x, -13705i), arg_2.c.b, vec2<i32>(arg_1.b.x, u_input.b.x)), u_input.b.yw), arg_2.b.yy)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_3, min(arg_3, max(arg_3, arg_3))), firstTrailingBit(~vec3<u32>(arg_3, 0u, arg_3) << (func_2(1u) % vec3<u32>(32u)))), arg_1);
    var var_1 = countOneBits(abs(firstLeadingBit(u_input.b))) & select(~u_input.b, u_input.b, vec4<bool>(true, !arg_2.b.x, var_0.c.a.x > _wgslsmith_f_op_f32(select(arg_0.a.x, -1688f, arg_2.d.x)), arg_2.b.x));
    var_1 = min(vec4<i32>(~_wgslsmith_mult_i32(~arg_0.b.x, -5567i), 23281i, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, arg_0.b.x), _wgslsmith_clamp_i32(var_1.x, 13404i, 0i))), 69660i), vec4<i32>(var_1.x, arg_1.b.x, (i32(-1i) * -2147483647i) >> (arg_3 % 32u), countOneBits(_wgslsmith_div_i32(arg_1.b.x, arg_2.a.b.x))));
    var var_2 = Struct_5(Struct_2(_wgslsmith_div_u32(19803u, ~arg_3), var_0.b.x, (u_input.a | (var_0.b.x >> (var_0.b.x % 32u))) & ~firstLeadingBit(1u)));
    var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-2304i, -2147483647i & var_1.x, abs(1i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~var_1.x, -41707i), _wgslsmith_dot_vec2_i32(u_input.b.zw ^ arg_2.e, arg_0.b << (vec2<u32>(1u, arg_3) % vec2<u32>(32u))))), ~(u_input.b >> (select(vec4<u32>(31064u, var_0.b.x, arg_3, 80206u), vec4<u32>(4294967295u, 1u, var_2.a.b, arg_3), arg_2.d.x) % vec4<u32>(32u))) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.a.c, var_2.a.c, var_0.b.x) & vec4<u32>(arg_3, 84664u, 36500u, 0u), vec4<u32>(1775u, 1u, 32963u, var_2.a.b) & vec4<u32>(80848u, 14366u, arg_3, u_input.a)) << (~(vec4<u32>(var_2.a.b, 18208u, var_0.b.x, arg_3) | vec4<u32>(arg_3, 26325u, u_input.a, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return max(min(~(~vec4<u32>(arg_3, 0u, arg_3, u_input.a)), ~vec4<u32>(firstTrailingBit(22324u), arg_3, ~arg_3, 55761u ^ u_input.a)), ~firstTrailingBit(vec4<u32>(~arg_3, var_0.b.x, arg_3, 4294967295u >> (0u % 32u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.b.yyw;
    var var_1 = Struct_2(~(~_wgslsmith_mult_u32(func_1(Struct_1(vec2<f32>(-1000f, 438f), vec2<i32>(var_0.x, var_0.x)), Struct_1(vec2<f32>(-500f, 193f), u_input.b.xw), Struct_4(Struct_1(vec2<f32>(1247f, arg_1.x), vec2<i32>(u_input.b.x, var_0.x)), vec3<bool>(arg_2, arg_3, arg_3), Struct_1(vec2<f32>(-764f, -1000f), var_0.zx), vec3<bool>(false, arg_3, arg_2), vec2<i32>(-2147483647i, -2147483647i)), u_input.a).x, 1u >> (u_input.a % 32u))), arg_0.x, u_input.a);
    var_1 = Struct_2((~101526u | _wgslsmith_div_u32(0u | var_1.c, u_input.a)) << (func_2(~0u).x % 32u), 82131u, arg_0.x);
    var_1 = Struct_2(var_1.b, ~arg_0.x, _wgslsmith_div_u32(~0u, arg_0.x));
    let var_2 = Struct_4(Struct_1(arg_1.zx, vec2<i32>(~1i, ~(-1i))), !(!(!vec3<bool>(arg_2, arg_2, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(954f + 1149f))), abs(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), var_0.zx), var_0.xz))), select(!(!vec3<bool>(arg_2, arg_2, arg_2)), select(select(vec3<bool>(arg_3, arg_3, true), select(vec3<bool>(false, false, arg_2), vec3<bool>(arg_3, true, false), vec3<bool>(arg_2, false, arg_3)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(arg_3, false, arg_2), true), true), vec3<bool>(!arg_3, all(vec4<bool>(arg_2, arg_3, false, arg_2)), !arg_3)), true), reverseBits(u_input.b.zz));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<i32>(u_input.b.x, ~countOneBits(53916i), _wgslsmith_add_i32(countOneBits(748i), -65291i), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)));
    var_0 = -(~(-select(vec4<i32>(var_0.x, u_input.b.x, -1i, var_0.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x), false))) << ((~(~abs(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))) << (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(67309u, 1u, 1u, 16954u)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), 1u, u_input.a, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = vec3<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 86738u, u_input.a), max(vec3<u32>(u_input.a, 14225u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a))) >> (_wgslsmith_add_u32(u_input.a, 0u) % 32u)), u_input.a, _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(46457u, u_input.a)), reverseBits(_wgslsmith_add_u32(u_input.a, ~0u)), u_input.a));
    let var_2 = true;
    var_0 = -u_input.b;
    var var_3 = var_1.yy;
    let var_4 = Struct_4(func_5(~func_1(Struct_1(vec2<f32>(-338f, -1283f), u_input.b.yx), Struct_1(vec2<f32>(140f, 1174f), vec2<i32>(u_input.b.x, u_input.b.x)), Struct_4(Struct_1(vec2<f32>(1215f, 2429f), var_0.yx), vec3<bool>(true, var_2, var_2), Struct_1(vec2<f32>(546f, 989f), vec2<i32>(u_input.b.x, -30215i)), vec3<bool>(true, var_2, false), u_input.b.zw), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-560f, -185f, 953f, 384f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2086f, 684f, 567f, -561f), vec4<f32>(-771f, 1000f, 343f, -105f))))), var_2 && all(vec4<bool>(true, true, var_2, false)), true), select(vec3<bool>(false, !all(vec4<bool>(true, false, var_2, true)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(true, var_2, true, var_2)))), select(!(!vec3<bool>(true, var_2, var_2)), select(select(vec3<bool>(var_2, var_2, true), vec3<bool>(true, true, false), false), select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, false, true)), vec3<bool>(false, true, var_2)), vec3<bool>(true, -2147483647i < var_0.x, any(vec3<bool>(true, var_2, true)))), u_input.a <= (53385u >> (_wgslsmith_div_u32(u_input.a, 23074u) % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1154f, -138f))))), ~(vec2<i32>(-3598i, u_input.b.x) << (select(var_1.yy, vec2<u32>(0u, 4294967295u), var_2) % vec2<u32>(32u)))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_2, false), vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, false, false)), var_2)), _wgslsmith_div_vec2_i32(~countOneBits(vec2<i32>(2147483647i, var_0.x)), firstTrailingBit(u_input.b.xw)));
    let var_5 = countOneBits(vec2<u32>(var_1.x, var_3.x) & vec2<u32>(76047u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(2189u, 0u, var_1.x), ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(func_5(_wgslsmith_add_vec4_u32(~vec4<u32>(var_3.x, 16211u, 0u, var_5.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 0u, var_5.x, var_5.x), vec4<u32>(var_5.x, var_3.x, var_3.x, var_3.x), vec4<u32>(u_input.a, 35059u, 0u, 4294967295u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -999f, -1396f, var_4.c.a.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.c.a.x, var_4.c.a.x, var_4.c.a.x, var_4.a.a.x)))), func_4(var_4.a, abs(-2147483647i), var_4.c, Struct_2(var_5.x, var_3.x, 71768u)), var_4.b.x), func_5(select(vec4<u32>(u_input.a, var_5.x, u_input.a, 1u), vec4<u32>(u_input.a, 0u, 4294967295u, 51957u), vec4<bool>(true, var_2, false, var_4.b.x)) | vec4<u32>(4294967295u, var_1.x, 0u, 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1361f, var_4.c.a.x, var_4.c.a.x, var_4.a.a.x)))), func_5(vec4<u32>(4294967295u, 4294967295u, var_5.x, 0u), vec4<f32>(var_4.a.a.x, var_4.c.a.x, -1941f, 733f), var_4.d.x, false).b.x != (27988i << (u_input.a % 32u)), all(select(var_4.d, var_4.b, vec3<bool>(false, false, var_2)))), var_4, abs(var_3.x)).x, u_input.b.x, _wgslsmith_div_i32(102839i, var_4.c.b.x), func_1(func_5(abs(~vec4<u32>(var_5.x, 65860u, var_5.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_4.c.a.x, var_4.c.a.x, -764f)), var_4.d.x, (var_3.x >> (var_1.x % 32u)) < _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_3.x), vec3<u32>(0u, 0u, var_3.x))), func_5(vec4<u32>(_wgslsmith_mod_u32(var_5.x, 125828u), var_1.x, ~var_1.x, var_5.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a.x, 871f, var_4.c.a.x, -839f)), true, var_2), Struct_4(func_5(vec4<u32>(var_3.x, var_1.x, var_1.x, var_5.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.a.x, -741f, var_4.a.a.x, var_4.c.a.x), vec4<f32>(var_4.c.a.x, -1578f, -2583f, -630f), vec4<bool>(var_2, false, var_2, false))), false, true), vec3<bool>(var_2, false, true), func_5(~vec4<u32>(25810u, var_1.x, 4294967295u, var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_4.a.a.x, var_4.a.a.x, 1154f)), true, var_2 || true), vec3<bool>(all(vec4<bool>(false, var_2, var_4.d.x, var_4.d.x)), !var_4.b.x, false), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_4.e, vec2<i32>(-1i, var_0.x)), ~u_input.b.wz)), countOneBits(_wgslsmith_add_u32(21975u, 66244u))));
}

