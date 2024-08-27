struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-1i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-12026i), Struct_1(-36710i), Struct_1(0i), Struct_1(1i), Struct_1(2147483647i), Struct_1(0i), Struct_1(2147483647i), Struct_1(-7506i), Struct_1(-22523i), Struct_1(10738i), Struct_1(1i), Struct_1(61516i), Struct_1(-1i), Struct_1(7560i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(5871i), Struct_1(-1i), Struct_1(0i), Struct_1(0i), Struct_1(-3614i), Struct_1(-7427i));

var<private> global2: array<vec3<i32>, 16>;

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-1000f, -1832f, -1107f, 599f), vec4<f32>(-769f, -468f, 621f, -1000f), vec4<f32>(582f, -1209f, -264f, -534f), vec4<f32>(815f, -1600f, -168f, -884f), vec4<f32>(-273f, -511f, 395f, 524f), vec4<f32>(-1165f, 840f, 1000f, 2367f), vec4<f32>(-1000f, 113f, 588f, -546f), vec4<f32>(-973f, 984f, -1000f, 150f), vec4<f32>(448f, -1173f, 771f, 2328f), vec4<f32>(886f, -1000f, 1000f, -353f), vec4<f32>(-883f, 690f, 635f, -1752f), vec4<f32>(-1610f, -312f, 495f, -881f), vec4<f32>(455f, 847f, 472f, 882f), vec4<f32>(-586f, -1032f, -557f, 611f), vec4<f32>(2332f, -1954f, -447f, 925f), vec4<f32>(-1000f, 612f, 626f, 2230f), vec4<f32>(-1655f, 1165f, 613f, 862f), vec4<f32>(-886f, -1413f, -725f, 651f), vec4<f32>(1902f, 656f, -1100f, -1283f), vec4<f32>(864f, 698f, 1919f, -793f), vec4<f32>(613f, 641f, -1000f, 293f), vec4<f32>(-152f, 132f, -413f, 832f), vec4<f32>(-1091f, -1103f, -710f, -578f), vec4<f32>(1075f, 602f, -948f, -626f), vec4<f32>(-1000f, -478f, -529f, 588f), vec4<f32>(-556f, -1058f, -1000f, 897f), vec4<f32>(-778f, -1555f, 563f, 1472f), vec4<f32>(266f, -800f, 693f, -608f), vec4<f32>(358f, -888f, 1429f, 221f), vec4<f32>(1580f, -1053f, -117f, -941f));

