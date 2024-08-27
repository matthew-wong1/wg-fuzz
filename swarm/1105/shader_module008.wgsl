struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u << (max(u_input.a, 0u) % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a) & (u_input.a & u_input.a)), vec2<u32>(~_wgslsmith_mult_u32(0u, u_input.a), 818u)), vec2<u32>(u_input.b, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.b), countOneBits(u_input.b))));
    let var_1 = vec4<bool>(!(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), true, all(vec3<bool>(!all(vec3<bool>(true, false, false)), true, false)), all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)))) && !any(vec4<bool>(false, true, false, true)));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(u_input.c, reverseBits(vec4<i32>(10178i, u_input.e, u_input.d, 2147483647i))) << (_wgslsmith_mod_u32(firstLeadingBit(var_0.x) & _wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(0u, 0u))) % 32u), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(568f)) + 749f)), vec3<u32>(var_0.x, _wgslsmith_sub_u32(countOneBits(u_input.b), select(_wgslsmith_add_u32(1941u, var_0.x), 15697u, all(vec2<bool>(var_1.x, false)))), u_input.b), 243f);
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(max(countOneBits(u_input.c.wyw), vec3<i32>(2147483647i, -21699i, var_2.a)), -u_input.c.wxy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-667f, arg_0.x)))), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, 38475u, var_0.x), var_2.c >> (var_2.c % vec3<u32>(32u))), var_2.d));
    var var_4 = _wgslsmith_mult_vec3_u32(~(~var_2.c), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(14416u, 4759u, 4294967295u), vec3<u32>(var_2.c.x, var_3.a.c.x, 38525u)), vec3<u32>(var_3.a.c.x << (var_0.x % 32u), ~var_3.a.c.x, countOneBits(27762u))), var_3.a.c));
    return countOneBits(~(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c.x, var_3.a.c.x, var_2.c.x, u_input.b), vec4<u32>(var_3.a.c.x, var_3.a.c.x, var_3.a.c.x, var_4.x)), ~vec4<u32>(1u, var_4.x, u_input.b, 1u))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0.a.c.yx;
    let var_1 = Struct_3(Struct_1(_wgslsmith_add_i32(abs(-1i), firstLeadingBit(firstLeadingBit(0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(574f))), firstTrailingBit(arg_0.a.c), _wgslsmith_f_op_f32(f32(-1f) * -187f)), Struct_1(_wgslsmith_div_i32(-u_input.d, -40506i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2033f)), _wgslsmith_div_f32(arg_0.a.b, 1406f))), vec3<u32>(u_input.a, ~1u, abs(arg_0.a.c.x)), _wgslsmith_f_op_f32(-arg_0.a.b)), ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, u_input.b, 1544u), vec4<u32>(arg_0.a.c.x, u_input.a, 151154u, 1u)), vec4<u32>(arg_0.a.c.x, u_input.b, 4294967295u, arg_0.a.c.x))));
    let var_2 = Struct_3(Struct_1(~(i32(-1i) * -1i), _wgslsmith_f_op_f32(sign(var_1.b.d)), arg_0.a.c, -1162f), arg_0.a, (var_1.c & abs(~vec4<u32>(u_input.a, 25079u, u_input.a, u_input.b))) | _wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.a, u_input.b, u_input.a, var_0.x), var_1.c, true), ~vec4<u32>(var_0.x, 1u, 1u, 63965u)));
    var var_3 = max(vec4<u32>(~10570u, 24126u, 0u, (~var_1.c.x & 0u) << (~0u % 32u)), (abs(func_3(vec3<f32>(-1000f, var_2.b.d, 567f))) ^ abs(var_1.c)) << (var_1.c % vec4<u32>(32u)));
    var_3 = var_2.c;
    return 4294967295u;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = !vec4<bool>(false, all(!vec4<bool>(arg_0.x, false, false, false)), arg_0.x, any(arg_0.xx));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(790f, 1904f, -1859f, arg_1.a.d) - vec4<f32>(arg_2.d, arg_1.a.b, arg_2.d, 796f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.d, -402f, 1178f, 915f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-416f, -1290f, arg_1.a.d, arg_1.a.b))))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1077f, _wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(-636f + 117f), _wgslsmith_f_op_f32(-arg_1.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.d, -1116f, arg_2.d, arg_2.b))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, 1000f, -1646f, -1317f) - vec4<f32>(arg_1.a.b, -180f, -1557f, -361f)))))));
    var var_2 = ~vec2<u32>(49015u, ~arg_2.c.x ^ abs(func_2(arg_1)));
    let var_3 = vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1172f - arg_1.a.b)), true)) * 1f), 491f, arg_1.a.d);
    return u_input.c.yzy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(func_1(vec3<bool>(false, true, true), Struct_2(Struct_1(u_input.e, -446f, vec3<u32>(1u, u_input.b, u_input.b), 267f)), Struct_1(u_input.e, 684f, vec3<u32>(u_input.a, 60356u, 1u) ^ vec3<u32>(u_input.b, 57389u, u_input.a), -345f))) << (_wgslsmith_div_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(u_input.a, u_input.b, u_input.b))), vec3<u32>(select(~u_input.a, func_3(vec3<f32>(917f, -373f, -1000f)).x, any(vec4<bool>(true, true, false, false))), u_input.a, u_input.a)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_mod_u32(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 1000f, -2690f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-658f, -1000f, 1613f))))).x, u_input.b);
    var_1 = 1u;
    var var_2 = Struct_1(max(countOneBits(1i), countOneBits(var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f)))), ~vec3<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b), vec3<u32>(16345u, u_input.a, u_input.b))), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 12535u), vec3<u32>(0u, u_input.b, u_input.b) << (vec3<u32>(36403u, 8603u, u_input.b) % vec3<u32>(32u)))), 1890f);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(35113i, ~firstTrailingBit(_wgslsmith_mod_i32(-15633i, var_0.x))), var_2.a);
    let var_4 = Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_div_f32(-1000f, -453f)) * _wgslsmith_f_op_f32(sign(243f))), countOneBits(~vec3<u32>(1u, var_2.c.x, u_input.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(731f - var_2.b) + -1148f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-30001i, max(var_0.x, _wgslsmith_mod_i32(var_4.a.a, 2147483647i)) << (0u % 32u), u_input.c.x, 2147483647i), reverseBits(~func_3(vec3<f32>(var_4.a.d, -186f, 149f)).x) ^ ~var_2.c.x, _wgslsmith_div_u32(max(abs(var_4.a.c.x), var_2.c.x), ~var_4.a.c.x), countOneBits(vec2<i32>(~var_4.a.a, u_input.e)));
}

