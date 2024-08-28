struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_4, 10>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 4294967295u, 0u);

var<private> global3: array<Struct_1, 30>;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = !global4.x;
    let var_1 = vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(-select(vec3<i32>(0i, -1i, 9314i), vec3<i32>(-2147483647i, 16773i, -22899i), global4.x), reverseBits(reverseBits(vec3<i32>(0i, 1i, -6371i))))), 0i >> ((global0.a.x & ~min(30468u, 4294967295u)) % 32u));
    let var_2 = !select(vec3<bool>(false != !global4.x, (global4.x && global4.x) != all(vec3<bool>(false, true, global4.x)), false), select(!vec3<bool>(true, global4.x, true), select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, global4.x, false), all(vec3<bool>(false, global4.x, global4.x))), vec3<bool>(global4.x | global4.x, global4.x, global4.x)), !select(vec3<bool>(global4.x, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), global4.x), all(vec2<bool>(false, global4.x))));
    let var_3 = ~global0.a.x;
    var var_4 = global3[_wgslsmith_index_u32(~10720u, 30u)];
    return -9230i;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: i32, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_3(!select(!(!arg_0), select(select(vec4<bool>(true, global4.x, true, arg_3.x), arg_0, vec4<bool>(false, arg_1.e.x, false, false)), !arg_3, select(arg_3, arg_0, arg_3.x)), true), func_3(), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u) | vec2<u32>(global2.x, 1u), min(global2.xz, global0.a), vec2<u32>(27106u, 23870u) << (vec2<u32>(global2.x, global0.a.x) % vec2<u32>(32u)))), ~(~global2.yx)), 0u, ~(-arg_1.b.e));
    global0 = Struct_2(~vec2<u32>(max(_wgslsmith_mod_u32(u_input.a.x, global0.a.x), _wgslsmith_dot_vec3_u32(u_input.a.xzx, u_input.a.yyx)), _wgslsmith_add_u32(_wgslsmith_add_u32(59143u, global0.a.x), global0.a.x)));
    let var_1 = 4294967295u;
    global1 = array<Struct_4, 10>();
    var var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 30u)];
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> f32 {
    let var_0 = vec4<i32>(-2147483647i, arg_1.b.b, -30540i, 1i);
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.wzz, ~u_input.a.zxx) | _wgslsmith_div_vec3_u32(u_input.a.ywx, u_input.a.yzw), vec3<u32>(abs(1u), arg_1.b.c, _wgslsmith_sub_u32(u_input.a.x, max(16520u, 84436u)) << (37286u % 32u))), 30u)];
    var var_2 = arg_1.c;
    let var_3 = abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, 14828i, -29686i, var_0.x), var_0)) << ((~firstLeadingBit(global2.x ^ 1061u) | _wgslsmith_add_u32(countOneBits(arg_1.a), u_input.a.x)) % 32u);
    var_1 = Struct_1(var_1.a, arg_1.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d - -1993f)))));
}

fn func_1() -> u32 {
    global2 = u_input.a.wxz;
    global2 = u_input.a.xyy;
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(240f)), -2109f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(select(-2147483647i, 0i, true), func_2(vec4<bool>(true, global4.x, true, false), global1[_wgslsmith_index_u32(global0.a.x, 10u)], -2147483647i, vec4<bool>(global4.x, global4.x, true, true)))) + func_2(!vec4<bool>(true, false, global4.x, global4.x), func_2(vec4<bool>(global4.x, false, false, global4.x), Struct_4(40041u, Struct_3(vec4<bool>(global4.x, true, global4.x, true), -16324i, 1u, global0.a.x, 0i), u_input.a.x, 312f, vec3<bool>(false, false, false)), -1i, vec4<bool>(global4.x, global4.x, global4.x, global4.x)), -138i, select(vec4<bool>(true, global4.x, global4.x, global4.x), vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(true, global4.x, false, global4.x))).d))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(441f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    global3 = array<Struct_1, 30>();
    return ~0u;
}

