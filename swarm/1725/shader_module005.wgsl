struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = reverseBits(_wgslsmith_sub_i32(1i, -82638i));
    var var_1 = select(!vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), false, firstTrailingBit(-32692i) < firstLeadingBit(-2147483647i)), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true)), !(!vec3<bool>(true, true, all(vec3<bool>(true, true, true)))));
    var_1 = !(!select(select(!vec3<bool>(var_1.x, false, false), select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, false)), true), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true != var_1.x, var_1.x, var_1.x)));
    var_1 = !(!vec3<bool>(!all(vec3<bool>(false, var_1.x, var_1.x)), var_1.x, true));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(11178i, 13553i), countOneBits(vec2<i32>(1915i, -1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(1i, -34046i))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-32421i, -2147483647i), 5742i), 0i) >> (~select(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u)), max(vec4<u32>(17028u, 367u, 5791u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), true) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_sub_i32(0i, 1i) >> (~4294967295u % 32u), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -1758i, -2147483647i), vec4<i32>(47162i, -1i, -2450i, 15076i)), abs(57986i)) >> (~(~vec4<u32>(4294967295u, 84739u, u_input.a.x, 18405u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(736f, -951f) + _wgslsmith_f_op_f32(select(-361f, -1423f, var_1.x))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1462f + -593f) - 905f), 343f))) + 289f);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    let var_0 = Struct_2(~select(max(vec2<i32>(23793i, 38383i), vec2<i32>(arg_1, arg_1)) | (vec2<i32>(-2147483647i, 0i) ^ vec2<i32>(arg_1, arg_1)), min(vec2<i32>(arg_1, arg_1), vec2<i32>(-14602i, -2147483647i)) ^ select(vec2<i32>(-2722i, 1i), vec2<i32>(arg_1, arg_1), arg_0), false), 40839u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 539f, _wgslsmith_f_op_f32(-243f * -130f)), vec3<f32>(_wgslsmith_f_op_f32(func_3()), -343f, 773f)))), vec2<i32>(-max(-22664i, _wgslsmith_mult_i32(arg_1, -2195i)), ~0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-385f, -817f, _wgslsmith_f_op_f32(select(1093f, 1000f, false)), _wgslsmith_f_op_f32(-1877f + 297f)))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + 314f), _wgslsmith_f_op_f32(ceil(-1000f)), true)), -972f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(711f)), 521f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(140f)), ~(~vec4<u32>(var_0.b, u_input.a.x, u_input.a.x, var_0.b) << (firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, var_0.b, 0u) & vec4<u32>(18055u, var_0.b, 4294967295u, 0u)) % vec4<u32>(32u))), true, true, ~(-(~var_0.d.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(ceil(922f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(251f, -830f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, -2727f, any(vec3<bool>(var_1.c, false, true)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(586f * -543f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -317f, 179f))), var_0.e.zyz, select(vec3<bool>(all(arg_0), any(vec3<bool>(false, arg_0.x, true)), true), !(!vec3<bool>(arg_0.x, var_1.d, true)), select(vec3<bool>(arg_0.x, false, var_1.d), select(vec3<bool>(var_1.d, true, true), vec3<bool>(var_1.c, arg_0.x, var_1.d), vec3<bool>(var_1.c, false, arg_0.x)), arg_0.x && false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-673f, var_2.x, 194f) - vec3<f32>(var_1.a, 660f, var_2.x))) + _wgslsmith_f_op_vec3_f32(-var_0.e.yxz)), true));
    var var_3 = _wgslsmith_sub_i32(select(var_0.a.x, min(arg_1, 2147483647i), any(select(select(vec3<bool>(true, var_1.c, var_1.d), vec3<bool>(false, arg_0.x, var_1.c), false), !vec3<bool>(true, var_1.d, var_1.c), select(vec3<bool>(false, var_1.d, var_1.c), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(var_1.d, arg_0.x, true))))), -2147483647i);
    return var_0.e.x;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = -(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-11477i, 18765i, -2147483647i, -8096i), vec4<i32>(-999i, -39775i, -1i, 20158i)), 13598i >> (arg_2.x % 32u)) & vec2<i32>(1i, 1i)) | ~_wgslsmith_clamp_vec2_i32(~(~vec2<i32>(-5546i, 31932i)), vec2<i32>(1i, 1i), ~firstLeadingBit(vec2<i32>(97856i, 1i)));
    var var_1 = Struct_1(1020f, vec4<u32>(u_input.a.x << (arg_2.x % 32u), arg_2.x, firstTrailingBit(u_input.a.x), ~(~(~1u))), !all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(select(vec2<bool>(true, any(vec3<bool>(false, true, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)), var_0.x);
    let var_2 = Struct_2(vec2<i32>(0i, _wgslsmith_div_i32(_wgslsmith_mult_i32(~var_1.e, -781i), var_0.x)), 63736u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(max(arg_0, arg_0))))), vec2<i32>(0i, ~0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-723f, var_1.a, 1786f, 1454f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1470f, var_1.a, var_1.a, -622f) + vec4<f32>(173f, 350f, arg_0, var_1.a))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1160f, 279f, var_1.a) + vec4<f32>(var_1.a, 968f, -922f, var_1.a))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, arg_0, arg_0, arg_0)))))));
    var var_3 = !select((abs(arg_2.x) | 30990u) < _wgslsmith_mod_u32(~0u, u_input.a.x), !var_1.d, true);
    var_1 = Struct_1(var_2.c.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, arg_1.x, abs(15497u), ~var_1.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(4256u, arg_2.x, 4294967295u, arg_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b, 0u, 41682u, u_input.a.x), vec4<u32>(var_1.b.x, arg_1.x, var_2.b, arg_1.x), var_1.b)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, arg_1.x, 19566u), arg_2), vec4<u32>(60628u, 9574u, 4294967295u, var_1.b.x))), all(vec4<bool>(false, var_0.x > _wgslsmith_mult_i32(-2147483647i, var_2.a.x), !(arg_0 <= 246f), _wgslsmith_f_op_f32(var_2.e.x + arg_0) == _wgslsmith_f_op_f32(-var_2.c.x))), var_1.c, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(var_2.d.x, 0i, var_0.x, var_0.x)) << (var_1.b % vec4<u32>(32u)), select(vec4<i32>(var_1.e, var_0.x, var_2.d.x, -19440i), select(vec4<i32>(2147483647i, var_2.a.x, 2147483647i, var_1.e), vec4<i32>(var_1.e, -14129i, var_2.a.x, var_1.e), var_1.d), var_1.d) << (abs(var_1.b) % vec4<u32>(32u))));
    return min(4294967295u, reverseBits(0u));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = ~func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + arg_1.a) - _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), arg_1.e))))), u_input.a & vec3<u32>(firstLeadingBit(arg_0), min(1u, 20491u), 0u), ~(~min(vec4<u32>(8282u, 16218u, u_input.a.x, 0u), arg_1.b)));
    let var_1 = Struct_2(max(vec2<i32>(~(1i >> (arg_1.b.x % 32u)), -17283i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.e, arg_1.e), max(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.e, 1i), vec2<i32>(1i, arg_1.e)), vec2<i32>(-2360i, 2147483647i) >> (vec2<u32>(u_input.a.x, 7351u) % vec2<u32>(32u))))), countOneBits(max(firstTrailingBit(_wgslsmith_clamp_u32(arg_1.b.x, 1u, arg_0)), ~(~7961u))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), arg_1.a, 968f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(1733f)), 880f, -636f), vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(abs(arg_1.a))), arg_1.d)))), _wgslsmith_mod_vec2_i32(vec2<i32>(~(-24063i), -16011i), vec2<i32>(-1i) * -vec2<i32>(28157i, arg_1.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a, -1454f, arg_1.a, arg_1.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 1362f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, -545f, 364f, arg_1.a)))))));
    let var_2 = Struct_1(-258f, arg_1.b, false, true, ~(-24405i));
    var_0 = abs(~(~_wgslsmith_sub_u32(arg_0, u_input.a.x) >> (~_wgslsmith_clamp_u32(var_2.b.x, var_1.b, 0u) % 32u)));
    var var_3 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_2.d, arg_1.d, var_2.c), vec3<bool>(var_2.c, false, arg_1.c), false), true), !vec3<bool>(var_2.c, false, false), arg_1.d), select(select(!vec3<bool>(var_2.c, arg_1.d, false), select(select(vec3<bool>(false, true, var_2.c), vec3<bool>(var_2.c, var_2.c, true), true), vec3<bool>(false, true, arg_1.d), vec3<bool>(var_2.d, false, true)), vec3<bool>(1000f >= arg_1.a, var_1.a.x <= arg_1.e, all(vec2<bool>(true, var_2.c)))), vec3<bool>(var_2.d, any(select(vec2<bool>(true, false), vec2<bool>(arg_1.d, false), true)), false), true), false);
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -282f;
    let var_1 = 54706u;
    var var_2 = -select(reverseBits(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i))), ~abs(firstTrailingBit(vec4<i32>(2147483647i, -23969i, 54571i, 56771i))), true);
    var_2 = vec4<i32>(2147483647i << ((41843u | u_input.a.x) % 32u), var_2.x, -24763i, _wgslsmith_mult_i32(firstTrailingBit(firstLeadingBit(-1i)), (-6539i & -var_2.x) >> (77331u % 32u)));
    var var_3 = 403f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f))), 775f) + -626f);
    let var_4 = !vec2<bool>(any(vec3<bool>(true, true, true)), true);
    var_2 = vec4<i32>(~1i, reverseBits(firstTrailingBit(2147483647i ^ var_2.x)), func_1(~_wgslsmith_mult_u32(u_input.a.x, 0u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -536f), vec4<u32>(var_1, var_1, 1529u, 25405u) & vec4<u32>(50077u, u_input.a.x, 1u, u_input.a.x), var_4.x, true, var_2.x)), 2147483647i) ^ vec4<i32>(_wgslsmith_mult_i32(2147483647i, var_2.x), func_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(9978u, 1u, 22282u), ~34065u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -636f), ~vec4<u32>(123045u, var_1, var_1, u_input.a.x), var_4.x && var_4.x, any(vec2<bool>(false, var_4.x)), ~var_2.x)), var_2.x, ~21741i);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2020f))), vec4<u32>(4294967295u << (~(~var_1) % 32u), u_input.a.x, u_input.a.x, var_1), !all(vec3<bool>(false, var_4.x, true)), true, -reverseBits(~abs(-10428i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_5.e, abs(-var_5.e)) << (u_input.a.x % 32u), 1000f, firstTrailingBit(~45384u));
}

