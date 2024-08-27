struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = -1170f;
    return firstLeadingBit(~(vec4<i32>(~u_input.d, _wgslsmith_dot_vec3_i32(arg_3.c, arg_2.c), -32141i, i32(-1i) * -8562i) ^ ~(vec4<i32>(arg_0.c.x, arg_0.c.x, arg_2.c.x, -2147483647i) & vec4<i32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, -22486i))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_2(all(arg_0.b), 52104u, vec3<i32>(1i, u_input.b, firstLeadingBit(~arg_0.a.c.c.x)), vec2<u32>(_wgslsmith_add_u32(4294967295u, max(arg_1.x, _wgslsmith_add_u32(arg_1.x, 0u))), reverseBits(arg_0.c.x)), all(vec2<bool>(false, arg_2 & arg_0.b.x)) == true);
    let var_1 = _wgslsmith_add_vec3_u32(arg_0.c, abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.c.x, arg_0.c.x, var_0.b), _wgslsmith_div_vec3_u32(firstLeadingBit(arg_0.c), arg_0.c))));
    let var_2 = arg_0;
    var var_3 = abs(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(func_1(Struct_2(arg_2, 4294967295u, var_2.a.c.c, arg_1, var_2.a.c.e), arg_1.x, var_2.a.c, Struct_1(vec4<bool>(false, false, arg_0.a.c.a, arg_0.b.x), -6445i, var_2.a.c.c)), vec4<i32>(u_input.b, 1i, -1i, -1i) & vec4<i32>(u_input.d, -2147483647i, -1i, -2147483647i)) << (vec4<u32>(var_1.x, arg_0.a.a, 1u, 4294967295u) % vec4<u32>(32u)), ~(~vec4<i32>(71527i, arg_0.a.c.c.x, -2147483647i, -3207i))));
    var var_4 = Struct_2(arg_2, 1u, var_2.a.c.c, var_0.d, var_2.a.c.e);
    return select(arg_0.b.yx, select(select(select(select(vec2<bool>(var_0.a, var_2.b.x), arg_0.b.zy, vec2<bool>(arg_2, var_0.a)), vec2<bool>(true, false), select(var_2.b.xx, var_2.b.yz, arg_0.b.xx)), vec2<bool>(arg_2, !arg_2), !(!var_2.b.x)), select(select(!arg_0.b.zz, vec2<bool>(var_4.e, true), select(vec2<bool>(true, var_0.a), var_2.b.xy, true)), !(!var_2.b.zz), arg_0.b.yy), arg_0.b.x && arg_2), !select(select(select(vec2<bool>(true, true), vec2<bool>(false, var_4.e), true), vec2<bool>(arg_0.a.c.e, true), all(vec4<bool>(var_2.a.c.e, var_0.a, true, arg_2))), select(!vec2<bool>(var_0.a, false), select(vec2<bool>(arg_2, arg_0.a.c.e), arg_0.b.zx, arg_0.b.zz), var_4.e), var_4.e));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    var var_0 = select(!func_3(Struct_4(Struct_3(35975u, arg_0.b, Struct_2(arg_0.c.e, 26613u, arg_3.zxy, vec2<u32>(arg_0.c.b, arg_0.a), arg_0.c.a)), !vec3<bool>(arg_0.c.a, arg_0.c.e, arg_0.c.e), _wgslsmith_clamp_vec3_u32(arg_1.xxw, arg_1.yyy, vec3<u32>(arg_2, arg_2, 1532u))), vec2<u32>(_wgslsmith_mult_u32(arg_0.a, arg_1.x), 45674u), any(select(vec3<bool>(arg_0.c.a, arg_0.c.e, true), vec3<bool>(arg_0.c.e, arg_0.c.e, false), vec3<bool>(true, false, false)))), !(!select(func_3(Struct_4(arg_0, vec3<bool>(arg_0.c.e, true, true), vec3<u32>(1u, 21265u, 71507u)), arg_1.yz, arg_0.c.e), vec2<bool>(true, arg_0.c.e), arg_0.c.e)), func_3(Struct_4(Struct_3(4294967295u, _wgslsmith_f_op_vec4_f32(-arg_0.b), arg_0.c), vec3<bool>(true, true, false), ~(~arg_1.yxw)), ~_wgslsmith_sub_vec2_u32(~arg_1.yx, ~arg_0.c.d), true));
    let var_1 = 66581u;
    var var_2 = select(!vec4<bool>(func_3(Struct_4(Struct_3(4294967295u, vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.c), vec3<bool>(true, false, arg_0.c.e), vec3<u32>(1u, 4294967295u, 0u)), arg_1.yz, any(vec3<bool>(arg_0.c.a, true, var_0.x))).x, !(arg_0.b.x < 1482f), any(select(vec4<bool>(arg_0.c.e, false, arg_0.c.a, var_0.x), vec4<bool>(true, arg_0.c.e, var_0.x, arg_0.c.e), true)), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b) < 9359i), vec4<bool>((_wgslsmith_f_op_f32(-arg_0.b.x) < -1044f) & func_3(Struct_4(arg_0, vec3<bool>(arg_0.c.e, arg_0.c.a, var_0.x), vec3<u32>(arg_1.x, 0u, arg_0.c.d.x)), u_input.e, true).x, all(!vec2<bool>(arg_0.c.a, var_0.x)), true, all(!(!vec4<bool>(false, var_0.x, arg_0.c.a, arg_0.c.a)))), vec4<bool>(!any(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0.c.a)), all(!vec4<bool>(arg_0.c.a, false, arg_0.c.a, arg_0.c.e)), var_0.x, !var_0.x));
    let var_3 = _wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(arg_3.x, 53412i) | (-1i >> (arg_2 % 32u)), -(~34289i), -arg_0.c.c.x), abs(vec3<i32>(_wgslsmith_mult_i32(u_input.a, ~1i), ~arg_3.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 52489i, arg_0.c.c.x), arg_3.yyz)))));
    var var_4 = ~abs(1u) < arg_2;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(792f - -389f), _wgslsmith_f_op_f32(1000f + -1577f)))), _wgslsmith_f_op_f32(-1310f + _wgslsmith_f_op_f32(f32(-1f) * -134f)))));
    let var_1 = !(u_input.e.x > ~func_2(Struct_3(u_input.e.x, vec4<f32>(var_0.x, 1687f, -648f, var_0.x), Struct_2(true, u_input.e.x, vec3<i32>(u_input.d, u_input.a, 11140i), vec2<u32>(u_input.e.x, 43648u), false)), ~vec4<u32>(u_input.e.x, u_input.c, 0u, u_input.c), 115048u, func_1(Struct_2(false, 1u, vec3<i32>(u_input.a, -8122i, u_input.a), u_input.e, true), 79462u, Struct_2(true, 0u, vec3<i32>(-1i, u_input.a, 25962i), u_input.e, true), Struct_1(vec4<bool>(true, false, true, false), u_input.b, vec3<i32>(u_input.d, -23667i, u_input.d)))));
    let var_2 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-387f)))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-1000f * -1355f))), _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(abs(-348f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(256f, var_2), vec2<f32>(var_2, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, -1522f), vec2<f32>(var_0.x, var_0.x), vec2<bool>(var_1, var_1))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 602f) * vec2<f32>(var_0.x, var_2))), vec2<f32>(-457f, _wgslsmith_f_op_f32(trunc(var_0.x))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1710f, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -212f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-269f, -288f), vec2<f32>(var_0.x, var_2))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, -1215f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(869f, 867f))), vec2<bool>(false, false))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_2)))) + vec2<f32>(-410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + var_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, var_0.x)));
    var var_3 = Struct_4(Struct_3(4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 591f, var_2, 188f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(215f, -446f, 1973f, 374f), vec4<f32>(-302f, var_0.x, -599f, -1066f), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -304f, -471f, -753f) * vec4<f32>(var_0.x, var_2, -454f, 1028f))))), Struct_2(!(var_2 == -806f), _wgslsmith_div_u32(min(26139u, 0u), u_input.c), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 18964i, u_input.b), vec3<i32>(u_input.a, u_input.a, u_input.b)), vec3<i32>(2147483647i, u_input.a, u_input.b)), u_input.e, !(!var_1))), !vec3<bool>(false, any(select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(var_1, var_1, true, false), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(select(var_2, -158f, true)) == _wgslsmith_f_op_f32(exp2(var_0.x))), min(_wgslsmith_mod_vec3_u32(firstTrailingBit(countOneBits(vec3<u32>(u_input.c, u_input.e.x, u_input.e.x))), firstTrailingBit(~vec3<u32>(u_input.c, 39315u, 25164u))), vec3<u32>(u_input.c ^ 4294967295u, firstTrailingBit(0u), _wgslsmith_add_u32(4294967295u, 0u)) >> (reverseBits(~vec3<u32>(28629u, 76671u, 0u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_2(var_1, _wgslsmith_clamp_u32(4294967295u, abs(u_input.c), firstTrailingBit(u_input.c)), _wgslsmith_sub_vec3_i32(min(vec3<i32>(2147483647i, 32130i, u_input.b), var_3.a.c.c), select(vec3<i32>(-1i, var_3.a.c.c.x, var_3.a.c.c.x), var_3.a.c.c, var_3.b.x)), ~u_input.e | ~vec2<u32>(1u, 2218u), var_3.a.c.c.x > 38446i), func_2(var_3.a, vec4<u32>(4294967295u ^ u_input.e.x, ~5578u, ~var_3.c.x, ~u_input.c), countOneBits(0u) & (var_3.c.x | 37853u), min(func_1(Struct_2(var_1, var_3.a.a, var_3.a.c.c, u_input.e, var_3.b.x), var_3.c.x, var_3.a.c, Struct_1(vec4<bool>(false, var_1, false, var_3.b.x), u_input.b, vec3<i32>(var_3.a.c.c.x, var_3.a.c.c.x, u_input.d))), ~vec4<i32>(-29256i, -39431i, -1i, -1i))), Struct_2(true, 1u ^ _wgslsmith_add_u32(var_3.c.x, 1u), vec3<i32>(u_input.a, min(-1i, -1i), var_3.a.c.c.x), firstTrailingBit(vec2<u32>(0u, 1u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))), false), Struct_1(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, var_1, var_1)), vec4<bool>(true, true, true, true), all(var_3.b)), var_3.a.c.c.x, var_3.a.c.c)), u_input.b, ~u_input.a, _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, var_3.a.a), vec3<u32>(u_input.c, 1u, u_input.e.x), var_3.c), var_3.c), -max(vec4<i32>(1i, -2147483647i, 1i, -47060i), -(~vec4<i32>(0i, var_3.a.c.c.x, 1i, -9429i))));
}

