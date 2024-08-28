struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, true, true, true, true, true, true, false, false, false, false, false, true, true, false, true, false, false, true, true, false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(76471u << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(78154u, u_input.a, global0[_wgslsmith_index_u32(1u, 26u)], u_input.b), vec4<u32>(26186u, global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 78914u))), 24u)]));
    var var_1 = vec3<bool>(true, min(select(u_input.d.x, -25894i, false), -reverseBits(25138i)) <= u_input.c.x, !(!all(vec4<bool>(global1[_wgslsmith_index_u32(2627u, 24u)], true, false, false))));
    return all(vec3<bool>(var_1.x, 4294967295u > countOneBits(abs(u_input.b)), var_1.x));
}

fn func_2() -> Struct_2 {
    global0 = array<u32, 26>();
    var var_0 = u_input.c.x;
    let var_1 = select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 24u)], func_3(), any(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 26u)], 26u)], 24u)], true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)] >> (u_input.a % 32u), 24u)]))), vec4<bool>(global1[_wgslsmith_index_u32(~(u_input.b & 2993u), 24u)], !global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 26u)], 9055u), 4294967295u), 24u)], all(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(59587u, 24u)]), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)]), vec4<bool>(false, false, true, true), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14617u, 26u)], 24u)], global1[_wgslsmith_index_u32(0u, 24u)]))), global1[_wgslsmith_index_u32(firstTrailingBit(abs(9404u)), 24u)]), true);
    return Struct_2(Struct_1(true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    return max(_wgslsmith_add_i32(-(~firstTrailingBit(u_input.d.x)), ~u_input.d.x ^ ~(-u_input.c.x)), _wgslsmith_div_i32(51147i, -53796i));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = 675f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_0, 794f))))), vec3<f32>(2264f, var_0, -367f)));
    let var_2 = func_4(func_2(), Struct_2(Struct_1(true == all(vec4<bool>(false, global1[_wgslsmith_index_u32(28012u, 24u)], false, false)))));
    global0 = array<u32, 26>();
    return func_2().a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    global0 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(938f + 1624f)), -1415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-955f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-238f)))), _wgslsmith_f_op_f32(f32(-1f) * -428f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(778f - -1000f) * -694f), 1001f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1113f, 1636f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(449f, -303f)))), 431f), !vec3<bool>(false, arg_0.a, true)));
    global1 = array<bool, 24>();
    var var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(~global0[_wgslsmith_index_u32(~u_input.a, 26u)], _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], u_input.b, u_input.a, u_input.a)), min(vec4<u32>(1u, u_input.a, u_input.b, 0u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 26u)], u_input.b, 4294967295u, 22925u))), ~(~34402u), _wgslsmith_dot_vec4_u32(vec4<u32>(18467u, 54247u, 29506u, 4294967295u), vec4<u32>(26298u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], 0u))), ~vec4<u32>(_wgslsmith_div_u32(43537u, global0[_wgslsmith_index_u32(u_input.b, 26u)] & global0[_wgslsmith_index_u32(1u, 26u)]), ~66258u, 20221u, ~(u_input.b ^ u_input.b)));
    let var_2 = func_2();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1176f;
    let var_1 = _wgslsmith_div_vec3_i32(~vec3<i32>((u_input.c.x >> (global0[_wgslsmith_index_u32(u_input.b, 26u)] % 32u)) >> (95370u % 32u), i32(-1i) * -u_input.c.x, _wgslsmith_mult_i32(~u_input.c.x, -8499i)), _wgslsmith_clamp_vec3_i32(~(-(vec3<i32>(-22886i, u_input.d.x, 39488i) ^ vec3<i32>(-2147483647i, u_input.d.x, u_input.c.x))), -firstTrailingBit(vec3<i32>(6422i, u_input.c.x, 23892i)), ~(~vec3<i32>(6927i, -5868i, u_input.d.x))));
    global1 = array<bool, 24>();
    var var_2 = min(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d.x, var_1.x, -34755i, 0i), vec4<i32>(var_1.x, var_1.x, -5073i, u_input.c.x), global1[_wgslsmith_index_u32(0u, 24u)]) ^ ~vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, var_1.xx), u_input.c.x, 26592i, u_input.d.x)), vec4<i32>(-6413i, select(~var_1.x, u_input.c.x, !global1[_wgslsmith_index_u32(0u, 24u)]), 40619i, max(u_input.d.x, select(var_1.x, u_input.c.x, false))), _wgslsmith_mult_vec4_i32(-firstLeadingBit(vec4<i32>(var_1.x, u_input.c.x, -1i, 0i)), reverseBits(~vec4<i32>(1i, -2147483647i, 44527i, -23788i)))), vec4<i32>(func_5(func_1(42486i >> (u_input.b % 32u)), var_1.zz), -2147483647i, 9905i | u_input.c.x, min(var_1.x, var_1.x | 1i)));
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, reverseBits(min(-var_1.yx, vec2<i32>(firstLeadingBit(17264i), 0i))), _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(7736u, 26u)], global0[_wgslsmith_index_u32(~(u_input.a >> (global0[_wgslsmith_index_u32(11812u, 26u)] % 32u)), 26u)], _wgslsmith_dot_vec2_u32(vec2<u32>(69839u, 0u), ~vec2<u32>(4294967295u, 11372u))), vec3<u32>(~(~9021u), 4294967295u, 10573u)), ~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)] >> (4294967295u % 32u), 26u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(2684f - var_0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-784f)), _wgslsmith_f_op_f32(var_0 - -615f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1013f, var_0) * _wgslsmith_f_op_f32(step(var_0, -1676f))), _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(select(-770f, var_0, var_3.a.a)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1046f, 417f, var_0, var_0) * vec4<f32>(864f, -925f, 1000f, -1484f)))))));
}

