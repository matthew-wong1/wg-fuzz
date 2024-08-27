struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a, 126f, -949f, -1440f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, 1661f, -498f, 1322f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, arg_0.a, arg_2.a, -1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(422f))), 393f)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a + -2013f), arg_1.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-108f))))));
    let var_1 = any(!arg_1.b.yzy);
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-628f - -763f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(376f + 1317f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a, _wgslsmith_f_op_f32(floor(arg_2.a))))), arg_2.a), vec4<f32>(-1357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.a))))), 291f, 906f), vec4<bool>(-316f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a - 333f), _wgslsmith_f_op_f32(max(691f, arg_1.a))), !(!(!arg_1.b.x)), !all(select(arg_0.b, arg_1.b, true)), var_1)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.a, arg_0.a))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-314f + -1702f)), arg_1.b.x)), vec4<bool>(arg_1.b.x, !all(vec4<bool>(true, true, false, arg_0.c)), u_input.a == u_input.b.x, all(arg_0.b.zzx)), _wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -953f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(923f, _wgslsmith_f_op_f32(floor(arg_0.a)))))));
    var var_3 = vec4<i32>(26093i, ~firstTrailingBit(1i), _wgslsmith_clamp_i32(u_input.a, u_input.b.x, abs(u_input.b.x) & _wgslsmith_sub_i32(-49636i, 58761i)), _wgslsmith_mult_i32(0i, u_input.b.x));
    return !any(arg_0.b);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-arg_0.a)))))), select(vec4<bool>(false, false, all(select(arg_0.b, arg_0.b, vec4<bool>(arg_0.c, arg_0.b.x, false, false))), func_3(arg_0, Struct_1(arg_0.a, vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.c, false), arg_0.c), arg_0)), arg_0.b, any(select(!arg_0.b, vec4<bool>(arg_0.b.x, false, false, true), select(arg_0.b, vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.c, false), true)))), any(select(!(!vec3<bool>(arg_0.c, arg_0.b.x, arg_0.b.x)), !arg_0.b.zww, arg_0.a != arg_0.a)));
    var_0 = arg_0;
    let var_1 = vec3<u32>(0u, 42135u, ~4294967295u);
    var var_2 = -185f;
    let var_3 = countOneBits(u_input.b);
    return var_0.c == !all(vec2<bool>(true, arg_0.c));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<f32>(479f, _wgslsmith_f_op_f32(abs(571f)));
    var var_1 = !vec4<bool>(arg_0.b.x, true, func_2(arg_0), false);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(309f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_0.a)))), -1328f), !vec4<bool>(true, true, var_1.x & !var_1.x, true), all(select(!select(arg_0.b, arg_0.b, true), arg_0.b, !select(vec4<bool>(arg_0.c, true, arg_0.c, true), arg_0.b, arg_0.b))));
    var var_3 = !any(!select(select(vec3<bool>(true, arg_0.b.x, var_1.x), var_2.b.wxx, false), select(vec3<bool>(false, false, var_1.x), var_1.wyx, false), var_1.x));
    var_1 = select(var_2.b, !(!select(var_2.b, !vec4<bool>(var_2.b.x, var_1.x, false, var_1.x), vec4<bool>(false, false, true, var_1.x))), !var_2.b);
    return Struct_1(arg_0.a, select(arg_0.b, select(arg_0.b, !select(var_2.b, vec4<bool>(false, false, false, false), vec4<bool>(var_1.x, var_2.b.x, true, false)), -arg_1 >= ~(-1i)), vec4<bool>(true, false, any(vec2<bool>(var_1.x, true)), arg_2.x > arg_2.x)), _wgslsmith_mod_i32(i32(-1i) * -u_input.b.x, 1i) < ~2147483647i);
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = vec3<i32>(u_input.a ^ _wgslsmith_mult_i32(countOneBits(20877i), _wgslsmith_clamp_i32(-18519i, -40005i, 1i)), -min(0i, u_input.a), u_input.b.x);
    var var_1 = func_1(func_1(arg_0, ~_wgslsmith_sub_i32(0i, u_input.a), vec2<u32>(select(0u, 1u, !arg_0.b.x), _wgslsmith_mult_u32(16636u, _wgslsmith_clamp_u32(0u, 1u, 36864u)))), u_input.a, min(~vec2<u32>(1u, 1u), ~vec2<u32>(9837u >> (1u % 32u), 84428u)));
    var var_2 = func_1(func_1(arg_0, _wgslsmith_mult_i32(-u_input.a, _wgslsmith_mod_i32(1i, var_0.x)), vec2<u32>(~_wgslsmith_sub_u32(0u, 0u), 27021u)), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.b.x, var_0.x), vec3<i32>(u_input.b.x, var_0.x, -9984i), arg_0.b.x) << (~vec3<u32>(4294967295u, 58009u, 3514u) % vec3<u32>(32u)), abs(vec3<i32>(u_input.b.x, u_input.b.x, var_0.x)) ^ vec3<i32>(u_input.a, 0i, 1i)), vec2<u32>(1u, 1u));
    var var_3 = var_2.c;
    var_2 = func_1(Struct_1(var_2.a, select(arg_0.b, vec4<bool>(var_1.a >= -1527f, func_1(Struct_1(var_2.a, vec4<bool>(var_2.c, false, true, var_2.b.x), arg_0.b.x), var_0.x, vec2<u32>(65677u, 1u)).c, func_3(Struct_1(-938f, vec4<bool>(arg_0.b.x, var_1.c, true, false), true), Struct_1(-1196f, var_2.b, true), arg_0), true), arg_0.b), -2313i < var_0.x), u_input.a, ~(~(firstTrailingBit(vec2<u32>(18631u, 33002u)) >> (~vec2<u32>(1u, 51644u) % vec2<u32>(32u)))));
    return !vec2<bool>(var_1.c | true, !(!arg_0.c & any(var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(11943i, u_input.b.x), _wgslsmith_clamp_i32(38607i, u_input.b.x, -1i)), u_input.b), vec2<i32>(_wgslsmith_mod_i32(u_input.b.x << (0u % 32u), countOneBits(u_input.b.x)), 0i), func_4(func_1(Struct_1(-1629f, vec4<bool>(true, false, false, false), false), ~u_input.a, ~vec2<u32>(23452u, 59272u))));
    let var_1 = func_4(func_1(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + -587f), _wgslsmith_f_op_f32(244f + -680f), true)), vec4<bool>(any(vec4<bool>(false, true, false, true)), all(vec3<bool>(false, false, true)), select(true, true, false), true), true), var_0.x << (abs(_wgslsmith_clamp_u32(82549u, 36603u, 66283u)) % 32u), vec2<u32>(select(105839u, countOneBits(1u), func_2(Struct_1(826f, vec4<bool>(false, true, true, true), false))), 1u)));
    let var_2 = min(select(~(~vec4<i32>(var_0.x, u_input.b.x, -1i, u_input.a)) | ~max(vec4<i32>(-2147483647i, -1i, 47951i, -34457i), vec4<i32>(u_input.a, 1i, var_0.x, var_0.x)), select(abs(vec4<i32>(var_0.x, 38455i, -2147483647i, 0i) | vec4<i32>(77501i, var_0.x, var_0.x, u_input.b.x)), vec4<i32>(countOneBits(var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 45495i, var_0.x), vec3<i32>(u_input.b.x, 52999i, u_input.a)), countOneBits(1i), -45056i), vec4<bool>(!var_1.x, all(vec4<bool>(false, true, var_1.x, true)), func_3(Struct_1(-1343f, vec4<bool>(false, var_1.x, var_1.x, var_1.x), true), Struct_1(-135f, vec4<bool>(true, var_1.x, var_1.x, true), true), Struct_1(450f, vec4<bool>(false, false, false, var_1.x), var_1.x)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -212f), -960f)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2673f, 1166f))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, -56635i, var_0.x, -48084i), _wgslsmith_add_vec4_i32(vec4<i32>(-28738i, u_input.a, var_0.x, var_0.x), vec4<i32>(u_input.a, u_input.b.x, var_0.x, -62835i))), ~(vec4<i32>(var_0.x, var_0.x, u_input.b.x, u_input.b.x) | vec4<i32>(0i, u_input.b.x, u_input.b.x, var_0.x))) << (vec4<u32>(1u, reverseBits(~5059u), 1u, 54996u) % vec4<u32>(32u)));
    let var_3 = true;
    var var_4 = Struct_1(477f, vec4<bool>(var_1.x, true, all(vec3<bool>(true, true, true)), func_3(func_1(func_1(Struct_1(207f, vec4<bool>(false, var_3, false, true), true), 1i, vec2<u32>(4294967295u, 4294967295u)), var_0.x, vec2<u32>(1u, 1u)), func_1(func_1(Struct_1(693f, vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1.x), u_input.b.x, vec2<u32>(0u, 50533u)), -2147483647i, ~vec2<u32>(4294967295u, 34939u)), Struct_1(_wgslsmith_f_op_f32(529f + -155f), vec4<bool>(var_3, false, true, var_3), false))), all(select(select(select(vec4<bool>(true, var_3, var_1.x, var_1.x), vec4<bool>(var_1.x, var_3, false, true), vec4<bool>(var_3, true, var_3, false)), vec4<bool>(false, false, var_3, var_3), true), select(vec4<bool>(false, true, var_3, var_3), !vec4<bool>(false, var_1.x, true, true), select(vec4<bool>(var_1.x, var_1.x, true, var_3), vec4<bool>(var_3, false, var_1.x, var_3), vec4<bool>(false, var_1.x, false, false))), var_3 & !var_3)));
    var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, -_wgslsmith_clamp_i32(-79238i, 1i, -2147483647i)), -vec2<i32>(var_0.x, min(abs(u_input.a), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_4.a)), var_4.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-706f, 120f), vec2<f32>(866f, 234f), !var_4.c)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(select(5228u, 0u, true), countOneBits(23800u), 54331u), ~vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_mult_i32(firstLeadingBit(~(-1i)), countOneBits(-28522i)), -var_2.ywy ^ select(reverseBits(~vec3<i32>(-32844i, var_0.x, var_0.x)), select(vec3<i32>(-2147483647i, var_2.x, var_0.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i), var_4.b.xzz) | select(vec3<i32>(var_2.x, -2147483647i, 0i), var_2.yww, true), var_4.b.xwx), min(var_2, var_2));
}

