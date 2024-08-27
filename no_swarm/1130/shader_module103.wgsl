struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-613f), Struct_1(1014f), Struct_1(-826f), Struct_1(-719f), Struct_1(529f), Struct_1(1158f), Struct_1(-1207f), Struct_1(155f), Struct_1(554f), Struct_1(133f));

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: array<bool, 15>;

var<private> global3: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(15238u, 30657u, 0u));

var<private> global4: vec2<f32> = vec2<f32>(315f, -1709f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    global2 = array<bool, 15>();
    let var_0 = Struct_1(-538f);
    var var_1 = ~max(47236i, u_input.a.x);
    global1 = array<vec2<bool>, 5>();
    let var_2 = -u_input.a;
    return Struct_1(_wgslsmith_f_op_f32(-1752f - _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(arg_2, arg_2)), 4294967295u < arg_1.x)))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<bool, 15>();
    var var_0 = true;
    global1 = array<vec2<bool>, 5>();
    var var_1 = ~_wgslsmith_clamp_vec2_u32(min(~(~arg_2.yx), ~_wgslsmith_mult_vec2_u32(arg_2.yy, arg_2.yy)), vec2<u32>(1u, arg_2.x), vec2<u32>(arg_2.x, 1u));
    global0 = array<Struct_1, 10>();
    return global0[_wgslsmith_index_u32(~(~arg_2.x | 0u), 10u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> i32 {
    let var_0 = Struct_1(910f);
    global0 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1713f, 1000f, -185f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(348f, global4.x, -1586f) - vec3<f32>(arg_0.a, -644f, -153f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -1437f, 413f), vec3<f32>(arg_1, -1605f, 386f))))));
    var var_2 = var_1.xz;
    var var_3 = select(abs(~vec4<u32>(4294967295u, 46924u, 39702u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(17657u, ~8185u, countOneBits(0u), countOneBits(0u)), abs(vec4<u32>(4294967295u, 25563u, 22536u, 1u))), global2[_wgslsmith_index_u32(0u, 15u)]) ^ ~(~(~vec4<u32>(0u, 4294967295u, 0u, 4294967295u)));
    return abs(_wgslsmith_mod_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(17391u, 66721u) % vec2<u32>(32u))), 2147483647i), 2147483647i));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_1(global4.x);
    var var_1 = func_4(func_3(global2[_wgslsmith_index_u32(0u, 15u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -852f)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_sub_u32(33117u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(85158u, 8648u), vec2<u32>(1u, 1u)) << (~1u % 32u)), 1u)], func_2(true, ~select(vec4<u32>(1u, 57802u, 4294967295u, 1u), vec4<u32>(24706u, 1u, 65022u, 17493u), global2[_wgslsmith_index_u32(8213u, 15u)]), _wgslsmith_f_op_f32(ceil(var_0.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.x))) * -1000f), 1000f), 1088f);
    var_1 = u_input.a.x;
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a.x, -2147483647i, ~(-1i), u_input.a.x), ~vec4<i32>(8407i, 18326i, u_input.a.x, -2147483647i) | -max(vec4<i32>(-20556i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(20412i, -2147483647i, u_input.a.x, u_input.a.x)), -_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(0i, u_input.a.x, 26437i, 2147483647i)), vec4<i32>(u_input.a.x, u_input.a.x, -41941i, -1i) ^ vec4<i32>(-2147483647i, -3431i, u_input.a.x, -22220i))) << (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(15123u, 4294967295u, 0u, 22283u), vec4<u32>(4294967295u, 0u, 0u, 87714u)) & reverseBits(vec4<u32>(0u, 9080u, 0u, 0u))) % vec4<u32>(32u));
    var var_3 = func_3(true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -541f)), firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(51400u, 37037u, 4294967295u), reverseBits(global3[_wgslsmith_index_u32(4294967295u, 1u)]))) | max(countOneBits(global3[_wgslsmith_index_u32(~68432u, 1u)]), firstTrailingBit(vec3<u32>(1u, 478u, 1u))), func_3(all(vec3<bool>(all(vec4<bool>(true, false, false, true)), global2[_wgslsmith_index_u32(~1u, 15u)], false)), global0[_wgslsmith_index_u32(select(min(_wgslsmith_div_u32(4294967295u, 4294967295u), ~30838u), abs(1u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1218u, 4294967295u, 1u), vec4<u32>(102325u, 1u, 22767u, 1u)), 15u)]), 10u)], ~(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 18669u), global3[_wgslsmith_index_u32(66588u, 1u)]), 1u)] >> ((global3[_wgslsmith_index_u32(38689u, 1u)] << (global3[_wgslsmith_index_u32(0u, 1u)] % vec3<u32>(32u))) % vec3<u32>(32u))), arg_1));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.xz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, 1000f)), _wgslsmith_f_op_f32(-797f - arg_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-660f, var_0.a)) + arg_2.ww))));
}

