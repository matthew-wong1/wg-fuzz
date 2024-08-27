struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(43783u, 13529u, 1u), vec3<u32>(4294967295u, 56079u, 25188u), vec3<u32>(44428u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(62884u, 54542u, 0u), vec3<u32>(1u, 25326u, 4495u), vec3<u32>(20509u, 1023u, 4052u), vec3<u32>(63979u, 4294967295u, 0u));

var<private> global1: bool = false;

var<private> global2: array<f32, 28> = array<f32, 28>(1078f, -1000f, -1347f, 762f, 929f, -778f, -813f, 403f, 473f, 451f, -476f, 1090f, -971f, -2134f, -827f, -1181f, 465f, -656f, -1713f, 610f, 1000f, 312f, -113f, 826f, 504f, -318f, -667f, 997f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> u32 {
    global2 = array<f32, 28>();
    global1 = true;
    global2 = array<f32, 28>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 28u)]))) + 598f));
    var var_1 = any(vec2<bool>(false, false));
    return u_input.a.x;
}

fn func_3() -> f32 {
    let var_0 = select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), any(vec3<bool>(true, false, false)) == true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), all(vec2<bool>(true, true))), !vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, any(vec2<bool>(true, true)))), !all(vec2<bool>(global2[_wgslsmith_index_u32(71754u, 28u)] > global2[_wgslsmith_index_u32(1u, 28u)], all(vec4<bool>(true, true, true, true)))));
    var var_1 = u_input.b;
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(81986u | ~u_input.a.x, _wgslsmith_dot_vec4_u32(countOneBits(u_input.a), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a))), _wgslsmith_clamp_vec2_u32(u_input.a.yx, _wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.ww)), 28u)]);
    global1 = all(var_0.yww);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(12214u, 28u)])), -116f)), 307f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a)) * -510f), 405f, any(select(!vec2<bool>(false, var_0.x), select(vec2<bool>(true, false), vec2<bool>(true, true), var_0.yx), any(var_0.wwz))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f) - global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 28u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-301f)), _wgslsmith_div_f32(var_3.a, -476f), var_0.x))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = vec3<f32>(-2347f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 28u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 28u)] + 2448f))) * _wgslsmith_f_op_f32(func_3()))), 1000f);
    var var_1 = _wgslsmith_f_op_f32(922f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~arg_0, 28u)])))));
    let var_2 = arg_1;
    global1 = true;
    global0 = array<vec3<u32>, 8>();
    return _wgslsmith_div_i32(reverseBits(-firstLeadingBit(~u_input.b)), -19265i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~u_input.c.x);
    global1 = ~firstTrailingBit(u_input.a.x) != func_1();
    global1 = all(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_1 = select(~vec3<i32>((-1i ^ u_input.b) & var_0, reverseBits(u_input.c.x) | firstTrailingBit(-35240i), var_0), vec3<i32>(_wgslsmith_mult_i32(0i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-24655i, 1072i, u_input.c.x, -43832i), vec4<i32>(u_input.c.x, 0i, u_input.b, var_0)))), -61057i, select(var_0, _wgslsmith_mult_i32(min(u_input.b, 2147483647i), func_2(24716u, Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 28u)]))), false)), any(!vec3<bool>(false, select(false, true, false), true)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(36459u, 28u)], 138f)) * _wgslsmith_div_f32(199f, -266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f))))));
    var var_3 = Struct_1(-1588f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(1u, 28u)], -690f, -476f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 28u)], -1000f, -767f))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))))), vec3<f32>(_wgslsmith_f_op_f32(max(var_3.a, var_2.a)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a.x), 28u)]), var_2.a)), _wgslsmith_f_op_f32(var_3.a + -1054f), -4157i, var_1.x, vec4<f32>(-525f, global2[_wgslsmith_index_u32(countOneBits(abs(1u)), 28u)], var_2.a, 1516f));
}

