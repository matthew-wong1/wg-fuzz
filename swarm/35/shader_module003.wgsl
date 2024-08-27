struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<i32> {
    global0 = array<vec4<bool>, 17>();
    global0 = array<vec4<bool>, 17>();
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, arg_2.b.x > abs(-2587i), any(vec3<bool>(arg_2.a.b, true, false))), !all(select(global0[_wgslsmith_index_u32(96058u, 17u)], global0[_wgslsmith_index_u32(135048u, 17u)], arg_3)), max(firstLeadingBit(4294967295u | u_input.a.x), ~1u), arg_2.e.d), vec2<i32>(-23768i, arg_2.b.x), Struct_1(!vec3<bool>(arg_3.x, false, false || arg_2.e.a.x), true | !any(vec3<bool>(arg_2.a.b, arg_2.a.a.x, false)), 67568u, arg_2.e.d), vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(1u, 0u << (arg_2.d.x % 32u))), ~_wgslsmith_mod_u32(arg_2.c.c, u_input.a.x), ~_wgslsmith_add_u32(1u, u_input.a.x) ^ 39012u), Struct_1(arg_3.xwy, _wgslsmith_f_op_f32(step(arg_1, -560f)) < arg_1, abs(~4294967295u), arg_2.e.d));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(max(1320f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.e.d.x + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.d.x + _wgslsmith_f_op_f32(-arg_1))))))));
    return abs(vec3<i32>(-1i) * -(vec3<i32>(-1i) * -vec3<i32>(var_1.b.x, -46517i, 1987i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec3<f32>) -> i32 {
    global0 = array<vec4<bool>, 17>();
    let var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), select(vec3<i32>(1i, 1i, 1i), _wgslsmith_mod_vec3_i32(func_3(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -991f), Struct_2(Struct_1(arg_1.c.xyy, false, u_input.a.x, vec2<f32>(-450f, -401f)), vec2<i32>(0i, -1i), Struct_1(arg_1.a.zxx, arg_1.b, 47437u, arg_2.yy), u_input.a.www, Struct_1(arg_1.c.xwy, arg_1.c.x, u_input.a.x, vec2<f32>(2254f, 508f))), !arg_1.c), vec3<i32>(1i, 1i, 1i)), vec3<bool>(any(global0[_wgslsmith_index_u32(~u_input.a.x, 17u)]), true, true)));
    let var_1 = Struct_2(Struct_1(arg_1.a.xzz, arg_1.a.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(sign(-538f)), _wgslsmith_f_op_f32(ceil(arg_2.x)))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(var_0, var_0), min(firstLeadingBit(vec2<i32>(-18506i, 19456i)), firstTrailingBit(vec2<i32>(var_0, -9975i)))), vec2<i32>(var_0, _wgslsmith_add_i32(-1i, 54420i))), Struct_1(!(!select(vec3<bool>(arg_1.a.x, arg_1.a.x, true), vec3<bool>(arg_1.a.x, arg_1.b, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, false))), arg_1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 28854u, u_input.a.x), vec4<u32>(33977u, 1u, u_input.a.x, 4294967295u) & vec4<u32>(0u, 0u, u_input.a.x, 4294967295u)) & 0u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.zw), _wgslsmith_f_op_vec2_f32(arg_0.yw + vec2<f32>(582f, arg_2.x)))), _wgslsmith_f_op_vec2_f32(-arg_0.xz)))), _wgslsmith_sub_vec3_u32(select(_wgslsmith_mult_vec3_u32(u_input.a.xyw, vec3<u32>(4294967295u, u_input.a.x, 63629u)), u_input.a.xxy, arg_1.c.yxw), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(11920u, 1u, 22320u), vec3<u32>(53654u, 7533u, 63430u)))), Struct_1(vec3<bool>(arg_1.c.x, !(!arg_1.b), true), !((arg_1.c.x & false) || !arg_1.b), select(~(u_input.a.x & u_input.a.x), ~countOneBits(u_input.a.x), arg_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.x, arg_2.x))) - arg_2.zz))));
    global0 = array<vec4<bool>, 17>();
    var var_2 = ~u_input.a & select(vec4<u32>(abs(4294967295u), _wgslsmith_add_u32(0u, 4294967295u), countOneBits(u_input.a.x), 59164u) & u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, abs(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), !(~var_1.d.x != var_1.a.c));
    return ~_wgslsmith_sub_i32(6653i, -(var_1.b.x ^ ~2147483647i));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<bool>, 17>();
    let var_0 = min(select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_mod_i32(-1283i, 2147483647i), 1i, 1i, reverseBits(2147483647i)), select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 17u)], vec4<bool>(false, true, true, true), true)), vec4<i32>(_wgslsmith_sub_i32(select(-17197i, -2147483647i, true), -22627i), _wgslsmith_mult_i32(abs(2147483647i), 1i), 1i >> (~u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-52325i, 0i, 11841i)))) & -vec4<i32>(1i, 1i, 1i, 1i);
    let var_1 = all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true))) | ((-func_2(vec4<f32>(-161f, -1000f, 274f, -1169f), Struct_5(vec4<bool>(false, true, true, true), false, global0[_wgslsmith_index_u32(0u, 17u)]), vec3<f32>(-421f, -2057f, 696f)) & var_0.x) >= -abs(var_0.x));
    var var_2 = -955f;
    global0 = array<vec4<bool>, 17>();
    return Struct_1(!vec3<bool>(false, !all(global0[_wgslsmith_index_u32(4294967295u, 17u)]), true), false, reverseBits(countOneBits(0u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-857f - _wgslsmith_f_op_f32(step(-1049f, 884f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -183f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 17>();
    let var_0 = func_1();
    global0 = array<vec4<bool>, 17>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(var_0.d.x - 518f), Struct_3(vec2<i32>(1i, 1i), vec2<i32>(select(-1i, 71310i, var_0.b) << ((u_input.a.x ^ u_input.a.x) % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 38087i), vec2<i32>(24581i, 69128i)))), _wgslsmith_mod_u32(1u, u_input.a.x), countOneBits(_wgslsmith_mod_u32(2152u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~96945u))), false);
    let var_2 = vec3<bool>(!select(func_1().a.x, false, true && (var_1.e & false)), var_1.e, !var_1.e);
    global0 = array<vec4<bool>, 17>();
    global0 = array<vec4<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, abs(-54332i), u_input.a.yw, vec2<u32>(var_1.d & _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.wz >> (vec2<u32>(0u, 8122u) % vec2<u32>(32u))), _wgslsmith_mod_u32(var_1.c, reverseBits(var_0.c))), -firstLeadingBit(var_1.b.a));
}

