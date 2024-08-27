struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

var<private> global1: array<u32, 4> = array<u32, 4>(4294967295u, 67459u, 4294967295u, 4294967295u);

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(reverseBits(u_input.a & (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33534u, 4u)], 4u)]), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(31305u, 4u)])) & u_input.a)), 4u)], Struct_1(false, 104f, firstTrailingBit(1i) > u_input.c.x), u_input.b, Struct_1(true, -1704f, global2.x), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(129351u, global1[_wgslsmith_index_u32(~0u, 4u)]), ~(vec2<u32>(1u, u_input.a) ^ vec2<u32>(3941u, 1u))), abs(abs(vec2<u32>(u_input.a, 52702u))) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 4u)], 4u)], max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 19806u)) % vec2<u32>(32u))));
    var var_1 = var_0.d.b;
    global0 = array<vec4<f32>, 28>();
    var var_2 = var_0.e;
    var var_3 = _wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_clamp_u32(35548u, var_2.x, var_0.a >> (26006u % 32u))), var_2.x);
    return !vec4<bool>(var_0.d.c, any(vec4<bool>(false, true, global2.x, all(vec2<bool>(false, true)))), true, any(vec2<bool>(false, true)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    global0 = array<vec4<f32>, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-646f, -784f)), _wgslsmith_f_op_f32(max(-697f, _wgslsmith_f_op_f32(arg_2.b.b + arg_2.d.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) - arg_2.b.b), _wgslsmith_f_op_f32(f32(-1f) * -591f)))));
    global0 = array<vec4<f32>, 28>();
    global2 = vec3<bool>(true, false, ~4294967295u <= arg_2.e.x);
    let var_1 = Struct_1(!((arg_1.a << (_wgslsmith_dot_vec2_u32(arg_2.e, arg_2.e) % 32u)) == ~u_input.b), _wgslsmith_div_f32(450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1408f))), false);
    return !func_3();
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = min(arg_3, ~vec3<u32>(arg_3.x, reverseBits(arg_0.x), firstTrailingBit(26792u)) | ~vec3<u32>(reverseBits(19689u), abs(global1[_wgslsmith_index_u32(55081u, 4u)]), 1u));
    let var_1 = Struct_1(!any(func_3().yxz) || !(_wgslsmith_clamp_i32(-46400i, u_input.c.x, u_input.c.x) < ~u_input.c.x), _wgslsmith_f_op_f32(step(1229f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1370f), -682f)))), all(!select(select(vec3<bool>(global2.x, arg_1.x, arg_1.x), vec3<bool>(false, global2.x, arg_1.x), true), !vec3<bool>(false, global2.x, true), select(arg_1.xxz, arg_1.yww, true))));
    global1 = array<u32, 4>();
    let var_2 = -25086i;
    global2 = select(vec3<bool>(true, global2.x, !(!arg_1.x)), !(!vec3<bool>(all(arg_1.xy), arg_3.x > 4294967295u, all(arg_1.yzz))), !any(!vec3<bool>(arg_1.x, true, false)));
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)))));
    let var_1 = global2.x;
    let var_2 = ~((~(~0u) & _wgslsmith_mult_u32(abs(4294967295u), global1[_wgslsmith_index_u32(arg_0.x, 4u)])) >> (3522u % 32u));
    var var_3 = false;
    let var_4 = func_4(vec2<u32>(33068u, 0u), select(select(select(func_2(vec3<bool>(true, true, global2.x), Struct_2(-31111i), Struct_3(global1[_wgslsmith_index_u32(62538u, 4u)], Struct_1(true, 331f, global2.x), -2147483647i, Struct_1(global2.x, 118f, global2.x), arg_0.wy), global1[_wgslsmith_index_u32(u_input.a, 4u)]), !vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false)), !vec4<bool>(true, false, global2.x, false), vec4<bool>(true, !global2.x, any(vec2<bool>(global2.x, global2.x)), !global2.x)), !(!func_3()), !any(func_2(vec3<bool>(true, global2.x, global2.x), Struct_2(38957i), Struct_3(27270u, Struct_1(true, -238f, false), -10660i, Struct_1(global2.x, var_0, true), arg_0.xw), 0u).yz)), _wgslsmith_add_u32(_wgslsmith_add_u32(~(var_2 & var_2), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(29100u, 6649u >> (1u % 32u)), 4u)]), u_input.a), arg_0.zwy);
    return func_4(_wgslsmith_sub_vec2_u32(arg_0.zy, ~(~countOneBits(arg_0.yz))), !func_2(select(func_3().wxw, !vec3<bool>(var_4.c, false, var_4.a), func_3().wxy), Struct_2(0i), Struct_3(1u, Struct_1(true, -1040f, global2.x), 2147483647i, var_4, vec2<u32>(0u, arg_0.x) & vec2<u32>(615u, u_input.a)), _wgslsmith_clamp_u32(33074u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], var_2), 4294967295u)), 1u, ~_wgslsmith_add_vec3_u32(select(firstLeadingBit(vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(u_input.a, 4u)])), vec3<u32>(13906u, 1u, 0u), vec3<bool>(global2.x, false, global2.x)), arg_0.yyw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<u32>(4294967295u, 4294967295u, max(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 4u)], 1u), 1u), u_input.a), vec4<i32>(reverseBits(0i), ~1i, 1i | ~(u_input.c.x >> (1u % 32u)), -1i));
    global1 = array<u32, 4>();
    global0 = array<vec4<f32>, 28>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(floor(func_4(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)]), vec4<bool>(false, true, var_0.a, true), 4294967295u, vec3<u32>(4294967295u, 18843u, 0u)).b)))))));
    global0 = array<vec4<f32>, 28>();
    var var_2 = 0u;
    var var_3 = func_4(max(~(~(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 36499u))), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 4u)]) ^ vec2<u32>(u_input.a, 0u), ~vec2<u32>(60499u, u_input.a)))), !(!(!vec4<bool>(true, var_0.a, false, false))), 1u, ~(vec3<u32>(4294967295u, firstTrailingBit(u_input.a), 32435u) ^ firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(66851u, 4u)], 1u))));
    let var_4 = 242f;
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1014f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1396f, _wgslsmith_f_op_f32(var_3.b + 1984f), var_0.b), vec3<i32>(u_input.c.x, select(u_input.c.x, -70961i, !var_3.a && !var_3.c), select(_wgslsmith_add_i32(1i, ~(-1i)), _wgslsmith_dot_vec3_i32(~u_input.c, vec3<i32>(39635i, u_input.b, u_input.c.x)), !select(true, false, var_3.c))), ~vec3<u32>(~abs(u_input.a), 1u, ~4294967295u), select(reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(19707u, 4u)], 4294967295u)), firstTrailingBit(~vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 4u)])), global2.x) | ~(~select(vec2<u32>(25493u, global1[_wgslsmith_index_u32(84798u, 4u)]), vec2<u32>(6594u, u_input.a), global2.yz)), ~u_input.a);
}

