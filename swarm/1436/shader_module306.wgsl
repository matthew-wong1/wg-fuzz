struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: i32 = 80895i;

var<private> global1: array<i32, 12>;

var<private> global2: vec3<f32>;

var<private> global3: bool = true;

var<private> global4: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(173f, 708f, 844f), vec3<f32>(-1588f, -117f, 273f), vec3<f32>(304f, -313f, 348f), vec3<f32>(-520f, 176f, -374f), vec3<f32>(224f, 954f, 584f), vec3<f32>(-292f, 396f, -1010f), vec3<f32>(1000f, 913f, -1690f), vec3<f32>(-563f, -113f, 796f), vec3<f32>(1028f, -1571f, -389f), vec3<f32>(425f, 993f, 151f), vec3<f32>(-1213f, -466f, -771f), vec3<f32>(350f, -989f, -681f), vec3<f32>(710f, -629f, -569f), vec3<f32>(-561f, -2258f, 1237f), vec3<f32>(-1000f, 1026f, 2342f), vec3<f32>(905f, -535f, -908f), vec3<f32>(-1123f, -187f, -127f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    let var_0 = !(!select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true));
    global1 = array<i32, 12>();
    let var_1 = true;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8897u), countOneBits(~(u_input.a.zy | u_input.a.wy))), 12u)] & -1i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1100f, -170f, global2.x) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1298f, global2.x, -1533f, global2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, 385f, -1200f, global2.x), vec4<f32>(global2.x, 130f, global2.x, 526f))) + vec4<f32>(-2069f, global2.x, 1607f, global2.x))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(62605u << (0u % 32u)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -485f, global2.x, -1189f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -881f, -209f, -1451f)) + vec4<f32>(1000f, 1247f, global2.x, -244f)), vec4<bool>(true, true, false, any(vec4<bool>(true, true, true, true))))))));
    global1 = array<i32, 12>();
    let var_1 = vec3<bool>(true, true, true);
    global3 = select(arg_1 <= _wgslsmith_clamp_u32(abs(~arg_1), 4294967295u, ~_wgslsmith_mult_u32(1u, u_input.a.x)), global2.x != var_0.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0, global1[_wgslsmith_index_u32(17826u, 12u)], global1[_wgslsmith_index_u32(arg_1, 12u)], arg_0)), ~reverseBits(vec4<i32>(2147483647i, 8815i, global1[_wgslsmith_index_u32(1u, 12u)], -29323i))) < (i32(-1i) * -(~(-12328i))));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, global1[_wgslsmith_index_u32(arg_1, 12u)]) | vec2<i32>(arg_0, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, global1[_wgslsmith_index_u32(17898u, 12u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 32332i), vec2<i32>(arg_0, 1i)))), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(min(4294967295u, 4294967295u) ^ max(arg_1, 0u), 12u)], arg_0), _wgslsmith_sub_i32(max(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 2147483647i) & -arg_0, select(~0i, global1[_wgslsmith_index_u32(~u_input.a.x, 12u)], all(vec2<bool>(var_1.x, true))))) ^ -1i;
    return true;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = false;
    var var_1 = (~vec2<i32>(arg_0, -17125i) | vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(15377u, 12u)], -2147483647i, 2147483647i), vec4<i32>(1i, -35184i, 20503i, -25861i)), -21787i)) & firstLeadingBit(~vec2<i32>(global1[_wgslsmith_index_u32(0u, 12u)], 15804i >> (1u % 32u)));
    let var_2 = ~abs(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_0, global1[_wgslsmith_index_u32(69277u, 12u)]) & vec3<i32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))) ^ firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 12u)], -16206i, -select(arg_0, var_1.x, var_0)));
    let var_3 = !var_0;
    let var_4 = ~u_input.a.zw;
    return select(select(!select(!vec2<bool>(var_0, true), !vec2<bool>(var_0, var_3), select(vec2<bool>(var_0, var_3), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), vec2<bool>(func_2(-4305i, var_4.x), var_0), var_3), select(vec2<bool>(var_3, any(vec3<bool>(var_3, true, var_3))), vec2<bool>(true, true), var_3)), select(vec2<bool>(any(select(vec4<bool>(true, var_3, var_0, var_3), vec4<bool>(var_0, false, false, true), vec4<bool>(var_3, true, false, false))), all(select(vec2<bool>(var_0, var_3), vec2<bool>(var_0, true), vec2<bool>(var_3, var_0)))), vec2<bool>(false && !var_3, true), any(select(select(vec4<bool>(var_3, var_3, false, var_3), vec4<bool>(var_0, var_3, var_3, var_0), true), !vec4<bool>(var_0, var_0, var_3, true), true))), var_3 && false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(12994u, 12u)]);
    let var_1 = ~_wgslsmith_dot_vec2_u32(~(~abs(u_input.a.wz)), vec2<u32>(~abs(u_input.a.x), firstTrailingBit(u_input.a.x >> (u_input.a.x % 32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2319f, -741f, var_0.x))) - _wgslsmith_f_op_f32(f32(-1f) * -611f)), global2.x)), !vec3<bool>(var_0.x, true, var_0.x), _wgslsmith_mod_vec4_i32(select(abs(vec4<i32>(1i, -1i, 14371i, global1[_wgslsmith_index_u32(var_1, 12u)])), reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(3256u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)])), vec4<bool>(false, true, var_0.x, false)) << (vec4<u32>(countOneBits(u_input.a.x), ~105599u, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 72093u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), -max(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(var_1, 12u)], global1[_wgslsmith_index_u32(var_1, 12u)], global1[_wgslsmith_index_u32(27198u, 12u)]), vec4<i32>(0i, 0i, -919i, global1[_wgslsmith_index_u32(0u, 12u)])), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], -23651i, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], -1i))));
    global3 = all(vec4<bool>(func_2(i32(-1i) * -26131i, reverseBits(u_input.a.x)), !(_wgslsmith_f_op_f32(-var_2.a) >= global2.x), var_0.x, !var_0.x));
    var var_3 = Struct_2(var_2, var_2, firstTrailingBit(i32(-1i) * -_wgslsmith_sub_i32(var_2.c.x, global1[_wgslsmith_index_u32(var_1, 12u)])), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(select(var_2.a, -766f, var_0.x)))))), vec3<bool>(true, true, !(93440u >= u_input.a.x)), select(vec4<i32>(~(-38791i), 0i, min(-26995i, 51704i), var_2.c.x), var_2.c ^ reverseBits(var_2.c), func_1(12378i).x)), -545f);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1630f, var_3.a.a)), _wgslsmith_div_f32(362f, -987f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x)))), !(!(!vec3<bool>(false, false, var_3.a.b.x))), var_2.c);
    let var_5 = Struct_2(var_2, var_3.a, -(-var_4.c.x & global1[_wgslsmith_index_u32(4294967295u, 12u)]), var_3.d, -481f);
    global3 = true;
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2515f, 688f, var_5.d.a, global2.x), vec4<f32>(570f, 498f, var_3.a.a, 1604f), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-770f, var_5.e, -534f, 576f))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1397f, -426f, -253f, 738f), vec4<f32>(var_2.a, 1281f, var_5.e, -1000f)), vec4<f32>(-383f, -1652f, var_4.a, -257f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-983f, var_3.b.a, -313f, -402f) + vec4<f32>(-275f, var_5.e, var_5.e, 519f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_4.a), -431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(min(651f, -1045f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-174f, -442f, 1004f, var_6.x) - vec4<f32>(var_5.b.a, -945f, var_6.x, 571f)), _wgslsmith_div_vec4_f32(vec4<f32>(1169f, -866f, var_2.a, -1427f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(252f, -1000f, -354f, var_4.a), vec4<f32>(var_5.e, 287f, 1598f, -747f), vec4<bool>(var_5.d.b.x, var_3.b.b.x, true, var_3.d.b.x)))), any(var_3.d.b))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_4.a) * 1687f), var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-var_5.b.a)), -213f)));
}

