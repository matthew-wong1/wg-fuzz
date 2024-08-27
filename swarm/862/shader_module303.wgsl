struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(1559f, 10128u, vec4<u32>(0u, 58737u, 46450u, 4294967295u)), Struct_1(587f, 4294967295u, vec4<u32>(29163u, 0u, 20307u, 82867u)), Struct_1(-231f, 0u, vec4<u32>(0u, 33414u, 4294967295u, 1u)), Struct_1(-474f, 1u, vec4<u32>(24425u, 3538u, 101498u, 17638u)), Struct_1(674f, 11855u, vec4<u32>(1u, 94265u, 37390u, 4294967295u)), Struct_1(602f, 41143u, vec4<u32>(28391u, 1u, 3207u, 0u)), Struct_1(1128f, 44852u, vec4<u32>(43607u, 23951u, 4294967295u, 53399u)), Struct_1(1118f, 5187u, vec4<u32>(15950u, 1u, 43118u, 89602u)), Struct_1(429f, 65236u, vec4<u32>(496u, 63883u, 81991u, 54758u)), Struct_1(-692f, 0u, vec4<u32>(3217u, 46701u, 4294967295u, 0u)), Struct_1(-768f, 17102u, vec4<u32>(0u, 50503u, 4294967295u, 4294967295u)), Struct_1(-109f, 30157u, vec4<u32>(10903u, 29725u, 1u, 23772u)), Struct_1(-844f, 1u, vec4<u32>(4294967295u, 16675u, 32562u, 1u)), Struct_1(1532f, 55440u, vec4<u32>(0u, 4294967295u, 0u, 42909u)), Struct_1(1370f, 10692u, vec4<u32>(0u, 1u, 4294967295u, 65785u)), Struct_1(-777f, 4294967295u, vec4<u32>(0u, 49818u, 4294967295u, 4294967295u)), Struct_1(-266f, 26633u, vec4<u32>(51029u, 23009u, 4294967295u, 1u)), Struct_1(-146f, 22579u, vec4<u32>(6029u, 122755u, 19671u, 1u)), Struct_1(702f, 0u, vec4<u32>(1u, 1u, 32332u, 1u)), Struct_1(376f, 4294967295u, vec4<u32>(4294967295u, 1u, 1u, 0u)), Struct_1(972f, 43273u, vec4<u32>(1u, 1u, 50704u, 1u)), Struct_1(-504f, 1u, vec4<u32>(53176u, 49916u, 44006u, 0u)));

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-746f, 0u, vec4<u32>(0u, 1u, 4294967295u, 24101u)), Struct_1(-1202f, 71002u, vec4<u32>(55600u, 4294967295u, 4294967295u, 1u)), Struct_1(609f, 30969u, vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_1(1370f, 23279u, vec4<u32>(35070u, 21991u, 481u, 4294967295u)), Struct_1(106f, 23445u, vec4<u32>(29950u, 18636u, 4294967295u, 0u)), Struct_1(-694f, 0u, vec4<u32>(62313u, 4294967295u, 14435u, 4294967295u)), Struct_1(804f, 1u, vec4<u32>(0u, 1u, 1u, 34605u)), Struct_1(256f, 1u, vec4<u32>(1u, 73853u, 1718u, 17888u)));

var<private> global3: vec4<f32>;

