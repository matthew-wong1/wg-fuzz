struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: array<vec2<bool>, 31>;

var<private> global3: array<u32, 4> = array<u32, 4>(1u, 5949u, 21877u, 1u);

var<private> global4: array<vec2<f32>, 30>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    return Struct_2(u_input.c, vec2<bool>(!(!all(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 4u)], 4u)])), !(!(61451u <= u_input.c))));
}

fn func_1() -> vec4<u32> {
    let var_0 = true;
    var var_1 = vec2<i32>(-_wgslsmith_sub_i32(u_input.a.x, -1i), ~(~9701i));
    var var_2 = _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(~(~1u), 30u)]);
    global2 = array<vec2<bool>, 31>();
    let var_3 = func_2(var_1.x, Struct_1(true, var_2.x, ~(~95047u) | global3[_wgslsmith_index_u32(u_input.b, 4u)], vec3<u32>(abs(u_input.c), firstTrailingBit(57485u), countOneBits(global3[_wgslsmith_index_u32(u_input.b, 4u)])) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(38779u, 1u, global3[_wgslsmith_index_u32(u_input.b, 4u)]) ^ vec3<u32>(global3[_wgslsmith_index_u32(u_input.c, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)], u_input.c), ~vec3<u32>(u_input.c, 33681u, global3[_wgslsmith_index_u32(9903u, 4u)]))), var_1.x);
    return abs(select(reverseBits(vec4<u32>(1u, 637u, 16303u, global3[_wgslsmith_index_u32(22399u, 4u)]) << (vec4<u32>(var_3.a, 0u, global3[_wgslsmith_index_u32(16674u, 4u)], 8986u) % vec4<u32>(32u))), ~(~vec4<u32>(1u, var_3.a, 1u, 5976u)), any(!global1[_wgslsmith_index_u32(37737u, 18u)]))) << (~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a, 1u, var_3.a, 0u), vec4<u32>(33620u, u_input.b, 4294967295u, global3[_wgslsmith_index_u32(var_3.a, 4u)]))) % vec4<u32>(32u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(1854f, 469f, true))) - _wgslsmith_div_f32(-359f, -1000f)))));
    var var_1 = !vec2<bool>(true, !arg_1.x && arg_1.x);
    var var_2 = 1i;
    global1 = array<vec4<bool>, 18>();
    var_1 = vec2<bool>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1263i, arg_0.x), -_wgslsmith_mult_i32(10025i, arg_0.x)) <= 52281i, all(select(arg_1, arg_1, !(var_0 == var_0))));
    return func_2(max(~u_input.a.x, u_input.a.x), Struct_1(arg_1.x, var_0, _wgslsmith_add_u32(1u, firstLeadingBit(u_input.b)) | ((0u ^ global3[_wgslsmith_index_u32(40830u, 4u)]) ^ ~u_input.c), ~vec3<u32>(func_2(7011i, Struct_1(var_1.x, var_0, 63001u, vec3<u32>(40894u, u_input.b, u_input.c)), 1i).a, reverseBits(u_input.c), func_1().x)), arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~65311u, 1u), ~max(vec2<u32>(56996u, u_input.c), abs(arg_2.d.zy))), arg_0.d.x);
    let var_1 = Struct_1(arg_1.b.x, _wgslsmith_f_op_f32(max(-994f, _wgslsmith_f_op_f32(min(475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b + -281f)))))), 1u >> (_wgslsmith_add_u32(~1u, min(min(arg_2.d.x, 64128u), 41649u)) % 32u), vec3<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, arg_1.a, 4294967295u, 4294967295u), vec4<u32>(6093u, 13061u, var_0, var_0)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(77979u, u_input.b, 0u, 32345u), vec4<u32>(arg_1.a, u_input.c, global3[_wgslsmith_index_u32(1u, 4u)], arg_2.d.x))), var_0, ~1u));
    global3 = array<u32, 4>();
    var var_2 = _wgslsmith_sub_vec3_u32(arg_0.d, arg_2.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - _wgslsmith_f_op_f32(-var_1.b)), arg_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-309f + -439f))), -682f))));
    return ~var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.c, select(select(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 61320u, global3[_wgslsmith_index_u32(u_input.c, 4u)], 1u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, u_input.c, 4294967295u)), 31u)], vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), select(select(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22300u, 4u)], 31u)], true), select(vec2<bool>(true, false), vec2<bool>(false, false), global2[_wgslsmith_index_u32(u_input.c, 31u)]), true), global2[_wgslsmith_index_u32(~(u_input.b << (31273u % 32u)), 31u)]), all(select(select(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(5292u, 31u)], false), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 31u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 31802u), 4u)], 31u)]))));
    global0 = array<vec3<bool>, 4>();
    let var_1 = ~1u;
    global1 = array<vec4<bool>, 18>();
    var var_2 = (all(vec3<bool>(var_0.b.x, false, var_0.b.x && var_0.b.x)) == var_0.b.x) & true;
    let var_3 = var_0.b.x;
    let var_4 = Struct_2(~((var_0.a | global3[_wgslsmith_index_u32(36285u, 4u)]) ^ u_input.c), vec2<bool>((u_input.c ^ 4294967295u) <= var_0.a, !var_0.b.x));
    let var_5 = 36051i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, var_1, 82924u, global3[_wgslsmith_index_u32(var_4.a, 4u)])), func_1()), func_2(var_5, Struct_1(!var_0.b.x, 1000f, func_2(var_5, Struct_1(var_4.b.x, 1308f, 40818u, vec3<u32>(42788u, var_4.a, u_input.c)), 0i).a, vec3<u32>(var_4.a, global3[_wgslsmith_index_u32(u_input.b, 4u)], 64770u) << (vec3<u32>(45186u, 20371u, var_4.a) % vec3<u32>(32u))), -_wgslsmith_mod_i32(288i, 2147483647i)).a), vec2<u32>(0u, func_4(Struct_1(var_4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_dot_vec3_u32(vec3<u32>(1861u, 62032u, 24031u), vec3<u32>(1u, 1u, var_1)), vec3<u32>(54494u, 1u, 99716u)), func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_5, var_5, 1i), vec4<i32>(var_5, 2147483647i, 29002i, var_5)), global1[_wgslsmith_index_u32(~9608u, 18u)], Struct_2(4294967295u, vec2<bool>(var_0.b.x, false))), Struct_1(false, 1511f, max(21655u, var_0.a), ~vec3<u32>(7612u, 5965u, var_0.a)))), ~vec4<u32>(~(var_4.a ^ u_input.c), ~u_input.c, 68143u, firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(32750u, 4u)], global3[_wgslsmith_index_u32(var_1, 4u)]), vec3<u32>(1u, 35634u, 1u)), 4u)])), u_input.a.x, 49188u);
}

