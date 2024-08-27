struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -29023i;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-644f, -1719f), vec2<f32>(-245f, 1000f), vec2<f32>(-244f, -924f), vec2<f32>(2305f, -253f), vec2<f32>(-227f, -371f), vec2<f32>(-970f, 682f), vec2<f32>(632f, -270f), vec2<f32>(2316f, 332f), vec2<f32>(-317f, 1399f), vec2<f32>(-1140f, -1688f), vec2<f32>(-948f, -420f), vec2<f32>(2279f, 253f), vec2<f32>(-2332f, 448f), vec2<f32>(-1895f, 1137f), vec2<f32>(102f, 1000f), vec2<f32>(345f, -710f));

var<private> global3: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = arg_0.e.c.zx;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_0.d.x);
    let var_1 = false;
    var var_2 = Struct_3(Struct_1(arg_2.a, arg_3.b.b), 62298u, select(!select(arg_0.c, !arg_0.c, vec3<bool>(global1.x, false, arg_0.a.a.x)), vec3<bool>(true, true, true), select(vec3<bool>(false, true || arg_3.b.a.x, !arg_2.a.x), select(arg_0.c, arg_0.c, !arg_3.a), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1690f, 271f)), Struct_2(arg_2, _wgslsmith_mod_u32(105587u, 91175u) & var_0.x, arg_0.e.c, arg_3.b));
    var_0 = ~firstLeadingBit(~firstLeadingBit(firstLeadingBit(var_2.e.c.zx)));
    return !vec2<bool>(any(select(!vec3<bool>(false, var_1, false), vec3<bool>(true, true, global1.x), any(vec4<bool>(var_2.a.a.x, true, true, var_1)))), false);
}