var<private> global4: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(1u | _wgslsmith_add_u32(countOneBits(_wgslsmith_clamp_u32(15865u, 1u, 3814u)), ~0u), 8u)], 2147483647i, Struct_1(1172f, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = firstLeadingBit(arg_0.x);
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~1u), ~4294967295u, countOneBits(var_0.a.c.x), _wgslsmith_add_u32(countOneBits(var_0.a.b) | ~var_0.a.b, abs(27214u))), var_0.c.c);
    global1 = 1f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(870f)));
    var var_3 = var_0.a.c.yzx;
    return _wgslsmith_f_op_f32(var_0.c.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + var_0.a.a), var_0.c.a)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, global3.x))), 1f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>) -> vec3<f32> {
    var var_0 = 0u;
    let var_1 = arg_1.b.x;
    let var_2 = Struct_1(global3.x, 1u, _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~arg_0.c, abs(vec4<u32>(43059u, arg_0.b, arg_0.b, arg_0.c.x)), abs(vec4<u32>(arg_0.c.x, arg_0.c.x, 41499u, 4294967295u))), ~vec4<u32>(0u, arg_0.b, 26071u, 1u)), vec4<u32>(arg_0.c.x, ~abs(0u), 0u, 50914u)));
    let var_3 = ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_2.c.yy, vec2<u32>(5516u, 4294967295u)), vec2<u32>(arg_0.b, 1u)), reverseBits(max(arg_0.c.ww, vec2<u32>(var_2.c.x, var_2.b)))));
    global1 = arg_2.x;
    return vec3<f32>(var_2.a, _wgslsmith_f_op_f32(1608f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a))), var_2.a))), _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1633f)), _wgslsmith_f_op_f32(1000f + -388f)) * _wgslsmith_f_op_f32(-arg_0.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> vec3<f32> {
    global4 = u_input.a.x;
    var var_0 = -1017f;
    global3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a * arg_0.a))))), -1510f, _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) + 494f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(436f, -167f)) * _wgslsmith_f_op_f32(step(2485f, -1348f))), -707f, -175f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(882f, -1240f, arg_1.x, -276f) * vec4<f32>(222f, global3.x, -265f, -219f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(542f, arg_1.x, global3.x, arg_1.x)))), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))))))));
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + -772f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1.x))))));
    return vec3<f32>(global3.x, 706f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(arg_0.a * arg_0.a))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.x, arg_1.x), 8u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(global3.x, 1u, vec4<u32>(0u, 68045u, 815u, arg_1.x)), Struct_3(vec3<bool>(true, false, false), vec4<i32>(-1i, -54939i, 32490i, -2147483647i)), vec4<bool>(false, false, false, false))))), ~arg_1.x))));
    var var_1 = abs(u_input.a.x << (_wgslsmith_add_u32(~3372u, 7395u ^ arg_1.x) % 32u));
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(59897u, 8u)], -(~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(ceil(686f)), firstTrailingBit(~reverseBits(1u)), select(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) | vec4<u32>(0u, 1u, arg_1.x, arg_1.x), select(~arg_1, arg_1, vec4<bool>(false, false, false, true)), false)));
    global4 = firstLeadingBit(-1i);
    let var_3 = var_2;
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2041f, 1465f, var_3.c.a))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2897f), 1616f, var_3.c.a), global3.zyy, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))))));
}

fn func_5(arg_0: Struct_4) -> bool {
    global1 = any(vec3<bool>(all(vec2<bool>(true, arg_0.a.x < -649f)), !(1i < -u_input.a.x), select(true, true, !all(vec4<bool>(true, false, false, false)))));
    global2 = array<Struct_1, 8>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -635f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(global0[_wgslsmith_index_u32(77980u, 22u)], Struct_3(vec3<bool>(true, false, true), vec4<i32>(u_input.a.x, u_input.a.x, 479i, -9981i)), vec4<bool>(true, false, true, false))).x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(200f)), _wgslsmith_div_f32(586f, arg_0.a.x)))));
    var var_0 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(8438u, 68691u)), vec2<u32>(_wgslsmith_clamp_u32(18731u, 14814u, 0u), 94411u))), 50053u, 4294967295u, 1u);
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1221f, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<f32>(903f, arg_0.a.x, arg_0.a.x, global3.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 423f, -1000f, 751f), vec4<f32>(-242f, -838f, -375f, global3.x)), vec4<f32>(851f, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(true, true, true, true))))));
    return all(!vec3<bool>(false, false, true & all(vec3<bool>(false, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1302f;
    let var_1 = func_5(func_1(121f, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 19079u), abs(vec4<u32>(15292u, 1u, 0u, 28402u)), _wgslsmith_mod_vec4_u32(vec4<u32>(25449u, 1u, 17303u, 9402u), vec4<u32>(15374u, 20986u, 37667u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(select(var_0, global3.x, var_1))) - _wgslsmith_f_op_f32(global3.x + -1095f)))));
}

