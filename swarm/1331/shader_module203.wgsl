struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<i32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<bool, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 929f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-800f)) - _wgslsmith_f_op_f32(f32(-1f) * -1776f))), 353f, 589f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1218f, -320f, -408f, 482f))))))));
    let var_1 = u_input.b;
    global1 = array<bool, 4>();
    var var_2 = Struct_4(62097u, Struct_3(firstLeadingBit(~_wgslsmith_sub_u32(u_input.c, u_input.a)), Struct_2(1000f, vec3<bool>(global1[_wgslsmith_index_u32(~u_input.a, 4u)], true, global1[_wgslsmith_index_u32(62390u, 4u)]), false), Struct_1(select(_wgslsmith_sub_vec2_u32(u_input.d.xx, vec2<u32>(u_input.d.x, 1u)), ~u_input.d.zw, select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(48391u, 4u)]), vec2<bool>(false, true))), -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 9145i, 15793i, -2147483647i), vec4<i32>(var_1, -5985i, u_input.b, u_input.b)), global1[_wgslsmith_index_u32(~u_input.d.x, 4u)], _wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(u_input.c, u_input.a, 0u, u_input.d.x), ~vec4<u32>(u_input.d.x, 0u, u_input.c, u_input.c)), var_0.zy), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1626f, var_0.x)))))), vec3<i32>(~u_input.b, var_1, -19926i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~reverseBits(_wgslsmith_add_u32(u_input.c, 8360u)), u_input.d.x), 4u)]);
    var var_3 = Struct_1(reverseBits(var_2.b.c.d.wx), var_2.b.c.b, all(vec3<bool>(!(var_0.x > var_2.b.b.a), all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], var_2.b.b.c), var_2.b.b.b.zz, var_2.d)), var_2.b.b.c)), var_2.b.c.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.ww)) - vec2<f32>(-1000f, _wgslsmith_div_f32(1271f, var_2.b.d.x))) * _wgslsmith_div_vec2_f32(var_2.b.c.e, vec2<f32>(1561f, _wgslsmith_f_op_f32(f32(-1f) * -2067f)))));
    return 16443u;
}

