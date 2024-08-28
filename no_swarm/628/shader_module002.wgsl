struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(4294967295u, 11522u, 1u), vec3<u32>(56943u, 74925u, 4294967295u), vec3<u32>(31378u, 70127u, 0u), vec3<u32>(4294967295u, 12342u, 97784u), vec3<u32>(4294967295u, 13064u, 4294967295u), vec3<u32>(22667u, 4294967295u, 19392u), vec3<u32>(27971u, 11066u, 1u), vec3<u32>(90385u, 1u, 26519u));

var<private> global2: f32 = 835f;

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(116f - arg_2.x);
}

fn func_2() -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(7634i, u_input.c, global3.a.x, u_input.a.x), u_input.b, global3.a), global4[_wgslsmith_index_u32(~u_input.d, 23u)]), -1i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(217f, 626f, -268f), vec3<f32>(-788f, -1000f, -405f))))))));
    let var_0 = select(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.wzy | vec3<i32>(13565i, u_input.c, 39251i), global3.a.xzz), -1i), -32704i, true);
    global3 = Struct_2(global3.a, global4[_wgslsmith_index_u32(firstTrailingBit(~u_input.d), 23u)]);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global3.a, global4[_wgslsmith_index_u32(u_input.d, 23u)]), ~2147483647i, vec3<f32>(-1580f, -110f, -1214f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2437f))), _wgslsmith_f_op_f32(f32(-1f) * -1107f), !global3.b.a.x)));
    global3 = Struct_2(reverseBits(select(-vec4<i32>(52026i, 15692i, -30113i, global3.a.x), -global3.a, vec4<bool>(global3.b.a.x, global3.b.a.x, false, global3.b.a.x))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d << (u_input.d % 32u), select(76462u, 12860u, global3.b.a.x), ~u_input.d, u_input.d ^ u_input.d), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.d, 32355u, 7302u, u_input.d)), vec4<u32>(107844u, u_input.d, u_input.d, 4294967295u) | vec4<u32>(u_input.d, u_input.d, 67662u, u_input.d))) % vec4<u32>(32u)), Struct_1(vec2<bool>(true, all(vec2<bool>(global3.b.a.x, global3.b.a.x)))));
    return Struct_2(global3.a, Struct_1(select(vec2<bool>(true, all(vec2<bool>(false, true))), !global3.b.a, !global3.b.a.x)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec3<f32>(1000f, 340f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1155f + -238f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(520f, 641f) * _wgslsmith_f_op_f32(1439f * -263f)))));
    var var_1 = arg_0.b.a.x;
    global0 = 4294967295u;
    global2 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))));
    return func_2();
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_mod_u32(4294967295u, u_input.d);
    var var_1 = true & global3.b.a.x;
    var var_2 = (global3.b.a.x | true) || any(vec4<bool>(global3.b.a.x, global3.b.a.x, true, true));
    let var_3 = func_4(func_2());
    global0 = _wgslsmith_mod_u32(22170u ^ ~var_0, ~((_wgslsmith_add_u32(u_input.d, 15135u) ^ 75887u) | 4294967295u));
    return Struct_4(vec4<f32>(-517f, 993f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-271f)) + -977f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-890f * 1284f)))), -1000f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    let var_0 = arg_1;
    global0 = u_input.d;
    var var_1 = arg_1.a.x;
    let var_2 = vec2<u32>(~_wgslsmith_add_u32(~4294967295u, u_input.d), ~countOneBits(select(2151u, select(50153u, 89780u, false), arg_1.a.x != var_0.a.x)));
    let var_3 = ~select(~66233u, u_input.d, global3.b.a.x);
    return Struct_3(arg_1.a.x, vec3<f32>(1000f, arg_1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -524f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(-285f, arg_1.a.x, -1705f, 496f)), _wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(476f, -837f, arg_1.a.x, var_0.a.x)), 0i != u_input.c)))), arg_1.a.x);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-509f, _wgslsmith_f_op_f32(-933f - arg_1.b.x))))) - _wgslsmith_f_op_f32(166f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(-2130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -432f))) + _wgslsmith_f_op_f32(sign(func_1().a.x))), _wgslsmith_f_op_f32(-arg_1.c.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, arg_1.a, 573f, -788f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_1.c)))))), _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-657f - _wgslsmith_f_op_f32(func_3(arg_2, arg_2.a.x, arg_1.b))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1167f - arg_1.c.x))))));
    var var_1 = select(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.d, 4294967295u, u_input.d), global1[_wgslsmith_index_u32(u_input.d, 8u)]), countOneBits(vec3<u32>(u_input.d, u_input.d, firstTrailingBit(~arg_3))), vec3<bool>(arg_2.b.a.x, select(all(!vec3<bool>(global3.b.a.x, arg_2.b.a.x, global3.b.a.x)), (0u | u_input.d) > (106178u & u_input.d), all(vec4<bool>(arg_2.b.a.x, false, false, global3.b.a.x))), false));
    let var_2 = select(!any(vec3<bool>(global3.a.x <= arg_2.a.x, false, global3.b.a.x)), true, false | (arg_2.a.x >= (~2171i & _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_2.a.x, -1i, -2147483647i, arg_0.x)))));
    let var_3 = arg_1;
    var var_4 = reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global3.a.x, ~u_input.c, -arg_2.a.x), arg_2.a.zxw));
    return _wgslsmith_f_op_f32(f32(-1f) * -1083f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(countOneBits(-vec2<i32>(29501i, -13517i)), func_5(global3.b, func_1(), global3.a.x > -11908i), func_2(), select(_wgslsmith_sub_u32(var_0, 1u), _wgslsmith_sub_u32(68651u, 0u), true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1838f - func_1().a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1354f * -1647f), -586f))));
    let var_2 = 1u;
    var var_3 = func_2();
    var var_4 = 14989u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(863f, 1000f))) - 1099f));
}

