struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 27897i;

var<private> global1: array<f32, 30>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_2(true);
    global0 = -(~countOneBits(-33359i));
    return Struct_2(~0u < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(4294967295u, 0u, 1u, 1u), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 0u, 0u)))));
}

fn func_2() -> Struct_3 {
    global1 = array<f32, 30>();
    var var_0 = vec2<bool>(func_1(u_input.a.x).a, !(u_input.a.x > -u_input.a.x));
    var var_1 = 1u | (abs(countOneBits(59003u) << (~4294967295u % 32u)) & ~max(~1u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u)));
    global1 = array<f32, 30>();
    global0 = 8416i >> (~abs(max(~1u, 4294967295u)) % 32u);
    return Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~64938u, 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(10427u, 30u)])))))), Struct_1(vec2<i32>(-1i) * -(~u_input.a)), 1u);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    let var_0 = ~(_wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(8484u, arg_3.c), vec2<u32>(arg_3.c, arg_3.c)), vec2<u32>(4294967295u, arg_3.c) ^ vec2<u32>(arg_3.c, 11248u), arg_1), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 28301u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.c, 4294967295u), vec2<u32>(arg_3.c, arg_3.c), vec2<u32>(arg_3.c, 0u)))) & arg_3.c);
    var var_1 = arg_0.a;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(-972f)), _wgslsmith_f_op_f32(arg_3.a.x - _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 1u), vec3<u32>(70025u, 4294967295u, 4294967295u)), ~53339u), 30u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.a.x), arg_3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + _wgslsmith_f_op_f32(max(-816f, _wgslsmith_f_op_f32(-515f - arg_3.a.x)))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false != !(select(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -2147483647i & u_input.a.x, u_input.a.x <= u_input.a.x) >= -2147483647i);
    let var_1 = _wgslsmith_mod_u32(8337u, 67074u);
    let var_2 = func_3(func_1(1i), var_0, true, func_2());
    let var_3 = vec2<bool>(false, _wgslsmith_dot_vec3_u32(vec3<u32>(49861u, 4294967295u, var_2.c), vec3<u32>(reverseBits(0u), 1u, reverseBits(var_1))) >= var_1);
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(~vec3<u32>(var_2.c, var_1, var_1)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(551f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_1, 30u)])) - _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(ceil(var_2.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u << (~4294967295u % 32u), 30u)], 2054f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(23008u, 30u)])), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_2.c, 30u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(126f)), -411f)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(ceil(func_2().a.x)), 1884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(21692u, 30u)]))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.a.x, var_2.a.x))), -1632f, 133f, func_2().a.x)));
}

