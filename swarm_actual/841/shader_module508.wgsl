struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec3<f32> {
    let var_0 = firstLeadingBit(vec3<i32>(firstTrailingBit(1i), _wgslsmith_mod_i32(u_input.d, select(select(1i, -2147483647i, true), _wgslsmith_clamp_i32(global0.a.x, -5682i, global0.a.x), global0.b)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(15869i, -1i), -global0.a.x) >> (_wgslsmith_sub_u32(u_input.c, u_input.c) % 32u)));
    let var_1 = ~vec4<u32>(~(~1u), ~(~_wgslsmith_mod_u32(1u, 4294967295u)), 27524u, ~0u);
    var var_2 = ~var_1.x;
    var_2 = u_input.c;
    var_2 = _wgslsmith_mult_u32(~(~50403u), ~u_input.c);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(143f, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 324f, arg_0)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), 1049f, _wgslsmith_f_op_f32(step(599f, 878f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1349f, 293f, arg_0) * _wgslsmith_div_vec3_f32(vec3<f32>(-557f, arg_0, 1266f), vec3<f32>(-108f, arg_0, -202f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = arg_2.b.yx;
    var var_1 = 42876i;
    var var_2 = Struct_1(arg_2.a, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.a.x, 196f, false)), -353f) * _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(floor(arg_0.x)))), arg_2.a.x), arg_2.c << (arg_2.c % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(abs(arg_2.c.yy), vec2<u32>(~reverseBits(77400u), arg_2.e)), _wgslsmith_div_u32(min(arg_2.e, arg_2.e), ~max(arg_2.d & 58944u, ~u_input.c)));
    global0 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.a.x) >> (_wgslsmith_mult_vec2_u32(var_2.c.yy, vec2<u32>(u_input.b, arg_2.c.x)) % vec2<u32>(32u)), global0.a.yz), arg_1.a.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, -2147483647i, 2147483647i, arg_3.a.x), vec4<i32>(26196i, 0i, global0.a.x, -58842i), arg_3.b) >> (~vec4<u32>(arg_2.e, var_2.c.x, 0u, var_2.e) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-40757i, 0i), global0.a.zy), -25179i, u_input.d, 1758i))), true);
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(486f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1833f - -416f), _wgslsmith_f_op_f32(-arg_0.x))))).x)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: u32) -> f32 {
    global0 = Struct_2(~vec3<i32>(arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e, u_input.a), reverseBits(global0.a)), 1i ^ ~arg_2), !(_wgslsmith_f_op_f32(-300f - _wgslsmith_f_op_f32(arg_0 * arg_0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582f + -773f))));
    let var_0 = arg_1;
    let var_1 = Struct_2(global0.a, !all(!select(vec3<bool>(false, global0.b, false), vec3<bool>(global0.b, false, global0.b), vec3<bool>(true, global0.b, true))));
    let var_2 = 1i;
    global0 = var_1;
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-331f, _wgslsmith_f_op_f32(111f * -1000f), _wgslsmith_f_op_f32(min(-1024f, -1570f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_1, var_0), vec3<f32>(-1161f, var_0, 278f))))))), var_1, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(705f + arg_1)), var_0, 950f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(1037f))))), ~firstTrailingBit(countOneBits(vec3<u32>(31334u, 0u, 25944u))), _wgslsmith_add_u32(~u_input.c << (_wgslsmith_mult_u32(26979u, u_input.c) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c, 0u, u_input.c), countOneBits(vec4<u32>(7576u, 1u, u_input.b, arg_3)))), u_input.b | reverseBits(arg_3 ^ 1u)), Struct_2(countOneBits(global0.a), true)));
}

