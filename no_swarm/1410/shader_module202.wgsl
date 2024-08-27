struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(max(countOneBits(vec4<i32>(4017i, arg_0, arg_0, -25794i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -1i, 1i, 0i), vec4<i32>(-2147483647i, -16906i, 0i, -59258i))) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(min(arg_0, arg_0), arg_0, 29188i, abs(_wgslsmith_sub_i32(arg_0, arg_0)))), arg_0, arg_0);
    let var_1 = Struct_5(arg_0, Struct_1(true, -(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, -46337i, 10210i, -1i), vec4<i32>(arg_0, 47337i, arg_0, 4401i)) << (min(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 12412u)) % vec4<u32>(32u)))));
    let var_2 = var_0.x;
    let var_3 = true;
    global0 = var_1.b.b.x;
    return -18274i;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> vec3<f32> {
    global0 = -firstLeadingBit(1i);
    var var_0 = -_wgslsmith_mult_i32(-1i, firstLeadingBit(22841i)) >> (1u % 32u);
    var var_1 = Struct_3(Struct_1(arg_0.x, abs(vec4<i32>(~0i, -2147483647i, func_3(2147483647i, true), _wgslsmith_mult_i32(2147483647i, -1i)))), Struct_2(Struct_1(true, ~min(vec4<i32>(-2147483647i, 29825i, -2147483647i, 0i), vec4<i32>(2147483647i, 1i, 0i, 6918i))), select(true, select(any(vec2<bool>(arg_0.x, arg_0.x)), true, true), arg_2), Struct_1(true, vec4<i32>(~33189i, 7779i, -62825i, 19823i)), _wgslsmith_f_op_f32(-209f + -113f), Struct_1(any(arg_0.yxy), select(vec4<i32>(1703i, -1i, -15808i, -39460i), select(vec4<i32>(40629i, 2147483647i, 2147483647i, -2147483647i), vec4<i32>(0i, 2147483647i, 23647i, -1788i), arg_0), !arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-2398f)), _wgslsmith_f_op_f32(-822f - _wgslsmith_f_op_f32(select(-1948f, 631f, true))))), _wgslsmith_f_op_f32(trunc(194f))), Struct_2(Struct_1(true, reverseBits(~vec4<i32>(1i, 15348i, 1i, -1i))), false, Struct_1(false, select(vec4<i32>(-1i, -33178i, -2147483647i, -14401i), min(vec4<i32>(0i, -1i, 15701i, -1i), vec4<i32>(-38878i, 18573i, -1i, 1i)), !arg_0)), _wgslsmith_f_op_f32(round(1433f)), Struct_1(true, vec4<i32>(1i, 1i, 1i, 1i))), arg_1);
    let var_2 = Struct_3(Struct_1(false, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(var_1.b.a.b | var_1.b.e.b, vec4<i32>(var_1.d.e.b.x, var_1.b.e.b.x, var_1.a.b.x, var_1.a.b.x)), _wgslsmith_clamp_vec4_i32(var_1.d.a.b >> (vec4<u32>(4294967295u, u_input.c, 52349u, 1u) % vec4<u32>(32u)), var_1.a.b >> (vec4<u32>(u_input.a, arg_1, var_1.e, 0u) % vec4<u32>(32u)), ~var_1.a.b))), Struct_2(var_1.d.c, var_1.b.c.a, Struct_1(arg_0.x, var_1.b.a.b), _wgslsmith_div_f32(var_1.b.d, -176f), Struct_1(false, abs(vec4<i32>(var_1.d.c.b.x, -12478i, 1i, var_1.a.b.x)))), var_1.b.d, var_1.b, (countOneBits(countOneBits(4033u)) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1, 82775u, arg_1, var_1.e)), u_input.b & u_input.b) % 32u)) | ~(_wgslsmith_mult_u32(43507u, var_1.e) ^ 1u));
    global0 = _wgslsmith_add_i32(9661i, firstLeadingBit(var_1.a.b.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(ceil(470f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.d.d * -418f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(688f, -120f, -656f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.b.d, 767f, -1000f), vec3<f32>(-1184f, 155f, -1000f))), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.d, -420f, var_1.d.d)) + vec3<f32>(var_2.d.d, 212f, var_2.b.d)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> Struct_5 {
    let var_0 = ~(~(~(~u_input.c))) & ~arg_2;
    let var_1 = (i32(-1i) * -_wgslsmith_dot_vec3_i32(-vec3<i32>(-29908i, -13794i, arg_3.x), -vec3<i32>(16732i, -2147483647i, 1i))) <= _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(reverseBits(2147483647i)), -15664i), arg_3.xy >> (vec2<u32>(arg_1, abs(4294967295u)) % vec2<u32>(32u)));
    var var_2 = vec4<u32>(~_wgslsmith_add_u32(~110945u & countOneBits(u_input.a), 1u), var_0, _wgslsmith_sub_u32(select(~arg_2, ~(~arg_1), true), max(reverseBits(arg_2) ^ arg_1, u_input.b.x)), select(4294967295u, ~_wgslsmith_sub_u32(min(4294967295u, arg_1), 0u), false));
    var var_3 = vec3<u32>(abs(_wgslsmith_clamp_u32(countOneBits(u_input.c), ~var_0, ~var_2.x)), u_input.b.x, _wgslsmith_add_u32(101082u, ~(~37678u)));
    var_3 = _wgslsmith_clamp_vec3_u32(u_input.b.yyz, reverseBits(vec3<u32>(abs(var_2.x), 0u, var_0 ^ ~80617u)), vec3<u32>(~_wgslsmith_add_u32(firstLeadingBit(53955u), _wgslsmith_div_u32(u_input.b.x, arg_2)), 0u, ~_wgslsmith_div_u32(u_input.c ^ 4294967295u, var_2.x)));
    return Struct_5(arg_3.x, Struct_1(var_1, _wgslsmith_add_vec4_i32(vec4<i32>(35132i, arg_3.x, min(-19819i, 12372i), ~2147483647i), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(arg_3.x, arg_3.x, -20933i, 4095i)), arg_3))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: f32) -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(false, true, true, arg_0), 39553u, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, arg_2, -1000f)) - vec3<f32>(arg_2, arg_2, -562f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f + arg_2)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(2143f)), _wgslsmith_f_op_f32(f32(-1f) * -591f), true)), arg_2), arg_0 == (-arg_1.x < _wgslsmith_sub_i32(arg_1.x, arg_1.x)))), u_input.c, _wgslsmith_mod_u32(abs(firstLeadingBit(0u)), u_input.b.x), abs(vec4<i32>(arg_1.x, -arg_1.x, ~arg_1.x, i32(-1i) * -58454i) & (-vec4<i32>(2147483647i, arg_1.x, arg_1.x, arg_1.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(12609i, arg_1.x, arg_1.x, 1i), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -40818i)))));
    global0 = 5403i;
    let var_1 = arg_0;
    let var_2 = (vec4<i32>(~1i, var_0.a, var_0.b.b.x, -1i) >> (vec4<u32>(u_input.c, firstLeadingBit(1u), ~9237u, _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec2_u32(u_input.b.wx, vec2<u32>(86486u, u_input.c)))) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-arg_1.x, -var_0.b.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.b.x, var_0.b.b.x, 0i), var_0.b.b.zzy), 1i, _wgslsmith_mult_i32(~0i, reverseBits(48622i))), -_wgslsmith_div_vec4_i32(var_0.b.b, abs(vec4<i32>(arg_1.x, -1218i, var_0.a, var_0.a))));
    global0 = _wgslsmith_add_i32(var_2.x, select(abs(-1i), _wgslsmith_sub_i32(-33808i, var_2.x ^ ~(-11266i)), func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -235f), arg_2, arg_2), u_input.b.x, 47150u, ~var_0.b.b).b.a));
    return var_0.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(select(1i, -13578i, true), -func_1(true, ~vec2<i32>(15229i, -1i), _wgslsmith_f_op_f32(floor(-1092f)))) ^ _wgslsmith_clamp_i32(func_4(vec3<f32>(_wgslsmith_f_op_f32(1000f - 137f), -1494f, 401f), ~(u_input.b.x | 0u), 0u, vec4<i32>(6746i, -32503i, 1i, 36550i << (1u % 32u))).a, 1i >> (0u % 32u), ~abs(firstLeadingBit(2147483647i)));
    global0 = -26873i;
    global0 = _wgslsmith_sub_i32(-1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(16559i, 1i), _wgslsmith_add_i32(3652i, 67764i)), vec2<i32>(1i, 1i)));
    let var_0 = u_input.b.x;
    global0 = -1i;
    global0 = -41373i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-335f)))), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(851f + -471f), _wgslsmith_f_op_f32(abs(560f))), -130f))), u_input.b, 33579i, vec2<f32>(1779f, _wgslsmith_f_op_f32(step(223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 379f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-108f, _wgslsmith_div_f32(-1190f, _wgslsmith_f_op_f32(f32(-1f) * -1278f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(763f)) * 1f)))));
}

