struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-781f, -900f, 208f), vec3<f32>(-1345f, 1000f, -472f), vec3<f32>(727f, 1285f, 323f), vec3<f32>(110f, 774f, -134f), vec3<f32>(-595f, 307f, 1042f), vec3<f32>(1711f, -172f, -1550f), vec3<f32>(-1000f, 1772f, 1137f), vec3<f32>(-1208f, 817f, -3634f), vec3<f32>(-1157f, -512f, -2130f), vec3<f32>(2314f, 568f, 418f), vec3<f32>(221f, -1065f, 442f), vec3<f32>(753f, -1000f, 337f), vec3<f32>(147f, -911f, 1061f), vec3<f32>(1265f, 819f, -607f), vec3<f32>(-362f, 310f, -1166f), vec3<f32>(-720f, -343f, -421f), vec3<f32>(794f, 1306f, 1186f), vec3<f32>(1280f, -762f, 1000f), vec3<f32>(-1684f, 1000f, 462f), vec3<f32>(-1000f, 2397f, -1339f), vec3<f32>(-688f, 1000f, 1482f), vec3<f32>(1594f, 505f, -1952f), vec3<f32>(1905f, 1000f, -1259f), vec3<f32>(462f, 254f, 1774f), vec3<f32>(-114f, -318f, 1036f), vec3<f32>(1204f, -776f, 2581f), vec3<f32>(-285f, -132f, 151f));

