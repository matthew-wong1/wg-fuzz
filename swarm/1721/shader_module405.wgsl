struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, true, false, true, false, false, false, true, false, true, false, true, true, true, false, false, false, false, true, false, true, false, false, true, false);

var<private> global1: Struct_1;

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_f32(174f + arg_1);
    var var_2 = Struct_1(arg_0);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-393f, arg_1, global1.a)) + -124f))) * -1207f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1)))))));
    return _wgslsmith_mult_u32(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(38333u, 80038u), vec2<u32>(u_input.a, 1u)))), reverseBits(abs(~36852u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    global2 = func_3(global1.a, -869f, !select(!select(vec2<bool>(false, true), vec2<bool>(global1.a, global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec2<bool>(arg_0.a, true)), vec2<bool>(arg_0.a, true), arg_3.a), Struct_1(true));
    let var_0 = arg_0;
    global0 = array<bool, 26>();
    var var_1 = arg_2.xz;
    global0 = array<bool, 26>();
    return arg_3;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(select(vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], true, true, global1.a)), !arg_0.a & true), !vec2<bool>(true, arg_0.a || arg_0.a), vec2<bool>(true, true)), vec2<bool>(!all(vec3<bool>(arg_0.a, global0[_wgslsmith_index_u32(7886u, 26u)], arg_0.a)), 2147483647i > -(u_input.b.x << (21920u % 32u))), true || any(!select(vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(true, false, arg_0.a, false), true)));
    var var_1 = global1.a;
    var var_2 = _wgslsmith_f_op_f32(-307f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -582f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(414f))), -1184f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-190f, -791f)), -636f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-424f, 904f))))));
    var var_4 = min(_wgslsmith_mod_u32(firstLeadingBit(~u_input.a), u_input.d | 71224u) << (6027u % 32u), 1u);
    return func_2(arg_0, arg_0, abs(vec3<u32>(u_input.a & 41107u, 0u, ~reverseBits(u_input.a))), Struct_1(-u_input.c > -2147483647i));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(-5832i, 2147483647i, 36642i))), ~abs(reverseBits(vec2<i32>(1i, u_input.b.x))));
    global2 = ~arg_2.x;
    global1 = Struct_1(arg_3.a);
    let var_1 = func_4(arg_3);
    let var_2 = vec4<f32>(-760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-914f, -1969f, false))) + _wgslsmith_f_op_f32(f32(-1f) * -827f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1408f)))), _wgslsmith_f_op_f32(trunc(-151f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-314f))))));
    return firstTrailingBit(arg_0.x);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(any(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], arg_2.a, arg_2.a, arg_1.a), select(vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(true, false, false, global1.a), arg_2.a), func_4(func_2(Struct_1(global0[_wgslsmith_index_u32(0u, 26u)]), Struct_1(true), vec3<u32>(u_input.d, u_input.d, u_input.a), arg_1)).a)));
    let var_1 = select(vec3<bool>(true, all(select(select(vec4<bool>(false, arg_2.a, false, global0[_wgslsmith_index_u32(u_input.d, 26u)]), vec4<bool>(true, arg_0, true, arg_2.a), vec4<bool>(true, false, true, var_0.a)), vec4<bool>(arg_0, false, var_0.a, false), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], true, global0[_wgslsmith_index_u32(0u, 26u)], arg_2.a))), global0[_wgslsmith_index_u32(u_input.a >> (~u_input.d % 32u), 26u)]), select(select(select(!vec3<bool>(arg_1.a, global1.a, global0[_wgslsmith_index_u32(11714u, 26u)]), vec3<bool>(true, var_0.a, true), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(arg_1.a, true, global1.a), true)), select(vec3<bool>(true, false, arg_1.a), vec3<bool>(global1.a, global1.a, true), vec3<bool>(true, true, true)), select(!vec3<bool>(false, arg_1.a, true), select(vec3<bool>(true, arg_1.a, false), vec3<bool>(false, false, true), true), !vec3<bool>(var_0.a, arg_2.a, false))), select(select(!vec3<bool>(false, var_0.a, arg_1.a), select(vec3<bool>(global1.a, true, var_0.a), vec3<bool>(true, arg_1.a, global0[_wgslsmith_index_u32(u_input.a, 26u)]), true), true), !vec3<bool>(arg_1.a, true, true), global1.a), select(!select(vec3<bool>(false, false, true), vec3<bool>(arg_0, var_0.a, false), false), select(!vec3<bool>(true, var_0.a, var_0.a), !vec3<bool>(true, global0[_wgslsmith_index_u32(5081u, 26u)], true), !vec3<bool>(false, arg_2.a, false)), vec3<bool>(!var_0.a, all(vec4<bool>(global1.a, var_0.a, arg_0, arg_0)), var_0.a))), any(vec2<bool>(arg_0, !func_4(Struct_1(false)).a)));
    global1 = arg_2;
    var var_2 = -1000f;
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mod_u32(firstLeadingBit(~u_input.d), func_3(true, _wgslsmith_f_op_f32(ceil(-709f)), !var_1.xx, func_2(arg_1, Struct_1(false), vec3<u32>(u_input.d, u_input.a, 1u), arg_1))), u_input.d) | 1u;
    return vec2<bool>(all(vec2<bool>(select(arg_2.a, false, any(vec3<bool>(true, false, false))), all(!vec3<bool>(global1.a, arg_0, global0[_wgslsmith_index_u32(0u, 26u)])))), arg_0);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = select(func_6(global0[_wgslsmith_index_u32(func_5(arg_0, func_4(func_2(Struct_1(global1.a), Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 26u)]), arg_0.wxy, Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 26u)]))), firstLeadingBit(arg_0.yzz >> (vec3<u32>(4294967295u, arg_0.x, 28163u) % vec3<u32>(32u))), func_2(func_2(Struct_1(true), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<u32>(24580u, arg_0.x, 97586u), Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 26u)])), func_2(Struct_1(global1.a), Struct_1(global1.a), arg_0.yzw, Struct_1(true)), ~vec3<u32>(4294967295u, u_input.d, arg_0.x), func_4(Struct_1(false)))), 26u)], func_4(func_4(func_4(Struct_1(global1.a)))), func_2(func_2(func_2(Struct_1(global0[_wgslsmith_index_u32(0u, 26u)]), Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 26u)]), arg_0.yyw, Struct_1(true)), func_4(Struct_1(global1.a)), reverseBits(vec3<u32>(u_input.d, 1u, u_input.d)), Struct_1(true)), func_2(Struct_1(global1.a), Struct_1(false), select(arg_0.zzy, vec3<u32>(arg_0.x, 5012u, 1u), global1.a), func_4(Struct_1(false))), vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), abs(u_input.d), arg_0.x), func_2(Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 26u)]), func_2(Struct_1(false), Struct_1(true), vec3<u32>(arg_0.x, u_input.a, u_input.d), Struct_1(false)), vec3<u32>(4294967295u, 37144u, 1157u), func_4(Struct_1(global1.a))))), vec2<bool>(!global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 26u)], false), select(vec2<bool>(global1.a | all(vec2<bool>(false, true)), !global0[_wgslsmith_index_u32(firstTrailingBit(9832u), 26u)]), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(29128u, 26u)])), (firstLeadingBit(u_input.c) >= ~u_input.b.x) & ((u_input.c == 0i) && true)));
    let var_1 = any(vec2<bool>(true, !global0[_wgslsmith_index_u32(select(reverseBits(u_input.a), arg_0.x ^ arg_0.x, global0[_wgslsmith_index_u32(u_input.d, 26u)] != true), 26u)]));
    let var_2 = false;
    global1 = func_4(Struct_1(!all(vec3<bool>(var_1, false, global1.a))));
    global1 = Struct_1(true);
    return func_2(Struct_1(true), func_4(func_2(Struct_1(true), func_2(func_2(Struct_1(true), Struct_1(var_1), arg_0.wyw, Struct_1(var_1)), Struct_1(global0[_wgslsmith_index_u32(0u, 26u)]), arg_0.yzx << (arg_0.zwz % vec3<u32>(32u)), func_2(Struct_1(var_1), Struct_1(var_2), arg_0.yxz, Struct_1(var_2))), arg_0.zwy, Struct_1(true))), arg_0.yxz, func_4(Struct_1(true)));
}

