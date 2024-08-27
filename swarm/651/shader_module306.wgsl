struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-25823i, -14036i, -1i, 1i, 46505i, i32(-2147483648), -8223i, 63391i, 2147483647i, 1i, i32(-2147483648), 2147483647i, 11844i, 2147483647i, -1i, -45100i, 2147483647i, 2562i, -26898i, 0i, 17757i, 13963i);

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(false, Struct_1(-1000f), i32(-2147483648), Struct_1(-112f), -53630i), Struct_2(false, Struct_1(2099f), -8555i, Struct_1(1000f), i32(-2147483648)), Struct_2(false, Struct_1(2431f), 2147483647i, Struct_1(-1019f), -9028i), Struct_2(false, Struct_1(-315f), -17364i, Struct_1(1359f), 2147483647i), Struct_2(true, Struct_1(-603f), 1i, Struct_1(-931f), i32(-2147483648)), Struct_2(true, Struct_1(848f), 1i, Struct_1(554f), 13942i), Struct_2(true, Struct_1(1112f), 5736i, Struct_1(1471f), -1i), Struct_2(true, Struct_1(-571f), -1i, Struct_1(-1576f), -1i), Struct_2(true, Struct_1(758f), 15272i, Struct_1(-264f), 2147483647i), Struct_2(false, Struct_1(2225f), -20699i, Struct_1(114f), -18661i), Struct_2(false, Struct_1(186f), 24946i, Struct_1(700f), 1i), Struct_2(true, Struct_1(-431f), i32(-2147483648), Struct_1(-333f), 0i), Struct_2(true, Struct_1(505f), 1i, Struct_1(955f), 2147483647i), Struct_2(true, Struct_1(-309f), 39935i, Struct_1(310f), 29191i), Struct_2(true, Struct_1(619f), 1716i, Struct_1(-1033f), i32(-2147483648)), Struct_2(true, Struct_1(1159f), -12031i, Struct_1(-1000f), 10576i), Struct_2(true, Struct_1(254f), i32(-2147483648), Struct_1(1086f), -6111i), Struct_2(true, Struct_1(259f), i32(-2147483648), Struct_1(-640f), 0i), Struct_2(false, Struct_1(1256f), -10096i, Struct_1(-1698f), 12460i), Struct_2(true, Struct_1(-142f), -45664i, Struct_1(-313f), i32(-2147483648)), Struct_2(true, Struct_1(-322f), -1i, Struct_1(364f), -1i), Struct_2(true, Struct_1(-529f), -10639i, Struct_1(662f), 0i), Struct_2(false, Struct_1(-403f), -28067i, Struct_1(-306f), i32(-2147483648)), Struct_2(false, Struct_1(573f), -20635i, Struct_1(1319f), 8793i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> vec3<u32> {
    let var_0 = -2246f;
    var var_1 = global3.d;
    global2 = array<vec3<bool>, 10>();
    global3 = Struct_2(!((abs(u_input.a.x) | _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 2594u))) <= firstLeadingBit(u_input.a.x)), global3.b, 5170i, global3.b, -global0[_wgslsmith_index_u32(u_input.a.x, 22u)]);
    global0 = array<i32, 22>();
    return _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a), u_input.a), vec3<u32>(u_input.e.x & u_input.a.x, 20409u, ~52340u));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = global3.b;
    var var_1 = Struct_2(true, Struct_1(var_0.a), ~global3.e, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(345f)))))), reverseBits(abs(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(31326u, 22u)], 1i, -31773i) << (0u % 32u))));
    var var_2 = -vec4<i32>(37640i, _wgslsmith_clamp_i32(max(-31515i, -5974i), max(-2147483647i, -1i) << (1u % 32u), ~0i), _wgslsmith_dot_vec4_i32((vec4<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 22u)], 0i, -2147483647i, u_input.c.x) << (vec4<u32>(u_input.a.x, u_input.e.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ -vec4<i32>(global3.e, u_input.c.x, 16904i, global0[_wgslsmith_index_u32(4294967295u, 22u)]), abs(vec4<i32>(-14223i, 2147483647i, global0[_wgslsmith_index_u32(u_input.e.x, 22u)], var_1.c))), _wgslsmith_clamp_i32(~(~var_1.e), -reverseBits(-2147483647i), -1i));
    global1 = -1228f;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1530f, -845f, var_1.b.a)), vec3<f32>(-963f, var_1.d.a, global3.d.a))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -409f, 637f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, -541f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.a, var_1.d.a, var_0.a))))))));
    return arg_0.zz;
}

