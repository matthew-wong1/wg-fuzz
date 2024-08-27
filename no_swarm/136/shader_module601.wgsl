struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -645f;

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 20> = array<i32, 20>(2147483647i, 12741i, -44211i, -1i, i32(-2147483648), 0i, -21664i, 50585i, 66279i, -21850i, -9416i, -1i, -1i, 1i, -34308i, 2147483647i, 1i, 36185i, 2147483647i, 2147483647i);

var<private> global3: vec4<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    global2 = array<i32, 20>();
    var var_0 = _wgslsmith_f_op_f32(1f * 1504f);
    let var_1 = Struct_3(any(select(vec3<bool>(true, true, true), !select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, true, false)), firstTrailingBit(91651u) < (u_input.b >> (73374u % 32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1745f, -875f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, 1363f, 834f) - vec3<f32>(1081f, -2012f, -196f)), vec3<f32>(-822f, -1082f, 1196f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, 613f, 258f, 1726f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-412f, 575f, 1114f, 685f)))), 12518u, abs(-1i), ~(~vec2<u32>(90701u, 3498u))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), 39667u, -(i32(-1i) * -2147483647i), _wgslsmith_sub_vec2_u32(~vec2<u32>(12387u, u_input.b), reverseBits(vec2<u32>(4294967295u, u_input.b)))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), global3.ww), global3.wx), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(983f, 332f, -359f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-971f, -752f, -431f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-668f, 374f, -1534f) - vec3<f32>(-1832f, 864f, -1521f))), select(vec3<bool>(global1.x, false, true), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, true), global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, true, global1.x), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-325f * 190f))))), vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 20u)]) >> (vec2<u32>(firstLeadingBit(u_input.b), 1u | abs(u_input.b)) % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-423f, 2194f)));
    global1 = vec3<bool>(all(global1.yz) && any(!(!vec4<bool>(true, true, global1.x, true))), all(vec4<bool>(_wgslsmith_dot_vec2_u32(var_1.c.b.d, vec2<u32>(u_input.b, 35644u)) > _wgslsmith_dot_vec2_u32(var_1.c.a.d, vec2<u32>(u_input.b, 43851u)), var_1.a && false, !all(vec3<bool>(global1.x, false, var_1.a)), global1.x)), var_1.a);
    return var_1.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.c;
    var_0 = arg_1.c;
    global3 = _wgslsmith_mult_vec4_i32(abs(select(u_input.a, ~vec4<i32>(var_0.c, global2[_wgslsmith_index_u32(64780u, 20u)], var_0.c, -1i), select(!vec4<bool>(arg_1.a, arg_1.a, true, global1.x), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, global1.x), false & global1.x))), select(-abs(vec4<i32>(2147483647i, 14400i, u_input.a.x, global3.x)), u_input.a, vec4<bool>(all(!vec2<bool>(false, arg_1.a)), true, all(vec3<bool>(true, true, true)), true)));
    let var_1 = u_input.a.x;
    global1 = vec3<bool>(arg_1.a, !(!global1.x || false), func_3());
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b.a.x * var_0.e)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = -1470f;
    global0 = -1020f;
    let var_0 = 127f;
    global3 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, _wgslsmith_sub_i32(~(-25613i), global3.x ^ arg_0), _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, arg_0), abs(25106i)), max(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(0u, 20u)], u_input.a.x), 29049i | arg_0))), (~u_input.a ^ -reverseBits(u_input.a)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(78543u, u_input.b, 8730u, 42262u) << (~vec4<u32>(33362u, u_input.b, 1u, u_input.b) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b, 1u, u_input.b, u_input.b))) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, max(31919i, reverseBits(-5035i)), arg_0, 0i));
    var var_1 = Struct_4(vec2<i32>(_wgslsmith_dot_vec2_i32(global3.ww, max(select(vec2<i32>(global3.x, -11846i), u_input.a.xy, global1.x), select(global3.xx, vec2<i32>(0i, global3.x), global1.xx))), ~0i), Struct_3(_wgslsmith_f_op_f32(round(var_0)) >= var_0, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-620f - 978f) * _wgslsmith_f_op_f32(f32(-1f) * -1077f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-652f)), _wgslsmith_f_op_f32(func_2(vec2<f32>(var_0, 100f), Struct_3(global1.x, vec3<f32>(317f, var_0, var_0), Struct_2(Struct_1(vec4<f32>(var_0, var_0, var_0, 664f), 4294967295u, u_input.a.x, vec2<u32>(77480u, u_input.b)), Struct_1(vec4<f32>(var_0, var_0, var_0, var_0), 18712u, global2[_wgslsmith_index_u32(1u, 20u)], vec2<u32>(u_input.b, 0u)), 1i, vec3<f32>(1000f, -862f, var_0), var_0), vec2<i32>(11184i, u_input.a.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(var_0 - var_0)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1095f, -1901f, var_0, -324f))), firstTrailingBit(u_input.b), 9199i, vec2<u32>(u_input.b, 1u)), Struct_1(vec4<f32>(var_0, var_0, var_0, var_0), ~4294967295u, _wgslsmith_sub_i32(global3.x, arg_0), vec2<u32>(u_input.b, 0u)), global3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, 196f, var_0))), var_0), firstLeadingBit(~global3.wx & u_input.a.yz)), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, -1161f, var_0), vec4<f32>(-1819f, var_0, 472f, var_0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-853f, var_0, var_0, var_0) * vec4<f32>(-1000f, -770f, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 943f, -815f, var_0) * vec4<f32>(849f, 1718f, -841f, 1000f))))), ~(u_input.b | 31869u) & ~u_input.b, i32(-1i) * -1i, vec2<u32>(_wgslsmith_add_u32(0u, ~52341u), 1u)), firstTrailingBit(~60785u));
    return var_1.b.c;
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = vec2<u32>(u_input.b, _wgslsmith_sub_u32(func_1(reverseBits(select(arg_0.c.a.c, -53172i, global1.x))).b.d.x, select(~1u, arg_0.c.b.d.x, arg_0.a)));
    let var_1 = var_0;
    global0 = func_1(_wgslsmith_sub_i32(arg_0.c.c, ~(-func_1(global3.x).a.c))).d.x;
    global1 = select(!vec3<bool>(all(vec3<bool>(arg_0.a, arg_0.a, false)), false, !all(global1.zy)), select(select(select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, arg_0.a, false), vec3<bool>(true, arg_0.a, global1.x)), select(vec3<bool>(false, arg_0.a, true), select(vec3<bool>(false, true, arg_0.a), vec3<bool>(false, false, arg_0.a), global1.x), any(vec4<bool>(global1.x, global1.x, arg_0.a, true))), global1.x), vec3<bool>(global1.x, !any(global1.zy), _wgslsmith_f_op_f32(-arg_0.c.e) < arg_0.c.a.a.x), !(arg_0.a || !global1.x)), false);
    let var_2 = Struct_1(arg_0.c.a.a, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 10055u, var_0.x, u_input.b), vec4<u32>(0u, var_0.x, 90230u, u_input.b)), arg_0.c.a.d.x) | 1338u, u_input.a.x, _wgslsmith_mult_vec2_u32(arg_0.c.a.d, arg_0.c.a.d));
    return !select(select(vec3<bool>(all(vec4<bool>(false, global1.x, false, true)), true, global1.x), select(vec3<bool>(arg_0.a, global1.x, false), select(vec3<bool>(false, global1.x, arg_0.a), vec3<bool>(false, arg_0.a, true), vec3<bool>(true, true, false)), vec3<bool>(arg_0.a, global1.x, true)), !(u_input.b >= 72337u)), vec3<bool>(!any(vec3<bool>(true, global1.x, true)), true, arg_0.a), vec3<bool>(true, false, arg_0.a));
}

