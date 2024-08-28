struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    var var_0 = Struct_3(36609u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a + 238f), _wgslsmith_div_f32(313f, -427f)))))));
    var var_1 = vec3<bool>(arg_0.c.e.x, all(vec2<bool>(false, !(var_0.b.x == arg_0.a))), !(!(arg_0.c.a.x >= u_input.a.x)));
    let var_2 = arg_0;
    var var_3 = 41096i | _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(var_2.c.a.yxy & vec3<i32>(arg_0.c.a.x, -18872i, 6886i), _wgslsmith_div_vec3_i32(arg_0.c.a.wyx, arg_0.c.a.wxw)), vec3<i32>(var_2.d << (var_2.b.x % 32u), abs(-1i), -1i) & firstTrailingBit(-arg_0.c.a.yxx));
    var var_4 = 791f;
    return ~var_2.b.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec3<i32> {
    var var_0 = max(~_wgslsmith_add_vec4_u32(vec4<u32>(23208u, 1u, arg_0.b.x, arg_0.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 74091u, arg_1, 4294967295u), vec4<u32>(107199u, 1u, 24489u, 101326u)) ^ countOneBits(vec4<u32>(arg_0.b.x, arg_0.b.x, 10403u, 1u))), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(arg_1, _wgslsmith_clamp_u32(arg_1, arg_0.b.x, arg_0.b.x), 1u, func_3(arg_0, vec4<u32>(arg_0.b.x, arg_1, arg_1, 76378u)))), _wgslsmith_mod_vec4_u32(abs(firstTrailingBit(vec4<u32>(arg_1, arg_1, 4294967295u, 57612u))), vec4<u32>(~arg_0.b.x, arg_0.b.x, select(arg_0.b.x, arg_1, false), _wgslsmith_clamp_u32(0u, 43901u, 22886u)))));
    return vec3<i32>(1i, -arg_0.c.a.x << (~var_0.x % 32u), max(-(u_input.a.x >> (arg_1 % 32u)) | (i32(-1i) * -13907i), ~(_wgslsmith_mult_i32(u_input.a.x, arg_0.d) << (var_0.x % 32u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(sign(arg_0.x)), reverseBits(~vec2<u32>(1u, 0u)), Struct_1(min(vec4<i32>(u_input.a.x, 0i, 2147483647i, 40854i), vec4<i32>(-30991i, u_input.a.x, -31800i, -42948i)), false, _wgslsmith_div_f32(1395f, -1387f), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec4<bool>(true, true, true, true)), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -5601i, u_input.a.x, 64130i), vec4<i32>(35088i, 1i, 38129i, u_input.a.x)))), ~func_3(Struct_2(-159f, vec2<u32>(16163u, arg_1.a), Struct_1(vec4<i32>(0i, -2147483647i, u_input.a.x, -2147483647i), false, -2049f, vec3<bool>(false, false, false), vec4<bool>(true, true, true, false)), u_input.a.x), firstLeadingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 2562u)))) << (vec3<u32>(1u, firstLeadingBit(arg_1.a), ~(~_wgslsmith_mult_u32(arg_1.a, 4294967295u))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b));
    var var_2 = 38346u;
    var var_3 = reverseBits(select(vec4<i32>(var_0.x, -u_input.a.x, var_0.x, func_4(Struct_2(arg_0.x, vec2<u32>(arg_1.a, 4294967295u), Struct_1(vec4<i32>(u_input.a.x, 0i, 0i, var_0.x), false, -378f, vec3<bool>(true, false, false), vec4<bool>(false, true, false, true)), 2147483647i), 37467u).x >> (arg_1.a % 32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-22861i, u_input.a.x, var_0.x, -1i), -vec4<i32>(var_0.x, u_input.a.x, -52733i, var_0.x), reverseBits(vec4<i32>(var_0.x, 0i, 2147483647i, -1i))), vec4<i32>(firstTrailingBit(4687i), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(u_input.a.x, -16498i), _wgslsmith_add_i32(11650i, -1i))), vec4<bool>(all(vec4<bool>(false, false, false, false)), !(arg_0.x <= arg_0.x), false, !select(false, false, false))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x + -229f), -1384f));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec2<u32>(abs(~arg_1.x), ~arg_1.x) << (vec2<u32>(reverseBits(arg_1.x) & 63000u, ~_wgslsmith_div_u32(arg_1.x, 4294967295u)) % vec2<u32>(32u));
    let var_1 = Struct_3(1u, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(-628f, -520f), Struct_3(13252u, arg_3.wzx)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f - arg_3.x))), -1290f, arg_0.x));
    var var_2 = Struct_1(-min(vec4<i32>(1i, arg_2 | 0i, -u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), firstTrailingBit(vec4<i32>(u_input.a.x, arg_2, -9820i, 0i))), all(vec3<bool>(true, true, true)), var_1.b.x, !vec3<bool>(all(vec3<bool>(false, false, true)), false, true), vec4<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 21555i, 1i)) >> (arg_1.x % 32u)) <= -2147483647i, arg_2 == u_input.a.x, all(vec3<bool>(true, true, true)) && false, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
    var var_3 = Struct_1(vec4<i32>(-_wgslsmith_sub_i32(select(-38745i, arg_2, var_2.e.x), ~arg_2), ~(-abs(1i)), ~(-72286i), abs(u_input.a.x)), any(var_2.d.zz), _wgslsmith_f_op_f32(f32(-1f) * -726f), !select(select(var_2.d, select(vec3<bool>(var_2.e.x, true, true), var_2.d, vec3<bool>(true, var_2.e.x, true)), var_2.b), var_2.d, select(var_2.e.xwy, select(var_2.d, var_2.d, var_2.d.x), select(vec3<bool>(var_2.e.x, var_2.e.x, true), var_2.e.xzz, var_2.e.zxx))), select(select(var_2.e, !vec4<bool>(var_2.b, var_2.d.x, var_2.b, false), var_2.e.x), select(vec4<bool>(true, var_2.b, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, any(var_2.e), true, any(vec3<bool>(var_2.e.x, true, true)))), var_2.b));
    let var_4 = var_1.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -876f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 21062u), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(79449u, 1577u, 63497u, 54277u), ~vec4<u32>(4294967295u, 35427u, 0u, 4294967295u)), 4294967295u));
    let var_1 = _wgslsmith_div_f32(1571f, 1000f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1212f + _wgslsmith_f_op_f32(func_1(vec2<f32>(-997f, -627f), vec3<u32>(5217u, var_0.x, 1u), -2147483647i, vec4<f32>(-632f, -915f, 449f, -194f))))));
    let var_2 = 1777f;
    var var_3 = ~(firstTrailingBit(~(~vec3<u32>(4465u, var_0.x, var_0.x))) << (~(max(vec3<u32>(4294967295u, 4294967295u, 43935u), vec3<u32>(60698u, var_0.x, var_0.x)) | ~vec3<u32>(48001u, var_0.x, 214u)) % vec3<u32>(32u)));
    var_3 = ~vec3<u32>(select(70469u, max(0u, var_0.x) ^ countOneBits(1885u), 0u > _wgslsmith_mod_u32(var_0.x, 63795u)), ~(var_3.x << (_wgslsmith_div_u32(var_0.x, 9356u) % 32u)), var_3.x);
    var_3 = ~vec3<u32>(1u, ~(_wgslsmith_clamp_u32(1u, var_3.x, 4294967295u) | var_0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, 4294967295u, var_3.x, var_3.x), vec4<u32>(69970u, var_0.x, 77822u, var_0.x)) & vec4<u32>(4294967295u, var_0.x, 16181u, var_3.x), firstTrailingBit(~vec4<u32>(var_3.x, var_0.x, 4294967295u, 27898u))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)))))), -firstLeadingBit(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), ~u_input.a.x)), Struct_1(-_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(62926i, -35320i, -12527i, u_input.a.x)), vec4<i32>(3589i, u_input.a.x, u_input.a.x, 26485i) << (vec4<u32>(var_3.x, var_3.x, var_3.x, var_0.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -12432i)), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, var_2) * 562f), !(!select(vec3<bool>(true, true, var_1), vec3<bool>(var_1, var_1, var_1), var_1)), !select(!vec4<bool>(false, true, var_1, var_1), !vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, false, var_1, var_1))), Struct_3(var_3.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(406f)), _wgslsmith_f_op_f32(round(var_2)), 206f)), -1285f);
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-207f, 1524f) - _wgslsmith_f_op_f32(step(var_4.a.x, -1878f))), var_4.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.e)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.d.b.x + var_2)), _wgslsmith_f_op_f32(max(var_4.c.c, _wgslsmith_f_op_f32(var_4.d.b.x - var_2))), _wgslsmith_f_op_f32(var_2 * -974f), 987f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_3.x, 36226u, 13529u)), vec3<u32>(78641u, var_0.x, 54260u))), 1i, _wgslsmith_f_op_f32(func_1(var_5.xz, vec3<u32>(~(~0u), 28958u, firstLeadingBit(~var_3.x)), -17995i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(var_5, _wgslsmith_f_op_vec4_f32(-var_5))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.d.b.x, -1127f, 807f, 1401f))), var_5), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec2<f32>(var_2, var_2), vec3<u32>(var_0.x, 0u, 0u), -365i, var_5)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.e)) + _wgslsmith_f_op_f32(-var_4.c.c)), _wgslsmith_f_op_f32(step(-368f, _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1013f))))));
}

