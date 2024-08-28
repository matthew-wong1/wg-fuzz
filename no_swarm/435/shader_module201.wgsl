struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(1i, vec4<i32>(10525i, 1i, i32(-2147483648), -43011i), vec2<bool>(true, false), vec3<f32>(-280f, 1693f, -138f)), Struct_1(41728i, vec4<i32>(-1i, -42379i, 33389i, 0i), vec2<bool>(true, false), vec3<f32>(363f, 515f, -1000f)), Struct_1(-1i, vec4<i32>(-316i, -55909i, 0i, -25665i), vec2<bool>(true, false), vec3<f32>(-692f, 352f, -226f)), Struct_1(1i, vec4<i32>(2147483647i, -9195i, 44366i, -1i), vec2<bool>(true, false), vec3<f32>(110f, -532f, -973f)), Struct_1(-17521i, vec4<i32>(7718i, 2147483647i, 71489i, i32(-2147483648)), vec2<bool>(false, true), vec3<f32>(-1000f, 355f, -1000f)), Struct_1(0i, vec4<i32>(17845i, -53868i, 54792i, -3502i), vec2<bool>(true, true), vec3<f32>(359f, 130f, -300f)), Struct_1(1831i, vec4<i32>(2147483647i, -43798i, -28650i, i32(-2147483648)), vec2<bool>(false, false), vec3<f32>(723f, -1111f, -1418f)), Struct_1(i32(-2147483648), vec4<i32>(-1i, -1228i, -57629i, -1i), vec2<bool>(true, false), vec3<f32>(823f, -1153f, 1953f)), Struct_1(2394i, vec4<i32>(2147483647i, -54515i, i32(-2147483648), 56981i), vec2<bool>(true, false), vec3<f32>(-621f, -279f, 2911f)), Struct_1(4806i, vec4<i32>(-1i, i32(-2147483648), 1i, 19549i), vec2<bool>(true, false), vec3<f32>(-2194f, -202f, -1406f)), Struct_1(-36917i, vec4<i32>(i32(-2147483648), -41913i, -11064i, 0i), vec2<bool>(false, false), vec3<f32>(-650f, 663f, 794f)), Struct_1(-2091i, vec4<i32>(2147483647i, 35500i, 0i, 0i), vec2<bool>(false, true), vec3<f32>(-427f, -172f, 111f)), Struct_1(11722i, vec4<i32>(-56794i, i32(-2147483648), -3872i, 1i), vec2<bool>(true, false), vec3<f32>(-882f, -356f, -1129f)), Struct_1(-59789i, vec4<i32>(i32(-2147483648), i32(-2147483648), -19473i, -1i), vec2<bool>(true, true), vec3<f32>(-1683f, -233f, -201f)), Struct_1(44200i, vec4<i32>(2147483647i, i32(-2147483648), -1i, -55641i), vec2<bool>(true, false), vec3<f32>(421f, 288f, 1415f)), Struct_1(-16368i, vec4<i32>(2147483647i, -43947i, -39941i, 1i), vec2<bool>(false, true), vec3<f32>(-273f, 1000f, -1341f)), Struct_1(-2570i, vec4<i32>(-41575i, 42501i, i32(-2147483648), -57944i), vec2<bool>(false, false), vec3<f32>(-1023f, 1077f, -367f)), Struct_1(14512i, vec4<i32>(i32(-2147483648), 19297i, 0i, 0i), vec2<bool>(true, true), vec3<f32>(894f, -1000f, -402f)), Struct_1(i32(-2147483648), vec4<i32>(-1i, 33203i, -16695i, -29222i), vec2<bool>(false, true), vec3<f32>(1000f, -1376f, 121f)), Struct_1(5800i, vec4<i32>(-31351i, i32(-2147483648), -2448i, 0i), vec2<bool>(true, true), vec3<f32>(1282f, 543f, 487f)));

var<private> global1: f32;

var<private> global2: array<vec3<i32>, 14>;

var<private> global3: bool;

