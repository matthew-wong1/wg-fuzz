struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: array<Struct_4, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> u32 {
    let var_0 = !(-_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(-42982i, arg_1.b)) <= countOneBits(arg_0));
    var var_1 = arg_1.c.a.x;
    var_1 = arg_1.c.a.x;
    let var_2 = Struct_4(arg_1.c, Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1853f * arg_1.a.x)), arg_1.a.x), ~0i | arg_1.c.b.x, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(438f + arg_1.c.a.x), _wgslsmith_f_op_f32(arg_1.a.x - -141f), _wgslsmith_f_op_f32(f32(-1f) * -2107f)), vec4<i32>(countOneBits(-52018i), _wgslsmith_mod_i32(1i, -15012i), arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(6593i, u_input.b.x, arg_0, arg_0), arg_1.c.b)), u_input.c.x), u_input.c.x, ~vec2<u32>(_wgslsmith_mult_u32(1u, arg_1.e.x), abs(58233u))), _wgslsmith_f_op_f32(f32(-1f) * -814f));
    let var_3 = max(firstTrailingBit(firstLeadingBit(-u_input.d.x)), -22291i);
    return arg_1.c.c;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_3, 15>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))))), arg_0.d | u_input.d, func_3(~arg_0.d.x, global0[_wgslsmith_index_u32(47768u, 15u)]));
    global1 = array<Struct_4, 32>();
    let var_1 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(-arg_0.a, abs(u_input.d & vec4<i32>(0i, -8036i, 20182i, var_0.b.x)), vec4<i32>(u_input.d.x, -2147483647i, 0i, 2147483647i)), _wgslsmith_add_vec4_i32(arg_0.d, _wgslsmith_add_vec4_i32(-u_input.d, abs(vec4<i32>(24291i, 75236i, var_0.b.x, var_0.b.x)))) >> (u_input.c % vec4<u32>(32u)), arg_0.a);
    var var_2 = !(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))) | (~81553i >= u_input.d.x)) && true;
    return _wgslsmith_f_op_f32(arg_0.b.x * var_0.a.x);
}

fn func_4(arg_0: f32) -> f32 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-141f, arg_0, arg_0)))))), select(vec4<i32>(u_input.a, select(-1i, -7402i, var_0.x), 1i, -u_input.b.x), select(vec4<i32>(-7388i, u_input.d.x, u_input.b.x, u_input.d.x), ~u_input.d, !vec4<bool>(true, var_0.x, false, false)), vec4<bool>(true, true, 0i < u_input.d.x, u_input.a != u_input.a)), 4294967295u), global0[_wgslsmith_index_u32(countOneBits(~abs(u_input.c.x) >> (~_wgslsmith_add_u32(4294967295u, u_input.c.x) % 32u)), 15u)], _wgslsmith_f_op_f32(sign(1f)));
    let var_2 = -253f;
    return var_2;
}

