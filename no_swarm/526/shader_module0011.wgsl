struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(26718u, 0u, 1u), vec3<u32>(0u, 4294967295u, 69083u), vec3<u32>(88294u, 758u, 1u), vec3<u32>(0u, 1u, 85253u), vec3<u32>(19763u, 33375u, 0u), vec3<u32>(4294967295u, 12051u, 70030u), vec3<u32>(78881u, 4294967295u, 84031u), vec3<u32>(0u, 0u, 3318u), vec3<u32>(0u, 4294967295u, 32741u), vec3<u32>(4294967295u, 14914u, 1u), vec3<u32>(57264u, 35495u, 4294967295u), vec3<u32>(7961u, 3722u, 18278u), vec3<u32>(115318u, 41742u, 98328u), vec3<u32>(29154u, 436u, 6015u), vec3<u32>(4294967295u, 73705u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 526u, 69332u), vec3<u32>(1u, 0u, 50676u), vec3<u32>(0u, 52199u, 0u), vec3<u32>(33256u, 45737u, 1u), vec3<u32>(1u, 880u, 73775u), vec3<u32>(0u, 20609u, 4294967295u), vec3<u32>(4294967295u, 0u, 43562u), vec3<u32>(15859u, 46346u, 0u), vec3<u32>(1u, 13973u, 36156u));

var<private> global1: f32;

var<private> global2: array<f32, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), true), vec2<u32>(~(~(~0u)), 29163u));
    let var_1 = countOneBits(vec3<i32>(u_input.a.x, select(~u_input.a.x, 1i << (var_0.b.x % 32u), select(var_0.a.x, true, true)), i32(-1i) * -2147483647i) & firstLeadingBit(vec3<i32>(u_input.a.x, abs(u_input.a.x), i32(-1i) * -2147483647i)));
    let var_2 = _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(var_0.b.x, 25u)] ^ _wgslsmith_div_vec3_u32(vec3<u32>(~var_0.b.x, abs(1206u), var_0.b.x), vec3<u32>(~4294967295u, var_0.b.x >> (var_0.b.x % 32u), 4294967295u | var_0.b.x)), ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.b.x, 1u), var_0.b.x), _wgslsmith_sub_u32(1u, var_0.b.x)), 25u)]);
    let var_3 = Struct_1(var_0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, var_2.x) | ~vec2<u32>(36388u, var_0.b.x), ~(vec2<u32>(var_0.b.x, 50814u) >> (var_0.b % vec2<u32>(32u)))) | ~_wgslsmith_sub_vec2_u32(var_2.yy, vec2<u32>(44103u, var_2.x)));
    global0 = array<vec3<u32>, 25>();
    return reverseBits(max(~abs(~4294967295u), _wgslsmith_mult_u32(var_2.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, _wgslsmith_mod_u32(var_3.b.x, var_0.b.x)))));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global0 = array<vec3<u32>, 25>();
    let var_0 = Struct_1(vec3<bool>(any(vec4<bool>(arg_0.x, !arg_0.x, !arg_0.x, arg_0.x | true)), !(!arg_0.x), arg_0.x), _wgslsmith_sub_vec2_u32(vec2<u32>(~abs(0u), func_3()), ~vec2<u32>(1u, 1u)));
    let var_1 = max(u_input.a.x ^ -1i, 0i) ^ 1i;
    let var_2 = 54766i | (_wgslsmith_sub_i32(-2147483647i, u_input.a.x) << (countOneBits(0u) % 32u));
    let var_3 = 1u;
    return _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(firstTrailingBit(var_3), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_3), vec2<u32>(4294967295u, 0u)))), vec2<u32>(firstLeadingBit(12325u), ~var_0.b.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    global2 = array<f32, 30>();
    var var_0 = max(arg_2.xz, -vec2<i32>(_wgslsmith_mult_i32(-32868i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -4911i, arg_2.x), arg_2.xyw)), 1899i));
    let var_1 = arg_1;
    let var_2 = global2[_wgslsmith_index_u32(1u, 30u)];
    global2 = array<f32, 30>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3, 30u)])) + _wgslsmith_f_op_f32(min(-1264f, global2[_wgslsmith_index_u32(~0u, 30u)]))))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: u32) -> u32 {
    global0 = array<vec3<u32>, 25>();
    global2 = array<f32, 30>();
    global1 = global2[_wgslsmith_index_u32(1u, 30u)];
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, firstTrailingBit(firstTrailingBit(arg_2)), 4294967295u, 10843u), countOneBits(~vec4<u32>(arg_3, 4294967295u, 56274u, arg_1) | vec4<u32>(4294967295u, arg_3, 4294967295u, 1u))), false, ~(~(~vec4<i32>(u_input.a.x, -27979i, 1i, u_input.a.x))), func_2(select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, true), ~30429u >= _wgslsmith_dot_vec4_u32(vec4<u32>(30829u, arg_1, 0u, 0u), vec4<u32>(arg_3, arg_2, arg_0, arg_1))))));
    var var_1 = _wgslsmith_mult_u32(0u, arg_1);
    return 39678u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~(~func_1(~4294967295u, 1u, _wgslsmith_mult_u32(30046u, 0u), ~25497u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(59452u, 1u, 1u, 0u), vec4<u32>(0u, 47877u, 0u, 562u))), func_3()), 37712u));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f) - -224f)), 1209f)));
    let x = u_input.a;
    s_output = StorageBuffer(39586i, _wgslsmith_dot_vec2_i32(u_input.a | abs(u_input.a), vec2<i32>(-1i, ~(-2147483647i))) | u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0, var_0, var_0, 24846u), vec4<u32>(53173u, 39088u, var_0, var_0), vec4<bool>(true, false, true, false)), vec4<u32>(var_0, var_0, var_0, var_0)), 30u)], global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 70864u, 36183u), vec4<u32>(var_0, 0u, 34048u, var_0))), 30u)])), _wgslsmith_div_f32(452f, global2[_wgslsmith_index_u32(43294u, 30u)]));
}

