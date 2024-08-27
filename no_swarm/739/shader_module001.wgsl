struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<f32, 7>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = select(select(select(select(!vec4<bool>(true, arg_2.b, true, false), !vec4<bool>(false, arg_2.b, arg_2.b, arg_2.b), arg_2.b), vec4<bool>(arg_2.b, !arg_2.b, !arg_2.b, true), any(select(vec2<bool>(false, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), arg_2.b))), !vec4<bool>(false, false, u_input.b.x < -20320i, !arg_2.b), vec4<bool>(false != arg_2.b, any(select(vec3<bool>(true, arg_2.b, false), vec3<bool>(arg_2.b, arg_2.b, arg_2.b), vec3<bool>(arg_2.b, true, false))), arg_2.b, arg_2.b & true)), select(vec4<bool>(false, false, _wgslsmith_add_u32(arg_3.a.b, u_input.a) <= u_input.a, true & !arg_2.b), vec4<bool>(!(u_input.b.x != u_input.c.x), arg_2.b || true, false, arg_2.b), vec4<bool>(true, all(select(vec4<bool>(false, false, arg_2.b, arg_2.b), vec4<bool>(arg_2.b, false, false, arg_2.b), false)), (u_input.b.x < -1i) && any(vec4<bool>(true, true, arg_2.b, true)), arg_2.b)), !(!all(!vec4<bool>(true, false, false, arg_2.b))));
    var var_1 = vec3<bool>(var_0.x, arg_2.b, all(select(!(!var_0.xww), select(vec3<bool>(false, false, arg_2.b), select(vec3<bool>(true, arg_2.b, true), var_0.xyy, vec3<bool>(true, var_0.x, arg_2.b)), var_0.xzx), vec3<bool>(true, any(vec2<bool>(var_0.x, var_0.x)), true))));
    var_1 = var_0.yzx;
    var_1 = vec3<bool>(var_1.x, true, var_1.x);
    var var_2 = Struct_3(arg_3.a);
    return u_input.b.wx;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_3(arg_0);
    let var_1 = !vec4<bool>(true, true, false, all(vec3<bool>(all(vec3<bool>(true, false, true)), var_0.a.a == var_0.a.b, true)));
    var var_2 = Struct_1(~67540u, 16460u, var_0.a.c, _wgslsmith_f_op_f32(var_0.a.e * -1142f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 14u)], var_0.a.d)) + arg_1.d), true)))));
    var_0 = Struct_3(Struct_1(~_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_3.zy), vec2<u32>(45910u, 72518u)), 1u, ~countOneBits(~0u), -120f, 884f));
    var_0 = Struct_3(Struct_1(arg_3.x, 4294967295u, _wgslsmith_add_u32(0u, max(4294967295u, _wgslsmith_dot_vec3_u32(arg_3, arg_3))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(229f, var_2.e)))), 1f));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, -734f, global1[_wgslsmith_index_u32(0u, 7u)], 678f))))))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1150f, global1[_wgslsmith_index_u32(1u, 7u)], -1000f, -1649f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(3338u, 7u)], -158f, global1[_wgslsmith_index_u32(0u, 7u)])))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(641f + 1000f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 7u)] - 1310f), _wgslsmith_f_op_f32(min(-550f, global0[_wgslsmith_index_u32(4294967295u, 14u)])))))), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(4294967295u, abs(arg_0), u_input.a, 276f, global1[_wgslsmith_index_u32(~(~arg_0), 7u)]), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0, 1u, u_input.a), vec4<u32>(1u, 31682u, arg_0, u_input.a)), ~vec4<u32>(32868u, 1336u, 4294967295u, 12167u)), u_input.a, ~arg_0, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 14u)] - 109f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 7u)]))), _wgslsmith_dot_vec2_i32(func_3(Struct_3(Struct_1(4294967295u, u_input.a, 0u, 822f, -180f)), Struct_3(Struct_1(1u, u_input.a, 0u, global0[_wgslsmith_index_u32(0u, 14u)], -1349f)), Struct_2(Struct_1(4294967295u, 56474u, u_input.a, global0[_wgslsmith_index_u32(arg_0, 14u)], global1[_wgslsmith_index_u32(u_input.a, 7u)]), true), Struct_3(Struct_1(u_input.a, arg_0, 22470u, global0[_wgslsmith_index_u32(u_input.a, 14u)], 1420f))), -vec2<i32>(u_input.b.x, u_input.b.x) | (vec2<i32>(u_input.b.x, -48028i) | u_input.c)), ~firstTrailingBit(reverseBits(vec3<u32>(arg_0, arg_0, 0u))))));
    let var_1 = Struct_1(3952u, 70182u, 4294967295u, global1[_wgslsmith_index_u32((_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(8445u, arg_0, arg_0, arg_0), vec4<u32>(u_input.a, 1u, 23196u, u_input.a))) >> ((30578u & _wgslsmith_dot_vec3_u32(vec3<u32>(77580u, arg_0, 15751u), vec3<u32>(u_input.a, u_input.a, 6110u))) % 32u)) << (arg_0 % 32u), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 14u)])) * global1[_wgslsmith_index_u32(abs(arg_0), 7u)])));
    let var_2 = u_input.b.yww;
    let var_3 = _wgslsmith_div_u32(var_1.a, 0u);
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~var_3, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 616f))), -1158f, -431f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(50748u, 14u)] + -198f) * var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1499f + global1[_wgslsmith_index_u32(var_3, 7u)]) + -590f), _wgslsmith_f_op_vec4_f32(func_4(var_1, var_1, min(u_input.c.x, u_input.b.x), vec3<u32>(u_input.a, arg_0, 40597u) ^ vec3<u32>(arg_0, 45649u, u_input.a))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_3, 14u)]))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 7u)]) < 1000f));
    return Struct_2(var_1, true);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = arg_0.b;
    let var_1 = vec2<f32>(-327f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(26791u, arg_0.a.c, 1u, 21972u), vec4<u32>(arg_0.a.c, 1u, 1u, u_input.a)), firstTrailingBit(vec4<u32>(4294967295u, arg_0.a.b, arg_0.a.c, u_input.a)))), 7u)] + -2291f));
    global1 = array<f32, 7>();
    global1 = array<f32, 7>();
    let var_2 = select(!select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), select(vec2<bool>(false, var_0), vec2<bool>(arg_0.b, true), false), arg_1 == 2147483647i), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, var_0)), select(vec2<bool>(false, false), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, false)), !vec2<bool>(var_0, true))), !select(!vec2<bool>(false, arg_0.b), select(select(vec2<bool>(arg_0.b, var_0), vec2<bool>(false, arg_0.b), true), select(vec2<bool>(true, true), vec2<bool>(var_0, true), vec2<bool>(var_0, false)), select(vec2<bool>(arg_0.b, false), vec2<bool>(true, var_0), vec2<bool>(false, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0.b), vec2<bool>(true, true), func_2(u_input.a).b)), select(arg_0.b, !(!arg_0.b & all(vec4<bool>(true, var_0, var_0, true))), all(vec4<bool>(any(vec4<bool>(var_0, false, true, var_0)), false && var_0, var_0, var_0))));
    return min(min(_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(34938u, 17271u, arg_0.a.c, arg_0.a.b), vec4<u32>(u_input.a, arg_0.a.b, arg_0.a.a, 1u), vec4<u32>(u_input.a, 6615u, u_input.a, 37888u))), reverseBits(abs(vec4<u32>(u_input.a, 67571u, 7398u, u_input.a)))), countOneBits(select(vec4<u32>(1u, 21532u, arg_0.a.c, arg_0.a.a), vec4<u32>(arg_0.a.a, u_input.a, arg_0.a.b, 1u), !var_2.x))), vec4<u32>(~(~0u), 4294967295u, u_input.a, u_input.a));
}