fn func_4(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(11750u, _wgslsmith_mod_u32(firstTrailingBit(~(~u_input.e.x)), 80858u), 39222u);
    var var_1 = !arg_0.x;
    let var_2 = Struct_2(true, global3.d, -global3.e, global3.b, 1i);
    var var_3 = -49389i;
    var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~firstTrailingBit(vec3<i32>(var_2.c, global0[_wgslsmith_index_u32(30441u, 22u)], 9675i)), -vec3<i32>(-2147483647i, global3.c, -1i)), ~(abs(vec3<i32>(global3.c, global0[_wgslsmith_index_u32(u_input.e.x, 22u)], 1i)) | u_input.d)) & _wgslsmith_mod_i32(u_input.c.x ^ reverseBits(global0[_wgslsmith_index_u32(~3201u, 22u)]), global0[_wgslsmith_index_u32(0u, 22u)]);
    return 941f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> f32 {
    global4 = array<Struct_2, 24>();
    var var_0 = ~countOneBits(u_input.a);
    global2 = array<vec3<bool>, 10>();
    var var_1 = arg_0;
    global0 = array<i32, 22>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(select(func_3(vec4<bool>(true, arg_1.a, false, arg_1.a), 221f, Struct_1(var_1.a)), func_3(vec4<bool>(arg_1.a, false, true, false), -1363f, Struct_1(1075f)), select(vec2<bool>(global3.a, false), vec2<bool>(true, arg_1.a), vec2<bool>(global3.a, arg_1.a))))))), _wgslsmith_div_f32(-734f, -505f));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: i32) -> vec3<f32> {
    global4 = array<Struct_2, 24>();
    global4 = array<Struct_2, 24>();
    global4 = array<Struct_2, 24>();
    let var_0 = ~18797u;
    global4 = array<Struct_2, 24>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 24>();
    global0 = array<i32, 22>();
    var var_0 = Struct_2(global3.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global3.b.a))), u_input.c.x, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.a, global3.b.a)), global3.b.a)), max(-21719i, _wgslsmith_mod_i32(-1i, ~24098i)));
    let var_1 = max(~78194u, u_input.a.x);
    let var_2 = u_input.e.x;
    global4 = array<Struct_2, 24>();
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_div_f32(global3.b.a, _wgslsmith_f_op_f32(func_2(var_0.b, global4[_wgslsmith_index_u32(47587u, 24u)], func_1()))), Struct_2((var_1 < 4294967295u) | all(vec4<bool>(global3.a, global3.a, true, true)), Struct_1(var_0.b.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-29666i, -14216i, global3.e, global0[_wgslsmith_index_u32(74477u, 22u)]), -vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 22u)], var_0.e, 351i)), global3.b, (u_input.c.x >> (var_1 % 32u)) << (var_2 % 32u)), vec3<f32>(-1000f, var_0.b.a, _wgslsmith_f_op_f32(global3.d.a * _wgslsmith_f_op_f32(f32(-1f) * -438f))), -43902i))));
    let var_4 = ~var_1;
    let var_5 = select(!(!select(select(vec4<bool>(false, global3.a, true, var_0.a), vec4<bool>(false, true, true, true), false), !vec4<bool>(global3.a, global3.a, var_0.a, true), global3.a)), select(select(select(vec4<bool>(var_0.a, false, global3.a, var_0.a), !vec4<bool>(global3.a, var_0.a, global3.a, var_0.a), false), !vec4<bool>(true, false, global3.a, false), false), select(vec4<bool>(global3.a, any(vec2<bool>(var_0.a, true)), global3.a, global3.a), vec4<bool>(true && global3.a, var_0.a, false, var_0.a), (u_input.a.x ^ u_input.a.x) <= var_2), global3.a), vec4<bool>(true, var_0.a, all(vec4<bool>(global3.e != u_input.c.x, var_0.a, true, global3.a)), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

