struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9>;

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = Struct_4(Struct_2(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), !vec2<bool>(any(global0[_wgslsmith_index_u32(21992u, 9u)]), arg_2.e.x), arg_1), ~arg_3, arg_2.e.yy);
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(countOneBits(_wgslsmith_div_u32(u_input.a, 0u))), ~reverseBits(firstTrailingBit(arg_2.a))), ~var_0.a.a.a, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, min(1u, 76770u)), 1u));
    let var_2 = all(select(vec2<bool>(-339f >= arg_2.b, var_0.a.c.x), !(!arg_2.e.xx), vec2<bool>(!var_0.c.x, any(!vec4<bool>(arg_1.e.x, true, var_0.c.x, true)))));
    let var_3 = arg_0;
    global0 = array<vec2<bool>, 9>();
    return firstTrailingBit(firstTrailingBit(-_wgslsmith_sub_i32(var_0.b, 1i) >> (arg_1.a % 32u)));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = 4294967295u;
    global1 = 18668u;
    var var_1 = vec2<bool>(select(all(select(!arg_2.a.e.zx, !vec2<bool>(false, arg_2.a.d), select(arg_2.c, global0[_wgslsmith_index_u32(4294967295u, 9u)], arg_2.d.e.x))), false, false), false);
    var var_2 = _wgslsmith_sub_u32(10913u, _wgslsmith_mod_u32(arg_2.a.a << (59594u % 32u), ~(~(~var_0))));
    let var_3 = Struct_4(Struct_2(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(-arg_3))) - 1000f), vec2<bool>(true, false), arg_2.d), -1i, !select(select(!vec2<bool>(arg_2.d.c, arg_2.d.e.x), !arg_2.c, arg_2.c), global0[_wgslsmith_index_u32(0u, 9u)], !global0[_wgslsmith_index_u32(0u, 9u)]));
    return all(vec3<bool>(true, true, all(arg_2.d.e.yy)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = func_4((func_3(vec4<f32>(global3.x, global3.x, 1363f, 1644f), Struct_1(u_input.a, global3.x, false, true, vec3<bool>(false, false, false)), Struct_1(9189u, 1970f, true, false, vec3<bool>(true, true, true)), 1273i) & abs(-1i)) ^ firstTrailingBit(1i), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-23542i, 39921i, 12344i, 39489i), firstTrailingBit(vec4<i32>(2147483647i, -1i, 0i, 2147483647i))) & 1i, -(~(-2147483647i)), ~(-(~7844i))), Struct_2(Struct_1(arg_0, global3.x, !all(vec2<bool>(true, true)), select(46440u, 43883u, false) != ~arg_0, vec3<bool>(u_input.a > 20672u, false, true)), _wgslsmith_f_op_f32(sign(1000f)), select(select(select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(45321u, 9u)], true), vec2<bool>(true, true), select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(36840u, 9u)], false)), select(global0[_wgslsmith_index_u32(arg_0, 9u)], vec2<bool>(true, false), global0[_wgslsmith_index_u32(arg_0, 9u)]), global0[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 9u)]), Struct_1(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(525f)))), !all(global0[_wgslsmith_index_u32(15174u, 9u)]), false, vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))))));
    let var_1 = -971f;
    var var_2 = select(min(_wgslsmith_mult_vec3_i32(abs(~vec3<i32>(-43708i, 40184i, -2147483647i)), firstLeadingBit(firstTrailingBit(vec3<i32>(677i, -1i, 1i)))), reverseBits(vec3<i32>(-1i, -222i, _wgslsmith_clamp_i32(0i, -1i, -42597i)))), vec3<i32>(~(i32(-1i) * -25137i), i32(-1i) * -2147483647i, 1i), vec3<bool>(_wgslsmith_f_op_f32(-global3.x) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-474f, global3.x)))), true, true));
    let var_3 = Struct_2(Struct_1(16466u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(322f, global3.x) + -566f))), all(vec4<bool>(true, true, true, true)), !(!(u_input.a <= 89602u)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true), all(!global0[_wgslsmith_index_u32(1u, 9u)]))), var_1, !global0[_wgslsmith_index_u32(~arg_0, 9u)], Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0 >> (6666u % 32u), ~u_input.a, arg_0), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(u_input.a, arg_0, 22049u) ^ vec3<u32>(u_input.a, arg_0, u_input.a))), global3.x, all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), false, vec3<bool>(true, true, true)));
    let var_4 = select(~vec3<u32>(~(u_input.a << (arg_0 % 32u)), ~122896u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, var_3.a.a), ~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 41394u, var_3.d.a), vec3<u32>(arg_0, arg_0, 0u))), vec3<u32>(reverseBits(1u), ~_wgslsmith_mod_u32(1u, 1u), ~_wgslsmith_mod_u32(17839u, arg_0))), !var_3.a.e);
    return Struct_3(_wgslsmith_f_op_f32(var_3.a.b - _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.b + -1230f)))), var_3.d, ~(~reverseBits(vec4<u32>(var_4.x, 4294967295u, var_3.a.a, u_input.a))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    let var_0 = Struct_2(arg_3.b, arg_0.a.b, vec2<bool>(true, arg_3.b.d), func_2(~17715u).b);
    global0 = array<vec2<bool>, 9>();
    let var_1 = _wgslsmith_div_f32(-634f, _wgslsmith_f_op_f32(f32(-1f) * -344f));
    global2 = -2147483647i;
    let var_2 = Struct_4(var_0, arg_1.x, var_0.d.e.yy);
    return Struct_4(var_2.a, i32(-1i) * -37152i, vec2<bool>(!any(vec3<bool>(false, false, true)), !var_2.c.x));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = abs(~select(_wgslsmith_mult_u32(41911u, u_input.a), ~u_input.a, arg_2.c & arg_1.x)) < (countOneBits(abs(12109u)) | _wgslsmith_div_u32(9220u, u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) * _wgslsmith_f_op_f32(-global3.x)))) + 512f));
    let var_2 = func_5(Struct_2(arg_2, -140f, !vec2<bool>(!arg_3.x, false), arg_2), vec4<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -15129i, 21828i, arg_0), vec4<i32>(arg_0, arg_0, 29227i, -2147483647i)), reverseBits(vec4<i32>(arg_0, arg_0, arg_0, arg_0))), ~0i, arg_0, -(~arg_0)), !arg_2.e.x & all(vec2<bool>(select(true, true, false), arg_2.e.x)), func_2(103658u));
    let var_3 = vec3<bool>(func_2(~(~u_input.a)).b.c, !arg_1.x, arg_1.x);
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b))))));
    return var_2.a;
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = vec3<u32>(3507u, 49756u, 0u);
    global2 = arg_2.x;
    var_0 = vec3<u32>(abs(11250u), arg_3.a.a, ~max(var_0.x, _wgslsmith_add_u32(arg_3.a.a, 4294967295u | var_0.x)));
    var var_1 = select(!vec4<bool>(!(!arg_3.a.e.x), !(220f <= arg_1), -475f > _wgslsmith_div_f32(global3.x, arg_1), arg_3.d.e.x & all(vec2<bool>(arg_3.c.x, true))), !vec4<bool>(true, arg_3.d.c, arg_3.a.e.x, arg_3.c.x), false);
    var var_2 = vec2<bool>(var_0.x <= 51705u, var_1.x);
    return firstLeadingBit(_wgslsmith_mod_i32(-firstLeadingBit(arg_2.x), arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true & all(vec3<bool>(true, true, true)), select(true, any(vec3<bool>(true, true, true)), true));
    var var_1 = any(vec4<bool>(select(!var_0.x, global3.x > global3.x, false), select(all(global0[_wgslsmith_index_u32(u_input.a, 9u)]), var_0.x, true), var_0.x, var_0.x)) && true;
    let var_2 = -1205f;
    var_1 = !any(global0[_wgslsmith_index_u32(21220u, 9u)]);
    global2 = ~1i | (_wgslsmith_sub_i32(1i, func_6(global3.zw, _wgslsmith_f_op_f32(min(global3.x, global3.x)), vec3<i32>(1i, 1i, 1i), func_1(1i, vec2<bool>(false, var_0.x), Struct_1(102362u, -491f, var_0.x, var_0.x, vec3<bool>(true, var_0.x, var_0.x)), vec4<bool>(false, true, false, var_0.x)))) & 45103i);
    global1 = u_input.a;
    global0 = array<vec2<bool>, 9>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1360f, -1565f, var_2)) - vec4<f32>(global3.x, 658f, -403f, 1265f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -663f, var_2, 1045f), vec4<f32>(1000f, var_2, -1000f, var_2), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, global3.x, -200f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), var_2, _wgslsmith_div_f32(1337f, -1028f), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, global3.x, -578f, var_2))))))));
    global2 = -_wgslsmith_dot_vec2_i32(-vec2<i32>(14217i, -60154i), vec2<i32>(_wgslsmith_div_i32(-46414i, -27362i), min(_wgslsmith_clamp_i32(-1i, 8853i, 2147483647i), -83784i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global3.x, _wgslsmith_f_op_f32(var_3.x - global3.x)), i32(-1i) * -(~2495i), _wgslsmith_sub_vec3_i32(max(select(min(vec3<i32>(-2147483647i, 2147483647i, -3806i), vec3<i32>(15434i, -61655i, -2147483647i)), ~vec3<i32>(-26002i, -1i, -2108i), vec3<bool>(true, false, true)), vec3<i32>(1i, 1i, 1i)), abs(-vec3<i32>(-57901i, -18641i, -7105i))), reverseBits(vec2<u32>(func_1(~(-11872i), vec2<bool>(false, var_0.x), Struct_1(123961u, var_3.x, var_0.x, true, vec3<bool>(true, false, var_0.x)), vec4<bool>(true, var_0.x, var_0.x, true)).d.a, u_input.a)));
}

