struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(76314u, -166f);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(0u, -1636f), Struct_1(4856u, 2228f), Struct_1(22473u, 894f), Struct_1(78568u, 1445f), Struct_1(61820u, 346f), Struct_1(0u, 250f), Struct_1(4294967295u, 1628f), Struct_1(0u, -1124f), Struct_1(4294967295u, -1839f), Struct_1(7500u, 105f), Struct_1(12189u, 640f), Struct_1(1u, -1260f), Struct_1(0u, 733f), Struct_1(4294967295u, -674f), Struct_1(26575u, -517f), Struct_1(5685u, -537f), Struct_1(0u, -1287f), Struct_1(4294967295u, -430f), Struct_1(23099u, -595f), Struct_1(0u, 1600f), Struct_1(53508u, -1312f), Struct_1(1u, -2253f), Struct_1(0u, 1000f), Struct_1(41572u, -1444f), Struct_1(0u, -1361f), Struct_1(4294967295u, 729f), Struct_1(4294967295u, -270f), Struct_1(4294967295u, -506f), Struct_1(4294967295u, -1281f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    global1 = array<Struct_1, 29>();
    let var_0 = global1[_wgslsmith_index_u32(1u, 29u)];
    let var_1 = arg_1;
    return firstLeadingBit(~(~firstLeadingBit(vec3<u32>(1u, global0.a, global0.a) << (vec3<u32>(var_1.a, var_1.a, u_input.b) % vec3<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(arg_3.a, ~(countOneBits(0u) & firstTrailingBit(4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b)))));
    let var_1 = arg_1.b;
    var var_2 = ~select(u_input.c.xzy, vec3<i32>(_wgslsmith_clamp_i32(~84482i, _wgslsmith_mult_i32(u_input.c.x, 0i), firstLeadingBit(0i)), -min(u_input.c.x, 1i), _wgslsmith_div_i32(max(u_input.c.x, u_input.c.x), u_input.c.x)), vec3<bool>(false & arg_2, !(!arg_2), arg_0.b < _wgslsmith_f_op_f32(-global0.b)));
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.d.wyy, ~func_3(var_2.x, var_0) ^ vec3<u32>(abs(0u), 1u, arg_0.a)), 29u)];
    var_3 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.d.wx, vec2<u32>(5659u, 4294967295u) >> (~u_input.d.yx % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * arg_3.b), _wgslsmith_f_op_f32(-2628f * _wgslsmith_f_op_f32(-524f - _wgslsmith_f_op_f32(f32(-1f) * -645f)))));
    return firstTrailingBit(countOneBits(-(~u_input.c.x) ^ ~20842i));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = -7392i;
    global1 = array<Struct_1, 29>();
    var var_1 = true;
    let var_2 = firstLeadingBit(~vec2<u32>(~min(u_input.e, 42241u), ~25000u));
    let var_3 = select(false, false, true);
    return global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0.a, ~_wgslsmith_div_u32(~4294967295u, firstLeadingBit(1u))), 29u)];
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = any(vec2<bool>(!all(vec2<bool>(true, true)), all(vec4<bool>(4294967295u > u_input.e, false, select(true, false, false), true))));
    var var_2 = _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(~(~u_input.c.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, arg_0.a, 4294967295u, arg_0.a), u_input.d) % 32u), 16072i, -(~_wgslsmith_div_i32(-2147483647i, 50594i)), ~reverseBits(u_input.c.x >> (4294967295u % 32u))));
    global1 = array<Struct_1, 29>();
    let var_3 = func_4(vec2<u32>(var_0.a & abs(1u), ~global0.a), min(_wgslsmith_div_vec4_i32(-select(u_input.c, vec4<i32>(u_input.c.x, var_2.x, 8561i, -21274i), true), vec4<i32>(~var_2.x, max(var_2.x, u_input.c.x), -37204i, firstLeadingBit(2147483647i))), u_input.c));
    return reverseBits(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, global0.a, 90542u, arg_1), vec4<u32>(global0.a, 43139u, arg_0.a, 138734u)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> vec4<u32> {
    var var_0 = 112i;
    let var_1 = !vec2<bool>(true && !arg_1, true);
    let var_2 = arg_1;
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    return func_5(func_4(~(~(arg_0 & vec2<u32>(0u, arg_2))), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.xyz), _wgslsmith_mult_i32(-12398i, 1i), ~u_input.c.x, func_2(Struct_1(5041u, -1787f), Struct_1(0u, -1000f), true, Struct_1(arg_0.x, global0.b))))), ~1u, global1[_wgslsmith_index_u32(arg_0.x, 29u)]);
}

fn func_6(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2386f, -1153f, 2017f) + vec3<f32>(global0.b, global0.b, 1631f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-2330f, global0.b, global0.b), vec3<f32>(global0.b, global0.b, global0.b))) - vec3<f32>(-2138f, 326f, _wgslsmith_f_op_f32(max(global0.b, global0.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b, 1398f, global0.b))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b, global0.b, var_0.x))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1031f, 382f, global0.b), vec3<f32>(1000f, var_0.x, var_0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, var_0.x, -515f) * vec3<f32>(-300f, 332f, -677f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -1204f, 836f) + vec3<f32>(290f, var_0.x, -614f))), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), false)))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -1225f), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -102f)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 850f, -964f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-global0.b), -525f, _wgslsmith_f_op_f32(-var_0.x)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(224f, var_0.x, 1858f) + vec3<f32>(var_0.x, -482f, global0.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(642f, var_0.x, -1022f)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(403f * var_0.x))), _wgslsmith_f_op_f32(sign(global0.b)), -1203f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -525f, -222f) - vec3<f32>(var_0.x, 2520f, 782f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, 395f)) - vec3<f32>(970f, -231f, -241f))))));
    global1 = array<Struct_1, 29>();
    return Struct_1(~reverseBits(27208u), _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(~min(u_input.d, func_1(vec2<u32>(4294967295u, global0.a), all(vec2<bool>(false, false)), global0.a | 47908u)));
    var var_0 = Struct_1(16617u | _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(~u_input.d, u_input.d)), global0.b);
    var_0 = global1[_wgslsmith_index_u32(23748u, 29u)];
    var var_1 = 11188u;
    global1 = array<Struct_1, 29>();
    var_1 = ~_wgslsmith_clamp_u32(global0.a, ~var_0.a, abs(func_6(~vec4<u32>(global0.a, 4294967295u, 29307u, 31258u)).a));
    let var_2 = vec4<u32>(var_0.a, ~55966u, func_3(_wgslsmith_sub_i32((u_input.c.x & 1i) & max(-2257i, 34573i), ~_wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), Struct_1(firstTrailingBit(var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3176f), 438f))).x, global0.a);
    var var_3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~50749i, ~select(u_input.c.x, -2147483647i, global0.a <= global0.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~reverseBits(u_input.c.zxy), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, -2147483647i), -u_input.c.xyw)), max(_wgslsmith_mod_vec3_i32(max(u_input.c.yxz, vec3<i32>(u_input.c.x, u_input.c.x, -1i)), u_input.c.xzx), u_input.c.yyy)), ~_wgslsmith_mod_vec2_i32(select(u_input.c.yz, u_input.c.wz, vec2<bool>(false, false)) & min(u_input.c.xy, vec2<i32>(-1635i, 2147483647i)), -(u_input.c.xy ^ u_input.c.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f * var_0.b)))), u_input.c.xy);
}

