struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(-35052i, 3275i, 1i, -1i, -6187i, -48725i, 3182i, -8843i, -30140i, i32(-2147483648), -30647i, 2147483647i, -13436i, 23186i, 42376i, 28118i, -14457i, 1i, 102360i, -3535i, 2147483647i, 7216i, 1i, -1i, 1i, 32255i, -1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    var var_0 = !(select(false, any(vec2<bool>(true, false)), arg_0.x != 809f) | select(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)), true)) && any(!vec3<bool>(arg_0.x < arg_0.x, all(vec3<bool>(true, true, true)), false));
    let var_1 = vec3<bool>(false, true, all(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz));
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0)) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -865f)))), 1f, _wgslsmith_f_op_f32(276f * arg_0.x)));
}

fn func_2() -> bool {
    let var_0 = 1i;
    var var_1 = Struct_2(Struct_1(vec4<i32>(~var_0, min(22848i, var_0), u_input.b, -global0[_wgslsmith_index_u32(u_input.c, 27u)]) & _wgslsmith_add_vec4_i32(vec4<i32>(-17969i, global0[_wgslsmith_index_u32(u_input.c, 27u)], 53189i, var_0) << (vec4<u32>(1u, 0u, 34240u, u_input.c) % vec4<u32>(32u)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 27u)], -1i, -1i, 14501i)), 312f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2358f, 1600f, -1360f, 305f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1295f, 1785f, 126f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(1169f, 1566f, 335f, 420f))))))));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(firstTrailingBit(1u), max(1u, u_input.c) ^ (8220u | ~u_input.c))), 27u)];
    var_1 = Struct_2(Struct_1(vec4<i32>(~var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.a.x, var_1.a.a.x), min(vec2<i32>(var_1.a.a.x, u_input.a), vec2<i32>(-4866i, var_1.a.a.x))), var_1.a.a.x, min(-2147483647i, _wgslsmith_sub_i32(var_0, global0[_wgslsmith_index_u32(0u, 27u)]))), -550f, vec4<f32>(-162f, _wgslsmith_f_op_f32(max(-231f, _wgslsmith_f_op_f32(f32(-1f) * -1626f))), 1718f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.c.x, var_1.a.b)))));
    let var_3 = Struct_2(Struct_1(-vec4<i32>(var_0, max(u_input.a, global0[_wgslsmith_index_u32(u_input.c, 27u)]), u_input.a, max(u_input.a, -9644i)), _wgslsmith_f_op_f32(var_1.a.b * var_1.a.c.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c.x, var_1.a.b, var_1.a.c.x, 1682f) * _wgslsmith_f_op_vec4_f32(var_1.a.c - vec4<f32>(-205f, 1662f, var_1.a.c.x, 299f)))))));
    return any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), true), false));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = select(!vec4<bool>(true, arg_1 || true, arg_1 && arg_1, func_2()), select(vec4<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 15695u), arg_3.zy) > arg_2, arg_1, !(arg_1 != true)), vec4<bool>(any(vec3<bool>(arg_1, false, true)), select(true, true, true), _wgslsmith_f_op_f32(select(321f, 617f, true)) < -669f, arg_1), select(vec4<bool>(u_input.b < -1i, !arg_1, all(vec2<bool>(arg_1, true)), false), !(!vec4<bool>(true, arg_1, true, arg_1)), select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(false, arg_1, true, false), arg_1), !vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, true, true)))), vec4<bool>(all(vec3<bool>(arg_1, select(arg_1, arg_1, arg_1), !arg_1)), !arg_1, all(!vec4<bool>(arg_1, false, arg_1, false)), !arg_1));
    global0 = array<i32, 27>();
    let var_1 = Struct_1(~min(~_wgslsmith_sub_vec4_i32(vec4<i32>(-21315i, arg_0, 1i, u_input.a), vec4<i32>(u_input.b, -41420i, u_input.a, 25842i)), vec4<i32>(select(-6210i, 33129i, true), _wgslsmith_div_i32(0i, 1i), -1i, 0i & arg_0)), 966f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f))), _wgslsmith_f_op_f32(step(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2755f)))), -174f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(1009f, -1369f, -2320f, -271f))).x - _wgslsmith_f_op_f32(f32(-1f) * -1188f))))));
    var_0 = select(select(vec4<bool>(!var_0.x, any(vec4<bool>(false, arg_1, var_0.x, arg_1)) == true, false, var_0.x), !select(!vec4<bool>(true, false, var_0.x, var_0.x), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, arg_1, true), true), var_0.x), vec4<bool>(!(global0[_wgslsmith_index_u32(arg_2, 27u)] != 2147483647i), false, arg_1, select(arg_1, 0i == global0[_wgslsmith_index_u32(arg_3.x, 27u)], any(vec3<bool>(arg_1, false, true))))), !(!(!select(vec4<bool>(false, arg_1, true, false), vec4<bool>(arg_1, true, false, true), vec4<bool>(false, false, true, arg_1)))), countOneBits(-1i) == select(-25482i, -1i, true));
    global0 = array<i32, 27>();
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<i32> {
    global0 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, arg_2.b, arg_0.a.c.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.c.zzz - arg_2.c.wxz) * _wgslsmith_f_op_vec3_f32(arg_1.c.xww + vec3<f32>(-583f, 1183f, arg_0.a.b))), vec3<f32>(arg_0.a.c.x, -1000f, arg_0.a.b))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1176f, 2420f, arg_1.b), arg_1.c.yxw) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(269f, arg_1.c.x, arg_2.c.x), arg_1.c.wzx, arg_3.x))))))));
    global0 = array<i32, 27>();
    let var_1 = Struct_2(func_1(-arg_1.a.x, !all(select(vec4<bool>(false, arg_3.x, false, arg_3.x), vec4<bool>(false, true, true, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, false, true))), ~u_input.c, (vec4<u32>(61206u, 19874u, u_input.c, u_input.c) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, u_input.c), vec4<u32>(0u, u_input.c, u_input.c, 0u), vec4<u32>(33703u, 4294967295u, u_input.c, u_input.c)) % vec4<u32>(32u))) & ~countOneBits(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - 1185f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b - arg_0.a.b) + _wgslsmith_f_op_f32(arg_1.b - arg_0.a.b))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0.a.c.yzx), var_1.a.c.wzy))));
    return -select(arg_0.a.a.ww, vec2<i32>(i32(-1i) * -arg_2.a.x, 1i), !all(vec4<bool>(false, true, arg_3.x, arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    var var_0 = vec2<i32>(-2147483647i, ~global0[_wgslsmith_index_u32(u_input.c, 27u)]) >> (firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(81958u, 1u)) >> (reverseBits(vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = vec2<i32>(-12728i, 2746i);
    let var_1 = _wgslsmith_f_op_f32(ceil(1000f));
    var var_2 = vec4<u32>(u_input.c, _wgslsmith_mult_u32(1u | _wgslsmith_add_u32(u_input.c, u_input.c ^ 81625u), ~7875u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 53086u, u_input.c, u_input.c), vec4<u32>(u_input.c, 15120u, 0u, 1u))), ~(vec4<u32>(10895u, u_input.c, u_input.c, u_input.c) & vec4<u32>(801u, 23002u, u_input.c, u_input.c))), u_input.c), select(0u, countOneBits(u_input.c), any(vec3<bool>(true, true, any(vec4<bool>(false, false, false, true))))));
    var_0 = func_4(Struct_2(func_1(var_0.x & u_input.a, -1003f <= var_1, select(16124u, 4294967295u, false), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, var_2.x, 1u, var_2.x), vec4<u32>(4294967295u, 110243u, 6178u, 4294967295u)))), func_1(-42570i, -1627f == _wgslsmith_f_op_f32(-var_1), 10256u, vec4<u32>(u_input.c, 35706u << (u_input.c % 32u), abs(45014u), ~var_2.x)), Struct_1(min(vec4<i32>(-7000i, 51603i, global0[_wgslsmith_index_u32(82044u, 27u)], 35812i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 27u)], 3137i, u_input.a, 16562i)) ^ reverseBits(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(var_2.x, 27u)], u_input.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * 2906f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2354f, 960f, var_1, -424f))))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)) << (vec2<u32>(u_input.c, ~var_2.x) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(351f - var_1), _wgslsmith_f_op_f32(floor(var_1))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(478f, var_1))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-955f, var_1))), func_1(~(-40626i), any(vec2<bool>(false, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(78208u, u_input.c, u_input.c, 0u), vec4<u32>(var_2.x, u_input.c, var_2.x, 0u)), ~vec4<u32>(u_input.c, 147455u, 45669u, var_2.x)).c.xz))));
}

