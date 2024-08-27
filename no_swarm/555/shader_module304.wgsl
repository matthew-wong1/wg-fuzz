struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 25>;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, false, true), vec4<bool>(false, true, true, true), vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, false, true), vec4<bool>(true, true, false, true), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, false, true), vec4<bool>(false, false, true, false), vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, false, false), vec4<bool>(true, false, true, true), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, false, false), vec4<bool>(true, true, true, true), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, true, true), vec4<bool>(false, false, true, false), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, false, false), vec4<bool>(false, true, true, false), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, false, true), vec4<bool>(false, true, false, false), vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, true, true), vec4<bool>(false, true, false, false), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, true, true), vec4<bool>(false, true, true, false), vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, false, true), vec4<bool>(true, false, true, true), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, true, false), vec4<bool>(false, false, true, false), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, true, false), vec4<bool>(false, false, false, true), vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, true, false), vec4<bool>(false, false, false, true), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), vec3<bool>(false, true, false)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    global2 = array<Struct_3, 19>();
    global1 = array<bool, 25>();
    global0 = 1000f;
    let var_0 = Struct_5(select(firstLeadingBit(19432i), -u_input.a, true) << (1u % 32u), ~abs(~(~68025u)), 1i, min(countOneBits(~(~4294967295u)), ~(~289u)));
    let var_1 = Struct_2(Struct_1(var_0.d, true, _wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(31796u, var_0.d, var_0.b)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d, 62459u, var_0.d), vec3<u32>(var_0.d, 91979u, 4294967295u), vec3<u32>(37319u, 4294967295u, var_0.d))), firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c.zw, vec2<i32>(u_input.b.x, -1i)) | (i32(-1i) * -2147483647i))), Struct_1(var_0.b | 30493u, global1[_wgslsmith_index_u32(36917u, 25u)], _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.d, var_0.d, var_0.d), countOneBits(vec3<u32>(5231u, 17598u, 0u))) << (vec3<u32>(_wgslsmith_sub_u32(var_0.b, 0u), select(71273u, 0u, false), ~3353u) % vec3<u32>(32u)), min(var_0.c, u_input.b.x | u_input.b.x)), Struct_1(reverseBits(_wgslsmith_sub_u32(4294967295u, var_0.b) ^ (7853u | var_0.d)), true, ~vec3<u32>(var_0.b, 4294967295u, countOneBits(0u)), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(25266i, 0i)) & -20151i)));
    return ~var_1.b.c;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_3, 19>();
    return Struct_1((_wgslsmith_div_u32(firstTrailingBit(8052u), countOneBits(18672u)) & ~(~12401u)) << (min(_wgslsmith_mult_u32(_wgslsmith_div_u32(35706u, 4294967295u), select(13102u, 4294967295u, global1[_wgslsmith_index_u32(0u, 25u)])), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 23571u, 102052u), vec3<u32>(55439u, 60497u, 0u))) % 32u), any(vec2<bool>(true, true)), func_3(), min(u_input.a, -77906i));
}

fn func_1(arg_0: vec4<i32>) -> Struct_5 {
    let var_0 = min(-select(firstLeadingBit(18330i), arg_0.x & 15043i, true) << (~(~_wgslsmith_add_u32(0u, 6344u)) % 32u), u_input.b.x & ~(-1i));
    let var_1 = !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(685f, 1000f, true)) + _wgslsmith_div_f32(442f, -1340f)))) <= -2305f);
    var var_2 = true;
    let var_3 = func_2();
    var var_4 = var_3.c.x;
    return Struct_5(~_wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(~1i, 0i), abs(arg_0.x) << (var_3.a % 32u)), var_3.a << (0u % 32u), var_3.d, _wgslsmith_sub_u32(0u, min(var_3.a, ~_wgslsmith_mod_u32(var_3.a, var_3.a))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_5, arg_3: vec3<f32>) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1057f), u_input.a, arg_3, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_3.x)))), -452f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1010f), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - 137f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(~(-u_input.c.x) | 5458i, -2147483647i | u_input.c.x, -reverseBits(i32(-1i) * -6701i));
    global2 = array<Struct_3, 19>();
    var var_1 = true;
    let var_2 = _wgslsmith_mod_i32(reverseBits(0i ^ _wgslsmith_mod_i32(u_input.a, var_0.x)) | ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.c.xzw), _wgslsmith_clamp_i32(-37521i, 33717i, -42816i)), ~countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(40130i, var_0.x, u_input.a), u_input.c.xwy | u_input.b)));
    var var_3 = abs(min(~vec4<u32>(0u << (0u % 32u), 1u, 1u, ~4232u), ~vec4<u32>(1u, 1u, 1u, 1u)));
    global2 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_sub_i32(select(~var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, -2147483647i, 1i), u_input.c), false), ~u_input.a), !(true != (global1[_wgslsmith_index_u32(~var_3.x, 25u)] == false)), func_1(abs(countOneBits(vec4<i32>(-1i, var_0.x, 0i, u_input.c.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - -937f), -1000f, -875f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-908f, 1108f, 1141f))) * vec3<f32>(449f, -517f, -2829f))))));
}

