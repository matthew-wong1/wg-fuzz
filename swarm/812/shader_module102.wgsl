struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(148f, Struct_1(true, true, vec4<bool>(true, true, false, true)), Struct_1(true, false, vec4<bool>(true, true, true, false)), Struct_1(true, false, vec4<bool>(false, true, true, false))), Struct_3(-150f, Struct_1(false, true, vec4<bool>(false, true, true, false)), Struct_1(false, false, vec4<bool>(false, true, true, false)), Struct_1(false, false, vec4<bool>(true, true, false, false))), Struct_3(-1083f, Struct_1(true, true, vec4<bool>(false, true, false, false)), Struct_1(true, true, vec4<bool>(true, true, true, true)), Struct_1(false, true, vec4<bool>(true, false, false, true))), Struct_3(-1052f, Struct_1(false, false, vec4<bool>(false, false, true, false)), Struct_1(true, true, vec4<bool>(false, false, true, true)), Struct_1(false, false, vec4<bool>(true, false, true, false))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_1(all(select(select(arg_0.b.c.yy, !vec2<bool>(arg_1.c.b, arg_0.c.b), select(vec2<bool>(arg_1.c.b, arg_1.c.c.x), arg_0.d.c.yx, false)), arg_0.d.c.zy, select(vec2<bool>(arg_1.c.b, arg_1.c.a), vec2<bool>(arg_0.b.b, arg_1.c.c.x), arg_0.c.b))), select(19650u <= u_input.a, 1i != u_input.e, arg_1.c.a), select(arg_0.c.c, vec4<bool>(arg_1.d.a, all(arg_1.b.c.yzw), any(vec4<bool>(false, arg_0.d.a, false, false)), arg_0.d.a), arg_1.d.c));
    let var_1 = vec2<f32>(arg_1.a, -770f);
    var_0 = arg_1.d;
    var_0 = arg_0.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - 124f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f - _wgslsmith_f_op_f32(trunc(arg_1.a)))), arg_0.a));
    return var_0.c;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(any(select(vec4<bool>(arg_0, arg_0, false, true), func_3(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], global0[_wgslsmith_index_u32(u_input.c, 4u)]), arg_0 && arg_0)) | any(select(!vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, true))), arg_0, select(vec4<bool>(u_input.b.x < arg_1, arg_0, 1u == _wgslsmith_dot_vec2_u32(vec2<u32>(40599u, u_input.d.x), vec2<u32>(arg_2.x, 1u)), any(!vec4<bool>(false, arg_0, false, arg_0))), !func_3(Struct_3(-450f, Struct_1(true, false, vec4<bool>(arg_0, false, true, false)), Struct_1(arg_0, arg_0, vec4<bool>(true, true, arg_0, false)), Struct_1(false, arg_0, vec4<bool>(arg_0, false, false, arg_0))), global0[_wgslsmith_index_u32(u_input.d.x, 4u)]), !(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, arg_0, true), false))));
    let var_1 = select(-vec2<i32>(u_input.e, firstTrailingBit(~44119i)), ~_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-72115i, u_input.e) ^ vec2<i32>(-1i, u_input.e)), vec2<i32>(-1i) * -vec2<i32>(u_input.e, u_input.e)), !(!select(vec2<bool>(true, true), func_3(Struct_3(-1222f, var_0, var_0, var_0), global0[_wgslsmith_index_u32(49383u, 4u)]).xz, var_0.c.xw)));
    let var_2 = -532f;
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, 1549f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2))))), arg_2, 468f, !((u_input.b.x >= _wgslsmith_mult_u32(arg_1, 4294967295u)) == select(true, any(var_0.c), var_0.c.x)));
    global0 = array<Struct_3, 4>();
    return Struct_1(arg_0, any(var_0.c.zz), select(func_3(global0[_wgslsmith_index_u32(select(~1u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_3.c.x, 27117u, 5363u, 4812u)), all(vec4<bool>(true, var_3.e, true, arg_0))), 4u)], Struct_3(-1185f, var_0, Struct_1(var_0.a, var_3.e, vec4<bool>(arg_0, false, var_3.e, true)), Struct_1(true, false, var_0.c))), !func_3(global0[_wgslsmith_index_u32(~arg_1, 4u)], global0[_wgslsmith_index_u32(arg_1 & 4294967295u, 4u)]), !var_0.c));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> u32 {
    global0 = array<Struct_3, 4>();
    let var_0 = arg_0.a > arg_0.a;
    let var_1 = vec2<i32>(~arg_2, reverseBits(arg_2));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-832f, arg_0.a), vec2<f32>(1662f, arg_0.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) - vec2<f32>(-675f, arg_0.a)))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-155f, 1f))), _wgslsmith_add_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(u_input.b.yx, vec2<u32>(u_input.c, u_input.d.x), vec2<u32>(37891u, u_input.c)) ^ ~vec2<u32>(u_input.d.x, 60069u)), firstLeadingBit(vec2<u32>(u_input.b.x, abs(41490u)))), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_0.a + arg_0.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-792f * arg_0.a) * 588f))), -1i <= var_1.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_2.b.x)))));
    return u_input.a;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(func_4(global0[_wgslsmith_index_u32(~abs(1u), 4u)], func_2(arg_2.e, max(1u, arg_1.x), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 32519u))), u_input.e), 0u), max(firstTrailingBit(vec2<u32>(arg_1.x, arg_1.x) | vec2<u32>(u_input.c, arg_1.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(~35634u, _wgslsmith_sub_u32(arg_1.x, 4294967295u)), arg_2.c)), ~_wgslsmith_mult_vec2_u32(arg_1.zz, u_input.b.zx));
    let var_1 = !vec2<bool>(all(!select(vec3<bool>(false, arg_2.e, arg_2.e), vec3<bool>(false, false, arg_2.e), vec3<bool>(true, false, true))), arg_2.e);
    var var_2 = global0[_wgslsmith_index_u32((0u ^ u_input.c) ^ 1u, 4u)];
    global0 = array<Struct_3, 4>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1783f, arg_3.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1310f, _wgslsmith_f_op_f32(arg_2.b.x + var_2.a)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(ceil(arg_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-193f)))), vec2<u32>(4294967295u, 4294967295u), _wgslsmith_f_op_f32(arg_2.d * var_2.a), var_2.d.a | var_2.d.a);
    return func_2(true, _wgslsmith_mod_u32(_wgslsmith_add_u32(28517u, arg_1.x), 88140u), vec2<u32>(var_0.x ^ u_input.a, 45700u));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    var var_0 = ~(u_input.e << (u_input.c % 32u));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(271f - _wgslsmith_f_op_f32(f32(-1f) * -944f))));
    let var_2 = arg_1.c.wzy;
    return vec3<i32>(~(i32(-1i) * -17313i), u_input.e, i32(-1i) * -max(u_input.e, -u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 4>();
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1444f, 718f, -2523f))))))), func_1(_wgslsmith_mod_i32(u_input.e, _wgslsmith_sub_i32(min(-50528i, 0i), countOneBits(-12235i))), ~u_input.b.xzx, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(952f, -844f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-607f, -522f)), ~_wgslsmith_sub_vec2_u32(u_input.d.yz, vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -666f), select(any(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, false)), false)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1709f, 206f), vec2<f32>(-795f, -863f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1730f, 270f), vec2<f32>(444f, 1112f), vec2<bool>(false, true))))))));
    let var_1 = countOneBits(66898u) ^ u_input.b.x;
    let var_2 = var_0.yx;
    let var_3 = 2147483647i;
    var var_4 = Struct_2(vec2<f32>(-1046f, -1030f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1235f, -848f) * vec2<f32>(375f, -450f)), vec2<f32>(-795f, -442f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, -514f) + vec2<f32>(-1162f, 1137f)), _wgslsmith_div_vec2_f32(vec2<f32>(-2351f, -1197f), vec2<f32>(692f, 1208f)))))), u_input.d.yx, _wgslsmith_f_op_f32(-1876f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1534f, 423f))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zyw, -755f, 19182i, ~vec3<u32>(~(~u_input.d.x), 4294967295u, 82277u));
}

