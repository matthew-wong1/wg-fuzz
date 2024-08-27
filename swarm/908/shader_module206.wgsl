struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(0u, 0u, 1u, 4294967295u, 90691u, 27911u, 0u, 72129u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.zw);
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f)))), _wgslsmith_f_op_f32(trunc(914f)), 375f));
    var var_2 = (57351u ^ ~global0[_wgslsmith_index_u32(u_input.a, 8u)]) >= ~(2486u << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)] >> (51212u % 32u), 54113u) % 32u));
    return arg_1.x;
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f), _wgslsmith_f_op_f32(func_3(arg_0, vec4<f32>(-1023f, -1017f, -1217f, _wgslsmith_f_op_f32(sign(857f))), select(vec2<bool>(false, var_0), !vec2<bool>(var_0, false), true)))));
    return -vec2<i32>(arg_0.a, ~(-2147483647i));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = -(func_2(Struct_3(_wgslsmith_clamp_i32(-1i, -22008i, 1i))) ^ vec2<i32>(-2147483647i, firstLeadingBit(2147483647i >> (u_input.b.x % 32u))));
    let var_1 = Struct_2(~(-min(firstTrailingBit(vec4<i32>(-44509i, var_0.x, -25942i, var_0.x)), vec4<i32>(var_0.x, 11560i, 2147483647i, var_0.x))), firstTrailingBit(u_input.a), select(vec2<i32>(var_0.x, var_0.x), select(~var_0, abs(var_0), true), vec2<bool>(true, true)) ^ var_0, var_0.x, arg_0.x);
    var var_2 = countOneBits(1i);
    let var_3 = var_1;
    let var_4 = min(var_3.a.x, var_3.c.x >> (var_1.b % 32u)) & 24713i;
    return min(var_3.b, reverseBits(0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 55236u;
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_1 = reverseBits(var_0);
    var_1 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-791f - _wgslsmith_f_op_f32(499f * 219f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -146f), 1f)) + -116f), -940f, _wgslsmith_f_op_f32(-241f * _wgslsmith_div_f32(-471f, _wgslsmith_f_op_f32(-139f + 1263f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1010f, firstTrailingBit(u_input.a), abs(vec4<u32>(23163u ^ var_0, 4294967295u, _wgslsmith_div_u32(45481u | var_0, 1u), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(226f, 762f, -1134f, 2312f))))));
}

