struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), 6268i, 36887i), vec2<bool>(false, false), vec2<bool>(true, false), 4294967295u, vec2<bool>(false, true)));

var<private> global2: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(458f, 340f, -1166f), vec3<f32>(-688f, 401f, 1186f), vec3<f32>(-872f, 2549f, -1201f), vec3<f32>(-1576f, 296f, -1487f), vec3<f32>(-247f, 1966f, 735f), vec3<f32>(-257f, -1000f, -241f), vec3<f32>(-1160f, -1067f, 1362f), vec3<f32>(1540f, 549f, -691f), vec3<f32>(2396f, 1449f, 381f), vec3<f32>(1000f, -634f, 112f), vec3<f32>(643f, 766f, -1277f), vec3<f32>(1264f, -750f, 139f), vec3<f32>(247f, -1587f, -1222f), vec3<f32>(615f, -511f, -223f), vec3<f32>(-575f, -610f, -2196f), vec3<f32>(-756f, 1904f, -1006f), vec3<f32>(351f, 1673f, -384f), vec3<f32>(573f, -1347f, -240f), vec3<f32>(-1353f, -381f, -983f), vec3<f32>(226f, 2139f, -594f), vec3<f32>(-1705f, -471f, -317f), vec3<f32>(-1884f, 355f, -528f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> bool {
    global2 = array<vec3<f32>, 22>();
    global2 = array<vec3<f32>, 22>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, global1.a.d), 19u)];
    let var_1 = vec2<bool>(false, arg_2.x);
    var var_2 = arg_0;
    return global1.a.e.x;
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 818f) + 601f)))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(-1411f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-711f))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-383f, 547f) - _wgslsmith_div_f32(951f, 340f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(458f))))), !arg_0.a.a & (!global1.a.b.x & global1.a.e.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(342f)))));
    let var_1 = Struct_1(vec4<i32>(global1.a.a.x, global1.a.a.x | 1i, 1i, 2147483647i), vec2<bool>(!global1.a.b.x | true, true), select(select(!select(vec2<bool>(false, false), global1.a.c, global1.a.c.x), global1.a.e, !global1.a.c.x), vec2<bool>(true, any(!vec2<bool>(false, arg_0.a.a))), global1.a.c), global1.a.d, select(select(!select(global1.a.c, global1.a.b, global1.a.e), !vec2<bool>(global1.a.b.x, false), select(select(vec2<bool>(true, true), global1.a.c, global1.a.e.x), global1.a.b, vec2<bool>(true, global1.a.b.x))), !global1.a.b, vec2<bool>((global1.a.d < global1.a.d) & (27549u <= global1.a.d), false)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-140f - 1113f) + -1000f))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, -652f, -1032f, -1351f))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1089f, _wgslsmith_f_op_f32(f32(-1f) * -1140f), _wgslsmith_f_op_f32(-469f * -712f), var_2)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-657f, var_2, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f + -480f) + _wgslsmith_f_op_f32(round(-1595f))), _wgslsmith_div_f32(1660f, _wgslsmith_f_op_f32(f32(-1f) * -2035f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1487f + 255f) * _wgslsmith_f_op_f32(-571f + var_0.x))), true)));
    let var_3 = global1.a.b.x;
    return vec4<bool>(-2147483647i != u_input.d, ((arg_0.a.a || global1.a.b.x) | (all(vec2<bool>(arg_0.a.a, arg_0.a.a)) & var_1.b.x)) && (true | ((var_1.a.x & -35367i) <= _wgslsmith_mult_i32(var_1.a.x, 0i))), true, var_1.b.x);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = !select(vec4<bool>(func_2(_wgslsmith_f_op_f32(-565f + -1000f), ~26553u, vec2<bool>(false, global1.a.c.x)), any(vec2<bool>(true, arg_0.a.c.x)) | true, true, arg_0.a.e.x), select(select(select(vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, true, arg_0.a.e.x), vec4<bool>(global1.a.e.x, true, true, false), vec4<bool>(true, global1.a.b.x, false, true)), func_3(Struct_4(global0[_wgslsmith_index_u32(9475u, 19u)], 13490i)), !global1.a.b.x), select(func_3(Struct_4(Struct_3(true), 2147483647i)), func_3(Struct_4(Struct_3(false), u_input.d)), select(false, true, global1.a.b.x)), !select(vec4<bool>(true, arg_0.a.c.x, false, true), vec4<bool>(arg_0.a.b.x, arg_0.a.e.x, false, arg_0.a.b.x), arg_0.a.b.x)), select(!(!vec4<bool>(global1.a.e.x, global1.a.e.x, global1.a.b.x, true)), func_3(Struct_4(Struct_3(false), global1.a.a.x)), arg_0.a.b.x));
    global2 = array<vec3<f32>, 22>();
    global1 = arg_0;
    let var_1 = arg_0;
    let var_2 = !(!func_3(Struct_4(global0[_wgslsmith_index_u32(arg_0.a.d, 19u)], _wgslsmith_dot_vec4_i32(arg_0.a.a, vec4<i32>(arg_0.a.a.x, 23962i, 1i, arg_0.a.a.x)))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(52481u, 22u)])) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(179f, 578f, 491f), global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global1.a.d <= 0u))), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~(~0u), 22u)])));
    var var_1 = -_wgslsmith_sub_vec2_i32(~countOneBits(vec2<i32>(1i, 0i)), vec2<i32>(-u_input.c | u_input.b, ~(-1i)));
    var var_2 = vec3<i32>(global1.a.a.x, -firstLeadingBit(u_input.c), 16528i) ^ (_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, -9938i, global1.a.a.x), vec3<i32>(var_1.x, var_1.x, 0i)), min(countOneBits(global1.a.a.yyw), global1.a.a.wzy)) << (abs(firstTrailingBit(vec3<u32>(u_input.a.x, global1.a.d, u_input.a.x) | vec3<u32>(0u, 0u, 0u))) % vec3<u32>(32u)));
    let var_3 = Struct_2(func_1(Struct_2(Struct_1(-global1.a.a, global1.a.c, vec2<bool>(true, true), ~4294967295u, !global1.a.c))));
    let var_4 = !(!select(!select(vec3<bool>(var_3.a.c.x, var_3.a.e.x, global1.a.c.x), vec3<bool>(var_3.a.b.x, true, global1.a.c.x), false), func_3(Struct_4(Struct_3(false), var_3.a.a.x)).xzy, vec3<bool>(!var_3.a.e.x, -1i <= u_input.b, false)));
    let var_5 = ~(-2402i) & _wgslsmith_mod_i32(~1i, var_3.a.a.x);
    var var_6 = vec3<u32>(36834u, abs(~reverseBits(~u_input.a.x)), reverseBits(1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~vec3<u32>(max(var_3.a.d, 1u), countOneBits(1u), firstLeadingBit(var_6.x)) >> (~(~vec3<u32>(var_3.a.d, global1.a.d, 33241u)) % vec3<u32>(32u)));
}

