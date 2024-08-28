struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_3(2224u)), Struct_4(Struct_3(89825u)), Struct_4(Struct_3(0u)), Struct_4(Struct_3(27960u)), Struct_4(Struct_3(28387u)), Struct_4(Struct_3(6994u)), Struct_4(Struct_3(26322u)), Struct_4(Struct_3(4294967295u)), Struct_4(Struct_3(19697u)), Struct_4(Struct_3(1u)), Struct_4(Struct_3(1u)), Struct_4(Struct_3(92120u)), Struct_4(Struct_3(4294967295u)), Struct_4(Struct_3(11152u)), Struct_4(Struct_3(1u)), Struct_4(Struct_3(54473u)), Struct_4(Struct_3(0u)), Struct_4(Struct_3(0u)), Struct_4(Struct_3(1u)), Struct_4(Struct_3(83202u)), Struct_4(Struct_3(109159u)), Struct_4(Struct_3(20561u)), Struct_4(Struct_3(0u)), Struct_4(Struct_3(1u)));

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-761f, -789f, -161f), vec3<f32>(2008f, 864f, 321f), vec3<f32>(-185f, -230f, -1030f), vec3<f32>(-2045f, 294f, 777f), vec3<f32>(-777f, 1000f, -1000f), vec3<f32>(282f, -172f, 1000f), vec3<f32>(346f, 885f, 1496f), vec3<f32>(-510f, 283f, -1232f), vec3<f32>(-1575f, -1579f, -859f), vec3<f32>(1506f, -428f, -1000f), vec3<f32>(1037f, -210f, -1000f), vec3<f32>(532f, 887f, -1714f), vec3<f32>(508f, 1784f, -682f), vec3<f32>(-234f, 203f, -228f), vec3<f32>(-353f, -1000f, -373f), vec3<f32>(-1765f, 326f, -1613f), vec3<f32>(1119f, 612f, -1602f), vec3<f32>(1090f, -657f, -238f), vec3<f32>(189f, -965f, 2138f), vec3<f32>(310f, -1000f, -330f), vec3<f32>(-136f, 676f, 489f), vec3<f32>(-188f, 352f, 1039f), vec3<f32>(1274f, 183f, -984f), vec3<f32>(1000f, -808f, -487f), vec3<f32>(-226f, 271f, 326f), vec3<f32>(161f, -1000f, 201f), vec3<f32>(-105f, 2417f, 901f), vec3<f32>(-1648f, -1900f, 1450f), vec3<f32>(-352f, -1196f, 1153f), vec3<f32>(-979f, -715f, -928f), vec3<f32>(1000f, -2261f, -122f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec4<i32> {
    let var_0 = ~(12309u ^ ~arg_0.b.x);
    global1 = array<Struct_4, 24>();
    let var_1 = arg_2.x;
    global2 = array<vec3<f32>, 31>();
    let var_2 = arg_0.c.x;
    return arg_0.a;
}

fn func_3() -> f32 {
    let var_0 = Struct_5(global1[_wgslsmith_index_u32(1u, 24u)], any(vec2<bool>(u_input.a == countOneBits(u_input.a), true)), _wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.a, 1i, 51252i, u_input.a)), -firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))));
    let var_1 = var_0;
    let var_2 = var_1.a.a.a;
    var var_3 = abs(vec4<i32>(min(0i, i32(-1i) * -27057i), _wgslsmith_dot_vec4_i32(-var_1.c, ~var_0.c), ~var_0.c.x, ~var_1.c.x) << (vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.a.a.a, 17418u), ~var_1.a.a.a, abs(1u)), var_1.a.a.a << (_wgslsmith_mod_u32(1u, var_0.a.a.a) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(9395u, var_2, 1u), vec3<u32>(91351u, 1u, 0u) << (vec3<u32>(40414u, var_1.a.a.a, var_0.a.a.a) % vec3<u32>(32u))), 4294967295u) % vec4<u32>(32u)));
    global0 = abs(abs(0u));
    return -1048f;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_mod_vec4_i32(min(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 28316i, 16261i, 1i), vec4<i32>(35491i, arg_1, -2147483647i, u_input.a)), -abs(vec4<i32>(2147483647i, 1i, -57824i, u_input.a) ^ vec4<i32>(46341i, u_input.a, arg_1, arg_1))), func_2(Struct_1(vec4<i32>(-2147483647i, abs(-51732i), u_input.a, ~arg_1), _wgslsmith_mult_vec4_u32(arg_2, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 1u, 74439u), arg_2)), vec3<bool>(any(vec2<bool>(false, true)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(sign(arg_3))), 695f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2127f, -1954f, false)) + 862f), _wgslsmith_f_op_f32(arg_3 * arg_3)), vec3<bool>(true, any(vec3<bool>(true, true, true)), !any(vec3<bool>(false, true, true)))));
    global1 = array<Struct_4, 24>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(var_0.x), 1i, firstLeadingBit(6841i), i32(-1i) * -28137i), ~reverseBits(vec4<i32>(arg_1, u_input.a, -1i, u_input.a))), vec4<u32>(~arg_2.x, 0u, abs(~arg_2.x), abs(arg_2.x)), vec3<bool>(!(u_input.a < arg_1), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-1044f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(-1100f, _wgslsmith_f_op_f32(arg_3 + arg_0.x)))));
    let var_2 = global2[_wgslsmith_index_u32(81647u, 31u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(select(-2417f, -478f, var_1.a.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -772f)))) - _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(1u, 31u)] - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_3, -1416f) * vec3<f32>(arg_0.x, -353f, var_1.a.d)) - _wgslsmith_f_op_vec3_f32(ceil(global2[_wgslsmith_index_u32(var_1.a.b.x, 31u)]))), global2[_wgslsmith_index_u32(39000u, 31u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u << (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 49073u, 79338u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 1u)), 1u, 1u, ~36135u), reverseBits(vec4<u32>(4294967295u, 1u, 4294967295u, 16823u)))) % 32u);
    var var_1 = Struct_5(global1[_wgslsmith_index_u32(var_0, 24u)], all(vec2<bool>(true, false)), vec4<i32>(-(~(-42271i)), _wgslsmith_dot_vec4_i32(~(vec4<i32>(58834i, u_input.a, u_input.a, 1i) >> (vec4<u32>(var_0, var_0, var_0, 0u) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(10960i, -1i, 2147483647i, 1i)) << (~vec4<u32>(var_0, var_0, var_0, 31952u) % vec4<u32>(32u))), min(~(-2147483647i), u_input.a), u_input.a));
    var var_2 = true;
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(abs(var_1.c), vec4<i32>(38945i, 0i, u_input.a, u_input.a)) ^ ~countOneBits(var_1.c), reverseBits(firstLeadingBit(vec4<u32>(12242u, 29502u, var_1.a.a.a, 7128u))) >> (countOneBits(~vec4<u32>(var_1.a.a.a, 46019u, 6062u, var_1.a.a.a)) % vec4<u32>(32u)), select(!vec3<bool>(var_1.b, true, var_1.b), !(!vec3<bool>(var_1.b, true, var_1.b)), vec3<bool>(all(vec4<bool>(var_1.b, false, var_1.b, var_1.b)), !var_1.b, select(false, true, var_1.b))), -345f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec2<f32>(-1068f, 2689f), 2147483647i, vec4<u32>(4294967295u, 1u, var_1.a.a.a, 215u), 1577f))))))));
    var_1 = Struct_5(Struct_4(Struct_3(71667u)), true, var_3.a.a);
    let var_4 = Struct_3(~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, var_1.a.a.a), 67173u) << (var_3.a.b.x % 32u));
    var var_5 = Struct_5(var_1.a, all(vec3<bool>(var_3.a.c.x, (41468i < var_3.a.a.x) != var_3.a.c.x, (true && var_1.b) || var_1.b)), -var_3.a.a);
    let var_6 = Struct_2(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_div_vec3_u32(var_3.a.b.ywx, var_3.a.b.xxx)), global2[_wgslsmith_index_u32(0u >> (firstTrailingBit(~abs(var_5.a.a.a)) % 32u), 31u)]);
}

