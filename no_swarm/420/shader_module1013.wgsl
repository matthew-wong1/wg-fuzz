struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<i32, 32> = array<i32, 32>(35347i, 1i, 0i, i32(-2147483648), -3805i, -5706i, -1i, 0i, -1i, 0i, -21547i, -31542i, 2147483647i, 1i, 0i, 3430i, 0i, -56058i, i32(-2147483648), 16504i, -41297i, 2147483647i, -15621i, -32275i, -1i, 11102i, -1i, -408i, -42172i, 1i, 0i, 2147483647i);

var<private> global2: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-14589i, 54495i), vec2<i32>(i32(-2147483648), 26495i), vec2<i32>(-5746i, 1i), vec2<i32>(1i, 20380i), vec2<i32>(i32(-2147483648), -39573i), vec2<i32>(-74242i, -13214i), vec2<i32>(1i, -55077i), vec2<i32>(i32(-2147483648), 18940i), vec2<i32>(-37150i, -1i), vec2<i32>(11480i, 2147483647i), vec2<i32>(44586i, 1112i), vec2<i32>(9510i, 40263i), vec2<i32>(2147483647i, 1i), vec2<i32>(26209i, -1i), vec2<i32>(2147483647i, 32759i), vec2<i32>(13696i, 1i), vec2<i32>(0i, 1i), vec2<i32>(22564i, i32(-2147483648)), vec2<i32>(-96538i, 49650i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(7619i, -18337i), vec2<i32>(-10185i, -4744i), vec2<i32>(-36073i, 22824i), vec2<i32>(26183i, 30906i));

var<private> global3: vec3<u32>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>) -> u32 {
    global4 = 0i;
    global0 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1437f), -2240f), vec2<f32>(_wgslsmith_f_op_f32(1019f - -1000f), 1f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-757f))))));
    var var_1 = Struct_4(13424i, Struct_3(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(27351u, 32u)], 1i, arg_2.x, arg_2.x) ^ vec4<i32>(arg_2.x, 0i, global1[_wgslsmith_index_u32(1u, 32u)], arg_2.x)), vec4<i32>(global1[_wgslsmith_index_u32(0u & global3.x, 32u)], ~(-64803i), -3740i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(62790u, 32u)], global1[_wgslsmith_index_u32(arg_0.c, 32u)]))), select(select(select(vec4<bool>(true, false, true, arg_0.b), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.b), false), !vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.a), !arg_0.b), !select(vec4<bool>(true, arg_0.a, arg_0.b, true), vec4<bool>(true, arg_0.b, false, arg_0.b), arg_0.b), select(select(vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, true, false, true)), vec4<bool>(arg_0.b, arg_0.b, false, true), any(vec4<bool>(arg_0.b, arg_0.a, arg_0.b, arg_0.a)))), global0[_wgslsmith_index_u32(reverseBits(6489u), 12u)], -319f, ~firstLeadingBit(~vec2<u32>(global3.x, 37759u))), -1i, select(global3.x, ~41543u, -_wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 32u)], arg_2.x) >= firstLeadingBit(-global1[_wgslsmith_index_u32(arg_0.c, 32u)])));
    var_1 = Struct_4(0i, var_1.b, 1i, 86376u);
    return reverseBits(~(~(~arg_1.x)));
}

