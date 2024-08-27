struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(25413u, 1u, 4294967295u, 51268u), vec4<u32>(0u, 1u, 0u, 10008u), vec4<u32>(23726u, 4994u, 4294967295u, 4294967295u), vec4<u32>(1u, 67334u, 0u, 36760u), vec4<u32>(1u, 1u, 0u, 7516u), vec4<u32>(51888u, 0u, 28204u, 1u), vec4<u32>(16876u, 4294967295u, 27576u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(0u, 27742u, 71803u, 4294967295u), vec4<u32>(4294967295u, 0u, 44803u, 0u), vec4<u32>(0u, 27467u, 1u, 54177u), vec4<u32>(758u, 90738u, 4294967295u, 1u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 76771u, 4294967295u), vec4<u32>(54923u, 70668u, 4865u, 0u), vec4<u32>(12505u, 1u, 61317u, 23578u), vec4<u32>(53296u, 15898u, 35457u, 1u), vec4<u32>(61201u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 49184u, 4294967295u), vec4<u32>(46702u, 67095u, 33294u, 0u), vec4<u32>(4294967295u, 55704u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 58810u), vec4<u32>(1u, 4294967295u, 0u, 79107u), vec4<u32>(6552u, 51463u, 1u, 0u), vec4<u32>(61180u, 17369u, 1u, 38502u), vec4<u32>(0u, 0u, 58297u, 71018u), vec4<u32>(0u, 1u, 57802u, 12913u), vec4<u32>(1889u, 6353u, 1u, 4294967295u), vec4<u32>(38091u, 4294967295u, 40838u, 24301u), vec4<u32>(0u, 4294967295u, 21458u, 25341u));

var<private> global1: array<bool, 12> = array<bool, 12>(true, true, true, false, true, true, false, true, false, false, false, false);

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, true, false, false, true, false, false, false, true, true, false, true, true, true, true, true, false, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = u_input.a.wzy;
    let var_2 = arg_0;
    global1 = array<bool, 12>();
    var var_3 = -422f;
    return _wgslsmith_mult_vec4_i32(select(abs(vec4<i32>(4237i, 1i, firstTrailingBit(48005i), -1i)), countOneBits(vec4<i32>(0i, -52257i >> (arg_1 % 32u), -2603i, -2147483647i)), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1.x, u_input.b), 12u)]), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(6548i, 18289i, 0i, -24895i), vec4<i32>(_wgslsmith_mod_i32(14417i, -14551i), countOneBits(-43911i), 1i, -2147483647i >> (arg_1 % 32u))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global2 = array<bool, 19>();
    var var_0 = Struct_4(_wgslsmith_dot_vec4_i32(func_3(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_0)), 7147u), _wgslsmith_mod_vec4_i32(-vec4<i32>(-19825i, 23618i, -1i, 5222i), select(vec4<i32>(-1i, 6701i, 2147483647i, 42601i), vec4<i32>(-1i, -17731i, 1i, -1i), false)) << (u_input.a % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)));
    global2 = array<bool, 19>();
    var var_2 = vec2<i32>(-1i, select(_wgslsmith_mod_i32(i32(-1i) * -1i, 69830i), ~(~(-14909i) | (var_0.a << (u_input.b % 32u))), true));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * arg_0), var_1, var_1, _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, var_1)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, 2417f, 548f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(405f, -533f, var_1, arg_0), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, arg_0, -112f))))), !global2[_wgslsmith_index_u32(58840u, 19u)]))), 0u);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> i32 {
    global0 = array<vec4<u32>, 30>();
    var var_0 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1260f)), _wgslsmith_f_op_f32(min(-2236f, -1321f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(arg_1, arg_1)), 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -884f)))));
    global2 = array<bool, 19>();
    global2 = array<bool, 19>();
    var var_1 = !all(select(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false), vec2<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 12u)], true, false)), false), 32782u < ~u_input.c));
    return -85744i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-459f, 259f, -1783f, -1215f), vec4<f32>(512f, 173f, 719f, -258f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1080f, -399f, -1435f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2140f, 892f, -827f, 685f) + vec4<f32>(-957f, -260f, 1086f, -1023f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, 435f, 662f, 1269f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-180f, 883f, 535f, -1232f), vec4<f32>(851f, -1014f, -642f, -1053f), vec4<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true, global2[_wgslsmith_index_u32(u_input.b, 19u)], false)))))));
    global2 = array<bool, 19>();
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(-(min(vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<i32>(1i, 1i, 42246i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(2665u, u_input.b, 11616u), u_input.a.wxz) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(~(-29394i), max(-20709i, 73625i), _wgslsmith_dot_vec4_i32(vec4<i32>(40732i, 44842i, 3494i, 2147483647i), vec4<i32>(31352i, 2147483647i, -2147483647i, -48833i))), vec3<i32>(-2147483647i, -3529i, -16212i))), _wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, func_1(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.zyx, u_input.a.zxx))), func_3(var_0.x, u_input.a.x).x));
    var var_2 = ~(-46643i);
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 832f, var_0.x) + var_0)), _wgslsmith_f_op_vec4_f32(select(var_0, var_0, true)))), 0u), Struct_1(_wgslsmith_clamp_u32(81205u, min(_wgslsmith_add_u32(u_input.a.x, 4294967295u), ~u_input.a.x), 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_0, vec4<f32>(-1000f, -392f, var_0.x, -245f))))), -select(vec4<i32>(-23802i, var_1.x, -44755i, 29040i), vec4<i32>(-5548i, 0i, 2147483647i, -28933i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(u_input.b, 19u)], true, true)) | vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-29100i, var_1.x, var_1.x, -2147483647i), vec4<i32>(29461i, 1i, 0i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(16945i, var_1.x, var_1.x, var_1.x), vec4<i32>(-1i, var_1.x, var_1.x, 3639i)), var_1.x, ~var_1.x)));
    var_2 = -var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_div_vec3_u32(u_input.a.zzx, u_input.a.zyw))), ~vec3<u32>(firstLeadingBit(~u_input.b), var_3.a.b, reverseBits(u_input.a.x)), ~(~abs(~22372u)), -644f);
}

