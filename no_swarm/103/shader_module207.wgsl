struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2)), 675f));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(~abs(u_input.c.yyy), u_input.c.yyx), ~81694u & _wgslsmith_dot_vec3_u32(~(~u_input.c.wxz), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.d, 4294967295u, u_input.c.x), vec3<u32>(0u, u_input.d, 1u), arg_1.x), vec3<u32>(u_input.d, 7952u, u_input.c.x))), u_input.c.x << (~(~1u) % 32u), u_input.a << (u_input.b.x % 32u));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(sign(-877f)))));
    let var_3 = select(arg_1.zz, vec2<bool>(false || arg_1.x, any(vec3<bool>(arg_1.x, any(vec2<bool>(arg_1.x, arg_1.x)), !arg_1.x))), arg_1.zy);
    return (vec4<i32>(-1i) * -abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.e, 1i, 1i), vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e)))) | ~abs(-vec4<i32>(7223i, u_input.e, u_input.e, u_input.e));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_4(!arg_3, select(!vec2<bool>(!arg_3, any(vec4<bool>(arg_3, true, arg_3, true))), !select(!vec2<bool>(arg_3, true), !vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3)), true), u_input.b.ywx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1039f, -720f, 763f, 712f), vec4<f32>(177f, -454f, -283f, 1396f))), vec4<f32>(670f, -1375f, 594f, -830f))))), _wgslsmith_add_i32(i32(-1i) * -37516i, -4898i) <= _wgslsmith_dot_vec2_i32(select(arg_2.xw, arg_2.yw << (vec2<u32>(38844u, 4294967295u) % vec2<u32>(32u)), select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, true), vec2<bool>(true, arg_3))), ~(-arg_2.zx)));
    var var_1 = vec4<bool>(!(arg_3 & any(vec3<bool>(false, arg_3, false))) && (var_0.e | !(u_input.e <= arg_2.x)), true, !var_0.e || !arg_3, true);
    var_1 = !select(vec4<bool>(true, arg_3, arg_3, var_1.x), vec4<bool>(var_1.x, false, select(true, !var_0.e, any(vec4<bool>(true, var_1.x, false, var_1.x))), var_0.b.x), vec4<bool>(true, !var_1.x, any(vec3<bool>(var_0.b.x, false, var_1.x)), !select(arg_3, true, true)));
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~arg_2.x, _wgslsmith_div_i32(~u_input.e, u_input.e), _wgslsmith_mod_i32(1i, u_input.e), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.e)), arg_2, -select(min(vec4<i32>(u_input.e, arg_2.x, 0i, -17434i), vec4<i32>(arg_2.x, -2147483647i, 41758i, -24024i)), abs(arg_2), false)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -34864i, abs(u_input.e), min(1i, 0i)), firstLeadingBit(vec4<i32>(1i, arg_2.x, 22954i, arg_2.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(44048u, 109940u, 0u, arg_1.x), u_input.c) % vec4<u32>(32u))), -max(arg_2, arg_2)));
    var_1 = select(select(vec4<bool>(true, any(vec3<bool>(var_0.e, var_0.a, true)), !(arg_1.x < var_0.c.x), false), vec4<bool>(true, var_1.x, false, var_0.b.x), (any(var_1.ywx) | true) || any(vec4<bool>(var_0.b.x, true, var_0.b.x, false))), select(vec4<bool>(true, arg_3 & (var_0.a && false), false, !all(var_0.b)), select(vec4<bool>(true, true, u_input.e >= var_2.x, true), !(!vec4<bool>(true, arg_3, true, var_1.x)), !(!vec4<bool>(arg_3, false, true, var_0.b.x))), !select(!vec4<bool>(false, var_1.x, true, arg_3), vec4<bool>(var_1.x, arg_3, true, var_1.x), true)), select(select(!vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_0.b.x, false, all(vec2<bool>(arg_3, true)), 4294967295u != arg_1.x), !arg_3), !vec4<bool>(true, all(var_1.zwz), arg_3, var_1.x), var_1.x));
    return var_1.yzx;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = func_4(arg_1.c.zy, max(select(vec4<u32>(arg_1.c.x, u_input.c.x, arg_3.e.d.x, 15302u), arg_3.e.d, false & arg_0.x), _wgslsmith_mult_vec4_u32(arg_3.e.d, arg_3.e.d)) | _wgslsmith_sub_vec4_u32(firstTrailingBit(~arg_3.e.d), u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, countOneBits(arg_2), select(_wgslsmith_mult_i32(1i, arg_2), select(-17706i, -5897i, arg_1.b.x), arg_1.e), arg_3.e.e.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, u_input.e, 0i, arg_3.e.e.x), func_3(_wgslsmith_f_op_vec3_f32(-arg_3.e.b.zyz), select(vec4<bool>(true, true, arg_3.a, false), vec4<bool>(false, arg_3.e.c.x, arg_0.x, false), vec4<bool>(arg_1.b.x, false, true, false)), 420f))), true);
    var var_1 = 1i;
    return select(select(select(vec3<bool>(arg_3.e.b.x <= arg_1.d.x, true, all(vec4<bool>(arg_1.b.x, true, false, arg_1.e))), !(!var_0), !(!arg_0)), var_0, select(var_0, vec3<bool>(!var_0.x, true, arg_3.e.c.x & true), !(!arg_0.x))), var_0, select(var_0.x, true, (_wgslsmith_f_op_f32(558f * arg_1.d.x) == _wgslsmith_f_op_f32(ceil(-2109f))) & false));
}