fn func_1(arg_0: f32) -> vec4<i32> {
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    global1 = array<Struct_4, 32>();
    var var_0 = ~u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1203f, 1425f, arg_0)))))))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(226f, _wgslsmith_f_op_f32(select(arg_0, -1231f, false))) - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.d, vec4<f32>(370f, arg_0, arg_0, -1264f), 0i, vec4<i32>(u_input.b.x, u_input.d.x, -20445i, 0i), u_input.c.x)))))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + arg_0))))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), arg_0 == 305f), vec2<bool>(true, true)))));
    return -vec4<i32>(1i, _wgslsmith_sub_i32(~34389i, u_input.a >> (var_0.x % 32u)), -1i & u_input.a, _wgslsmith_clamp_i32(u_input.d.x, select(u_input.a, 2147483647i, false), _wgslsmith_dot_vec3_i32(u_input.d.yxw, vec3<i32>(u_input.b.x, -1i, 13697i)))) << (max(vec4<u32>(_wgslsmith_sub_u32(30950u, u_input.c.x), (u_input.c.x >> (u_input.c.x % 32u)) ^ _wgslsmith_mult_u32(var_0.x, 1u), reverseBits(_wgslsmith_add_u32(u_input.c.x, 6218u)), (1u ^ var_0.x) & var_0.x), ~vec4<u32>(var_0.x & var_0.x, _wgslsmith_sub_u32(var_0.x, u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.c.zxx, vec3<u32>(38570u, var_0.x, var_0.x)), abs(u_input.c.x))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2035f - 105f), _wgslsmith_f_op_f32(min(-625f, -149f)))), -172f, 1177f)), i32(-1i) * -_wgslsmith_sub_i32(min(-23785i, -2147483647i), u_input.a), Struct_2(vec3<f32>(-117f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-548f, -640f)))), -(~_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, vec4<i32>(u_input.d.x, u_input.a, -9583i, u_input.b.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 1u), u_input.c.xxz), ~vec3<u32>(u_input.c.x, u_input.c.x, 33861u)), abs(min(u_input.c.wzw, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))))), _wgslsmith_dot_vec4_u32(u_input.c, firstLeadingBit(abs(vec4<u32>(1791u, u_input.c.x, u_input.c.x, u_input.c.x) | u_input.c))), vec2<u32>(~min(0u, 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 25738u, u_input.c.x, 77625u), vec4<u32>(u_input.c.x, u_input.c.x, 32766u, 28182u))));
    let var_1 = Struct_1(select(firstTrailingBit(func_1(var_0.c.a.x)), var_0.c.b, !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, -656f, 466f, var_0.a.x), vec4<f32>(var_0.c.a.x, 974f, 217f, var_0.a.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, var_0.a.x, 1936f, var_0.c.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.c.a.x, var_0.a.x, 632f))))), _wgslsmith_dot_vec2_i32(~u_input.b, ~(~(-u_input.d.zy))), ~_wgslsmith_sub_vec4_i32(u_input.d, _wgslsmith_add_vec4_i32(select(var_0.c.b, vec4<i32>(var_0.b, u_input.d.x, 5020i, 45394i), vec4<bool>(true, true, false, false)), u_input.d)), 28202u);
    global0 = array<Struct_3, 15>();
    let var_2 = ~abs(select(~(vec3<u32>(var_1.e, u_input.c.x, 0u) & u_input.c.ywz), vec3<u32>(~0u, countOneBits(23857u), min(1u, 81219u)), !any(vec4<bool>(true, true, false, false))));
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, var_0.a.x))), -var_1.a, 0u), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c.a, _wgslsmith_f_op_vec3_f32(step(var_0.c.a, var_0.a))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a.x + var_1.b.x), 1034f, _wgslsmith_f_op_f32(182f - -1699f))), -34558i, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(ceil(var_1.b.x)), var_0.c.a.x), -_wgslsmith_sub_vec4_i32(var_1.a, var_1.a), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 40800u), _wgslsmith_add_u32(var_1.e, var_1.e))), ~abs(0u), ~abs(~vec2<u32>(0u, 4294967295u))), _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1498f, var_1.b.x)) - -1000f)));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.c, var_1.b.x)));
    var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.b.c.a.x, var_3.a.a.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-105f, var_4.x)))) - vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.a.x), _wgslsmith_f_op_f32(step(1058f, -331f)))), var_0.a.zz)) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(779f))));
    var var_5 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, -885f, 197f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2344f, var_0.a.x, var_4.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.a.a)))), countOneBits(select(select(vec4<i32>(u_input.a, -1i, -2147483647i, 9701i), u_input.d, vec4<bool>(true, true, false, false)), reverseBits(vec4<i32>(-2147483647i, u_input.b.x, -66314i, -7650i)), false)), _wgslsmith_div_u32(14477u, countOneBits(1u))), var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.a.x)))))));
    var_0 = global0[_wgslsmith_index_u32(15416u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(select(_wgslsmith_clamp_vec2_u32(u_input.c.yz, vec2<u32>(2914u, var_5.a.c), vec2<u32>(0u, var_5.b.c.c)) << (~var_0.e % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(var_0.e, var_3.b.e), vec2<bool>(all(vec3<bool>(false, false, false)), true)), ~vec2<u32>(_wgslsmith_mult_u32(var_3.a.c, var_2.x), 1u)), var_1.b, var_3.b.c.a.x);
}

