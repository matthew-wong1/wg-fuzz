struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 40394u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    global0 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(-1000f, 1450f), _wgslsmith_f_op_f32(f32(-1f) * -1708f), _wgslsmith_f_op_f32(trunc(2549f))))))));
    global1 = ~select(max(max(vec4<u32>(0u, global1.x, 43346u, global1.x), vec4<u32>(26016u, 1u, global1.x, u_input.a)), countOneBits(vec4<u32>(1u, 17943u, 2543u, 0u))) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, global1.x, 4294967295u, 0u), ~vec4<u32>(85067u, global1.x, 70398u, 1u), abs(vec4<u32>(59321u, global1.x, 0u, 69610u))), vec4<u32>(~(~1u), _wgslsmith_mod_u32(u_input.b.x, 1u), u_input.b.x, ~1u), false);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -754f)));
    var var_2 = Struct_2(~28020i, _wgslsmith_add_u32(global1.x, _wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(u_input.b.x, global1.x) << (~11209u % 32u))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(35344u | _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(4294967295u, global1.x)), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(57366u, var_2.b, global1.x, 19169u)), firstLeadingBit(vec4<u32>(1u, 84004u, 0u, u_input.a))), _wgslsmith_mult_u32(var_2.b, global1.x), ~_wgslsmith_div_u32(~3691u, ~u_input.b.x)), ~countOneBits(select(abs(vec4<u32>(var_2.b, var_2.b, 34423u, 0u)), abs(vec4<u32>(101010u, 58746u, u_input.b.x, global1.x)), all(vec2<bool>(true, false)))));
}

