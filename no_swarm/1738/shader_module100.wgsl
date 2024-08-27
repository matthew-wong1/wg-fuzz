struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec4<u32> = vec4<u32>(0u, 8113u, 72042u, 10524u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = ~u_input.b;
    let var_1 = Struct_3(_wgslsmith_div_vec3_u32(global1.wxw ^ vec3<u32>(global1.x, global1.x & 3310u, _wgslsmith_add_u32(global1.x, global1.x)), ~countOneBits(global1.xzy)));
    global1 = ~vec4<u32>(0u, global1.x, max(~(~var_1.a.x), ~1u), firstLeadingBit(var_1.a.x));
    var var_2 = _wgslsmith_add_i32(reverseBits(select(firstLeadingBit(var_0.x), ~_wgslsmith_div_i32(u_input.b.x, 2842i), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))))), 11351i);
    let var_3 = -2147483647i;
    return var_1.a.x >> (~0u % 32u);
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_3(global1.wzx);
    let var_1 = firstLeadingBit(arg_0);
    var var_2 = var_0;
    global0 = arg_0;
    var var_3 = 20175i;
    return Struct_2(Struct_1(-437f, var_2.a.xy, !all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(129f)) - _wgslsmith_f_op_f32(ceil(678f)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = select(abs(-1i) ^ firstTrailingBit(-1158i), min(-14942i, 13944i), select(select(!all(vec3<bool>(true, true, arg_0.a.c)), all(select(vec3<bool>(false, false, arg_0.a.c), vec3<bool>(arg_0.a.c, false, arg_0.a.c), arg_0.a.c)), !all(vec4<bool>(false, true, true, arg_0.a.c))), true, arg_0.a.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(469f, 689f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(318f, -1000f) + vec2<f32>(arg_0.b, -1757f))))));
    let var_2 = Struct_3(~vec3<u32>(~(~1u), 65743u, select(1u, 13305u >> (arg_0.a.b.x % 32u), true)));
    var var_3 = func_2(global1.x & arg_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - arg_0.b)))).a;
    global0 = _wgslsmith_mult_u32(abs(arg_0.a.b.x), var_3.b.x);
    return Struct_1(_wgslsmith_f_op_f32(floor(1000f)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(var_3.b.x, var_2.a.x), vec2<u32>(global1.x, 36225u) >> (global1.xy % vec2<u32>(32u)))), true);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    global1 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(23534u, arg_1, arg_1, 73807u), ~vec4<u32>(arg_1, 30782u, 93381u, global1.x)), ~vec4<u32>(18144u, 108486u, arg_1, 0u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, global1.x, 0u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, global1.x, 44255u, arg_1), vec4<u32>(arg_1, 79949u, 4756u, arg_1))), ~firstTrailingBit(vec4<u32>(arg_1, 0u, global1.x, 63042u))), (~vec4<u32>(41330u, 56154u, global1.x, 1u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(47621u, 41929u, global1.x, arg_1), vec4<u32>(392u, global1.x, global1.x, 21667u), vec4<u32>(global1.x, 4294967295u, arg_1, arg_1))) | ~(~vec4<u32>(arg_1, 78336u, global1.x, 0u))), ~(~(abs(vec4<u32>(global1.x, 1u, arg_1, 29390u)) & ~vec4<u32>(global1.x, global1.x, global1.x, 0u))), !(!(!(!vec4<bool>(arg_2.x, false, false, arg_2.x)))));
    global0 = 0u;
    global1 = ~(~vec4<u32>(~36607u, 4294967295u, _wgslsmith_add_u32(global1.x, ~20015u), 0u));
    var var_0 = vec4<bool>(true, true, !select(true, arg_2.x, true | all(arg_2.zz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-606f * 388f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(618f)) - 208f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1701f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(471f, -1346f)))));
    var var_1 = true;
    return Struct_2(func_4(func_2(_wgslsmith_mult_u32(~global1.x, firstLeadingBit(1u)), 680f)), 1235f, ~abs(global1.x));
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(arg_1.a.a, _wgslsmith_div_f32(-586f, -1732f), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26723u, global1.x, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 28513u, global1.x, 61286u), vec4<u32>(arg_1.a.a.b.x, 0u, 20287u, arg_1.a.a.b.x))), arg_1.a.a.b.x)));
    global0 = _wgslsmith_mod_u32(func_2(var_0.a.c | ~(~arg_1.a.a.b.x), _wgslsmith_f_op_f32(var_0.a.b - _wgslsmith_div_f32(835f, -1937f))).c, var_0.a.a.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.b, -273f, arg_1.a.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.a.a, -270f)) + _wgslsmith_f_op_f32(trunc(373f))) - _wgslsmith_f_op_f32(-arg_1.a.b)))));
    let var_2 = 2147483647i << (~arg_1.a.c % 32u);
    global0 = 24534u;
    return Struct_4(Struct_2(var_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-125f, arg_1.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(455f, arg_1.a.a.a, true)), _wgslsmith_f_op_f32(exp2(arg_1.a.b)))), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.a.c, 0u), abs(arg_1.a.a.b.x))));
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_3(vec3<u32>(~_wgslsmith_clamp_u32(~arg_2.c, global1.x, ~55798u), ~(18969u << (~global1.x % 32u)), reverseBits(abs(~82489u))));
    let var_1 = true;
    global1 = ~(~(_wgslsmith_sub_vec4_u32(max(vec4<u32>(global1.x, arg_0.a.c, global1.x, 12626u), vec4<u32>(arg_0.a.a.b.x, var_0.a.x, arg_2.a.b.x, global1.x)), vec4<u32>(11016u, 58572u, var_0.a.x, 4294967295u)) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(54163u, arg_0.a.c, 18470u, arg_0.a.c), vec4<u32>(1u, global1.x, 0u, 14010u) | vec4<u32>(1u, var_0.a.x, 4294967295u, 7255u))));
    let var_2 = -_wgslsmith_sub_i32(u_input.a.x, -(-19655i >> (1u % 32u)) >> (func_5(u_input.a.x >> (4294967295u % 32u), func_5(-7431i, arg_0)).a.c % 32u));
    var var_3 = func_5(-((abs(-41802i) >> (~var_0.a.x % 32u)) | 0i), Struct_4(Struct_2(func_2(arg_2.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -502f)).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.b * -589f), arg_1, any(vec3<bool>(false, arg_2.a.c, arg_2.a.c)))), _wgslsmith_sub_u32(~global1.x, global1.x))));
    return arg_0;
}

