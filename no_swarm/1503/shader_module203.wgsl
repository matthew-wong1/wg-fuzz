struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<f32, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = Struct_3(arg_3, arg_0.b.yz);
    var var_2 = _wgslsmith_div_i32(global0[_wgslsmith_index_u32(~abs(0u), 5u)], 1i);
    var_0 = ~(~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_0.a, 5u)], -55686i, u_input.b.x));
    var_1 = Struct_3(abs(~arg_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b.wz, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_1.e.b.x)))))));
    return arg_1.e;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_mult_u32(~13645u & arg_1.a, abs(u_input.a) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.a, 0u), vec3<u32>(4294967295u, arg_0.a, arg_1.a))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, func_2(Struct_1(113068u, vec4<f32>(arg_0.b.x, 1243f, arg_1.b.x, arg_0.b.x)), Struct_2(arg_0, arg_0, Struct_1(arg_0.a, arg_0.b), arg_1.a, Struct_1(4294967295u, arg_0.b)), vec3<u32>(arg_1.a, 0u, u_input.a) & vec3<u32>(1u, 4294967295u, 91395u), u_input.a).b.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(792f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(13894u, 22u)], -1566f, -163f, 762f))))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.x - -279f), _wgslsmith_f_op_f32(1750f + var_0.b.x), !(arg_0.a == ~arg_1.a)));
    global0 = array<i32, 5>();
    let var_2 = Struct_3(_wgslsmith_clamp_u32(countOneBits(4294967295u), min(var_0.a, ~arg_1.a), _wgslsmith_add_u32(~arg_1.a, 1u | ~arg_1.a)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-596f, global1[_wgslsmith_index_u32(arg_1.a, 22u)]), -1723f)), _wgslsmith_div_f32(-1421f, arg_0.b.x))));
    let var_3 = arg_1.b.zyy;
    return !vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f + -772f)) > _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-arg_1.b.x)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true))), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global1 = array<f32, 22>();
    var var_0 = !(!select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), func_3(func_2(Struct_1(49036u, vec4<f32>(-1000f, arg_1.b.x, global1[_wgslsmith_index_u32(arg_1.a, 22u)], arg_1.b.x)), Struct_2(Struct_1(arg_1.a, arg_1.b), arg_1, Struct_1(arg_0.x, vec4<f32>(-1219f, arg_1.b.x, -193f, global1[_wgslsmith_index_u32(arg_1.a, 22u)])), u_input.a, Struct_1(arg_1.a, vec4<f32>(640f, -1403f, arg_1.b.x, -346f))), arg_0, u_input.a), Struct_1(arg_1.a, arg_1.b))));
    var_0 = !vec4<bool>(_wgslsmith_f_op_f32(ceil(1336f)) < arg_1.b.x, any(var_0.xz), true, var_0.x);
    let var_1 = u_input.b;
    global1 = array<f32, 22>();
    return ~arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, 59868u)), ~vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(~1u, ~1u, select(52234u, func_1(vec3<u32>(68198u, u_input.a, u_input.a), Struct_1(u_input.a, vec4<f32>(-868f, global1[_wgslsmith_index_u32(18681u, 22u)], 1798f, -686f))), true)));
    let var_1 = 22775i;
    global1 = array<f32, 22>();
    global1 = array<f32, 22>();
    global0 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~firstLeadingBit(u_input.b.x)), var_1, abs(u_input.b.x), 2147483647i), -(~min(~vec4<i32>(global0[_wgslsmith_index_u32(var_0, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], var_1, global0[_wgslsmith_index_u32(0u, 5u)]), countOneBits(vec4<i32>(2147483647i, u_input.b.x, var_1, global0[_wgslsmith_index_u32(1u, 5u)])))));
}

