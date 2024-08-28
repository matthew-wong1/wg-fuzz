struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<bool, 25> = array<bool, 25>(true, true, false, true, true, false, true, true, false, false, true, false, false, false, true, false, true, false, false, true, true, false, false, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1210f))), 369f)));
    var var_1 = arg_2.b.b;
    let var_2 = u_input.a.x;
    var var_3 = !(!arg_1.x) && true;
    var var_4 = 1000f;
    return 0u;
}

fn func_3() -> i32 {
    let var_0 = select(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 25u)], true, global1[_wgslsmith_index_u32(1u, 25u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 25u)], false), vec3<bool>(global1[_wgslsmith_index_u32(18974u, 25u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 25u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 25u)]), global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(1u, 21u)]), 25u)])), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 25u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26616u, 21u)], 21u)], 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 25u)], global1[_wgslsmith_index_u32(1u, 25u)], true), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8991u, 21u)], 25u)]), global1[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(4294967295u, 21u)] ^ 1u), 25u)]), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, global1[_wgslsmith_index_u32(69335u, 25u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 25u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 25u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6590u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 25u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(49342u, 25u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 25u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 25u)]), false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 25u)], true, global1[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(false, true, true)), global1[_wgslsmith_index_u32(abs(1u), 25u)]));
    let var_1 = countOneBits(~(~reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15247u, 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)])))) >> (vec2<u32>(~_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(94607u, 21u)], 21u)], 18386u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)]), 21u)]), ~0u) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-336f, -1714f), _wgslsmith_f_op_f32(-572f - 1030f), -622f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-477f, -1000f, -965f), vec3<f32>(688f, -711f, 558f))), vec3<f32>(1f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1162f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-356f, 150f, 722f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2230f, -512f, 1604f), vec3<f32>(-499f, -681f, -486f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-566f, 1170f, -1016f), vec3<f32>(-1000f, -252f, -628f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-525f, 479f, -812f), vec3<f32>(-2197f, -436f, 955f), global1[_wgslsmith_index_u32(var_1.x, 25u)])))), vec3<bool>(!global1[_wgslsmith_index_u32(68790u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30932u, 21u)], 21u)], 21u)], 25u)], var_0.x, global1[_wgslsmith_index_u32(1u >> (_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(22851u, 21u)]) % 32u), 25u)]))));
    let var_3 = Struct_5(vec4<u32>(~global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(4294967295u | func_1(Struct_4(var_1, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true), vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 25u)], var_0.x), false), Struct_5(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u, 42621u, 1u), Struct_2(83999u, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 21u)])), u_input.a.x)), 21u)], abs(_wgslsmith_sub_u32(var_1.x, global0[_wgslsmith_index_u32(select(77073u, var_1.x, false), 21u)])), global0[_wgslsmith_index_u32(countOneBits(55647u), 21u)]), Struct_2(var_1.x, Struct_1(global0[_wgslsmith_index_u32(0u, 21u)])), u_input.a.x);
    let var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~var_3.a, max(vec4<u32>(var_1.x, var_1.x, 38851u, 0u), var_3.a)), ~var_3.a), firstLeadingBit(var_3.a));
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(1i, u_input.a.x)) ^ u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3.c, var_3.c, 8803i) | vec4<i32>(33217i, var_3.c, u_input.a.x, u_input.a.x), vec4<i32>(5210i, var_3.c, 0i, var_3.c) | vec4<i32>(u_input.a.x, var_3.c, u_input.a.x, u_input.a.x))), u_input.a.zy);
}

fn func_2() -> Struct_3 {
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    var var_0 = Struct_4(firstLeadingBit(~abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17918u, 21u)], 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(1u, 21u)]))), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(-2243i, 34021i), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, ~u_input.a.x, func_3())), 10146i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(108f, _wgslsmith_f_op_f32(max(112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(374f, -1304f)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(var_1.x)), var_1.x);
    return Struct_3(Struct_2(abs(global0[_wgslsmith_index_u32(4294967295u, 21u)]) ^ global0[_wgslsmith_index_u32(var_0.a.x, 21u)], Struct_1(var_0.a.x)), Struct_2(reverseBits(abs(~global0[_wgslsmith_index_u32(36333u, 21u)])), Struct_1(global0[_wgslsmith_index_u32(~19790u, 21u)])));
}

fn func_4(arg_0: Struct_3) -> f32 {
    global0 = array<u32, 21>();
    let var_0 = countOneBits(~arg_0.a.a);
    var var_1 = Struct_3(arg_0.a, Struct_2(_wgslsmith_mod_u32(~21159u, 15938u), Struct_1(~var_0)));
    let var_2 = vec3<bool>(u_input.a.x < u_input.a.x, global1[_wgslsmith_index_u32(0u, 25u)], true);
    var var_3 = select(func_1(Struct_4(~vec2<u32>(var_0, var_1.a.a), abs(~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i)), _wgslsmith_mult_i32(2545i, 7995i) >> (arg_0.a.b.a % 32u)), vec2<bool>(var_2.x, !(!var_2.x)), Struct_5(countOneBits(vec4<u32>(77338u, arg_0.a.a, 0u, 443u)), Struct_2(~arg_0.b.b.a, func_2().b.b), ~(~u_input.a.x))), reverseBits(max(func_2().a.a, ~reverseBits(global0[_wgslsmith_index_u32(var_0, 21u)]))), false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1128f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, -612f))))) - _wgslsmith_f_op_f32(658f * _wgslsmith_f_op_f32(-681f - _wgslsmith_f_op_f32(select(552f, -1866f, false))))) + -2220f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5((_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(129791u, 21u)], 21u)], 1u), vec4<u32>(4294967295u, 56698u, global0[_wgslsmith_index_u32(75192u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32860u, 21u)], 21u)])), _wgslsmith_div_vec4_u32(vec4<u32>(34658u, global0[_wgslsmith_index_u32(31102u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29159u, 21u)], 21u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)]))) << (firstLeadingBit(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3765u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21912u, 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]))) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(vec4<u32>(func_1(Struct_4(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10399u, 21u)], 21u)], global0[_wgslsmith_index_u32(4439u, 21u)]), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), vec2<bool>(true, false), Struct_5(vec4<u32>(global0[_wgslsmith_index_u32(55450u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40814u, 21u)], 21u)]), Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28158u, 21u)], 21u)], Struct_1(83085u)), u_input.a.x)), ~global0[_wgslsmith_index_u32(1u, 21u)], ~0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(64669u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 29393u)), 21u)]), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45880u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global0[_wgslsmith_index_u32(1u, 21u)])), vec4<u32>(global0[_wgslsmith_index_u32(38772u, 21u)], global0[_wgslsmith_index_u32(19544u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30112u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16226u, 21u)], 21u)], 21u)], 21u)], 21u)]) & vec4<u32>(51388u, global0[_wgslsmith_index_u32(47936u, 21u)], 1u, 45874u))), Struct_2(~global0[_wgslsmith_index_u32(~(~0u), 21u)], Struct_1(4294967295u)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, _wgslsmith_f_op_f32(-1000f + -732f), 1u, var_0.a.zw, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(func_2())))));
}

