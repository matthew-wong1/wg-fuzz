struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = arg_0.d.a.a;
    var var_1 = ~min(~(~1u), u_input.a.x ^ 1u);
    var_1 = var_0;
    var var_2 = Struct_1(var_0, 4294967295u, ~(~u_input.b));
    let var_3 = _wgslsmith_add_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 3709i, -2147483647i, arg_0.e.x), vec4<i32>(72561i, u_input.b.x, var_2.c.x, -1i))) & u_input.b.x, min(1i, abs(_wgslsmith_mod_i32(u_input.b.x, 0i) >> (~var_2.a % 32u))));
    return arg_0.a;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, -1000f, -624f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1329f), _wgslsmith_f_op_f32(sign(121f)), -2265f)))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x >> (44711u % 32u), arg_0.b), 1u, 1200u), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(68087u, arg_0.b, 65459u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 4294967295u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-719f, 660f, 1693f, 418f) * vec4<f32>(791f, -1063f, -183f, -1683f)))))), Struct_2(Struct_1(u_input.a.x, ~(arg_0.b & 1u), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, u_input.b.x), vec4<i32>(0i, u_input.b.x, -2147483647i, u_input.b.x)), -arg_0.c.x))), _wgslsmith_sub_vec3_i32(abs(~vec3<i32>(u_input.b.x, -74884i, -34691i)), -select(reverseBits(vec3<i32>(u_input.b.x, arg_0.c.x, 18204i)), firstLeadingBit(vec3<i32>(-5407i, arg_0.c.x, 28642i)), true)));
    let var_1 = Struct_3(vec2<bool>(1664f <= _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_div_f32(var_0.c.x, 2441f)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), var_0.e, -u_input.b.x);
    let var_2 = var_0.b >> (var_0.b % vec4<u32>(32u));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(var_0.a, countOneBits(var_0.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, var_0.a.x, 1989f, 735f))), var_0.d, vec3<i32>(0i, -7539i, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-1161f, var_0.c.x, -301f))))), !select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(false, var_1.a.x, var_1.a.x)), var_1.a.x))), var_2, vec4<f32>(196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-281f)), 823f))), var_0.c.x, 174f), Struct_2(var_0.d.a), abs(vec3<i32>(u_input.b.x, -countOneBits(1i), var_1.c)));
    let var_4 = true;
    return Struct_2(var_0.d.a);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = func_2(Struct_1(min(_wgslsmith_sub_u32(1u, u_input.a.x), _wgslsmith_mod_u32(arg_1, 49031u)) | ~(~arg_1), arg_1, firstLeadingBit(u_input.b << (u_input.a % vec2<u32>(32u)))));
    let var_1 = Struct_3(vec2<bool>(any(vec3<bool>(true, true, true)), false), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(15136i, 2147483647i, u_input.b.x), vec3<i32>(var_0.a.c.x, 1i, 2147483647i)) << (vec3<u32>(1u, 4294967295u, arg_0.a.a) % vec3<u32>(32u)), ~(vec3<i32>(u_input.b.x, 1i, u_input.b.x) & vec3<i32>(7635i, -21315i, -2147483647i))), abs(-_wgslsmith_add_i32(select(u_input.b.x, -33304i, true), i32(-1i) * -13400i)));
    var var_2 = var_1.a;
    return func_2(Struct_1(0u, arg_2, vec2<i32>(var_1.b.x, var_1.c))).a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec3<i32> {
    let var_0 = -804f == _wgslsmith_f_op_f32(-832f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-985f)))))));
    return abs(max(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(2607i, 1i, -1i), firstLeadingBit(vec3<i32>(1i, -7010i, u_input.b.x)), vec3<i32>(arg_0.a.c.x, 1i, -30065i) ^ vec3<i32>(arg_1.x, 1i, 1i)), firstTrailingBit(~vec3<i32>(2147483647i, 0i, arg_1.x))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.c.x, arg_0.a.c.x, 20620i), vec3<i32>(arg_0.a.c.x, select(arg_0.a.c.x, arg_1.x, var_0), arg_0.a.c.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = all(select(vec4<bool>((true || arg_1.x) | true, true, arg_1.x, true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), true)), true));
    let var_1 = firstTrailingBit(func_5(Struct_2(func_4(func_2(arg_0), u_input.a.x ^ arg_0.a, 20685u)), countOneBits(countOneBits(vec2<i32>(u_input.b.x, -1i)) & abs(arg_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 2843f, 591f), vec3<f32>(-613f, 156f, 937f))) * vec3<f32>(1f, 1f, 1f)))));
    let var_2 = ~(~vec4<u32>(_wgslsmith_add_u32(~u_input.a.x, ~arg_0.b), u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, arg_0.a, u_input.a.x, 31300u), ~vec4<u32>(33881u, 4294967295u, u_input.a.x, arg_0.a)), 37102u));
    var var_3 = vec2<u32>(4294967295u, arg_0.b >> (~4294967295u % 32u));
    let var_4 = Struct_4(vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_f_op_f32(floor(127f)), 617f), vec4<u32>(u_input.a.x, ~(u_input.a.x | var_3.x), u_input.a.x, func_2(arg_0).a.a) << (~(~(~var_2)) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(844f * 888f), _wgslsmith_f_op_f32(-1256f * -669f), 1f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-429f + 738f), 262f, _wgslsmith_f_op_f32(floor(-158f)), _wgslsmith_f_op_f32(f32(-1f) * -168f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, -409f, 113f, 230f)))))), Struct_2(arg_2.a), vec3<i32>(0i, func_4(func_2(func_4(Struct_2(Struct_1(var_3.x, u_input.a.x, var_1.yy)), 54787u, arg_0.b)), 0u, ~(~arg_2.a.a)).c.x, ~23108i));
    return max(vec3<u32>(0u, ~u_input.a.x, arg_0.a), vec3<u32>(~(~firstTrailingBit(arg_2.a.a)), _wgslsmith_mult_u32(select(u_input.a.x, 57102u, true), 4294967295u) << (~8346u % 32u), var_4.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(33125u > (4294967295u & u_input.a.x)));
    let var_1 = u_input.a.x;
    var var_2 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), firstLeadingBit(vec3<i32>(u_input.b.x, -31136i, u_input.b.x)), abs(vec3<i32>(0i, 2147483647i, -2147483647i))) >> (_wgslsmith_add_vec3_u32(func_1(Struct_1(4294967295u, u_input.a.x, u_input.b), vec2<bool>(var_0, true), Struct_2(Struct_1(var_1, 1u, u_input.b))), ~vec3<u32>(13017u, 1u, var_1)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, -1i & u_input.b.x), (52188i << (u_input.a.x % 32u)) ^ -u_input.b.x, ~0i), firstTrailingBit(min(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(u_input.b.x, -18025i, u_input.b.x))) ^ ~min(vec3<i32>(0i, -49352i, -30381i), vec3<i32>(u_input.b.x, u_input.b.x, 1i)));
    var_2 = _wgslsmith_sub_vec3_i32(~(~vec3<i32>(-2147483647i, 1i, var_2.x) & max(vec3<i32>(35095i, u_input.b.x, 2707i), vec3<i32>(-34203i, var_2.x, -32627i))), max(~(~vec3<i32>(var_2.x, -1i, u_input.b.x)), ~vec3<i32>(1i, u_input.b.x, -1i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, var_1), vec3<u32>(u_input.a.x, 0u, 0u)) % vec3<u32>(32u)))) | reverseBits(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-15074i, var_2.x), vec2<i32>(23900i, u_input.b.x)), i32(-1i) * -2147483647i), ~_wgslsmith_add_i32(var_2.x, u_input.b.x), _wgslsmith_sub_i32(-1135i, -26734i)));
    var_2 = abs(vec3<i32>(var_2.x, ~(-4688i), 38703i) & reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, var_2.x, -17277i), _wgslsmith_div_vec3_i32(vec3<i32>(-39639i, u_input.b.x, u_input.b.x), vec3<i32>(var_2.x, 17674i, 7136i)))));
    var var_3 = vec2<bool>(false, any(select(select(!vec4<bool>(true, true, true, var_0), vec4<bool>(false, true, var_0, false), vec4<bool>(var_0, var_0, var_0, false)), select(!vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, false, false, var_0), vec4<bool>(false, var_0, var_0, true)), !vec4<bool>(false, var_0, var_0, false))));
    var var_4 = vec3<bool>(!var_0 | var_0, false, true);
    let var_5 = abs(19774i);
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1739f, -1000f, 1000f, -242f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, -1990f, -795f, 1940f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2259f, -1979f, -239f, -544f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, 530f, 1555f, -1817f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, -1300f, -710f, -1402f) - vec4<f32>(-594f, 141f, -801f, 1000f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(376f, 512f, -271f, -108f), vec4<f32>(-1054f, 177f, 107f, 765f), false))), vec4<f32>(-1869f, -1485f, -242f, _wgslsmith_div_f32(-164f, 1365f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(var_5, 53662i), _wgslsmith_sub_i32(var_5, 16600i)) & abs(countOneBits(vec3<i32>(var_5, 2147483647i, 31537i)))), var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.x, 67143i, 0i), select(vec3<i32>(var_5, 1i, u_input.b.x), vec3<i32>(var_2.x, u_input.b.x, var_2.x), vec3<bool>(false, var_4.x, true))), -(i32(-1i) * -1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(21273i, 9166i, u_input.b.x), vec3<i32>(-6632i, u_input.b.x, 2147483647i)), -23186i), -abs(vec4<i32>(9079i, u_input.b.x, var_5, var_5))), ~27387u);
}

