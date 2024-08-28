struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(10133u, 1u);

var<private> global1: array<vec2<f32>, 10>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> bool {
    global1 = array<vec2<f32>, 10>();
    global1 = array<vec2<f32>, 10>();
    global0 = array<u32, 2>();
    var var_0 = vec3<bool>(true, arg_1.a, true);
    global1 = array<vec2<f32>, 10>();
    return all(vec4<bool>(any(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(var_0.x, false, var_0.x, arg_1.a))) && true, true, false, any(!(!vec4<bool>(var_0.x, arg_0.x, true, true)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    let var_0 = true;
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_1 = global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(_wgslsmith_mod_u32(arg_2, ~global0[_wgslsmith_index_u32(4294967295u, 2u)])) & 1u), 30u)];
    let var_2 = reverseBits(reverseBits(-vec2<i32>(1i, 1i) ^ (select(vec2<i32>(-47847i, 2147483647i), vec2<i32>(2147483647i, 3151i), arg_3.yw) | ~vec2<i32>(-45700i, 14021i))));
    return abs(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~min(arg_2, ~global0[_wgslsmith_index_u32(arg_0, 2u)]), 2u)], _wgslsmith_add_u32(0u, 4294967295u)));
}

fn func_2() -> StorageBuffer {
    var var_0 = select(vec4<bool>(_wgslsmith_add_u32(func_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18638u, 2u)], 2u)], Struct_1(false), 4294967295u, vec4<bool>(false, true, false, false)), firstTrailingBit(4294967295u)) > 6181u, true, (_wgslsmith_dot_vec4_i32(vec4<i32>(-5920i, 43560i, 5988i, -1i), vec4<i32>(1i, -15244i, 1i, 33624i)) != countOneBits(45111i)) | all(vec3<bool>(true, true, true)), select(true, true, false) && all(vec4<bool>(false, true, false, true))), select(vec4<bool>(true, ~global0[_wgslsmith_index_u32(6743u, 2u)] < firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55688u, 2u)], 2u)], 2u)]), !select(false, false, true), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true), !all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, min(u_input.a.x & 39425u, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 2u)])) >= ~(~431u)));
    global1 = array<vec2<f32>, 10>();
    global1 = array<vec2<f32>, 10>();
    global0 = array<u32, 2>();
    let var_1 = 26243i;
    return StorageBuffer(_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_1, var_1, var_1, var_1), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, -62132i, var_1, var_1), vec4<i32>(-42407i, 2147483647i, var_1, var_1), vec4<i32>(var_1, var_1, 10885i, 0i))), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, -1i, 2147483647i, -13887i), ~vec4<i32>(var_1, 2147483647i, var_1, var_1))) | _wgslsmith_clamp_i32(firstLeadingBit(var_1 << (0u % 32u)), var_1, ~(var_1 >> (u_input.a.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(88902u, 10u)]);
    let var_1 = !(!((func_1(vec2<bool>(true, true), Struct_1(true), var_0.x, vec4<i32>(2147483647i, 0i, 48108i, 11964i)) && any(vec2<bool>(true, false))) | false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1f));
    let x = u_input.a;
    s_output = func_2();
}

