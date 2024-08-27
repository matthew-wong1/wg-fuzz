struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, 0i, i32(-2147483648)), 1000f);

var<private> global1: vec3<f32>;

var<private> global2: Struct_4 = Struct_4(-980f, -415f);

var<private> global3: array<bool, 26> = array<bool, 26>(true, false, true, false, false, true, false, false, true, false, false, true, false, false, false, true, true, true, false, true, true, true, true, true, false, false);

var<private> global4: i32 = 17069i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    global4 = firstTrailingBit(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.b.xz, u_input.a.yz) | _wgslsmith_mod_vec2_i32(u_input.a.wy, vec2<i32>(-2147483647i, u_input.a.x)), u_input.a.wz));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2825f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1082f, global1.x)) * 711f))), global2.b);
    var var_1 = _wgslsmith_mod_u32(~(~0u), select(_wgslsmith_mult_u32(~reverseBits(87051u), 1u), _wgslsmith_sub_u32(1u, 1u), false));
    var var_2 = select(vec2<bool>(!global0.a.x, false), vec2<bool>(true, false), true);
    return ~countOneBits(~1u);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = global2.b;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -335f, arg_0))))) - vec3<f32>(-134f, global0.c, 338f));
    var var_1 = ~vec4<u32>(0u, select(0u, ~func_3(), false), _wgslsmith_mult_u32(~_wgslsmith_div_u32(arg_1.x, 1u), max(0u, arg_1.x) >> (~1u % 32u)), max(max(arg_1.x & 4294967295u, ~arg_1.x), ~arg_1.x >> (_wgslsmith_add_u32(arg_1.x, 4294967295u) % 32u)));
    global3 = array<bool, 26>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, arg_0, global0.c) + vec3<f32>(-736f, 1681f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1112f, 856f, global1.x)), !vec3<bool>(false, false, global0.a.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -1554f)) + _wgslsmith_f_op_f32(f32(-1f) * -994f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f + _wgslsmith_f_op_f32(841f * global2.b)) * arg_0), 1136f));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - arg_0), -156f);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> u32 {
    var var_0 = ~vec3<u32>(~countOneBits(arg_1.x), max(arg_1.x ^ 8617u, _wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x)) ^ 1u, ~_wgslsmith_div_u32(~arg_1.x, max(arg_1.x, arg_1.x)));
    let var_1 = !vec3<bool>(all(global0.a) && any(select(vec4<bool>(global0.a.x, false, true, global0.a.x), vec4<bool>(true, false, false, false), vec4<bool>(true, global0.a.x, false, global3[_wgslsmith_index_u32(35207u, 26u)]))), false, !global3[_wgslsmith_index_u32(var_0.x, 26u)]);
    var var_2 = vec3<bool>(!all(!var_1), all(select(vec3<bool>(global3[_wgslsmith_index_u32(max(arg_1.x, var_0.x), 26u)], all(vec4<bool>(global0.a.x, false, var_1.x, global0.a.x)), all(vec4<bool>(true, global0.a.x, var_1.x, false))), !var_1, select(any(vec4<bool>(false, false, var_1.x, false)), !global0.a.x, true && global0.a.x))), all(select(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.x, 26u)], var_1.x, true), !vec3<bool>(var_1.x, global0.a.x, global3[_wgslsmith_index_u32(var_0.x, 26u)]), !global3[_wgslsmith_index_u32(var_0.x, 26u)]), select(var_1, select(var_1, vec3<bool>(global0.a.x, true, global3[_wgslsmith_index_u32(arg_1.x, 26u)]), var_1.x), !vec3<bool>(true, global3[_wgslsmith_index_u32(5879u, 26u)], false)), !(!vec3<bool>(var_1.x, false, false)))));
    let var_3 = firstTrailingBit(firstLeadingBit(global0.b.x));
    let var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(max(func_3(), var_0.x), 1u, 51111u), ~arg_1);
    return _wgslsmith_add_u32(var_0.x, ~var_0.x);
}

fn func_1() -> f32 {
    var var_0 = max(vec2<u32>(64534u, select(func_4(func_2(1020f, vec3<u32>(4294967295u, 14634u, 1u)), vec3<u32>(47635u, 1u, 91726u)), 1u, global0.a.x)), ~vec2<u32>(~102708u, 64108u << (_wgslsmith_clamp_u32(15052u, 1u, 35022u) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(exp2(global2.a));
    var var_2 = i32(-1i) * -1i;
    let var_3 = -abs(firstTrailingBit(~global0.b.x << (var_0.x % 32u)));
    var_0 = _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_sub_u32(1u, var_0.x), ~var_0.x), 0u)), (abs(~vec2<u32>(4294967295u, 1849u)) & ~(~vec2<u32>(var_0.x, var_0.x))) >> (~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, var_0.x), abs(vec2<u32>(var_0.x, var_0.x))) % vec2<u32>(32u)));
    return 241f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)))), _wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(max(-1011f, _wgslsmith_f_op_f32(-global1.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(107f)), 931f, -1219f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(374f, -984f, _wgslsmith_div_f32(-644f, -1004f)) - vec3<f32>(_wgslsmith_f_op_f32(select(global0.c, -456f, false)), 730f, _wgslsmith_f_op_f32(-global1.x)))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, ~1u, ~(~_wgslsmith_sub_u32(4294967295u, 1u))), min(firstTrailingBit(~0u), ~(~(0u >> (1u % 32u))))), 26u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -582f))) + 510f) + _wgslsmith_f_op_f32(func_1())));
    let var_3 = Struct_4(199f, 682f);
    var var_4 = Struct_3(global0.a, -global0.b, _wgslsmith_f_op_f32(select(-117f, var_0.b, any(vec2<bool>(all(vec3<bool>(false, global0.a.x, false)), false)))));
    let var_5 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.wwz << (select(vec3<u32>(22951u, 16835u, 0u), vec3<u32>(4294967295u, 1u, 60589u), vec3<bool>(true, global3[_wgslsmith_index_u32(46063u, 26u)], true)) % vec3<u32>(32u)), global0.b.yxx, u_input.a.wzz), vec3<i32>(global0.b.x, -32201i, countOneBits(u_input.a.x) | -2147483647i)) ^ 1i;
    global3 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~(0u >> (1u % 32u)), 4294967295u, vec2<f32>(-1387f, _wgslsmith_f_op_f32(global1.x - -1000f)));
}

