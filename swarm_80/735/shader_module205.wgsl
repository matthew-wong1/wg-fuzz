struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-801f, 353f, -2194f, 310f, 2258f, 868f, 298f, 1401f, 1231f, -260f, -1347f, -115f, 101f, 380f, 231f, -259f, -716f, -1075f, 1368f, -1700f, -2080f, 570f, 123f, 856f, 1000f, -856f, -269f, 2024f, 395f, -437f, -865f);

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(101208u, 39102u, 44466u, 18098u), vec4<u32>(4294967295u, 12356u, 4294967295u, 31924u), vec4<u32>(1u, 0u, 0u, 67742u), vec4<u32>(4294967295u, 56577u, 1u, 42517u), vec4<u32>(4294967295u, 0u, 26110u, 4294967295u), vec4<u32>(15104u, 1u, 4294967295u, 22897u), vec4<u32>(1u, 52790u, 4294967295u, 46195u), vec4<u32>(4294967295u, 11346u, 4294967295u, 0u), vec4<u32>(1u, 19091u, 60783u, 24275u), vec4<u32>(4294967295u, 48290u, 4294967295u, 51248u), vec4<u32>(31250u, 0u, 4294967295u, 1u), vec4<u32>(0u, 32109u, 56627u, 1u), vec4<u32>(10404u, 5721u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(18356u, 72933u, 12602u, 12173u), vec4<u32>(4311u, 24631u, 16844u, 4294967295u), vec4<u32>(0u, 6875u, 4294967295u, 48258u), vec4<u32>(12627u, 4294967295u, 4294967295u, 44291u), vec4<u32>(90928u, 1u, 66822u, 9827u), vec4<u32>(70596u, 15586u, 0u, 0u), vec4<u32>(0u, 0u, 5573u, 584u), vec4<u32>(0u, 1u, 40883u, 0u), vec4<u32>(64191u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 76146u, 0u, 4632u), vec4<u32>(0u, 3333u, 0u, 2109u), vec4<u32>(32992u, 57026u, 0u, 19470u), vec4<u32>(0u, 1u, 53127u, 0u));

var<private> global2: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(arg_2.b.c.d), arg_2.a.x, abs(arg_3.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -52664i), arg_1.a)), abs(vec4<i32>(arg_1.b.c.d, -1i, arg_1.a.x, arg_1.a.x))) | (_wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(-63852i, -17284i, u_input.c, arg_1.b.b.x)), vec4<i32>(1i, -arg_3.c.d, arg_2.a.x, 1i)) & _wgslsmith_add_vec4_i32(abs(select(vec4<i32>(0i, arg_1.a.x, arg_2.a.x, arg_1.b.b.x), vec4<i32>(50056i, arg_1.a.x, 9674i, arg_3.d.d), arg_2.c)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-1i, arg_2.b.d.d, -7702i, arg_3.d.d)), vec4<i32>(1i, arg_2.a.x, arg_1.a.x, arg_1.b.b.x))));
    global3 = !vec2<bool>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_3.b.x, 9608i), vec3<i32>(arg_1.a.x, 9334i, 1i)) >= -39874i, arg_0);
    global3 = arg_1.b.c.b.wz;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~45741u), 21330u), vec2<u32>(_wgslsmith_mod_u32(1u, 1u), max(arg_3.c.c, 4294967295u)));
    global2 = array<vec3<bool>, 6>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_1.x, 31u)], _wgslsmith_f_op_f32(min(-257f, 195f)))) * 951f), _wgslsmith_f_op_f32(trunc(-1000f)));
}

