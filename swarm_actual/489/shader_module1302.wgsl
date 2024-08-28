struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<i32, 6> = array<i32, 6>(2147483647i, 25316i, -33084i, 16938i, i32(-2147483648), -46234i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    global1 = array<i32, 6>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f * 358f)), -652f))), -363f);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    var var_0 = u_input.b;
    var var_1 = u_input.a;
    let var_2 = ~min(u_input.b.x, ~(~1u));
    let var_3 = ~select(_wgslsmith_div_vec2_i32(-(vec2<i32>(arg_1.a, -14020i) >> (var_0.xz % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a, u_input.c), vec2<i32>(u_input.c, -11370i))), _wgslsmith_clamp_vec2_i32((vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], -39586i) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) | firstTrailingBit(vec2<i32>(0i, -15107i)), vec2<i32>(1i, 1i), min(vec2<i32>(1i, -25090i), max(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(u_input.c, -2147483647i)))), true);
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(trunc(-544f));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = array<u32, 10>();
    var var_0 = 21727u;
    let var_1 = _wgslsmith_f_op_f32(func_3(~arg_0, Struct_1(u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -629f)), vec4<u32>(13190u, abs(4294967295u), countOneBits(109030u), 0u)));
    let var_2 = Struct_1(~(-(arg_2.a ^ global1[_wgslsmith_index_u32(0u, 6u)]) & ~_wgslsmith_sub_i32(u_input.c, -40551i)), arg_1.b);
    global0 = array<u32, 10>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, arg_0), ~arg_0), Struct_1(var_2.a, var_2.b), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 29212u, 57844u, u_input.b.x), u_input.b) | ~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)], global0[_wgslsmith_index_u32(arg_0, 10u)], arg_0))) + 1035f), -129f, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(2147483647i, u_input.c, u_input.c, global1[_wgslsmith_index_u32(abs(0u), 6u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-1185f, _wgslsmith_clamp_vec3_i32(~firstLeadingBit(var_0.xzw), firstTrailingBit(vec3<i32>(abs(-19331i), reverseBits(global1[_wgslsmith_index_u32(u_input.a, 6u)]), ~var_0.x)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -1i, var_0.x) << (u_input.b.wzz % vec3<u32>(32u)), reverseBits(vec3<i32>(var_0.x, -105i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47624u, 10u)], 10u)], 6u)])))), vec4<f32>(379f, _wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(func_2(u_input.b.x, Struct_1(min(2147483647i, 36315i), _wgslsmith_f_op_f32(ceil(1000f))), Struct_1(_wgslsmith_div_i32(u_input.c, 1i), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1685f, 1741f)) + _wgslsmith_f_op_f32(-263f * 539f)))), max(select(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, global1[_wgslsmith_index_u32(0u, 6u)], 1i, var_0.x)), -vec4<i32>(var_0.x, 25885i, 0i, u_input.c)), -vec4<i32>(1i, var_0.x, -1i, 1i), true), ~((vec4<i32>(u_input.c, u_input.c, 2147483647i, global1[_wgslsmith_index_u32(66817u, 6u)]) & vec4<i32>(var_0.x, 0i, var_0.x, u_input.c)) | vec4<i32>(-24521i, -29828i, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(52358u, 6u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, 2259f, 535f, -1815f))) + vec4<f32>(-1483f, _wgslsmith_f_op_f32(step(791f, 1712f)), 515f, _wgslsmith_f_op_f32(f32(-1f) * -755f)))));
}

