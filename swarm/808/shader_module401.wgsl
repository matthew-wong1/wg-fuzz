struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(1f, !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), abs(_wgslsmith_clamp_i32(u_input.a, firstTrailingBit(abs(-24321i)), _wgslsmith_sub_i32(-45950i, u_input.c & u_input.c))), ~abs(abs(u_input.d.x)));
    var var_1 = Struct_1(-592f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(650f, 251f, var_0.a, var_0.a))) - vec4<f32>(var_0.a, var_0.a, 419f, 651f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(466f, -167f)), _wgslsmith_div_f32(-603f, 383f))) - -245f) + _wgslsmith_f_op_f32(min(var_0.a, 1240f))), vec4<u32>(reverseBits(14043u), u_input.d.x ^ 1u, u_input.d.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, 12326u, u_input.d.x)), max(vec3<u32>(4294967295u, 11242u, 15489u), vec3<u32>(u_input.d.x, u_input.d.x, 0u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x), vec3<u32>(33390u, var_0.d, var_0.d)))));
    let var_2 = var_0.b.x;
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b, -926f, var_1.d);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))) * 1f)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = arg_0;
    let var_1 = abs(~(~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x & 4294967295u)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f), 117f)), vec4<f32>(_wgslsmith_div_f32(-297f, 2116f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()), -762f), _wgslsmith_f_op_f32(func_3()), ~(~(~vec4<u32>(var_1, 4294967295u, var_1, 1u)))), firstTrailingBit(reverseBits(-vec2<i32>(u_input.b, u_input.a)) << (abs(vec2<u32>(72569u, 4294967295u)) % vec2<u32>(32u))), 0i, ~abs(~select(vec3<u32>(var_1, u_input.d.x, 1u), vec3<u32>(1u, 4294967295u, u_input.d.x), true)), Struct_1(-343f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1837f, 1197f, 633f, 667f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-749f, -447f, -267f, -627f), vec4<f32>(-282f, 1000f, -922f, -138f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(728f, 1307f, -1000f, -1488f) + vec4<f32>(-1325f, 256f, 1156f, -1221f)))), 294f, vec4<u32>(abs(u_input.d.x), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d), abs(5107u), ~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(var_1, var_1)))));
    let var_3 = var_2.e;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1236f + _wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_3.a, 408f)))))));
    return var_4;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(any(vec3<bool>(false, true, true)))) * _wgslsmith_f_op_f32(func_3()));
    var var_1 = var_0 != _wgslsmith_f_op_f32(f32(-1f) * -1256f);
    var_1 = any(vec4<bool>(true, true, (25290u < u_input.d.x) || true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)))) | true;
    var var_2 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(1000f)));
    var var_3 = firstLeadingBit(vec3<i32>(reverseBits(-26858i), _wgslsmith_add_i32(-25485i, firstLeadingBit(-2147483647i)), countOneBits(1i)));
    return Struct_1(154f, vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1369f))), -730f, _wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(func_3()), vec4<u32>(u_input.d.x << (u_input.d.x % 32u), 4294967295u, u_input.d.x, u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f), 407f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3139f - -912f) * -973f)), -1724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-961f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(371f, 282f, true)), _wgslsmith_f_op_f32(f32(-1f) * -175f)), 765f))));
    var var_1 = Struct_2(func_1(), reverseBits(_wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(6763i, u_input.a), vec2<i32>(u_input.c, u_input.b))), -(~vec2<i32>(u_input.c, -1i)))), _wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(u_input.a, u_input.a, -7301i) ^ 7935i, ~min(-2147483647i, 28679i)), u_input.b), vec3<u32>(_wgslsmith_mult_u32(u_input.d.x & ~u_input.d.x, 72065u), 1u, 0u), Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, 506f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1262f, -813f, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-278f * -1000f), min(~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 90785u)), select(firstLeadingBit(vec4<u32>(18268u, u_input.d.x, 97735u, 2286u)), max(vec4<u32>(34598u, u_input.d.x, 52446u, u_input.d.x), vec4<u32>(u_input.d.x, 57542u, u_input.d.x, u_input.d.x)), vec4<bool>(false, true, true, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1209f, _wgslsmith_f_op_f32(max(var_1.a.c, 133f)), -1224f))));
    let var_2 = -2147483647i;
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(732f * _wgslsmith_f_op_f32(-var_0.x)), 1f, 481f), func_1().b.wxw, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, all(vec2<bool>(false, true)))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), false), true), vec3<bool>(false, (u_input.d.x >= u_input.d.x) || (var_1.a.d.x == 0u), any(vec3<bool>(true, true, true))))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(412f, var_1.a.a, var_0.x) + var_1.a.b.zxx)))))));
    var_1 = Struct_2(func_1(), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i >> (var_1.d.x % 32u), 1i ^ u_input.b), var_1.b.x & select(var_2, -36990i, true), _wgslsmith_add_i32(var_1.b.x, -31057i) >> (u_input.d.x % 32u))), u_input.b, ~(~var_1.a.d.wyy), func_1());
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true)) * _wgslsmith_f_op_f32(-var_0.x)), 988f, _wgslsmith_f_op_f32(var_1.a.c + -1427f), var_1.a.b.x)) * vec4<f32>(_wgslsmith_f_op_f32(var_1.e.c - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(trunc(func_1().c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + func_1().c) * var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(-1i << (u_input.d.x % 32u), -66325i) | _wgslsmith_dot_vec4_i32(vec4<i32>(19416i, 24854i, -2147483647i, var_2), -vec4<i32>(0i, var_1.b.x, var_1.b.x, var_2)), abs(_wgslsmith_div_i32(31168i, u_input.a ^ -14069i))), _wgslsmith_div_i32(_wgslsmith_mod_i32(6363i, var_2), -11507i), ~(vec3<u32>(~u_input.d.x, 1243u, 0u) | vec3<u32>(4294967295u, 1u, var_1.d.x)));
}

