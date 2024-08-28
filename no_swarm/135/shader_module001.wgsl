struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(17129u, 1u, 0u, 0u);

var<private> global1: vec4<i32>;

var<private> global2: u32;

var<private> global3: array<u32, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-2363f + -488f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(var_0.a)));
    let var_2 = abs(36120i);
    let var_3 = global1.yyy;
    var var_4 = Struct_1(var_1.a);
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<f32>) -> Struct_1 {
    global2 = ~(~(~global3[_wgslsmith_index_u32(1u >> (global3[_wgslsmith_index_u32(max(global0.x, u_input.b), 21u)] % 32u), 21u)]));
    global3 = array<u32, 21>();
    var var_0 = ~vec4<u32>(func_3(~u_input.a, firstLeadingBit(~(-1i))), 4294967295u, ~7960u, ~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)] >> (19375u % 32u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~40752u, 21u)], 21u)]));
    var_0 = countOneBits(vec4<u32>(abs(~global0.x), ~(~4294967295u), ~_wgslsmith_dot_vec2_u32(global0.wx, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.x), global0.ww)), min(47579u, max(var_0.x, firstLeadingBit(var_0.x)))));
    var var_1 = Struct_1(-300f);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(f32(-1f) * -1201f)), _wgslsmith_f_op_f32(arg_0.a * arg_0.a)))), 829f);
    global3 = array<u32, 21>();
    global0 = reverseBits(reverseBits(abs(~vec4<u32>(0u, 11096u, 0u, 62411u))));
    global0 = _wgslsmith_clamp_vec4_u32(~(~abs(~vec4<u32>(global0.x, global3[_wgslsmith_index_u32(9462u, 21u)], global3[_wgslsmith_index_u32(0u, 21u)], 1u))), ~abs((vec4<u32>(4294967295u, 38794u, 4294967295u, 0u) >> (vec4<u32>(global0.x, 4294967295u, global0.x, global3[_wgslsmith_index_u32(global0.x, 21u)]) % vec4<u32>(32u))) ^ vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 21u)], 24215u, u_input.a, global0.x)), vec4<u32>(arg_1.x, firstLeadingBit(select(arg_1.x, global3[_wgslsmith_index_u32(1u, 21u)], true)) & abs(1u), ~u_input.b, countOneBits(17182u >> (global0.x % 32u))));
    global3 = array<u32, 21>();
    return select(select(vec4<bool>(true, _wgslsmith_div_f32(1514f, arg_0.a) != arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1612f) != arg_0.a, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.c >= -37081i, false, any(vec2<bool>(true, false)))), vec4<bool>(true, all(vec2<bool>(true, true)), true, true)), vec4<bool>(global1.x >= ~firstTrailingBit(u_input.c), ~(~1u) == abs(u_input.b), false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(vec3<bool>(false, true, true))))), !all(vec2<bool>(false, true)) & (~u_input.c <= ~(-52086i)));
}

