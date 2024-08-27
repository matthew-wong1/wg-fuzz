struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(1000f, 845f, -1290f, -1712f), vec4<f32>(786f, 1000f, 799f, -2143f), vec4<f32>(-1404f, 1008f, 1734f, 263f), vec4<f32>(-787f, 1169f, 788f, 1587f), vec4<f32>(1728f, -1375f, 783f, -1068f), vec4<f32>(292f, -571f, -1577f, 642f), vec4<f32>(-464f, -2437f, -902f, 168f), vec4<f32>(597f, -406f, 1913f, 368f), vec4<f32>(1683f, -542f, -1342f, -314f));

var<private> global1: array<Struct_2, 12>;

var<private> global2: array<vec4<bool>, 29>;

var<private> global3: array<vec4<bool>, 7>;

var<private> global4: Struct_2 = Struct_2(Struct_1(2147483647i, vec4<i32>(1i, 2147483647i, i32(-2147483648), 1i)), 500f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global3 = array<vec4<bool>, 7>();
    let var_0 = _wgslsmith_dot_vec3_u32(~min(vec3<u32>(1u, select(0u, 73890u, true), ~4294967295u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 39980u, 64928u), vec3<u32>(4294967295u, 28476u, 4294967295u), true), ~vec3<u32>(0u, 7369u, 4294967295u))), min(vec3<u32>(~1u, 369u, 4294967295u), ~(~min(vec3<u32>(16115u, 69956u, 41549u), vec3<u32>(20577u, 12528u, 19681u)))));
    let var_1 = 2147483647i;
    var var_2 = select(vec3<u32>(29175u, var_0, var_0), ~(~vec3<u32>(var_0 ^ 7504u, 1u, 68730u)), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)), 894f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(floor(-1330f))), vec2<f32>(_wgslsmith_f_op_f32(min(global4.b, global4.b)), _wgslsmith_f_op_f32(-global4.b))), vec2<bool>(!(var_0 == 6195u), var_0 > 37404u))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-874f, global4.b), vec2<f32>(526f, -210f), true)) + vec2<f32>(740f, -676f))))));
    return !any(vec4<bool>(all(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, true)) || false, false, !select(true, false, true)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> i32 {
    let var_0 = vec4<u32>(~(~_wgslsmith_add_u32(min(1495u, arg_3.x), 23349u)), 36289u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_clamp_u32(23050u, 0u, arg_3.x), 4294967295u), 1u) >> (arg_3.x % 32u), ~arg_3.x);
    let var_1 = arg_0;
    let var_2 = func_3() & arg_2.x;
    global3 = array<vec4<bool>, 7>();
    let var_3 = global1[_wgslsmith_index_u32(40429u & _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 0u), arg_3.xz), ~vec2<u32>(var_0.x, var_0.x)), _wgslsmith_add_u32(var_0.x << (934u % 32u), _wgslsmith_dot_vec3_u32(arg_3, var_0.xyx)) ^ 12020u), 12u)];
    return -abs(-6294i) << ((arg_3.x << (~41903u % 32u)) % 32u);
}

fn func_4(arg_0: i32) -> f32 {
    let var_0 = global4.a;
    global1 = array<Struct_2, 12>();
    let var_1 = Struct_2(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(841f)))));
    global3 = array<vec4<bool>, 7>();
    global3 = array<vec4<bool>, 7>();
    return -836f;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = arg_3.x;
    let var_1 = -_wgslsmith_div_i32(select(~global4.a.a, -_wgslsmith_mod_i32(-2147483647i, -11182i), true & (false & arg_3.x)), ~(-35647i));
    var var_2 = !(_wgslsmith_f_op_f32(-857f * _wgslsmith_f_op_f32(func_4(func_2(global4.a, global4.a.a, arg_3, vec3<u32>(9536u, arg_2, 4294967295u))))) <= _wgslsmith_f_op_f32(189f - _wgslsmith_f_op_f32(f32(-1f) * -391f)));
    var_0 = !arg_3.x;
    var var_3 = arg_0;
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(56081u, 36207u, arg_2, arg_2), vec4<u32>(16770u, arg_2, 23404u, 47968u)), 0u)) >> (arg_2 % 32u), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global4.a, _wgslsmith_f_op_f32(global4.b + global4.b), 0u, !(!vec2<bool>(true, any(global2[_wgslsmith_index_u32(6450u, 29u)]))));
    var var_1 = min(_wgslsmith_dot_vec4_u32(~vec4<u32>(57841u, ~0u, _wgslsmith_mod_u32(0u, 26089u), 17744u), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), 1u);
    global1 = array<Struct_2, 12>();
    var_0 = Struct_2(func_1(Struct_1(~global4.a.a, vec4<i32>(~u_input.a.x, global4.a.a, i32(-1i) * -17988i, 44382i)), -603f, 1u, vec2<bool>(select(any(vec2<bool>(true, false)), true, true), true)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_add_i32(var_0.a.b.x, 28889i)))));
    global4 = func_1(func_1(global4.a, _wgslsmith_f_op_f32(-280f + 104f), countOneBits(_wgslsmith_div_u32(~1u, max(4294967295u, 1u))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true))).a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f)), global4.b)), max(10008u, abs(1u)), vec2<bool>(true, true));
    var var_2 = global4.a;
    var_2 = func_1(Struct_1(44927i, -firstLeadingBit(vec4<i32>(global4.a.b.x, var_2.b.x, var_2.a, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1095f), ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(7285u, 1284u, 4294967295u), vec3<u32>(16437u, 1u, 25545u)) & ~0u)), !vec2<bool>(all(vec3<bool>(true, true, true)), !(global4.b <= var_0.b))).a;
    let var_3 = Struct_2(global4.a, -124f);
    var var_4 = select(all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))) && any(select(vec4<bool>(true, true, true, true), select(global3[_wgslsmith_index_u32(89679u, 7u)], global3[_wgslsmith_index_u32(53245u, 7u)], false), select(global2[_wgslsmith_index_u32(17753u, 29u)], global2[_wgslsmith_index_u32(16755u, 29u)], vec4<bool>(false, true, false, false)))), false, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.a, ~vec3<u32>(1u, 1u, 1u));
}

