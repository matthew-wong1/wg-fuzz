struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<f32, 10> = array<f32, 10>(143f, 2443f, -533f, 1641f, 895f, -940f, 1000f, -249f, -1372f, -535f);

var<private> global2: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 24417u), vec2<u32>(6765u, 0u), vec2<u32>(35649u, 52969u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(27248u, 4294967295u), vec2<u32>(0u, 54729u), vec2<u32>(0u, 1u), vec2<u32>(0u, 85160u), vec2<u32>(0u, 23157u), vec2<u32>(97781u, 18650u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 19614u), vec2<u32>(52939u, 4294967295u), vec2<u32>(43105u, 4294967295u));

var<private> global3: i32 = 7104i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = 1026f;
    let var_1 = 2441i;
    let var_2 = ~(~_wgslsmith_add_i32(_wgslsmith_mult_i32(~u_input.a, var_1), u_input.d));
    return max(reverseBits(_wgslsmith_dot_vec3_u32(arg_0, arg_0) & ~arg_0.x) << (~arg_0.x % 32u), _wgslsmith_sub_u32(u_input.c, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 9391u, arg_0.x, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.c, 64507u), vec4<u32>(39909u, u_input.c, 0u, u_input.c))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(36676u, 31u)];
    let var_1 = arg_3;
    return vec4<u32>(arg_3.c, (select(4294967295u, 27142u, false) << (~1u % 32u)) >> (func_3(vec3<u32>(var_0.b, var_0.b, var_1.b)) % 32u), _wgslsmith_div_u32(u_input.c, 8694u), ~(~var_1.b)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(firstTrailingBit(0u), var_1.b << (u_input.c % 32u), ~var_1.c, ~var_0.b), ~(~(~vec4<u32>(var_0.c, arg_3.c, var_0.b, 20421u)))) % vec4<u32>(32u));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(select(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.b, arg_0, 4294967295u, 4294967295u), func_2(vec2<f32>(-1079f, arg_1), global1[_wgslsmith_index_u32(abs(1u), 10u)], -u_input.d, Struct_1(true, 4294967295u, 54334u))), firstLeadingBit(countOneBits(vec4<u32>(4929u, 78227u, arg_0, 0u) >> (vec4<u32>(arg_0, 0u, u_input.c, arg_0) % vec4<u32>(32u)))), select(vec4<bool>(false, !arg_2.a, 1002f <= global1[_wgslsmith_index_u32(21557u, 10u)], false), vec4<bool>(false, true, true, arg_2.a), vec4<bool>(true, false, any(vec2<bool>(arg_2.a, arg_2.a)), any(vec4<bool>(false, false, false, arg_2.a))))));
    var var_1 = arg_0;
    global1 = array<f32, 10>();
    var_0 = abs(vec4<u32>(1u, arg_0, ~16996u, 4294967295u));
    global2 = array<vec2<u32>, 16>();
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(var_0.zz, var_0.yy), firstLeadingBit(~arg_2.b), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2.b, var_0.x), _wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(1u, 7616u)))) >> (0u % 32u)), 31u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<i32> {
    let var_0 = vec3<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, arg_0.c), ~arg_0.c);
    global0 = array<Struct_1, 31>();
    var var_1 = reverseBits(abs(var_0.yx));
    global0 = array<Struct_1, 31>();
    let var_2 = ~_wgslsmith_mult_vec3_u32(select(~(~vec3<u32>(u_input.c, 0u, var_1.x)), ~vec3<u32>(4294967295u, 29674u, var_0.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 23645u, 4294967295u), var_0) % vec3<u32>(32u)), vec3<bool>(true, arg_0.a, arg_0.a != arg_0.a)), _wgslsmith_mod_vec3_u32(var_0, func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1512f, -1285f), vec2<f32>(349f, 530f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 10u)]), -1i, Struct_1(false, 74876u, var_0.x)).xzx));
    return select(vec2<i32>(_wgslsmith_sub_i32(countOneBits(arg_1.x), reverseBits(21327i)), u_input.b), -abs(firstTrailingBit(arg_1)) >> ((select(_wgslsmith_mod_vec2_u32(var_2.yz, vec2<u32>(var_0.x, var_2.x)), vec2<u32>(var_1.x, 1u), var_1.x <= 95321u) ^ var_0.yx) % vec2<u32>(32u)), 45106u <= abs(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(2355f, global1[_wgslsmith_index_u32(arg_0.c, 10u)]), vec2<f32>(global1[_wgslsmith_index_u32(13938u, 10u)], global1[_wgslsmith_index_u32(var_0.x, 10u)])), _wgslsmith_f_op_f32(trunc(-1000f)), -19223i, func_1(arg_0.b, -709f, Struct_1(arg_0.a, 0u, 0u))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(37535u, 10u)]) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-664f, global1[_wgslsmith_index_u32(9800u, 10u)]) + vec2<f32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)])))) + vec2<f32>(117f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 10u)])))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 10u)] * _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 10u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.c, 10u)])) - _wgslsmith_f_op_f32(f32(-1f) * -1803f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, -323f))), ~4294967295u >= u_input.c)), any(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(25476u < u_input.c, true, false, global1[_wgslsmith_index_u32(u_input.c, 10u)] == -2740f), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 10u)] == -835f, all(vec2<bool>(false, true)), true)))));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(max(_wgslsmith_div_u32(46207u, 16765u) >> ((u_input.c >> (3426u % 32u)) % 32u), u_input.c >> (~u_input.c % 32u)), 1u, ~(~1u))), 31u)];
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 31u)];
    var var_3 = max(_wgslsmith_div_vec2_i32(func_4(func_1(_wgslsmith_add_u32(79716u, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1663f), Struct_1(var_2.a, u_input.c, 15441u)), vec2<i32>(i32(-1i) * -2147483647i, i32(-1i) * -22204i)), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d, u_input.a) << (vec2<u32>(var_2.c, u_input.c) % vec2<u32>(32u))), vec2<i32>(~u_input.a, ~20520i))), vec2<i32>(reverseBits(u_input.d), -(~select(0i, 0i, var_2.a))));
    var var_4 = global0[_wgslsmith_index_u32(1u, 31u)];
    var var_5 = min(countOneBits(~(~(vec3<u32>(var_4.c, 0u, var_4.b) ^ vec3<u32>(var_4.c, 103430u, var_4.b)))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(36811u, u_input.c, 56916u), firstTrailingBit(vec3<u32>(2486u, var_2.b, 18110u))), 21742u, _wgslsmith_mult_u32(u_input.c & var_1.c, reverseBits(9989u))));
    var_4 = Struct_1(false, 4294967295u, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d), select(vec2<i32>(-13799i, var_3.x), vec2<i32>(75778i, 1i), true)) | var_3.x));
}