fn func_1() -> i32 {
    let var_0 = !func_4(func_2(Struct_1(_wgslsmith_f_op_f32(abs(507f))), Struct_1(_wgslsmith_f_op_f32(min(1413f, -228f))), countOneBits(-2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -297f, -1541f), vec3<f32>(245f, -588f, 1473f))))), max(~global0.xx, vec2<u32>(871u, 0u)) >> (global0.yx % vec2<u32>(32u)));
    global0 = vec4<u32>(u_input.b, max((reverseBits(127100u) & global0.x) | 4294967295u, ~42252u), global0.x, u_input.b);
    var var_1 = func_2(func_2(func_2(Struct_1(_wgslsmith_f_op_f32(-176f - 507f)), func_2(func_2(Struct_1(884f), Struct_1(-906f), global1.x, vec3<f32>(-387f, 729f, -620f)), Struct_1(593f), -global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1444f, 1368f, 834f))), -1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-547f, 676f, -2498f)))), func_2(Struct_1(-448f), Struct_1(1221f), firstTrailingBit(~u_input.c), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1398f, -384f, -314f), vec3<f32>(-1527f, 100f, 213f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, 347f, -1136f))))), _wgslsmith_div_i32(-1i, min(-2147483647i, ~0i)), vec3<f32>(-480f, -478f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -750f) - _wgslsmith_div_f32(-2048f, -502f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(410f + 1000f)))), global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(sign(-330f)), 1043f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1690f, 1052f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1119f, 167f, 1011f), vec3<f32>(411f, -651f, -500f), var_0.www))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1646f, -662f, 507f))))));
    let var_2 = func_2(Struct_1(var_1.a), func_2(func_2(func_2(Struct_1(-1590f), Struct_1(322f), abs(-13603i), _wgslsmith_div_vec3_f32(vec3<f32>(-1451f, -1138f, var_1.a), vec3<f32>(1266f, var_1.a, -1000f))), func_2(Struct_1(-917f), Struct_1(908f), 1i, vec3<f32>(var_1.a, -112f, var_1.a)), _wgslsmith_sub_i32(-2147483647i, -47373i), vec3<f32>(_wgslsmith_f_op_f32(step(var_1.a, -1429f)), var_1.a, _wgslsmith_f_op_f32(-var_1.a))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + var_1.a)), ~_wgslsmith_div_i32(~u_input.c, 2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(1536f, _wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(1438f + 353f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), u_input.c, vec3<f32>(_wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-757f, _wgslsmith_f_op_f32(var_1.a + 688f)) - -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.a)), 382f, true))));
    var var_3 = _wgslsmith_mult_i32(~(-(~global1.x)), ~(-55532i));
    return abs(abs(u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec4<i32>(_wgslsmith_div_i32(~(-u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, 1i, -23702i), ~vec4<i32>(global1.x, 48650i, 29728i, -28997i))), 1i, -2147483647i, 0i);
    var var_0 = global1.ywy;
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(1i >> (global0.x % 32u), abs(46712i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-5837i, u_input.c), var_0.x << (global0.x % 32u)), ~select(global1.x, 16099i, false), 1i), vec4<i32>(var_0.x, -9933i, -reverseBits(-1i), -6321i >> (global0.x % 32u))) | vec4<i32>(func_1(), abs(countOneBits(21053i)), 1i, u_input.c);
    global1 = min((vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.c, 1i, -21874i)) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, var_0.x, 0i, u_input.c), select(vec4<i32>(25264i, u_input.c, global1.x, 0i), vec4<i32>(0i, u_input.c, 1i, -52405i), vec4<bool>(false, false, true, true))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -min(vec4<i32>(var_0.x, -30509i, u_input.c, global1.x), vec4<i32>(2046i, -33597i, u_input.c, u_input.c)), vec4<i32>(~abs(u_input.c), u_input.c, _wgslsmith_clamp_i32(71814i, 0i << (global0.x % 32u), i32(-1i) * -7155i), 2147483647i)));
    let var_1 = ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(u_input.a, 21u)], u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 1u), vec4<u32>(50499u, global3[_wgslsmith_index_u32(u_input.a, 21u)], 65555u, 1u)), ~vec4<u32>(global0.x, u_input.b, global0.x, 0u))));
    var var_2 = ~(~86088u);
    var var_3 = min(global1.x, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(global1.yz, vec2<i32>(-16192i, -4757i)), var_0.zx) << (~var_1.x % 32u));
    let var_4 = func_2(Struct_1(-1000f), func_2(func_2(Struct_1(_wgslsmith_f_op_f32(select(-778f, -461f, true))), func_2(func_2(Struct_1(-252f), Struct_1(-2290f), global1.x, vec3<f32>(-1469f, -187f, -1233f)), func_2(Struct_1(-376f), Struct_1(1000f), 0i, vec3<f32>(-1783f, -512f, -1783f)), ~1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(925f, -1884f, 1679f) * vec3<f32>(-1645f, 317f, -731f))), global1.x | ~(-40117i), vec3<f32>(1519f, _wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(1000f + -220f))), Struct_1(_wgslsmith_f_op_f32(214f - -376f)), _wgslsmith_dot_vec4_i32(vec4<i32>(28420i, -var_0.x, var_0.x ^ 1i, ~(-25875i)), _wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, -25422i, u_input.c, 8845i), -vec4<i32>(global1.x, u_input.c, global1.x, var_0.x))), vec3<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -418f))), func_2(func_2(Struct_1(535f), Struct_1(-984f), -2147483647i, vec3<f32>(-600f, -1096f, -1000f)), func_2(Struct_1(148f), Struct_1(-1426f), var_0.x, vec3<f32>(-211f, 1326f, -655f)), global1.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-967f, 1000f, 825f), vec3<f32>(106f, 262f, 1836f)))).a)), firstLeadingBit(2497i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(530f, _wgslsmith_f_op_f32(floor(924f)), -2723f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.wz, var_1.yx), 21u)])), vec2<u32>(18842u, ~25618u)));
}