fn func_1() -> Struct_2 {
    let var_0 = !(global0.a.x >= -global0.a.x);
    var var_1 = Struct_1(vec4<f32>(846f, -1454f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2677f)) - -1000f) - -1592f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-315f, 1138f, 969f))))) + vec3<f32>(-312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1137f)) - _wgslsmith_f_op_f32(abs(-800f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(floor(-504f)), _wgslsmith_f_op_f32(558f + 1930f), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.e, 68533i), vec3<i32>(u_input.a, u_input.d, 16771i)), 5374u)))), vec3<u32>(u_input.b, u_input.c, u_input.c), _wgslsmith_mod_u32(u_input.c, 58813u), _wgslsmith_div_u32(u_input.c, u_input.c));
    var var_2 = Struct_2(global0.a, var_0);
    let var_3 = select(~var_1.e <= (4294967295u << ((1u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.c), vec3<u32>(var_1.e, 4521u, 4294967295u))) % 32u)), any(vec2<bool>(any(!vec3<bool>(false, var_2.b, false)), var_0)), var_0);
    let var_4 = global0.b;
    return Struct_2(vec3<i32>(var_2.a.x, 1i, -1i), true);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, arg_0.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 543f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -291f) * _wgslsmith_div_f32(-220f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 974f, -867f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(round(975f)), arg_2.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 13775u, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, 0u, u_input.c)) | ~39583u, u_input.c, u_input.b) | _wgslsmith_mod_vec3_u32((vec3<u32>(0u, 31067u, 65774u) ^ vec3<u32>(14197u, u_input.c, u_input.c)) & vec3<u32>(u_input.b, 43668u, u_input.b), reverseBits(max(vec3<u32>(u_input.c, u_input.c, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.c)))), abs(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(8001u, u_input.c), vec2<u32>(u_input.c, u_input.b)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~min(0u, 17919u), ~4294967295u ^ firstTrailingBit(u_input.c)), ~(~(~vec2<u32>(u_input.b, u_input.b)))));
    var var_1 = global0.b;
    let var_2 = select(false, any(vec4<bool>(true, any(!vec2<bool>(global0.b, global0.b)), !(!arg_1.b), global0.b)), any(vec4<bool>(!(-4287i > global0.a.x), arg_1.b, select(true, all(vec4<bool>(arg_3.b, global0.b, false, arg_3.b)), global0.b), var_0.d == min(var_0.d, 36301u))));
    var_1 = arg_0.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -109f)) + 490f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    let var_3 = vec4<f32>(2349f, arg_2.x, -356f, _wgslsmith_f_op_f32(func_4(var_0.b, Struct_2(arg_3.a, var_2), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(872f, 217f, 1000f, 736f)), var_0.b, var_0.c, u_input.c, ~(~var_0.c.x)), Struct_2(_wgslsmith_div_vec3_i32(arg_1.a, global0.a) | -global0.a, false))));
    return Struct_2(vec3<i32>(~reverseBits(countOneBits(1i)), 50962i, -1i), 0i >= ~arg_3.a.x);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = -select(_wgslsmith_mult_i32(firstTrailingBit(-u_input.a), ~(-2147483647i)), _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(global0.a.x, u_input.a, 11773i)), -27243i), all(select(vec4<bool>(arg_0.b, false, true, global0.b), !vec4<bool>(false, global0.b, global0.b, global0.b), select(vec4<bool>(false, global0.b, true, false), vec4<bool>(global0.b, global0.b, global0.b, true), vec4<bool>(global0.b, false, arg_0.b, global0.b)))));
    let var_1 = arg_0;
    let var_2 = abs(~(~vec2<u32>(4294967295u, u_input.b | u_input.c)));
    var var_3 = ~global0.a;
    var var_4 = -2147483647i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(vec2<f32>(-1811f, 223f), Struct_2(-(vec3<i32>(2147483647i, u_input.a, 0i) >> (vec3<u32>(u_input.b, 1u, u_input.c) % vec3<u32>(32u))), global0.b), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-323f, -1137f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(249f, 1275f) + vec2<f32>(-1723f, -931f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-216f, 1817f))))), func_1()), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(527f + -1176f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1367f) * _wgslsmith_f_op_f32(max(-1020f, 831f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1212f, 181f)), _wgslsmith_f_op_f32(f32(-1f) * -1530f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-276f, -662f) - _wgslsmith_f_op_f32(f32(-1f) * -531f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-656f, 327f, 714f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(335f, 493f, -1506f) - vec3<f32>(-562f, 195f, 1636f))))), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_div_u32(0u, 9985u), 36183u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -770f), _wgslsmith_f_op_f32(func_2(2250f, -1361f, -1i, ~u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-195f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) * _wgslsmith_div_f32(3313f, 149f)))));
    var var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, 4294967295u, u_input.c), 0u)), 0u, ~firstLeadingBit(u_input.b));
    global0 = func_1();
    let var_2 = firstTrailingBit(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 20995u, 12091u, 4294967295u), vec4<u32>(u_input.b, 23453u, u_input.b, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(14657u, 4294967295u), vec2<u32>(4294967295u, u_input.c)), ~u_input.c, ~1u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1078f, 685f)), _wgslsmith_f_op_f32(max(651f, -1650f)), -1243f, _wgslsmith_f_op_f32(f32(-1f) * -1195f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-353f * -336f))))))), _wgslsmith_div_vec3_u32(vec3<u32>(24999u, firstLeadingBit(1u), u_input.b), var_2.xxx), _wgslsmith_clamp_u32(abs(~max(10450u, 4294967295u)), ~(~48092u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.c, var_2.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, 1u, u_input.b, 0u), vec4<u32>(26534u, u_input.b, 27923u, 2518u)))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, -(~var_0.a.xx), var_3.a.ww, firstTrailingBit(max(vec4<u32>(22290u, 31359u, 47916u, 0u) & ~vec4<u32>(var_2.x, u_input.c, var_2.x, u_input.b), vec4<u32>(43757u, 1u, firstLeadingBit(u_input.b), ~u_input.c))), 549f);
}