fn func_2(arg_0: i32) -> Struct_3 {
    global2 = array<vec2<f32>, 16>();
    global1 = select(select(vec2<bool>(true, true), vec2<bool>(true, !global1.x), !select(select(vec2<bool>(global1.x, false), vec2<bool>(true, false), vec2<bool>(global1.x, false)), vec2<bool>(global1.x, global1.x), func_3(Struct_3(Struct_1(vec2<bool>(global1.x, global1.x), vec4<i32>(1i, arg_0, 41839i, -12042i)), 1u, vec3<bool>(false, false, global1.x), vec2<f32>(181f, 323f), Struct_2(Struct_1(vec2<bool>(global1.x, global1.x), vec4<i32>(1i, 1i, -2147483647i, 2147483647i)), 4294967295u, vec4<u32>(0u, 62790u, 19784u, 0u), Struct_1(vec2<bool>(global1.x, false), vec4<i32>(29422i, arg_0, u_input.b, 49183i)))), global1.x, Struct_1(vec2<bool>(false, false), vec4<i32>(arg_0, arg_0, u_input.a, arg_0)), Struct_4(global1.x, Struct_1(vec2<bool>(false, false), vec4<i32>(arg_0, -1i, 1i, 1i)))))), vec2<bool>(global1.x, !select(global1.x, true, false != global1.x)), global1.x);
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true), max(countOneBits(countOneBits(vec4<i32>(u_input.a, arg_0, 32033i, 43154i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(arg_0, arg_0, 1i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -12675i, arg_0, 2147483647i), vec4<i32>(arg_0, -41353i, arg_0, u_input.a))))), 1u, ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 35595u, 9546u, 14860u), ~vec4<u32>(4455u, 1u, 1u, 0u))), Struct_1(func_3(Struct_3(Struct_1(vec2<bool>(global1.x, false), vec4<i32>(arg_0, arg_0, arg_0, -2147483647i)), 1u, vec3<bool>(false, global1.x, global1.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(38289u, 1u), 16u)], Struct_2(Struct_1(vec2<bool>(true, global1.x), vec4<i32>(u_input.b, -17001i, u_input.a, -1i)), 76377u, vec4<u32>(0u, 138428u, 1u, 4294967295u), Struct_1(vec2<bool>(global1.x, global1.x), vec4<i32>(2147483647i, arg_0, 3144i, arg_0)))), true, Struct_1(vec2<bool>(global1.x, global1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_0, 14568i, 15931i), vec4<i32>(0i, arg_0, -1i, arg_0))), Struct_4(true, Struct_1(vec2<bool>(false, global1.x), vec4<i32>(arg_0, 1i, 1i, 82014i)))), ~(select(vec4<i32>(u_input.b, 1i, arg_0, 10247i), vec4<i32>(arg_0, u_input.b, arg_0, arg_0), global1.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    global1 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f));
    return Struct_3(var_0.d, select(abs(var_0.c.x & var_0.b), _wgslsmith_dot_vec2_u32(~var_0.c.wy, vec2<u32>(var_0.c.x, 101339u)), false) >> (~1u % 32u), vec3<bool>(33759u >= var_0.c.x, true, all(vec3<bool>(var_0.a.a.x, var_0.a.a.x, any(var_0.a.a)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2438f, var_1))), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(var_0.b, 16u)]), var_0.d.a.x)))))), Struct_2(var_0.a, var_0.b, vec4<u32>(~(~var_0.b), var_0.c.x, var_0.b, 1u), var_0.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_5 {
    return Struct_5(vec3<bool>((_wgslsmith_mod_u32(arg_0.b, arg_0.b) & 33169u) < arg_0.b, !all(!arg_3), arg_3.x), arg_3.x);
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_5) -> vec2<bool> {
    let var_0 = arg_0;
    global3 = 1000f;
    var var_1 = select(vec3<bool>(!select(arg_1.x <= arg_2.x, false, true), any(vec2<bool>(false, arg_3.b)), -1000f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 240f), _wgslsmith_f_op_f32(f32(-1f) * -898f)))), arg_3.a, arg_3.a);
    global2 = array<vec2<f32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(arg_2.x).d.x, -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-408f + 391f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-972f + func_2(arg_1.x).d.x))))));
    return vec2<bool>(true, all(vec2<bool>(var_0 >= _wgslsmith_clamp_u32(4294967295u, 1u, 6646u), !arg_3.b)));
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_1(select(func_5(4294967295u, arg_3 ^ -vec3<i32>(arg_3.x, -7660i, -2147483647i), select(arg_3.xy, vec2<i32>(-7039i, arg_3.x), arg_0.a.zx), func_4(func_2(-1i), Struct_4(false, Struct_1(arg_0.a.yy, vec4<i32>(arg_3.x, 0i, 15062i, -2147483647i))), vec3<i32>(5033i, 43115i, -15914i), select(arg_0.a, arg_0.a, arg_0.b))), func_2(u_input.a).c.zy, arg_0.a.zx), reverseBits(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, arg_3.x, 2404i, -2147483647i), vec4<i32>(33665i, u_input.b, 30831i, u_input.b), vec4<i32>(0i, 1i, -30561i, u_input.b)) << (~vec4<u32>(11974u, 0u, 7725u, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = arg_2;
    var var_2 = ~select(-select(_wgslsmith_mult_i32(71692i, 0i), u_input.a, var_0.a.x | false), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 69130i, arg_3.x), vec4<i32>(64455i, arg_3.x, 14679i, arg_3.x)), true);
    var var_3 = 4294967295u | ~_wgslsmith_clamp_u32(72907u, ~reverseBits(94757u), 4294967295u);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2021f - arg_1)))));
    return Struct_4(var_0.a.x, Struct_1(var_0.a, var_0.b));
}