fn func_7(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(-firstLeadingBit(~(-6573i << (arg_1 % 32u))), -19022i, u_input.c, u_input.c);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1907f * -1127f) + -1544f) + _wgslsmith_f_op_f32(-701f - 730f)), _wgslsmith_f_op_f32(-1819f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-2394f, 141f)), _wgslsmith_f_op_f32(1724f + 765f))))));
    global0 = array<bool, 26>();
    var var_2 = Struct_1(!(!func_6(true, func_2(Struct_1(arg_3.a), Struct_1(arg_2.a), vec3<u32>(arg_1, 35741u, 8210u), Struct_1(arg_3.a)), Struct_1(global1.a)).x));
    var var_3 = func_4(arg_2);
    return func_2(arg_2, Struct_1(all(vec3<bool>(true, true, all(vec4<bool>(var_2.a, global0[_wgslsmith_index_u32(1u, 26u)], false, var_3.a))))), _wgslsmith_clamp_vec3_u32(countOneBits(reverseBits(vec3<u32>(u_input.a, 4356u, arg_1))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, ~u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1, u_input.a, u_input.d), _wgslsmith_mod_vec3_u32(vec3<u32>(96366u, arg_1, arg_1), vec3<u32>(arg_1, arg_1, u_input.a)), vec3<u32>(0u, arg_1, 70750u))), ~(~(~vec3<u32>(arg_1, arg_1, u_input.d)))), Struct_1(true && select(func_4(arg_2).a, all(vec4<bool>(false, global1.a, false, false)), global1.a)));
}

