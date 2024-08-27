struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(952f, 263f, 280f, -1019f, -1430f, -1419f, 575f, -113f, -1646f, 319f, 569f, -305f, -211f, -633f, -314f, 517f, 134f, -817f, 1000f, -1000f, 1422f, 1238f, 2185f, -828f, 1092f);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(11350u, 42128u, 4294967295u), 63313u, vec3<f32>(-193f, -534f, -263f), vec2<u32>(4871u, 82683u));

var<private> global2: array<u32, 20>;

var<private> global3: i32;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    let var_0 = true;
    let var_1 = all(vec3<bool>(var_0, !var_0, var_0));
    return vec2<u32>(12971u, 1u);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = ~u_input.b.x;
    global1 = Struct_1(reverseBits(u_input.d.xww), 4079u, _wgslsmith_f_op_vec3_f32(sign(global1.c)), func_3(Struct_1(select(u_input.b.wyy, _wgslsmith_div_vec3_u32(u_input.b.xzz, u_input.d.wxz), !arg_0), global1.b, vec3<f32>(_wgslsmith_div_f32(global1.c.x, global1.c.x), _wgslsmith_div_f32(-554f, -1000f), _wgslsmith_f_op_f32(1000f + global1.c.x)), abs(vec2<u32>(global1.b, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))), (-var_0.x & 0i) << (_wgslsmith_mod_u32(10416u, global2[_wgslsmith_index_u32(14359u, 20u)]) % 32u)));
    let var_2 = !vec4<bool>((true | arg_0) || !arg_0, arg_0, all(vec4<bool>(true, true, false, arg_0)), false);
    global1 = Struct_1(~(vec3<u32>(~u_input.c, 1u, 33756u) << (global1.a % vec3<u32>(32u))), ~_wgslsmith_mod_u32(~countOneBits(18191u), ~select(u_input.c, global2[_wgslsmith_index_u32(global1.a.x, 20u)], arg_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(1u & global1.d.x, 25u)], 1011f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b, 20u)], 25u)]), global1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, _wgslsmith_div_f32(301f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32672u, 20u)], 25u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(48728u, global2[_wgslsmith_index_u32(18323u, 20u)]), 25u)]))), ~abs(u_input.b.ww) << (vec2<u32>(_wgslsmith_add_u32(max(13239u, 0u), global1.d.x), 0u) % vec2<u32>(32u)));
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = select(vec2<bool>(!all(vec4<bool>(false, true, true, true)), true), !vec2<bool>(!all(vec4<bool>(false, true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), vec2<bool>(true, any(vec3<bool>(true, true, true))));
    let var_1 = vec2<i32>(0i, u_input.e.x);
    let var_2 = Struct_1(~u_input.b.yww, arg_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c + arg_0.c)) * arg_1.c) - global1.c), abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~global1.d, vec2<u32>(45755u, 0u) << (arg_0.a.yz % vec2<u32>(32u))), ~(~u_input.a.zx), _wgslsmith_clamp_vec2_u32(~arg_1.d, global1.d | global1.d, ~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 0u)))));
    let var_3 = max(u_input.b.wwy, abs(var_2.a));
    global0 = array<f32, 25>();
    return firstTrailingBit(max(firstLeadingBit(firstTrailingBit(vec3<i32>(-1i, u_input.e.x, u_input.e.x))), vec3<i32>(select(var_1.x, u_input.e.x, var_0.x), var_1.x, var_1.x))) >> (abs(arg_0.a) % vec3<u32>(32u));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    global0 = array<f32, 25>();
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 25u)]);
    return countOneBits(countOneBits(i32(-1i) * -(~1i)));
}

