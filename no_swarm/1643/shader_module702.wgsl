struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -1i, vec2<bool>(true, false));

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<i32, 32> = array<i32, 32>(27625i, 56237i, 22895i, -1i, -1i, -38138i, i32(-2147483648), 1i, -7905i, 22677i, -1i, 1i, -1i, 22033i, -4427i, 26062i, -8832i, -42884i, i32(-2147483648), 2147483647i, -1i, -16453i, 2147483647i, 2739i, -51175i, -2708i, 2147483647i, i32(-2147483648), -7451i, -9607i, 1784i, -31705i);

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true, 25553i, vec2<bool>(true, true)), Struct_1(false, -15101i, vec2<bool>(false, false)), Struct_1(false, -79045i, vec2<bool>(false, false)), Struct_1(true, 2147483647i, vec2<bool>(false, true)), Struct_1(true, i32(-2147483648), vec2<bool>(true, true)), Struct_1(true, -1i, vec2<bool>(true, false)), Struct_1(false, 2198i, vec2<bool>(false, false)), Struct_1(false, i32(-2147483648), vec2<bool>(false, true)), Struct_1(false, 7685i, vec2<bool>(false, false)), Struct_1(false, 1i, vec2<bool>(true, true)), Struct_1(true, 41628i, vec2<bool>(true, true)), Struct_1(true, 3873i, vec2<bool>(false, true)), Struct_1(true, -50980i, vec2<bool>(true, true)), Struct_1(true, 1i, vec2<bool>(false, true)), Struct_1(true, -45655i, vec2<bool>(true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = ~(-arg_0.b);
    let var_1 = select(select(vec2<bool>(global0.a, any(vec3<bool>(false, global0.a, global0.c.x)) & false), !(!vec2<bool>(true, arg_0.c.x)), vec2<bool>(true, false)), global0.c, true);
    var var_2 = vec2<u32>(u_input.a, u_input.a);
    let var_3 = vec4<bool>(any(vec3<bool>(true, true, true)), true, true, false);
    let var_4 = min(abs(_wgslsmith_mult_i32(-2147483647i, min(global2[_wgslsmith_index_u32(u_input.a, 32u)], -38647i) << (var_2.x % 32u))), firstLeadingBit(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-27210i, 31329i, 1i, 1i) | vec4<i32>(u_input.b, u_input.b, global2[_wgslsmith_index_u32(u_input.a, 32u)], 0i)), -vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], -1i, global0.b, arg_0.b))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2058f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1217f)) * _wgslsmith_f_op_f32(-300f + -1083f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1755f, -354f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -158f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1221f) * _wgslsmith_f_op_f32(-1632f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)))));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true, -2954i, global0.c), global0.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a, 2u)], u_input.b))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(349f, -555f))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mod_i32(u_input.b, global2[_wgslsmith_index_u32(u_input.a, 32u)]), firstTrailingBit(0i)), ~(vec3<i32>(global0.b, -23560i, -2147483647i) >> (vec3<u32>(1u, u_input.a, 72286u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global0.b, -24539i, global2[_wgslsmith_index_u32(u_input.a, 32u)]), vec4<i32>(-41468i, -1i, global0.b, global0.b)), _wgslsmith_dot_vec2_i32(arg_0, arg_0), _wgslsmith_mult_i32(0i, -76794i))), select(firstLeadingBit(vec3<i32>(0i, global0.b, arg_0.x)), vec3<i32>(-1457i >> (u_input.a % 32u), -5868i, max(0i, arg_0.x)), vec3<bool>(true, any(vec3<bool>(true, true, true)), true))), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1329f, -1145f))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(290f * 802f))), 4294967295u == _wgslsmith_mod_u32(~u_input.a, ~113228u)));
    var var_1 = Struct_1(false && !global0.c.x, ~0i, select(!global0.c, !select(select(var_0.c, vec2<bool>(false, var_0.c.x), global0.c), !var_0.c, !global0.c.x), select(var_0.c, global0.c, all(vec4<bool>(global0.c.x, var_0.c.x, var_0.a, var_0.c.x)))));
    let var_2 = countOneBits(min(-(vec3<i32>(var_0.b, -2147483647i, -15759i) >> (~vec3<u32>(0u, u_input.a, 81671u) % vec3<u32>(32u))), min(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b, var_0.b, 21944i), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a, 32u)], var_1.b), vec3<i32>(-1i, var_1.b, arg_0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, var_1.b), vec3<i32>(50555i, -1i, 2147483647i))), vec3<i32>(u_input.b, var_0.b, global0.b) ^ vec3<i32>(u_input.b, -26747i, arg_0.x))));
    return u_input.a;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_add_i32(~arg_2.b, -global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~arg_1.x >> (~arg_1.x % 32u)), 32u)]);
    var var_1 = Struct_1(any(vec3<bool>(arg_3.a, true, arg_2.c.x)), arg_0, select(global0.c, !select(arg_2.c, vec2<bool>(false, global0.a), true), all(select(vec4<bool>(global0.a, arg_3.c.x, false, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, global0.c.x, arg_2.c.x, true), vec4<bool>(false, global0.c.x, arg_3.a, global0.c.x), vec4<bool>(arg_2.c.x, global0.a, true, arg_2.c.x))))));
    var_1 = Struct_1(false, arg_0, arg_3.c);
    var var_2 = ~(arg_1.x >> (arg_1.x % 32u));
    return Struct_1(true, min(1i, global0.b), !select(select(vec2<bool>(true, true), select(arg_3.c, arg_3.c, vec2<bool>(var_1.a, arg_2.a)), var_1.c), arg_3.c, var_1.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = -708f;
    global1 = array<Struct_1, 2>();
    let var_1 = func_4(-21342i >> (u_input.a % 32u), _wgslsmith_mod_vec4_u32(vec4<u32>(func_2(vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(95263u, 32u)])), ~2648u, max(54694u, select(6822u, u_input.a, false)), _wgslsmith_sub_u32(~u_input.a, ~u_input.a)), min(vec4<u32>(abs(u_input.a), u_input.a | 21196u, select(u_input.a, u_input.a, false), max(4294967295u, u_input.a)), reverseBits(abs(vec4<u32>(26647u, 58690u, 0u, 0u))))), Struct_1(true, _wgslsmith_mod_i32(-42989i, arg_0.b), !vec2<bool>(all(vec4<bool>(false, false, true, true)), 4294967295u > u_input.a)), arg_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(-1148f, 353f)), -506f, _wgslsmith_f_op_f32(f32(-1f) * -1471f)), vec3<f32>(-2125f, _wgslsmith_f_op_f32(max(174f, -267f)), _wgslsmith_f_op_f32(max(-780f, -759f)))))))));
    var var_3 = vec3<bool>(arg_0.a, all(vec4<bool>(arg_0.c.x, true, !global0.c.x, any(var_1.c))) & false, false);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 40909u;
    global2 = array<i32, 32>();
    let var_1 = select(select(vec3<bool>(func_1(Struct_1(false, global0.b, vec2<bool>(global0.c.x, global0.c.x)), global0.b), global0.c.x, any(!vec3<bool>(false, global0.c.x, true))), select(select(!vec3<bool>(global0.c.x, global0.c.x, global0.a), vec3<bool>(global0.a, global0.c.x, true), true), !vec3<bool>(false, global0.c.x, global0.c.x), !vec3<bool>(global0.c.x, global0.c.x, global0.a)), !(!vec3<bool>(global0.a, false, false))), select(!select(vec3<bool>(true, global0.c.x, global0.a), select(vec3<bool>(false, false, global0.c.x), vec3<bool>(global0.a, global0.c.x, global0.c.x), global0.c.x), true), vec3<bool>(all(vec3<bool>(global0.a, global0.c.x, global0.c.x)), true && any(vec4<bool>(false, true, global0.a, true)), true || (global0.c.x & false)), global0.a), select(!vec3<bool>(all(global0.c), true, !global0.a), select(!select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.c.x, false, global0.c.x), vec3<bool>(true, global0.a, global0.c.x)), vec3<bool>(true, func_4(-1i, vec4<u32>(91573u, 0u, var_0, 0u), Struct_1(false, 42589i, global0.c), Struct_1(false, u_input.b, vec2<bool>(true, false))).c.x, all(vec4<bool>(true, false, global0.c.x, global0.a))), !select(vec3<bool>(false, global0.a, false), vec3<bool>(global0.c.x, false, global0.c.x), true)), !(!vec3<bool>(global0.a, global0.a, global0.a))));
    global2 = array<i32, 32>();
    let var_2 = Struct_1(!global0.a, 6066i, global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(786f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1702f)))), 1097f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-721f - -908f))))), _wgslsmith_div_u32(abs(u_input.a), var_0), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(67636u, u_input.a, u_input.a) ^ vec3<u32>(1u, var_0, var_0), reverseBits(vec3<u32>(u_input.a, var_0, var_0))), ~(vec3<u32>(u_input.a, 4294967295u, 4294967295u) << (vec3<u32>(u_input.a, 38403u, u_input.a) % vec3<u32>(32u)))), select(reverseBits(vec3<u32>(var_0, u_input.a, 869u)) & min(vec3<u32>(var_0, u_input.a, 4294967295u), vec3<u32>(4294967295u, var_0, 4294967295u)), vec3<u32>(49951u, var_0 ^ 40981u, 4294967295u), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(514f, 683f), vec2<f32>(-1244f, -1000f), global0.c)), vec2<f32>(253f, -1787f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(263f, 2560f) * vec2<f32>(586f, -1934f))))));
}

