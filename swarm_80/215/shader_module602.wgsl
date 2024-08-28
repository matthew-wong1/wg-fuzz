struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(9173u, 75205u), vec2<u32>(1u, 1u), vec2<u32>(24060u, 4294967295u), vec2<u32>(0u, 25649u), vec2<u32>(15100u, 24042u));

var<private> global1: vec4<f32> = vec4<f32>(667f, -463f, -1944f, -1892f);

var<private> global2: array<bool, 19>;

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(0u, 0i, 4294967295u, vec4<u32>(1u, 0u, 16030u, 32782u), Struct_1(false, vec4<i32>(8560i, 1i, 14407i, i32(-2147483648)))), Struct_2(0u, -22040i, 1u, vec4<u32>(1u, 20773u, 36709u, 4294967295u), Struct_1(false, vec4<i32>(52181i, 1i, 54362i, -11533i))), Struct_2(11311u, 10252i, 9093u, vec4<u32>(1u, 8835u, 4294967295u, 0u), Struct_1(false, vec4<i32>(-1314i, 6373i, -11099i, 0i))), Struct_2(20736u, -15590i, 4294967295u, vec4<u32>(4294967295u, 42570u, 1u, 0u), Struct_1(false, vec4<i32>(36825i, -1i, 1i, -1i))), Struct_2(1784u, i32(-2147483648), 740u, vec4<u32>(38009u, 4294967295u, 0u, 8232u), Struct_1(false, vec4<i32>(28415i, 6992i, 35642i, 52148i))), Struct_2(1u, 1i, 4294967295u, vec4<u32>(1u, 16330u, 9129u, 14138u), Struct_1(true, vec4<i32>(-32841i, 35957i, 70127i, 19290i))), Struct_2(0u, i32(-2147483648), 0u, vec4<u32>(51724u, 36160u, 0u, 20564u), Struct_1(true, vec4<i32>(38849i, 6847i, i32(-2147483648), -10671i))), Struct_2(0u, 5455i, 1u, vec4<u32>(130804u, 69096u, 1u, 1u), Struct_1(true, vec4<i32>(-23660i, 1i, -89641i, -1i))), Struct_2(25348u, 0i, 4294967295u, vec4<u32>(0u, 26396u, 1u, 4294967295u), Struct_1(true, vec4<i32>(2147483647i, -4267i, -1i, -21193i))), Struct_2(1u, -30781i, 35215u, vec4<u32>(6973u, 6990u, 4294967295u, 4294967295u), Struct_1(true, vec4<i32>(2147483647i, 1i, 58032i, 1i))), Struct_2(1u, 11019i, 0u, vec4<u32>(1u, 1u, 0u, 13277u), Struct_1(false, vec4<i32>(-2210i, 35477i, i32(-2147483648), -44447i))), Struct_2(20094u, i32(-2147483648), 99461u, vec4<u32>(4294967295u, 0u, 1u, 1u), Struct_1(false, vec4<i32>(-13950i, 1i, 2232i, 77930i))), Struct_2(16024u, 2147483647i, 1u, vec4<u32>(1u, 19395u, 84666u, 12330u), Struct_1(true, vec4<i32>(-7221i, 1i, -45535i, 0i))), Struct_2(28227u, -20782i, 1u, vec4<u32>(23818u, 36568u, 4294967295u, 1u), Struct_1(false, vec4<i32>(51454i, -24484i, 0i, 2147483647i))), Struct_2(21371u, 11399i, 4294967295u, vec4<u32>(0u, 0u, 9562u, 4294967295u), Struct_1(true, vec4<i32>(14776i, 52779i, 24674i, i32(-2147483648)))), Struct_2(0u, -24878i, 14769u, vec4<u32>(23856u, 0u, 65095u, 45107u), Struct_1(false, vec4<i32>(0i, 47112i, 2147483647i, 1i))), Struct_2(2499u, 12955i, 15388u, vec4<u32>(0u, 88679u, 4294967295u, 4294967295u), Struct_1(true, vec4<i32>(0i, 1i, 4625i, 37059i))), Struct_2(0u, i32(-2147483648), 0u, vec4<u32>(27311u, 1u, 16521u, 17853u), Struct_1(true, vec4<i32>(59340i, i32(-2147483648), -19187i, 0i))), Struct_2(40158u, -28677i, 65456u, vec4<u32>(4912u, 1u, 4294967295u, 50881u), Struct_1(false, vec4<i32>(16643i, 1i, -1i, -38973i))), Struct_2(30958u, -29220i, 1u, vec4<u32>(5627u, 0u, 9649u, 1u), Struct_1(true, vec4<i32>(2147483647i, 0i, 4986i, i32(-2147483648)))), Struct_2(1u, 27024i, 1u, vec4<u32>(1931u, 3664u, 4294967295u, 4294967295u), Struct_1(true, vec4<i32>(31221i, -24444i, 2147483647i, 1i))), Struct_2(0u, -1i, 0u, vec4<u32>(0u, 67325u, 0u, 9943u), Struct_1(true, vec4<i32>(-938i, 2147483647i, -22969i, -1i))), Struct_2(12847u, -1i, 26644u, vec4<u32>(0u, 1u, 0u, 19471u), Struct_1(true, vec4<i32>(63729i, 1i, 0i, 0i))), Struct_2(27464u, 9702i, 0u, vec4<u32>(6346u, 0u, 0u, 31785u), Struct_1(false, vec4<i32>(0i, -2334i, 34318i, 1013i))), Struct_2(86358u, -1366i, 6966u, vec4<u32>(4294967295u, 4338u, 49048u, 68262u), Struct_1(false, vec4<i32>(-28175i, 1i, -38350i, 6653i))), Struct_2(8836u, -26686i, 4294967295u, vec4<u32>(122361u, 36922u, 35732u, 0u), Struct_1(true, vec4<i32>(2147483647i, -1905i, -33805i, -16691i))));

