struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 18>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> bool {
    global1 = _wgslsmith_div_u32(firstLeadingBit(~min(53176u ^ u_input.c, arg_0.x)), arg_0.x);
    global2 = array<vec3<i32>, 18>();
    global0 = array<Struct_1, 29>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2005f - -214f)))))), arg_2.c, _wgslsmith_f_op_f32(-arg_2.a.x));
    var var_1 = _wgslsmith_f_op_f32(select(-1512f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-615f + -1127f), var_0.x))))), !(!(any(vec3<bool>(true, true, true)) | (arg_2.c >= 332f)))));
    return true;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, -1000f, 801f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(141f, -297f, 516f), vec3<f32>(-663f, -759f, 388f))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1296f - -627f), 1f, func_3(vec4<u32>(0u, 13205u, u_input.c, 1u), 6184u, global0[_wgslsmith_index_u32(3624u, 29u)], 0u))), 488f)));
    global0 = array<Struct_1, 29>();
    var var_1 = !(var_0.x == _wgslsmith_div_f32(-643f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))));
    var var_2 = -1743f;
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~(0u | u_input.c), ~37078u), reverseBits(abs(~u_input.c)), ~_wgslsmith_mult_u32(~u_input.e, ~u_input.e)), firstLeadingBit(abs(firstTrailingBit(~vec3<u32>(u_input.c, u_input.c, u_input.c)))));
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    global1 = ~(~func_2());
    global1 = 23547u >> (arg_1.b.x % 32u);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.a), arg_0.a)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(select(4294967295u, 30166u, false), _wgslsmith_sub_u32(1u, arg_1.b.x)), ~0u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.b.x, 1u, ~arg_1.b.x), _wgslsmith_add_u32(1u, abs(u_input.e))), func_2() | 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, arg_1.c, !(-1i <= arg_3.x))) * arg_1.c));
    var var_1 = any(select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, true)), u_input.d != arg_3.x, true)), vec4<bool>(true, true, false, true), !vec4<bool>(any(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, true)), true, false)));
    var var_2 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(42394u | arg_2, arg_0.b.x, abs(var_0.b.x)), min(vec3<u32>(u_input.e, 0u, 0u) << (vec3<u32>(1u, arg_2, arg_1.b.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(arg_1.b, vec3<u32>(1u, 51477u, 0u)))) & max(_wgslsmith_clamp_vec3_u32(var_0.b, vec3<u32>(1u, 4294967295u, 4294967295u), arg_1.b) >> (~vec3<u32>(arg_1.b.x, 63378u, 38599u) % vec3<u32>(32u)), vec3<u32>(var_0.b.x, var_0.b.x, _wgslsmith_div_u32(0u, 12593u))), arg_0.b);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f), 1444f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-221f * -565f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(~u_input.e, 29u)], Struct_1(vec2<f32>(-746f, -1393f), vec3<u32>(23978u, 1u, 32858u), -977f), firstTrailingBit(u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, u_input.b.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.d, u_input.d, -2147483647i), vec4<i32>(-2147483647i, 45161i, 34258i, u_input.b.x)))), 957f)) * 1860f);
    global0 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzx, select(~vec4<u32>(4294967295u, u_input.c, u_input.c, 24010u), vec4<u32>(u_input.e, u_input.c, u_input.c, abs(11039u)), vec4<bool>(true, true, true, true)) & ~select(reverseBits(vec4<u32>(13070u, 38758u, 15098u, 1u)), vec4<u32>(u_input.c, 2437u, u_input.c, 55074u), vec4<bool>(true, false, true, true)));
}

