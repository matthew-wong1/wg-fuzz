struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<i32>(1i, 0i, 4389i, 5667i), true, vec2<f32>(2188f, -1248f), vec3<i32>(-7789i, -1i, -1i)), Struct_1(vec4<i32>(26903i, -15564i, -17266i, i32(-2147483648)), true, vec2<f32>(163f, 457f), vec3<i32>(16973i, 9291i, -1123i)), Struct_1(vec4<i32>(2147483647i, -36137i, -6709i, 0i), true, vec2<f32>(440f, -463f), vec3<i32>(23752i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, -46866i, -30438i, i32(-2147483648)), true, vec2<f32>(-2398f, 714f), vec3<i32>(-1i, 1i, -1i)), Struct_1(vec4<i32>(-54694i, -1i, 24248i, 1i), true, vec2<f32>(1000f, 146f), vec3<i32>(7142i, -1i, 51869i)), Struct_1(vec4<i32>(-1i, 12602i, i32(-2147483648), 57309i), true, vec2<f32>(-258f, -849f), vec3<i32>(i32(-2147483648), -43565i, 2147483647i)), Struct_1(vec4<i32>(1i, -24963i, -27964i, -72323i), true, vec2<f32>(974f, 1271f), vec3<i32>(-5468i, i32(-2147483648), 49188i)), Struct_1(vec4<i32>(1i, 1i, 0i, -1i), false, vec2<f32>(543f, 1589f), vec3<i32>(2147483647i, -1i, 1i)), Struct_1(vec4<i32>(-9587i, 1i, 40887i, -12081i), true, vec2<f32>(1031f, -390f), vec3<i32>(-1i, 2147483647i, -1i)), Struct_1(vec4<i32>(1i, 2147483647i, -1i, i32(-2147483648)), true, vec2<f32>(1891f, 144f), vec3<i32>(6153i, 0i, -24496i)), Struct_1(vec4<i32>(36656i, -7188i, 1i, 2147483647i), true, vec2<f32>(636f, -139f), vec3<i32>(-12270i, -1i, -12718i)), Struct_1(vec4<i32>(-31730i, 1i, -1i, -33757i), false, vec2<f32>(830f, 172f), vec3<i32>(-22883i, 5503i, 3451i)), Struct_1(vec4<i32>(19137i, -34004i, 1i, 1i), true, vec2<f32>(733f, 357f), vec3<i32>(6882i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 44617i), true, vec2<f32>(879f, -1054f), vec3<i32>(-38495i, 1i, -1i)), Struct_1(vec4<i32>(0i, -2477i, 32336i, 66996i), false, vec2<f32>(399f, 931f), vec3<i32>(26447i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(-26549i, 5034i, 2147483647i, 1i), true, vec2<f32>(517f, -513f), vec3<i32>(18694i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 2147483647i, 2147483647i), false, vec2<f32>(1732f, 551f), vec3<i32>(-15882i, 1i, 13140i)), Struct_1(vec4<i32>(0i, -11183i, 30406i, 2147483647i), false, vec2<f32>(316f, 802f), vec3<i32>(-16561i, -975i, -1i)), Struct_1(vec4<i32>(-44964i, i32(-2147483648), 0i, 2147483647i), false, vec2<f32>(-128f, -1114f), vec3<i32>(1i, -26767i, -9620i)), Struct_1(vec4<i32>(0i, 51316i, i32(-2147483648), -1i), true, vec2<f32>(338f, -739f), vec3<i32>(-46348i, 0i, 0i)), Struct_1(vec4<i32>(1i, 2147483647i, -1i, -3827i), true, vec2<f32>(-1107f, 363f), vec3<i32>(8990i, 2147483647i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i), false, vec2<f32>(349f, -922f), vec3<i32>(-1i, 0i, -17444i)), Struct_1(vec4<i32>(2147483647i, -6190i, 20310i, -37418i), false, vec2<f32>(247f, 100f), vec3<i32>(-22852i, -34432i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 1i, 8049i, -13301i), false, vec2<f32>(308f, 1081f), vec3<i32>(-1i, 381i, 0i)), Struct_1(vec4<i32>(33408i, -38739i, 51544i, 1i), true, vec2<f32>(-1000f, -919f), vec3<i32>(-19902i, 22232i, 28163i)), Struct_1(vec4<i32>(-2814i, 33519i, 1i, -10345i), true, vec2<f32>(935f, 719f), vec3<i32>(40759i, -1009i, 44612i)), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, 2147483647i), true, vec2<f32>(-217f, -1000f), vec3<i32>(-45045i, i32(-2147483648), 22411i)), Struct_1(vec4<i32>(14103i, 34288i, 16394i, 2147483647i), true, vec2<f32>(433f, 1141f), vec3<i32>(24509i, 53642i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, -5186i, i32(-2147483648), 0i), true, vec2<f32>(-945f, -1119f), vec3<i32>(-7633i, -1i, 2147483647i)), Struct_1(vec4<i32>(-3638i, 0i, 21291i, -1i), false, vec2<f32>(-501f, 331f), vec3<i32>(2147483647i, 1i, 14765i)), Struct_1(vec4<i32>(0i, 7777i, i32(-2147483648), i32(-2147483648)), true, vec2<f32>(321f, -687f), vec3<i32>(0i, i32(-2147483648), 8877i)));