fn func_5(arg_0: vec2<f32>) -> f32 {
    let var_0 = select(select(select(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(17803u, 15u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(38459u, 15u)], true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(70104u, 15u)], false), vec3<bool>(true, false, true)), !vec3<bool>(global2[_wgslsmith_index_u32(26725u, 15u)], false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(63648u, 15u)], false), vec3<bool>(global2[_wgslsmith_index_u32(18052u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 15u)])), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(1025u, 15u)], global2[_wgslsmith_index_u32(36723u, 15u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 15u)], true), true)), _wgslsmith_f_op_f32(-arg_0.x) <= arg_0.x), select(vec3<bool>(all(global1[_wgslsmith_index_u32(51560u, 5u)]), true, arg_0.x >= 210f), select(select(vec3<bool>(global2[_wgslsmith_index_u32(29802u, 15u)], global2[_wgslsmith_index_u32(17468u, 15u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)], true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 15u)])), select(vec3<bool>(true, global2[_wgslsmith_index_u32(41565u, 15u)], true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(50949u, 15u)], false, global2[_wgslsmith_index_u32(51624u, 15u)])), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(49975u, 15u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(61403u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), false)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(28457u, 15u)], global2[_wgslsmith_index_u32(39754u, 15u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(3780u, 15u)]), false), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]), global2[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 15u)])), vec3<bool>(global2[_wgslsmith_index_u32(1u, 15u)], true, false)), !vec3<bool>(u_input.a.x != _wgslsmith_add_i32(u_input.a.x, -2147483647i), global2[_wgslsmith_index_u32(1u, 15u)], false), !select(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 15u)], true, global2[_wgslsmith_index_u32(1u, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], false, true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 15u)]))), vec3<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], false, true, global2[_wgslsmith_index_u32(23475u, 15u)])), global2[_wgslsmith_index_u32(~5190u, 15u)], global2[_wgslsmith_index_u32(~12902u, 15u)]), all(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 15u)], true))));
    let var_1 = ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a.x, -12201i << (1u % 32u)), u_input.a.yz >> (vec2<u32>(9579u, 37822u) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~29279u), 9255u, 1u, ~(~4904u)), ~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)) << (~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, 19956u, 48844u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(26503u, 29u, 25246u, 0u), vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(33743u, 4294967295u, 1u, 36730u)))) % vec4<u32>(32u));
    let var_3 = !vec2<bool>(false, any(!select(var_0, vec3<bool>(global2[_wgslsmith_index_u32(1u, 15u)], true, true), global2[_wgslsmith_index_u32(var_2.x, 15u)])));
    global0 = array<Struct_1, 10>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.x * -523f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f - -1335f))), _wgslsmith_f_op_f32(f32(-1f) * -446f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4.x, -993f), vec2<f32>(global4.x, global4.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, global4.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global4.x, global0[_wgslsmith_index_u32(3712u, 10u)], vec4<f32>(global4.x, global4.x, -972f, global4.x)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(129165u, 0u, 16002u), global3[_wgslsmith_index_u32(103571u, 1u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 44596u, 1u), vec3<u32>(15930u, 46501u, 1u))), 15u)])))));
    var var_2 = all(!vec2<bool>(global2[_wgslsmith_index_u32(~(~1u), 15u)], true));
    var var_3 = global0[_wgslsmith_index_u32(15645u, 10u)];
    var var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -219f), -891f)));
    let var_5 = ~(~reverseBits(~vec4<u32>(4294967295u, 80536u, 50106u, 0u))) ^ _wgslsmith_div_vec4_u32(abs(max(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)))), select(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~26141u, ~1u, countOneBits(38158u), abs(0u)), vec4<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(65711u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(56248u, 15u)])), false, any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(52637u, 15u)], global2[_wgslsmith_index_u32(14749u, 15u)])), true)));
    let var_6 = _wgslsmith_clamp_u32(var_5.x, var_5.x, abs(~var_5.x));
    var var_7 = var_1.a;
    var_0 = _wgslsmith_f_op_f32(var_3.a - global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, select(~(-1i), -1i, global2[_wgslsmith_index_u32(var_5.x, 15u)]), u_input.a.x);
}