fn func_1() -> bool {
    global0 = array<f32, 14>();
    var var_0 = ~func_5(func_2(1u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), select(vec2<i32>(64181i, u_input.c.x), u_input.c, false)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -663f), 523f, false)), _wgslsmith_f_op_f32(1113f * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a, 7u)])))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<u32>(1u, u_input.a, 109400u, 10923u)), 14u)], _wgslsmith_f_op_f32(select(138f, global0[_wgslsmith_index_u32(u_input.a, 14u)], true)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1135u, 14u)]), global1[_wgslsmith_index_u32(1u, 7u)]))));
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(var_0.x << (u_input.a % 32u)), var_0.x), 7u)];
    return false;
}

fn func_6(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = !(!vec4<bool>(arg_0, global1[_wgslsmith_index_u32(~12020u, 7u)] >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.a.b, 14u)]), _wgslsmith_div_f32(arg_2.a.d, -153f) == _wgslsmith_f_op_f32(-arg_2.a.d), arg_0));
    global1 = array<f32, 7>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(func_2(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 15720u), ~vec3<u32>(7618u, arg_2.a.a, 29219u))).a, Struct_1(23824u, countOneBits(1u << (_wgslsmith_mod_u32(arg_2.a.c, u_input.a) % 32u)), u_input.a, func_2(~(4294967295u ^ u_input.a)).a.e, 970f), u_input.b.x, vec3<u32>(reverseBits(_wgslsmith_add_u32(~1u, ~arg_2.a.c)), ~_wgslsmith_add_u32(u_input.a, min(0u, 4294967295u)), 47863u)));
    global0 = array<f32, 14>();
    let var_2 = _wgslsmith_add_i32(-(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.b.x, 1i, -29715i)) << (abs(reverseBits(arg_2.a.a)) % 32u)), func_3(Struct_3(func_2(~arg_2.a.b).a), arg_2, Struct_2(func_2(arg_2.a.b).a, !(!arg_0)), arg_2).x);
    return StorageBuffer((u_input.b.x & 39578i) >> ((_wgslsmith_sub_u32(firstLeadingBit(arg_2.a.a), 1085u) >> (abs(0u) % 32u)) % 32u), vec3<i32>(1i, var_2, _wgslsmith_sub_i32(var_2, u_input.c.x)), countOneBits(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 7>();
    global1 = array<f32, 7>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 14u)];
    let var_1 = u_input.a >> (0u % 32u);
    global1 = array<f32, 7>();
    let x = u_input.a;
    s_output = func_6(!func_1() == false, vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 7u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(1u, 91961u), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, var_1))), 7u)]), Struct_3(func_2(41219u).a));
}

