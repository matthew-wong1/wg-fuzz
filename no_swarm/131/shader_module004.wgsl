struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<u32>(0u, abs(_wgslsmith_mult_u32(4294967295u, u_input.b)), ~u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-376f, arg_0, -472f), vec3<f32>(-518f, arg_0, arg_0), vec3<bool>(true, false, true)))))), !vec4<bool>(!any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(trunc(1395f)) < _wgslsmith_f_op_f32(arg_0 * -1384f), false, _wgslsmith_dot_vec2_i32(arg_1.zz, vec2<i32>(arg_1.x, arg_1.x)) == 9283i), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, arg_0 != arg_0)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    let var_1 = var_0.a;
    let var_2 = 47697u;
    let var_3 = var_0;
    return 12125u;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(67442u, u_input.b))), vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, u_input.b), ~u_input.b, u_input.b)), ~firstLeadingBit(u_input.b) | (min(55839u, 1u) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(17102u, 26209u, u_input.b)))));
    var_0 = 1u;
    var_0 = firstTrailingBit(~(41793u | _wgslsmith_mod_u32(u_input.b, func_3(626f, u_input.e.wyx))));
    var var_1 = Struct_2(Struct_1(reverseBits(~(~vec3<u32>(65961u, u_input.b, 17655u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-604f, 415f, -1505f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(274f, -833f, -1200f) * vec3<f32>(-245f, -480f, 1000f)))), vec3<f32>(-709f, _wgslsmith_f_op_f32(min(122f, 232f)), _wgslsmith_f_op_f32(f32(-1f) * -929f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1549f, 494f, -1123f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-985f, -294f, -489f)))))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, 0u != u_input.b), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(select(false, false, false), true, any(vec3<bool>(true, true, true)), true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, true))))));
    var var_2 = reverseBits(u_input.c);
    return var_1.d.x;
}

fn func_1() -> u32 {
    var var_0 = !vec3<bool>(!all(vec3<bool>(true, true, true)), select(~(-1i) <= ~u_input.e.x, false, all(vec4<bool>(true, false, false, false))), 68720u < (min(u_input.b, u_input.b) ^ 0u));
    var_0 = select(!vec3<bool>(!(!var_0.x), any(select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true))), all(vec3<bool>(var_0.x, false, true))), !(!(!(!vec3<bool>(true, var_0.x, true)))), vec3<bool>(func_2(), select(all(vec4<bool>(true, false, true, true)), var_0.x, !var_0.x) && ((u_input.a.x & -1i) <= (u_input.d >> (0u % 32u))), true));
    var_0 = vec3<bool>(all(!(!select(var_0.yy, var_0.xx, true))), true, var_0.x);
    var_0 = vec3<bool>(false, all(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, true)))), !var_0.x);
    let var_1 = select(var_0.xz, vec2<bool>(any(select(!vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(false, false, var_0.x), func_2())), var_0.x), vec2<bool>(true, u_input.e.x < _wgslsmith_div_i32(-19208i, _wgslsmith_dot_vec3_i32(u_input.e.zzx, u_input.e.zwz))));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, -1487f, 240f, 532f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1513f, -567f, -1054f, -1000f)))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)))))));
    let var_1 = -2148f;
    var var_2 = (vec2<u32>(abs(reverseBits(u_input.b)), _wgslsmith_add_u32(countOneBits(1u), u_input.b)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), ~(~vec2<u32>(u_input.b, u_input.b)))) | _wgslsmith_mod_vec2_u32(select(vec2<u32>(firstTrailingBit(u_input.b), 1u), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(u_input.b, 1u)), vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(24899u, u_input.b), vec2<u32>(24922u, u_input.b)), vec2<u32>(u_input.b, 0u)), vec2<u32>(36589u, 4294967295u) | vec2<u32>(u_input.b, 5012u)));
    let var_3 = u_input.e.xzx;
    let var_4 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d << (var_2.x % 32u), select(u_input.d, -76902i, false), 49010i), var_3), -_wgslsmith_mult_vec3_i32(-u_input.e.zyw, u_input.e.zzz)) | var_3;
    let var_5 = 329f;
    let x = u_input.a;
    s_output = StorageBuffer(var_5, ~vec4<u32>(~1u ^ _wgslsmith_sub_u32(u_input.b, 0u), func_1(), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 1u, 953u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 1u, var_2.x), vec4<u32>(u_input.b, var_2.x, u_input.b, var_2.x)))), _wgslsmith_div_i32(abs(-2147483647i), -42469i));
}

