struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> i32 {
    var var_0 = Struct_1(select(~(abs(vec2<i32>(-14195i, 34956i)) | (vec2<i32>(-2147483647i, 0i) | vec2<i32>(-2147483647i, u_input.b))), firstTrailingBit(select(vec2<i32>(1503i, 1i), select(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, -1i), false), vec2<bool>(true, true))), false), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -411f)))));
    var var_1 = var_0.a.x;
    var var_2 = any(vec4<bool>(any(!(!vec4<bool>(true, arg_2.x, arg_3.x, arg_1.x))), !any(arg_3), u_input.b <= _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(-420i, u_input.a, var_0.a.x)), vec3<i32>(var_0.a.x, -19575i, var_0.a.x)), arg_3.x));
    var var_3 = Struct_1(_wgslsmith_mod_vec2_i32(firstLeadingBit(var_0.a), vec2<i32>(reverseBits(var_0.a.x), 1i)), any(vec4<bool>(var_0.b, all(select(vec3<bool>(true, arg_0.x, false), arg_0, false)), false, !(!arg_1.x))), _wgslsmith_f_op_f32(-var_0.c));
    var var_4 = ~(~(~max(vec4<u32>(1u, 4294967295u, 45220u, 1u), reverseBits(vec4<u32>(14265u, 1u, 60337u, 27964u)))));
    return 23272i;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = max(vec4<i32>(u_input.b, (-2147483647i | u_input.b) << ((0u & arg_0) % 32u), -1i, u_input.a) ^ select(abs(vec4<i32>(u_input.a, u_input.b, u_input.a, -29019i) >> (vec4<u32>(arg_0, arg_0, arg_0, 79074u) % vec4<u32>(32u))), vec4<i32>(-27994i, ~33825i, _wgslsmith_mult_i32(u_input.a, -2147483647i), _wgslsmith_add_i32(255i, u_input.b)), all(vec2<bool>(true, true))), vec4<i32>(u_input.b, (22842i & _wgslsmith_div_i32(u_input.b, -2147483647i)) ^ u_input.a, 0i, -27015i));
    let var_1 = max(min(vec4<u32>(1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(29767u, 0u, 0u))), min(arg_0 >> (1u % 32u), arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, arg_0))), firstLeadingBit(~vec4<u32>(arg_0, arg_0, 4294967295u, arg_0) ^ firstTrailingBit(vec4<u32>(4294967295u, 32443u, 4294967295u, 0u)))), min(vec4<u32>(arg_0, 1u, ~(~arg_0), firstLeadingBit(6674u)), ~(~abs(vec4<u32>(arg_0, 35310u, arg_0, arg_0)))));
    let var_2 = _wgslsmith_f_op_f32(sign(-699f));
    var var_3 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(14117u << (arg_0 % 32u), _wgslsmith_sub_u32(reverseBits(firstLeadingBit(36112u)), abs(1u))));
    let var_4 = Struct_1(vec2<i32>(0i, func_3(vec3<bool>(true, true, true), vec2<bool>(true, true), vec2<bool>(var_2 < var_2, false), vec3<bool>(true, true, true))), true | !all(vec2<bool>(true, true)), _wgslsmith_div_f32(517f, _wgslsmith_f_op_f32(exp2(var_2))));
    return Struct_2(var_4.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    let var_0 = false;
    return abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(-10192i, 0i, u_input.a, -15308i)), vec4<i32>(_wgslsmith_sub_i32(0i, 2147483647i), arg_3.a.x << (1u % 32u), arg_0.b, _wgslsmith_div_i32(-2147483647i, 1i))), arg_0.b));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3.b;
    var var_1 = -(~u_input.a);
    var var_2 = vec3<u32>(_wgslsmith_mod_u32(4294967295u, reverseBits(~1u)), ~0u, min(~select(1u, ~4294967295u, all(vec4<bool>(false, true, false, arg_3.b))), reverseBits(~4294967295u << (_wgslsmith_mod_u32(0u, 19099u) % 32u))));
    var var_3 = Struct_3(!select(select(select(vec4<bool>(false, false, arg_3.b, true), vec4<bool>(true, var_0, true, false), vec4<bool>(true, arg_3.b, true, true)), !vec4<bool>(true, arg_1.x, arg_3.b, arg_1.x), true), !(!vec4<bool>(var_0, true, var_0, arg_1.x)), true), ~(func_4(Struct_3(vec4<bool>(var_0, true, arg_1.x, arg_1.x), 1i), _wgslsmith_div_vec4_f32(vec4<f32>(1404f, 524f, arg_2.x, arg_3.c), vec4<f32>(216f, arg_2.x, -669f, -840f)), func_2(var_2.x), arg_3) << (abs(1717u) % 32u)));
    var_3 = Struct_3(vec4<bool>(any(var_3.a), true, select(any(var_3.a.yzz), _wgslsmith_f_op_f32(-arg_2.x) != _wgslsmith_f_op_f32(-1000f + arg_3.c), true), false), var_3.b);
    return _wgslsmith_f_op_f32(-arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1330f)) * -566f), -1437f, _wgslsmith_div_f32(-206f, -270f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.b, vec2<bool>(true, false), vec3<f32>(1895f, 494f, 1692f), Struct_1(vec2<i32>(u_input.a, u_input.a), true, -602f))), _wgslsmith_f_op_f32(-326f * 282f))))));
    let var_1 = -select(vec4<i32>(~(-2147483647i), abs(u_input.a << (23152u % 32u)), -5599i, (1i & u_input.a) >> (1u % 32u)), select(reverseBits(vec4<i32>(u_input.a, -1i, -32315i, 36269i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.b, -28716i), vec4<i32>(47092i, u_input.a, -2147483647i, u_input.b)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), false), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), !(var_0.x > var_0.x), any(vec4<bool>(true, false, true, true)), false));
    let var_2 = firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(40575u, 55308u), 1u, ~1u, ~26673u) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(2868u, 0u, 1u, 71061u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) >> (~(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, 0u, 508u, 36468u), vec4<u32>(60263u, 4294967295u, 4294967295u, 0u), false), ~vec4<u32>(1u, 1u, 14380u, 0u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(1i, 48717i, abs(~(-19606i)), countOneBits(reverseBits(u_input.a))), ~(~(~var_2.ywy)), vec4<i32>(1i, func_4(Struct_3(vec4<bool>(true, true, true, true), u_input.a), vec4<f32>(-644f, _wgslsmith_f_op_f32(var_0.x - 1595f), -1767f, _wgslsmith_f_op_f32(1000f * var_0.x)), Struct_2(true), Struct_1(var_1.wz, any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(var_0.x * 408f))), u_input.a, select(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -2147483647i, -2147483647i), var_1.zyx), true)), 1i, var_1);
}

