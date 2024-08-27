struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<u32> {
    let var_0 = !select(vec3<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, false, false)) & false, true), !vec3<bool>(false, all(vec3<bool>(true, true, true)), true), vec3<bool>(true, all(vec3<bool>(false, false, true)) && true, !all(vec4<bool>(false, false, false, false))));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1755f, 835f, -418f, 164f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(781f, _wgslsmith_f_op_f32(f32(-1f) * -442f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_1 = Struct_1(any(select(vec3<bool>(!var_1.a, var_1.a, all(vec3<bool>(true, true, var_1.a))), var_0, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(ceil(var_1.b))))));
    var_1 = Struct_1(false, _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b))))));
    var_1 = Struct_1(any(vec3<bool>(!select(var_0.x, var_0.x, var_0.x), false == var_0.x, !all(vec4<bool>(var_1.a, false, true, var_1.a)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, 225f, 1817f, _wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(floor(-1068f))))))));
    return _wgslsmith_div_vec4_u32(~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 50702u, 51313u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(60559u, 81162u, 2457u, 0u)))), firstTrailingBit(select(vec4<u32>(4294967295u, 4294967295u, 21855u, 4294967295u), vec4<u32>(4294967295u, 68056u, 4294967295u, 0u), var_1.b.x >= var_1.b.x)) & ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 40026u, 16823u, 77453u), vec4<u32>(38850u, 55073u, 58238u, 0u), vec4<u32>(1u, 15742u, 4294967295u, 15628u)) & vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b.x ^ u_input.b.x, u_input.a, countOneBits(u_input.a)), -vec4<i32>(-1i, u_input.a, 5733i, -12376i), _wgslsmith_mod_vec4_i32(vec4<i32>(31748i, u_input.a, u_input.a, u_input.b.x), vec4<i32>(u_input.a, u_input.a, -1i, -13398i))) << (~(~vec4<u32>(84325u, 1u, 4294967295u, 1u)) % vec4<u32>(32u)), -vec4<i32>(u_input.a, 0i, ~u_input.a, _wgslsmith_add_i32(2147483647i, u_input.a)), false);
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - 2055f), 413f), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(10114u, 17051u, 12085u, 72528u))), max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(6232u, 0u, 1u, 73008u))), ~(~vec4<u32>(30171u, 1u, 14901u, 16179u) >> (func_3() % vec4<u32>(32u)))), -1i);
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(352f, 1068f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, 1018f), vec2<f32>(-577f, -110f)))))))));
    let var_3 = vec3<u32>(4294967295u, ~1u, 19078u);
    let var_4 = Struct_3(37901u);
    return select(select(!vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, any(vec4<bool>(true, false, false, true))), vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true)), true, all(vec3<bool>(false, true, false)), true), !vec4<bool>(true, all(vec2<bool>(true, false)), var_1.a == -258f, false)), select(vec4<bool>(!all(vec2<bool>(false, true)), all(vec2<bool>(false, false)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false)), any(vec4<bool>(false, true, false, false))), vec4<bool>(false, true, true, true != all(vec4<bool>(false, true, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), select(false, (1113f > _wgslsmith_f_op_f32(-var_1.a)) | true, false));
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(sign(1502f))) + -943f)))));
    let var_1 = all(arg_0);
    let var_2 = Struct_1(false && var_1, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(-1677f - -1955f), _wgslsmith_div_f32(var_0, 452f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 1115f, -2053f, var_0), _wgslsmith_div_vec4_f32(vec4<f32>(1262f, var_0, -924f, -263f), vec4<f32>(1000f, var_0, 1583f, var_0)), false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(884f, -1465f, 1985f, 1000f))) * vec4<f32>(var_0, var_0, var_0, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(959f, var_0, -1144f, var_0)))))))));
    var var_3 = func_2(-1000f).x;
    var var_4 = u_input.a & u_input.a;
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(countOneBits(u_input.a), ~(-u_input.a)), -1i);
}

fn func_1() -> Struct_2 {
    var var_0 = -_wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.a, 28998i, 0i))) | ~79554i;
    let var_1 = vec3<bool>(!(u_input.b.x > func_4(func_2(-2865f))), false, true);
    var_0 = -reverseBits(10157i);
    var_0 = abs(abs(firstLeadingBit(u_input.b.x ^ -3581i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-664f - -1000f), _wgslsmith_f_op_f32(-994f - 1196f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1093f, 1754f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1469f, -396f)), var_1.zz)), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-459f, -694f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, -3555f) * vec2<f32>(-510f, -119f))))));
    return Struct_2(var_2.x, ~4446u, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, firstTrailingBit(u_input.b.x ^ u_input.b.x)), abs(reverseBits(~vec2<i32>(u_input.a, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = -140f;
    var_1 = _wgslsmith_f_op_f32(abs(var_0.a));
    var var_2 = Struct_4(30036u, !select(func_2(1000f).xx, vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(true, vec4<f32>(var_0.a, -249f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.a)))))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, abs(var_0.c), _wgslsmith_sub_i32(var_0.c, 2147483647i)), vec3<i32>(-var_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.c, u_input.b.x), vec3<i32>(34792i, -1i, u_input.b.x)), 1i)), select(vec3<i32>(var_0.c, -2147483647i, var_0.c), ~max(vec3<i32>(var_0.c, 20998i, u_input.a), vec3<i32>(var_0.c, -1i, 2823i)), true)));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.c.b.x - _wgslsmith_f_op_f32(sign(-355f))), _wgslsmith_f_op_f32(-var_0.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(_wgslsmith_sub_u32(var_0.b, 4294967295u) | ~var_2.a)), u_input.a);
}

