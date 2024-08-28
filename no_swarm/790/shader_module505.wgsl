struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<vec2<u32>, 4>;

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: vec4<i32>;

var<private> global4: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(i32(-2147483648), 1i, 2147483647i, 1i), vec4<i32>(2147483647i, -41810i, 0i, 4021i), vec4<i32>(-5938i, 0i, 2147483647i, 2823i), vec4<i32>(i32(-2147483648), 29304i, -1i, i32(-2147483648)), vec4<i32>(-37186i, -1i, -1i, 46371i), vec4<i32>(-9906i, 1i, -4463i, 14318i), vec4<i32>(2675i, 0i, -17003i, -1i), vec4<i32>(-36232i, 43446i, -63768i, 1i), vec4<i32>(-53260i, i32(-2147483648), 2147483647i, -42883i), vec4<i32>(1i, 2147483647i, 51236i, -28031i), vec4<i32>(i32(-2147483648), i32(-2147483648), 61907i, -14271i), vec4<i32>(1i, -12304i, 2147483647i, 0i), vec4<i32>(-6157i, -43620i, -1i, 6709i), vec4<i32>(41994i, -1i, 2147483647i, 0i), vec4<i32>(-29273i, 0i, 86952i, 2147483647i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = arg_1;
    global1 = array<vec2<u32>, 4>();
    global3 = global4[_wgslsmith_index_u32(0u, 15u)];
    global4 = array<vec4<i32>, 15>();
    global0 = array<vec2<bool>, 29>();
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_2.b, arg_2.b), _wgslsmith_f_op_vec3_f32(ceil(arg_2.b)), arg_0.x))), arg_2.b))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_1(vec4<u32>(~(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), reverseBits(u_input.b.x), ~u_input.b.x, ~u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) * _wgslsmith_f_op_f32(671f + 217f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-207f * -844f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)))), -21597i);
    var var_1 = max(-u_input.c, global3.x);
    let var_2 = -29072i;
    var var_3 = Struct_2(vec3<i32>(-(2147483647i | max(2147483647i, var_0.c)), firstTrailingBit(0i), var_0.c), Struct_1(var_0.a, var_0.b, select(var_0.c, ~(-20058i), arg_0)), !arg_0);
    global1 = array<vec2<u32>, 4>();
    return -331f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(firstTrailingBit(var_0.c.c), arg_1.c.c, ~(-5904i))), firstTrailingBit(~vec3<i32>(-68069i, -27280i, -1i))), Struct_1(arg_2.b.a, _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(any(vec2<bool>(arg_1.d.x, var_0.d.x)), all(vec4<bool>(arg_2.c, true, false, true)), any(arg_1.d.xx)), var_0.a.c, Struct_1(vec4<u32>(6815u, 21377u, 0u, 31129u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-254f, arg_2.b.b.x, var_0.c.b.x) - arg_2.b.b), -arg_1.a.c), vec3<f32>(1198f, _wgslsmith_f_op_f32(-var_0.c.b.x), -279f))), global3.x), true);
    let var_2 = Struct_3(var_0.c, 819f, arg_1.c, vec3<bool>(true, !arg_2.c, false));
    global0 = array<vec2<bool>, 29>();
    return -select(u_input.d, -arg_1.a.c, true);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_sub_u32(~(arg_2.x | (arg_2.x ^ arg_2.x)) | u_input.b.x, u_input.b.x);
    var var_1 = Struct_3(Struct_1(abs(vec4<u32>(101586u, 0u, ~u_input.b.x, min(4294967295u, arg_2.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(165f, arg_0, arg_0)))), ~_wgslsmith_mod_i32(1i, global3.x)), arg_0, Struct_1(~firstLeadingBit(vec4<u32>(u_input.b.x, arg_2.x, arg_1, 70617u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1137f, -506f, 581f) - vec3<f32>(603f, 1479f, -306f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1245f, -358f) + vec3<f32>(429f, arg_0, -1095f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 409f, arg_0) * vec3<f32>(1903f, arg_0, 1536f)))), u_input.c), select(vec3<bool>(reverseBits(u_input.a.x) <= global3.x, !all(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), !(all(vec4<bool>(true, false, false, false)) & true)));
    global0 = array<vec2<bool>, 29>();
    var var_2 = func_4(vec2<f32>(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1.d.x)) * _wgslsmith_f_op_f32(-var_1.b))))), Struct_3(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(521f))) - 1053f), var_1.c, var_1.d), Struct_2(global2[_wgslsmith_index_u32(~0u, 30u)], var_1.c, (var_1.a.a.x != _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(arg_2.x, 4u)], arg_2)) & any(vec2<bool>(true, var_1.d.x))));
    global0 = array<vec2<bool>, 29>();
    return ~(-var_1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(60050u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 30383u, 0u)), u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(false, true, true), u_input.d, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 889u, u_input.b.x), vec3<f32>(337f, -1213f, 745f), u_input.d), vec3<f32>(803f, -360f, -2113f)))))), _wgslsmith_mod_i32(global3.x, ~func_2(1f, 4294967295u, ~vec2<u32>(6951u, u_input.b.x))));
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(var_0.a, ~var_0.a), var_0.b, _wgslsmith_dot_vec3_i32(~global2[_wgslsmith_index_u32(~u_input.b.x, 30u)], u_input.a));
    var var_2 = Struct_3(Struct_1(vec4<u32>(~1u, ~4294967295u, ~_wgslsmith_add_u32(u_input.b.x, 4294967295u), firstTrailingBit(27040u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1148f, var_1.b.x, var_0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1377f, var_0.b.x)), ~14184i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * -413f), Struct_1(~_wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(var_0.a.x, var_1.a.x, var_0.a.x, 90603u)), _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(any(vec4<bool>(false, false, false, false)), true, true), global3.x, Struct_1(vec4<u32>(30064u, var_0.a.x, var_1.a.x, 445u), _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(1475f, var_1.b.x, var_0.b.x)), u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.x, -1000f, var_0.b.x), vec3<f32>(-114f, -790f, -472f), vec3<bool>(false, false, false)))))), 0i), vec3<bool>(true, true, ((var_1.c >> (4294967295u % 32u)) | firstTrailingBit(global3.x)) > global3.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(905f, -430f)), -1000f))));
    var var_4 = Struct_4(vec4<u32>(~1u, _wgslsmith_div_u32(var_0.a.x, countOneBits(var_2.a.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x ^ var_2.a.a.x, var_2.c.a.x), abs(select(var_1.a.yx, var_0.a.yy, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))), var_2.c.a.x));
    let var_5 = -vec4<i32>(~1i, _wgslsmith_mod_i32(countOneBits(58963i), func_2(-292f, 51573u, var_0.a.wy ^ vec2<u32>(u_input.b.x, 16280u))), _wgslsmith_add_i32(~(-6670i >> (var_2.c.a.x % 32u)), ~(-48761i) ^ (-2147483647i << (var_2.a.a.x % 32u))), 6156i);
    var var_6 = Struct_4(var_0.a);
    let var_7 = select(select(select(!vec4<bool>(true, var_2.d.x, var_2.d.x, var_2.d.x), vec4<bool>(var_2.d.x, !var_2.d.x, true, all(global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), !(!vec4<bool>(true, false, false, var_2.d.x))), !(!select(vec4<bool>(false, false, var_2.d.x, var_2.d.x), vec4<bool>(true, var_2.d.x, false, var_2.d.x), vec4<bool>(var_2.d.x, false, true, true))), vec4<bool>(var_2.d.x, !(var_2.d.x && true), all(!vec3<bool>(var_2.d.x, false, var_2.d.x)), any(var_2.d.zx) && select(true, false, var_2.d.x))), vec4<bool>(var_2.d.x, !(!var_2.d.x & true), true, select(select(var_2.c.c, var_2.a.c, var_2.d.x), _wgslsmith_sub_i32(-5190i, var_1.c), var_2.d.x) > 44569i), (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1744f)), var_0.b.x)) == _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-var_3))) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) - -123f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))));
    var var_8 = Struct_3(Struct_1(var_4.a, _wgslsmith_f_op_vec3_f32(-var_0.b), func_2(_wgslsmith_f_op_f32(abs(-542f)), _wgslsmith_mod_u32(~4294967295u, var_2.a.a.x), ~u_input.b >> (min(vec2<u32>(var_2.a.a.x, var_1.a.x), var_4.a.yy) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * -873f)), var_0.b.x)), var_0, vec3<bool>(!(!var_2.d.x), var_0.a.x <= ~_wgslsmith_add_u32(var_1.a.x, var_2.c.a.x), select(any(select(var_2.d, vec3<bool>(var_7.x, false, false), false)), var_7.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