fn func_8(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.d, 56343u, 22755u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(select(u_input.a, 92472u, false), ~u_input.d, 0u, ~3272u), ~(~vec4<u32>(u_input.d, 1u, u_input.d, u_input.a)))), ~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 13554u, 6131u), vec4<u32>(u_input.d, 1u, 120169u, 0u)), abs(vec4<u32>(65699u, 4294967295u, 4294967295u, u_input.a))) & ~abs(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.a) << (vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))));
    let var_2 = !select(vec4<bool>(arg_2.a, true, true, arg_3), vec4<bool>(func_4(arg_2).a, !arg_0.a, !global0[_wgslsmith_index_u32(u_input.d & u_input.a, 26u)], true), !(!vec4<bool>(false, false, arg_0.a, true)));
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1708f, -1000f))));
    return Struct_1(false);
}

fn func_9(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec3<f32> {
    let var_0 = arg_1;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 882f, arg_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1689f, -1892f, 907f) * vec3<f32>(arg_3, arg_3, arg_3)), vec3<bool>(true, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_9(Struct_1(any(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 26u)], false, true), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global1.a, false), vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 26u)]), global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(false, false, false)))), func_8(func_7(!vec3<bool>(global1.a, global0[_wgslsmith_index_u32(1u, 26u)], true), 1u, func_1(~vec4<u32>(29710u, u_input.a, 38977u, u_input.a)), Struct_1(all(vec4<bool>(false, global0[_wgslsmith_index_u32(36360u, 26u)], true, false)))), vec4<f32>(484f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(1142f + -1000f)), _wgslsmith_div_f32(-2201f, _wgslsmith_f_op_f32(-932f - -1156f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 277f))), Struct_1(func_7(vec3<bool>(global1.a, true, global1.a), select(u_input.a, u_input.d, true), func_1(vec4<u32>(0u, 0u, 1u, 7695u)), Struct_1(global1.a)).a), !(!(u_input.d <= 25192u))), global0[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f))));
    global2 = ~46232u;
    global2 = abs(~1u);
    global1 = func_4(func_4(func_4(func_7(select(vec3<bool>(false, global0[_wgslsmith_index_u32(19274u, 26u)], false), vec3<bool>(global1.a, true, global1.a), global1.a), 4294967295u, func_4(Struct_1(global1.a)), func_4(Struct_1(false))))));
    global0 = array<bool, 26>();
    var var_1 = -652f;
    var var_2 = func_2(func_2(Struct_1(8520i > u_input.b.x), func_7(!vec3<bool>(true, global1.a, global0[_wgslsmith_index_u32(u_input.a, 26u)]), 4294967295u, func_7(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 26u)], true, global1.a), ~u_input.d, func_7(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), 1u, Struct_1(true), Struct_1(false)), Struct_1(false)), func_2(func_2(Struct_1(true), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<u32>(4294967295u, u_input.d, u_input.d), Struct_1(global1.a)), Struct_1(global1.a), vec3<u32>(1u, 53875u, 55102u), Struct_1(true))), vec3<u32>(u_input.a, ~0u, 0u), func_2(Struct_1(true), func_8(func_1(vec4<u32>(55601u, u_input.a, 0u, 53629u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1669f, var_0.x, var_0.x, var_0.x))), Struct_1(global1.a), true), ~vec3<u32>(u_input.a, u_input.d, u_input.a), Struct_1(true))), func_8(Struct_1(any(vec2<bool>(true, global1.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1243f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 688f, -735f)))), func_1(abs(firstTrailingBit(vec4<u32>(62737u, u_input.a, 71308u, 0u)))), !any(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 26u)], false, true, false), vec4<bool>(false, true, true, global1.a), vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)])))), abs(vec3<u32>(_wgslsmith_mult_u32(u_input.a, ~u_input.d), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d, 0u), ~0u), 0u)), func_8(func_8(Struct_1(true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2358f, 1432f, var_0.x, 1022f)))), func_8(Struct_1(global0[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1381f, 707f, var_0.x, 1000f) * vec4<f32>(var_0.x, -166f, 157f, -171f)), func_2(Struct_1(true), Struct_1(false), vec3<u32>(u_input.d, 40567u, 53065u), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 26u)])), global0[_wgslsmith_index_u32(31080u, 26u)]), false | func_8(Struct_1(false), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(global0[_wgslsmith_index_u32(41680u, 26u)]), global1.a).a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, -1000f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-678f, var_0.x, 1254f, 1470f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(669f, 1010f, 754f, -1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1393f, var_0.x, -329f, var_0.x) * vec4<f32>(var_0.x, var_0.x, -2339f, var_0.x))))), Struct_1(global1.a), true));
    let var_3 = select(~((vec3<i32>(-1i) * -vec3<i32>(u_input.c, 2147483647i, u_input.c)) & min(vec3<i32>(-25766i, u_input.b.x, 1i), abs(vec3<i32>(1i, 1i, 1i)))), _wgslsmith_mult_vec3_i32(min(select(vec3<i32>(u_input.c, u_input.c, u_input.b.x), vec3<i32>(u_input.c, -13929i, -1i), vec3<bool>(global1.a, true, var_2.a)), -vec3<i32>(u_input.b.x, u_input.c, 0i)), vec3<i32>(2147483647i, -1i, 1i) << (~vec3<u32>(29506u, u_input.d, u_input.a) % vec3<u32>(32u))) >> (~reverseBits(min(vec3<u32>(u_input.a, u_input.d, 1u), vec3<u32>(u_input.a, u_input.d, 5568u))) % vec3<u32>(32u)), select(select(vec3<bool>(func_6(false, Struct_1(var_2.a), Struct_1(true)).x, !var_2.a, false), !(!vec3<bool>(false, var_2.a, global0[_wgslsmith_index_u32(1u, 26u)])), !(!vec3<bool>(false, true, var_2.a))), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 26u)], false, true)), vec3<bool>(-1609f == var_0.x, false, !global0[_wgslsmith_index_u32(1u, 26u)]), !any(vec4<bool>(global1.a, global1.a, false, global1.a))), vec3<bool>(true, func_2(Struct_1(global1.a), func_1(vec4<u32>(1u, u_input.d, 0u, u_input.d)), ~vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(true)).a, global1.a)));
    var var_4 = Struct_1(func_7(select(select(select(vec3<bool>(false, false, false), vec3<bool>(global1.a, global0[_wgslsmith_index_u32(u_input.d, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(true, true, true)), vec3<bool>(false, global1.a, false), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], global1.a, var_2.a)), select(select(vec3<bool>(true, var_2.a, true), vec3<bool>(var_2.a, true, true), true), select(vec3<bool>(global1.a, global0[_wgslsmith_index_u32(u_input.a, 26u)], var_2.a), vec3<bool>(var_2.a, global1.a, var_2.a), global0[_wgslsmith_index_u32(12068u, 26u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(13431u, 26u)], global0[_wgslsmith_index_u32(u_input.d, 26u)]), vec3<bool>(false, false, false), global1.a)), vec3<bool>(global1.a, var_2.a, var_2.a)), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.d, 48444u), select(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.d, 5158u), vec2<bool>(false, false)), func_6(true, Struct_1(global0[_wgslsmith_index_u32(u_input.d, 26u)]), Struct_1(global1.a))), vec2<u32>(countOneBits(u_input.d), u_input.a)), func_1(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, 12858u, u_input.d)), min(vec4<u32>(1u, u_input.a, 1u, 7150u), vec4<u32>(u_input.d, u_input.d, 4294967295u, 1u)))), Struct_1(true)).a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(4294967295u >> (u_input.a % 32u), u_input.d)) | vec2<u32>(u_input.d, u_input.d), abs(select(vec4<u32>(18558u, u_input.a, u_input.d, 0u), vec4<u32>(u_input.a, 0u, 17200u, 103980u), func_7(vec3<bool>(false, global0[_wgslsmith_index_u32(52750u, 26u)], var_4.a), 4294967295u, Struct_1(true), Struct_1(false)).a)) | abs(vec4<u32>(33284u, u_input.d, 4294967295u, 4371u) ^ ~vec4<u32>(1u, 39401u, 1u, u_input.a)));
}

