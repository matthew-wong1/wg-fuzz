struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) + _wgslsmith_f_op_f32(arg_1.a + arg_1.a)), 852f))), firstLeadingBit(countOneBits(vec3<u32>(1u, u_input.e.x, u_input.e.x))), u_input.a, arg_1, true);
    let var_1 = Struct_3(~(~vec4<u32>(abs(var_0.b.x), 0u, _wgslsmith_add_u32(0u, 39850u), u_input.e.x | 1u)), Struct_2(reverseBits(4294967295u), 945f, vec2<u32>(0u, abs(var_0.b.x)), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.a)) * vec2<f32>(_wgslsmith_f_op_f32(-748f - -614f), _wgslsmith_f_op_f32(-var_0.d.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(453f))))), u_input.a.yx, _wgslsmith_mod_vec3_u32(vec3<u32>(abs(1u), _wgslsmith_mult_u32(var_0.b.x, _wgslsmith_add_u32(u_input.e.x, 3601u)), u_input.e.x << ((var_0.b.x ^ 3503u) % 32u)), vec3<u32>(reverseBits(var_0.b.x) ^ _wgslsmith_mult_u32(var_0.b.x, 0u), var_0.b.x, reverseBits(1u))));
    var var_2 = _wgslsmith_add_vec2_u32(select(~vec2<u32>(0u, ~48845u), u_input.e, select(vec2<bool>(!var_1.b.d.x, true), !var_1.b.d, false)), vec2<u32>(4294967295u, 31033u));
    let var_3 = Struct_5(var_0.d, vec4<u32>(countOneBits(_wgslsmith_div_u32(var_1.a.x, var_1.b.a)), 4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 6579u), u_input.e)), min(_wgslsmith_dot_vec4_u32(var_1.a, _wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(var_0.b.x, 20286u, var_2.x, 4294967295u), var_1.a)), 1u | var_1.e.x)), Struct_2(~var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - _wgslsmith_f_op_f32(ceil(arg_1.a))), -2037f), ~vec2<u32>(var_0.b.x, u_input.e.x) << (~countOneBits(u_input.e) % vec2<u32>(32u)), var_1.b.d, var_1.b.e), !all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, var_0.e, false), vec4<bool>(true, false, var_0.e, var_0.e), vec4<bool>(true, false, var_1.b.d.x, var_0.e)), !vec4<bool>(var_1.b.d.x, var_0.e, var_1.b.d.x, var_0.e))));
    var var_4 = var_0.b.zy;
    return var_0.e;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1027f) * _wgslsmith_f_op_f32(-1818f + -644f))), -356f));
    var var_1 = select(vec4<bool>(true, false, func_3(var_0.a, Struct_1(-1588f)), any(vec2<bool>(false, u_input.d == u_input.c.x))), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)))), vec4<bool>(any(vec4<bool>(true, true, any(vec2<bool>(false, false)), true)), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), any(vec3<bool>(true, false, false)), false));
    let var_2 = vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(-2147483647i, abs(reverseBits(u_input.a.x)) & 1i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.d, 9349i, 25878i, u_input.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.c.x, -2147483647i), vec4<i32>(25940i, u_input.d, u_input.b, u_input.c.x))), vec4<i32>(~u_input.b, u_input.a.x, _wgslsmith_add_i32(-32782i, 25581i), -4600i)), 11412i));
    var_1 = vec4<bool>(true, !any(select(!vec3<bool>(var_1.x, var_1.x, false), !var_1.yzx, true)), var_1.x, var_1.x);
    var var_3 = ~vec3<u32>(_wgslsmith_mult_u32(u_input.e.x, max(0u, u_input.e.x)), ~(~16214u), ~u_input.e.x) >> (firstLeadingBit(abs(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.e.x, u_input.e.x, 0u)), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x) ^ vec3<u32>(4294967295u, 27909u, u_input.e.x)))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-700f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = ~vec4<i32>(max(countOneBits(u_input.d), -1i), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-1i, -1i, u_input.c.x, 1i), ~vec4<i32>(u_input.d, 15103i, 7418i, u_input.d), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d, -47030i, u_input.c.x, -10809i), vec4<i32>(u_input.c.x, u_input.c.x, -10587i, u_input.c.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, u_input.b))), 0i, -u_input.c.x);
    return _wgslsmith_f_op_f32(func_2());
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: vec4<u32>) -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_add_u32(~firstLeadingBit(0u), select(~1u, arg_0.e.x << (arg_3.x % 32u), true)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.b.x, arg_1.c.c.x, arg_1.b.x, 1u)), select(vec4<u32>(0u, 25752u, 1u, arg_1.b.x) | vec4<u32>(0u, 22026u, u_input.e.x, 0u), vec4<u32>(0u, arg_3.x, arg_1.b.x, arg_3.x) >> (arg_3 % vec4<u32>(32u)), u_input.b < -2147483647i))), 1086f, abs(reverseBits(_wgslsmith_sub_vec2_u32(arg_3.wz | vec2<u32>(arg_1.c.c.x, arg_1.c.c.x), arg_0.e.yy))), arg_0.b.d, arg_0.b.e);
    var var_1 = Struct_2(min(~26997u << (u_input.e.x % 32u), 1u), arg_1.c.b, ~vec2<u32>(51373u, arg_1.c.a), vec2<bool>(true, -128f != _wgslsmith_f_op_f32(max(-1877f, _wgslsmith_f_op_f32(-arg_1.a.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.e, _wgslsmith_f_op_vec2_f32(trunc(arg_1.c.e)))));
    var var_2 = ~countOneBits(firstLeadingBit(arg_3.xxw));
    var var_3 = Struct_4(arg_1.a, select(vec3<u32>(arg_3.x, ~var_1.a, min(0u, arg_3.x)), firstLeadingBit(arg_1.b.yxw), true) & vec3<u32>(52471u, _wgslsmith_mult_u32(arg_3.x, 38370u) & _wgslsmith_mult_u32(arg_3.x, 78842u), _wgslsmith_dot_vec3_u32(arg_0.e, arg_3.wyz)), abs(abs(u_input.a)), Struct_1(1182f), true);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(806f, arg_1.a.a, var_0.e.x, 349f), vec4<f32>(arg_1.c.b, 1000f, -1180f, -334f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1908f, 312f, -1000f, -1000f), vec4<f32>(arg_1.c.b, -492f, 625f, var_3.d.a)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-396f, var_3.d.a, arg_0.c, -3381f), vec4<f32>(-1334f, -931f, var_0.e.x, arg_0.c)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.c, var_3.d.a)), arg_1.a.a, arg_1.c.e.x, -748f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2114f), var_3.a.a, -1234f, _wgslsmith_f_op_f32(-var_0.b)))));
    return StorageBuffer(reverseBits(select(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.c.x, var_3.b.x, 4294967295u, 79856u)), _wgslsmith_clamp_vec4_u32(arg_0.a, arg_1.b, vec4<u32>(57456u, var_2.x, 37524u, arg_3.x)), vec4<u32>(31763u, 1u, 4294967295u, var_0.a) >> (arg_3 % vec4<u32>(32u))), abs(arg_1.b), select(var_3.c.x <= var_3.c.x, false, func_3(var_1.e.x, Struct_1(392f))))), var_3.b.x & (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.c) | 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, 37018u, 4294967295u, 103041u), vec4<u32>(68516u, u_input.e.x, 4294967295u, u_input.e.x) >> (vec4<u32>(34780u, u_input.e.x, 1u, 51617u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, 0u, 4294967295u, 111726u)) >> (vec4<u32>(u_input.e.x, 42064u, u_input.e.x, u_input.e.x) % vec4<u32>(32u))), Struct_2(~(~0u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_1(632f))))), firstTrailingBit(vec2<u32>(50378u, 57943u) >> (u_input.e % vec2<u32>(32u))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2016f, -704f) + vec2<f32>(728f, 1593f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1307f, 1303f), vec2<f32>(-226f, -1123f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(669f)))), vec2<i32>(-25284i, countOneBits(u_input.a.x >> (0u % 32u))), ~(~vec3<u32>(48618u, 96895u, u_input.e.x))), Struct_5(Struct_1(-583f), max(~(~vec4<u32>(u_input.e.x, 1u, 4294967295u, 16511u)), abs(vec4<u32>(u_input.e.x, 11037u, 2316u, u_input.e.x))), Struct_2(reverseBits(15427u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1087f)), _wgslsmith_f_op_f32(select(-951f, 645f, true)))), firstLeadingBit(vec2<u32>(1u, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(384f, -380f), vec2<f32>(-207f, 571f)))))), true), select(vec2<bool>(any(vec3<bool>(true, false, true)), true), vec2<bool>(_wgslsmith_f_op_f32(step(525f, -667f)) > -369f, any(vec3<bool>(false, false, false))), true), ~reverseBits(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(15092u, 0u, u_input.e.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4251u, 0u, u_input.e.x), vec4<u32>(30458u, 41071u, 1u, 0u)))));
}

