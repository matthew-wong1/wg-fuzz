struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_3(arg_1, !(!vec4<bool>(true, select(true, false, arg_0), false, 1i > arg_1.b)), arg_1);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(round(arg_1.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a.a, 941f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_1.a))))), var_0.c.b);
    let var_2 = vec4<f32>(-1382f, _wgslsmith_f_op_f32(f32(-1f) * -1271f), -565f, arg_1.a);
    var var_3 = var_0.c;
    var var_4 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -1380f);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    global0 = Struct_2(u_input.a.x);
    global0 = Struct_2(~u_input.a.x);
    global0 = Struct_2(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u), vec2<u32>(global0.a, u_input.a.x)), 1u) << (global0.a % 32u));
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1239f, 715f, _wgslsmith_f_op_f32(ceil(311f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1124f)))), _wgslsmith_f_op_f32(f32(-1f) * -160f)));
    var var_1 = select(17455i, 2147483647i, !(!(~0u >= ~global0.a)));
    return !select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, !(!arg_0), arg_0), select(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), false), !vec3<bool>(arg_0, false, arg_0), vec3<bool>(44853u <= global0.a, true, true)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1503f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1566f, 1085f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_div_f32(1443f, 1829f), select(all(vec2<bool>(false, false)), false, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) * var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-959f))), false)), _wgslsmith_f_op_f32(-2526f * _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(trunc(-382f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(356f, _wgslsmith_f_op_f32(max(466f, var_0)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(182f, var_0, true)), _wgslsmith_f_op_f32(f32(-1f) * -333f), 1f, 2347f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(1756f, -834f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.wz) - vec2<f32>(var_1.x, 829f))))) + vec2<f32>(-1375f, var_0));
    let var_3 = Struct_2(u_input.a.x | u_input.a.x);
    let var_4 = select(select(func_3(-101f > _wgslsmith_f_op_f32(func_2(true, Struct_1(-630f, 60442i)))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), func_3(true).x), vec3<bool>(!(var_3.a <= 1u), all(func_3(true)), true)), !vec3<bool>(true, 96218u > (34238u ^ u_input.a.x), false), false);
    return Struct_1(_wgslsmith_f_op_f32(sign(var_1.x)), 25155i);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * 1176f), _wgslsmith_f_op_f32(var_0.a + var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-arg_0.a)), 114f != var_0.a))));
    global0 = Struct_2(global0.a);
    var var_2 = Struct_2(min(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(27766u, u_input.a.x), ~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), ~u_input.a.zyx), _wgslsmith_div_u32(_wgslsmith_clamp_u32(24809u, _wgslsmith_clamp_u32(global0.a, u_input.a.x, 52411u), ~29189u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(51072u, u_input.a.x), vec2<u32>(31793u, u_input.a.x)), abs(vec2<u32>(u_input.a.x, 45852u))))));
    var_2 = Struct_2(_wgslsmith_mod_u32(61319u, 28504u) | ~_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a));
    return Struct_1(arg_0.a, -countOneBits(abs(var_0.b)));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(-2136f, _wgslsmith_div_f32(_wgslsmith_div_f32(-710f, arg_0), arg_0));
    var var_1 = abs(u_input.a);
    let var_2 = ~_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, global0.a), var_1.xx), vec2<u32>(~0u, global0.a));
    let var_3 = false;
    var_0 = _wgslsmith_f_op_f32(-arg_0);
    return Struct_2(~_wgslsmith_clamp_u32(max(~0u, select(0u, var_1.x, arg_1.b.x)), 53878u, ~_wgslsmith_add_u32(37312u, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mod_u32(u_input.a.x, reverseBits(~min(47165u, 6498u))));
    global0 = Struct_2(abs(var_0.a));
    global0 = var_0;
    global0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1809f * 1f)), Struct_3(Struct_1(-636f, -_wgslsmith_div_i32(-2147483647i, 56199i)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, u_input.a.x == var_0.a, 98798u != u_input.a.x), false), func_4(func_1())));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(~(~vec3<i32>(-2551i, 2147483647i, 16169i))), vec3<i32>(~(-1i), 1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 0i, 0i, -2147483647i), vec4<i32>(-9611i, -2147483647i, 11048i, 1279i), vec4<bool>(false, true, true, false)), reverseBits(vec4<i32>(14438i, 1i, 13332i, 52997i))))));
}