fn func_5(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-396f - 573f) - 2264f), 439f)), _wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f))), 811f, _wgslsmith_f_op_f32(round(-325f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-362f, 720f, _wgslsmith_f_op_f32(455f + 1000f), -1153f), _wgslsmith_f_op_vec4_f32(abs(func_1(u_input.a.x).b.a)))) - func_1(-_wgslsmith_sub_i32(-1i, -1i)).a.a)));
    var var_1 = func_1(u_input.a.x & firstTrailingBit(_wgslsmith_dot_vec4_i32(-u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, 45149i, u_input.a.x), u_input.a, u_input.a))));
    global3 = u_input.a;
    global1 = vec3<bool>(true, any(global1.zx), select(func_3(), false, true));
    let var_2 = abs(firstLeadingBit(43547u)) <= _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 6569u, 18706u, 0u)), max(vec4<u32>(1u & u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.b.b, 4294967295u, u_input.b), vec4<u32>(31876u, u_input.b, u_input.b, u_input.b)), ~23666u, u_input.b), ~(~vec4<u32>(77163u, var_1.a.b, 67525u, var_1.b.b))));
    return Struct_3(arg_0.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(287f, _wgslsmith_div_f32(var_0.x, -2764f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(step(593f, -472f)))))), Struct_2(func_1(firstLeadingBit(~u_input.a.x)).a, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1181f, var_0.x, var_0.x, -1000f))), u_input.b, -1i, _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(17144u, var_1.a.d.x), true), var_1.a.d | var_1.a.d)), countOneBits(select(global3.x, var_1.a.c, all(arg_0))), _wgslsmith_f_op_vec3_f32(step(var_0.ywy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.www)))), 312f), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(10241u, 20u)], global3.x, global3.x, 25548i), u_input.a), _wgslsmith_div_i32(-101652i, i32(-1i) * -62315i)) << (~vec2<u32>(0u, ~4294967295u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -1i, -global3.x), u_input.a.zy), ~(~(-vec2<i32>(15410i, global3.x)))), func_5(func_4(Struct_3(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(1634f, 949f, -555f) * vec3<f32>(-2168f, -311f, -697f)), func_1(u_input.a.x), u_input.a.zz))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1544f, 169f, -687f, 1828f), vec4<f32>(-560f, -742f, 614f, 1062f), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 1015f, -713f, 1000f)))), u_input.b, -1i, ~(vec2<u32>(u_input.b, 8634u) | vec2<u32>(1u, u_input.b)) ^ ((vec2<u32>(0u, 36107u) & vec2<u32>(u_input.b, u_input.b)) >> (~vec2<u32>(1u, u_input.b) % vec2<u32>(32u)))), abs(~max(u_input.b, ~1u)));
    let var_1 = var_0.c.c;
    var var_2 = Struct_4(min(_wgslsmith_mult_vec2_i32(abs(var_0.a), -(~vec2<i32>(global2[_wgslsmith_index_u32(var_0.d, 20u)], 39420i))), ~_wgslsmith_mult_vec2_i32(-vec2<i32>(-1i, var_1), -vec2<i32>(2147483647i, -9470i))), func_5(select(vec3<bool>(global1.x, any(vec2<bool>(true, false)), func_5(vec3<bool>(var_0.b.a, false, true)).a), vec3<bool>(true, func_5(vec3<bool>(var_0.b.a, false, global1.x)).a, !global1.x), false)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(178f)), -1069f)), -794f, _wgslsmith_f_op_f32(-var_0.b.c.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(exp2(var_0.b.c.a.a.x)), true))), ~(~_wgslsmith_sub_u32(4294967295u, u_input.b)), i32(-1i) * -1488i, select(countOneBits(vec2<u32>(1u, 12419u)), reverseBits(vec2<u32>(u_input.b, var_0.b.c.a.d.x)), global1.x)), var_0.b.c.b.d.x);
    let var_3 = Struct_3(var_0.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a.x, var_0.b.b.x, 382f) - var_0.c.a.yzw) * vec3<f32>(var_2.c.a.x, _wgslsmith_f_op_f32(600f * 1856f), var_0.b.b.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.b.b, _wgslsmith_div_vec3_f32(vec3<f32>(724f, var_2.b.b.x, 1158f), vec3<f32>(883f, var_2.c.a.x, -2033f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.a.x, -350f, var_2.c.a.x)), _wgslsmith_f_op_vec3_f32(-var_2.c.a.wxw))))), func_1(12113i), vec2<i32>(~(~(-9497i)), min(_wgslsmith_mult_i32(-47544i, ~(-1i)), 1i)));
    global2 = array<i32, 20>();
    var var_4 = var_3.c.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, -var_1, var_0.b.c.b.d.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(var_4.x * -397f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.a.a.x)) + var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f)))));
}

