struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3>;

var<private> global1: array<f32, 4> = array<f32, 4>(-1351f, -312f, -871f, 1201f);

var<private> global2: array<vec3<f32>, 24>;

var<private> global3: array<u32, 4>;

var<private> global4: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(-58904i, -1i, 1i), vec3<i32>(-27443i, 1i, 12713i), vec3<i32>(i32(-2147483648), 56749i, i32(-2147483648)), vec3<i32>(32986i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -40846i), vec3<i32>(-8039i, 66601i, 80042i), vec3<i32>(1i, i32(-2147483648), 40043i), vec3<i32>(6401i, -50942i, -28119i), vec3<i32>(-31631i, 53353i, 1i), vec3<i32>(44371i, -1i, 1i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(25618i, 2147483647i, 2147483647i), vec3<i32>(-24023i, 14409i, 0i), vec3<i32>(2147483647i, -12751i, -5757i), vec3<i32>(0i, i32(-2147483648), -14601i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(-24806i, i32(-2147483648), -19143i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> u32 {
    global4 = array<vec3<i32>, 18>();
    var var_0 = global4[_wgslsmith_index_u32(~1972u, 18u)];
    var var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), arg_1), select(!vec3<bool>(false, arg_1, false), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, false, arg_1)), true)));
    global2 = array<vec3<f32>, 24>();
    let var_2 = Struct_1(24909u);
    return max(26029u, var_2.a) ^ firstTrailingBit(u_input.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> u32 {
    global0 = array<vec4<f32>, 3>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -155f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f - global1[_wgslsmith_index_u32(0u, 4u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)) + -195f))));
    var var_1 = vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), any(vec3<bool>(true, false, true))), vec2<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(false, true, false))))), (_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(arg_0, arg_0)) << (abs(4294967295u) % 32u)) != 1u, any(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)))), !all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)));
    let var_2 = vec4<i32>(~0i, u_input.a.x, u_input.c, _wgslsmith_mod_i32(arg_3, u_input.a.x));
    global3 = array<u32, 4>();
    return min(1u ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(78611u, 0u, 24710u, 4294967295u), ~vec4<u32>(123585u, 2748u, 4294967295u, 0u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 145051u, arg_0.x, 1752u), _wgslsmith_clamp_vec4_u32(vec4<u32>(10774u, arg_0.x, global3[_wgslsmith_index_u32(41721u, 4u)], 0u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4294967295u, 75230u, u_input.b), vec4<u32>(global3[_wgslsmith_index_u32(0u, 4u)], arg_0.x, u_input.b, u_input.b)))), arg_0.x);
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1835f + -1426f) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_4(vec2<u32>(u_input.b & 1u, func_3(64231i, true, vec3<u32>(16691u, u_input.b, 4294967295u))), Struct_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(7811u, 4u)])), Struct_2(global1[_wgslsmith_index_u32(min(u_input.b, u_input.b), 4u)]), _wgslsmith_div_i32(u_input.c, i32(-1i) * -56798i)), 4u)]));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~4294967295u, ~u_input.b) << (4294967295u % 32u), _wgslsmith_add_u32(~(u_input.b >> (4294967295u % 32u)), u_input.b)), u_input.b, global3[_wgslsmith_index_u32(u_input.b, 4u)] | global3[_wgslsmith_index_u32(func_3(u_input.c, false, select(vec3<u32>(4294967295u, u_input.b, 42609u), _wgslsmith_mult_vec3_u32(vec3<u32>(35316u, 9896u, 1u), vec3<u32>(u_input.b, 86092u, 4294967295u)), any(vec4<bool>(true, true, false, false)))), 4u)]);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 1103f)), vec2<f32>(global1[_wgslsmith_index_u32(~15166u, 4u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(460f, var_0)), -1177f)))))));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>) -> vec2<f32> {
    let var_0 = vec2<bool>(any(vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), all(vec2<bool>(true, false)) | true, false, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)))), true);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0, _wgslsmith_mult_u32(1u, 38706u), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55818u, 4u)], 4u)], 4u)]), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 14587u, arg_0), vec3<u32>(1u, u_input.b, 39617u))), 4u)], _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(u_input.b, 4u)]), 1u)) | 4294967295u, u_input.b);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(72854u, 4u)], -156f)))))), _wgslsmith_f_op_f32(-arg_1.x));
    global0 = array<vec4<f32>, 3>();
    var var_3 = Struct_1(18686u);
    return arg_1;
}

fn func_1() -> vec3<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]) - vec2<f32>(-163f, global1[_wgslsmith_index_u32(1u, 4u)]))), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 4u)]), _wgslsmith_f_op_f32(round(-1055f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1791f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(18877u, 4u)])))));
    global3 = array<u32, 4>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(0u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, var_1.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -932f) + vec2<f32>(global1[_wgslsmith_index_u32(78247u, 4u)], 1109f)))));
    var var_2 = Struct_1(u_input.b);
    return vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_div_u32(1357u, u_input.b), 1u), 4294967295u, 75795u) ^ (firstLeadingBit(~(~vec3<u32>(0u, u_input.b, global3[_wgslsmith_index_u32(u_input.b, 4u)]))) >> ((~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a, global3[_wgslsmith_index_u32(43712u, 4u)], 61614u), vec3<u32>(var_2.a, var_2.a, u_input.b), vec3<u32>(global3[_wgslsmith_index_u32(6874u, 4u)], 0u, 53430u)) << (vec3<u32>(~4294967295u, ~global3[_wgslsmith_index_u32(0u, 4u)], func_4(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20814u, 4u)], 4u)], 8044u), Struct_2(1009f), Struct_2(1063f), 24610i)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_6(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = -firstTrailingBit(max(2147483647i, max(-u_input.c, ~(-2147483647i))));
    let var_1 = vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)) == !(!(16690u > u_input.b)), any(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true)), false);
    global1 = array<f32, 4>();
    return Struct_2(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(countOneBits(reverseBits(arg_0.x)), 4u)], 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 4>();
    let var_0 = func_6(max(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], 13404u, global3[_wgslsmith_index_u32(50642u, 4u)])), func_1()), func_1()));
    global2 = array<vec3<f32>, 24>();
    let var_1 = vec2<bool>(any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, true, false), false)), true);
    global2 = array<vec3<f32>, 24>();
    let var_2 = func_6(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(9213u, global3[_wgslsmith_index_u32(1u, 4u)], 0u), select(vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(1u, 4u)], u_input.b), vec3<u32>(8347u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 30951u), var_1.x)), vec3<u32>(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 4u)], u_input.b, var_1.x), global3[_wgslsmith_index_u32(5790u, 4u)] & u_input.b, global3[_wgslsmith_index_u32(1u, 4u)])));
    let var_3 = firstTrailingBit(countOneBits(-vec2<i32>(-2147483647i ^ u_input.a.x, abs(-1i))));
    let var_4 = Struct_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(u_input.b, ~u_input.b) ^ _wgslsmith_add_u32(func_4(vec2<u32>(1u, 4294967295u), var_2, var_2, var_3.x) | ~1u, ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)])), 4u)], 4u)]);
    global2 = array<vec3<f32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(15491i, _wgslsmith_mod_vec4_u32(~(~countOneBits(vec4<u32>(37768u, u_input.b, global3[_wgslsmith_index_u32(4294967295u, 4u)], u_input.b))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.a, 1u, u_input.b, global3[_wgslsmith_index_u32(0u, 4u)]), vec4<u32>(var_4.a, 9184u, 41327u, var_4.a)), abs(vec4<u32>(u_input.b, u_input.b, 13944u, var_4.a)))));
}

