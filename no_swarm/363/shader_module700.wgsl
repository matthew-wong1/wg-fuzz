struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 22>;

var<private> global2: vec2<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(~4294967295u) >> (u_input.e.x % 32u), abs(~(~1u))), 22u)];
    var var_1 = (_wgslsmith_mult_u32(20452u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.b, 4294967295u), vec3<u32>(1u, u_input.e.x, u_input.e.x)), vec3<u32>(u_input.e.x, 1u, var_0.a.a))) & ((~34471u & ~var_0.b) ^ (~var_0.a.b.x & 18799u))) <= 4294967295u;
    global0 = false;
    global2 = var_0.d.xy;
    global1 = array<Struct_2, 22>();
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_sub_u32(18543u, var_0.b), max(u_input.e.x, _wgslsmith_add_u32(49803u, firstLeadingBit(u_input.e.x)))), 4294967295u), 22u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1009f - _wgslsmith_f_op_f32(f32(-1f) * -655f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1953f - -879f) * _wgslsmith_f_op_f32(min(689f, -1470f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-418f - 119f) - _wgslsmith_f_op_f32(min(-879f, 226f))) + -1890f) + -953f));
    var var_1 = global1[_wgslsmith_index_u32(64338u, 22u)];
    var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(152f * 395f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1020f, 306f, false))))), abs(u_input.a));
    let var_2 = func_2(_wgslsmith_f_op_f32(floor(-1523f)), vec4<i32>(-5449i << ((var_1.a.b.x ^ 27892u) % 32u), -u_input.b, 30985i, -15250i)).a;
    global2 = !var_1.d.yx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f))))) - -957f);
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    global2 = vec2<bool>(all(select(vec3<bool>(false, any(vec2<bool>(false, global2.x)), !global2.x), !vec3<bool>(true, global2.x, true), global2.x)), select(~_wgslsmith_mod_i32(-36953i, arg_1) < ~(arg_1 | arg_1), global2.x, !(global2.x == any(vec3<bool>(false, global2.x, true)))));
    var var_0 = func_2(arg_0, -vec4<i32>(abs(0i) ^ arg_1, abs(-arg_1), -2147483647i, -25582i));
    var var_1 = 1400f;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0, -872f, global2.x)), arg_0)))), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(~vec4<u32>(9907u, var_0.a.a, var_0.b, var_0.b), ~1u))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, -793f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1432f))));
    var var_3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1000f)) - arg_0), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, 10052i), i32(-1i) * -16700i), -(~(-18699i)), 1i, ~(~1i)), min(-u_input.a, vec4<i32>(firstTrailingBit(var_0.a.c.x), _wgslsmith_dot_vec2_i32(var_0.a.c.yy, vec2<i32>(-13990i, arg_1)), -arg_1, ~var_0.a.c.x)))).a;
    return Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -448f))) + _wgslsmith_f_op_f32(-792f * var_2.x)), -_wgslsmith_div_vec4_i32(u_input.a, ~vec4<i32>(2147483647i, var_0.a.c.x, arg_1, var_3.c.x))).a, var_3.a, ~(~41763u ^ _wgslsmith_sub_u32(var_0.a.a, 24868u)) < 1u, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 22>();
    global2 = !vec2<bool>(global2.x, true);
    var var_0 = func_1(-911f, u_input.b);
    let var_1 = Struct_1(1u, vec3<u32>(~firstLeadingBit(u_input.e.x), func_2(-350f, (u_input.a & vec4<i32>(u_input.c.x, -1i, var_0.a.c.x, 9318i)) | vec4<i32>(u_input.a.x, -2147483647i, var_0.a.c.x, 4005i)).a.a, var_0.b), vec3<i32>(-1i, u_input.d.x, ~(-28378i)));
    var var_2 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(2318f, -1000f, _wgslsmith_f_op_f32(-844f * 485f), -1567f), vec2<u32>(_wgslsmith_div_u32(max(1u, _wgslsmith_clamp_u32(var_1.b.x, 67741u, 35454u)), 1u), var_1.a), 51094i, vec4<u32>(1u, u_input.e.x, 0u, var_0.a.a));
}

