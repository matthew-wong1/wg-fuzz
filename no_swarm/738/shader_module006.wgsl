struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_2(Struct_1(~max(~(-2147483647i), -1i), _wgslsmith_div_f32(1108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), firstTrailingBit(1i), true, arg_1.yy), Struct_1(firstLeadingBit(0i), arg_1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(45665i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), -2147483647i), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, 522f))))), Struct_1(_wgslsmith_sub_i32(-2147483647i, 1i), -1647f, min(countOneBits(_wgslsmith_sub_i32(-1i, 10679i)), -71778i), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.zy - arg_1.zx), vec2<f32>(arg_1.x, arg_1.x))))), abs(2147483647i), 4294967295u);
    var_0 = Struct_2(Struct_1(~1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(ceil(1809f))))), reverseBits(1i), false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.a.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.e.x, -1857f)), vec2<bool>(var_0.c.d, true))), vec2<f32>(_wgslsmith_f_op_f32(select(1059f, -1707f, var_0.c.d)), _wgslsmith_f_op_f32(f32(-1f) * -911f)))), var_0.b, Struct_1(firstLeadingBit(~var_0.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-647f, arg_1.x))), var_0.b.a, var_0.b.d, vec2<f32>(var_0.c.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -960f), _wgslsmith_f_op_f32(round(751f)))))), -1i, var_0.e);
    var_0 = Struct_2(Struct_1(var_0.a.c & ~14682i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * var_0.a.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, arg_1.x)))), 16547i & ~var_0.a.c, (true || all(vec4<bool>(true, var_0.b.d, var_0.b.d, false))) || false, arg_1.xy), var_0.c, Struct_1(~0i, arg_1.x, abs((-12993i ^ var_0.d) >> (20098u % 32u)), var_0.c.d, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.c.e)))), var_0.c.c, ~(_wgslsmith_mod_u32(1u, 21461u) | (u_input.b.x ^ 0u)));
    var var_1 = _wgslsmith_f_op_f32(floor(var_0.a.b));
    let var_2 = var_0.a.d;
    return any(select(vec2<bool>(!all(vec2<bool>(var_0.b.d, false)), all(vec4<bool>(false, true, false, true))), !vec2<bool>(var_0.b.d, any(vec2<bool>(false, var_0.c.d))), true));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_1(-59168i, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-315f, _wgslsmith_f_op_f32(max(-215f, _wgslsmith_f_op_f32(ceil(-1123f))))), 1f)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(u_input.a, 0u, u_input.b.x, 165707u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(1i, 10983i), 1i, _wgslsmith_clamp_i32(2147483647i, 11918i, -551i), 1i)) << (u_input.a % 32u), !func_3(Struct_3(u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(964f - 176f), 1f, 409f), select(u_input.b, max(u_input.b, u_input.b), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-492f, 1000f))))));
    var var_1 = select(select(!select(vec4<bool>(var_0.d, false, var_0.d, false), select(vec4<bool>(true, true, var_0.d, var_0.d), vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.d, true, true)), var_0.d), vec4<bool>(true, true, true, true), !(!(!vec4<bool>(var_0.d, true, var_0.d, var_0.d)))), select(select(select(vec4<bool>(var_0.d, false, true, var_0.d), select(vec4<bool>(true, false, var_0.d, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), !vec4<bool>(true, false, var_0.d, false)), vec4<bool>(var_0.d, var_0.d & true, true, false), _wgslsmith_f_op_f32(min(var_0.e.x, var_0.b)) != _wgslsmith_f_op_f32(var_0.e.x - var_0.b)), vec4<bool>(all(vec2<bool>(var_0.d, var_0.d)) | true, true, var_0.d, !all(vec4<bool>(var_0.d, true, true, var_0.d))), var_0.d || func_3(Struct_3(0u), vec3<f32>(568f, -869f, var_0.b), select(vec3<u32>(u_input.a, arg_0.x, 55395u), vec3<u32>(arg_0.x, 26405u, 56708u), vec3<bool>(false, var_0.d, true)))), false);
    let var_2 = Struct_3(u_input.a);
    var var_3 = Struct_1(firstLeadingBit(~_wgslsmith_div_i32(var_0.c, select(552i, -33205i, var_0.d))), var_0.e.x, countOneBits(-6061i), var_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(543f, var_0.b))), _wgslsmith_f_op_f32(max(-451f, var_0.b)))));
    let var_4 = vec3<bool>(var_1.x, true, true);
    return Struct_3(_wgslsmith_sub_u32(u_input.b.x, var_2.a));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_3 {
    var var_0 = func_2(vec2<u32>(arg_1, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.b), vec3<u32>(4294967295u, arg_1, 20198u) ^ vec3<u32>(58315u, 1u, arg_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_1, u_input.b.x), u_input.b, u_input.b)), abs(~u_input.b))));
    let var_1 = ~abs(u_input.b);
    var var_2 = -(~(~vec3<i32>(_wgslsmith_div_i32(-1i, 28004i), -23486i, abs(2147483647i))));
    let var_3 = _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(1f, arg_0)));
    let var_4 = reverseBits(reverseBits(vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(var_2.x, var_2.x)), firstLeadingBit(33725i << (arg_1 % 32u)), -abs(15959i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -24756i, 2147483647i), vec3<i32>(-2147483647i, var_2.x, 1i))))));
    return Struct_3(max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.b, var_1), _wgslsmith_div_vec3_u32(firstTrailingBit(var_1), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 66412u, 56078u), vec3<u32>(4294967295u, var_1.x, u_input.b.x)))), var_0.a));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> StorageBuffer {
    let var_0 = !all(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))));
    let var_1 = -abs(1i);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(406f - 220f), 1610f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(313f + -496f)))), true))));
    return StorageBuffer(229f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, true);
    let x = u_input.a;
    s_output = func_4(func_1(803f, countOneBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), u_input.a | u_input.b.x)), var_0.x), 1u, _wgslsmith_mult_vec4_u32(min(vec4<u32>(113547u, u_input.a, 53093u, u_input.b.x) | vec4<u32>(u_input.a, 1u, u_input.b.x, u_input.a), min(vec4<u32>(37762u, 26701u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 8738u, 14428u, 4294967295u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 34528u, 1u, u_input.a), vec4<u32>(4294967295u, u_input.b.x, 1969u, u_input.a))) | ~(abs(vec4<u32>(42186u, 0u, u_input.a, 1u)) & ~vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u)));
}

