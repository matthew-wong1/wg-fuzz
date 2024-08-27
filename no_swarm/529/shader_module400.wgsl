struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<f32>(1000f, 766f, 1517f, -199f))), Struct_2(Struct_1(vec4<f32>(1021f, 1948f, 303f, 539f))), Struct_2(Struct_1(vec4<f32>(189f, 1228f, 192f, -193f))), Struct_2(Struct_1(vec4<f32>(-1651f, -948f, 549f, -321f))), Struct_2(Struct_1(vec4<f32>(1160f, 258f, -111f, -1440f))));

var<private> global1: array<u32, 31> = array<u32, 31>(44128u, 1u, 4294967295u, 46586u, 100940u, 19267u, 31320u, 15007u, 25835u, 1u, 32018u, 4294967295u, 4294967295u, 1u, 0u, 1u, 97953u, 433u, 30114u, 11547u, 99627u, 45865u, 0u, 0u, 53269u, 77167u, 1u, 17253u, 53960u, 22389u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec4<u32> {
    let var_0 = abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(125021u, countOneBits(global1[_wgslsmith_index_u32(1u, 31u)]), global1[_wgslsmith_index_u32(87754u << (0u % 32u), 31u)] ^ ~85442u), max(~(~u_input.b), _wgslsmith_sub_vec3_u32(select(u_input.b, vec3<u32>(67644u, 1u, 4294967295u), true), u_input.b)), vec3<u32>(31490u, arg_0.x, _wgslsmith_sub_u32(~95969u, global1[_wgslsmith_index_u32(39489u, 31u)]))));
    let var_1 = ~arg_0.x;
    let var_2 = Struct_1(vec4<f32>(-1679f, arg_2.a.a.x, _wgslsmith_f_op_f32(1589f + -583f), _wgslsmith_f_op_f32(-238f * 350f)));
    global1 = array<u32, 31>();
    global1 = array<u32, 31>();
    return _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 62238u, 54578u | firstTrailingBit(var_0.x), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1236u, 1u, 1u, 69029u), vec4<u32>(1u, 4294967295u, u_input.b.x, var_1)), ~var_0.x), u_input.b.x)), ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 41797u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 31u)], 1u, 1u, 34015u)) ^ (vec4<u32>(var_0.x, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], arg_0.x) << (vec4<u32>(var_1, arg_0.x, u_input.b.x, var_0.x) % vec4<u32>(32u)))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(arg_1, max(arg_1, vec4<u32>(1583u, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], arg_0, global1[_wgslsmith_index_u32(29897u, 31u)])))), func_3(min(_wgslsmith_div_vec2_u32(u_input.b.yz, arg_1.xz), ~u_input.b.zy), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~57754u, 31u)], 5u)], Struct_2(Struct_1(vec4<f32>(1000f, 275f, -583f, -851f))), abs(u_input.a.x)) | arg_1), 5u)];
    let var_1 = abs(-(~u_input.a.x)) | select(2147483647i, min(arg_2.x, -(~(-49976i))), true);
    global0 = array<Struct_2, 5>();
    var var_2 = select(true, false, false);
    let var_3 = -_wgslsmith_add_i32(~(~arg_2.x) | ~(-u_input.a.x), ~((19266i & u_input.a.x) ^ (u_input.a.x | -12939i)));
    return global0[_wgslsmith_index_u32(~(~0u), 5u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    global1 = array<u32, 31>();
    let var_1 = func_2(~1u, ~(~abs(vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x))), var_0.ww);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-542f)));
    let var_3 = _wgslsmith_f_op_f32(-arg_0.a.x);
    return func_2(1u, ~(~vec4<u32>(~u_input.b.x, 6474u, u_input.b.x, 64987u)), -vec2<i32>(_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(-2147483647i, var_0.x, 2147483647i, var_0.x)) | u_input.a.x, var_0.x)).a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.x)))) - _wgslsmith_f_op_f32(112f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))))));
    let var_1 = arg_2.a.x;
    var var_2 = 463f;
    let var_3 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(72292u ^ u_input.b.x, ~103120u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, ~global1[_wgslsmith_index_u32(~u_input.b.x, 31u)], u_input.b.x, _wgslsmith_add_u32(~u_input.b.x, u_input.b.x)));
    global1 = array<u32, 31>();
    return select(max(u_input.b, u_input.b), u_input.b, vec3<bool>(arg_0.x, any(select(select(arg_0, arg_0, false), !arg_0, u_input.b.x >= 37639u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-208f)), _wgslsmith_div_f32(916f, 1958f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1196f), _wgslsmith_f_op_f32(select(217f, -1635f, false)), 36322i >= u_input.a.x)))), _wgslsmith_f_op_f32(-403f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2496f)) + 2043f) * -1309f))), -189f);
    global1 = array<u32, 31>();
    var var_1 = global1[_wgslsmith_index_u32(~(~reverseBits(0u)) | ~(~_wgslsmith_sub_u32(5644u, global1[_wgslsmith_index_u32(34117u, 31u)])), 31u)] & global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)], countOneBits(0u)), _wgslsmith_dot_vec3_u32(u_input.b, func_4(vec3<bool>(true, false, true), func_1(Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, -109f))), Struct_1(vec4<f32>(1000f, 664f, var_0.x, var_0.x))))), 31u)];
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-211f, var_0.x, var_0.x, -1570f))) - vec4<f32>(_wgslsmith_f_op_f32(966f * 1501f), _wgslsmith_f_op_f32(378f * var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1232f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1531f, -959f, var_0.x), true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2109f, var_0.x, var_0.x, 1031f), vec4<f32>(-1975f, 624f, -564f, var_0.x))) * vec4<f32>(var_0.x, var_0.x, -2947f, 1289f))))));
    global0 = array<Struct_2, 5>();
    let var_2 = ~u_input.b.x;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(-772f, _wgslsmith_f_op_f32(-var_0.x))))), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1855f, 1000f)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.x, func_2(global1[_wgslsmith_index_u32(max(0u, var_2) << ((var_2 | 1u) % 32u), 31u)], vec4<u32>(24076u, 30928u, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec2_i32(u_input.a.yy, abs(vec2<i32>(11184i, u_input.a.x)))).a.a.x, -280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -259f), var_0.x)))), var_3.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(885f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, -1012f)) - var_3.x))));
}

