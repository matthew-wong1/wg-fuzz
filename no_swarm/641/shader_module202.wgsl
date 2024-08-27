struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(4294967295u, 148343u, 4294967295u, 1u, 4294967295u, 0u, 17140u, 30155u, 33762u, 0u, 1u, 49307u, 3828u, 0u, 4869u, 39181u, 47043u, 76720u, 48158u, 72613u);

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false));

var<private> global2: bool;

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(-1048f, vec2<f32>(1000f, 1000f)), true, 421f), Struct_2(Struct_1(-1714f, vec2<f32>(1000f, -1200f)), true, -798f), Struct_2(Struct_1(-550f, vec2<f32>(-1408f, -1832f)), false, 1000f), Struct_2(Struct_1(-140f, vec2<f32>(-1000f, -1043f)), true, 1239f), Struct_2(Struct_1(-163f, vec2<f32>(-1673f, 535f)), false, 850f), Struct_2(Struct_1(1165f, vec2<f32>(911f, 967f)), false, -393f), Struct_2(Struct_1(801f, vec2<f32>(322f, -793f)), false, -248f), Struct_2(Struct_1(-1000f, vec2<f32>(451f, 1000f)), true, -353f), Struct_2(Struct_1(861f, vec2<f32>(-664f, 729f)), false, 2258f), Struct_2(Struct_1(-1057f, vec2<f32>(-1000f, 1066f)), true, -1650f));

var<private> global4: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(-976f, vec2<f32>(1578f, 807f)), Struct_3(-1000f, vec2<f32>(984f, 285f)), Struct_3(-779f, vec2<f32>(-1395f, 1000f)), Struct_3(664f, vec2<f32>(390f, 363f)), Struct_3(-729f, vec2<f32>(1000f, -623f)), Struct_3(-1188f, vec2<f32>(1423f, -945f)), Struct_3(1643f, vec2<f32>(719f, 643f)), Struct_3(-1834f, vec2<f32>(-311f, 241f)), Struct_3(-702f, vec2<f32>(437f, 293f)), Struct_3(921f, vec2<f32>(639f, 505f)), Struct_3(1456f, vec2<f32>(-1000f, -868f)), Struct_3(-1126f, vec2<f32>(561f, 429f)), Struct_3(1594f, vec2<f32>(177f, -1000f)), Struct_3(1380f, vec2<f32>(-1316f, -227f)), Struct_3(214f, vec2<f32>(1094f, -764f)), Struct_3(1025f, vec2<f32>(-865f, 1000f)), Struct_3(-618f, vec2<f32>(-545f, -228f)), Struct_3(413f, vec2<f32>(-351f, -616f)), Struct_3(-1000f, vec2<f32>(386f, -959f)), Struct_3(1000f, vec2<f32>(405f, 362f)), Struct_3(341f, vec2<f32>(116f, -957f)), Struct_3(271f, vec2<f32>(1312f, -131f)), Struct_3(-325f, vec2<f32>(1000f, 685f)), Struct_3(1151f, vec2<f32>(-882f, -1241f)), Struct_3(816f, vec2<f32>(1261f, -522f)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = abs(vec4<i32>(i32(-1i) * -1i, ~firstLeadingBit(max(-40168i, 0i)), countOneBits(firstLeadingBit(_wgslsmith_clamp_i32(-1i, 35302i, 44428i))), max((-27005i << (arg_2 % 32u)) >> (0u % 32u), ~_wgslsmith_clamp_i32(0i, 3777i, -7823i))));
    global0 = array<u32, 20>();
    global2 = arg_1.b;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.b.x), vec2<f32>(_wgslsmith_f_op_f32(167f - -779f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.b.x)))))), true, arg_0.a);
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, 39706i, reverseBits(i32(-1i) * -1875i)), var_0.zxx | min(-vec3<i32>(var_0.x, -1i, -12886i), firstTrailingBit(vec3<i32>(var_0.x, var_0.x, -1688i))));
    return -1074i;
}

