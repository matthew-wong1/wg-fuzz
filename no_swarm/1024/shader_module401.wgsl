struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 11> = array<u32, 11>(41074u, 1u, 1u, 61839u, 0u, 0u, 4294967295u, 52495u, 8749u, 21612u, 1u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    global0 = vec3<bool>(global0.x, -1537f < _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(trunc(-253f))))), global0.x);
    let var_0 = Struct_2(Struct_1(global0.xy, global0.zy, select(!(!vec4<bool>(global0.x, true, global0.x, true)), vec4<bool>(true, global0.x, !global0.x, global0.x), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, true, true, global0.x), true))));
    global1 = array<u32, 11>();
    global0 = vec3<bool>(all(var_0.a.c), any(vec3<bool>(true | all(var_0.a.c.wzy), false != !var_0.a.b.x, true)), true);
    global1 = array<u32, 11>();
    return select(false, true, all(select(vec2<bool>(!global0.x, false), !(!global0.zy), all(var_0.a.c))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = vec2<bool>(true && func_3(vec2<u32>(~u_input.a, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(arg_0, 11u)], u_input.a))), false);
    let var_1 = reverseBits(firstTrailingBit(select(firstLeadingBit(vec3<i32>(-64895i, -38310i, -1i)), vec3<i32>(-21736i, 0i, -17545i), global1[_wgslsmith_index_u32(arg_0, 11u)] > 20978u)) ^ firstLeadingBit(abs(select(vec3<i32>(1i, -2147483647i, 2147483647i), vec3<i32>(18499i, 0i, -41584i), false))));
    global1 = array<u32, 11>();
    let var_2 = vec4<u32>(~_wgslsmith_div_u32(arg_0, 55059u), ~(~(~_wgslsmith_sub_u32(u_input.a, 19437u))), ~firstTrailingBit(arg_0 ^ (4339u << (arg_0 % 32u))), ~_wgslsmith_clamp_u32(u_input.a, ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(43181u, global1[_wgslsmith_index_u32(arg_0, 11u)], 1u, 1u) & vec4<u32>(17902u, u_input.a, 1u, u_input.a), abs(vec4<u32>(arg_0, 63084u, 1u, global1[_wgslsmith_index_u32(arg_0, 11u)])))));
    var var_3 = _wgslsmith_mod_u32(~arg_0, u_input.a);
    return false;
}

fn func_1() -> Struct_1 {
    var var_0 = global0.x && global0.x;
    global0 = !select(select(vec3<bool>(func_2(global1[_wgslsmith_index_u32(u_input.a, 11u)]), false, true), select(vec3<bool>(global0.x, true, true), select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global0.x, false)), true), vec3<bool>(func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90700u, 11u)], 11u)], 11u)], 11u)]), func_2(u_input.a), true)), vec3<bool>(u_input.a <= (1u & u_input.a), (global0.x & false) && !global0.x, false), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, global0.x), global0.x), vec3<bool>(false, false, false), true), !vec3<bool>(global0.x, global0.x, global0.x), global0.x));
    var var_1 = Struct_1(!global0.xz, !select(vec2<bool>(global0.x, !global0.x), global0.zy, !global0.yy), !vec4<bool>(firstLeadingBit(79087u) <= _wgslsmith_mult_u32(u_input.a, global1[_wgslsmith_index_u32(116055u, 11u)]), func_3(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)]), vec2<u32>(95391u, global1[_wgslsmith_index_u32(u_input.a, 11u)]))), global0.x, all(select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false)))));
    let var_2 = !all(vec4<bool>(41785u >= firstTrailingBit(u_input.a), !all(vec2<bool>(true, var_1.a.x)), !func_2(u_input.a), any(var_1.c)));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1014f, -1000f, -1801f, 1151f), vec4<f32>(-626f, -634f, -113f, 229f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, -794f, -1197f, -179f))), vec4<bool>(!global0.x, true, true, func_3(vec2<u32>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(6920u, 11u)]))))))));
    return Struct_1(global0.xy, select(!global0.xz, !global0.yz, select(select(!var_1.b, global0.xy, global0.x && var_2), global0.xz, vec2<bool>(true, true))), vec4<bool>(var_1.a.x, all(!(!var_1.c)), true, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(vec2<bool>(!var_0.a.x, !(!(!global0.x))), func_1().b, !var_0.c);
    var_0 = Struct_1(global0.zx, vec2<bool>(!(global0.x & true), global0.x), var_0.c);
    global0 = vec3<bool>(func_3(firstTrailingBit(vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 11u)])) & vec2<u32>(30698u, min(1u, u_input.a))), false, func_1().b.x);
    let x = u_input.a;
    s_output = StorageBuffer(1i, countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a), ~12428u, ~1u, ~73141u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], 11u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 11u)] >> (12352u % 32u), 1u))));
}

