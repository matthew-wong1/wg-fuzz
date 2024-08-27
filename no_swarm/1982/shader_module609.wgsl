struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<i32>(-27795i, -13411i, -3618i));

var<private> global1: bool = false;

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-353f, 678f), vec2<f32>(-141f, -2227f), vec2<f32>(-1456f, -798f), vec2<f32>(1448f, 745f), vec2<f32>(-1313f, -299f), vec2<f32>(-281f, -206f), vec2<f32>(-329f, -791f), vec2<f32>(1234f, -1257f), vec2<f32>(579f, 174f), vec2<f32>(-137f, 663f), vec2<f32>(201f, 1000f), vec2<f32>(1451f, 1076f), vec2<f32>(-1064f, 704f));

var<private> global3: vec4<f32> = vec4<f32>(720f, -384f, 887f, 2451f);

var<private> global4: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(-48407i, true, vec2<f32>(-446f, -846f), false)), Struct_2(Struct_1(2147483647i, true, vec2<f32>(1367f, -193f), true)), Struct_2(Struct_1(46219i, true, vec2<f32>(136f, -1011f), false)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = Struct_5(vec3<i32>(select(-2926i, ~arg_1.a.a.a, true), -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_1.c.x, 2147483647i, -34371i), -vec4<i32>(-43025i, u_input.e, 0i, arg_0.a.x)), vec4<i32>(u_input.e, _wgslsmith_sub_i32(global0.a.x, -40891i), i32(-1i) * -56984i, firstLeadingBit(64681i)))));
    var var_1 = arg_1;
    let var_2 = vec3<i32>(var_0.a.x, countOneBits(-3681i), arg_1.c.x) ^ u_input.d;
    var var_3 = u_input.a.zy;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, var_1.a.a.c.x, var_1.a.a.c.x, var_1.b.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1321f, 412f, 192f, global3.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.c.x, -1000f, global3.x, var_1.b.c.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(550f, arg_1.a.a.c.x, 1711f, 251f) - vec4<f32>(858f, global3.x, arg_1.b.c.x, arg_1.a.a.c.x)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.c.x, -3036f, 518f, arg_1.b.c.x))))));
    return vec4<i32>(1i, 0i, -var_1.b.a, arg_0.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_4(global4[_wgslsmith_index_u32(25805u, 3u)], Struct_1(u_input.e, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(266f, 448f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3.x)))), !any(vec3<bool>(true, false, false))), min(_wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_add_i32(-37526i, u_input.d.x), firstTrailingBit(global0.a.x), 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.e, 2147483647i, -2147483647i) << (vec4<u32>(65132u, var_0, u_input.c, 1708u) % vec4<u32>(32u)), vec4<i32>(u_input.e, 45437i, global0.a.x, 3834i))), func_3(Struct_5(vec3<i32>(-1i, global0.a.x, -1i)), Struct_4(Struct_2(Struct_1(u_input.e, true, global3.yy, false)), Struct_1(-35904i, false, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], true), vec4<i32>(-6326i, 1i, global0.a.x, u_input.e)))));
    var var_2 = Struct_3(select(vec2<bool>(true, true), vec2<bool>(var_1.b.d, all(select(vec4<bool>(false, false, var_1.b.b, var_1.a.a.d), vec4<bool>(var_1.a.a.b, true, true, var_1.a.a.b), var_1.a.a.d))), true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(0u, var_0, u_input.b, var_0)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(54792u, 89835u, u_input.c, var_0)), vec4<u32>(u_input.c, 0u, 44742u, u_input.b)), max(~vec4<u32>(16100u, u_input.c, 4294967295u, 30204u), vec4<u32>(var_0, u_input.c, var_0, 0u))), vec4<u32>(min(_wgslsmith_add_u32(u_input.c, 2874u), 6442u), ~(var_0 ^ 85548u), 2963u, min(~u_input.a.x, ~0u))), 13u)], _wgslsmith_mult_vec3_u32(u_input.a, u_input.a));
    global0 = Struct_5(vec3<i32>(u_input.d.x, abs(~(-2147483647i)), 0i) << (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 1u, 0u), vec3<u32>(var_2.c.x, 4294967295u, 0u)), var_0), var_0, min(u_input.b, u_input.c) << (33206u % 32u)) % vec3<u32>(32u)));
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-983f, 1414f)))) * vec2<f32>(var_1.a.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(463f - var_2.b.x)))), u_input.a);
    return Struct_1(abs((39155i & u_input.d.x) | 39394i) >> (_wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_div_u32(0u, u_input.b)) % 32u), _wgslsmith_f_op_f32(trunc(-1213f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), global3.xz, var_2.a.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = select(true, true, all(select(select(select(vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, true, arg_0, arg_0)), !vec4<bool>(true, arg_0, true, arg_0), true), select(select(vec4<bool>(false, false, true, arg_0), vec4<bool>(false, false, true, false), arg_0), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, arg_0, false, false)), arg_0), vec4<bool>(u_input.b <= 1u, arg_0 & true, true, arg_0))));
    var var_0 = func_2();
    var var_1 = -1168f;
    let var_2 = true;
    global2 = array<vec2<f32>, 13>();
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.c.x, arg_0.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(172f)) * _wgslsmith_f_op_f32(max(arg_0.a.c.x, global3.x))))), global3.x);
    var var_1 = vec3<bool>(arg_2, false, true);
    let var_2 = u_input.a;
    var_1 = vec3<bool>(true, func_2().d, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * 1973f))) < var_0.x);
    global1 = all(!(!var_1.yz));
    return !vec2<bool>(arg_0.a.a != -37145i, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 48974i;
    var var_1 = func_4(Struct_2(func_1(false)), vec4<u32>(firstLeadingBit(1u), ~1519u << (u_input.b % 32u), u_input.c, 56697u), !(!all(vec4<bool>(false, true, false, false))) == (0u != ~_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, 12474u))));
    global4 = array<Struct_2, 3>();
    let var_2 = abs(vec2<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c) ^ min(~71622u, u_input.b | 15436u), u_input.b));
    global4 = array<Struct_2, 3>();
    global0 = Struct_5(countOneBits(~_wgslsmith_div_vec3_i32(global0.a, u_input.d)));
    var var_3 = Struct_2(func_2());
    var var_4 = Struct_4(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, _wgslsmith_div_vec2_u32(u_input.a.yy & var_2, select(var_2, var_2, false))), 203u), 3u)], Struct_1(_wgslsmith_sub_i32(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(48453i, var_3.a.a), select(vec2<i32>(var_3.a.a, global0.a.x), vec2<i32>(-39057i, 1i), vec2<bool>(var_3.a.b, var_3.a.d)))), false, _wgslsmith_f_op_vec2_f32(-global3.xz), var_3.a.b), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, 29925i), -vec4<i32>(var_0, var_3.a.a, var_3.a.a, 4363i), vec4<i32>(0i, u_input.d.x, u_input.d.x, var_3.a.a)) & _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(var_3.a.a, 60584i, 8i, -1i)), select(vec4<i32>(u_input.e, -2147483647i, 2147483647i, var_0), vec4<i32>(var_0, var_0, 0i, 2147483647i), true))));
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(360f + 103f), _wgslsmith_f_op_f32(var_3.a.c.x - 674f), _wgslsmith_f_op_f32(var_4.b.c.x + -837f), _wgslsmith_f_op_f32(round(var_4.b.c.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, var_4.b.c.x, var_4.a.a.c.x, var_3.a.c.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.a.a.c.x, var_4.a.a.c.x, 1103f, -1528f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(53523u, 4294967295u, 0u, u_input.a.x) << (vec4<u32>(0u, 4294967295u, u_input.b, var_2.x) % vec4<u32>(32u)), ~vec4<u32>(33532u, var_2.x, u_input.c, 79175u)) ^ vec4<u32>(59022u, ~1u, firstLeadingBit(select(0u, u_input.b, var_1.x)), ~3992u), vec2<i32>(~global0.a.x, -2147483647i), global3.wz);
}