fn func_4(arg_0: i32) -> vec2<f32> {
    global4 = array<Struct_3, 25>();
    let var_0 = all(select(select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), vec3<bool>(false, false, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))));
    global0 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(360f, 2907f, 1999f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-567f, 667f, -769f, -112f) - vec4<f32>(309f, 637f, -1504f, -1892f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2463f, 1014f, 586f, 247f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-327f, 478f, -1169f, -1462f), vec4<f32>(-146f, 841f, -102f, 401f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(844f - -1625f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-385f - -511f) - 2205f), 499f, 2011f))));
    var var_2 = _wgslsmith_add_u32(countOneBits(~32306u), ~u_input.c.x);
    return vec2<f32>(var_1.x, var_1.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-391f, _wgslsmith_f_op_f32(1415f - _wgslsmith_f_op_f32(f32(-1f) * -113f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(194f)) - _wgslsmith_f_op_f32(-arg_0.a.b.x)), arg_2.b.x))), arg_2.b);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-507f + _wgslsmith_f_op_f32(floor(var_0.a))))), _wgslsmith_f_op_vec2_f32(func_4(-func_3(Struct_3(1000f, vec2<f32>(var_0.b.x, -133f)), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, arg_1.x, 40500u), u_input.c))))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    global4 = array<Struct_3, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(global3[_wgslsmith_index_u32(42480u, 10u)], u_input.c.yyy, Struct_1(413f, vec2<f32>(712f, -1259f)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 28u)])))) - vec2<f32>(1f, 1f))));
    let var_1 = -vec2<i32>(i32(-1i) * -11970i, 1i);
    var var_2 = vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)] & 4294967295u, firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x << (1u % 32u), global0[_wgslsmith_index_u32(0u | u_input.a, 20u)])) ^ ((_wgslsmith_mult_u32(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(106779u, 20u)], 20u)]) << (max(46524u, 0u) % 32u)) >> (0u % 32u)), select(~(~_wgslsmith_clamp_u32(u_input.a, global0[_wgslsmith_index_u32(0u, 20u)], 1u)), 0u, true), ~(~1u));
    let var_3 = Struct_1(var_0.x, vec2<f32>(_wgslsmith_div_f32(-1059f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), -1058f)), _wgslsmith_f_op_f32(-var_0.x)));
    return global4[_wgslsmith_index_u32(u_input.b, 25u)];
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2;
    global1 = array<vec4<bool>, 28>();
    global3 = array<Struct_2, 10>();
    var var_1 = global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~17635u, arg_0 ^ 87671u), 20u)], 10u)];
    global2 = !var_1.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1465f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mult_i32(-24602i, 0i))).x, _wgslsmith_f_op_f32(select(var_1.a.a, -360f, var_1.b)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.b.x, -174f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(732f, vec2<f32>(_wgslsmith_f_op_f32(min(766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1249f + 730f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(195f)) * _wgslsmith_f_op_f32(f32(-1f) * -212f))));
    var var_1 = 15335u;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(func_5(0u, any(vec3<bool>(true, true, true)) || true, func_1(-countOneBits(-1i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) - _wgslsmith_f_op_f32(-901f + var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.x, 406f), var_0.b)) * var_0.b)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))), var_0.a));
    let var_3 = -54075i;
    var var_4 = vec2<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_2.a))));
    global2 = all(!vec3<bool>(false, true, all(vec2<bool>(true, false))));
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-514f + _wgslsmith_f_op_f32(1030f + -814f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1276f - 1209f), _wgslsmith_f_op_f32(-var_4.x)))), !select(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), true), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.c) * _wgslsmith_f_op_vec2_f32(func_2(global3[_wgslsmith_index_u32(0u, 10u)], u_input.c.zwz, var_5.a, global1[_wgslsmith_index_u32(u_input.a, 28u)])).x) - 1000f) - _wgslsmith_f_op_f32(max(var_2.b.x, 213f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(592f, -395f, _wgslsmith_f_op_f32(func_5(u_input.a, var_5.b, Struct_3(var_0.a, var_5.a.b), Struct_1(var_2.a, var_0.b))))))));
}