fn func_7(arg_0: Struct_4) -> u32 {
    var var_0 = ~(-_wgslsmith_div_i32(countOneBits(u_input.a.x) ^ 1i, abs(u_input.a.x) ^ ~u_input.b.x));
    var var_1 = arg_0;
    var var_2 = var_1.a.a.a;
    var var_3 = u_input.a.zzx;
    var_3 = -vec3<i32>(~u_input.a.x, -(~(u_input.b.x ^ u_input.a.x)), ~4934i);
    return countOneBits(8193u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, global1.x, 56899u, 7808u), reverseBits(vec4<u32>(global1.x, global1.x, 1u, global1.x)), ~vec4<u32>(27119u, 16308u, 55012u, 20485u)), vec4<u32>(global1.x, 52079u, 1u, 446u)), 4294967295u, _wgslsmith_mult_u32(select(global1.x, 0u, u_input.a.x != u_input.b.x), ~5232u));
    var var_0 = 0u != ~(~global1.x);
    global0 = func_7(func_6(func_5(1i, Struct_4(func_1(1i, 38134u, vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(244f)))))), func_2(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, global1.x), ~global1.x, global1.x), -1710f), _wgslsmith_f_op_f32(func_5(_wgslsmith_add_i32(-7910i, u_input.b.x), func_5(u_input.a.x, Struct_4(Struct_2(Struct_1(1201f, vec2<u32>(global1.x, global1.x), true), 1000f, global1.x)))).a.a.a * 458f)));
    var var_1 = _wgslsmith_sub_vec4_u32(abs(reverseBits(vec4<u32>(82770u, global1.x, 7462u, 0u)) | ~vec4<u32>(global1.x, 0u, global1.x, global1.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(36026u, global1.x, 51322u, global1.x), vec4<u32>(0u & global1.x, abs(global1.x), global1.x << (4294967295u % 32u), _wgslsmith_sub_u32(global1.x, 86079u)))) << (vec4<u32>(global1.x, 431u, 42250u, _wgslsmith_clamp_u32(1u, min(1u, global1.x) & 23877u, ~global1.x)) % vec4<u32>(32u));
    var var_2 = ~min(25763u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 104565u, global1.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 18055u, var_1.x, var_1.x), vec4<u32>(global1.x, 37555u, 4294967295u, 1u))) % 32u), firstTrailingBit(-u_input.b.xxy), 0i, u_input.b);
}