fn func_2() -> Struct_2 {
    global3 = vec2<bool>(17206u == reverseBits(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 45062u), 28u)], ~vec4<u32>(0u, u_input.a, 97975u, u_input.a))), false);
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1263f, -1040f), vec2<f32>(global0[_wgslsmith_index_u32(60129u, 31u)], 131f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global3.x, Struct_4(vec2<i32>(u_input.b, u_input.c), Struct_2(global2[_wgslsmith_index_u32(u_input.a, 6u)], vec3<i32>(1i, u_input.b, 1i), Struct_1(false, vec4<bool>(true, global3.x, false, global3.x), 43419u, u_input.c), Struct_1(false, vec4<bool>(false, global3.x, global3.x, global3.x), 4294967295u, u_input.b), vec3<bool>(global3.x, false, true)), vec4<bool>(global3.x, false, false, global3.x)), Struct_4(vec2<i32>(u_input.c, 1i), Struct_2(global2[_wgslsmith_index_u32(33124u, 6u)], vec3<i32>(u_input.c, u_input.b, 2147483647i), Struct_1(false, vec4<bool>(false, global3.x, false, true), 25911u, -2147483647i), Struct_1(global3.x, vec4<bool>(global3.x, true, true, global3.x), u_input.a, u_input.b), global2[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<bool>(true, global3.x, global3.x, global3.x)), Struct_2(global2[_wgslsmith_index_u32(u_input.a, 6u)], vec3<i32>(0i, u_input.c, 2147483647i), Struct_1(global3.x, vec4<bool>(global3.x, global3.x, true, true), u_input.a, -76619i), Struct_1(global3.x, vec4<bool>(true, global3.x, false, global3.x), u_input.a, -35993i), vec3<bool>(global3.x, global3.x, global3.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1738f, global0[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(5267u, 31u)], -1000f))))))), global3.x));
    var var_1 = vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_f32(f32(-1f) * -198f));
    var var_2 = -16901i ^ ((reverseBits(0i >> (u_input.a % 32u)) >> (u_input.a % 32u)) << (firstLeadingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)) % 32u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 31u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(-1642f + 428f)))) != 757f;
    return Struct_2(global2[_wgslsmith_index_u32(u_input.a, 6u)], -_wgslsmith_sub_vec3_i32(reverseBits(firstTrailingBit(vec3<i32>(0i, 2147483647i, u_input.c))), countOneBits(~vec3<i32>(-47906i, u_input.c, 13291i))), Struct_1(!all(select(vec2<bool>(var_3, false), vec2<bool>(true, true), false)), !(!select(vec4<bool>(global3.x, true, true, var_3), vec4<bool>(var_3, false, global3.x, true), false)), 4294967295u, 0i), Struct_1(false, vec4<bool>(global3.x, all(select(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)], vec3<bool>(false, true, var_3))), any(vec4<bool>(true, var_3, false, false)), all(select(vec4<bool>(var_3, true, false, true), vec4<bool>(global3.x, false, false, var_3), vec4<bool>(false, false, true, var_3)))), u_input.a, min(-firstTrailingBit(u_input.c), _wgslsmith_mult_i32(u_input.b, -1i))), !select(!select(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)], false), global2[_wgslsmith_index_u32(~u_input.a, 6u)], !(!vec3<bool>(global3.x, global3.x, var_3))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    global0 = array<f32, 31>();
    let var_0 = Struct_4(arg_2.xz, func_2(), !vec4<bool>(true | (global3.x | arg_0.b.x), select(true, true && global3.x, true), true, arg_0.b.x));
    return Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)] != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(44981u, 31u)]) * global0[_wgslsmith_index_u32(4294967295u, 31u)]), true, var_0.c.x), -_wgslsmith_mod_vec3_i32((var_0.b.b >> (vec3<u32>(u_input.a, 35525u, arg_3) % vec3<u32>(32u))) | -vec3<i32>(-2147483647i, -5147i, arg_1), countOneBits(vec3<i32>(var_0.a.x, -2147483647i, arg_0.d)) | -vec3<i32>(arg_0.d, -1i, 39109i)), arg_0, var_0.b.c, func_2().e);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> StorageBuffer {
    let var_0 = true;
    let var_1 = arg_0.b;
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f - -2134f)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_0.c.c, 31u)])))), 1780f), vec2<u32>(~1u, 4294967295u), -1882f, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.c, 1u, 1u), _wgslsmith_clamp_vec3_u32(abs(min(vec3<u32>(4294967295u, arg_1, 8527u), vec3<u32>(1u, arg_0.d.c, arg_1))), ~_wgslsmith_div_vec3_u32(vec3<u32>(50530u, arg_0.c.c, 11496u), vec3<u32>(u_input.a, 1u, 34988u)), max(firstLeadingBit(vec3<u32>(49455u, 1u, arg_0.c.c)), vec3<u32>(3618u, 1u, arg_1)))), ~(-_wgslsmith_sub_vec2_i32(var_1.xx, var_1.zx | vec2<i32>(-2147483647i, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(Struct_1(global3.x, !select(vec4<bool>(false, true, false, global3.x), vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(true, global3.x, true, false)), 4294967295u, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(4159i, u_input.b, u_input.c))), abs(_wgslsmith_div_i32(~(-24613i), -53468i)), -vec4<i32>(-6851i, abs(u_input.b), _wgslsmith_mod_i32(u_input.c, -874i), countOneBits(-19558i)), 61743u), 21627u);
}

