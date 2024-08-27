struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 58553u;

var<private> global1: i32 = 18614i;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<u32>(666u, 31303u, 1u, 4294967295u)), Struct_1(vec4<u32>(11176u, 60576u, 19647u, 0u)), Struct_1(vec4<u32>(92249u, 86357u, 0u, 75865u)), Struct_1(vec4<u32>(4294967295u, 1u, 90965u, 23165u)), Struct_1(vec4<u32>(23255u, 25201u, 93129u, 12261u)), Struct_1(vec4<u32>(1u, 4294967295u, 21554u, 0u)), Struct_1(vec4<u32>(2464u, 1u, 0u, 107104u)), Struct_1(vec4<u32>(4294967295u, 16981u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(69167u, 10013u, 49218u, 4294967295u)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 56493u)), Struct_1(vec4<u32>(0u, 18277u, 4294967295u, 64097u)), Struct_1(vec4<u32>(1u, 58238u, 4294967295u, 143652u)), Struct_1(vec4<u32>(40057u, 1u, 4294967295u, 27417u)), Struct_1(vec4<u32>(2018u, 41442u, 1u, 1u)), Struct_1(vec4<u32>(15580u, 4294967295u, 26930u, 0u)), Struct_1(vec4<u32>(24898u, 10184u, 30108u, 1u)), Struct_1(vec4<u32>(36901u, 1u, 9140u, 0u)), Struct_1(vec4<u32>(6351u, 81174u, 1u, 42817u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 6953u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-2076f)), 832f);
    global0 = arg_1.a.d.a.x;
    let var_1 = -arg_1.a.c;
    let var_2 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_sub_i32(-var_1, u_input.b.x), var_1, -u_input.a)), -u_input.b);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_1.a.e.zx, _wgslsmith_f_op_vec2_f32(-arg_1.a.e.wy)))));
    return _wgslsmith_div_f32(-1277f, var_0.x);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> u32 {
    var var_0 = ~firstTrailingBit(arg_2);
    var var_1 = vec3<u32>(52975u, abs(arg_1.b.a.x), 1u);
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), 1f, _wgslsmith_f_op_f32(220f - 399f), _wgslsmith_f_op_f32(f32(-1f) * -1181f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1.e.x, _wgslsmith_f_op_f32(383f + 765f), _wgslsmith_f_op_f32(f32(-1f) * -2259f)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, 203f, 1719f, arg_1.e.x), arg_1.e))), _wgslsmith_f_op_vec4_f32(trunc(arg_1.e))))));
    return var_1.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c, ~10378u), 1u);
    return Struct_2(!(all(vec4<bool>(true, true, true, true)) & true), Struct_1(reverseBits(vec4<u32>(select(var_0, 17186u, true), 4294967295u, func_3(-1000f, Struct_2(false, global2[_wgslsmith_index_u32(846u, 20u)], u_input.a, Struct_1(vec4<u32>(0u, u_input.c, var_0, var_0)), vec4<f32>(1544f, -2355f, 846f, 883f)), 4294967295u), _wgslsmith_div_u32(u_input.d.x, var_0)))), _wgslsmith_sub_i32(49199i, ~_wgslsmith_sub_i32(~(-2147483647i), abs(u_input.b.x))), Struct_1(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(60924u, 1u, 0u), vec3<u32>(u_input.d.x, 2716u, 1u)), 18475u >> (var_0 % 32u)), u_input.d.x | _wgslsmith_mod_u32(var_0, u_input.c), 52304u, _wgslsmith_clamp_u32(1u, var_0 | 1u, var_0 | 1u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, -142f, 206f, -966f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(918f, -141f, 1000f, -1609f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(316f, -112f, -1674f, 983f) * vec4<f32>(1126f, 710f, -856f, -1041f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.e.wzx)) - _wgslsmith_f_op_vec3_f32(abs(arg_0.e.wwz))) - arg_0.e.zwy);
    let var_1 = vec2<bool>(arg_2, !arg_2);
    var var_2 = func_2();
    let var_3 = func_3(-403f, func_2(), select(~(~39498u), _wgslsmith_mult_u32(min(1u, firstTrailingBit(136978u)), abs(reverseBits(var_2.b.a.x))), var_2.a));
    var var_4 = vec3<i32>(var_2.c, _wgslsmith_dot_vec4_i32(~max(vec4<i32>(u_input.a, 1i, arg_1.x, arg_1.x), vec4<i32>(var_2.c, u_input.a, u_input.b.x, var_2.c)) ^ vec4<i32>(~var_2.c, -2147483647i, _wgslsmith_mod_i32(-20486i, arg_0.c), arg_1.x), vec4<i32>(arg_0.c & (u_input.a ^ 13950i), arg_0.c, _wgslsmith_dot_vec2_i32(arg_1, abs(vec2<i32>(-15778i, arg_0.c))), -11896i)), 59948i);
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_2 {
    global1 = arg_0.c;
    let var_0 = Struct_3(Struct_2(-2589f < arg_1.e.x, Struct_1(vec4<u32>(~arg_2.a.x, arg_0.b.a.x << (1u % 32u), ~arg_2.a.x, ~arg_0.b.a.x)), u_input.a, Struct_1(vec4<u32>(countOneBits(0u), 27605u, arg_2.a.x, 0u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.e.x - arg_0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -136f), arg_1.e.x, -561f) + _wgslsmith_div_vec4_f32(arg_0.e, vec4<f32>(arg_1.e.x, -705f, 633f, arg_1.e.x)))));
    var var_1 = reverseBits(~arg_3);
    let var_2 = !vec4<bool>(false, max(36959u, _wgslsmith_add_u32(var_0.a.d.a.x, arg_0.d.a.x)) != (_wgslsmith_mod_u32(19522u, arg_2.a.x) & _wgslsmith_mod_u32(120218u, 4664u)), func_2().a, (_wgslsmith_div_i32(1i, arg_1.c) ^ (var_1.x ^ 2147483647i)) == 19638i);
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> vec4<i32> {
    let var_0 = ~vec4<u32>(68888u, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 39618u, ~1u, u_input.d.x), vec4<u32>(4294967295u, _wgslsmith_mod_u32(0u, u_input.c), u_input.c, ~0u)), firstTrailingBit(24978u ^ (u_input.c & 129090u)));
    var var_1 = !(!select(vec4<bool>(!arg_0.a, arg_0.a, any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), arg_0.a), !(!vec4<bool>(true, false, arg_0.a, true)), true));
    global1 = 48319i;
    global0 = u_input.c >> (~arg_0.d.a.x % 32u);
    let var_2 = arg_0;
    return -_wgslsmith_div_vec4_i32(firstTrailingBit(countOneBits(reverseBits(vec4<i32>(1i, arg_0.c, arg_0.c, -1206i)))), reverseBits(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(arg_0.c, 7188i, var_2.c, -27284i), vec4<bool>(false, var_2.a, false, true)), -vec4<i32>(var_2.c, 2147483647i, arg_0.c, arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 20>();
    let var_0 = max(-17209i, -u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), Struct_3(Struct_2(true, global2[_wgslsmith_index_u32(u_input.d.x, 20u)], 1i, global2[_wgslsmith_index_u32(u_input.c, 20u)], vec4<f32>(-454f, -1210f, -1105f, -1203f))))))), 1734f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)), 1f));
    global1 = u_input.a;
    global0 = 49657u;
    let var_2 = 16852u;
    global2 = array<Struct_1, 20>();
    var var_3 = func_6(func_5(func_4(func_2(), u_input.b.xz, true), func_4(func_2(), abs(-u_input.b.xx), any(vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(~u_input.d.x, _wgslsmith_sub_u32(var_2, u_input.d.x))), 20u)], u_input.b), _wgslsmith_f_op_f32(-1000f - var_1.x), _wgslsmith_f_op_f32(-1191f * var_1.x));
    var var_4 = select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(func_5(Struct_2(false, Struct_1(vec4<u32>(u_input.c, 14362u, u_input.d.x, var_2)), var_0, global2[_wgslsmith_index_u32(84159u, 20u)], vec4<f32>(var_1.x, -669f, var_1.x, var_1.x)), Struct_2(true, Struct_1(vec4<u32>(var_2, var_2, var_2, var_2)), var_3.x, global2[_wgslsmith_index_u32(48348u, 20u)], vec4<f32>(-664f, 847f, var_1.x, -1847f)), global2[_wgslsmith_index_u32(91199u, 20u)], var_3.yzy).e.x)) > 1350f), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, -151f, 165f, _wgslsmith_mod_vec2_i32(~vec2<i32>(-56221i | var_3.x, -14649i), u_input.b.zz), 26062u);
}

