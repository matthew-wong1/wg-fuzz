struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

var<private> global1: array<vec2<f32>, 23>;

var<private> global2: array<bool, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5, arg_3: f32) -> vec2<f32> {
    var var_0 = u_input.a.x;
    global1 = array<vec2<f32>, 23>();
    let var_1 = Struct_2(!vec3<bool>(arg_0.d.e, false, !arg_2.d.b.x), vec4<bool>(global2[_wgslsmith_index_u32(55650u, 8u)] && arg_2.a.d.d, arg_0.d.c.d, true, all(select(arg_2.d.a, vec3<bool>(arg_0.d.b.x, true, false), global2[_wgslsmith_index_u32(1u, 8u)])) != global2[_wgslsmith_index_u32(~4294967295u, 8u)]), arg_0.d.d, arg_0.d.d, !(arg_3 == _wgslsmith_f_op_f32(_wgslsmith_div_f32(450f, -1894f) + arg_3)));
    global0 = array<vec3<u32>, 28>();
    var var_2 = Struct_2(vec3<bool>(false, false, _wgslsmith_f_op_f32(min(arg_0.d.c.b.x, _wgslsmith_f_op_f32(sign(619f)))) >= 1847f), arg_0.d.b, arg_0.d.c, Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(floor(var_1.c.b)), _wgslsmith_add_i32(u_input.b.x, min(var_1.c.c, ~1i)), true), false);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(sign(var_2.c.b.x))), -1000f) + vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.b.x), arg_0.e)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = arg_1.e;
    global0 = array<vec3<u32>, 28>();
    let var_1 = Struct_3(select(vec2<i32>(abs(-2147483647i), ~max(-2147483647i, u_input.b.x)), vec2<i32>(u_input.b.x, i32(-1i) * -59646i) & vec2<i32>(57016i, -1i), select(arg_2.b.xw, arg_0.b.b.xx, false)), Struct_2(!arg_1.d.b.yzw, arg_2.b, Struct_1(56976u, vec2<f32>(_wgslsmith_f_op_f32(max(-151f, -1107f)), -838f), 5200i, (arg_0.d.e | arg_1.d.e) || false), Struct_1(_wgslsmith_add_u32(arg_0.b.d.a, u_input.a.x), _wgslsmith_f_op_vec2_f32(func_3(arg_1, arg_0.b.d.b.x, Struct_5(Struct_2(arg_0.d.a, arg_0.b.b, arg_2.d, Struct_1(130331u, vec2<f32>(arg_0.d.d.b.x, arg_1.d.d.b.x), 36614i, false), true), vec2<u32>(arg_1.d.d.a, 42675u), 6305u, arg_2, vec4<f32>(893f, var_0, -881f, arg_2.d.b.x)), 304f)), arg_1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(27382i, 1i, -2147483647i, -11643i), vec4<i32>(20865i, 2147483647i, arg_1.d.d.c, arg_1.d.c.c)) == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -21627i, arg_0.b.d.c, 2147483647i), vec4<i32>(arg_1.d.c.c, 1i, arg_0.d.c.c, arg_1.c.x))), min(max(2147483647i, arg_0.d.d.c), -u_input.b.x) > -(u_input.b.x ^ 1i)), firstLeadingBit(vec4<u32>(~65426u, arg_0.d.c.a, firstLeadingBit(0u), _wgslsmith_div_u32(abs(u_input.a.x), min(arg_0.d.d.a, arg_2.c.a)))), arg_1.d);
    let var_2 = -reverseBits(vec3<i32>(~(-u_input.b.x), arg_1.c.x, max(var_1.d.d.c >> (74094u % 32u), 1i)));
    global1 = array<vec2<f32>, 23>();
    return ~firstTrailingBit(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(var_1.b.d.c, 31012i), countOneBits(arg_2.c.c)), _wgslsmith_mult_i32(-arg_1.d.d.c, ~(-73i))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = 468f;
    var_0 = -1000f;
    let var_1 = _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(-1i, u_input.b.x, 71577i), 20860i), _wgslsmith_mod_vec2_i32(-func_2(Struct_3(vec2<i32>(-1i, -37704i), Struct_2(vec3<bool>(false, arg_0.b.c.d, true), vec4<bool>(arg_0.b.b.x, false, arg_0.b.a.x, true), arg_0.d.d, Struct_1(105143u, vec2<f32>(-605f, arg_0.d.c.b.x), u_input.b.x, false), true), vec4<u32>(16381u, 26356u, arg_0.b.c.a, arg_0.d.c.a), Struct_2(arg_0.b.a, vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, false, true), Struct_1(arg_0.b.c.a, arg_0.d.c.b, 0i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), arg_0.d.d, arg_0.b.c.d)), Struct_4(vec3<f32>(-1555f, 1512f, -1000f), vec4<u32>(53554u, arg_0.d.c.a, arg_0.b.d.a, 4294967295u), u_input.b, Struct_2(arg_0.b.a, vec4<bool>(false, false, false, false), Struct_1(12106u, vec2<f32>(arg_0.b.c.b.x, arg_0.d.c.b.x), u_input.b.x, arg_0.d.e), Struct_1(0u, global1[_wgslsmith_index_u32(48844u, 23u)], 0i, global2[_wgslsmith_index_u32(arg_0.b.d.a, 8u)]), global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), -861f), arg_0.b), u_input.b.zz)) << (vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(69347u, _wgslsmith_clamp_u32(u_input.a.x, 5319u, 83473u))), u_input.a.x) % vec2<u32>(32u));
    let var_2 = arg_0.b;
    let var_3 = -abs(-abs(max(vec4<i32>(2147483647i, 40013i, 13151i, var_1.x), vec4<i32>(-40899i, u_input.b.x, var_1.x, var_2.d.c))));
    return _wgslsmith_f_op_f32(-var_2.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_f_op_f32(-1759f - _wgslsmith_f_op_f32(func_1(Struct_3(u_input.b.xz, Struct_2(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], false), Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(21304u, 23u)], 0i, false), Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(14021u, 23u)], u_input.b.x, global2[_wgslsmith_index_u32(1u, 8u)]), true), u_input.a, Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(95015u, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], false), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(87862u, 8u)]), Struct_1(4294967295u, vec2<f32>(-1000f, -1000f), -15585i, false), Struct_1(u_input.a.x, vec2<f32>(-2208f, 878f), -2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), false))))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(u_input.b.xy, Struct_2(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), Struct_1(u_input.a.x, vec2<f32>(103f, -2106f), u_input.b.x, global2[_wgslsmith_index_u32(9434u, 8u)]), Struct_1(0u, global1[_wgslsmith_index_u32(51492u, 23u)], u_input.b.x, true), false), vec4<u32>(37886u, 40813u, u_input.a.x, 40650u), Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], false, false), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(28250u, 8u)]), Struct_1(24304u, vec2<f32>(-1074f, 778f), -1i, false), Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.b.x, global2[_wgslsmith_index_u32(47828u, 8u)]), false)))), _wgslsmith_f_op_f32(2395f * -209f)) - _wgslsmith_f_op_f32(f32(-1f) * -1031f)));
    let var_1 = Struct_5(Struct_2(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], false, global2[_wgslsmith_index_u32(62054u, 8u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(6587u, 8u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(79685u, 8u)], false), global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], false), global2[_wgslsmith_index_u32(0u, 8u)])), vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(47823u, 8u)], false, false, false)), !global2[_wgslsmith_index_u32(10567u, 8u)], true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(18695u, 24996u, u_input.a.x, 61130u)), 8u)]), !(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]))), Struct_1(abs(11448u) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.yxx), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1676f, 357f)))), 2147483647i, global2[_wgslsmith_index_u32(~u_input.a.x, 8u)] | true), Struct_1(firstLeadingBit(~59839u), vec2<f32>(-643f, _wgslsmith_f_op_f32(func_1(Struct_3(vec2<i32>(u_input.b.x, u_input.b.x), Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(0u, 8u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], true, true, false), Struct_1(u_input.a.x, vec2<f32>(-1269f, -273f), -1i, true), Struct_1(u_input.a.x, vec2<f32>(-374f, 656f), u_input.b.x, false), global2[_wgslsmith_index_u32(1u, 8u)]), u_input.a, Struct_2(vec3<bool>(false, false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(52100u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], true), Struct_1(2110u, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 4766i, global2[_wgslsmith_index_u32(68289u, 8u)]), Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -2147483647i, false), global2[_wgslsmith_index_u32(1u, 8u)]))))), 0i, global2[_wgslsmith_index_u32(73789u, 8u)]), true), select(~(~_wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, 50805u))), select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 0u) | vec2<u32>(0u, u_input.a.x), vec2<u32>(1u, u_input.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), firstLeadingBit(vec2<u32>(57672u, 25329u))), vec2<bool>(true, true)), true), 4294967295u | ~u_input.a.x, Struct_2(!select(vec3<bool>(true, true, false), !vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 8u)], false), !global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, 0u, 1u)), 8u)] | global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u), 8u)], false, true), Struct_1(reverseBits(min(u_input.a.x, 22334u)), global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 101587i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), Struct_1(~firstLeadingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~u_input.a.x, 23u)]), _wgslsmith_mult_i32(u_input.b.x, ~u_input.b.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], vec3<u32>(u_input.a.x, 0u, 51244u), vec3<u32>(58747u, 56576u, u_input.a.x)), select(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], vec3<u32>(u_input.a.x, u_input.a.x, 0u), global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), 8u)]), global2[_wgslsmith_index_u32(~4623u, 8u)]), vec4<f32>(-2407f, _wgslsmith_f_op_f32(-2543f + _wgslsmith_f_op_f32(floor(-832f))), 359f, _wgslsmith_f_op_f32(f32(-1f) * -969f)));
    global0 = array<vec3<u32>, 28>();
    global2 = array<bool, 8>();
    global2 = array<bool, 8>();
    var var_2 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u), vec2<u32>(~_wgslsmith_mult_u32(abs(u_input.a.x), 4294967295u), ~(_wgslsmith_sub_u32(1u, u_input.a.x) >> ((0u << (u_input.a.x % 32u)) % 32u))), _wgslsmith_f_op_f32(abs(1837f)), ~(~var_1.b.x));
}