fn func_1(arg_0: i32) -> bool {
    global3 = func_5(~vec3<i32>(select(reverseBits(u_input.e.x), 2147483647i, 1i <= arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(16902i, arg_0, 0i), ~vec3<i32>(arg_0, u_input.e.x, u_input.e.x)), arg_0), func_4(Struct_1(~(~vec3<u32>(global2[_wgslsmith_index_u32(25442u, 20u)], u_input.c, 77960u)), ~func_2(true, vec3<i32>(u_input.e.x, u_input.e.x, arg_0)), global1.c, ~vec2<u32>(global1.a.x, u_input.b.x)), Struct_1(reverseBits(global1.a), 1u, vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(29359u, 25u)], global1.c.x), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(max(-740f, global1.c.x))), u_input.d.xw)), abs(((vec4<i32>(u_input.e.x, arg_0, u_input.e.x, 16707i) << (vec4<u32>(global1.a.x, u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35357u, 20u)], 20u)], 5801u) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], u_input.b.x, u_input.d.x, 27397u)) % vec4<u32>(32u))) << (u_input.d % vec4<u32>(32u))), _wgslsmith_f_op_f32(exp2(global1.c.x)));
    global2 = array<u32, 20>();
    let var_0 = vec4<f32>(global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(_wgslsmith_div_u32(1u << (global1.b % 32u), 4294967295u), _wgslsmith_dot_vec3_u32(u_input.d.wzy, global1.a) | ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)]), ~75908u), 25u)], 1000f, global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-994f)) + -2065f));
    global3 = -8540i;
    var var_1 = Struct_1(vec3<u32>(~max(39168u & u_input.a.x, firstLeadingBit(76001u)), _wgslsmith_sub_u32(19380u, global1.a.x), 1u), ~global2[_wgslsmith_index_u32(~4294967295u, 20u)], _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.c, vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, 1u, global1.b), u_input.b.yzy), 25u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(43978u, 25u)] + -599f), 725f)), var_0.wwy), vec2<u32>(1u, global1.b));
    return any(!vec3<bool>(true, !any(vec3<bool>(false, false, false)), all(vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.e.x;
    var var_0 = any(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), func_1(-45869i)), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, true)));
    let var_1 = vec3<i32>((~(u_input.e.x >> (global2[_wgslsmith_index_u32(1u, 20u)] % 32u)) & u_input.e.x) ^ _wgslsmith_clamp_i32(3129i, max(_wgslsmith_add_i32(u_input.e.x, -1i), _wgslsmith_clamp_i32(-4729i, 1i, -17558i)), u_input.e.x ^ -u_input.e.x), 1i, 0i);
    var var_2 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2081f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x + global0[_wgslsmith_index_u32(1u, 25u)]) - _wgslsmith_f_op_f32(abs(-1000f)))) & !(!any(vec2<bool>(true, true))));
    let var_3 = -578f;
    var var_4 = _wgslsmith_dot_vec4_u32(u_input.b, ~(abs(vec4<u32>(45278u, 0u, global1.b, 80965u)) ^ (abs(u_input.d) ^ u_input.d)));
    var var_5 = firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(15895i, var_1.x), vec2<i32>(2147483647i, 1i)), firstTrailingBit(reverseBits(u_input.e.x))), _wgslsmith_sub_i32(2147483647i, u_input.e.x), select(-28683i >> ((global1.d.x & global2[_wgslsmith_index_u32(22224u, 20u)]) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -2147483647i), -vec2<i32>(50806i, -2147483647i)), false), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e & vec2<i32>(17363i, var_1.x), reverseBits(vec2<i32>(7753i, -1i))), u_input.e), ~reverseBits(~firstLeadingBit(global1.b)), global1.c, _wgslsmith_mod_vec3_u32(~vec3<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], u_input.d.x, u_input.d.x), max(select(u_input.b.xxy, vec3<u32>(global1.d.x, global2[_wgslsmith_index_u32(39242u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 20u)], 20u)]), vec3<bool>(true, false, true)) << (u_input.d.wwz % vec3<u32>(32u)), vec3<u32>(13167u, u_input.d.x, global1.b & 4294967295u))));
}

