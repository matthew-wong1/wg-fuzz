struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 6> = array<i32, 6>(-1i, 0i, 1i, -17046i, 37697i, i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<u32> {
    global0 = arg_1.a;
    var var_0 = global1[_wgslsmith_index_u32(arg_1.a | arg_1.a, 6u)];
    let var_1 = all(arg_0);
    global1 = array<i32, 6>();
    let var_2 = arg_1.a;
    return vec4<u32>(~abs(~abs(0u)), 4294967295u, var_2, firstTrailingBit(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 6>();
    global0 = 1u;
    var var_0 = max(vec4<i32>(-1i) * -(_wgslsmith_div_vec4_i32(vec4<i32>(39344i, u_input.b, u_input.b, -59927i), vec4<i32>(global1[_wgslsmith_index_u32(82016u, 6u)], u_input.b, 2147483647i, 2147483647i)) ^ vec4<i32>(1i, global1[_wgslsmith_index_u32(1u, 6u)], u_input.a, u_input.b)), vec4<i32>(~u_input.a, global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(1u, 51634u)), 6u)], -max(global1[_wgslsmith_index_u32(max(68651u, 80335u), 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u) << (1u % 32u), 6u)], u_input.b, true)));
    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(func_1(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), Struct_1(1u, vec2<bool>(false, true))), firstLeadingBit(countOneBits(vec4<u32>(1u, 4294967295u, 1u, 32291u)))), ~4294967295u), vec2<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), !all(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-460f + -503f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i), vec4<i32>(var_0.x, var_0.x, 0i, global1[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 1i, -2147483647i), vec4<i32>(u_input.a, -2147483647i, -38955i, 2147483647i)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~(~var_1.a), 6u)], select(13151i, ~u_input.a, var_1.b.x)), ~((-1i >> (var_1.a % 32u)) & (global1[_wgslsmith_index_u32(var_1.a, 6u)] << (var_1.a % 32u))), var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2)), -1664f))), var_0.zw);
}

