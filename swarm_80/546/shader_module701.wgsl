struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(0u, 1u, 44683u), vec3<u32>(57559u, 68407u, 1u), vec3<u32>(11980u, 45210u, 1u), vec3<u32>(13252u, 0u, 1u), vec3<u32>(33913u, 28672u, 12024u));

var<private> global2: f32;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(4294967295u, 25163u, false), Struct_1(9156u, 0u, true), Struct_1(16749u, 14662u, true), Struct_1(1u, 0u, false), Struct_1(13343u, 33302u, false), Struct_1(4294967295u, 1u, false), Struct_1(46091u, 1u, true), Struct_1(1u, 1u, true));

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(55691u, 42480u, false), Struct_1(71774u, 1u, true), Struct_1(0u, 67539u, false), Struct_1(0u, 4294967295u, true), Struct_1(13670u, 1u, false), Struct_1(19936u, 118750u, true), Struct_1(4294967295u, 0u, true), Struct_1(10605u, 1u, false), Struct_1(26614u, 4294967295u, true), Struct_1(30068u, 0u, false), Struct_1(1u, 1u, true), Struct_1(23698u, 101887u, true), Struct_1(0u, 43046u, false), Struct_1(7504u, 15351u, true), Struct_1(0u, 69747u, true), Struct_1(1u, 4294967295u, true), Struct_1(4294967295u, 70852u, false), Struct_1(52341u, 4294967295u, true), Struct_1(74389u, 0u, false), Struct_1(59290u, 1u, false), Struct_1(0u, 103256u, true), Struct_1(27691u, 4294967295u, false), Struct_1(55575u, 0u, false), Struct_1(0u, 0u, true), Struct_1(20088u, 4294967295u, false), Struct_1(12856u, 1u, true), Struct_1(0u, 0u, false), Struct_1(71008u, 1u, false), Struct_1(17759u, 53827u, false), Struct_1(0u, 1u, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1071f))), -2173f)) - vec3<f32>(1000f, _wgslsmith_f_op_f32(-163f + 1339f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1001f))))));
    let var_1 = vec3<i32>(-(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 387i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), firstLeadingBit(vec3<i32>(u_input.a.x, -1i, 12359i))) & -2588i), u_input.a.x, ~min(max(reverseBits(16953i), max(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), countOneBits(vec2<i32>(1i, 1i)))));
    let var_2 = global3[_wgslsmith_index_u32(16675u, 8u)];
    global1 = array<vec3<u32>, 5>();
    global4 = array<Struct_1, 30>();
    return _wgslsmith_add_vec3_u32(select(min(global1[_wgslsmith_index_u32(1u ^ u_input.c.x, 5u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a, u_input.b, 4294967295u), u_input.c, vec3<u32>(u_input.c.x, 1183u, 1u))), vec3<u32>(1u, var_2.a, 0u), any(vec3<bool>(true, false, false))), reverseBits(vec3<u32>(u_input.b ^ 1u, u_input.c.x, var_2.a >> (26318u % 32u)))) | vec3<u32>(_wgslsmith_clamp_u32(1u, ~14402u, _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_add_u32(28141u, u_input.c.x))), _wgslsmith_dot_vec3_u32(reverseBits(u_input.c), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(var_2.a, 0u)), 5u)]), u_input.b);
}

fn func_2() -> Struct_1 {
    let var_0 = 0i;
    let var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 79530u), vec3<u32>(3564u, u_input.b, 46375u)), 79905u) | 37961u, _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, 22479u, 0u), global1[_wgslsmith_index_u32(4294967295u, 5u)], true), ~vec3<u32>(4294967295u, 1u, 0u)), abs(~u_input.c), true), func_3()), any(vec2<bool>(false, true)));
    return global4[_wgslsmith_index_u32(4294967295u, 30u)];
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1280f, _wgslsmith_f_op_f32(trunc(-1000f)), -384f, _wgslsmith_f_op_f32(f32(-1f) * -1262f))))));
    var var_1 = !(1249f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * 1647f)))));
    let var_2 = abs(u_input.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(290f, var_0.x)) + vec2<f32>(_wgslsmith_f_op_f32(floor(-2415f)), -2418f))));
    let var_4 = global4[_wgslsmith_index_u32(4294967295u, 30u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 8>();
    var var_0 = func_1();
    let var_1 = var_0.c;
    var var_2 = Struct_1(1u, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(0u, u_input.c.x, 0u, 45289u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b << (u_input.b % 32u), abs(39055u), var_0.b, 4294967295u >> (0u % 32u)), max(select(vec4<u32>(var_0.a, 1u, var_0.a, u_input.b), vec4<u32>(0u, u_input.b, 0u, 15667u), var_0.c), reverseBits(vec4<u32>(10753u, u_input.c.x, var_0.b, u_input.c.x))))), !var_0.c);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1485f)), -1098f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-619f)))), vec3<f32>(-1576f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -760f), -1154f, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-583f, _wgslsmith_f_op_f32(186f + -735f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f - 311f) - _wgslsmith_f_op_f32(abs(-1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(min(var_3.x, -1249f)), false)), 1478f, var_3.x) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(806f)), var_3.x, var_3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2395f, -1445f, 2259f)))), u_input.b);
}