fn func_5(arg_0: u32, arg_1: bool) -> f32 {
    global4 = !vec2<bool>(true, arg_1);
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(454f)), _wgslsmith_f_op_f32(-322f + -2706f))), _wgslsmith_div_f32(-1526f, 1783f), _wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(792f, -593f))) - -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(857f, 401f, 549f, 303f) + vec4<f32>(563f, 655f, -1511f, 1052f)))))));
    var var_1 = 19885u;
    var var_2 = Struct_2(vec2<u32>(~(~4294967295u), u_input.a.x));
    let var_3 = vec2<bool>(select(global4.x, any(!(!vec3<bool>(true, arg_1, arg_1))), _wgslsmith_mod_u32(global0.a.x, _wgslsmith_add_u32(u_input.a.x, arg_0)) < ~(~u_input.a.x)), global4.x);
    return var_0.x;
}

fn func_6(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 399f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(836f, arg_0.x)) + _wgslsmith_f_op_f32(ceil(1015f))), arg_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1414f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)) - arg_0.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 24825i), firstLeadingBit(vec3<i32>(0i, 2147483647i, 1i))) | -38491i, select(func_2(vec4<bool>(global4.x | false, global4.x, false, all(vec3<bool>(global4.x, true, true))), func_2(!vec4<bool>(false, false, false, global4.x), func_2(vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(4294967295u, 10u)], -17420i, vec4<bool>(true, global4.x, true, global4.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -43596i, -26462i, 2147483647i), vec4<i32>(-9777i, 1i, 5783i, 10409i)), vec4<bool>(global4.x, global4.x, global4.x, false)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-24528i, 1i, -10072i, 1i)), ~vec4<i32>(42522i, 2147483647i, -2147483647i, 19844i)), select(!vec4<bool>(global4.x, true, false, global4.x), select(vec4<bool>(false, true, false, global4.x), vec4<bool>(global4.x, false, global4.x, false), global4.x), global4.x)).b.a.xzy, select(!vec3<bool>(false, global4.x, false), select(!vec3<bool>(global4.x, global4.x, global4.x), !vec3<bool>(false, false, global4.x), arg_0.x <= 172f), !(!global4.x)), vec3<bool>(false, any(vec2<bool>(global4.x, false)), global4.x)));
    var var_2 = vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 55166i, var_1.a, var_1.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, -72688i, 9250i, 32781i), vec4<i32>(1i, 1i, -19181i, var_1.a)), ~(-vec4<i32>(var_1.a, 12088i, var_1.a, var_1.a)))), ~(-var_1.a ^ max(var_1.a, abs(2147483647i))));
    var var_3 = vec4<bool>(true, true, var_1.b.x, 34669i <= (var_2.x ^ (_wgslsmith_add_i32(0i, var_2.x) | 1i)));
    return Struct_2(u_input.a.wy);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<bool>(all(!vec4<bool>(global4.x, true, !global4.x, true | global4.x)), !all(select(vec2<bool>(global4.x, global4.x), !vec2<bool>(true, global4.x), vec2<bool>(true, true))));
    global3 = array<Struct_1, 30>();
    global0 = Struct_2(u_input.a.yy);
    global1 = array<Struct_4, 10>();
    var var_0 = -_wgslsmith_mult_i32(reverseBits(countOneBits(-16025i)), _wgslsmith_div_i32(0i, ~2147483647i)) & _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(0i), ~18983i), _wgslsmith_add_i32(2147483647i, -60527i), 1i));
    global1 = array<Struct_4, 10>();
    var_0 = ~(-firstLeadingBit(~(i32(-1i) * -2147483647i)));
    global0 = func_6(_wgslsmith_div_vec2_f32(vec2<f32>(1299f, _wgslsmith_f_op_f32(func_5(func_1(), all(vec2<bool>(global4.x, global4.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1269f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1291f, 387f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(850f, -919f)))), global4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, _wgslsmith_f_op_f32(f32(-1f) * -655f), 887f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1871f, _wgslsmith_f_op_f32(f32(-1f) * -695f), -541f))), _wgslsmith_sub_u32(u_input.a.x, func_6(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-350f, -865f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1353f, -590f))), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global4.x, global4.x))))).a.x), -abs(abs(~vec4<i32>(2247i, -8623i, 1i, 12141i))), -(vec4<i32>(~(-2147483647i), -38959i, countOneBits(-1i), 26872i >> (global0.a.x % 32u)) << (u_input.a % vec4<u32>(32u))));
}

