struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(43396i, 0i);

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: array<i32, 28> = array<i32, 28>(-35289i, i32(-2147483648), 0i, -54126i, 2147483647i, 28994i, 41017i, 20343i, 0i, 71881i, 2147483647i, -27918i, 2147483647i, i32(-2147483648), 2147483647i, -43560i, -6433i, 2147483647i, -8869i, 20748i, 30500i, 1i, 2147483647i, -1i, 0i, 2991i, 1i, 2147483647i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    global2 = array<i32, 28>();
    let var_0 = Struct_2(arg_1, Struct_1(15199u, vec2<u32>(firstLeadingBit(abs(arg_1.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_1.b.x, 57661u), abs(vec3<u32>(arg_1.a, u_input.c, u_input.c)))), arg_1.d, arg_1.d), select(vec4<bool>(arg_1.c, any(select(vec4<bool>(true, arg_1.d, true, false), vec4<bool>(arg_1.c, arg_1.d, true, true), vec4<bool>(arg_1.c, arg_1.d, false, arg_1.c))), !(0u > u_input.e.x), true), !(!(!vec4<bool>(true, true, arg_1.d, false))), !select(true, any(vec3<bool>(arg_1.c, true, true)), arg_1.c || arg_1.c)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(718f)), 185f))) - _wgslsmith_f_op_f32(-644f * 457f));
    global0 = abs(~(vec2<i32>(u_input.d >> (u_input.e.x % 32u), global0.x) ^ vec2<i32>(global0.x, -global2[_wgslsmith_index_u32(33237u, 28u)])));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -312f);
    return 1174f;
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.b >> (_wgslsmith_mod_u32(u_input.c, 59322u) % 32u);
    let var_1 = any(vec2<bool>(true, false));
    let var_2 = Struct_1(u_input.e.x, vec2<u32>(~countOneBits(~u_input.e.x), 54286u), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1425f), -325f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(17249i, Struct_1(u_input.c, u_input.e, true, var_1)))));
    var var_3 = 758f;
    var var_4 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, var_2.b.x, var_2.b.x, 47771u)), max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.b.x, u_input.b, 18093u), vec4<u32>(4294967295u, 11293u, u_input.e.x, u_input.e.x)), firstLeadingBit(vec4<u32>(26899u, 4501u, 4294967295u, u_input.b)))), vec2<u32>(u_input.b, u_input.e.x), any(global1[_wgslsmith_index_u32(~(~var_2.b.x), 16u)]), var_1), Struct_1(~u_input.c, max(var_2.b, ~u_input.e), !((u_input.c >> (u_input.e.x % 32u)) < u_input.e.x), all(select(select(vec2<bool>(var_2.d, false), vec2<bool>(false, var_2.c), var_1), !vec2<bool>(false, var_2.c), false))), vec4<bool>(!(!(var_1 && true)), all(select(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.e.x), 16u)], !global1[_wgslsmith_index_u32(u_input.b, 16u)], select(global1[_wgslsmith_index_u32(var_2.b.x, 16u)], vec3<bool>(true, var_2.c, var_1), var_1))), var_2.c, all(!select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.c, false, false, var_1), var_1))));
    return Struct_2(var_2, var_2, vec4<bool>(any(vec3<bool>(true, true, true)), var_4.c.x & true, var_4.a.c, var_1));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> StorageBuffer {
    global1 = array<vec3<bool>, 16>();
    var var_0 = Struct_1((~u_input.e.x << (10309u % 32u)) ^ u_input.b, (vec2<u32>(~0u, ~4294967295u) | ~u_input.e) | vec2<u32>(4294967295u, ~(~4294967295u)), arg_2.x, !arg_2.x);
    global0 = firstTrailingBit(firstLeadingBit(-select(_wgslsmith_add_vec2_i32(arg_0.wz, vec2<i32>(global2[_wgslsmith_index_u32(u_input.e.x, 28u)], 20649i)), arg_0.zy >> (vec2<u32>(var_0.b.x, u_input.b) % vec2<u32>(32u)), true)));
    var var_1 = vec4<bool>(any(vec3<bool>(true, true, true)), var_0.d, all(!global1[_wgslsmith_index_u32(17160u, 16u)]), false);
    var var_2 = func_2();
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(-1027f, 190f, !(arg_2.x | true))), _wgslsmith_f_op_f32(251f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f))), -1736f, 1000f), ~(~(~vec3<u32>(u_input.c, 2600u, var_0.b.x) << (vec3<u32>(var_0.b.x, u_input.e.x, var_2.b.b.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, -425f, 1024f, 735f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-864f, 1010f, -119f, -482f), vec4<f32>(-1032f, -1383f, -462f, 919f), var_0.d)))))), vec4<u32>(var_0.b.x, 1u, var_2.b.a, 44987u), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.e.x, 4294967295u), vec3<u32>(var_0.b.x, 4294967295u, var_2.b.b.x) << (vec3<u32>(var_0.b.x, var_0.a, 58295u) % vec3<u32>(32u))), vec3<u32>(4294967295u << (var_0.a % 32u), 31944u, ~var_2.b.b.x)), vec3<u32>(46166u, ~(var_0.b.x ^ 44849u), _wgslsmith_add_u32(var_2.b.b.x, abs(var_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 28>();
    global1 = array<vec3<bool>, 16>();
    global0 = vec2<i32>(min(select(-1i | global0.x, -21040i << ((u_input.e.x | 1u) % 32u), true), global0.x), firstTrailingBit(reverseBits(global2[_wgslsmith_index_u32(~(u_input.b & 1u), 28u)])));
    var var_0 = 1u;
    global0 = _wgslsmith_sub_vec2_i32(-max(abs(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(94828u, 28u)])), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -15234i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], global0.x))) | vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, -33340i), max(global0.x, global2[_wgslsmith_index_u32(1u, 28u)])), ~u_input.a), vec2<i32>(firstTrailingBit(u_input.d >> (_wgslsmith_mod_u32(45860u, u_input.b) % 32u)), 2147483647i));
    var_0 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.e.x, u_input.c)), u_input.e.x);
    global1 = array<vec3<bool>, 16>();
    global1 = array<vec3<bool>, 16>();
    var var_1 = reverseBits(vec3<i32>(reverseBits(u_input.a), -(reverseBits(global0.x) << (~82597u % 32u)), global0.x));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_vec4_i32(-(~vec4<i32>(39229i, u_input.d, 1i, 36084i)), -(~vec4<i32>(-1i, global2[_wgslsmith_index_u32(0u, 28u)], global0.x, global0.x)) ^ countOneBits(vec4<i32>(-36979i, -1i, u_input.d, var_1.x))), !select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), vec2<bool>(true, true));
}