fn func_6(arg_0: Struct_4, arg_1: f32) -> Struct_4 {
    let var_0 = arg_1;
    let var_1 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(arg_0.b.b.zx), vec2<i32>(min(u_input.b, -18767i), u_input.a << (17421u % 32u)), -(~vec2<i32>(u_input.b, 0i))), arg_0.b.b.xx)).e.d;
    let var_2 = _wgslsmith_mod_i32(28503i, -2147483647i) ^ ~(arg_0.b.b.x & arg_0.b.b.x);
    let var_3 = func_3(Struct_3(var_1, abs(38164u), vec3<bool>(_wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(min(arg_1, arg_1)), true, !global1.x), global2[_wgslsmith_index_u32(30907u, 16u)], func_2(~(-1i)).e), false, Struct_1(select(func_1(Struct_5(vec3<bool>(arg_0.b.a.x, false, false), global1.x), var_0, all(vec4<bool>(false, true, var_1.a.x, var_1.a.x)), -vec3<i32>(25028i, -2147483647i, 2090i)).b.a, func_4(Struct_3(var_1, 11268u, vec3<bool>(true, arg_0.a, global1.x), global2[_wgslsmith_index_u32(11857u, 16u)], Struct_2(arg_0.b, 63830u, vec4<u32>(91850u, 49988u, 27621u, 42814u), Struct_1(vec2<bool>(false, global1.x), vec4<i32>(var_1.b.x, var_2, u_input.b, -53390i)))), arg_0, var_1.b.yxw, !vec3<bool>(arg_0.b.a.x, arg_0.a, var_1.a.x)).a.yx, !(!arg_0.b.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.x, arg_0.b.b.x, ~var_2, 38007i), arg_0.b.b & ~vec4<i32>(1i, var_1.b.x, -1i, var_1.b.x))), Struct_4(true, func_1(func_4(func_2(u_input.a), arg_0, func_1(Struct_5(vec3<bool>(false, global1.x, false), arg_0.b.a.x), arg_1, true, vec3<i32>(0i, var_1.b.x, arg_0.b.b.x)).b.b.zyw, func_2(0i).c), 313f, -1000f != _wgslsmith_f_op_f32(-var_0), select(var_1.b.wwx, arg_0.b.b.zww ^ arg_0.b.b.zzy, vec3<bool>(false, global1.x, var_1.a.x))).b)).x;
    let var_4 = select(!vec3<bool>(var_0 <= _wgslsmith_f_op_f32(f32(-1f) * -1062f), false, _wgslsmith_clamp_i32(2147483647i, var_2, 2147483647i) != -var_1.b.x), select(vec3<bool>(func_2(~(-9023i)).c.x, true || var_3, true), vec3<bool>(all(vec3<bool>(true, var_3, true)), any(select(vec4<bool>(false, true, var_3, global1.x), vec4<bool>(false, true, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, false, false, var_3))), true), !vec3<bool>(true, true, all(vec4<bool>(false, global1.x, var_3, var_1.a.x)))), vec3<bool>(true, true, arg_0.b.a.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(Struct_5(select(select(vec3<bool>(global1.x, false, false), vec3<bool>(false, true, global1.x), vec3<bool>(false, global1.x, true)), vec3<bool>(true, global1.x, global1.x), !vec3<bool>(global1.x, true, false)), true), -940f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1355f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1332f)) + -134f), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, 25372i, -2147483647i)), vec3<i32>(-83193i, u_input.b, 14701i)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 52776i, u_input.a), vec3<i32>(u_input.b, -2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = func_2(-1i).e;
    global1 = var_0.b.a;
    var_0 = Struct_4(true, func_1(Struct_5(vec3<bool>(all(vec3<bool>(var_0.a, true, global1.x)), true, false), global1.x), -234f, !func_5(1u, var_1.d.b.zxw >> (var_1.c.wwz % vec3<u32>(32u)), -var_1.a.b.yw, func_4(Struct_3(var_1.d, 472u, vec3<bool>(true, false, global1.x), vec2<f32>(1009f, -1043f), Struct_2(Struct_1(vec2<bool>(false, false), var_0.b.b), var_1.c.x, vec4<u32>(var_1.c.x, 853u, var_1.c.x, 3584u), Struct_1(var_0.b.a, var_1.a.b))), Struct_4(false, Struct_1(vec2<bool>(true, var_1.d.a.x), var_0.b.b)), var_1.a.b.yyx, vec3<bool>(true, true, true))).x, vec3<i32>(~_wgslsmith_add_i32(u_input.a, var_0.b.b.x), var_0.b.b.x, var_0.b.b.x)).b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_dot_vec4_u32(~var_1.c, _wgslsmith_mod_vec4_u32(vec4<u32>(5369u, 0u, 0u, var_1.c.x), var_1.c)) >> (max(var_1.c.x, ~110762u) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2556f, _wgslsmith_f_op_f32(sign(200f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~0u, 16u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(453f, -1387f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(firstTrailingBit(var_1.b), 16u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(398f, -452f) - global2[_wgslsmith_index_u32(1u, 16u)])))))), func_6(Struct_4(var_1.d.a.x & false, func_6(Struct_4(true, var_1.d), 534f).b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(755f)), _wgslsmith_f_op_f32(max(555f, -1815f))))).b.b.x << (var_1.b % 32u));
}