var<private> global1: bool = false;

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    return 4294967295u & u_input.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    return u_input.e.x;
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(4294967295u, 44658u, arg_0.x)), 31u)];
    global0 = array<Struct_1, 31>();
    let var_2 = Struct_1(firstTrailingBit(vec4<i32>(-8230i, 0i, u_input.a.x, _wgslsmith_sub_i32(min(var_1.d.x, 0i), -1i))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, 1534f) - vec2<f32>(var_1.c.x, -644f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(413f, 873f)))))), vec3<i32>(global2.a.x, 49212i, ~reverseBits(-global2.a.x)));
    global2 = Struct_1(vec4<i32>(~min(select(var_2.a.x, 7051i, false), u_input.a.x), ~78982i >> (u_input.c.x % 32u), func_4(~vec2<i32>(10431i, var_2.a.x), global0[_wgslsmith_index_u32(func_3(), 31u)], Struct_1(vec4<i32>(u_input.e.x, var_2.a.x, var_2.a.x, var_1.a.x), !var_2.b, _wgslsmith_div_vec2_f32(global2.c, var_1.c), var_1.d)), 11585i), true, vec2<f32>(-152f, _wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(round(global2.c.x)))))), firstLeadingBit(vec3<i32>(-2147483647i, ~var_2.d.x, u_input.e.x)));
    return vec2<bool>(global2.b, all(select(select(!vec3<bool>(var_2.b, global2.b, false), !vec3<bool>(var_2.b, global2.b, false), !vec3<bool>(true, true, var_2.b)), vec3<bool>(any(vec4<bool>(false, global2.b, global2.b, global2.b)), false, false), !select(vec3<bool>(true, global2.b, false), vec3<bool>(false, false, var_2.b), true))));
}