var<private> global2: array<bool, 9> = array<bool, 9>(true, false, true, false, false, false, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>) -> i32 {
    global2 = array<bool, 9>();
    let var_0 = u_input.a.x == arg_0.a.e;
    return reverseBits(-1i) << (firstTrailingBit(~u_input.c) % 32u);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) * 631f)), arg_1);
    let var_1 = Struct_4(Struct_2(278f, 1i, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1885f, -133f, -2020f, -1130f), vec4<f32>(var_0.x, var_0.x, 136f, -726f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-246f, 791f, arg_1, -1788f), vec4<f32>(-748f, 1163f, -873f, 2928f)))), reverseBits(~u_input.a.x), ~u_input.c >> (firstTrailingBit(u_input.c) % 32u)), _wgslsmith_f_op_f32(ceil(arg_1)), u_input.a.x), Struct_3(Struct_2(-651f, -1i, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.x, arg_1, var_0.x), vec4<f32>(292f, -311f, 384f, -782f)), 7053i, u_input.c), 1890f, u_input.a.x), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(26228u, 4294967295u, 73401u), u_input.c)), Struct_3(Struct_2(arg_1, u_input.d, Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1440f, -332f, arg_1, var_0.x), vec4<f32>(arg_1, 283f, 615f, -1033f))), u_input.b, u_input.c >> (38768u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1075f * -1363f)), abs(i32(-1i) * -48278i)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), select(vec2<u32>(u_input.c, 3877u), vec2<u32>(u_input.c, u_input.c), arg_2.yy)), _wgslsmith_sub_u32(abs(u_input.c), u_input.c))));
    let var_2 = Struct_3(var_1.a, _wgslsmith_div_u32(var_1.b.a.c.c, _wgslsmith_sub_u32(var_1.b.b, abs(0u))));
    global2 = array<bool, 9>();
    var var_3 = var_2.a.c.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.x))), _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_1.x, true, false), arg_0, select(arg_1, arg_1, arg_1.x))))), ~(-40567i), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(arg_2.a - arg_2.a)), arg_2.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 61738u) >> (vec2<u32>(20174u, arg_2.c) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, u_input.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(429f + -1323f), _wgslsmith_f_op_f32(-arg_2.a.x))), firstLeadingBit(i32(-1i) * -28991i)), 1u);
    let var_1 = vec4<f32>(var_0.a.d, -264f, _wgslsmith_f_op_f32(-var_0.a.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_1.x, false, global2[_wgslsmith_index_u32(arg_2.c, 9u)]), _wgslsmith_div_f32(-411f, arg_2.a.x), vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], false, arg_1.x))))));
    var var_2 = Struct_5(var_1.zy);
    var var_3 = vec2<bool>(all(vec4<bool>(!(0i < u_input.a.x), true, true & (arg_1.x & true), false)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-23373i, -23997i, 2147483647i), u_input.a.yyw), u_input.a.zxy ^ u_input.a.xyz), -reverseBits(arg_2.b), firstTrailingBit(2147483647i)) > ((_wgslsmith_div_i32(u_input.a.x, u_input.a.x) >> (u_input.c % 32u)) & u_input.b));
    global0 = array<vec2<bool>, 4>();
    return !select(arg_1, arg_1, arg_1);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_1 {
    global2 = array<bool, 9>();
    global2 = array<bool, 9>();
    global1 = array<vec3<f32>, 27>();
    global2 = array<bool, 9>();
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 28856u, 0u, 17503u) | ~vec4<u32>(arg_2.a.c.c, arg_2.c.b, 4294967295u, arg_2.a.c.c), ~vec4<u32>(0u, 4294967295u, u_input.c, u_input.c))), arg_3.yx);
    return Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.b.a.a - -1365f), _wgslsmith_f_op_f32(round(arg_2.b.a.d)))), arg_1.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.a + -286f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-488f, _wgslsmith_f_op_f32(-arg_2.b.a.a), true)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_2.c.a.c.a.x))))), arg_1.a.x), -countOneBits(~arg_2.a.b), 12822u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(global2[_wgslsmith_index_u32(~(~14557u), 9u)] && !(!global2[_wgslsmith_index_u32(u_input.c, 9u)] && !global2[_wgslsmith_index_u32(u_input.c, 9u)]));
    var var_1 = true;
    var var_2 = 0u;
    let var_3 = func_4(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(36023u, 9u)], !global2[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(~u_input.c, 9u)], u_input.c == u_input.c, all(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(u_input.c, 9u)]))), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], true, false)), func_2(_wgslsmith_f_op_f32(select(-475f, _wgslsmith_f_op_f32(abs(1000f)), !global2[_wgslsmith_index_u32(u_input.c, 9u)])), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1627f, 909f, 1000f, -139f)), func_1(Struct_4(Struct_2(-420f, -1i, Struct_1(vec4<f32>(-1677f, -994f, -429f, 661f), -2147483647i, 33653u), 345f, 22109i), Struct_3(Struct_2(-488f, 2147483647i, Struct_1(vec4<f32>(-1764f, -1000f, 479f, -326f), u_input.d, 10072u), -1000f, -1i), 0u), Struct_3(Struct_2(-902f, u_input.b, Struct_1(vec4<f32>(436f, -921f, 583f, -476f), u_input.a.x, 4294967295u), 231f, u_input.d), u_input.c)), vec3<u32>(0u, 15933u, u_input.c)), ~4294967295u)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1027f + -140f), -889f), select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(122741u, 9u)], false), global2[_wgslsmith_index_u32(u_input.c, 9u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 9u)], false), true), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-502f, 981f, 1000f, 371f) + vec4<f32>(-288f, -900f, -1103f, 534f)), -48510i, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 27134u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))))), Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(470f, 836f), vec2<f32>(-2126f, -322f))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-271f, 740f) - vec2<f32>(840f, -189f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, 1466f)))))), Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1217f, -1600f))), -17067i, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2869f, 307f, -132f, 1000f))), u_input.b, ~u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f + -733f)), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i), 0i)), Struct_3(Struct_2(303f, 1i, Struct_1(vec4<f32>(943f, -284f, 823f, 805f), 1i, u_input.c), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_dot_vec3_i32(u_input.a.zwx, u_input.a.yyz)), u_input.c), Struct_3(Struct_2(-346f, u_input.d, Struct_1(vec4<f32>(899f, 893f, 2311f, 483f), 2147483647i, u_input.c), _wgslsmith_f_op_f32(round(1200f)), _wgslsmith_sub_i32(1i, 52016i)), ~1u)), firstTrailingBit(vec3<u32>(countOneBits(~1u), ~u_input.c, reverseBits(u_input.c))));
    global1 = array<vec3<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec4<u32>(~4294967295u, 6964u, _wgslsmith_sub_u32(9444u, 1u), var_3.c), (vec4<u32>(12384u, 0u, 4294967295u, var_3.c) ^ vec4<u32>(var_3.c, 32552u, var_3.c, u_input.c)) | abs(vec4<u32>(var_3.c, u_input.c, 4294967295u, u_input.c))), _wgslsmith_dot_vec3_i32(-u_input.a.zyy, u_input.a.wwz), ~_wgslsmith_add_vec4_u32(~vec4<u32>(var_3.c, u_input.c, 106489u, var_3.c), abs(~vec4<u32>(u_input.c, 1u, var_3.c, u_input.c))), 32894u);
}

