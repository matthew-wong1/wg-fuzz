struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec4<bool>(true, true, true, false), Struct_1(vec4<f32>(628f, -136f, -1017f, -1846f), vec2<bool>(false, false), 1i, false), true, -2815i, vec2<bool>(true, false)), Struct_4(vec4<bool>(true, true, false, true), Struct_1(vec4<f32>(-1000f, -663f, 442f, 445f), vec2<bool>(false, true), -55900i, false), true, 2147483647i, vec2<bool>(false, true)), Struct_4(vec4<bool>(true, false, false, true), Struct_1(vec4<f32>(726f, -1558f, 691f, -1128f), vec2<bool>(false, false), -29307i, true), false, i32(-2147483648), vec2<bool>(true, true)), Struct_4(vec4<bool>(false, true, true, false), Struct_1(vec4<f32>(-1079f, -781f, 2711f, 1205f), vec2<bool>(true, false), 2147483647i, true), true, -4759i, vec2<bool>(true, false)), Struct_4(vec4<bool>(false, false, false, true), Struct_1(vec4<f32>(-994f, 451f, 1705f, -619f), vec2<bool>(true, true), -34135i, false), false, -16989i, vec2<bool>(false, false)));

var<private> global1: array<u32, 31> = array<u32, 31>(21219u, 16403u, 5148u, 4294967295u, 4294967295u, 69079u, 1u, 31726u, 63039u, 40897u, 0u, 1u, 47269u, 0u, 1u, 25097u, 4294967295u, 1u, 80600u, 0u, 4294967295u, 63293u, 0u, 4294967295u, 4294967295u, 0u, 1u, 37283u, 4294967295u, 1u, 4294967295u);

var<private> global2: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<f32> {
    global2 = -432f;
    let var_0 = firstLeadingBit(_wgslsmith_mod_vec4_i32(-reverseBits(~vec4<i32>(u_input.a.x, 1i, -1i, 0i)), -vec4<i32>(-74755i, 1i, u_input.a.x, 11848i) | vec4<i32>(76327i, u_input.a.x, reverseBits(-39688i), 2147483647i)));
    let var_1 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<bool>(true, true, true)), vec3<bool>(true, u_input.b.x < abs(u_input.b.x), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))), !vec3<bool>(true, all(vec4<bool>(true, false, true, true)), true)));
    let var_2 = Struct_3(2147483647i, vec4<bool>(!all(vec4<bool>(false, var_1, var_1, true)), (1u == _wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 31u)])) && !(var_1 & false), true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(-280f - -2170f), 1f)) - vec4<f32>(410f, _wgslsmith_f_op_f32(sign(-536f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1544f, 971f)), _wgslsmith_f_op_f32(max(-357f, _wgslsmith_f_op_f32(f32(-1f) * -555f))))), vec3<f32>(-774f, -754f, 146f), Struct_1(vec4<f32>(-706f, 129f, _wgslsmith_f_op_f32(-819f * _wgslsmith_f_op_f32(max(-2663f, -983f))), -804f), select(select(vec2<bool>(true, true), vec2<bool>(var_1, true), true), vec2<bool>(var_1 | var_1, all(vec2<bool>(var_1, var_1))), vec2<bool>(!var_1, false | var_1)), ~(i32(-1i) * -u_input.a.x), all(select(vec3<bool>(true, true, true), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, false), var_1), !vec3<bool>(var_1, false, false)))));
    var var_3 = _wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)]) | vec2<u32>(firstLeadingBit(9507u), ~u_input.b.x)), max(vec2<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(52972u, u_input.b.x), 1u), select(4294967295u, 31991u, var_2.b.x)), u_input.b));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.e.a.x, _wgslsmith_div_f32(685f, -614f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f * var_2.e.a.x)), _wgslsmith_f_op_f32(sign(var_2.c.x))))), var_2.e.a.x, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f * var_2.c.x))), -1353f));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global1 = array<u32, 31>();
    let var_0 = Struct_2(~(-_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-706f, -869f, 178f, -1803f) - vec4<f32>(-233f, -653f, 1616f, -341f)) + vec4<f32>(-1116f, -1000f, 1074f, -1698f)), vec4<bool>(true, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38931u, 31u)], 31u)], 31u)] <= global1[_wgslsmith_index_u32(0u, 31u)], true, any(vec2<bool>(true, false)))))), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 29283u, 4294967295u, 1u), arg_0)));
    global0 = array<Struct_4, 5>();
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-986f, 1719f, -1280f) + var_0.b.yww))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))) * vec3<f32>(var_0.b.x, var_0.b.x, 787f)));
    var var_2 = var_0;
    return -121f;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(~(i32(-1i) * -15415i), countOneBits(-75817i))), reverseBits(~(~arg_0 >> ((1u & u_input.b.x) % 32u))), firstLeadingBit(-(~0i)), u_input.a.x);
    global1 = array<u32, 31>();
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x >> (u_input.b.x % 32u)), vec3<u32>(10672u, ~(~24062u), _wgslsmith_mod_u32(u_input.b.x, global1[_wgslsmith_index_u32(~96737u, 31u)]))), ~vec3<u32>(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 31u)], 100689u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(19359u, 23542u, 4294967295u), vec3<u32>(u_input.b.x, 26907u, 1u), vec3<u32>(1u, global1[_wgslsmith_index_u32(118452u, 31u)], u_input.b.x))), u_input.b.x));
    global0 = array<Struct_4, 5>();
    global1 = array<u32, 31>();
    return Struct_2(firstTrailingBit(var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(~vec4<u32>(2934u, 11223u, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 1u))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(755f, -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1973f)), 1f)), _wgslsmith_f_op_f32(max(-158f, _wgslsmith_f_op_f32(round(-479f)))))), ~0u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    global2 = func_1(-9812i).b.x;
    let var_0 = vec2<u32>(max(15769u, ~(global1[_wgslsmith_index_u32(54942u, 31u)] ^ u_input.b.x)) & 0u, 124878u);
    global1 = array<u32, 31>();
    global2 = _wgslsmith_f_op_vec4_f32(func_3()).x;
    global2 = -1311f;
    return countOneBits(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(1u & func_4(func_1(firstTrailingBit(u_input.a.x)), Struct_3(-u_input.a.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(364f, -1015f, -1565f, -738f) * vec4<f32>(-560f, -442f, 458f, -1212f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(358f, -112f, 2935f) * vec3<f32>(1480f, -493f, -129f)), Struct_1(vec4<f32>(712f, -263f, 1409f, 446f), vec2<bool>(true, false), 33757i, false)), true, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(365f)));
    let var_2 = -414f;
    var_0 = 1u;
    let var_3 = firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_add_u32(~u_input.b.x, ~684u), abs(countOneBits(global1[_wgslsmith_index_u32(0u, 31u)])), 22975u)));
    let var_4 = Struct_4(!select(vec4<bool>(true, true, true, var_2 < var_1), vec4<bool>(all(vec4<bool>(true, true, true, false)), select(true, true, false), var_2 <= 290f, select(false, false, true)), select(true, false, false) | false), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, var_1, -576f, var_1), vec4<f32>(var_2, 231f, var_2, 1000f))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), -2712i, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)))), true, -21830i, select(vec2<bool>(true | (u_input.a.x > u_input.a.x), true), vec2<bool>(true, true), vec2<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x & 0i, 48679i), u_input.a.xx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3()).xz + _wgslsmith_f_op_vec4_f32(func_3()).xw), ~68936u);
}