fn func_2() -> i32 {
    global1 = array<bool, 4>();
    var var_0 = Struct_1(firstTrailingBit(u_input.d.zx), select(reverseBits(vec4<i32>(1i, -2147483647i, 1i & u_input.b, abs(u_input.b))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 46886i, 79501i), vec4<i32>(2147483647i, -44557i, -3103i, u_input.b)), ~u_input.b, abs(1i), u_input.b ^ u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b) << (vec4<u32>(36158u, 22422u, 1u, u_input.c) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, -20640i), vec4<i32>(0i, u_input.b, u_input.b, 7855i))), ~(-vec4<i32>(2147483647i, u_input.b, -10661i, -22727i))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 4u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], true, global1[_wgslsmith_index_u32(48227u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)])))), global1[_wgslsmith_index_u32(6905u, 4u)], vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32((u_input.a | u_input.d.x) >> (~u_input.c % 32u), firstLeadingBit(0u), func_3() >> (u_input.d.x % 32u)), u_input.a, ~_wgslsmith_div_u32(firstLeadingBit(u_input.a), u_input.c | 16122u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(656f, -1881f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-868f, 207f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1094f * 793f), _wgslsmith_f_op_f32(max(-149f, 452f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1009f, 1272f), vec2<f32>(645f, -1131f))))))));
    var var_1 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(56549u, ~var_0.a.x, max(u_input.d.x, 19794u), var_0.d.x)), max(firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(13882u, u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 16944u), vec3<u32>(0u, 0u, u_input.a)), var_0.d.x, ~4294967295u)), vec4<u32>(u_input.a, var_0.d.x, _wgslsmith_mult_u32(~u_input.a, 1u), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, var_0.d.x, 59144u), u_input.d.yxy)))));
    let var_2 = var_0.b.x & -2147483647i;
    let var_3 = var_2;
    return _wgslsmith_mod_i32(var_0.b.x, var_0.b.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    return Struct_1(u_input.d.yx, ~(~(-firstLeadingBit(arg_1.b.c.b))), true, vec4<u32>(func_3(), u_input.a, _wgslsmith_sub_u32(arg_1.a, 24599u) >> (~(~arg_1.b.c.d.x) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(55177u, arg_1.b.a), vec2<u32>(u_input.a, u_input.d.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b.a, 1792f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.b.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(162f, 323f)), select(vec2<bool>(false, global1[_wgslsmith_index_u32(8514u, 4u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1.a, 4u)]), arg_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b.a, arg_1.b.d.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-212f, arg_1.b.b.a) * vec2<f32>(1404f, -235f))))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = func_4(!select(!select(vec4<bool>(arg_2.c, true, true, true), vec4<bool>(false, false, false, arg_2.c), global1[_wgslsmith_index_u32(arg_2.a.x, 4u)]), select(select(vec4<bool>(true, arg_2.c, arg_2.c, arg_2.c), vec4<bool>(arg_2.c, global1[_wgslsmith_index_u32(arg_2.a.x, 4u)], true, true), vec4<bool>(true, arg_2.c, arg_2.c, true)), !vec4<bool>(arg_2.c, global1[_wgslsmith_index_u32(arg_2.a.x, 4u)], arg_2.c, arg_2.c), global1[_wgslsmith_index_u32(arg_2.d.x, 4u)]), !global1[_wgslsmith_index_u32(~36409u, 4u)]), Struct_4(arg_2.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 31u)], arg_2.b.yzx, global1[_wgslsmith_index_u32(u_input.c, 4u)]), _wgslsmith_div_i32(arg_1.x, countOneBits(func_2())));
    var var_1 = Struct_4(23608u << (arg_2.a.x % 32u), global0[_wgslsmith_index_u32(var_0.a.x, 31u)], _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(arg_2.b.yyz, vec3<i32>(u_input.b, arg_0, -2147483647i)), -(vec3<i32>(u_input.b, arg_2.b.x, 2147483647i) << (vec3<u32>(var_0.d.x, 0u, 26358u) % vec3<u32>(32u)))), vec3<i32>(reverseBits(~(-29530i)), ~(-36032i) << (_wgslsmith_sub_u32(51794u, var_0.d.x) % 32u), -arg_1.x), var_0.b.zxx), all(!vec2<bool>(true, global1[_wgslsmith_index_u32(max(var_0.d.x, u_input.c), 4u)])));
    global1 = array<bool, 4>();
    var var_2 = Struct_5(var_1.b.b, -var_0.b, -610f, ~(abs(min(var_1.b.c.b.wyz, vec3<i32>(arg_1.x, arg_1.x, 4177i))) >> (reverseBits(vec3<u32>(arg_2.d.x, 1u, 1u) >> (arg_2.d.zzx % vec3<u32>(32u))) % vec3<u32>(32u))), !vec4<bool>(_wgslsmith_f_op_f32(-var_1.b.c.e.x) <= _wgslsmith_f_op_f32(max(var_0.e.x, -918f)), var_1.b.c.c, false, true));
    let var_3 = !(!var_2.a.b);
    return Struct_4(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 70120u, min(var_1.a, 1455u)), arg_2.d.yww), ~(~0u) | ~countOneBits(u_input.d.x)), Struct_3(abs(~_wgslsmith_add_u32(var_1.b.a, var_0.a.x)), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2554f + -1157f), 662f)), vec3<bool>(true, var_0.d.x > 16412u, var_0.c), var_3.x), Struct_1(arg_2.d.yx, -var_0.b, all(var_2.e), ~vec4<u32>(0u, var_1.b.c.a.x, u_input.a, u_input.d.x), vec2<f32>(-161f, _wgslsmith_f_op_f32(-var_1.b.d.x))), vec2<f32>(-107f, var_2.c)), func_4(var_2.e, Struct_4(u_input.c, var_1.b, -vec3<i32>(var_0.b.x, var_1.c.x, var_1.c.x) ^ _wgslsmith_div_vec3_i32(vec3<i32>(16539i, arg_1.x, 0i), vec3<i32>(-2147483647i, 7621i, var_0.b.x)), true), ~firstLeadingBit(func_2())).b.wwx, true);
}

