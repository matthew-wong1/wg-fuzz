struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: i32;

var<private> global3: array<bool, 6>;

var<private> global4: array<u32, 4> = array<u32, 4>(1u, 45728u, 30644u, 0u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    global3 = array<bool, 6>();
    let var_0 = _wgslsmith_div_f32(339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-544f, _wgslsmith_f_op_f32(-159f * 877f)))));
    global1 = array<bool, 1>();
    global4 = array<u32, 4>();
    global4 = array<u32, 4>();
    return 0u;
}

fn func_2() -> Struct_1 {
    return Struct_1(~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(52987i, -39180i, -7758i, 54518i)), ~vec4<i32>(11485i, -15380i, -22384i, -1i)) << (12316u % 32u), reverseBits(_wgslsmith_mod_u32(u_input.a.x, ~func_3(u_input.a.x, Struct_2(vec3<u32>(0u, 3081u, 46398u), Struct_1(0i, 42240u, 2147483647i, vec4<i32>(-20843i, 0i, -47770i, 1i), 1u), vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 1u))))), _wgslsmith_mod_i32(-11877i, 46516i), vec4<i32>(~1i, -73095i, -35794i, 0i), u_input.a.x);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_3 {
    global2 = 1i;
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(vec3<u32>(abs(~(~var_0)), abs(~6758u), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(32901u, 1u), 27921u), 1u >> (0u % 32u))), func_2(), vec3<u32>(0u, 56191u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(var_0, 4u)], 102802u, 59597u, 33194u), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(44177u, 4u)], var_0, u_input.a.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, var_0), vec4<u32>(var_0, 4549u, var_0, u_input.a.x)))));
    let var_2 = vec3<bool>(false | all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], arg_2.x, true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 4u)], 1u)]), vec4<bool>(arg_1.x, true, global1[_wgslsmith_index_u32(var_1.b.b, 1u)], false), select(vec4<bool>(arg_2.x, arg_1.x, false, true), vec4<bool>(true, arg_1.x, true, true), vec4<bool>(arg_2.x, false, global1[_wgslsmith_index_u32(u_input.a.x, 1u)], true)))), true, true);
    var var_3 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0, global4[_wgslsmith_index_u32(var_0, 4u)], var_1.b.b, var_1.a.x)), ~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, var_1.c.x, global4[_wgslsmith_index_u32(var_1.c.x, 4u)]))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_1.c.x, global4[_wgslsmith_index_u32(58453u, 4u)], 0u, 90721u) & vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, 51156u)), abs(firstLeadingBit(vec4<u32>(1u, u_input.a.x, var_0, var_0)))));
    return Struct_3(var_0, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.a, 28027i, 1i, var_1.b.a), ~vec4<i32>(min(2147483647i, var_1.b.c), ~(-61912i), min(21619i, 21164i), 1i)), Struct_1(-var_1.b.c, _wgslsmith_mult_u32(53729u, countOneBits(0u)) & ~var_0, var_1.b.a, var_1.b.d, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.c.x, 4294967295u, var_1.c.x), vec4<u32>(64166u, 4950u, var_1.a.x, var_1.c.x)), 24132u)), vec2<u32>(countOneBits(_wgslsmith_div_u32(var_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 4u)], 4u)])) | func_3(firstLeadingBit(0u), var_1), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 4>();
    var var_0 = func_1(1732f, !select(!select(vec3<bool>(global3[_wgslsmith_index_u32(5571u, 6u)], false, global3[_wgslsmith_index_u32(4097u, 6u)]), vec3<bool>(global3[_wgslsmith_index_u32(1319u, 6u)], global3[_wgslsmith_index_u32(0u, 6u)], true), global3[_wgslsmith_index_u32(37185u, 6u)]), !vec3<bool>(false, true, global3[_wgslsmith_index_u32(45688u, 6u)]), all(!vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 1u)], false, global3[_wgslsmith_index_u32(34101u, 6u)], true))), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 1u)], global3[_wgslsmith_index_u32(47579u, 6u)]))));
    global0 = (func_1(_wgslsmith_f_op_f32(f32(-1f) * -913f), select(!vec3<bool>(global3[_wgslsmith_index_u32(var_0.d.x, 6u)], global3[_wgslsmith_index_u32(2726u, 6u)], false), !vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 1u)], false), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.a, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)], false)), select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 1u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 1u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_0.c.e, 6u)], false))).c.b ^ u_input.a.x) > u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, var_0.c.d.x) | abs(1i));
}

