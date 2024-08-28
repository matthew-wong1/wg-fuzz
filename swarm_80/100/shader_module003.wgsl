struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<f32, 2>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 15u)];
    let var_1 = reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(u_input.c.x | 32349u, _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.wx)), ~0u | u_input.b), select(u_input.c.xzx, ~min(u_input.c.zyz, vec3<u32>(u_input.b, u_input.c.x, 4294967295u)), -477f <= _wgslsmith_f_op_f32(-1000f * arg_0))));
    let var_2 = vec3<bool>(select(all(vec4<bool>(true, true, var_1 >= 4294967295u, true)), true, true), all(vec3<bool>(!all(vec3<bool>(true, true, true)), true, false)), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_3 = Struct_1(max(firstLeadingBit(_wgslsmith_clamp_vec4_i32(var_0.a, -vec4<i32>(-48859i, u_input.a, -25469i, -22811i), var_0.a)), -vec4<i32>(min(19903i, u_input.a), abs(-35735i), 0i, -25396i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), 899f)), 221f))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(1057f)));
    global0 = array<Struct_1, 15>();
    return _wgslsmith_div_f32(1427f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_1, 2u)])) * 1976f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1503f, arg_0))))));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_i32(~(~(vec4<i32>(u_input.a, 27678i, 1i, u_input.a) ^ vec4<i32>(2147483647i, -2147483647i, u_input.a, arg_0))), _wgslsmith_mult_vec4_i32(max(~vec4<i32>(arg_0, u_input.a, arg_0, arg_0), abs(vec4<i32>(arg_0, u_input.a, u_input.a, 44349i))), vec4<i32>(u_input.a, 0i, arg_0, 47334i >> (u_input.b % 32u)))), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~92867u, 2u)])), global1[_wgslsmith_index_u32(max(u_input.c.x >> ((firstLeadingBit(14980u) << (~u_input.b % 32u)) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.c.x), ~vec4<u32>(7567u, 4294967295u, u_input.b, u_input.c.x)), vec4<u32>(u_input.c.x, 59913u, 4294967295u, 0u))), 2u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~(u_input.c.x >> (34735u % 32u)), 2u)])), 117f));
    let var_1 = global0[_wgslsmith_index_u32(~58153u >> (u_input.c.x % 32u), 15u)];
    global1 = array<f32, 2>();
    var_0 = Struct_1(var_0.a, -1277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(func_3(-360f))))), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 2u)])));
    let var_2 = global0[_wgslsmith_index_u32(~(~(~(~(u_input.c.x ^ 24633u)))), 15u)];
    return u_input.c;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(u_input.c << (vec4<u32>(0u, 1u, 0u, arg_0.x) % vec4<u32>(32u)), vec4<u32>(u_input.b, 56416u, 38959u, arg_0.x), countOneBits(u_input.c)) & vec4<u32>(arg_0.x, arg_0.x, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), firstTrailingBit(u_input.b ^ arg_0.x)), select(u_input.c, func_2(-22105i) & abs(reverseBits(vec4<u32>(0u, arg_0.x, 0u, u_input.b))), vec4<bool>(all(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), -1i == abs(u_input.a))));
    global0 = array<Struct_1, 15>();
    global1 = array<f32, 2>();
    var var_1 = u_input.a;
    let var_2 = -11482i;
    return Struct_1(-(vec4<i32>(~u_input.a, i32(-1i) * -2147483647i, min(u_input.a, u_input.a), -1i) & reverseBits(vec4<i32>(var_2, var_2, -41643i, u_input.a) & vec4<i32>(var_2, var_2, 35681i, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(106421u, 2u)] * global1[_wgslsmith_index_u32(arg_0.x, 2u)]), -573f))) * global1[_wgslsmith_index_u32(~(~1u), 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-623f)))), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_0.x, 2u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(-43887i, u_input.a, -48764i, u_input.a) | ~vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(-u_input.a, u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), firstTrailingBit(0i))), global1[_wgslsmith_index_u32(0u, 2u)], 509f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1682u | u_input.b, 2u)] * 2042f))));
    var_0 = func_1(~u_input.c.xx);
    let var_1 = u_input.c;
    var var_2 = func_1(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(4294967295u, 37043u, var_1.x) << (u_input.c.wwy % vec3<u32>(32u))), var_1.xzz)));
    var var_3 = _wgslsmith_mod_vec4_u32(~(~abs(vec4<u32>(u_input.c.x, u_input.b, u_input.b, 1u))) >> (~(~(~u_input.c)) % vec4<u32>(32u)), ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, global1[_wgslsmith_index_u32(var_1.x, 2u)], global1[_wgslsmith_index_u32(0u, 2u)])) * vec3<f32>(var_0.b, 716f, -2183f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1305f, -501f, 441f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.d, var_2.c, global1[_wgslsmith_index_u32(u_input.b, 2u)]))))))), -1i, var_2.a.x << (min(_wgslsmith_mult_u32(129319u, 12477u), 4294967295u) % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1296f, var_2.c, -1508f, var_0.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d, var_0.c, 831f, var_0.d), vec4<f32>(-307f, var_0.b, 1025f, var_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 186f, -991f, -1660f)))))), ~(var_1.x ^ 1u));
}

