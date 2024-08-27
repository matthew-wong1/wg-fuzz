struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_5;

var<private> global2: f32;

var<private> global3: array<i32, 2>;

var<private> global4: array<f32, 16> = array<f32, 16>(657f, -584f, 149f, 183f, -1000f, 160f, -197f, 408f, 1548f, 863f, 921f, 1021f, 1590f, -1000f, -1409f, -948f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~57171u, 16u)] * global4[_wgslsmith_index_u32(reverseBits(1u), 16u)]);
    global3 = array<i32, 2>();
    global1 = Struct_5(select(!select(!global1.a, vec4<bool>(global1.a.x, false, true, false), select(vec4<bool>(false, global1.a.x, false, arg_1.c), arg_0, global0.x)), arg_0, !arg_1.d));
    let var_1 = vec4<i32>(-1i) * -u_input.b;
    let var_2 = ~(~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, arg_1.a), vec3<u32>(22848u, 95927u, u_input.a), vec3<u32>(1u, 16864u, 1u)))));
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> bool {
    global4 = array<f32, 16>();
    let var_0 = ~reverseBits(countOneBits(~vec3<u32>(4496u, u_input.a, 0u)));
    var var_1 = vec3<i32>(-(u_input.b.x & (i32(-1i) * -global3[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_dot_vec4_i32(func_3(vec4<bool>(true, true, global1.a.x, !arg_2.x), Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4[_wgslsmith_index_u32(0u, 16u)], 2113f, global4[_wgslsmith_index_u32(17289u, 16u)], global4[_wgslsmith_index_u32(u_input.c, 16u)]), vec4<f32>(arg_1.x, -851f, arg_0, arg_1.x))), global1.a.x, true, 23648u), vec2<i32>(-57003i, ~u_input.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1206f, 937f)), _wgslsmith_f_op_vec3_f32(-arg_1.yzw)))), u_input.b), _wgslsmith_sub_i32(390i, -10553i));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(select(~countOneBits(vec4<u32>(0u, 4294967295u, 1u, 0u)), ~vec4<u32>(0u, u_input.a, var_0.x, 1u), arg_2), vec4<u32>(u_input.c, _wgslsmith_div_u32(firstTrailingBit(u_input.c), 1u), u_input.c, u_input.c)), 4294967295u);
    var var_3 = Struct_4(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 29644i, var_1.x), u_input.b.zyw), vec3<i32>(0i, -10650i, global3[_wgslsmith_index_u32(var_2.x, 2u)])), vec3<i32>(~global3[_wgslsmith_index_u32(56831u, 2u)], i32(-1i) * -76081i, global3[_wgslsmith_index_u32(43441u | var_0.x, 2u)]), u_input.b.zzw));
    return arg_2.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> Struct_1 {
    global3 = array<i32, 2>();
    global0 = !(!arg_3.zz);
    global0 = !vec2<bool>(true, func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2556f)))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - -364f), -1000f, -759f, arg_1.x), select(global1.a, select(vec4<bool>(true, arg_2.x, true, global1.a.x), global1.a, true), false)));
    global1 = Struct_5(select(!(!global1.a), !global1.a, false));
    let var_0 = 0u;
    return Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(var_0, 16u)], arg_1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(select(954f, -938f, false)), -580f, arg_1.x, _wgslsmith_f_op_f32(-1730f * 1000f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], 238f, -1742f, global4[_wgslsmith_index_u32(u_input.a, 16u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(785f, arg_1.x, global4[_wgslsmith_index_u32(var_0, 16u)], arg_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 444f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_0, 16u)], -219f, arg_1.x, global4[_wgslsmith_index_u32(19393u, 16u)]))))), true, true, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 17673u, 0u), vec3<u32>(u_input.c, var_0, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, u_input.a)))));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = func_4(select(select(vec2<bool>(true, true), vec2<bool>(false, select(global1.a.x, global0.x, true)), global0.x), vec2<bool>(any(global1.a.yy), func_2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(52241u, 16u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], -1000f, -1000f, -2381f)), select(global1.a, global1.a, false))), global1.a.wz), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(43307u, 16u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c, 16u)] * global4[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 16u)], 1163f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(316f, -243f, global4[_wgslsmith_index_u32(u_input.c, 16u)])))))), select(!vec3<bool>(func_2(global4[_wgslsmith_index_u32(4294967295u, 16u)], vec4<f32>(2017f, 433f, 1295f, global4[_wgslsmith_index_u32(57002u, 16u)]), global1.a), global0.x, global1.a.x), select(select(select(vec3<bool>(global0.x, global1.a.x, global0.x), vec3<bool>(global1.a.x, global1.a.x, false), global1.a.x), vec3<bool>(true, global1.a.x, global0.x), global0.x), select(select(global1.a.yzy, global1.a.zyz, global1.a.zyw), global1.a.xzy, vec3<bool>(global1.a.x, global1.a.x, global0.x)), global0.x), select(select(global1.a.wyw, vec3<bool>(false, global1.a.x, false), true), vec3<bool>(func_2(-210f, vec4<f32>(-1187f, global4[_wgslsmith_index_u32(u_input.a, 16u)], 334f, -1673f), global1.a), global0.x, global1.a.x), vec3<bool>(u_input.a != 41985u, !global0.x, all(vec2<bool>(false, false))))), vec3<bool>(global4[_wgslsmith_index_u32(0u, 16u)] != global4[_wgslsmith_index_u32(~24083u, 16u)], !(!(global4[_wgslsmith_index_u32(4294967295u, 16u)] <= global4[_wgslsmith_index_u32(u_input.c, 16u)])), global0.x));
    global3 = array<i32, 2>();
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(~1u, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1684f))))));
    var var_1 = countOneBits(arg_0.x);
    var_0 = Struct_1((1u ^ var_0.a) | _wgslsmith_mult_u32(46393u, firstLeadingBit(var_0.e)), _wgslsmith_f_op_vec4_f32(exp2(var_0.b)), false, !global1.a.x, max(u_input.a | (select(u_input.a, 70447u, var_0.d) >> (~1u % 32u)), ~1u));
    return (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, abs(var_0.e), ~var_0.e), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a))) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, var_0.e), ~vec2<u32>(0u, u_input.a)), 64207u) % 32u)) << (48005u % 32u);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global0 = global1.a.yw;
    var var_0 = vec4<f32>(-1739f, global4[_wgslsmith_index_u32(arg_0.x, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~arg_3.b.a, 16u)]), 1f)) * global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(arg_3.b.a, arg_3.a.a), _wgslsmith_add_u32(func_1(vec3<i32>(u_input.b.x, arg_1.a.x, u_input.b.x)), abs(arg_0.x))), 16u)]), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-186f * _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(0u, 16u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(124f + 1000f) - _wgslsmith_f_op_f32(max(226f, global4[_wgslsmith_index_u32(arg_3.a.a, 16u)])))), true)));
    var var_1 = 101152u;
    let var_2 = select(!vec4<bool>(true, _wgslsmith_mult_u32(71229u, 0u) <= arg_0.x, any(!global1.a.xyw), false), vec4<bool>(any(vec3<bool>(global0.x, true && global0.x, global0.x)), false, !any(vec2<bool>(global0.x, global1.a.x)) || true, any(select(global1.a.xzw, vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, true, global0.x)))), global0.x);
    global4 = array<f32, 16>();
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.c | u_input.a) ^ reverseBits(u_input.a);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-625f)) + global4[_wgslsmith_index_u32(var_0, 16u)]);
    var var_1 = func_5(vec3<u32>(_wgslsmith_mult_u32(~u_input.a | abs(3802u), max(1u, 1u)), select(_wgslsmith_mod_u32(u_input.c, ~var_0), min(47758u << (var_0 % 32u), 23204u), global1.a.x), func_1(u_input.b.xxx)), Struct_4(reverseBits(select(firstTrailingBit(u_input.b.wxy), -vec3<i32>(-1i, u_input.b.x, u_input.b.x), u_input.b.x > 5878i))), Struct_4(select(_wgslsmith_div_vec3_i32(u_input.b.www, ~u_input.b.ywy), u_input.b.xyz, false)), Struct_2(func_4(vec2<bool>(-725f <= global4[_wgslsmith_index_u32(0u, 16u)], false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-403f, 641f, 422f) * vec3<f32>(global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)], 652f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(630f, global4[_wgslsmith_index_u32(u_input.a, 16u)], global4[_wgslsmith_index_u32(u_input.a, 16u)]) - vec3<f32>(global4[_wgslsmith_index_u32(8072u, 16u)], global4[_wgslsmith_index_u32(4333u, 16u)], -721f))), !global1.a.wxz, select(select(vec3<bool>(true, false, true), vec3<bool>(global0.x, false, global0.x), false), select(global1.a.wzz, vec3<bool>(global1.a.x, true, false), vec3<bool>(global0.x, global0.x, true)), select(global1.a.xzy, vec3<bool>(true, true, false), vec3<bool>(true, global0.x, global0.x)))), Struct_1(var_0, vec4<f32>(func_4(global1.a.zx, vec3<f32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], global4[_wgslsmith_index_u32(92314u, 16u)], global4[_wgslsmith_index_u32(var_0, 16u)]), global1.a.xxz, global1.a.wxz).b.x, _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(var_0, 16u)])), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 16u)]), global4[_wgslsmith_index_u32(86030u, 16u)]), true, true | any(global1.a.wy), 1u), global0.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], 1000f, 369f) - vec3<f32>(472f, 1000f, 680f)))))), global0.x));
    let var_2 = true;
    global1 = Struct_5(global1.a);
    global4 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~(-62233i), u_input.b, -(-26703i & _wgslsmith_div_i32(~0i, u_input.b.x)));
}

