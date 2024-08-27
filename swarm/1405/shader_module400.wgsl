struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-2442f, -112f, 702f, 1000f), 1000f, vec3<bool>(true, false, false), vec3<i32>(2147483647i, 0i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    global0 = select(global1.c, select(select(!(!vec3<bool>(true, global0.x, global0.x)), global1.c, global1.c.x), vec3<bool>(global1.c.x, true, global1.c.x), global0.x), false);
    var var_0 = select(vec4<bool>(true, true, true, true), select(!vec4<bool>(all(vec3<bool>(global1.c.x, true, global0.x)), !global1.c.x, global0.x, global1.d.x > global1.d.x), select(!select(vec4<bool>(global0.x, false, global1.c.x, false), vec4<bool>(global0.x, true, true, true), global0.x), select(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global0.x), select(vec4<bool>(false, global0.x, false, true), vec4<bool>(false, false, global1.c.x, false), vec4<bool>(global0.x, false, true, false)), select(vec4<bool>(false, global1.c.x, global0.x, true), vec4<bool>(global1.c.x, global0.x, global1.c.x, true), global1.c.x)), select(select(vec4<bool>(global1.c.x, false, global1.c.x, true), vec4<bool>(false, global0.x, false, global1.c.x), vec4<bool>(true, true, global1.c.x, global0.x)), !vec4<bool>(global1.c.x, false, global0.x, global0.x), any(global1.c))), all(!(!vec3<bool>(true, global1.c.x, false)))), false);
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(global1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(374f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(274f)), _wgslsmith_f_op_f32(select(global1.b, global1.a.x, false)), all(vec4<bool>(global1.c.x, global1.c.x, true, true)))), global1.b)), _wgslsmith_f_op_f32(797f - _wgslsmith_f_op_f32(f32(-1f) * -1035f)), vec3<bool>(!global0.x, any(select(select(var_0.ww, var_0.xz, var_0.yy), select(var_0.yz, vec2<bool>(true, global0.x), vec2<bool>(true, var_0.x)), select(global0.yy, global1.c.zy, var_0.x))), false), reverseBits(_wgslsmith_mod_vec3_i32(firstLeadingBit(global1.d), _wgslsmith_div_vec3_i32(vec3<i32>(25246i, 38744i, -2147483647i), u_input.e.xzz | u_input.e.yzy))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + global1.a.x) + var_1.b), vec3<bool>(all(vec3<bool>(any(global1.c), false, true != global1.c.x)), global1.c.x, all(vec2<bool>(all(vec3<bool>(true, false, true)), u_input.c.x >= 1u))), reverseBits(-global1.d));
    var var_3 = ~(14842u | _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)) > max(53016u, 45145u);
    return _wgslsmith_clamp_i32(1i, ~(-_wgslsmith_div_i32(-u_input.a, -2147483647i)), -33588i);
}

