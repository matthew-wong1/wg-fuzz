struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-12236i, -32419i);

var<private> global1: array<vec4<u32>, 15>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<i32>(-47959i, 0i, -1i, 1653i), -714f, -714f, true), Struct_1(vec4<i32>(-22378i, 12486i, -9105i, 15430i), 1884f, -563f, false), Struct_1(vec4<i32>(1i, 9481i, 1i, 59493i), 206f, 699f, true), Struct_1(vec4<i32>(-41277i, -31060i, -25089i, -27756i), 461f, 214f, false), Struct_1(vec4<i32>(i32(-2147483648), -64136i, 16363i, -39072i), 463f, -707f, true), Struct_1(vec4<i32>(1i, 1i, 55237i, 18560i), 1000f, 649f, true), Struct_1(vec4<i32>(-29597i, 2147483647i, 1i, 2147483647i), 1000f, 440f, true), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, -1i), 2187f, -1211f, false), Struct_1(vec4<i32>(-1i, 22440i, i32(-2147483648), -48372i), 971f, 444f, true), Struct_1(vec4<i32>(-74355i, 0i, -19799i, 57724i), 1157f, -820f, true), Struct_1(vec4<i32>(14575i, 31814i, -52248i, i32(-2147483648)), -1000f, -551f, true));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    global2 = array<Struct_1, 11>();
    global0 = -vec2<i32>(5703i | (-u_input.a >> (abs(0u) % 32u)), max(global0.x, ~global0.x));
    var var_0 = Struct_4(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(1u), _wgslsmith_add_u32(81437u, u_input.c), select(~u_input.b, ~0u, true)), 11u)], vec4<bool>(!all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(max(2469f, -1044f)) < _wgslsmith_f_op_f32(ceil(212f)), ~35634i < firstTrailingBit(0i), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), vec3<f32>(-1872f, _wgslsmith_f_op_f32(floor(-1186f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1029f))))), u_input.c, Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(2659i, -2147483647i, 0i, 44440i) ^ vec4<i32>(u_input.a, 0i, global0.x, global0.x), -vec4<i32>(-50676i, -29226i, global0.x, global0.x)), 1451f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(ceil(-1454f))), !vec4<bool>(any(vec2<bool>(false, false)), true, true, all(vec2<bool>(true, false))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f * 838f) - _wgslsmith_f_op_f32(f32(-1f) * -1151f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(abs(-210f)), any(vec4<bool>(true, true, false, false)))), _wgslsmith_div_f32(-239f, _wgslsmith_f_op_f32(406f + 587f)))), Struct_3(Struct_2(global2[_wgslsmith_index_u32(~u_input.b << (0u % 32u), 11u)], vec4<bool>(true, any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, false, false, false)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-924f, -1000f, -473f), vec3<f32>(-1004f, 888f, -804f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(703f, -425f, 704f) + vec3<f32>(-1755f, 486f, -1310f)))), Struct_1(firstTrailingBit(vec4<i32>(-33599i, 2147483647i, -124372i, 2147483647i)), -287f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -516f)), all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f)), vec3<bool>(true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))), reverseBits(u_input.b));
    global1 = array<vec4<u32>, 15>();
    var var_1 = false;
    return global1[_wgslsmith_index_u32(1u, 15u)];
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: i32) -> bool {
    let var_0 = countOneBits(~_wgslsmith_dot_vec4_u32(~func_3(), _wgslsmith_clamp_vec4_u32(~vec4<u32>(18808u, u_input.b, u_input.c, u_input.c), abs(global1[_wgslsmith_index_u32(u_input.c, 15u)]), ~vec4<u32>(u_input.b, 4294967295u, u_input.b, 21368u))));
    global0 = _wgslsmith_clamp_vec2_i32(-arg_1.a.xy, ~_wgslsmith_div_vec2_i32(arg_1.a.yw, vec2<i32>(-2147483647i, firstLeadingBit(arg_3))), firstTrailingBit(vec2<i32>(-2147483647i, max(u_input.a, 8414i ^ arg_3))));
    global2 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_mod_i32(abs(-38472i) >> (~var_0 % 32u), firstTrailingBit(~(-31306i)));
    return true;
}

fn func_1() -> StorageBuffer {
    var var_0 = !vec2<bool>(false, any(vec3<bool>(func_2(228f, global2[_wgslsmith_index_u32(78677u, 11u)], vec3<bool>(true, true, true), 1i), any(vec2<bool>(true, false)), true)));
    global1 = array<vec4<u32>, 15>();
    let var_1 = Struct_4(Struct_2(Struct_1(max(~vec4<i32>(2147483647i, 0i, 2147483647i, u_input.a), -vec4<i32>(31912i, u_input.a, u_input.a, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1090f, -393f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1183f)), _wgslsmith_f_op_f32(ceil(225f))), !(!var_0.x)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, true, false), !vec4<bool>(false, false, var_0.x, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1567f)), _wgslsmith_f_op_f32(f32(-1f) * -1386f), _wgslsmith_f_op_f32(sign(2297f)))), 8947u, Struct_2(global2[_wgslsmith_index_u32(~firstTrailingBit(select(1u, 4294967295u, false)), 11u)], !vec4<bool>(all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(var_0.x, true, var_0.x), true && var_0.x, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1743f, 392f, 1378f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1963f, -556f, 538f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-797f, -996f, -570f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 139f, 175f) - vec3<f32>(-287f, 332f, -1890f)))))), Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.c, 11u)], vec4<bool>(var_0.x, u_input.a < u_input.a, true, var_0.x || var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2022f, 469f, 187f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, 295f, 399f)))), Struct_1(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, global0.x, global0.x, global0.x)), min(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(1i, 17588i, 0i, u_input.a))), 1347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(682f))), any(vec4<bool>(false, false, true, true)) | var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(555f)))))), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true))), vec3<bool>(false, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true), !vec3<bool>(var_0.x, true, var_0.x))), u_input.b << (~1u % 32u));
    let var_2 = var_1.d.a;
    let var_3 = 1018f;
    return StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(~vec2<i32>(48355i, 53787i), vec2<i32>(var_1.a.a.a.x, global0.x))), reverseBits(-var_1.c.a.a.ww), -(var_1.d.a.a.a.wy & vec2<i32>(var_1.a.a.a.x, -45984i)) & var_1.a.a.a.zw), abs(var_1.d.a.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    global1 = array<vec4<u32>, 15>();
    let x = u_input.a;
    s_output = func_1();
}

