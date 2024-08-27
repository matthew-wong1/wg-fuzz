struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<f32, 16> = array<f32, 16>(-1971f, -537f, -2886f, -1604f, 1000f, 158f, -134f, 335f, -362f, 412f, -1029f, -597f, 279f, -468f, 668f, -126f);

var<private> global2: array<bool, 13> = array<bool, 13>(true, false, true, false, false, true, false, false, true, true, false, true, true);

var<private> global3: Struct_1 = Struct_1(-1000f, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> Struct_2 {
    global1 = array<f32, 16>();
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(firstLeadingBit(120721u), 16u)])), -181f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_1.x, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(global3.b, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], u_input.a)), 16u)])), _wgslsmith_f_op_f32(f32(-1f) * -1668f)), arg_0);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: f32) -> i32 {
    let var_0 = firstLeadingBit(countOneBits(~(vec2<u32>(arg_2.a, arg_1.a) ^ vec2<u32>(arg_2.a, 20672u))));
    global3 = Struct_1(_wgslsmith_f_op_f32(-arg_3), ~arg_1.a);
    var var_1 = vec2<u32>(arg_1.a, select((arg_2.a | 0u) | u_input.a, global3.b, global2[_wgslsmith_index_u32((global3.b & arg_1.a) | 2868u, 13u)])) ^ vec2<u32>(firstTrailingBit(select(global3.b, 47308u, true)), countOneBits(_wgslsmith_mod_u32(arg_1.a, 4294967295u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(661f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-434f))))), arg_2.a);
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_1.x, 23u)], global3.b), ~1u, var_2.b, ~global0[_wgslsmith_index_u32(9811u, 23u)]), ~(~(~vec4<u32>(var_0.x, 855u, var_0.x, global3.b)))), 1u);
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> u32 {
    global1 = array<f32, 16>();
    global3 = arg_0;
    var var_0 = min(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, global0[_wgslsmith_index_u32(global3.b, 23u)], u_input.a), vec3<u32>(1u, 4294967295u, global3.b)) & (vec3<u32>(arg_0.b, 46009u, 0u) | vec3<u32>(global3.b, 1u, global3.b)), ~(~vec3<u32>(4294967295u, u_input.a, 8857u))), vec3<u32>(0u, _wgslsmith_mod_u32(countOneBits(4966u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 23u)], u_input.a), vec2<u32>(15129u, global3.b))), ~global3.b)), vec3<u32>(u_input.a, 4294967295u, 4294967295u));
    var var_1 = Struct_1(616f, countOneBits(1u));
    var_0 = ~max(~(~vec3<u32>(global3.b, var_0.x, 1u)), min(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(42110u, 23u)], arg_0.b), min(vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(60671u, 23u)]), vec3<u32>(global0[_wgslsmith_index_u32(2344u, 23u)], var_1.b, arg_0.b)))) >> ((vec3<u32>(~firstTrailingBit(var_0.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.b, 4156u), ~59488u), ~1u) | vec3<u32>(var_0.x, (4294967295u << (arg_0.b % 32u)) >> (_wgslsmith_clamp_u32(1u, var_0.x, var_0.x) % 32u), global3.b)) % vec3<u32>(32u));
    return _wgslsmith_sub_u32(min(4294967295u, firstLeadingBit(reverseBits(global0[_wgslsmith_index_u32(arg_0.b, 23u)] & global0[_wgslsmith_index_u32(u_input.a, 23u)]))), firstTrailingBit(~global0[_wgslsmith_index_u32(~4294967295u, 23u)]));
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    var var_0 = arg_0.a.wy;
    let var_1 = select(_wgslsmith_f_op_f32(min(1337f, global3.a)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))) * -448f), !global2[_wgslsmith_index_u32(~(~1u) | _wgslsmith_mod_u32(u_input.a, firstLeadingBit(global0[_wgslsmith_index_u32(global3.b, 23u)])), 13u)], true);
    let var_2 = -45675i;
    global1 = array<f32, 16>();
    global2 = array<bool, 13>();
    return Struct_4(global0[_wgslsmith_index_u32(func_4(Struct_1(global3.a, ~(~global0[_wgslsmith_index_u32(0u, 23u)])), !(!global2[_wgslsmith_index_u32(min(global3.b, u_input.a), 13u)]), _wgslsmith_sub_i32(0i | var_2, func_3(select(vec4<bool>(var_1, false, global2[_wgslsmith_index_u32(u_input.a, 13u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(global3.b, 13u)], var_1, var_1), vec4<bool>(true, global2[_wgslsmith_index_u32(85097u, 13u)], true, true)), Struct_4(global3.b), Struct_4(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35626u, 23u)], 23u)]), -1663f))), 23u)]);
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_2 {
    global0 = array<u32, 23>();
    let var_0 = any(arg_2);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, _wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(trunc(-648f)))), _wgslsmith_f_op_f32(-374f * _wgslsmith_f_op_f32(-1369f + 349f)), 817f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(49701u, 16u)], var_1.x)) - _wgslsmith_f_op_f32(global3.a * 102f))))), ~(~abs(~global3.b)));
    global0 = array<u32, 23>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1088f, var_2.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 16u)], var_2.a), var_1)), var_1)))), max(func_1(_wgslsmith_add_i32(~arg_0, func_3(arg_1, Struct_4(61677u), arg_3, var_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, var_2.b) ^ vec2<u32>(arg_3.a, arg_3.a), vec2<u32>(arg_3.a, 82233u)), arg_0).b, -(arg_0 | arg_0) << ((~global3.b >> (_wgslsmith_mult_u32(global3.b, 40747u) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(abs(-702i), !vec4<bool>(global2[_wgslsmith_index_u32(17529u, 13u)], true, !(!global2[_wgslsmith_index_u32(u_input.a, 13u)]), !global2[_wgslsmith_index_u32(~global3.b, 13u)]), !(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(global3.b, 13u)], global2[_wgslsmith_index_u32(global3.b, 13u)], global2[_wgslsmith_index_u32(global3.b, 13u)])))), func_2(func_1(1i, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(65845u, 17357u), vec2<u32>(39106u, global3.b)), vec2<u32>(4294967295u, 0u)), 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_add_u32(~global3.b, ~global0[_wgslsmith_index_u32(u_input.a, 23u)]), ~(~0u)));
}

