struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<i32, 13> = array<i32, 13>(0i, 5075i, -18586i, 2147483647i, i32(-2147483648), -15322i, 2147483647i, 1i, 2147483647i, -1i, -37317i, -27755i, 2147483647i);

var<private> global1: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 0u, 40167u), vec3<u32>(9042u, 4294967295u, 1u), vec3<u32>(18536u, 0u, 8129u), vec3<u32>(11529u, 16232u, 60375u), vec3<u32>(7517u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(37646u, 20861u, 15879u), vec3<u32>(4294967295u, 4294967295u, 1286u), vec3<u32>(13839u, 0u, 43309u), vec3<u32>(4294967295u, 15780u, 83252u), vec3<u32>(4294967295u, 13925u, 1u), vec3<u32>(0u, 0u, 5209u), vec3<u32>(1u, 15840u, 43209u), vec3<u32>(0u, 5317u, 4294967295u), vec3<u32>(69250u, 31079u, 3382u), vec3<u32>(74260u, 0u, 13123u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<u32> {
    global1 = array<vec3<u32>, 16>();
    let var_0 = Struct_1(-1532f, countOneBits(min(arg_0.zyz, arg_0.yxz) << (~_wgslsmith_add_vec3_u32(arg_1.c, vec3<u32>(arg_0.x, arg_1.c.x, 18746u)) % vec3<u32>(32u))), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_1.a)), -205f, true))));
    let var_1 = var_0;
    global1 = array<vec3<u32>, 16>();
    var var_2 = !(!any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))));
    return abs(firstLeadingBit(firstLeadingBit(vec3<u32>(1u, 1u, 0u)) | global1[_wgslsmith_index_u32(firstTrailingBit(var_0.c.x), 16u)]) & var_1.c);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<vec3<u32>, 16>();
    let var_0 = vec4<u32>(81278u, 1u, ~(~8836u) << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mult_u32(1u, 7070u), ~15974u), 9958u) % 32u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f - -178f)))), ((_wgslsmith_mult_vec3_u32(var_0.yxx, global1[_wgslsmith_index_u32(var_0.x, 16u)]) ^ vec3<u32>(var_0.x, var_0.x, 27250u)) ^ _wgslsmith_mult_vec3_u32(~global1[_wgslsmith_index_u32(118836u, 16u)], func_3(var_0, Struct_1(-2782f, vec3<u32>(0u, 19496u, 38468u), var_0.wwz, 746f)))) & _wgslsmith_mult_vec3_u32(abs(var_0.wzw), var_0.www), ~vec3<u32>(4294967295u, var_0.x >> (~var_0.x % 32u), 42805u), _wgslsmith_f_op_f32(trunc(-1030f)));
    var var_2 = ~(var_1.c.x << (~4294967295u % 32u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(var_1.a)), firstTrailingBit(~var_0.xwy), global1[_wgslsmith_index_u32(var_0.x, 16u)] << (var_0.yzy % vec3<u32>(32u)), 607f);
    return Struct_1(786f, abs(vec3<u32>(max(var_1.b.x, 0u), 62790u, ~var_1.b.x)) >> ((_wgslsmith_clamp_vec3_u32(~var_0.wxw, ~vec3<u32>(1u, 37945u, var_0.x), vec3<u32>(8149u, 97187u, var_3.c.x)) >> (vec3<u32>(_wgslsmith_mod_u32(var_1.c.x, 0u), _wgslsmith_clamp_u32(var_1.b.x, 12215u, 3970u), _wgslsmith_mod_u32(var_3.c.x, var_0.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.wyw ^ ((reverseBits(vec3<u32>(1u, var_0.x, 31101u)) & vec3<u32>(0u, 4294967295u, var_1.b.x)) >> (var_1.c % vec3<u32>(32u))), -827f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = array<i32, 13>();
    var var_0 = !(709f > _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(984f, arg_2, true)), _wgslsmith_f_op_f32(f32(-1f) * -1157f)))));
    var var_1 = vec3<i32>(u_input.a, u_input.a, min(1i, 0i)) & _wgslsmith_sub_vec3_i32(-(vec3<i32>(-31671i, u_input.a, u_input.a) >> (~vec3<u32>(arg_3.b.x, 61442u, 44454u) % vec3<u32>(32u))), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -55893i, 1i), vec3<i32>(u_input.a, 23534i, global0[_wgslsmith_index_u32(38407u, 13u)]) << (vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) % vec3<u32>(32u))));
    var var_2 = !((max(abs(25202u), ~arg_1.c.x) == 1u) & (_wgslsmith_mod_u32(~19348u, _wgslsmith_mult_u32(arg_1.c.x, arg_3.c.x)) < countOneBits(0u)));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(min(-1550f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) * _wgslsmith_f_op_f32(648f + arg_2)), _wgslsmith_f_op_f32(round(527f)), 2147483647i >= ~u_input.a))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = arg_0;
    var_0 = Struct_1(481f, vec3<u32>(6815u, 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(55581u, 38035u, arg_0.b.x) >> (vec3<u32>(0u, arg_1.b.x, 33877u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(arg_1.b, vec3<u32>(var_0.b.x, var_0.c.x, arg_0.c.x))), _wgslsmith_sub_vec3_u32(arg_0.b, vec3<u32>(arg_2, arg_0.c.x, arg_2)))), ~min(~arg_0.c, var_0.c), _wgslsmith_f_op_f32(-797f * 1563f));
    global1 = array<vec3<u32>, 16>();
    var var_1 = _wgslsmith_f_op_f32(step(-375f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.d, -1658f)), _wgslsmith_f_op_f32(1000f + arg_1.d))), _wgslsmith_f_op_f32(1103f + _wgslsmith_f_op_f32(func_4(arg_0, func_2(vec4<i32>(u_input.a, u_input.a, 1i, -40406i)), _wgslsmith_f_op_f32(arg_1.a - 1060f), Struct_1(682f, arg_0.c, vec3<u32>(73503u, var_0.c.x, arg_1.b.x), arg_0.d))))))));
    global0 = array<i32, 13>();
    return ~arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    global1 = array<vec3<u32>, 16>();
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 1u, _wgslsmith_div_u32(firstLeadingBit(15269u), func_1(Struct_1(-182f, vec3<u32>(4294967295u, 51042u, 15150u), global1[_wgslsmith_index_u32(1u, 16u)], -212f), Struct_1(-480f, global1[_wgslsmith_index_u32(1u, 16u)], vec3<u32>(97797u, 4294967295u, 1u), -1200f), 78036u)), 0u), vec4<u32>(~1u, reverseBits(1u), 1u, ~1u)), func_3(_wgslsmith_sub_vec4_u32(~vec4<u32>(328u, 1u, 0u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 55169u, 0u), vec4<u32>(22203u, 4294967295u, 1u, 917u))), func_2(-vec4<i32>(global0[_wgslsmith_index_u32(27312u, 13u)], 0i, u_input.a, global0[_wgslsmith_index_u32(74245u, 13u)]))).x & firstLeadingBit(_wgslsmith_add_u32(1u, ~76757u)));
    let var_1 = u_input.a;
    var var_2 = min(max(vec4<i32>(-(i32(-1i) * -39855i), var_1, _wgslsmith_sub_i32(13987i, ~global0[_wgslsmith_index_u32(62397u, 13u)]), u_input.a), vec4<i32>(var_1, 31230i, u_input.a, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), 13u)])), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_1, 32551i, u_input.a, -2147483647i)), vec4<i32>(var_1, 2769i, _wgslsmith_dot_vec4_i32(vec4<i32>(-44054i, -1691i, var_1, var_1), vec4<i32>(-1i, 14709i, u_input.a, global0[_wgslsmith_index_u32(1u, 13u)])), -66359i), vec4<i32>(abs(-84176i), ~40918i, 0i, max(0i, global0[_wgslsmith_index_u32(4294967295u, 13u)]))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(44818i, 1i, u_input.a, global0[_wgslsmith_index_u32(54222u, 13u)]), vec4<i32>(-23372i, var_1, 4041i, var_1), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], var_1, -3381i, -32532i)) << (select(vec4<u32>(23702u, 0u, 18403u, 2936u), vec4<u32>(16989u, 0u, 4294967295u, 18639u), false) % vec4<u32>(32u)), reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], 0i, var_1, global0[_wgslsmith_index_u32(97995u, 13u)])))));
    var_0 = _wgslsmith_div_u32(func_3(~vec4<u32>(1u, 1u, 1u, 1u), Struct_1(_wgslsmith_f_op_f32(trunc(func_2(vec4<i32>(-24352i, -45131i, 2147483647i, -1i)).a)), select(reverseBits(vec3<u32>(1u, 59319u, 0u)), _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(28826u, 16u)]), vec3<bool>(true, true, true)), vec3<u32>(102348u, 1u, 38993u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), global1[_wgslsmith_index_u32(0u, 16u)]) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(-183f, vec3<u32>(4294967295u, 16220u, 4294967295u), vec3<u32>(16916u, 4294967295u, 79330u), -887f), Struct_1(-273f, vec3<u32>(58754u, 4294967295u, 0u), global1[_wgslsmith_index_u32(30013u, 16u)], -213f), 2082f, Struct_1(944f, global1[_wgslsmith_index_u32(17805u, 16u)], vec3<u32>(0u, 4294967295u, 0u), -1108f)))))).x, ~firstLeadingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

