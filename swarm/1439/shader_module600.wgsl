struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true, false, true, true), Struct_1(false, false, true, true), Struct_1(false, true, true, false), Struct_1(false, false, true, false), Struct_1(true, true, true, false), Struct_1(true, true, false, false), Struct_1(true, false, false, false), Struct_1(false, false, false, false), Struct_1(true, false, false, false), Struct_1(true, true, true, false), Struct_1(false, false, true, false), Struct_1(false, true, true, false), Struct_1(true, true, false, true));

var<private> global1: vec4<u32> = vec4<u32>(51556u, 0u, 1u, 13199u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = global1.zww;
    var var_1 = reverseBits(~((32002u >> (_wgslsmith_div_u32(global1.x, global1.x) % 32u)) | reverseBits(8159u)));
    var_1 = var_0.x;
    var_1 = var_0.x;
    global0 = array<Struct_1, 13>();
    return vec4<i32>(0i, -35576i >> (~4294967295u % 32u), reverseBits(abs(u_input.c)), u_input.c);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(~(-select(vec4<i32>(arg_1, u_input.a, u_input.a, u_input.a), func_3(global0[_wgslsmith_index_u32(global1.x, 13u)], Struct_1(true, false, arg_0, arg_0), vec2<bool>(false, arg_0)), true)), u_input.b);
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    global1 = vec4<u32>(global1.x, ~_wgslsmith_sub_u32(countOneBits(min(4294967295u, global1.x)), ~23521u), 52049u, _wgslsmith_div_u32(54563u, (_wgslsmith_mult_u32(0u, global1.x) & ~global1.x) >> (global1.x % 32u)));
    return Struct_1(select(true | any(vec4<bool>(true, false, arg_0, false)), true, global1.x < 67515u), arg_0, arg_0, !(!arg_0 & false));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-203f, -122f, 704f))) - vec3<f32>(1000f, -879f, 404f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1077f * 1300f), _wgslsmith_f_op_f32(289f + -811f), _wgslsmith_f_op_f32(f32(-1f) * -1703f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1582f, 781f, -460f)), vec3<f32>(1f, 1f, 1f)))));
    global1 = vec4<u32>(~1u, global1.x, (1u ^ global1.x) ^ ~_wgslsmith_sub_u32(~global1.x, abs(1u)), global1.x);
    global1 = select(~vec4<u32>(_wgslsmith_add_u32(32076u, ~43667u), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.x, global1.x), vec3<u32>(global1.x, 0u, global1.x))), (global1.x & global1.x) & 0u, max(global1.x ^ 1497u, 4294967295u)), vec4<u32>(4294967295u, 3222u, _wgslsmith_div_u32(global1.x, select(1u, select(0u, 4294967295u, var_0.x), true)), ~1u), vec4<bool>(arg_0.a, all(select(vec2<bool>(true, true), vec2<bool>(arg_1.x, true), var_0.x && arg_1.x)), !var_0.x, any(select(!vec4<bool>(arg_1.x, arg_0.a, false, arg_0.c), !vec4<bool>(arg_1.x, arg_1.x, var_0.x, arg_1.x), all(vec4<bool>(var_0.x, false, arg_1.x, true))))));
    let var_2 = !var_0.x;
    return vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1716f, 1430f), var_1.x)) + -641f)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec2<u32> {
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f * 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(func_2(false, u_input.c), vec2<bool>(arg_0, true)))))));
    return countOneBits(global1.wx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.yy >> (~(~_wgslsmith_add_vec2_u32(~vec2<u32>(41169u, 1u), func_1(true, 1u, 0u, global0[_wgslsmith_index_u32(4294967295u, 13u)]))) % vec2<u32>(32u));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    global1 = vec4<u32>(_wgslsmith_add_u32(abs(abs(global1.x)), 1u) >> (global1.x % 32u), abs(~34156u & global1.x), _wgslsmith_div_u32(global1.x, ~var_0.x), var_0.x);
    let var_1 = select(vec4<bool>(any(vec3<bool>(true, true, true)), select(_wgslsmith_div_i32(0i, u_input.b.x) < 41473i, ~2147483647i >= (2147483647i | u_input.c), true), false, !any(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), select(!vec4<bool>(true, select(false, false, true), false, true), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), 54696i != u_input.c), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), false, countOneBits(733u) > var_0.x)), true);
    let var_2 = var_0;
    var var_3 = 22606i;
    let x = u_input.a;
    s_output = StorageBuffer(~56364u);
}

