struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    global1 = ~_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(min(min(vec2<i32>(15809i, 18273i), vec2<i32>(1i, u_input.b)), vec2<i32>(1i, -2147483647i)), select(vec2<i32>(32996i, -1i), vec2<i32>(-1i, 0i), false) ^ abs(vec2<i32>(-2147483647i, 2147483647i))), vec2<i32>(u_input.a, _wgslsmith_div_i32(52885i, max(1i, arg_0.a))));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_2.x, arg_2.x, arg_0.c) * arg_2);
    global1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(~global1.x), u_input.a, ~arg_0.a), vec3<i32>(~global1.x, global1.x, global1.x)), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(firstTrailingBit(global1.x), ~global0[_wgslsmith_index_u32(4294967295u, 8u)]), u_input.a));
    global1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~(-max(vec2<i32>(arg_0.a, -56136i), vec2<i32>(0i, arg_0.a))), ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, 0i), vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, arg_0.a)))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, select(max(-2147483647i, u_input.a), ~arg_0.a, true)), _wgslsmith_clamp_vec2_i32(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-6079i, arg_0.a), vec2<i32>(global0[_wgslsmith_index_u32(arg_0.b, 8u)], 1993i), vec2<i32>(60209i, global0[_wgslsmith_index_u32(arg_3, 8u)])), firstLeadingBit(vec2<i32>(global1.x, global0[_wgslsmith_index_u32(u_input.e, 8u)]))), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(36974u, 8u)], 21194i), vec2<i32>(-1855i, -2147483647i) | vec2<i32>(-2743i, global0[_wgslsmith_index_u32(arg_3, 8u)])), ~(~vec2<i32>(global1.x, arg_0.a)))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(u_input.d.wyz, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.e, ~4294967295u), firstLeadingBit(firstTrailingBit(vec3<u32>(0u, 4294967295u, 4194u))), u_input.d.yzw), _wgslsmith_div_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.d.ww), _wgslsmith_sub_u32(arg_3, 9944u)), vec3<u32>(u_input.e ^ arg_3, arg_3 << (arg_0.b % 32u), ~arg_3))), arg_1);
    return _wgslsmith_add_i32(2329i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.c, 8u)], _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a, 1i), firstTrailingBit(vec3<i32>(arg_0.a, arg_0.a, global0[_wgslsmith_index_u32(u_input.c, 8u)]))), ~vec3<i32>(-2147483647i, arg_0.a, arg_0.a))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(min(vec3<u32>(58303u, _wgslsmith_sub_u32(4294967295u, arg_0.b) ^ firstLeadingBit(arg_0.b), 15686u), countOneBits(u_input.d.wxz)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -951f))));
    global0 = array<i32, 8>();
    global1 = vec2<i32>(reverseBits(15576i), -5300i);
    let var_1 = reverseBits(func_3(Struct_2(_wgslsmith_sub_i32(21656i, 1i), var_0.a.x ^ arg_3.b, 1f), -1293f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1361f, 573f, arg_0.c))), (1u & arg_3.b) | 1u)) << (min(var_0.a.x, arg_0.b) % 32u);
    global1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, u_input.a), vec2<i32>(arg_3.a, global1.x))), vec2<i32>(select(arg_3.a ^ global0[_wgslsmith_index_u32(28950u, 8u)], reverseBits(arg_0.a), false), arg_3.a)), firstLeadingBit(vec2<i32>(-arg_3.a, abs(-var_1))), ~_wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global1.x, u_input.a), vec2<i32>(2147483647i, 0i))), -vec2<i32>(var_1, arg_0.a), firstTrailingBit(firstLeadingBit(vec2<i32>(-1i, 67517i)))));
    return Struct_2(30073i, 11539u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-559f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1971f))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<i32> {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -46452i, -23666i, u_input.b) ^ vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 8u)], 1i, -15216i, global1.x), select(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 8u)], arg_0.a, u_input.b), vec4<i32>(global1.x, -2147483647i, -4019i, global1.x), false)), 51547i, ~1i, abs(func_2(Struct_2(0i, 46396u, -1000f), vec2<f32>(-533f, -186f), arg_0.c, Struct_2(-2147483647i, arg_1.x, arg_0.c)).a));
    var_0 = -vec4<i32>(var_0.x, _wgslsmith_dot_vec2_i32(var_0.wx, vec2<i32>(global0[_wgslsmith_index_u32(1u, 8u)], var_0.x) >> (~vec2<u32>(arg_1.x, 112643u) % vec2<u32>(32u))), 19144i, u_input.a);
    global1 = vec2<i32>(reverseBits(_wgslsmith_add_i32(max(abs(1i), -var_0.x), global0[_wgslsmith_index_u32(abs(arg_1.x), 8u)])), 2147483647i);
    let var_1 = any(select(!select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), true), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))))));
    var var_2 = arg_0;
    return _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.xyw, vec3<i32>(arg_0.a, global1.x, 76554i), -(~(~vec3<i32>(-40041i, var_2.a, u_input.a)))), vec3<i32>(_wgslsmith_sub_i32(~countOneBits(-1i), -42648i), -31844i, select(_wgslsmith_sub_i32(0i, ~40378i), var_0.x, var_1)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_1 {
    global0 = array<i32, 8>();
    global1 = _wgslsmith_add_vec2_i32(-min(abs(vec2<i32>(global1.x, u_input.a)), vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(0u, 8u)]), -14888i)), vec2<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(global1.x, 1i, -1i) & vec3<i32>(global1.x, 1i, -1i)), func_4(func_2(Struct_2(u_input.b, arg_2, -594f), vec2<f32>(arg_0, arg_0), -1376f, Struct_2(4650i, 24899u, -1648f)), vec4<u32>(39979u, 38236u, u_input.e, arg_2))), 67389i));
    let var_0 = u_input.d.xw;
    var var_1 = Struct_2(u_input.a, ~func_2(Struct_2(_wgslsmith_mod_i32(u_input.a, -2147483647i), ~arg_2, _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -163f) + vec2<f32>(arg_0, arg_0))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)), Struct_2(_wgslsmith_add_i32(19480i, 40965i), _wgslsmith_dot_vec3_u32(vec3<u32>(7034u, u_input.d.x, arg_2), vec3<u32>(1u, 25291u, 15973u)), _wgslsmith_f_op_f32(select(arg_0, arg_0, arg_1)))).b, -1550f);
    var var_2 = Struct_1(~(~(~countOneBits(u_input.d.wzx))), 1594f);
    return Struct_1(vec3<u32>(arg_2 & 12591u, ~25537u, u_input.e | abs(~var_2.a.x)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    var var_0 = countOneBits(u_input.d.x);
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(621f))))), true, _wgslsmith_clamp_u32(4294967295u, ~(~(~32003u)), u_input.d.x));
    global0 = array<i32, 8>();
    var var_2 = ~func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, var_1.b))), true, var_1.a.x).a.yz ^ vec2<u32>(_wgslsmith_dot_vec2_u32(~var_1.a.yx, ~u_input.d.wy >> (~u_input.d.xy % vec2<u32>(32u))), ~var_1.a.x << (u_input.c % 32u));
    var var_3 = vec2<u32>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1744f)), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), 4294967295u).a.x, _wgslsmith_add_u32(var_2.x, ~0u));
    global0 = array<i32, 8>();
    var_3 = firstLeadingBit(var_1.a.zz);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f * var_1.b)))), var_1.b, any(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_4)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(186f, var_1.b)), _wgslsmith_f_op_f32(step(278f, -1544f))), var_4)));
}

