struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(18452u, 0u), vec2<u32>(17566u, 1u), vec2<u32>(90326u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(77304u, 46971u), vec2<u32>(83828u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(24781u, 1u), vec2<u32>(8154u, 70460u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 29561u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(85459u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(123088u, 34299u), vec2<u32>(27265u, 4294967295u), vec2<u32>(42590u, 16648u), vec2<u32>(1074u, 4294967295u), vec2<u32>(40743u, 0u), vec2<u32>(0u, 68321u), vec2<u32>(4294967295u, 0u), vec2<u32>(76853u, 19924u), vec2<u32>(42585u, 4294967295u));

var<private> global1: array<u32, 19> = array<u32, 19>(1740u, 4294967295u, 1u, 4294967295u, 0u, 38066u, 4294967295u, 147269u, 0u, 0u, 4294967295u, 21609u, 1u, 14441u, 78627u, 65906u, 50750u, 45850u, 34102u);

var<private> global2: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_1(u_input.a.x, true);
    var var_1 = !((-1000f <= _wgslsmith_f_op_f32(floor(-301f))) && (arg_0.x & false));
    var var_2 = select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.x, var_0.b), var_0.a <= ~global1[_wgslsmith_index_u32(46440u, 19u)]);
    var var_3 = var_2.x | true;
    var var_4 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1381f) - _wgslsmith_f_op_f32(1057f * 808f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-556f))), countOneBits(arg_1 << (4294967295u % 32u)) != arg_1, true);
    return vec4<bool>(!any(!select(arg_0.zxz, arg_0.yyy, arg_0.yyw)), true, true, var_0.b);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = 2147483647i;
    var_0 = 2147483647i;
    var var_1 = vec2<bool>(all(func_3(vec4<bool>(arg_0.x != -37307i, true, true, true), ~1i)), _wgslsmith_f_op_f32(1020f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1891f + 1489f)))) > 475f);
    let var_2 = (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(0u, 19u)]), 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)] << (u_input.b.x % 32u)), 19u)], 19u)] << (_wgslsmith_add_u32(select(4294967295u, 65006u, true), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, u_input.b.x), 19u)]) % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_div_u32(countOneBits(u_input.a.x), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1436u, u_input.b.x), 19u)])), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)]) % 32u);
    var var_3 = vec3<f32>(-680f, _wgslsmith_f_op_f32(1407f - 422f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(251f)) + _wgslsmith_f_op_f32(-867f + -834f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)))));
    return Struct_1(max(~global1[_wgslsmith_index_u32(3584u, 19u)], global1[_wgslsmith_index_u32(~u_input.a.x, 19u)]), true);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0.x;
    var var_1 = func_2(vec2<i32>(1i, 1i) << (arg_0.wz % vec2<u32>(32u)));
    var var_2 = -1203f;
    let var_3 = -(~max(select(vec2<i32>(-37762i, 0i), vec2<i32>(2147483647i, -59460i), arg_1.x), -vec2<i32>(4166i, -51828i)) << (arg_0.xw % vec2<u32>(32u)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1746f + -875f)))));
    return func_2(firstLeadingBit(var_3));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1538f, arg_2) - vec2<f32>(1646f, 773f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -579f)))))) * vec2<f32>(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(578f - 646f) + 2074f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), 230f) + vec2<f32>(var_0.x, -1008f)) + vec2<f32>(_wgslsmith_div_f32(arg_2, var_0.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -812f)))));
    let var_1 = u_input.b.x ^ _wgslsmith_mod_u32(min(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23360u, 19u)] << (u_input.b.x % 32u), 19u)], arg_0.a), 0u);
    let var_2 = func_3(vec4<bool>(!(func_2(vec2<i32>(-38077i, 24637i)).b | false), arg_1, false, false), select((1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 26694u, 1u), vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 105823u, 11942u)) % 32u)) | (i32(-1i) * -2147483647i), countOneBits(~1i), true & arg_0.b));
    let var_3 = Struct_1(~_wgslsmith_add_u32(~1u, func_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.b.x, 80800u), vec4<u32>(24190u, 0u, u_input.a.x, u_input.b.x)), vec4<bool>(var_2.x, var_2.x, true, true), func_1(vec4<u32>(1u, global1[_wgslsmith_index_u32(2607u, 19u)], 14168u, var_1), var_2, Struct_1(var_1, arg_1))).a), max(-35614i, ~(-2147483647i)) >= (_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(11594i, -21743i, -2641i, -18372i), vec4<i32>(-1i, 44814i, -15316i, 0i)), 1i) & 15942i));
    return Struct_4(Struct_3(~select(~u_input.b.x, countOneBits(u_input.b.x), all(var_2))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_1(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(32602u, 19u)], global1[_wgslsmith_index_u32(arg_1.a.a, 19u)]), 19u)], 19u)], 19u)]), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -21164i), max(vec2<i32>(-53460i, 16740i), vec2<i32>(-2147483647i, -1i))), firstTrailingBit(abs(-6752i)), ~firstLeadingBit(-8517i)) <= 1i);
    var var_1 = 837f;
    global0 = array<vec2<u32>, 25>();
    var_0 = func_1(vec4<u32>(var_0.a, var_0.a, _wgslsmith_sub_u32(~29542u, firstTrailingBit(4294967295u) & var_0.a), ~72818u & u_input.a.x), !arg_0, func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-26918i, 1i), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(38476i, 5766i), vec2<i32>(0i, 12803i), vec2<i32>(0i, -1i))))));
    var var_2 = var_0.b || var_0.b;
    return ~48230u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 25>();
    var var_0 = Struct_3(0u);
    global2 = array<vec2<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_5(vec4<bool>(true, true, true, true), func_4(func_1(vec4<u32>(u_input.a.x, 0u, global1[_wgslsmith_index_u32(4294967295u, 19u)], 1u), vec4<bool>(true, true, true, false), Struct_1(u_input.a.x, false)), false, _wgslsmith_f_op_f32(select(-1638f, -656f, true)))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(var_0.a, var_0.a, var_0.a), 2382u ^ var_0.a), u_input.a)), firstLeadingBit(-(~_wgslsmith_mult_i32(0i, 97420i))));
}

