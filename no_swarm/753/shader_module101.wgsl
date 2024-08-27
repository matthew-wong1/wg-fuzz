struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-1709f, 1022f);

var<private> global1: u32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = array<f32, 2>();
    global1 = u_input.a;
    global0 = array<f32, 2>();
    var var_0 = ~(~(~abs(~vec2<u32>(7576u, arg_2.c.x))));
    return _wgslsmith_mod_i32(-19882i, _wgslsmith_dot_vec4_i32(-firstLeadingBit(firstLeadingBit(vec4<i32>(-16083i, arg_1.a, arg_2.a, -2147483647i))), select(min(_wgslsmith_mod_vec4_i32(vec4<i32>(95061i, arg_1.a, 0i, 2962i), vec4<i32>(arg_2.a, arg_2.a, 1i, arg_2.a)), vec4<i32>(-22736i, arg_2.a, arg_2.a, -1i) | vec4<i32>(-29721i, arg_2.a, 2147483647i, 1i)), -vec4<i32>(arg_2.a, 0i, arg_2.a, -12750i) & _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a, arg_2.a, 9094i, arg_1.a), vec4<i32>(-5884i, arg_1.a, -18128i, -40628i)), vec4<bool>(true, any(arg_2.d.yzw), arg_1.d.x == true, arg_0))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~(~u_input.a), u_input.a), ~vec3<u32>(u_input.a, ~u_input.a, abs(0u))), 0u);
    let var_0 = vec3<i32>(2147483647i, _wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(-2147483647i, -1i, func_3(true, Struct_1(-52314i, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 1259f), vec2<u32>(25412u, 10170u), vec4<bool>(arg_0, arg_0, arg_0, true), global0[_wgslsmith_index_u32(4294967295u, 2u)]), Struct_1(0i, vec2<f32>(330f, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<u32>(1u, 1u), vec4<bool>(true, arg_0, false, false), 858f))), 21197i), abs(~(-2147483647i))) << (~abs(~(~vec3<u32>(9327u, u_input.a, u_input.a))) % vec3<u32>(32u));
    global1 = select(~0u ^ u_input.a, u_input.a, arg_0);
    let var_1 = -vec3<i32>(var_0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.x, 35594i, var_0.x), vec4<i32>(0i, var_0.x, -1i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(21198i, -1i, var_0.x, 0i), vec4<i32>(var_0.x, 15057i, var_0.x, 1i))), abs(-56959i) << (~u_input.a % 32u)), i32(-1i) * -19751i);
    return Struct_1(0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 500f)))))), ~select(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(56270u, 0u), vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 65816u))), ~(~vec2<u32>(u_input.a, u_input.a)), vec2<bool>(arg_0, arg_0)), select(!select(select(vec4<bool>(arg_0, false, true, true), vec4<bool>(false, true, arg_0, true), arg_0), vec4<bool>(arg_0, false, true, true), arg_0), !(!vec4<bool>(arg_0, arg_0, false, true)), false), global0[_wgslsmith_index_u32(u_input.a, 2u)]);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    global1 = ~38410u;
    var var_0 = false;
    let var_1 = arg_3.x;
    var var_2 = arg_2 | false;
    var var_3 = func_2(all(!(!(!vec4<bool>(arg_2, true, true, arg_2)))));
    return ~89404u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(func_1(u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(139f, -459f)), true, ~vec2<i32>(0i, 1i)) | ~u_input.a, 3043u), ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 58438u) % vec2<u32>(32u))), max(vec2<u32>(u_input.a, 1u), countOneBits(vec2<u32>(23296u, 0u)))), ~abs(reverseBits(u_input.a)));
    let var_1 = func_2(false);
    global1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, ~reverseBits(firstLeadingBit(4294967295u))), firstLeadingBit(0u), _wgslsmith_sub_u32(~(0u >> (u_input.a % 32u)) & 33443u, firstTrailingBit(~1u)));
    global1 = _wgslsmith_mult_u32(~1u, u_input.a);
    global0 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(var_1.a, -32448i, var_1.a), select(vec3<i32>(var_1.a, var_1.a, -74687i), vec3<i32>(-1i, 0i, var_1.a), false)), countOneBits(~vec3<i32>(-2147483647i, var_1.a, var_1.a))), max(~var_1.a, firstLeadingBit(var_1.a)), ~firstLeadingBit(_wgslsmith_add_i32(-1i, 0i))));
}