fn func_5(arg_0: Struct_4) -> vec4<i32> {
    let var_0 = func_1(arg_0.b.c.b.x, vec2<i32>(2147483647i, min(_wgslsmith_add_i32(2147483647i, arg_0.c.x) | ~arg_0.b.c.b.x, _wgslsmith_mod_i32(func_1(u_input.b, vec2<i32>(-27726i, -1i), Struct_1(vec2<u32>(u_input.c, 0u), vec4<i32>(u_input.b, 7295i, u_input.b, u_input.b), arg_0.d, vec4<u32>(4294967295u, 1u, 12771u, 70183u), arg_0.b.d)).b.c.b.x, _wgslsmith_clamp_i32(59026i, u_input.b, 1i)))), Struct_1(~vec2<u32>(~arg_0.a, arg_0.a), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.b, 1i, arg_0.b.c.b.x, arg_0.b.c.b.x), vec4<i32>(1i, u_input.b, arg_0.c.x, u_input.b)), countOneBits(func_1(16782i, vec2<i32>(-9874i, -3086i), Struct_1(arg_0.b.c.a, vec4<i32>(u_input.b, 0i, -1i, 2147483647i), global1[_wgslsmith_index_u32(12764u, 4u)], vec4<u32>(2005u, arg_0.b.c.a.x, u_input.d.x, 0u), arg_0.b.d)).b.c.b)), (59085u << (arg_0.a % 32u)) != ~1u, _wgslsmith_mult_vec4_u32(reverseBits(u_input.d), min(arg_0.b.c.d, vec4<u32>(u_input.a, arg_0.a, 1u, 4294967295u))) | ~u_input.d, arg_0.b.c.e)).b.c;
    global0 = array<Struct_3, 31>();
    var var_1 = ~(~arg_0.c.xx);
    global1 = array<bool, 4>();
    var_1 = countOneBits(arg_0.b.c.b.zy);
    return vec4<i32>(countOneBits(arg_0.c.x), _wgslsmith_mult_i32(arg_0.c.x, 42800i), _wgslsmith_clamp_i32(0i, var_1.x, select(0i, u_input.b, false) << (var_0.a.x % 32u)) | -(~var_0.b.x), min(~firstLeadingBit(var_0.b.x) & -1i, ~var_1.x));
}

fn func_6(arg_0: Struct_1) -> u32 {
    global1 = array<bool, 4>();
    global0 = array<Struct_3, 31>();
    global1 = array<bool, 4>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.e.x, -1311f, -1296f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.x, arg_0.e.x, 433f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1234f, 712f, arg_0.e.x))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(var_0.x + -1442f)) + 1345f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), arg_0.e.x);
    return ~max(max(4894u, abs(func_4(vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false, true, arg_0.c), Struct_4(u_input.c, Struct_3(arg_0.d.x, Struct_2(var_0.x, vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)], arg_0.c), false), arg_0, var_0.zz), arg_0.b.yyy, true), 32449i).a.x)), abs(_wgslsmith_mod_u32(1u, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(~vec2<u32>(5274u, u_input.d.x) ^ ~(~vec2<u32>(u_input.d.x, u_input.a)), _wgslsmith_sub_vec4_i32(func_5(func_1(u_input.b, vec2<i32>(1i, u_input.b), Struct_1(u_input.d.xz, vec4<i32>(-37270i, -22339i, -1i, 40456i), global1[_wgslsmith_index_u32(u_input.a, 4u)], u_input.d, vec2<f32>(1212f, 1283f)))), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -57920i, -7970i, -19339i), abs(vec4<i32>(2566i, -2147483647i, 0i, u_input.b)))), global1[_wgslsmith_index_u32(~50447u, 4u)], u_input.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1054f, 138f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-709f, -1000f) - vec2<f32>(1074f, 385f)))), vec2<f32>(_wgslsmith_f_op_f32(step(-1070f, -1130f)), _wgslsmith_f_op_f32(step(233f, 1161f))))));
    let var_1 = vec4<f32>(-188f, -2904f, -426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1074f))));
    let var_2 = Struct_4(_wgslsmith_mult_u32(1u, var_0 ^ ~_wgslsmith_mod_u32(u_input.d.x, var_0)), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(u_input.d.wyx, u_input.d.yxx)), 31u)], func_1(-39557i, vec2<i32>(abs(2147483647i), 2147483647i), Struct_1(vec2<u32>(1u, firstTrailingBit(26513u)), func_1(2147483647i, vec2<i32>(u_input.b, u_input.b), Struct_1(vec2<u32>(42838u, u_input.a), vec4<i32>(1i, 16232i, u_input.b, 1i), true, u_input.d, var_1.wx)).b.c.b << (_wgslsmith_sub_vec4_u32(u_input.d, u_input.d) % vec4<u32>(32u)), var_1.x < _wgslsmith_f_op_f32(step(-1000f, var_1.x)), u_input.d | u_input.d, _wgslsmith_f_op_vec2_f32(-func_1(u_input.b, vec2<i32>(1i, u_input.b), Struct_1(u_input.d.xy, vec4<i32>(u_input.b, -2147483647i, -113279i, u_input.b), false, vec4<u32>(var_0, var_0, 36656u, var_0), vec2<f32>(var_1.x, 1123f))).b.d))).b.c.b.wxy, true);
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0, _wgslsmith_sub_u32(~var_2.a, 1u)));
}