var<private> global4: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1080f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) + 1931f)))), -1194f);
    let var_1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.zw, vec2<u32>(14864u, 1256u), _wgslsmith_sub_vec2_u32(~vec2<u32>(24503u, 54261u), u_input.c.xz)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 0u, 2039u, global4.x), u_input.d), 39172u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1664f * 1858f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))) * -1577f);
    let var_2 = -22244i;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-429f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-440f, -965f))))));
    return vec3<bool>(u_input.b <= u_input.b, false, !all(vec4<bool>(true, true, all(vec2<bool>(true, false)), true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = u_input.c.x;
    var var_1 = Struct_1(-2147483647i >> (1u % 32u), _wgslsmith_mult_vec4_i32(select(-arg_1.b, ~(arg_2.b ^ vec4<i32>(arg_2.a, arg_1.b.x, -98025i, arg_2.a)), _wgslsmith_f_op_f32(step(435f, arg_2.d.x)) != _wgslsmith_f_op_f32(496f * arg_1.d.x)), abs(~abs(vec4<i32>(u_input.b, u_input.b, -2147483647i, arg_1.b.x)))), vec2<bool>(any(arg_1.c), arg_2.c.x | any(func_3().yy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d)) - vec3<f32>(arg_2.d.x, _wgslsmith_f_op_f32(exp2(arg_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x + arg_2.d.x) + _wgslsmith_f_op_f32(arg_1.d.x - arg_2.d.x)))));
    global3 = !arg_2.c.x;
    global1 = arg_1.d.x;
    global2 = array<vec3<i32>, 14>();
    return -vec2<i32>(0i, select(u_input.b, _wgslsmith_mod_i32(abs(u_input.b), u_input.b ^ -1i), true));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, arg_0.x), arg_0, arg_0.x);
    let var_1 = _wgslsmith_add_vec2_i32(func_4(func_3(), global0[_wgslsmith_index_u32(~(~global4.x), 20u)], Struct_1(-2147483647i, select(vec4<i32>(22971i, 38509i, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), var_0.x), !vec2<bool>(arg_0.x, arg_0.x), vec3<f32>(1f, 1f, 1f))) << (~firstLeadingBit(firstTrailingBit(u_input.c.zy)) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(u_input.b, u_input.b));
    var var_2 = u_input.c.yx;
    return Struct_1(~(countOneBits(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(global4.x, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)])) & firstLeadingBit(var_1.x & 61456i)), -(vec4<i32>(_wgslsmith_mult_i32(var_1.x, 11457i), var_1.x << (0u % 32u), ~var_1.x, 38148i) << (~max(u_input.d, vec4<u32>(1u, 63861u, 4294967295u, 62470u)) % vec4<u32>(32u))), !arg_0, vec3<f32>(_wgslsmith_f_op_f32(1630f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(204f, 812f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f * -1569f) - _wgslsmith_f_op_f32(-1000f * 1646f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    var var_0 = func_2(vec2<bool>(true, arg_1));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, ~(~_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(u_input.a, 4294967295u, 5744u, u_input.a))))), 20u)];
    var_1 = global0[_wgslsmith_index_u32(global4.x, 20u)];
    var_0 = func_2(var_1.c);
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(~_wgslsmith_mod_u32(u_input.c.x, countOneBits(u_input.c.x))), 12722u), 20u)];
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_1(_wgslsmith_f_op_f32(abs(arg_1)), !(!func_2(arg_3.c).c.x | arg_0), 52249i);
    global0 = array<Struct_1, 20>();
    return select(vec3<bool>(select(arg_3.c.x, false, true), !(!(true && arg_3.c.x)), arg_2.c.x), vec3<bool>(func_3().x, arg_2.c.x, !(!arg_3.c.x)), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-736f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(912f - 851f), _wgslsmith_f_op_f32(1238f + 1041f), true)))) + 1000f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - -399f), _wgslsmith_f_op_f32(ceil(-1135f)), _wgslsmith_f_op_f32(ceil(192f)), var_0))))));
    var var_2 = !select(select(func_5(true, -960f, func_1(var_1.x, false, u_input.b), func_2(vec2<bool>(true, false))), vec3<bool>(true, 1u < global4.x, true), true), func_5(func_1(var_0, true, u_input.b << (global4.x % 32u)).c.x, var_1.x, global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(~28965u, 20u)]), func_5(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), Struct_1(1i, -vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), func_3().xx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1080f, var_1.x, 1247f))), func_1(_wgslsmith_div_f32(627f, -892f), true, -u_input.b)));
    global4 = abs(vec2<u32>(~u_input.d.x, abs(global4.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global4 = vec2<u32>(abs(abs(~(0u & global4.x))), reverseBits(0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, firstTrailingBit(_wgslsmith_div_i32(u_input.b, u_input.b)));
}