fn func_1() -> vec3<bool> {
    let var_0 = -select(~abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -17099i, 50223i), vec3<i32>(2147483647i, -4113i, u_input.e))), ~vec3<i32>(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(-2147483647i, -17698i, 18885i)), firstTrailingBit(-41609i)), vec3<bool>(true, all(func_2(vec3<bool>(true, false, true), Struct_4(true, vec2<bool>(false, false), vec3<u32>(u_input.d, 0u, 71105u), vec4<f32>(-1383f, 138f, -347f, 192f), true), 0i, Struct_2(true, false, 12334u, vec3<f32>(544f, 650f, -2712f), Struct_1(vec2<bool>(false, true), vec4<f32>(-410f, -1000f, -763f, -635f), vec2<bool>(false, true), vec4<u32>(1u, u_input.a, u_input.a, 23086u), vec2<i32>(u_input.e, u_input.e))))), (u_input.e & u_input.e) < u_input.e));
    var var_1 = _wgslsmith_div_u32(~u_input.b.x, ~u_input.b.x);
    let var_2 = 0u;
    var var_3 = var_0.x;
    let var_4 = ~vec3<u32>(u_input.b.x | ((29105u ^ var_2) | ~u_input.d), 1u, _wgslsmith_dot_vec4_u32(min(u_input.c ^ vec4<u32>(u_input.a, 3015u, u_input.d, 0u), vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 16998u)), ~firstTrailingBit(u_input.b)));
    return vec3<bool>(any(vec4<bool>(all(vec2<bool>(false, true)), true, !(var_2 > 4294967295u), true != (1u > var_2))), false, !(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_2, 57949u), abs(var_4.x)) < u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~33158u, firstTrailingBit(u_input.b.x), ~(~u_input.d), u_input.d), u_input.c, vec4<u32>(min(108150u, ~4294967295u), 1u, max(~u_input.b.x, _wgslsmith_mod_u32(73705u, 4294967295u)) & 1u, u_input.a));
    let var_1 = i32(-1i) * -u_input.e;
    var_0 = u_input.c ^ abs(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 19553u, 14775u, 87220u), u_input.c), ~u_input.c, vec4<bool>(true, false, true, true)));
    var_0 = u_input.b;
    let var_2 = !select(!vec3<bool>(true, all(vec2<bool>(true, true)), u_input.e <= 0i), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(func_1(), vec3<bool>(true, true, true), true), false), !(select(46047u, 27550u, true) <= 0u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, var_0.x)), ~select(var_0.xyz, vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<bool>(var_2.x, var_2.x, false))), 33313u, ~110463u, firstTrailingBit(u_input.b.x ^ ~13193u)), var_1, select(select(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.e, u_input.e, var_1, var_1)), vec4<i32>(var_1, 26437i, -85239i, -1i) & vec4<i32>(0i, 0i, 2147483647i, u_input.e)), vec4<i32>(_wgslsmith_sub_i32(u_input.e, var_1), -49103i, i32(-1i) * -67463i, u_input.e), !all(vec4<bool>(var_2.x, var_2.x, false, var_2.x))), firstTrailingBit(vec4<i32>(min(-24080i, 0i), i32(-1i) * -13907i, 0i, 1i >> (u_input.a % 32u))), !var_2.x && true));
}

