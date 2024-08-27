struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -380f), 891f)), _wgslsmith_f_op_f32(f32(-1f) * -409f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -422f))) * _wgslsmith_f_op_f32(f32(-1f) * -820f)), _wgslsmith_div_f32(1517f, 1000f), _wgslsmith_f_op_f32(select(1f, 1f, _wgslsmith_f_op_f32(abs(-1000f)) >= _wgslsmith_f_op_f32(step(1136f, -2819f)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(334f + _wgslsmith_f_op_f32(var_0.x + -2563f)) + _wgslsmith_f_op_f32(ceil(var_0.x))), Struct_1(true, _wgslsmith_f_op_f32(-210f + -1945f), var_0.x, i32(-1i) * -2147483647i, true), vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, arg_1)), select(vec2<i32>(arg_1, -1i), vec2<i32>(-25300i, arg_1), vec2<bool>(false, arg_0)))), (i32(-1i) * -81030i) ^ ((arg_1 >> (4294967295u % 32u)) >> (_wgslsmith_add_u32(arg_2.x, 0u) % 32u)), abs(_wgslsmith_mod_i32(arg_1, _wgslsmith_sub_i32(u_input.a, 62588i)))), Struct_1(!any(vec4<bool>(arg_0, false, true, arg_0)), 666f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, var_0.x))), u_input.a, arg_0));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * -731f))) * var_1.a);
    return -382f;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-821f, 639f), _wgslsmith_div_f32(2012f, -1844f), -1128f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(758f, -1122f, 229f)))), vec3<f32>(591f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(true, u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))))), vec3<f32>(-582f, 165f, 1f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, 0u), vec3<u32>(11298u, 9564u, 71177u))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -410f, true)), _wgslsmith_f_op_f32(-244f + _wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = Struct_4(vec3<u32>(select(1u, u_input.d, true) >> (min(u_input.b.x, 44211u) % 32u), reverseBits(_wgslsmith_mult_u32(4294967295u, countOneBits(u_input.b.x))), u_input.b.x), _wgslsmith_f_op_f32(-var_0.x));
    var_1 = _wgslsmith_f_op_f32(-var_2.b);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return -57941i;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~1i, countOneBits(-2147483647i), 2147483647i), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(3314i, arg_3.d, u_input.a), vec3<i32>(arg_3.d, u_input.a, 0i)), vec3<i32>(u_input.a, 0i, u_input.a))), _wgslsmith_clamp_vec3_i32((vec3<i32>(-19092i, u_input.a, u_input.a) ^ vec3<i32>(-27084i, -8313i, arg_3.d)) | (vec3<i32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.b.x, arg_2, 57262u) % vec3<u32>(32u))), ~vec3<i32>(23954i, u_input.a, 41148i), vec3<i32>(min(2147483647i, 0i), _wgslsmith_mod_i32(arg_3.d, u_input.a), u_input.a))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(29541i, u_input.a, 1i) ^ vec3<i32>(arg_3.d, u_input.a, arg_3.d), vec3<i32>(-23123i, -1i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 1i) | vec3<i32>(arg_3.d, u_input.a, arg_3.d), _wgslsmith_add_vec3_i32(vec3<i32>(arg_3.d, 25371i, 2147483647i), vec3<i32>(u_input.a, -2147483647i, 2147483647i)))), select(~(vec3<i32>(arg_3.d, 8123i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, arg_3.d)), vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, -30508i), !vec3<bool>(false, true, arg_3.a))), true);
    let var_1 = vec3<u32>(arg_2, arg_2, arg_2);
    var var_2 = ~(~arg_2);
    var var_3 = arg_3.b;
    let var_4 = Struct_3(arg_3, Struct_2(_wgslsmith_f_op_f32(ceil(arg_3.b)), Struct_1(arg_0, arg_3.c, arg_3.b, u_input.a, true), var_0 ^ vec3<i32>(_wgslsmith_div_i32(arg_3.d, var_0.x), 1i, -102263i), arg_3), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + arg_3.b), arg_3, max(vec3<i32>(arg_3.d, var_0.x, -32983i) | var_0, var_0), Struct_1(false, 1007f, _wgslsmith_f_op_f32(select(arg_3.b, _wgslsmith_f_op_f32(101f - arg_3.c), true)), reverseBits(var_0.x), false)), arg_3.c);
    return Struct_1(all(select(vec3<bool>(true, true, true), !select(vec3<bool>(var_4.b.d.a, arg_3.e, arg_1), vec3<bool>(true, arg_0, var_4.c.d.e), vec3<bool>(false, false, arg_0)), vec3<bool>(arg_3.d != 1i, true, all(vec3<bool>(arg_3.a, false, var_4.a.e))))), _wgslsmith_f_op_f32(f32(-1f) * -556f), 190f, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.a, arg_3.d) ^ 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.x, var_4.a.d, max(2147483647i, var_0.x), _wgslsmith_mod_i32(var_0.x, var_0.x)), (vec4<i32>(-15841i, -2147483647i, arg_3.d, -2147483647i) << (vec4<u32>(u_input.c, 69377u, u_input.c, var_1.x) % vec4<u32>(32u))) | vec4<i32>(var_0.x, 43530i, -2147483647i, -1i))), true);
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = Struct_1(!(u_input.a <= countOneBits(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-105f, _wgslsmith_div_f32(-209f, -731f)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -454f), -1031f)))), ~(-(~(~25i))), true);
    let var_1 = _wgslsmith_sub_i32(var_0.d | 1i, 2147483647i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_div_f32(571f, -1575f)));
    let var_3 = var_1;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))), func_4(!any(select(vec2<bool>(arg_0, true), vec2<bool>(true, false), vec2<bool>(var_0.a, false))), true, max(4294967295u & _wgslsmith_add_u32(30374u, u_input.d), ~(~22416u)), Struct_1(true, var_0.c, var_0.c, func_2(), true)), select(~firstTrailingBit(-vec3<i32>(29219i, var_3, var_3)), ~(~(~vec3<i32>(var_1, u_input.a, 1i))), max(0i, i32(-1i) * -46775i) > _wgslsmith_dot_vec3_i32(~vec3<i32>(var_3, 0i, u_input.a), -vec3<i32>(-1i, var_3, u_input.a))), var_0);
    return (~_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, var_4.b.d), 1i) ^ reverseBits(func_2())) << (~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.c), reverseBits(vec4<u32>(4294967295u, u_input.c, 0u, u_input.c)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(2147483647i);
    var_0 = abs(abs(func_1(true) ^ u_input.a)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, ~u_input.d), ~((vec2<u32>(u_input.c, 64959u) | vec2<u32>(1u, u_input.c)) >> (u_input.b % vec2<u32>(32u)))) % 32u);
    var var_1 = min(vec3<i32>(u_input.a, firstTrailingBit(~u_input.a), -2147483647i), firstLeadingBit(~(-vec3<i32>(2992i, u_input.a, 18973i) | vec3<i32>(0i, u_input.a, u_input.a))));
    var_0 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, -2147483647i, -1i, var_1.x), firstTrailingBit(-vec4<i32>(u_input.a, -1i, var_1.x, 16073i)), vec4<i32>(21975i, firstLeadingBit(1i), 8259i, func_1(true))), vec4<i32>(~(i32(-1i) * -32911i), min(2147483647i, u_input.a), -13969i, -(-1i ^ var_1.x)), all(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))), countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, -2146i, 1i), min(vec4<i32>(var_1.x, 0i, -16638i, 1829i), vec4<i32>(u_input.a, var_1.x, var_1.x, var_1.x))), vec4<i32>(u_input.a, u_input.a, 1i, 66759i))));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec2_i32(var_1.zz, var_1.yz), vec2<i32>(0i, _wgslsmith_add_i32(u_input.a, 1i)), true), 1i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(487f, 296f) - _wgslsmith_f_op_f32(select(529f, 432f, true))) + _wgslsmith_f_op_f32(f32(-1f) * -967f)))), countOneBits(_wgslsmith_mod_vec2_i32(select(-var_1.yz, min(var_1.xx, var_1.xz), any(vec3<bool>(false, true, false))), ~(-var_1.yx))), u_input.b);
}

