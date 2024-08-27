struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = true;
    return Struct_1(vec3<i32>(abs(reverseBits(u_input.d)), min(-arg_0.b, _wgslsmith_sub_i32(firstLeadingBit(u_input.c), 0i)), _wgslsmith_mod_i32(-1i, arg_0.a.x)), _wgslsmith_div_i32(-26380i, _wgslsmith_sub_i32(-21219i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-2147483647i, u_input.d)), vec2<i32>(-16153i, u_input.d)))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    global1 = array<bool, 32>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1103f * -1819f)) + 1f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-915f))))));
    var var_0 = arg_0;
    var var_1 = true;
    global0 = -197f;
    return vec2<bool>(true, any(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], false, global1[_wgslsmith_index_u32(23469u, 32u)], global1[_wgslsmith_index_u32(arg_1, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(~arg_1, 32u)], !global1[_wgslsmith_index_u32(4294967295u, 32u)], any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(70630u, 32u)], false)), global1[_wgslsmith_index_u32(~4294967295u, 32u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(42281u, 32u)], global1[_wgslsmith_index_u32(66365u, 32u)], global1[_wgslsmith_index_u32(arg_1, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(33385u, 32u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 32u)], false, false, global1[_wgslsmith_index_u32(arg_1, 32u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 32u)], false, global1[_wgslsmith_index_u32(arg_1, 32u)]), global1[_wgslsmith_index_u32(arg_1, 32u)])))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> vec4<bool> {
    let var_0 = select(select(vec2<bool>(false, all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(31523u, 32u)]), vec2<bool>(false, false), arg_1))), vec2<bool>(any(vec2<bool>(true, arg_1)), any(!vec3<bool>(false, arg_1, arg_1))), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], arg_1)), !func_3(func_2(Struct_1(arg_0.wxw, -23727i), -1191f, -1061f), ~u_input.a), _wgslsmith_mult_i32(2147483647i, -u_input.d) <= max(max(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, arg_0.x), vec2<i32>(-1i, 1i))), -(0i >> (u_input.a % 32u))));
    var var_1 = func_2(Struct_1(select(arg_0.wzz, select(max(arg_0.zwz, vec3<i32>(395i, 1799i, arg_0.x)), -vec3<i32>(arg_0.x, 13573i, 1i), select(vec3<bool>(arg_1, true, true), vec3<bool>(var_0.x, var_0.x, true), var_0.x)), select(select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, var_0.x, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), arg_1), vec3<bool>(var_0.x, false, true), select(vec3<bool>(arg_1, arg_1, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<bool>(var_0.x, var_0.x, var_0.x), true))), ~(~abs(arg_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1074f)))), _wgslsmith_f_op_f32(-934f + _wgslsmith_f_op_f32(f32(-1f) * -1663f)));
    global1 = array<bool, 32>();
    var_1 = Struct_1(vec3<i32>(u_input.d, ~5526i, var_1.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, _wgslsmith_div_i32(-1i, u_input.d), _wgslsmith_dot_vec3_i32(arg_0.wzy, arg_0.wwy)), arg_0.zzx << ((vec3<u32>(0u, 1u, u_input.a) ^ u_input.b.zxx) % vec3<u32>(32u))), min(_wgslsmith_mod_i32(0i, 17276i), i32(-1i) * -arg_0.x)));
    let var_2 = func_2(func_2(func_2(Struct_1(firstTrailingBit(var_1.a), func_2(Struct_1(vec3<i32>(18665i, 1i, 27437i), 19958i), -1000f, -2403f).a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-551f * 187f), -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -306f)), 626f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -363f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-591f * -880f) + -302f))), _wgslsmith_f_op_f32(-890f + _wgslsmith_f_op_f32(773f - _wgslsmith_f_op_f32(round(-435f)))), _wgslsmith_f_op_f32(select(-680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-945f))))), arg_1))).b;
    return !select(!vec4<bool>(var_0.x, true, true, global1[_wgslsmith_index_u32(0u, 32u)]), !vec4<bool>(var_0.x, arg_1, var_1.b < arg_0.x, func_3(Struct_1(vec3<i32>(-1i, var_1.a.x, 0i), var_2), 1u).x), true);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_2 - arg_2);
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(select(countOneBits(vec3<i32>(u_input.d, u_input.c, -2147483647i)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, -1i), vec3<i32>(-2147483647i, u_input.d, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.d, 44858i), vec3<i32>(-19078i, u_input.d, -42187i)), vec3<bool>(true, true, any(arg_1.zxx))), -max(-vec3<i32>(u_input.d, 1i, u_input.d), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.d, u_input.d), vec3<i32>(-4694i, 0i, u_input.c)))), _wgslsmith_add_i32(22496i, ~(-37922i)));
    var_0 = _wgslsmith_f_op_f32(-arg_2);
    var var_2 = func_2(Struct_1(_wgslsmith_mult_vec3_i32(var_1.a, (vec3<i32>(var_1.b, var_1.b, u_input.c) ^ vec3<i32>(-1i, var_1.b, -1i)) << (_wgslsmith_sub_vec3_u32(u_input.b.zxx, vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u))), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(f32(-1f) * -334f))))), arg_2);
    var var_3 = ~(~firstLeadingBit(~(-var_2.a)));
    return Struct_1(vec3<i32>(var_1.b, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(var_3.x, 0i), ~vec2<i32>(-1i, 1i)), var_3.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d, var_1.b, var_2.b, var_2.b), vec4<i32>(3825i, u_input.c, -31217i, -1i) | -vec4<i32>(-12065i, 1i, var_1.b, var_1.a.x), ~max(vec4<i32>(var_2.b, u_input.d, -2147483647i, 1895i), vec4<i32>(var_2.b, 90807i, u_input.d, -1i))), vec4<i32>(1i, ~0i, ~var_3.x, ~2147483647i) >> (vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.b.x), ~u_input.b.x, u_input.b.x, u_input.b.x & u_input.a) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 55565u;
    global1 = array<bool, 32>();
    var var_1 = func_4(all(vec3<bool>(true, all(select(vec4<bool>(global1[_wgslsmith_index_u32(17219u, 32u)], true, global1[_wgslsmith_index_u32(52295u, 32u)], true), vec4<bool>(global1[_wgslsmith_index_u32(115688u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)], false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 32u)], true))), (global1[_wgslsmith_index_u32(u_input.a, 32u)] | true) & true)), !select(func_1(vec4<i32>(u_input.d, 1i, 0i, 9326i) ^ vec4<i32>(0i, u_input.d, u_input.d, 2147483647i), true), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(29209u, 32u)], false)), func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(32267i, -1i, u_input.c, 2147483647i), vec4<i32>(u_input.c, 43471i, u_input.d, 1i), vec4<i32>(u_input.d, u_input.c, u_input.d, u_input.c)), !global1[_wgslsmith_index_u32(0u, 32u)]).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(659f)))));
    var_1 = func_4(!any(vec3<bool>(!global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(25081u, 32u)] | false, true)), vec4<bool>(!any(!vec4<bool>(global1[_wgslsmith_index_u32(var_0, 32u)], true, global1[_wgslsmith_index_u32(1u, 32u)], true)), true, !any(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(var_0, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 32u)], true, global1[_wgslsmith_index_u32(21113u, 32u)]), true)), any(vec3<bool>(true, true, true)) && !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_0), 32u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(434f + 845f) * _wgslsmith_f_op_f32(sign(1000f)))))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f)) + -466f), -1179f, _wgslsmith_f_op_f32(1f - -1823f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) - _wgslsmith_f_op_f32(f32(-1f) * -723f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1149f + -338f)))));
    var_2 = global1[_wgslsmith_index_u32(var_0, 32u)];
    let var_4 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, var_0), ~var_0, select(1u, var_0, false)), vec3<u32>(var_0, _wgslsmith_clamp_u32(39656u, u_input.b.x, 0u), 45920u)), ~(vec3<u32>(u_input.a, u_input.a, u_input.b.x) & vec3<u32>(u_input.a, var_0, u_input.b.x)) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 22408u, 54606u), vec3<u32>(var_0, u_input.b.x, u_input.a)));
    var_2 = global1[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(21942u, ~u_input.a), ~(u_input.b.wz << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))))), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(var_4, vec3<u32>(var_0 ^ ~var_0, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b.zxy, vec3<u32>(0u, 8775u, 1u)), _wgslsmith_sub_u32(1u, u_input.b.x)), _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(var_0, 4294967295u)))), -(~(-min(var_1.a.yy, vec2<i32>(0i, var_1.b)))), vec2<u32>(var_4.x, 4294967295u), vec2<f32>(1347f, var_3.x));
}