var<private> global4: vec4<i32> = vec4<i32>(-1672i, 1i, 32769i, 2689i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<f32> {
    let var_0 = ~firstTrailingBit(46629u);
    let var_1 = -1022f;
    global4 = vec4<i32>(~(-10688i) << (u_input.b.x % 32u), global4.x, max(countOneBits(18323i), global4.x << (~var_0 % 32u)), min(_wgslsmith_mult_i32(-(global4.x << (u_input.b.x % 32u)), abs(10398i) >> ((0u >> (u_input.b.x % 32u)) % 32u)), max(-global4.x, global4.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(floor(512f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1))) - var_1));
    var var_3 = _wgslsmith_clamp_vec2_i32((abs(global4.yx) << ((vec2<u32>(0u, u_input.b.x) ^ u_input.a.xy) % vec2<u32>(32u))) ^ -(~global4.wy), -countOneBits(-vec2<i32>(global4.x, -1i)), global4.wx) & _wgslsmith_clamp_vec2_i32(global4.xz, _wgslsmith_mult_vec2_i32(global4.wx, abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(34393i, -2147483647i)))), vec2<i32>(-2147483647i, 1i) << (~u_input.a.xz % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(453f, -400f)), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_1)))), -562f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1371f - 758f), _wgslsmith_f_op_f32(ceil(-1012f))), _wgslsmith_f_op_f32(-722f * var_1))), global3[_wgslsmith_index_u32(u_input.a.x, 30u)], select(select(select(vec4<bool>(arg_0, true, true, arg_0), !vec4<bool>(false, arg_0, arg_0, true), arg_0 && true), select(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, false), false), select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0), arg_0), !vec4<bool>(arg_0, true, false, arg_0)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false)), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, true), true), select(vec4<bool>(true, true, true, arg_0), vec4<bool>(true, true, arg_0, false), false))), vec4<bool>(arg_0, arg_0, select(arg_0, all(vec3<bool>(false, true, arg_0)), arg_0), true), !select(vec4<bool>(arg_0, false, arg_0, arg_0), !vec4<bool>(true, true, arg_0, true), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, false, false, arg_0))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<u32>) -> i32 {
    let var_0 = !vec4<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true))), true, true, (11161u <= (u_input.b.x ^ 1u)) || false);
    let var_1 = !vec2<bool>(true, any(var_0.zzy));
    global3 = array<vec4<f32>, 30>();
    let var_2 = any(var_0.ww);
    var var_3 = true;
    return -2147483647i;
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1((i32(-1i) * -2147483647i) >> (u_input.b.x % 32u));
    var_0 = global0[_wgslsmith_index_u32(abs(26052u), 2u)];
    let var_1 = vec3<i32>(func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(29111u, u_input.b.x) >> (u_input.a.yz % vec2<u32>(32u))), abs(vec2<u32>(u_input.b.x, 54363u) | u_input.b)), 26u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(true, -1968f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1894f, 534f, 144f, 436f))) + vec4<f32>(842f, 201f, -615f, 1019f))), reverseBits(u_input.a)), -1i << (u_input.b.x % 32u), ~(-2147483647i));
    global2 = array<vec3<i32>, 16>();
    global4 = _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(firstTrailingBit(~73248i)), -1i, -abs(abs(global4.x)), 29499i), vec4<i32>(16812i, -_wgslsmith_clamp_i32(~(-32767i), 4275i, -10482i), var_1.x, ~58839i));
    return ~(~reverseBits(firstLeadingBit(~vec4<u32>(u_input.b.x, 1u, 1u, 126929u))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    let var_0 = firstLeadingBit(_wgslsmith_div_u32(1u, countOneBits(_wgslsmith_clamp_u32(1u, u_input.b.x, max(u_input.b.x, 79116u)))));
    var var_1 = Struct_1(min(global4.x, -1i));
    global4 = vec4<i32>(firstTrailingBit(2147483647i), -func_4(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, arg_2), vec4<u32>(5918u, 18006u, u_input.a.x, 1u)), 2u)], vec4<f32>(_wgslsmith_f_op_f32(-706f + -614f), _wgslsmith_div_f32(1904f, 872f), _wgslsmith_f_op_f32(723f * 1273f), 678f), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, 1u, 4294967295u), vec3<u32>(arg_0, 0u, arg_0)))), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-15083i, global4.x, global4.x, 27605i), vec4<i32>(global4.x, global4.x, var_1.a, 0i))), -1i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1434f, 725f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(global4.x, -(i32(-1i) * -5169i), -(~global4.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1447f * -2059f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_add_u32(28199u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(func_2(), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 9545u, 4294967295u, u_input.a.x), vec4<u32>(1u, u_input.b.x, u_input.a.x, 0u))), min(~vec4<u32>(1u, 6703u, u_input.a.x, u_input.a.x), select(vec4<u32>(0u, 47724u, 21927u, 0u), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x), false)))), Struct_1(max(2147483647i, max(0i, _wgslsmith_sub_i32(0i, var_0.a)))), _wgslsmith_mult_u32(u_input.a.x, min(u_input.a.x, ~0u))));
    global4 = ~(~vec4<i32>(firstTrailingBit(-2147483647i), firstTrailingBit(4709i), 2147483647i, -59873i));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 30u)]));
    return global1[_wgslsmith_index_u32(1u, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1377f))) * _wgslsmith_f_op_f32(1f - -463f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1258f)))) - _wgslsmith_f_op_f32(-130f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -851f), -270f, true)))));
    global0 = array<Struct_1, 2>();
    let var_2 = ~vec2<u32>(~(~(u_input.b.x & 0u)), u_input.b.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_vec2_f32(func_5(u_input.b.x << ((~var_2.x | (var_2.x << (31160u % 32u))) % 32u), func_1(), var_2.x)).x, 631f, _wgslsmith_f_op_f32(floor(158f)));
    let var_4 = vec2<bool>(true, true);
    var var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(floor(-1238f)))), _wgslsmith_f_op_f32(step(248f, _wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_4.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(false && var_4.x, -1550f)).x)), var_3.x));
    global3 = array<vec4<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.x);
}

