struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec3<f32> {
    let var_0 = ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(37689i, arg_1, arg_1, arg_1)), ~(-vec4<i32>(arg_1, 28257i, -27384i, 8080i))) == -11437i;
    let var_1 = vec2<f32>(_wgslsmith_div_f32(1005f, _wgslsmith_f_op_f32(-234f - -812f)), -684f);
    let var_2 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, ~u_input.a.x, 1u, ~u_input.a.x) << (vec4<u32>(~51316u, _wgslsmith_clamp_u32(0u, 1328u, 4294967295u), u_input.a.x, min(u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), firstTrailingBit(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 13311u)))));
    var var_3 = ~u_input.a.x;
    var_3 = ~u_input.a.x;
    return vec3<f32>(-532f, -1587f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = u_input.a.x;
    var var_1 = vec4<bool>(u_input.a.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x | 4294967295u, 4294967295u, 1u, 0u), ~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 122840u))), true & arg_0.c.c, arg_0.c.c, !(!(false && arg_0.c.c) || (_wgslsmith_f_op_f32(arg_0.c.b.x + -1667f) >= _wgslsmith_div_f32(-326f, arg_0.a.x))));
    var var_2 = _wgslsmith_f_op_f32(min(229f, 1246f));
    var var_3 = arg_0;
    var var_4 = Struct_1(arg_0.c.a, _wgslsmith_f_op_vec3_f32(var_3.a - var_3.a), true, _wgslsmith_f_op_vec3_f32(func_3(var_1.wx, 1i)).x);
    return _wgslsmith_f_op_f32(-504f - _wgslsmith_f_op_f32(round(arg_0.a.x)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = arg_0.yx << (arg_0.yz % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(false, true), -2147483647i)) + vec3<f32>(-1102f, 564f, 1086f)), vec3<i32>(6286i, 14343i, -1633i) >> (arg_0 % vec3<u32>(32u)), Struct_1(vec2<i32>(-60636i, -56094i), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(699f, -355f, -321f), vec3<f32>(963f, 194f, -1339f))), true, _wgslsmith_f_op_f32(-555f * 251f))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(362f, 156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec3<f32>(-1241f, 193f, -561f), vec3<i32>(-5240i, -1i, 18839i), Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(906f, -1955f, -1395f), true, 253f)))) - 2055f)))), abs(vec3<i32>(0i, -select(-24013i, 0i, false), _wgslsmith_div_i32(34210i, -55011i))), Struct_1(vec2<i32>(-346i, i32(-1i) * -16063i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(false, true), 13179i)), _wgslsmith_div_vec3_f32(vec3<f32>(779f, -888f, -176f), vec3<f32>(-917f, -1608f, 261f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, -1000f, -1025f)), vec3<f32>(143f, 1281f, 826f)))), true, _wgslsmith_f_op_f32(f32(-1f) * -939f)));
    let var_3 = var_2;
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1197f))) + 1497f);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1)))));
    let var_1 = Struct_1(vec2<i32>(min(-1i, 30220i) << (~u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, 1i))), _wgslsmith_mod_vec2_i32(-vec2<i32>(-2418i, arg_0), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 1597i), vec2<i32>(-33893i, -1i))))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(ceil(var_0.x)), -1845f), false, arg_2);
    let var_2 = max(min(vec3<u32>(_wgslsmith_div_u32(60649u, u_input.a.x) ^ (u_input.a.x >> (30708u % 32u)), firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, 0u)), abs(~1u)), ~abs(min(vec3<u32>(14555u, 3705u, u_input.a.x), vec3<u32>(1u, u_input.a.x, 19113u)))), select(max(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(16352u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 36887u, 12928u))), vec3<u32>(_wgslsmith_sub_u32(~10840u, u_input.a.x ^ 44432u), u_input.a.x, 1u), var_1.c));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.zx * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -344f))) + var_1.b.zy));
    var var_3 = firstLeadingBit(reverseBits(min(0u, 4294967295u)));
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(abs(4294967295u), ~u_input.a.x)), u_input.a.x, 4294967295u, u_input.a.x);
    var var_1 = 0u;
    let var_2 = func_5(countOneBits(_wgslsmith_clamp_i32(-min(-74129i, 2147483647i), 0i, 0i)), -565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) + _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.a.x, var_0.x >> (u_input.a.x % 32u), var_0.x)))));
    var_0 = abs(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_0.x, var_0.x, var_0.x) ^ (vec4<u32>(59297u, var_0.x, var_0.x, 0u) | vec4<u32>(9932u, var_0.x, 4294967295u, 0u)), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), var_0.wz), 40140u, 1u), vec4<u32>(65547u << (var_0.x % 32u), 4294967295u, 0u >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 114189u, 4294967295u, var_0.x), vec4<u32>(30194u, var_0.x, 50469u, var_0.x)))), vec4<u32>(~12039u, 23035u, _wgslsmith_mult_u32(41435u, u_input.a.x), select(57081u, var_0.x, true)) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 46297u, 4294967295u, 0u), vec4<u32>(var_0.x, 26056u, 1u, 0u)), select(vec4<bool>(any(vec4<bool>(false, true, false, var_2.c)), -1700f < var_2.b.x, all(vec3<bool>(var_2.c, false, var_2.c)), var_2.c), select(vec4<bool>(var_2.c, var_2.c, true, true), select(vec4<bool>(true, var_2.c, var_2.c, false), vec4<bool>(true, false, false, var_2.c), vec4<bool>(false, false, var_2.c, false)), var_2.c != var_2.c), false)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<bool>((~var_0.a.x == firstLeadingBit(select(2147483647i, 2147483647i, false))) && !(!(var_0.c | true)), var_0.c, false, true);
    var var_2 = Struct_2(vec3<f32>(var_0.b.x, 1455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(vec3<f32>(var_0.d, var_0.b.x, var_0.b.x), vec3<i32>(var_0.a.x, -1i, var_0.a.x), var_0))))), select(vec3<i32>(func_5(var_0.a.x | var_0.a.x, _wgslsmith_f_op_f32(trunc(var_0.d)), _wgslsmith_div_f32(258f, var_0.b.x)).a.x, var_0.a.x, _wgslsmith_mult_i32(22005i, var_0.a.x) >> (_wgslsmith_div_u32(u_input.a.x, 54659u) % 32u)), vec3<i32>(-1i, ~countOneBits(-6388i), -1i), var_0.c), var_0);
    var_1 = !vec4<bool>(var_0.a.x == (46701i & _wgslsmith_dot_vec2_i32(var_2.c.a, var_0.a)), all(vec2<bool>(var_1.x, 67364u > u_input.a.x)), var_1.x, true);
    let var_3 = vec3<bool>(false, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mult_i32(var_2.c.a.x, var_2.c.a.x), u_input.a.x, _wgslsmith_clamp_u32(countOneBits(~u_input.a.x), ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_u32(~35579u, u_input.a.x, u_input.a.x)) & u_input.a.x);
}

