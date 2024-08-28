struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -22157i), 52164u, true);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<f32>(611f, -818f, 1000f, 309f), vec3<i32>(1i, -23054i, 1i), -1i, vec4<u32>(1u, 88379u, 1u, 23262u), vec4<f32>(-930f, 769f, 1000f, -1705f)), Struct_1(vec4<f32>(-227f, 1139f, -1459f, -311f), vec3<i32>(2992i, 33528i, 1i), -67015i, vec4<u32>(79301u, 4294967295u, 40853u, 4294967295u), vec4<f32>(378f, -113f, 918f, -455f)), Struct_1(vec4<f32>(1247f, -821f, -547f, 1661f), vec3<i32>(2147483647i, -33801i, 1i), -1i, vec4<u32>(0u, 1u, 16714u, 42278u), vec4<f32>(-724f, -230f, 1000f, -1373f)), Struct_1(vec4<f32>(-1125f, 650f, -1668f, -1130f), vec3<i32>(-27819i, 20427i, -22976i), -6627i, vec4<u32>(0u, 0u, 4294967295u, 27596u), vec4<f32>(-193f, -604f, -688f, 1000f)), Struct_1(vec4<f32>(310f, 1514f, -443f, 220f), vec3<i32>(-20158i, -39027i, 0i), -12903i, vec4<u32>(766u, 14729u, 3929u, 1u), vec4<f32>(-1181f, -1097f, -976f, 331f)), Struct_1(vec4<f32>(-953f, 480f, 608f, 1457f), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), 1380i, vec4<u32>(26813u, 34576u, 35859u, 20576u), vec4<f32>(-354f, 1499f, -361f, 944f)), Struct_1(vec4<f32>(-546f, 352f, -1698f, 1282f), vec3<i32>(2147483647i, 0i, i32(-2147483648)), -31459i, vec4<u32>(4294967295u, 14085u, 4294967295u, 14985u), vec4<f32>(667f, 326f, 924f, -712f)), Struct_1(vec4<f32>(1962f, -1079f, 1000f, -947f), vec3<i32>(22635i, -48754i, 0i), 0i, vec4<u32>(4294967295u, 0u, 0u, 57799u), vec4<f32>(491f, 719f, -969f, 613f)), Struct_1(vec4<f32>(-566f, -818f, 525f, 1273f), vec3<i32>(0i, 0i, i32(-2147483648)), -64694i, vec4<u32>(1u, 23780u, 0u, 23223u), vec4<f32>(-1000f, 2353f, -331f, 2145f)), Struct_1(vec4<f32>(1052f, -330f, 1000f, -1624f), vec3<i32>(2147483647i, 0i, -21757i), 1i, vec4<u32>(11904u, 1u, 4294967295u, 0u), vec4<f32>(1252f, 914f, -271f, 1992f)), Struct_1(vec4<f32>(-836f, 859f, 1662f, 2299f), vec3<i32>(4586i, 940i, 26166i), i32(-2147483648), vec4<u32>(14804u, 4294967295u, 4294967295u, 4294967295u), vec4<f32>(1080f, -812f, 1199f, 1000f)), Struct_1(vec4<f32>(-318f, -1658f, -919f, -1000f), vec3<i32>(-3330i, 55887i, 1i), -1i, vec4<u32>(4294967295u, 69537u, 0u, 65346u), vec4<f32>(432f, -1433f, 939f, 1000f)), Struct_1(vec4<f32>(1985f, -879f, -203f, 587f), vec3<i32>(-10663i, 24226i, -6122i), -1i, vec4<u32>(5282u, 4294967295u, 16485u, 49542u), vec4<f32>(3027f, 481f, 1297f, 591f)), Struct_1(vec4<f32>(451f, 332f, -779f, 234f), vec3<i32>(1i, 32264i, -23373i), i32(-2147483648), vec4<u32>(33776u, 14587u, 16561u, 4294967295u), vec4<f32>(1848f, -718f, -1298f, -416f)), Struct_1(vec4<f32>(1433f, -1050f, -687f, 1192f), vec3<i32>(-5717i, -28760i, 0i), -1i, vec4<u32>(4294967295u, 0u, 0u, 39725u), vec4<f32>(-1590f, -612f, -538f, 1183f)), Struct_1(vec4<f32>(2452f, 114f, -1998f, 1015f), vec3<i32>(0i, 21989i, 42373i), -9998i, vec4<u32>(40716u, 1u, 10102u, 29301u), vec4<f32>(962f, -807f, 260f, 1191f)), Struct_1(vec4<f32>(1181f, 138f, -444f, -721f), vec3<i32>(-1i, -60012i, 1i), 2273i, vec4<u32>(4294967295u, 56232u, 57041u, 4294967295u), vec4<f32>(1313f, 471f, -602f, -418f)), Struct_1(vec4<f32>(-2228f, -1484f, -507f, 655f), vec3<i32>(49001i, 1i, -1i), 55169i, vec4<u32>(10409u, 8689u, 1u, 4294967295u), vec4<f32>(-106f, 117f, 176f, 895f)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool) -> vec3<i32> {
    let var_0 = Struct_2(global0.a, 4294967295u, true);
    var var_1 = global0.a.x;
    return var_0.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_2.b, 18u)];
    let var_1 = vec4<u32>(arg_2.b, _wgslsmith_dot_vec2_u32(countOneBits(countOneBits(vec2<u32>(4294967295u, 43340u))) << (~(~vec2<u32>(arg_2.b, 36223u)) % vec2<u32>(32u)), ~(~(vec2<u32>(71729u, var_0.d.x) << (vec2<u32>(1u, arg_1) % vec2<u32>(32u))))), firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_u32(1u, global0.b, ~arg_2.b))), ~_wgslsmith_div_u32(firstLeadingBit(1u), ~9023u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), reverseBits(global0.a), arg_2.a.x, vec4<u32>(0u, 58544u, 4294967295u, firstLeadingBit(~14299u)), var_0.e);
    var var_3 = var_2.a;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, -1159f, 583f, var_2.a.x))))), _wgslsmith_mult_vec3_i32(max(abs(~vec3<i32>(-27634i, u_input.a, arg_2.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-4180i, -3733i, 2834i), var_2.b) >> (~var_1.wyw % vec3<u32>(32u))), ~reverseBits(global0.a)), global0.a.x, vec4<u32>(_wgslsmith_mult_u32(abs(firstTrailingBit(arg_1)), 35169u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 2573u, var_0.d.x), var_1), _wgslsmith_sub_u32(arg_1, ~(~10154u)), max(var_0.d.x & firstLeadingBit(var_0.d.x), var_1.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-2066f)), var_3.x, 1000f, _wgslsmith_f_op_f32(144f + var_0.e.x))))));
    return 0u;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    global0 = Struct_2(arg_1.b, ~(~global0.b), !(!any(vec3<bool>(global0.c, global0.c, global0.c))) | !all(!vec3<bool>(false, true, global0.c)));
    var var_0 = global1[_wgslsmith_index_u32(global0.b, 18u)];
    let var_1 = 57947u;
    global1 = array<Struct_1, 18>();
    var var_2 = Struct_1(arg_1.a, _wgslsmith_div_vec3_i32(-(~vec3<i32>(63143i, 2147483647i, -6967i)), abs(~_wgslsmith_div_vec3_i32(arg_0.xzw, var_0.b))), ~global0.a.x, vec4<u32>(arg_2.x, countOneBits(4294967295u) << (~func_3(vec2<bool>(true, false), var_0.d.x, Struct_2(vec3<i32>(var_0.b.x, 0i, -34663i), var_1, true), vec3<bool>(true, global0.c, global0.c)) % 32u), 1u << ((arg_2.x >> (_wgslsmith_div_u32(23275u, 27632u) % 32u)) % 32u), ~(~(global0.b | global0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(525f)))), arg_1.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -754f)) + var_0.a));
    return Struct_2(~abs(func_1(firstLeadingBit(global0.a), !vec2<bool>(global0.c, true), false)), var_1, !all(vec3<bool>(global0.c, arg_0.x != 16644i, select(true, false, false))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = !(!select(vec4<bool>(any(vec3<bool>(true, arg_2.c, true)), false, all(vec4<bool>(global0.c, arg_2.c, true, true)), true), !vec4<bool>(true, true, true, global0.c), true));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(105f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-450f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(~_wgslsmith_add_vec3_i32(~func_1(global0.a, vec2<bool>(true, global0.c), false), global0.a), ~global0.b, true);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.x, u_input.a, u_input.a, global0.a.x), vec4<i32>(u_input.a, 2147483647i, u_input.b, 53515i))), global1[_wgslsmith_index_u32(global0.b, 18u)], vec4<u32>(firstLeadingBit(global0.b), ~60047u, select(1u, global0.b, global0.c), select(global0.b, global0.b, false))), global0.b, func_2(~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.x, u_input.b, 25195i, 28591i), vec4<i32>(0i, u_input.a, 0i, -245i)), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-295f, -1100f, -534f, 872f), vec4<f32>(1245f, 1426f, -107f, -585f))), func_1(global0.a, vec2<bool>(false, global0.c), false), 51527i, ~vec4<u32>(71382u, global0.b, global0.b, global0.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-470f, -1993f, -1000f, 146f), vec4<f32>(-393f, -367f, -1706f, -1000f), vec4<bool>(global0.c, true, true, global0.c)))), abs(vec4<u32>(global0.b, global0.b, 38149u, 2146u))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(621f, var_0))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-373f, var_0))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1255f)), _wgslsmith_f_op_f32(round(var_0)))))))));
    let var_2 = vec2<i32>(firstLeadingBit(u_input.b), -1i);
    global1 = array<Struct_1, 18>();
    var var_3 = -reverseBits(global0.a);
    let var_4 = -_wgslsmith_mult_i32(-20875i, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 41103u, 5379u) ^ firstTrailingBit(vec4<u32>(global0.b, global0.b, global0.b, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.b, 0u, 41645u), vec4<u32>(global0.b, global0.b, global0.b, 4294967295u))));
}

