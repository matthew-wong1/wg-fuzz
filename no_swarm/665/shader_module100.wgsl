struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: bool;

var<private> global2: f32 = 2017f;

var<private> global3: array<bool, 1>;

var<private> global4: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(211f, 1113f, -156f), vec3<f32>(914f, 1000f, -480f), vec3<f32>(364f, -191f, -154f), vec3<f32>(-624f, 675f, -1576f), vec3<f32>(913f, -575f, -1000f), vec3<f32>(391f, 160f, -1000f), vec3<f32>(-464f, 1546f, -188f), vec3<f32>(-942f, 1056f, -1000f), vec3<f32>(500f, -962f, 2247f), vec3<f32>(-1437f, -2674f, 320f), vec3<f32>(-328f, -1210f, 1880f), vec3<f32>(-861f, 1003f, -330f), vec3<f32>(-366f, -816f, -1144f), vec3<f32>(1000f, 1319f, -596f), vec3<f32>(-863f, 253f, 984f), vec3<f32>(-1733f, 188f, -381f), vec3<f32>(-185f, -1117f, -1075f), vec3<f32>(-316f, -1149f, -1000f), vec3<f32>(-1000f, 1000f, -1778f), vec3<f32>(941f, 721f, -788f), vec3<f32>(2116f, -1000f, 1016f), vec3<f32>(-1000f, -191f, 1059f), vec3<f32>(675f, 210f, -1550f), vec3<f32>(-1036f, 651f, -413f), vec3<f32>(-372f, -1000f, -586f), vec3<f32>(-1113f, 510f, -148f), vec3<f32>(-282f, 342f, -1742f), vec3<f32>(-348f, 423f, 885f), vec3<f32>(219f, 1040f, -435f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global3 = array<bool, 1>();
    return vec3<bool>(arg_2.a != ~(~countOneBits(64802u)), any(!vec2<bool>(arg_0, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-521f * 587f) - _wgslsmith_f_op_f32(-202f + _wgslsmith_f_op_f32(400f - -366f))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1763f + 1086f) + _wgslsmith_f_op_f32(trunc(-1660f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1492f, -235f)) - _wgslsmith_f_op_f32(ceil(1127f))))));
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    global0 = array<i32, 6>();
    global1 = global3[_wgslsmith_index_u32(u_input.d, 1u)];
    let var_0 = select(select(!func_3(arg_0.x, Struct_1(4294967295u, vec4<u32>(u_input.d, 29095u, 16105u, 1u), u_input.d), Struct_1(u_input.d, vec4<u32>(54852u, u_input.d, 42578u, 2751u), 43821u)), vec3<bool>(select(true, true, true), !(global3[_wgslsmith_index_u32(u_input.d, 1u)] & global3[_wgslsmith_index_u32(40520u, 1u)]), arg_0.x), !func_3(arg_0.x & global3[_wgslsmith_index_u32(u_input.d, 1u)], Struct_1(4294967295u, vec4<u32>(u_input.d, 1u, u_input.d, 26804u), 1u), Struct_1(u_input.d, vec4<u32>(59205u, 4294967295u, u_input.d, 20053u), 0u))), vec3<bool>(any(vec3<bool>(arg_0.x, func_3(global3[_wgslsmith_index_u32(u_input.d, 1u)], Struct_1(16116u, vec4<u32>(u_input.d, 14259u, 1u, 15069u), u_input.d), Struct_1(1u, vec4<u32>(13835u, u_input.d, 36408u, u_input.d), 1u)).x, true)), true, !global3[_wgslsmith_index_u32(_wgslsmith_add_u32(8245u, u_input.d), 1u)]), (true & (~4294967295u >= select(u_input.d, u_input.d, global3[_wgslsmith_index_u32(1u, 1u)]))) | !(_wgslsmith_sub_i32(-27533i, -1i) != u_input.e.x));
    var var_1 = _wgslsmith_clamp_vec3_u32(~(abs(vec3<u32>(4294967295u, 61268u, 4294967295u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(6679u, 1u, 1u), vec3<u32>(49007u, 4294967295u, u_input.d)) % vec3<u32>(32u))) ^ abs(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 35984u, u_input.d), vec3<u32>(0u, 72466u, 0u), var_0), ~vec3<u32>(u_input.d, 4294967295u, u_input.d), ~vec3<u32>(24716u, 35330u, u_input.d))), vec3<u32>(~select(_wgslsmith_mult_u32(0u, u_input.d), max(u_input.d, u_input.d), var_0.x && true), ~22983u, abs(~u_input.d << (u_input.d % 32u))), ~(~(~(vec3<u32>(71437u, 21054u, 47527u) & vec3<u32>(u_input.d, 0u, u_input.d)))));
    let var_2 = select(select(!select(vec4<bool>(var_0.x, false, arg_0.x, var_0.x), select(vec4<bool>(var_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, true, global3[_wgslsmith_index_u32(23794u, 1u)], true), true), false), !vec4<bool>(!var_0.x, true, all(var_0), any(var_0)), select(select(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(false, var_0.x, var_0.x, true), true), select(!vec4<bool>(arg_0.x, global3[_wgslsmith_index_u32(1u, 1u)], arg_0.x, true), vec4<bool>(arg_0.x, true, true, false), select(vec4<bool>(arg_0.x, var_0.x, true, arg_0.x), vec4<bool>(var_0.x, true, arg_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true))), global3[_wgslsmith_index_u32(u_input.d, 1u)])), select(vec4<bool>(true, true && (39715i <= u_input.b.x), func_3(global3[_wgslsmith_index_u32(max(0u, 34063u), 1u)], Struct_1(u_input.d, vec4<u32>(u_input.d, 18060u, 21694u, u_input.d), 50103u), Struct_1(var_1.x, vec4<u32>(1u, u_input.d, u_input.d, 4294967295u), u_input.d)).x, false), select(select(!vec4<bool>(global3[_wgslsmith_index_u32(33340u, 1u)], var_0.x, false, global3[_wgslsmith_index_u32(var_1.x, 1u)]), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, var_0.x, false, global3[_wgslsmith_index_u32(u_input.d, 1u)])), select(vec4<bool>(arg_0.x, arg_0.x, var_0.x, true), vec4<bool>(global3[_wgslsmith_index_u32(var_1.x, 1u)], true, false, var_0.x), vec4<bool>(false, global3[_wgslsmith_index_u32(var_1.x, 1u)], global3[_wgslsmith_index_u32(var_1.x, 1u)], var_0.x))), select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 1u)], true, var_0.x, global3[_wgslsmith_index_u32(var_1.x, 1u)]), vec4<bool>(true, true, var_0.x, false), !vec4<bool>(global3[_wgslsmith_index_u32(69818u, 1u)], false, global3[_wgslsmith_index_u32(u_input.d, 1u)], false)), false), any(arg_0)), select(select(!(!vec4<bool>(true, arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(u_input.d, 1u)])), vec4<bool>(all(var_0), any(vec3<bool>(false, false, true)), var_0.x == true, global3[_wgslsmith_index_u32(var_1.x, 1u)]), !(!vec4<bool>(global3[_wgslsmith_index_u32(58155u, 1u)], true, var_0.x, false))), !(!vec4<bool>(true, true, arg_0.x, false)), vec4<bool>(!all(vec3<bool>(false, var_0.x, true)), var_0.x, arg_0.x, all(vec3<bool>(true, var_0.x, global3[_wgslsmith_index_u32(u_input.d, 1u)])))));
    return vec2<bool>(arg_0.x, all(!var_2) || (_wgslsmith_f_op_f32(select(1000f, 121f, !var_2.x)) > _wgslsmith_div_f32(551f, -257f)));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = !select(!(!(!vec2<bool>(global3[_wgslsmith_index_u32(18482u, 1u)], false))), func_2(!(!vec2<bool>(false, arg_0))), (33026u ^ u_input.d) > ~21038u);
    let var_1 = Struct_1(reverseBits(abs(_wgslsmith_mult_u32(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 25037u, 10844u, u_input.d), vec4<u32>(13629u, 4294967295u, 3834u, u_input.d))))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_mod_u32(0u, u_input.d) & _wgslsmith_div_u32(0u, 31821u), firstTrailingBit(select(arg_1, 37750u, var_0.x)), ~u_input.d), firstLeadingBit(min(vec4<u32>(u_input.d, 1u, arg_1, 4294967295u), ~vec4<u32>(arg_1, arg_1, 2552u, 0u)))), 18047u);
    global3 = array<bool, 1>();
    let var_2 = Struct_1(_wgslsmith_clamp_u32(~var_1.b.x, _wgslsmith_add_u32(22956u, 84472u), abs(var_1.b.x)), select(~vec4<u32>(51734u, 68454u, arg_1, 0u), min(_wgslsmith_mult_vec4_u32(var_1.b, vec4<u32>(var_1.b.x, 68920u, var_1.b.x, var_1.b.x)), var_1.b << (vec4<u32>(u_input.d, u_input.d, var_1.b.x, 6729u) % vec4<u32>(32u))), select(!vec4<bool>(true, arg_0, true, true), vec4<bool>(global3[_wgslsmith_index_u32(1u, 1u)], true, var_0.x, true), arg_0)) & vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.b.yxy, vec3<u32>(11923u, var_1.b.x, var_1.c)), vec3<u32>(u_input.d, 4294967295u, 4294967295u)), 0u, 0u, ~(~43901u)), 397u);
    let var_3 = -444f;
    return Struct_1(17279u, select(~vec4<u32>(~42729u, countOneBits(var_2.c), ~u_input.d, 1u), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 51162u), 1u), ~(~4294967295u), ~var_1.a, firstLeadingBit(min(29261u, arg_1))), arg_0), _wgslsmith_dot_vec3_u32(var_1.b.wwz, var_2.b.xxy ^ firstTrailingBit(max(var_2.b.xzx, var_1.b.zyw))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(2147483647i, ~u_input.b.x) >> ((~firstTrailingBit(1u) & ~_wgslsmith_div_u32(u_input.d, u_input.d)) % 32u);
    var_0 = _wgslsmith_dot_vec3_i32(abs(abs(abs(firstTrailingBit(vec3<i32>(u_input.e.x, global0[_wgslsmith_index_u32(4679u, 6u)], 15825i))))), -vec3<i32>(14741i, global0[_wgslsmith_index_u32(~(~0u), 6u)], _wgslsmith_add_i32(~(-71662i), -66875i)));
    let var_1 = func_1(false, ~(~u_input.d));
    let var_2 = 11171u;
    global1 = all(vec2<bool>(true, true));
    var var_3 = vec2<u32>(func_1(false, 4294967295u).b.x, countOneBits(firstLeadingBit(44518u)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(2015f)))) * 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~select(abs(vec3<u32>(0u, u_input.d, var_2)), vec3<u32>(var_1.c, 59860u, 4294967295u), func_2(vec2<bool>(false, true)).x), var_1.b.yyy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-415f, 313f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-961f, -362f)) + vec2<f32>(351f, -2353f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 945f)));
}