fn func_2() -> u32 {
    global4 = -_wgslsmith_dot_vec2_i32(firstTrailingBit(abs(select(vec2<i32>(global1[_wgslsmith_index_u32(25279u, 32u)], global1[_wgslsmith_index_u32(global3.x, 32u)]), global2[_wgslsmith_index_u32(u_input.c, 25u)], vec2<bool>(false, true)))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global3.x, 39170u), _wgslsmith_mod_u32(u_input.c, u_input.b)), ~_wgslsmith_add_u32(63251u, u_input.b)), 25u)]);
    global0 = array<Struct_2, 12>();
    let var_0 = Struct_4(-1i << (global3.x % 32u), Struct_3(select(countOneBits(vec4<i32>(10795i, 20058i, global1[_wgslsmith_index_u32(u_input.b, 32u)], 2147483647i)), ~(vec4<i32>(0i, global1[_wgslsmith_index_u32(23721u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], -83214i) ^ vec4<i32>(global1[_wgslsmith_index_u32(38247u, 32u)], global1[_wgslsmith_index_u32(38767u, 32u)], -11409i, global1[_wgslsmith_index_u32(17450u, 32u)])), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, global1[_wgslsmith_index_u32(0u, 32u)] <= global1[_wgslsmith_index_u32(u_input.b, 32u)])), vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, -1i, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.c, 32u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(2027i, global1[_wgslsmith_index_u32(u_input.c, 32u)], 16770i, global1[_wgslsmith_index_u32(59320u, 32u)]), vec4<i32>(-61780i, 1i, 61773i, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(global3.x, 32u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1714f)) + _wgslsmith_f_op_f32(abs(1000f))))), vec2<u32>(firstLeadingBit(reverseBits(u_input.c)), 0u)), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 8977u), 32u)], _wgslsmith_mult_u32(~func_3(Struct_1(false, true, 50080u), vec3<u32>(u_input.c, 1u, 13007u), global2[_wgslsmith_index_u32(u_input.b, 25u)]), 1u) & _wgslsmith_mod_u32(0u, u_input.a.x));
    var var_1 = Struct_1(var_0.b.b.x, reverseBits(~_wgslsmith_div_u32(global3.x, global3.x)) > 0u, var_0.d);
    var var_2 = Struct_1(false || var_1.b, all(vec3<bool>(true, select(2147483647i, global1[_wgslsmith_index_u32(56631u, 32u)], true) > _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(1u, 25u)], vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], -2147483647i)), all(vec2<bool>(var_0.b.b.x, var_0.b.b.x)))), firstTrailingBit(global3.x));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(15564u, u_input.b) << (~12038u % 32u), reverseBits(47735u), 0u, firstTrailingBit(~global3.x)), abs(vec4<u32>(~7933u, _wgslsmith_mult_u32(var_0.d, 59917u), var_1.c, ~u_input.c))), ~select(~vec4<u32>(0u, global3.x, var_1.c, var_0.b.e.x), vec4<u32>(global3.x, u_input.a.x, u_input.b, var_2.c), -2147483647i > global1[_wgslsmith_index_u32(13715u, 32u)]) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11932u, var_0.d, 1u, 51244u), vec4<u32>(0u, var_0.b.e.x, 0u, 81068u) & vec4<u32>(5885u, var_2.c, global3.x, 1u)), ~1u, func_3(Struct_1(true, true, 11541u), reverseBits(vec3<u32>(102182u, 4294967295u, 60289u)), global2[_wgslsmith_index_u32(countOneBits(var_0.d), 25u)]), 1u | u_input.a.x) % vec4<u32>(32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = (45924u | abs((global3.x | 41881u) >> (~global3.x % 32u))) ^ func_2();
    global0 = array<Struct_2, 12>();
    var var_1 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), false), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), true);
    let var_2 = _wgslsmith_div_i32(51264i, _wgslsmith_dot_vec4_i32(min(select(vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.b, 32u)], -29912i, global1[_wgslsmith_index_u32(u_input.c, 32u)]), vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.b, 32u)], global1[_wgslsmith_index_u32(24550u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), var_1.x), min(vec4<i32>(global1[_wgslsmith_index_u32(global3.x, 32u)], 39162i, global1[_wgslsmith_index_u32(u_input.b, 32u)], global1[_wgslsmith_index_u32(global3.x, 32u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.c, 32u)], 1i, 0i))), select(-vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(57992u, 32u)], -27394i, global1[_wgslsmith_index_u32(141u, 32u)]), vec4<i32>(-1i, 38725i, -34772i, global1[_wgslsmith_index_u32(0u, 32u)]) | vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)]), !vec4<bool>(var_1.x, true, true, var_1.x)))) & _wgslsmith_sub_i32(627i, _wgslsmith_mult_i32(firstTrailingBit(~global1[_wgslsmith_index_u32(global3.x, 32u)]), _wgslsmith_add_i32(1i, -global1[_wgslsmith_index_u32(u_input.c, 32u)])));
    var var_3 = Struct_3(max(vec4<i32>(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 32u)], -var_2, _wgslsmith_mod_i32(~var_2, var_2), global1[_wgslsmith_index_u32(global3.x, 32u)]), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.c), 32u)] ^ ~49161i, global1[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_div_i32(-1i, var_2), abs(var_2))), select(!(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x), var_1.x)), select(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x))), !select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), var_1.x), !(!var_1.x)), !var_1.x), global0[_wgslsmith_index_u32(u_input.c, 12u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-446f + 1778f), _wgslsmith_f_op_f32(f32(-1f) * -253f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-344f)) + 1f)))), reverseBits(firstLeadingBit(~firstTrailingBit(u_input.a))));
    return Struct_2(~var_3.c.a);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(arg_2.a.x, arg_1, _wgslsmith_clamp_i32(arg_2.a.x, -12121i, ~2147483647i) >> (~95303u % 32u), reverseBits(~global3.x << (4294967295u % 32u)));
    var var_1 = var_0.b.a.xyw;
    var var_2 = reverseBits(~_wgslsmith_mult_i32(-abs(1i), _wgslsmith_sub_i32(var_0.a ^ -91919i, max(0i, global1[_wgslsmith_index_u32(var_0.b.e.x, 32u)]))));
    var var_3 = var_0;
    let var_4 = max(~vec4<u32>(global3.x | var_3.d, 15247u, ~max(1u, global3.x), 10845u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.e.x, var_3.b.e.x | reverseBits(var_0.b.e.x), var_0.b.e.x, ~(var_3.b.e.x << (29577u % 32u))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.e.x, 0u, var_0.b.e.x, 68726u) << (vec4<u32>(global3.x, var_0.b.e.x, var_0.d, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(arg_1.e.x, 0u, var_0.d, global3.x)), vec4<u32>(u_input.c, _wgslsmith_mult_u32(arg_1.e.x, 914u), ~var_0.d, ~4294967295u))));
    return Struct_3(var_0.b.c.a, !vec4<bool>(6308i <= _wgslsmith_clamp_i32(var_0.b.c.a.x, var_3.a, var_3.c), all(var_0.b.b.wx), false, _wgslsmith_mult_u32(39545u, global3.x) > 1u), Struct_2(vec4<i32>(arg_2.a.x, 16599i, 2147483647i, var_1.x)), _wgslsmith_f_op_f32(sign(arg_1.d)), arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(firstLeadingBit(0i), func_4(false, Struct_3(~vec4<i32>(global1[_wgslsmith_index_u32(31684u, 32u)], 1i, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(10790u, 32u)]) << (vec4<u32>(8635u, u_input.c, 29929u, global3.x) % vec4<u32>(32u)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, false, true), true), func_1(), _wgslsmith_f_op_f32(1490f + 1f), global3.zz), global0[_wgslsmith_index_u32(global3.x ^ (func_2() & abs(2827u)), 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~20563u, 96692u ^ reverseBits(global3.x), ~((74696u << (0u % 32u)) << (_wgslsmith_div_u32(global3.x, u_input.a.x) % 32u))), 32u)], 0u);
    global3 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(1u, 0u)) << (var_0.d % 32u), 38918u, global3.x), ~abs(max(vec3<u32>(u_input.a.x, 16545u, 6005u), ~vec3<u32>(var_0.b.e.x, 43771u, 0u))));
    var var_1 = _wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_0.b.e.x, 32u)], firstTrailingBit(func_4(var_0.b.b.x, func_4(0i != global1[_wgslsmith_index_u32(var_0.b.e.x, 32u)], var_0.b, global0[_wgslsmith_index_u32(func_2(), 12u)]), func_1()).c.a.x));
    let var_2 = Struct_2(var_0.b.a);
    var var_3 = Struct_1(!var_0.b.b.x, any(select(vec2<bool>(func_4(var_0.b.b.x, Struct_3(var_0.b.a, vec4<bool>(var_0.b.b.x, false, var_0.b.b.x, var_0.b.b.x), Struct_2(vec4<i32>(1i, global1[_wgslsmith_index_u32(0u, 32u)], 1i, 2147483647i)), var_0.b.d, var_0.b.e), global0[_wgslsmith_index_u32(u_input.c, 12u)]).b.x, func_4(var_0.b.b.x, Struct_3(vec4<i32>(var_2.a.x, var_2.a.x, -11148i, var_0.c), var_0.b.b, var_2, 660f, var_0.b.e), Struct_2(var_2.a)).b.x), select(!var_0.b.b.xw, var_0.b.b.xz, vec2<bool>(true, var_0.b.b.x)), var_0.b.b.x)), var_0.b.e.x);
    global3 = ~min(vec3<u32>(var_0.b.e.x | u_input.a.x, 1u, countOneBits(0u << (global3.x % 32u))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global3.x, u_input.b, u_input.a.x), vec3<u32>(var_3.c, u_input.c, 44579u) & vec3<u32>(var_3.c, var_0.b.e.x, var_3.c)), vec3<u32>(var_0.d | var_3.c, _wgslsmith_add_u32(1u, var_3.c), 4239u >> (0u % 32u))));
    let var_4 = vec3<f32>(var_0.b.d, -594f, -1000f);
    let var_5 = Struct_4(-2147483647i, var_0.b, ~firstLeadingBit(-(var_2.a.x & global1[_wgslsmith_index_u32(var_3.c, 32u)])), 0u);
    let var_6 = Struct_5(-vec3<i32>(var_5.c, global1[_wgslsmith_index_u32(select(u_input.c, ~1u, var_5.b.b.x), 32u)], -68012i));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, func_4(true, var_0.b, Struct_2(~vec4<i32>(-11764i, -2147483647i, 19282i, var_5.b.a.x))).c.a.x);
}