fn func_1() -> vec3<i32> {
    let var_0 = global2.c;
    let var_1 = select(!select(select(!vec2<bool>(false, global2.b), select(vec2<bool>(true, false), vec2<bool>(true, true), global2.b), vec2<bool>(true, global2.b)), func_2(min(vec3<u32>(0u, u_input.c.x, 11375u), vec3<u32>(0u, 0u, 28899u))), !(!vec2<bool>(true, global2.b))), func_2(~min(countOneBits(vec3<u32>(43193u, u_input.c.x, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 11224u), vec3<u32>(1u, u_input.d, u_input.c.x)))), select(vec2<bool>(!global2.b, false), select(vec2<bool>(true, true), func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 41397u, 9908u), vec3<u32>(4294967295u, 0u, u_input.b))), global2.b), select(!vec2<bool>(false, global2.b), vec2<bool>(func_2(vec3<u32>(15120u, 24948u, u_input.d)).x, all(vec4<bool>(global2.b, false, true, global2.b))), true)));
    var var_2 = vec3<i32>(u_input.e.x, _wgslsmith_sub_i32(global2.a.x, ~(~u_input.e.x)) << (~(u_input.d & u_input.b) % 32u), -18821i);
    let var_3 = ~vec3<u32>(abs(func_3()), 37495u, u_input.d);
    global1 = false;
    return _wgslsmith_mult_vec3_i32(~(-vec3<i32>(u_input.a.x, global2.a.x, u_input.e.x)) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, u_input.d, var_3.x), vec3<u32>(19224u, 63158u, 13396u), vec3<u32>(23621u, 4294967295u, 0u)) | _wgslsmith_div_vec3_u32(var_3, vec3<u32>(8554u, 4294967295u, u_input.d))) % vec3<u32>(32u)), u_input.a.yxw) & (abs(global2.a.zww) | global2.a.wzz);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-(~u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 0i, 0i, global2.d.x), u_input.a)), vec4<i32>(~_wgslsmith_mod_i32(u_input.a.x, u_input.e.x), _wgslsmith_dot_vec3_i32(func_1(), vec3<i32>(-1i, 27598i, u_input.e.x)), _wgslsmith_clamp_i32(-47450i, u_input.a.x, abs(global2.d.x)), -(u_input.a.x & global2.d.x))), false, _wgslsmith_f_op_vec2_f32(-global2.c), vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.wz >> (u_input.c % vec2<u32>(32u))), u_input.e), _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, u_input.a.x), global2.d.x >> (u_input.c.x % 32u)) >> (4294967295u % 32u), -_wgslsmith_add_i32(-1i, u_input.a.x)));
    var var_0 = global0[_wgslsmith_index_u32((1u | u_input.b) | ((max(~54035u, _wgslsmith_mult_u32(u_input.b, u_input.b)) >> (_wgslsmith_dot_vec2_u32(select(u_input.c, u_input.c, vec2<bool>(false, true)), vec2<u32>(u_input.b, 0u) >> (u_input.c % vec2<u32>(32u))) % 32u)) & u_input.b), 31u)];
    let var_1 = global0[_wgslsmith_index_u32(20032u, 31u)];
    let var_2 = ~(vec4<i32>(28086i, i32(-1i) * -10835i, -1i, _wgslsmith_dot_vec3_i32(var_1.a.zyz | vec3<i32>(0i, 0i, 1i), ~u_input.a.yxx)) ^ abs(vec4<i32>(abs(u_input.e.x), func_4(global2.a.yw, Struct_1(vec4<i32>(16080i, -41670i, 0i, global2.d.x), var_1.b, var_0.c, global2.a.wwz), Struct_1(var_0.a, false, var_0.c, u_input.a.wwy)), -2147483647i, 10000i)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(), 0u), 31u)];
    var var_4 = ~max(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1u, 1u, u_input.b), vec4<u32>(29272u, 0u, 0u, u_input.b)) & ~(~vec4<u32>(u_input.d, 4294967295u, 1u, u_input.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.c.x), vec3<u32>(17668u, u_input.b, 4294967295u)), _wgslsmith_sub_u32(54266u, reverseBits(u_input.c.x)), 1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(35180u, u_input.d, u_input.c.x), vec3<bool>(false, var_3.b, var_0.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.b), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(67662u, var_4.x))), 1u, 13835u, firstLeadingBit(var_4.x & 4294967295u)), ~select(~vec4<u32>(1u, var_4.x, var_4.x, 6555u), vec4<u32>(var_4.x, var_4.x, 2931u, 31163u) | vec4<u32>(u_input.d, u_input.b, var_4.x, var_4.x), select(vec4<bool>(true, global2.b, false, global2.b), vec4<bool>(global2.b, true, global2.b, true), false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1142f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-462f))))), ~(vec4<u32>(var_4.x, var_4.x, ~57136u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, u_input.b, 1u), var_4.wxy)) | (~vec4<u32>(16918u, 1u, u_input.d, 55178u) ^ (vec4<u32>(var_4.x, 1u, u_input.d, u_input.d) & vec4<u32>(48271u, var_4.x, 7783u, 0u)))), vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x + var_3.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -146f))))));
}

