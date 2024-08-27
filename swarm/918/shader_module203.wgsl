struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_add_i32(5728i, 1i);
    var_0 = (_wgslsmith_mod_i32(max(1i, reverseBits(u_input.d)), ~15276i) << (select(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 4294967295u, 1u), ~vec4<u32>(24569u, 10478u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a, 1u)], 1u)], 4344u)), _wgslsmith_mult_u32(arg_1.a, _wgslsmith_mod_u32(20122u, arg_1.a)), any(vec3<bool>(true, true, true))) % 32u)) ^ firstTrailingBit(-u_input.d);
    let var_1 = _wgslsmith_f_op_f32(min(-799f, 868f));
    global0 = all(!vec4<bool>(all(!vec4<bool>(false, true, arg_1.d, arg_1.d)), firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a, 1u)], 1u)]) < global1[_wgslsmith_index_u32(1u, 1u)], all(!arg_0), false));
    var_0 = u_input.b.x << (countOneBits(30395u) % 32u);
    return u_input.b;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = !(!(false | select(arg_2 <= arg_2, true, 0u <= global1[_wgslsmith_index_u32(0u, 1u)])));
    return ~(~arg_0);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    global1 = array<u32, 1>();
    let var_0 = ~(-11795i);
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(~func_3(global1[_wgslsmith_index_u32(~(~55070u), 1u)], 1998f, u_input.b.x), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(747f, _wgslsmith_f_op_f32(round(927f)))))), vec3<f32>(_wgslsmith_f_op_f32(614f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(320f + -1733f), _wgslsmith_f_op_f32(floor(-644f))))), _wgslsmith_div_f32(-909f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-706f)) * _wgslsmith_f_op_f32(max(1586f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1165f, _wgslsmith_div_f32(313f, -1606f), all(vec4<bool>(false, false, arg_0.x, true)))))), arg_0.x || true);
    global1 = array<u32, 1>();
    var var_2 = Struct_1(max(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(16184u, 1u)], 23976u) & (~var_1.a | var_1.a), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.c.x, -1121f)), _wgslsmith_f_op_f32(-var_1.b), true)) - var_1.b)), _wgslsmith_f_op_vec3_f32(-var_1.c), arg_0.x);
    return 23926u;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, 27959u, arg_3.a, 1077u), vec4<u32>(0u, arg_3.a, 0u, 6467u)), 88535u), 1u)], arg_3.c.x, vec3<f32>(_wgslsmith_f_op_f32(ceil(-1125f)), arg_3.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.c.x))), arg_3.b))), false);
    let var_1 = vec2<bool>(all(!(!(!vec4<bool>(false, var_0.d, false, true)))), !var_0.d);
    var var_2 = vec4<bool>(arg_3.d, all(!(!vec4<bool>(var_1.x, true, false, var_0.d))), !(!any(vec3<bool>(false, true, var_1.x))), true);
    let var_3 = _wgslsmith_mult_vec4_i32(select(-select(vec4<i32>(arg_0.x, u_input.c, u_input.c, arg_0.x), vec4<i32>(u_input.c, arg_0.x, u_input.d, -1i), arg_3.d), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, arg_0.x, u_input.b.x, u_input.d), u_input.b)), var_1.x), firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-2147483647i, arg_0.x, 0i, -19456i)))) & -vec4<i32>(2147483647i, u_input.d, u_input.c ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-36i, arg_0.x, u_input.c, -7748i), vec4<i32>(u_input.d, u_input.a, arg_0.x, 1i)), _wgslsmith_div_i32(-arg_0.x, firstLeadingBit(u_input.a)));
    var_2 = vec4<bool>(var_1.x, select(all(!var_2.yy), all(vec4<bool>(false, true, true, true)), var_1.x), true, true);
    return vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1, 39995u, 69702u, 24680u)), ~vec4<u32>(15231u, var_0.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], global1[_wgslsmith_index_u32(arg_1, 1u)])), 1u)], firstTrailingBit(min(0u, var_0.a))), ~43589u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_1(vec2<bool>(true, true), Struct_1(_wgslsmith_mult_u32(reverseBits(5850u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)]), 1f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2478f, 1822f, 982f)))), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(466f, -293f, 275f, -2041f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1089f, -494f, -402f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1733f, 796f) - vec2<f32>(1000f, -802f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-702f)), -255f)))));
    global1 = array<u32, 1>();
    let var_2 = _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.b.xx >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57057u, 1u)], 1u)], global1[_wgslsmith_index_u32(39449u, 1u)]) % vec2<u32>(32u)), vec2<i32>(var_0.x, u_input.c)), vec2<i32>(16459i, 1i));
    var var_3 = abs(abs(vec4<i32>(40228i, _wgslsmith_mod_i32(-2147483647i, var_2.x) | -1i, -14270i, u_input.b.x)));
    let var_4 = abs(var_2.x) | countOneBits(firstTrailingBit(-44190i));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(func_4(u_input.b.zyz, global1[_wgslsmith_index_u32(func_2(vec2<bool>(true, true), var_4), 1u)], true, Struct_1(4294967295u, -853f, vec3<f32>(var_1.x, -1144f, var_1.x), true))), _wgslsmith_f_op_f32(-var_1.x), (1u >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)] ^ global1[_wgslsmith_index_u32(30317u, 1u)], 1u)] % 32u)) << (1u % 32u));
}

