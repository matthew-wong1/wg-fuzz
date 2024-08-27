struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 20> = array<u32, 20>(3313u, 7934u, 1u, 4294967295u, 117067u, 37963u, 39930u, 4294967295u, 22941u, 0u, 112323u, 0u, 4294967295u, 0u, 4294967295u, 1u, 49229u, 36825u, 1u, 35253u);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, true), false, 57461u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(global2.a, !global0.a.x, firstTrailingBit(global0.c));
    global0 = Struct_1(global2.a, any(global2.a), 70790u);
    global2 = arg_0;
    var var_1 = 22971u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_f_op_f32(sign(-377f));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_div_f32(1186f, arg_3.x))))));
    let var_1 = Struct_1(vec3<bool>(any(!(!vec4<bool>(global2.a.x, true, false, false))), global2.b, true || (global0.c != 36488u)), global0.b, 1u);
    var var_2 = var_1;
    var var_3 = vec2<bool>(var_1.b, true);
    return _wgslsmith_f_op_f32(func_3(var_1));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global2 = Struct_1(vec3<bool>(true, false, true), !arg_0.b, 1u);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-2816f)), _wgslsmith_f_op_f32(sign(-298f)), all(vec4<bool>(true, true, global0.b, false))))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1097f, -901f))));
    let var_1 = select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-181f, -1496f) * _wgslsmith_f_op_f32(select(-1487f, -130f, arg_0.a.x))))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(1216f))), _wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_sub_u32(global2.c, u_input.c.x) != 1u)), false, true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(u_input.c.xz, u_input.c.x, ~vec4<i32>(u_input.a, 6457i, 27662i, 1i) | (vec4<i32>(1i, -2147483647i, -17722i, 0i) & vec4<i32>(u_input.b, 2147483647i, 1i, 28806i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(286f, -851f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1392f, -149f) + vec2<f32>(1845f, 1237f))))), 1000f)), -798f, _wgslsmith_f_op_f32(trunc(282f)), 318f);
    var var_3 = _wgslsmith_add_u32(abs(~1u), 1u & _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 24197u, global1[_wgslsmith_index_u32(39091u, 20u)], global0.c), vec4<u32>(global1[_wgslsmith_index_u32(0u, 20u)], 1u, 2641u, u_input.e)), vec4<u32>(4294967295u, global2.c, 33448u, global1[_wgslsmith_index_u32(arg_0.c, 20u)])), ~vec4<u32>(0u, 1u, 4294967295u, u_input.e) & (vec4<u32>(46389u, 1u, global1[_wgslsmith_index_u32(4294967295u, 20u)], 1u) ^ vec4<u32>(18992u, 87076u, global1[_wgslsmith_index_u32(4307u, 20u)], u_input.c.x))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(vec3<bool>(global2.b, true, any(global2.a.yy)), select(global0.a, vec3<bool>(false, global2.b & false, global2.a.x), false), true), !(19006u <= global2.c), ~global0.c);
    global0 = Struct_1(!vec3<bool>(any(func_1(Struct_1(vec3<bool>(true, global2.a.x, global2.b), global2.b, global1[_wgslsmith_index_u32(u_input.e, 20u)]))), ~25386i >= min(u_input.d.x, 13075i), true), false && select(true, global0.a.x | any(global0.a), global2.a.x), global0.c & _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(4294967295u, 20u)], 40200u, ~(~u_input.c.x)));
    var var_0 = Struct_1(global0.a, global2.b, abs(~u_input.c.x) << (_wgslsmith_sub_u32(u_input.e, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(83729u, 4294967295u, u_input.e, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(75266u, global0.c, 4294967295u, 1u), vec4<u32>(11262u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], global0.c)))) % 32u));
    let var_1 = min(~vec4<i32>(-1i, u_input.b, u_input.b, -u_input.a), select(firstLeadingBit(abs(vec4<i32>(u_input.b, -231i, u_input.a, u_input.a))), abs(vec4<i32>(~u_input.a, firstLeadingBit(-4653i), abs(48032i), -u_input.b)), var_0.a.x));
    let var_2 = select(select(select(vec4<bool>(true, true, global2.c >= global0.c, select(true, true, false)), !(!vec4<bool>(false, true, global2.a.x, false)), select(!vec4<bool>(var_0.b, true, false, false), select(vec4<bool>(global2.b, var_0.b, true, global2.b), vec4<bool>(true, true, global2.a.x, var_0.a.x), vec4<bool>(var_0.b, var_0.a.x, global2.b, false)), select(vec4<bool>(var_0.b, true, false, true), vec4<bool>(var_0.b, true, global2.b, global0.a.x), vec4<bool>(var_0.b, false, global0.a.x, global2.b)))), vec4<bool>(true, any(var_0.a.xy), false, true), all(select(global2.a, vec3<bool>(true, global2.b, false), true | global2.b))), vec4<bool>(true, true, all(vec3<bool>(!global0.a.x, false, true)), global0.b), select(!vec4<bool>(any(vec2<bool>(false, var_0.a.x)), global0.b, global0.b, all(vec4<bool>(var_0.a.x, global0.a.x, true, global2.a.x))), select(vec4<bool>(global0.a.x, true, var_0.b, true), vec4<bool>(true, all(global2.a.yx), global0.a.x & false, false), !vec4<bool>(global2.a.x, var_0.a.x, true, true)), true));
    let var_3 = -1225f;
    let var_4 = Struct_1(select(!select(func_1(Struct_1(var_0.a, false, global2.c)), !global0.a, global2.b), global0.a, !(u_input.c.x > 24125u)), var_2.x, abs(1u));
    let var_5 = vec2<bool>(true, var_0.b);
    let var_6 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(30767u, firstTrailingBit(min(u_input.c, select(_wgslsmith_add_vec3_u32(vec3<u32>(4539u, 66606u, global0.c), u_input.c), u_input.c, true))), 1551i);
}

