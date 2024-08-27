struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_5 = Struct_5(vec3<f32>(-263f, -749f, -211f), vec3<f32>(379f, -1432f, 374f), -1152f, Struct_2(Struct_1(-40912i, 1u, true, i32(-2147483648))), Struct_3(vec3<f32>(697f, -1000f, 2096f), Struct_1(i32(-2147483648), 1u, true, -19593i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = select(global1.e.b.c, !(_wgslsmith_dot_vec2_i32(vec2<i32>(32351i, u_input.a), vec2<i32>(11452i, 1i)) <= abs(2147483647i)) | true, global1.e.b.c);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(30923i, ~u_input.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, global1.e.b.d), _wgslsmith_div_i32(global1.d.a.a, global1.d.a.a)), global1.e.b.a), vec4<i32>(firstTrailingBit(u_input.a), global1.e.b.a, abs(-6904i), -2147483647i) ^ vec4<i32>(_wgslsmith_mod_i32(1i, 2018i), abs(u_input.a), _wgslsmith_mult_i32(u_input.a, -2147483647i), -u_input.a)) ^ global1.d.a.d;
    let var_2 = global1.e.b;
    global1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.c)), global1.b.x, _wgslsmith_f_op_f32(trunc(-1000f))), vec3<f32>(global1.c, 797f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1011f), 1633f)) * _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(abs(112f))))), _wgslsmith_f_op_f32(step(global1.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -160f), global1.b.x))))), Struct_2(Struct_1(min(-global1.e.b.a, -26115i << (var_2.b % 32u)), global0.x, true, _wgslsmith_mult_i32(~4783i, ~u_input.a))), Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1646f, global1.c, 1073f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2298f, global1.e.a.x, -688f) * global1.e.a)))), global1.e.b));
    let var_3 = Struct_4(Struct_2(global1.e.b), !(!(var_2.c || false) & !global1.e.b.c), countOneBits(reverseBits(1u) & global0.x) & _wgslsmith_add_u32(select(125494u, global1.d.a.b, !var_0), reverseBits(global0.x)), global1.e.b, Struct_1(_wgslsmith_sub_i32(~var_2.a, _wgslsmith_sub_i32(~u_input.a, _wgslsmith_mult_i32(15710i, var_1))), ~(1u | var_2.b), global1.d.a.c, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(9954i, var_2.a), var_2.a)));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> bool {
    let var_0 = Struct_5(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b, global1.b, global1.e.b.c))), global1.e.a.x, Struct_2(Struct_1(-6910i, global1.d.a.b, global1.e.b.c, global1.e.b.d)), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e.a + vec3<f32>(-1138f, global1.e.a.x, -244f))) - global1.e.a), arg_1.a));
    global0 = firstTrailingBit(vec3<u32>(abs(~(~1u)), var_0.e.b.b, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(15529u, var_0.e.b.b, global0.x, 1234u), vec4<u32>(arg_1.a.b, arg_1.a.b, 1u, 28857u), arg_1.a.c), vec4<u32>(arg_1.a.b, 23064u, arg_1.a.b, global1.d.a.b))));
    let var_1 = ~(-var_0.e.b.a) ^ abs(~(_wgslsmith_mod_i32(arg_1.a.d, 6348i) | _wgslsmith_sub_i32(var_0.e.b.a, 10818i)));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f + _wgslsmith_f_op_f32(-765f + 1578f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.b.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, 1147f)))))));
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_5 {
    global0 = vec3<u32>(21082u, arg_0, 4294967295u);
    var var_0 = !select(vec2<bool>(!(4294967295u != arg_3.b), arg_3.c && global1.d.a.c), vec2<bool>(!arg_3.c, any(vec2<bool>(false, arg_3.c))), select(vec2<bool>(true && global1.e.b.c, true), !vec2<bool>(true, global1.e.b.c), true && any(vec4<bool>(true, false, true, true))));
    let var_1 = global1.e.b.c;
    var var_2 = func_4(!func_3(), Struct_2(global1.e.b));
    var var_3 = _wgslsmith_f_op_f32(global1.a.x * global1.a.x);
    return Struct_5(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(450f, 617f) + -1276f), global1.a.x, select(true, true | var_0.x, !arg_3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-578f * global1.b.x), -668f)) * -1000f), _wgslsmith_f_op_f32(548f - global1.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.a))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c)))) + _wgslsmith_f_op_f32(-global1.a.x)), Struct_2(Struct_1(arg_3.d, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, arg_2), vec3<u32>(arg_0, 4294967295u, 4294967295u)), 41202u, 1u), !global1.d.a.c, _wgslsmith_dot_vec2_i32(~vec2<i32>(11488i, arg_1), ~vec2<i32>(1415i, u_input.a)))), global1.e);
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = func_2(~select(global1.e.b.b, 52002u, !(true || global1.d.a.c)), _wgslsmith_sub_i32(global1.e.b.d, global1.e.b.a) ^ u_input.a, select(_wgslsmith_div_u32(~11950u & min(6006u, arg_0), ~global0.x << (~5326u % 32u)), global0.x, true), Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.a, _wgslsmith_div_i32(61331i, 974i)), u_input.a ^ abs(40590i)), 33238u, true, 2147483647i));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-432f, 1229f) * _wgslsmith_f_op_vec2_f32(var_0.e.a.zx - _wgslsmith_f_op_vec2_f32(vec2<f32>(1234f, 1000f) - global1.e.a.xx))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.e.a.yy, global1.e.a.yy, vec2<bool>(var_0.d.a.c, true))), _wgslsmith_f_op_vec2_f32(-var_0.b.xy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(531f, -1681f))))));
    var_0 = func_2(0u & (abs(_wgslsmith_clamp_u32(0u, 4294967295u, global0.x)) & (_wgslsmith_mult_u32(90139u, arg_0) ^ ~0u)), -u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 56745u, arg_0, global1.d.a.b), vec4<u32>(4294967295u, var_0.d.a.b, arg_0, 0u)), _wgslsmith_add_u32(max(0u, global0.x), ~4294967295u)), global0.xx), func_2(~arg_0, _wgslsmith_dot_vec3_i32(select(max(vec3<i32>(u_input.a, global1.e.b.a, var_0.e.b.d), vec3<i32>(-12105i, u_input.a, global1.d.a.d)), vec3<i32>(46188i, var_0.e.b.a, var_0.d.a.a) << (vec3<u32>(arg_0, var_0.d.a.b, 51796u) % vec3<u32>(32u)), select(true, global1.e.b.c, true)), min(vec3<i32>(global1.d.a.a, 1i, -39822i), -vec3<i32>(1i, var_0.d.a.d, var_0.d.a.a))), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0, var_0.d.a.b), ~var_0.e.b.b), arg_0), func_2(0u, _wgslsmith_mult_i32(-69582i, func_2(global0.x, -2147483647i, 116527u, Struct_1(0i, 80005u, global1.d.a.c, 2147483647i)).e.b.a), min(_wgslsmith_dot_vec3_u32(vec3<u32>(20613u, arg_0, arg_0), vec3<u32>(19330u, 38303u, 30839u)), 1u), Struct_1(countOneBits(var_0.d.a.d), ~var_0.d.a.b, true, _wgslsmith_dot_vec2_i32(vec2<i32>(-18392i, 1i), vec2<i32>(-2147483647i, 1i)))).e.b).e.b);
    global1 = Struct_5(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1836f), 1f, global1.c), -368f, var_0.d, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(var_1.x, var_0.c)), _wgslsmith_f_op_f32(select(var_1.x, 1663f, false)))), func_2(var_0.d.a.b, _wgslsmith_mult_i32(global1.d.a.d >> (var_0.e.b.b % 32u), 44304i), var_0.e.b.b, global1.e.b).d.a));
    var_0 = func_2(~(arg_0 & ~32363u), _wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, global1.d.a.a), var_0.d.a.a), arg_0, func_2(global0.x | (firstTrailingBit(arg_0) >> (1u % 32u)), -2147483647i, _wgslsmith_div_u32(10269u, _wgslsmith_sub_u32(~0u, arg_0)), global1.d.a).d.a);
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_div_vec3_f32(global1.a, global1.a)))) * _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.x, 757f, var_1.x), vec3<f32>(635f, -561f, global1.a.x))))), Struct_1(var_0.d.a.d, 44287u & var_0.d.a.b, func_2(abs(countOneBits(84616u)), -reverseBits(u_input.a), _wgslsmith_div_u32(firstTrailingBit(0u), _wgslsmith_mod_u32(arg_0, 9590u)), Struct_1(~(-1i), abs(var_0.e.b.b), false, 2237i)).d.a.c, -global1.d.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~firstTrailingBit(~firstTrailingBit(vec3<u32>(global1.e.b.b, 17125u, global1.e.b.b))));
    var var_0 = global0.x;
    let var_1 = ~(-31211i);
    global1 = Struct_5(global1.b, global1.e.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1161f, global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -270f))) * _wgslsmith_f_op_f32(floor(global1.c)))), global1.d, func_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, 1u), firstLeadingBit(vec3<u32>(global0.x, global1.d.a.b, global1.e.b.b)))));
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(-global1.e.a), _wgslsmith_f_op_vec3_f32(-global1.b), 1181f, global1.d, func_1(global0.x));
    var var_2 = func_1(~_wgslsmith_clamp_u32(22966u, max(global1.d.a.b, max(global0.x, 1u)), global1.e.b.b)).b;
    let var_3 = -((_wgslsmith_add_i32(var_1 & -12917i, -2147483647i) << (_wgslsmith_mult_u32(abs(global0.x), ~global0.x) % 32u)) << (28233u % 32u));
    let var_4 = select(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 48041u), global0.zy), vec2<u32>(global1.e.b.b, ~(~1u)), _wgslsmith_f_op_f32(-1456f - _wgslsmith_f_op_f32(global1.a.x * global1.e.a.x)) != -917f) | global0.xy;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(1u, var_1, 1u, Struct_1(u_input.a, var_4.x, true, -var_3)).e.a.x, -(~abs(~vec4<i32>(12808i, 68967i, -15527i, 54760i))));
}

