struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true));

var<private> global1: array<vec2<i32>, 18>;

var<private> global2: array<f32, 28> = array<f32, 28>(1508f, -1161f, -126f, 777f, 976f, -746f, -1432f, 739f, 248f, -1000f, -990f, -519f, 1000f, -1651f, 338f, -1294f, 730f, 1035f, -2085f, -610f, 257f, 1470f, 1317f, -1079f, 1066f, -1963f, -1176f, -1751f);

var<private> global3: array<bool, 10> = array<bool, 10>(false, true, true, false, true, true, false, true, false, true);

var<private> global4: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(-min(-(~vec4<i32>(32718i, global4.b.c, 8571i, 1i)), vec4<i32>(-35229i, u_input.e.x, -global4.b.c, u_input.c ^ -1i)), global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d.x + global4.d.x) - global4.d.x) * 1473f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(51702u, 28u)], -1317f, global4.d.x, -1873f))))))), !(!vec3<bool>(-41278i <= global4.b.c, global4.e.x, !global3[_wgslsmith_index_u32(4294967295u, 10u)])));
    global4 = Struct_2(vec4<i32>(-11612i, -2147483647i, i32(-1i) * -(global4.b.c ^ -1i), ~(~select(var_0.b.c, global4.b.c, false))), Struct_1(global4.b.a, -1515f, global4.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global4.d, vec4<f32>(global4.d.x, -187f, -1000f, -536f), false)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(496f, 1000f, global2[_wgslsmith_index_u32(u_input.a, 28u)], -745f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global4.b.a.x, 28u)], -1437f, -210f, 1183f) + global4.d)))), select(select(!vec3<bool>(false, global3[_wgslsmith_index_u32(19937u, 10u)], false), select(!global4.e, vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 10u)], false), true), true), vec3<bool>(true, !(!global4.e.x), global3[_wgslsmith_index_u32(global4.b.a.x, 10u)] && var_0.e.x), false));
    global2 = array<f32, 28>();
    global0 = array<vec4<bool>, 26>();
    var var_1 = Struct_2(countOneBits(vec4<i32>(global4.b.c, 79947i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.x, var_0.b.c, -41832i, 2147483647i), firstLeadingBit(vec4<i32>(76769i, var_0.a.x, -29027i, 26720i))), -(~var_0.b.c))), var_0.b, -315f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.d * vec4<f32>(-732f, 283f, var_0.d.x, 1031f)), _wgslsmith_f_op_vec4_f32(max(var_0.d, vec4<f32>(-853f, 1000f, global4.b.b, global2[_wgslsmith_index_u32(var_0.b.a.x, 28u)]))))) * global4.d), var_0.e);
    return vec3<bool>(!(true & select(!var_1.e.x, any(var_0.e.yz), true)), var_1.e.x, var_1.e.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> vec3<bool> {
    global0 = array<vec4<bool>, 26>();
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(abs(u_input.d.x)), 26u)];
    global4 = Struct_2(vec4<i32>(u_input.c, global4.b.c, 35347i, 2147483647i), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~37282u, max(global4.b.a.x, 1u), ~33034u), global4.b.a, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global4.b.a.x, u_input.a, u_input.d.x), global4.b.a), ~global4.b.a, global4.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1808f + global2[_wgslsmith_index_u32(u_input.d.x, 28u)]))), -6433i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(50463u, 28u)])))) * global4.b.b), vec4<f32>(-3037f, -935f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1516f), 1348f), select(select(!global4.e, func_3(), all(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], true))), !(!(!vec3<bool>(arg_0.x, true, global4.e.x))), true & (_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(39173u, 28u)]) <= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 28u)]))));
    var var_1 = ~_wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(~global4.b.a, firstTrailingBit(vec3<u32>(global4.b.a.x, u_input.a, u_input.a)))), vec3<u32>(_wgslsmith_mod_u32(~global4.b.a.x, global4.b.a.x), ~min(68625u, 0u), abs(1u)));
    global3 = array<bool, 10>();
    return global4.e;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_3(_wgslsmith_clamp_i32(arg_1.a.a.x, -3814i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.e, ~arg_2.e.a), vec4<i32>(-23220i, -6357i, abs(-11988i), _wgslsmith_mod_i32(-1i, u_input.b)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 371f) * _wgslsmith_f_op_vec2_f32(abs(arg_3.d.zy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d.x, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(1u, 28u)])))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.e.d.yw + global4.d.yz), vec2<f32>(981f, _wgslsmith_f_op_f32(-arg_1.b.b.b)))));
    let var_2 = !(!all(func_2(select(global4.e, arg_2.b.e, arg_3.e.x), firstTrailingBit(2147483647i))));
    let var_3 = 88747i;
    var_0 = Struct_3(-1i);
    return arg_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(15671i, firstTrailingBit(_wgslsmith_mult_i32(reverseBits(2147483647i), ~(-1i))));
    global0 = array<vec4<bool>, 26>();
    var var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global4.a, Struct_4(Struct_2(u_input.e, Struct_1(vec3<u32>(u_input.a, u_input.d.x, global4.b.a.x), global2[_wgslsmith_index_u32(u_input.a, 28u)], -2147483647i), -472f, global4.d, vec3<bool>(global4.e.x, global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(global4.b.a.x, 10u)])), Struct_2(global4.a, Struct_1(global4.b.a, global4.c, global4.a.x), -1000f, vec4<f32>(-189f, global4.d.x, global2[_wgslsmith_index_u32(0u, 28u)], 2330f), vec3<bool>(false, false, false)), u_input.d, vec3<f32>(global2[_wgslsmith_index_u32(global4.b.a.x, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], -470f), Struct_2(vec4<i32>(u_input.b, -1i, -27409i, u_input.b), Struct_1(vec3<u32>(57037u, 31087u, global4.b.a.x), global2[_wgslsmith_index_u32(22802u, 28u)], u_input.e.x), global2[_wgslsmith_index_u32(u_input.d.x, 28u)], vec4<f32>(240f, global4.d.x, global4.c, global4.b.b), vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 10u)]))), Struct_4(Struct_2(vec4<i32>(u_input.b, 57551i, -2147483647i, global4.b.c), global4.b, global2[_wgslsmith_index_u32(global4.b.a.x, 28u)], global4.d, global4.e), Struct_2(u_input.e, Struct_1(vec3<u32>(22461u, global4.b.a.x, 8223u), global2[_wgslsmith_index_u32(0u, 28u)], 12253i), 1785f, vec4<f32>(155f, global4.b.b, -1022f, global2[_wgslsmith_index_u32(u_input.d.x, 28u)]), global4.e), vec2<u32>(40624u, 0u), global4.d.xwz, Struct_2(vec4<i32>(u_input.c, u_input.e.x, 51393i, -2147483647i), Struct_1(global4.b.a, global2[_wgslsmith_index_u32(79030u, 28u)], 23515i), global4.d.x, global4.d, global4.e)), Struct_2(vec4<i32>(2147483647i, 10493i, global4.a.x, 46127i), global4.b, global2[_wgslsmith_index_u32(0u, 28u)], global4.d, global4.e))))) == _wgslsmith_f_op_f32(step(-1851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.d.x, 28u)]))))));
    let var_2 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(min(4294967295u, u_input.d.x), global4.b.a.x, u_input.d.x), global4.b.a >> ((vec3<u32>(12061u, global4.b.a.x, 7017u) >> (_wgslsmith_mod_vec3_u32(global4.b.a, global4.b.a) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(575f - _wgslsmith_f_op_f32(trunc(-303f))))), ~47524i);
    var var_3 = firstTrailingBit(4294967295u);
    var var_4 = Struct_2(global4.a, global4.b, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(7550u, global4.b.a.x), 28u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global4.d * _wgslsmith_f_op_vec4_f32(-global4.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-488f, global2[_wgslsmith_index_u32(u_input.a, 28u)], -906f, -786f))), !select(global0[_wgslsmith_index_u32(37320u, 26u)], global0[_wgslsmith_index_u32(42431u, 26u)], global3[_wgslsmith_index_u32(3339u, 10u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(global4.d)))))), global4.e);
    var var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(-1i), global4.d.yz, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.d.x * -849f))), u_input.a);
}