fn func_2(arg_0: i32) -> f32 {
    global1 = vec4<u32>(~0u, ~(~global1.x), ~(4294967295u >> (u_input.a % 32u)), u_input.a);
    let var_0 = _wgslsmith_dot_vec4_u32(func_3(), vec4<u32>(51952u, _wgslsmith_mod_u32(abs(~0u), firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global1.x, 0u)))), u_input.b.x, _wgslsmith_sub_u32(0u, u_input.a)));
    global1 = vec4<u32>(0u, 1u, 1u, firstLeadingBit(~max(48060u, 1u)));
    global1 = ~(~abs(vec4<u32>(50721u, 120648u, var_0, 4294967295u) ^ countOneBits(vec4<u32>(var_0, global1.x, var_0, 47433u))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-334f, -1059f, false)) - 635f)), -238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -691f)))), -1054f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(757f, 958f, -774f, 948f), vec4<f32>(570f, 1500f, 1200f, -560f), false)), vec4<f32>(157f, 1746f, -483f, -826f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1589f, 113f, -443f, 1469f)))))))));
    return -631f;
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1i)) * -475f), -1016f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1514f, -1356f) - vec2<f32>(-107f, 238f)), vec2<f32>(-234f, 1025f)))))));
    global0 = array<Struct_1, 30>();
    let var_1 = Struct_3(Struct_2(-1i, ~arg_0), true, Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(floor(2436f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f - var_0.x)), _wgslsmith_f_op_f32(func_2(reverseBits(1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-375f, arg_1, -1064f, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-895f, arg_1, var_0.x, -1035f))), true))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1155f, arg_1, 567f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-165f, -851f, arg_1))) + vec3<f32>(-1324f, _wgslsmith_f_op_f32(f32(-1f) * -495f), _wgslsmith_f_op_f32(f32(-1f) * -197f)))), global0[_wgslsmith_index_u32(u_input.a, 30u)], !select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), all(vec3<bool>(true, false, true))), vec2<bool>(true, true), ~18986u > ~global1.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 1450f, var_0.x))), _wgslsmith_f_op_vec3_f32(var_1.c.d * var_1.c.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d.d - vec3<f32>(var_0.x, -784f, var_1.d.d.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.b.x, 1000f, -1533f)))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(round(var_1.d.b))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-979f, var_0.x, -915f, var_0.x), var_1.c.b)), _wgslsmith_f_op_vec4_f32(-var_1.d.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-701f - arg_1))) > arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-995f, _wgslsmith_f_op_f32(571f + -862f), true)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -1522f)))));
    return var_1.a;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    global0 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_1 = Struct_3(arg_2.a, true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.d.a, vec3<f32>(318f, 357f, arg_1))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 793f, arg_0.c.d.x, arg_1)))), arg_2.e.x, _wgslsmith_f_op_vec3_f32(ceil(arg_0.d.d))), arg_0.c, select(arg_2.e, !(!vec2<bool>(arg_2.d.c, true)), arg_2.e));
    return global0[_wgslsmith_index_u32(arg_2.a.b, 30u)];
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = -42087i;
    let var_1 = arg_1.a;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(floor(-2258f));
    var var_4 = func_5(Struct_3(arg_1.a, !(!any(vec2<bool>(false, true))), arg_1.c, Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_1.d.a.x, arg_1.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(select(-1279f, arg_1.d.b.x, var_2))), vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.d.a.x, -763f)), 495f, 531f, 138f), true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1.d.a)))), arg_1.e), _wgslsmith_f_op_f32(-1316f * 568f), Struct_3(func_4(select(~arg_1.a.b, 4294967295u, true), _wgslsmith_f_op_f32(func_2(arg_1.a.a))), !arg_1.d.c, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.b.x, -1000f, arg_1.c.b.x)), _wgslsmith_f_op_vec4_f32(max(arg_1.c.b, vec4<f32>(arg_1.d.a.x, arg_1.d.b.x, arg_1.d.b.x, arg_1.d.d.x))), true, arg_1.c.d), Struct_1(_wgslsmith_div_vec3_f32(arg_1.d.b.zww, arg_1.c.b.xxx), _wgslsmith_f_op_vec4_f32(step(arg_1.d.b, vec4<f32>(arg_1.d.b.x, 803f, 2151f, arg_1.c.b.x))), !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.a.x, 334f, 783f))), select(!arg_1.e, vec2<bool>(select(var_2, false, var_2), arg_1.d.b.x != arg_1.d.d.x), arg_1.b)));
    return _wgslsmith_f_op_f32(-var_4.d.x);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = vec4<u32>(~arg_0, 0u, func_3().x, abs(~arg_0));
    var var_1 = -26497i;
    var_0 = ~(~func_3()) & vec4<u32>(arg_0 | global1.x, ~_wgslsmith_add_u32(firstTrailingBit(var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(89984u, 14762u, 0u, 21359u), vec4<u32>(61700u, var_0.x, var_0.x, 1u))), ~(~1u), ~(~0u << (_wgslsmith_mult_u32(1u, u_input.b.x) % 32u)));
    var var_2 = Struct_3(Struct_2(firstTrailingBit(1i), 0u), true, arg_1, arg_1, !select(!vec2<bool>(false, arg_1.c), !vec2<bool>(arg_1.c, true), !any(vec3<bool>(arg_1.c, arg_1.c, false))));
    return vec2<u32>(~(~global1.x), _wgslsmith_clamp_u32(func_4(firstTrailingBit(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.d.x, arg_1.a.x, var_2.d.c)))).b, var_2.a.b, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(i32(-1i) * -11206i, _wgslsmith_sub_i32(max(14029i, _wgslsmith_mod_i32(select(-2147483647i, -1i, true), -64215i)), 2147483647i), (-3341i >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 11196u), ~0u) % 32u)) << (_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(42849u, global1.x), u_input.b.x, 4294967295u) % 32u), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 22388i, -2147483647i), max(vec3<i32>(31797i, 2147483647i, 1i), vec3<i32>(269i, -7320i, 2147483647i)))) ^ 12595i);
    let var_1 = firstLeadingBit(var_0.x);
    var var_2 = 9259i;
    var var_3 = var_0.x;
    let var_4 = var_0;
    let var_5 = func_6(65832u, global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(56978u, global1.x, global1.x, 26507u), vec4<u32>(25223u, global1.x, 0u, 4294967295u), true), vec4<u32>(4294967295u, 4294967295u, global1.x, 50211u) ^ vec4<u32>(global1.x, global1.x, global1.x, global1.x))), 30u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(516f, 1073f, -1588f, 1359f) * vec4<f32>(815f, -1281f, -1214f, -206f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-613f, -591f, -1965f, 375f) * vec4<f32>(-189f, 233f, -1000f, -310f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1249f), _wgslsmith_div_f32(1142f, 1880f), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(func_1(-2147483647i, Struct_3(Struct_2(var_0.x, 4294967295u), false, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global1.x, 30u)], vec2<bool>(true, false))))) - func_5(Struct_3(Struct_2(var_1, u_input.a), false, Struct_1(vec3<f32>(1979f, -1095f, -2393f), vec4<f32>(720f, -204f, 170f, -904f), true, vec3<f32>(1903f, -647f, -1685f)), global0[_wgslsmith_index_u32(5445u, 30u)], vec2<bool>(false, true)), -1464f, Struct_3(Struct_2(var_0.x, 60493u), true, Struct_1(vec3<f32>(2217f, 571f, -192f), vec4<f32>(-171f, 274f, -1262f, -645f), false, vec3<f32>(-161f, 1627f, -364f)), Struct_1(vec3<f32>(181f, -1281f, 1037f), vec4<f32>(1331f, -171f, 166f, 1324f), false, vec3<f32>(371f, 944f, 1000f)), vec2<bool>(false, false))).b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-317f, 1124f)), 756f, _wgslsmith_f_op_f32(761f + 852f), _wgslsmith_f_op_f32(step(-954f, -2019f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1356f, -297f, -299f) - vec4<f32>(304f, -292f, 753f, 1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1412f, -1549f, -255f, 448f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(812f, -834f, -106f, 1219f))))))));
}