fn func_2(arg_0: u32, arg_1: i32) -> vec2<u32> {
    let var_0 = -arg_1;
    let var_1 = _wgslsmith_div_i32(0i, firstTrailingBit(-global1.d.x)) & ~(~_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, global1.d.x), ~var_0));
    var var_2 = u_input.e.wwy << (_wgslsmith_div_vec3_u32(countOneBits(~(~vec3<u32>(8727u, 0u, 7250u))), vec3<u32>(u_input.d.x >> (~0u % 32u), arg_0, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, 4678u, arg_0), vec4<u32>(u_input.d.x, 1u, u_input.c.x, u_input.c.x)))) % vec3<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_div_vec4_f32(global1.a, global1.a), 326f, global1.c, vec3<i32>(abs(_wgslsmith_mod_i32(global1.d.x, 0i)), 1i, func_3()));
    var var_4 = !global1.c.yx;
    return vec2<u32>(u_input.c.x, arg_0);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f))))), global1.c, ~vec3<i32>(1881i, _wgslsmith_sub_i32(select(arg_0, 7156i, true), ~(-1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, global1.d.x), firstLeadingBit(u_input.e.wz))));
    let var_1 = func_2(u_input.c.x, u_input.b);
    let var_2 = vec4<i32>(38064i, _wgslsmith_add_i32(~(_wgslsmith_clamp_i32(global1.d.x, -2147483647i, var_0.d.x) << ((u_input.d.x << (var_1.x % 32u)) % 32u)), u_input.b >> (~(~var_1.x) % 32u)), -func_3(), arg_0);
    let var_3 = !global0.x;
    var var_4 = select(vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(u_input.e, u_input.e), 1i), reverseBits(arg_0)), ~(~_wgslsmith_add_vec2_i32(-vec2<i32>(41800i, arg_0), min(var_2.xz, vec2<i32>(var_0.d.x, var_2.x)))), true);
    return 1338f;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1408f, arg_1.a.x, -395f, global1.b))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 1526f, global1.b, 140f) + vec4<f32>(177f, -108f, arg_3, arg_3))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-795f + -489f))), -980f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_3, 737f)), _wgslsmith_f_op_f32(368f * global1.b), global1.c.x))))), vec3<bool>(select(countOneBits(36633i), ~global1.d.x, true) >= _wgslsmith_div_i32(-10204i, func_3()), max(1u, ~5095u) == (arg_2 << (0u % 32u)), arg_3 > 106f), ~vec3<i32>(_wgslsmith_sub_i32(~u_input.b, 83155i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(37266i, 3213i), global1.d.xy)), _wgslsmith_dot_vec2_i32(arg_1.d.xz, reverseBits(vec2<i32>(u_input.a, 25310i)))));
    let var_1 = arg_2;
    var var_2 = vec3<u32>(_wgslsmith_add_u32(u_input.c.x, ~arg_0), 1u, ~var_1);
    global0 = !vec3<bool>(true, all(!select(vec3<bool>(arg_1.c.x, global0.x, true), vec3<bool>(global1.c.x, global1.c.x, true), arg_1.c)), 6499u != max(var_1, 11474u));
    let var_3 = var_1;
    return firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1, arg_0, arg_0), vec4<u32>(0u, var_3, var_3, 4294967295u)), abs(vec4<u32>(4873u, var_3, 1u, 0u))) & _wgslsmith_clamp_vec4_u32(max(vec4<u32>(0u, 3573u, arg_0, 64080u), vec4<u32>(var_1, 4294967295u, u_input.c.x, 51133u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_2, 0u, arg_0), vec4<u32>(4294967295u, arg_2, 4294967295u, var_1)), vec4<u32>(u_input.c.x, var_1, var_1, u_input.c.x) ^ vec4<u32>(arg_2, 38366u, arg_0, arg_0)), vec4<u32>(~(~11172u), 0u, 0u, ~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(global1.a.yzw + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-338f)), global1.b, 884f)));
    let var_1 = _wgslsmith_dot_vec4_u32(func_4(reverseBits(~4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) + _wgslsmith_div_vec4_f32(global1.a, vec4<f32>(-1582f, -185f, 1476f, global1.b))), var_0.x, vec3<bool>(any(global0.xy), global0.x, global0.x), abs(firstLeadingBit(global1.d))), 14504u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(-1i, global0.xx)))))), _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x), ~vec4<u32>(8160u, u_input.c.x, 60362u, 1u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.d.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, u_input.d.x, 964u, 0u)), 1u, u_input.c.x, ~u_input.d.x)));
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * -646f), true))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(trunc(var_0.x))))), var_0.x, global1.c, global1.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1913f, var_0.x), global1.a.yx)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.yy))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(global1.a, vec4<f32>(-392f, global1.b, 166f, -407f)));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1473f))))))));
    var var_5 = Struct_1(vec4<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(429f, -253f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(787f, -1019f), global1.b)), -448f)), var_3.x), -769f, vec3<bool>(!any(!vec4<bool>(global0.x, global1.c.x, global0.x, global0.x)), true, true), ~u_input.e.yyy);
    var var_6 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(1661f, var_0.x, var_0.x, -807f)) * _wgslsmith_f_op_vec4_f32(step(var_5.a, var_3))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1610f, 1226f, 265f, 256f))), max(u_input.d.x, 1u) < 44651u)), var_5.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4))), select(!vec3<bool>(true, !global1.c.x, 0u < u_input.c.x), var_5.c, !(true && !global1.c.x)), ~u_input.e.xyw | -global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(847f);
}