var<private> global4: u32 = 15184u;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32((~vec3<u32>(arg_0.c, u_input.a, arg_0.c) | countOneBits(arg_0.d.wxz)) ^ ~vec3<u32>(u_input.a, 1u, 1u), ~reverseBits(vec3<u32>(4294967295u, u_input.a, u_input.a))), vec3<u32>(firstTrailingBit(~4294967295u) ^ u_input.a, ~arg_0.a, ~(~13174u)));
    var var_1 = max(abs(vec2<i32>(_wgslsmith_mod_i32(-1i, 1i), -2147483647i)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_0.e.b.x, _wgslsmith_clamp_i32(arg_2, -6287i, arg_2)), abs(vec2<i32>(select(-16952i, arg_2, global2[_wgslsmith_index_u32(var_0.x, 19u)]), max(arg_0.e.b.x, arg_0.b))), vec2<i32>(arg_2, reverseBits(_wgslsmith_div_i32(-13975i, -1i)))));
    let var_2 = select(arg_0.e.b, min(_wgslsmith_add_vec4_i32(vec4<i32>(-arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.x), vec2<i32>(arg_0.e.b.x, arg_0.e.b.x)), 27295i, ~arg_0.b), arg_0.e.b), reverseBits(vec4<i32>(-2147483647i, var_1.x, arg_2, 35666i)) & -_wgslsmith_clamp_vec4_i32(arg_0.e.b, vec4<i32>(arg_2, arg_2, 33556i, arg_2), arg_0.e.b)), 0i <= ~reverseBits(_wgslsmith_mult_i32(arg_0.b, 19842i)));
    var var_3 = Struct_2(~0u, -_wgslsmith_dot_vec3_i32(-(~var_2.xyw), ~(-vec3<i32>(arg_2, arg_0.e.b.x, arg_2))), arg_0.a, ~arg_0.d, arg_0.e);
    var_1 = ~vec2<i32>(var_3.e.b.x >> (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.b.x, abs(8439i), 1i, ~(-1i)), firstLeadingBit(vec4<i32>(var_3.e.b.x, var_3.b, arg_2, 1i) << (arg_0.d % vec4<u32>(32u)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1553f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(484f)) + _wgslsmith_f_op_f32(f32(-1f) * -302f))));
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, 263f)));
    global1 = _wgslsmith_f_op_vec4_f32(func_3(global3[_wgslsmith_index_u32(~u_input.a, 26u)], global2[_wgslsmith_index_u32(~abs(~u_input.a), 19u)], _wgslsmith_clamp_i32(countOneBits(-1i), ~(~(~24611i)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -37591i), vec2<i32>(1i, 1i))))));
    global0 = array<vec2<u32>, 5>();
    let var_1 = Struct_1(true, ~countOneBits(vec4<i32>(52767i, -24266i, 1i, 33904i) >> (vec4<u32>(4294967295u, 34642u, 26900u, u_input.a) % vec4<u32>(32u))) & (select(~vec4<i32>(2147483647i, -60382i, 1i, 2186i), vec4<i32>(1i, 39271i, 2147483647i, -2147483647i), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(64250u, 19u)])) | min(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-47907i, 47772i, 15501i, 0i))));
    global4 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(69331u), 20728u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), u_input.a | 110495u, u_input.a)), ~(~vec3<u32>(99u, 37916u, u_input.a)) | ~(~vec3<u32>(u_input.a, 1u, u_input.a)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -773f, global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, global1.x, var_0, 627f) * vec4<f32>(global1.x, 456f, global1.x, -848f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1015f, global1.x, global1.x, 286f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(642f, global1.x, var_0, 1468f) + vec4<f32>(global1.x, 163f, -902f, -358f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1587f, var_0, 225f, var_0)), vec4<bool>(false, var_1.a, global2[_wgslsmith_index_u32(4294967295u, 19u)], true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = arg_1.e;
    let var_1 = arg_0;
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(_wgslsmith_f_op_f32(sign(-1190f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505f - var_1)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-231f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1712f, 1517f) * _wgslsmith_div_f32(-997f, 530f)), 697f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1193f, var_1, 181f, -798f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 632f, -853f, -265f), vec4<f32>(730f, var_1, -1000f, 478f))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 909f, 823f, 1f);
    let var_2 = Struct_1(arg_1.b >= max(var_0.b.x, -var_0.b.x), ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(98215i, arg_1.b, arg_1.b, arg_1.b), var_0.b), 0i), arg_1.b, arg_1.e.b.x, 28572i >> (~4294967295u % 32u)));
    return !(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.d.x, 19u)], true, false, var_2.a), select(vec4<bool>(arg_1.e.a, false, arg_1.e.a, var_2.a), vec4<bool>(false, true, false, true), var_0.a), select(arg_1.e.a, true, global2[_wgslsmith_index_u32(arg_1.d.x, 19u)])), select(select(vec4<bool>(var_0.a, var_0.a, arg_1.e.a, var_0.a), vec4<bool>(var_0.a, false, global2[_wgslsmith_index_u32(33931u, 19u)], arg_1.e.a), true), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 19u)], false), vec4<bool>(var_0.a, var_2.a, arg_1.e.a, var_0.a), vec4<bool>(var_0.a, false, var_2.a, var_0.a)), global1.x <= 635f), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(arg_1.a, 19u)], false, var_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec4<bool>(global2[_wgslsmith_index_u32(10424u, 19u)], all(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(1u, 19u)])), true, global2[_wgslsmith_index_u32(u_input.a, 19u)]), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], false, false))), vec4<bool>(true, all(func_1(369f, Struct_2(u_input.a, -53245i, u_input.a, vec4<u32>(9265u, u_input.a, u_input.a, 29031u), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 19u)], vec4<i32>(-1i, -1454i, -2147483647i, 2147483647i))))), true, global2[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.a, u_input.a)), 19u)]));
    global0 = array<vec2<u32>, 5>();
    global4 = _wgslsmith_dot_vec4_u32(select(abs(select(reverseBits(vec4<u32>(u_input.a, u_input.a, 1u, 1u)), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), false)), vec4<u32>(~_wgslsmith_add_u32(u_input.a, 0u), ~(~1u), u_input.a ^ (0u ^ u_input.a), u_input.a), any(!func_1(-513f, global3[_wgslsmith_index_u32(4294967295u, 26u)]))), vec4<u32>(_wgslsmith_clamp_u32(109905u, ~u_input.a, ~1u), (~17642u ^ u_input.a) & ((28573u << (u_input.a % 32u)) & ~1u), ~(~(~u_input.a)), u_input.a | _wgslsmith_div_u32(~0u, ~u_input.a)));
    let var_1 = select(vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a, 19u)], any(!func_1(799f, Struct_2(0u, 2147483647i, u_input.a, vec4<u32>(4294967295u, 4294967295u, u_input.a, 35290u), Struct_1(true, vec4<i32>(-2147483647i, -8138i, -1i, -2147483647i)))).zz), func_1(1f, Struct_2(min(12718u, u_input.a), max(6331i, -36208i), 4294967295u, vec4<u32>(55240u, u_input.a, 0u, u_input.a), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 19u)], vec4<i32>(-1i, 20247i, 0i, -2147483647i)))).x, false), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), global3[_wgslsmith_index_u32(~u_input.a, 26u)]), (global2[_wgslsmith_index_u32(~(u_input.a ^ 1129u), 19u)] || true) && false);
    global0 = array<vec2<u32>, 5>();
    let var_2 = reverseBits(vec3<i32>(1i, abs(countOneBits(reverseBits(-2147483647i))), ~1i));
    global0 = array<vec2<u32>, 5>();
    global2 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -reverseBits(-vec3<i32>(var_2.x, var_2.x, var_2.x)));
}

