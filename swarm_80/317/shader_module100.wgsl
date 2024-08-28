struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 1u, 62628u, 4688u, 25151u, 4294967295u, 12366u, 0u, 4294967295u, 4294967295u, 31008u, 4294967295u, 0u, 6643u, 1u, 1u, 1u, 69330u, 4294967295u, 7831u, 43324u, 4294967295u, 41001u);

var<private> global1: u32;

var<private> global2: array<i32, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = -global2[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(~(1u >> (0u % 32u)), 23u)]), 7u)];
    var var_1 = 15919u;
    var var_2 = Struct_1(var_0);
    let var_3 = ~(~countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 23u)]));
    var_2 = Struct_1(0i);
    return _wgslsmith_f_op_f32(step(-584f, _wgslsmith_f_op_f32(945f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1108f + _wgslsmith_div_f32(-103f, 378f)))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1501f - -312f), _wgslsmith_f_op_f32(-509f - 1151f)), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1000f - 1766f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f - 1486f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-696f, 283f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -677f)))))));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(4294967295u, 38221u), abs(0u), ~(~global0[_wgslsmith_index_u32(arg_1.x, 23u)] & global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) | 1u);
    var_2 = abs(vec3<u32>(u_input.a.x, ~u_input.a.x, min(global0[_wgslsmith_index_u32(1357u, 23u)], arg_1.x)));
    global0 = array<u32, 23>();
    return _wgslsmith_dot_vec2_i32(select(firstLeadingBit(vec2<i32>(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), global2[_wgslsmith_index_u32(0u, 7u)])), vec2<i32>(abs(global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), countOneBits(global2[_wgslsmith_index_u32(arg_1.x, 7u)])) | abs(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(107629u, 7u)]) | vec2<i32>(16493i, global2[_wgslsmith_index_u32(arg_1.x, 7u)])), vec2<bool>(arg_0.x, true)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 23u)], 7u)] | global2[_wgslsmith_index_u32(var_2.x, 7u)], -1i), -reverseBits(1i)), 6224i));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_add_vec3_u32(u_input.a, u_input.a ^ vec3<u32>(31980u, 0u, ~u_input.a.x));
    var var_1 = ~55377u;
    let var_2 = Struct_1(_wgslsmith_div_i32(abs(47934i), _wgslsmith_div_i32(func_2(vec2<bool>(false, true), vec4<u32>(global0[_wgslsmith_index_u32(0u, 23u)], u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(52727u, 23u)])), countOneBits(15901i))));
    let var_3 = Struct_1(-_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-34936i, global2[_wgslsmith_index_u32(var_0.x, 7u)])) ^ 8592i, var_2.a));
    let var_4 = true;
    return ~abs(~(~95112u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1562f + 520f), 811f) - _wgslsmith_f_op_f32(f32(-1f) * -557f)), _wgslsmith_f_op_f32(-802f * _wgslsmith_f_op_f32(f32(-1f) * -552f)))));
    let var_0 = u_input.a;
    global2 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(min(global2[_wgslsmith_index_u32(0u, 7u)], 0i), firstLeadingBit(~34822u));
}

