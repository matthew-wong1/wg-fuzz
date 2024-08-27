struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    let var_0 = ~firstLeadingBit(_wgslsmith_div_i32(-2147483647i, ~_wgslsmith_div_i32(u_input.c, u_input.c)));
    var var_1 = !(!(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), true)));
    var var_2 = u_input.b;
    var_2 = _wgslsmith_div_u32(4294967295u, 28384u);
    let var_3 = true;
    return 40857i;
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(vec3<u32>(1u, u_input.b, arg_0 >> (37231u % 32u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 66172u, 4294967295u) ^ vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(countOneBits(4731u), reverseBits(0u), ~u_input.a)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2158f, 389f) + -627f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-818f + -472f) + -641f) - _wgslsmith_f_op_f32(max(-298f, -334f))))));
    let var_1 = func_3() <= 1i;
    let var_2 = -(~select(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, u_input.c)), vec2<i32>(-2147483647i, u_input.c), vec2<i32>(0i, -28335i)), countOneBits(~vec2<i32>(u_input.c, 0i)), -509f > _wgslsmith_f_op_f32(sign(1000f))));
    var_0 = Struct_2(countOneBits(~(~var_0.a)), _wgslsmith_f_op_f32(ceil(-1000f)));
    var var_3 = Struct_2(vec3<u32>(u_input.a, ~var_0.a.x, ~min(arg_0, countOneBits(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(126f, _wgslsmith_f_op_f32(-var_0.b)))) + -135f));
    return Struct_3(28860u, ~(firstTrailingBit(abs(vec4<u32>(arg_0, 40759u, 4294967295u, 4294967295u))) >> (abs(~vec4<u32>(var_0.a.x, 1u, 1u, 1383u)) % vec4<u32>(32u))), all(!(!(!vec2<bool>(var_1, var_1)))), Struct_1(_wgslsmith_div_i32(-var_2.x, -2147483647i), ~(var_0.a.yx ^ ~vec2<u32>(var_3.a.x, 4294967295u)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.b)) - -1025f)), _wgslsmith_f_op_f32(var_0.b * var_0.b)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = func_2(105314u).d;
    return u_input.b;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = ~(~vec4<u32>(~(u_input.a | u_input.a), func_4(func_2(40720u), any(vec3<bool>(false, false, false))), 7539u, ~countOneBits(u_input.a)));
    var_0 = ~min(vec4<u32>(1u, 1u << ((u_input.a & 0u) % 32u), var_0.x, abs(~var_0.x)), abs(select(select(vec4<u32>(4161u, 34559u, var_0.x, var_0.x), vec4<u32>(var_0.x, u_input.b, u_input.b, 0u), vec4<bool>(true, true, false, false)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 187u, 19642u, var_0.x), vec4<u32>(1u, u_input.b, 41558u, 0u)), true)));
    var_0 = vec4<u32>(~(~(~(~74029u))), 4294967295u, _wgslsmith_sub_u32(~(var_0.x << (61709u % 32u)), 1u) ^ _wgslsmith_div_u32(var_0.x, 4294967295u), 75535u);
    var_0 = ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, var_0.x, 0u, 4294967295u), ~(~vec4<u32>(u_input.b, 4294967295u, var_0.x, u_input.a)), ~vec4<u32>(u_input.a, 33593u, u_input.b, 15226u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1357f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1397f))), 1296f) - vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-func_2(firstTrailingBit(u_input.a)).d.e), _wgslsmith_f_op_f32(floor(arg_0))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~func_1(_wgslsmith_f_op_f32(f32(-1f) * -396f)), u_input.b, ~abs(4294967295u) << (~(~0u) % 32u), ~39054u), select(vec4<u32>(abs(23199u | u_input.a), u_input.a, _wgslsmith_sub_u32(39231u << (u_input.b % 32u), 1u), min(~u_input.b, ~u_input.a)), ~vec4<u32>(~u_input.a, ~u_input.a, 1u, 1u), vec4<bool>(true, true, true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)))));
    let var_1 = vec2<u32>(0u, _wgslsmith_mult_u32(1u, 1u << (~_wgslsmith_sub_u32(0u, var_0.x) % 32u)));
    let var_2 = Struct_3(66926u, abs(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, 16427u, 0u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 34169u, u_input.a, 5527u) | vec4<u32>(62275u, 0u, u_input.a, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 72639u, 1u, 4294967295u), vec4<u32>(var_0.x, var_1.x, var_0.x, var_1.x))), vec4<u32>(22683u, 1u, 9224u, 1u) ^ abs(vec4<u32>(u_input.a, 4294967295u, 0u, var_0.x)))), (4294967295u < var_1.x) && all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), func_2(var_1.x).d);
    var_0 = ~countOneBits(countOneBits(_wgslsmith_add_vec4_u32(var_2.b, reverseBits(var_2.b))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.d, var_2.d.e) * vec2<f32>(var_2.d.e, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.d.d, -1942f), vec2<f32>(var_2.d.d, -322f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2.d.e) + vec2<f32>(-647f, var_2.d.e)))))));
    var var_4 = !select(false, true, !any(vec2<bool>(var_2.c, false)));
    let var_5 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(var_1, countOneBits(~(var_2.d.b << (var_2.b.wy % vec2<u32>(32u))))), countOneBits(vec2<u32>(~1u, abs(17170u))));
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_6.d.a, var_6.d.c, u_input.c, var_6.d.c), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, var_2.d.a, var_6.d.c, u_input.c), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c))), (u_input.c << (0u % 32u)) >> (min(0u, 42924u) % 32u), 1i, -3869i) << (max(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_6.a, var_2.a, 1u), var_2.b)), var_2.b) % vec4<u32>(32u)), 73978i, ~_wgslsmith_clamp_u32(var_5.x | 86799u, countOneBits(19844u), reverseBits(_wgslsmith_mod_u32(20373u, var_0.x))), var_2.b.x, max(select(countOneBits(vec4<i32>(var_6.d.a, 2147483647i, var_6.d.a, u_input.c)), select(vec4<i32>(u_input.c, 0i, var_2.d.c, 8498i), vec4<i32>(-1i, u_input.c, var_2.d.c, 0i), vec4<bool>(var_6.c, false, var_6.c, var_6.c)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(15536i, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c)), vec4<bool>(!var_2.c, !var_6.c, var_6.c | true, var_2.c || true)), vec4<i32>(var_2.d.c, firstTrailingBit(_wgslsmith_mod_i32(var_6.d.c, var_6.d.a)), _wgslsmith_sub_i32(-2147483647i >> (var_1.x % 32u), reverseBits(var_2.d.c)), u_input.c)));
}

