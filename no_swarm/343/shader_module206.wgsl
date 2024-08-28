struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<i32>(-1i, 80277i, 11703i, -1i));

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    global1 = arg_0;
    let var_0 = 1334f;
    global2 = array<vec4<bool>, 16>();
    let var_1 = vec2<u32>(4294967295u, _wgslsmith_div_u32(~(~u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b.x >> (7167u % 32u), u_input.b.x))));
    global1 = arg_0;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1084f)) + var_0))), var_0));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(false, firstTrailingBit(reverseBits(~global0.b)));
    var_0 = Struct_1(!(-36950i != _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-10695i, -1i, global0.b.x, global0.b.x), var_0.b), ~(-1i), global0.b.x)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(i32(-1i) * -31025i, 2147483647i | var_0.b.x, global1.b.x, -2147483647i)), select(vec4<i32>(var_0.b.x, global1.b.x, global0.b.x, global1.b.x) | arg_3.b, var_0.b, !(!vec4<bool>(global0.a, false, arg_3.a, true)))));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x ^ 12279u, u_input.b.x), min(_wgslsmith_add_u32(45418u, 30029u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))), 37537u) & vec2<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 3038u, 17685u), ~vec3<u32>(u_input.b.x, 10580u, 4294967295u)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(arg_1, arg_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(699f, arg_1) * vec2<f32>(arg_2, -1417f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2 - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(614f, var_2.x) * vec2<f32>(arg_1, -2324f)) - _wgslsmith_f_op_vec2_f32(max(var_2, vec2<f32>(1283f, arg_1))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(floor(var_2)), false || arg_3.a)), var_2), all(vec4<bool>(global0.a, all(arg_0), true, any(global2[_wgslsmith_index_u32(var_1.x, 16u)]))))));
    return u_input.a;
}

fn func_1() -> StorageBuffer {
    let var_0 = vec4<i32>(0i, func_3(!(!select(vec4<bool>(true, true, global0.a, global1.a), vec4<bool>(global1.a, false, true, global1.a), true)), -731f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-833f)), _wgslsmith_f_op_f32(func_2(Struct_1(false, global0.b), global0.a))))), Struct_1(false, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(0i, global1.b.x, global1.b.x, -1i)), countOneBits(vec4<i32>(u_input.a, -2147483647i, global1.b.x, -2412i))))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.a, u_input.a, global0.b.x, global0.b.x)), global1.b), global0.b.x);
    var var_1 = Struct_1(37404u < _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b.x, 53687u, u_input.b.x)), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 20387u)), ~vec3<u32>(0u, u_input.b.x, u_input.b.x))), global1.b);
    global0 = Struct_1(!(global1.a & (any(vec3<bool>(false, false, false)) | true)), var_1.b);
    var var_2 = Struct_1(false, global1.b);
    var var_3 = vec3<i32>(var_0.x, var_1.b.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(0i, 0i, 53550i)), select(global1.b.zww, vec3<i32>(var_1.b.x, var_1.b.x, global1.b.x), true)));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

