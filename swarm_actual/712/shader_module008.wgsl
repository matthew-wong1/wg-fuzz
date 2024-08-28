struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(trunc(arg_0.e.x))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(146f, arg_0.c.x))), _wgslsmith_f_op_f32(floor(1f)))));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, u_input.a.x), 1i << (arg_0.a % 32u)), arg_0.d.x, _wgslsmith_mult_i32(-39730i, -13934i), ~arg_0.d.x), ~vec4<i32>(0i, u_input.a.x, -(arg_0.d.x ^ u_input.a.x), _wgslsmith_mult_i32(abs(-1i), max(arg_0.d.x, arg_0.d.x))));
    let var_2 = arg_0;
    global0 = array<bool, 4>();
    var var_3 = vec2<u32>(4294967295u, _wgslsmith_div_u32(arg_0.a, 1u));
    return _wgslsmith_div_vec3_f32(var_2.c, arg_0.c);
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(~_wgslsmith_div_u32(0u, ~0u), vec4<u32>(~(~46537u), 1u, countOneBits(firstLeadingBit(57304u)), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 43596u)), ~select(38033u, 0u, global0[_wgslsmith_index_u32(0u, 4u)]))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(1u, ~vec4<u32>(26770u, 64441u, 4294967295u, 4294967295u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(24884u, 0u, 463u, 4294967295u), vec4<u32>(0u, 68547u, 0u, 0u)) % vec4<u32>(32u)), vec3<f32>(-790f, 252f, -2121f), -vec4<i32>(u_input.a.x, -38770i, 1i, u_input.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, -359f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 808f), vec2<f32>(-626f, -309f)), true))))), ~reverseBits(abs(vec4<i32>(u_input.a.x, -6084i, u_input.a.x, 0i))) | select(_wgslsmith_add_vec4_i32(vec4<i32>(-10919i, 91851i, -2147483647i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, -2097i, u_input.a.x))), -(vec4<i32>(-22532i, 65185i, 1i, -12631i) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a.x != -45805i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1189f, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(26656u, vec4<u32>(0u, 39920u, 103982u, 27099u), vec3<f32>(1247f, 463f, -1225f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(-2832f, 338f)))).x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-882f, -310f)))), vec2<bool>(true, true))))));
    var var_1 = var_0.c;
    var_0 = Struct_1(4294967295u, var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1644f, _wgslsmith_f_op_f32(abs(var_0.e.x)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_0.c)), _wgslsmith_f_op_vec3_f32(sign(var_0.c)), false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), vec3<f32>(var_1.x, -1258f, -912f))))), -var_0.d | var_0.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.yy)) - _wgslsmith_f_op_vec2_f32(-var_0.e)))))));
    let var_2 = min(~(~(~countOneBits(79499u))), ~_wgslsmith_div_u32(abs(var_0.a), _wgslsmith_sub_u32(var_0.b.x, var_0.b.x)) ^ 0u);
    let var_3 = Struct_1(min(_wgslsmith_sub_u32(1u, ~var_0.a ^ (var_2 | var_2)), ~countOneBits(var_2)), abs(~vec4<u32>(min(var_2, 38781u), var_0.b.x, 0u ^ var_0.b.x, var_2)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_0.a, ~var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, var_1.x, var_1.x) + var_0.c), min(vec4<i32>(u_input.a.x, -17537i, var_0.d.x, -660i), var_0.d), _wgslsmith_f_op_vec2_f32(-var_0.e)))).x, var_0.c.x, _wgslsmith_f_op_f32(floor(var_1.x))), abs(abs(var_0.d)), vec2<f32>(-1103f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -1000f), -341f)));
    return !select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(55175u, 4u)], false, global0[_wgslsmith_index_u32(var_0.b.x, 4u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 4u)], true, global0[_wgslsmith_index_u32(var_3.a, 4u)]), !global0[_wgslsmith_index_u32(83603u, 4u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.b.x, 4u)], true, global0[_wgslsmith_index_u32(var_2, 4u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(var_2, 4u)], true, global0[_wgslsmith_index_u32(0u, 4u)]), !vec4<bool>(global0[_wgslsmith_index_u32(var_2, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(var_0.a, 4u)], false)), vec4<bool>(true, !global0[_wgslsmith_index_u32(4294967295u, 4u)], true, -1822f <= var_0.c.x)), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 4u)], global0[_wgslsmith_index_u32(var_2, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(var_3.b.x, 4u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_3.a, 4u)], false, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_2, 4u)], false)), vec4<bool>(global0[_wgslsmith_index_u32(var_3.b.x, 4u)], global0[_wgslsmith_index_u32(124077u, 4u)], global0[_wgslsmith_index_u32(var_3.b.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 4u)], false, false, global0[_wgslsmith_index_u32(1u, 4u)]), global0[_wgslsmith_index_u32(42123u, 4u)])), select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 4u)], false), !vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(var_3.a, 4u)]), false), vec4<bool>(true, true, !global0[_wgslsmith_index_u32(var_0.b.x, 4u)], any(vec2<bool>(true, global0[_wgslsmith_index_u32(var_2, 4u)])))), select(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(20746u, 4u)], true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(50809u, 4u)], global0[_wgslsmith_index_u32(var_0.a, 4u)]), !global0[_wgslsmith_index_u32(39539u, 4u)]), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(var_3.b.x, 4u)])), !(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 4u)], true, global0[_wgslsmith_index_u32(16058u, 4u)], false))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = !any(select(func_2(), select(func_2(), func_2(), true), select(global0[_wgslsmith_index_u32(16335u, 4u)], global0[_wgslsmith_index_u32(1u & arg_1.a, 4u)], true)));
    let var_1 = -106f;
    var var_2 = _wgslsmith_mult_vec2_i32(u_input.a.xz, vec2<i32>(arg_1.d.x, _wgslsmith_div_i32(arg_2, -_wgslsmith_mult_i32(u_input.a.x, arg_2))));
    var var_3 = vec2<i32>(max(reverseBits(var_2.x), _wgslsmith_add_i32(arg_2, u_input.a.x)), firstTrailingBit(_wgslsmith_div_i32(-33462i, arg_1.d.x)));
    var_2 = vec2<i32>(var_3.x, _wgslsmith_mult_i32(arg_2, arg_2) << (~_wgslsmith_mult_u32(countOneBits(arg_0.x), arg_1.b.x) % 32u));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(~vec4<u32>(1u, 1u, 1u, 1u), Struct_1(_wgslsmith_mod_u32(firstTrailingBit(47903u), ~0u), ~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1055f, 376f, -1612f))), min(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 86193i, u_input.a.x), vec4<i32>(67876i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1077f, -1000f))), _wgslsmith_add_i32(-u_input.a.x ^ ~0i, -66863i)), vec4<u32>(1u & func_1(vec4<u32>(4699u, 3109u, 0u, 4294967295u), Struct_1(20645u, vec4<u32>(11344u, 35126u, 0u, 57590u), vec3<f32>(549f, 649f, 1203f), vec4<i32>(u_input.a.x, -46673i, -1i, 30164i), vec2<f32>(-1115f, -412f)), u_input.a.x | 37852i), ~(52483u >> (max(1u, 0u) % 32u)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(6535u, 25956u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-521f)), _wgslsmith_f_op_f32(f32(-1f) * -2100f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1555f, 771f)))))), ~firstTrailingBit(vec4<i32>(-u_input.a.x, ~u_input.a.x, 2147483647i, -1i ^ u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-699f, 1000f) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(297f, -1655f))))), vec2<bool>(true, true)))));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(45548u, ~(~14082u), firstLeadingBit(var_0.b.x) & var_0.b.x), firstLeadingBit(var_0.b) << (~var_0.b % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_0.c)), vec3<f32>(1416f, 504f, 1079f), true)))), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-2147483647i, u_input.a.x, var_0.d.x, var_0.d.x) << (var_0.b % vec4<u32>(32u))) ^ min(vec4<i32>(u_input.a.x, var_0.d.x, u_input.a.x, 2324i), abs(vec4<i32>(u_input.a.x, var_0.d.x, -38523i, var_0.d.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, u_input.a.x, var_0.d.x, u_input.a.x), vec4<i32>(19969i, var_0.d.x, 1i, var_0.d.x)) << ((var_0.b << (abs(vec4<u32>(45574u, 76078u, 1u, 23001u)) % vec4<u32>(32u))) % vec4<u32>(32u))), var_0.c.yz);
    global0 = array<bool, 4>();
    var_0 = Struct_1(~(~abs(~var_0.a)), abs(min(countOneBits(var_0.b), var_0.b) | abs(firstTrailingBit(vec4<u32>(var_0.b.x, 0u, var_1.a, 0u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, 725f, var_1.e.x), vec3<f32>(819f, var_0.e.x, var_0.e.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c.x, 553f, 789f)))))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(6651i, _wgslsmith_mult_i32(u_input.a.x, -7756i), 51779i, ~var_0.d.x), ~(vec4<i32>(-2147483647i, var_1.d.x, var_1.d.x, 13712i) & var_1.d)), vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(var_0.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, 2147483647i), vec3<i32>(var_0.d.x, var_0.d.x, -6643i))), var_1.d.x, _wgslsmith_dot_vec3_i32(u_input.a ^ u_input.a, vec3<i32>(-47627i, -44034i, u_input.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1935f), -205f, true))), -1128f));
    let var_2 = var_1;
    let var_3 = abs(vec3<u32>(var_1.a, var_2.b.x | 1u, var_2.b.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(func_3(var_1)).x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b);
}

