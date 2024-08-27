struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(755f, u_input.e.x, ~((vec4<u32>(1u, 1u, 0u, 99120u) & vec4<u32>(u_input.a, 13263u, u_input.a, u_input.b)) & ~vec4<u32>(1u, 1u, u_input.b, u_input.c.x))), !all(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, all(vec4<bool>(true, false, false, true)), true)), abs(vec3<u32>(u_input.b, 0u, 104738u)), Struct_1(_wgslsmith_f_op_f32(floor(419f)), arg_0.x, vec4<u32>(1u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 58867u), u_input.c)), ~(~u_input.b), abs(max(u_input.b, u_input.c.x)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d.xyx, max(u_input.d.wzy, _wgslsmith_mod_vec3_i32(u_input.d.zxx, vec3<i32>(arg_0.x, 40105i, 2147483647i)))), _wgslsmith_mod_vec3_i32(countOneBits(-u_input.d.yyy), vec3<i32>(arg_0.x, -13206i, arg_0.x))));
    var var_1 = Struct_2(Struct_1(-1486f, var_0.e, vec4<u32>(~u_input.b | 42624u, u_input.a, _wgslsmith_sub_u32(2030u, abs(var_0.a.c.x)), ~_wgslsmith_sub_u32(20698u, var_0.a.c.x))), var_0.b, var_0.d.c.zwx, var_0.d, 17924i);
    var_1 = Struct_2(var_1.d, var_1.b, abs(_wgslsmith_mult_vec3_u32(u_input.c, ~_wgslsmith_mod_vec3_u32(vec3<u32>(42086u, var_0.d.c.x, 0u), u_input.c))), var_0.d, -1i);
    return any(select(!(!vec4<bool>(var_0.b, false, true, var_0.b)), select(select(select(vec4<bool>(var_1.b, var_1.b, false, false), vec4<bool>(var_0.b, var_1.b, var_0.b, true), true), select(vec4<bool>(true, true, var_1.b, var_0.b), vec4<bool>(var_0.b, var_1.b, true, var_0.b), false), vec4<bool>(false, var_0.b, var_1.b, false)), !select(vec4<bool>(false, var_1.b, true, var_0.b), vec4<bool>(var_0.b, true, true, false), vec4<bool>(true, true, true, var_1.b)), !vec4<bool>(var_1.b, var_0.b, true, false)), var_1.b));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> vec2<bool> {
    var var_0 = select(true, all(vec2<bool>(true, true)) || true, false);
    let var_1 = vec2<bool>(true != !all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), !(!all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))));
    var_0 = any(select(select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, true, var_1.x), true), !var_1.x), select(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, true)), vec4<bool>(false, true, var_1.x, false), false != var_1.x), !(!vec4<bool>(var_1.x, var_1.x, false, false))), vec4<bool>(var_1.x, true, var_1.x, true), true && all(select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x))));
    let var_2 = func_3(-vec2<i32>(0i, u_input.e.x));
    var_0 = false;
    return !select(!var_1, select(vec2<bool>(false, true), vec2<bool>(var_2 & true, true), _wgslsmith_div_f32(-804f, arg_1) == _wgslsmith_f_op_f32(arg_1 * -757f)), var_1);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -990f) * 1f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1195f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1272f, 1498f))))), ~(-2147483647i), vec4<u32>(arg_3.x, 1u, u_input.c.x, arg_3.x) >> ((firstLeadingBit(vec4<u32>(arg_3.x, 0u, 1u, arg_3.x)) | countOneBits(vec4<u32>(0u, arg_3.x, 0u, u_input.b))) % vec4<u32>(32u))), vec3<i32>(abs(i32(-1i) * -2147483647i) & _wgslsmith_add_i32(arg_0, -4744i), -22935i, u_input.e.x));
    var var_1 = arg_3.xx;
    let var_2 = var_0.d.x << ((firstLeadingBit(var_0.c.c.x) << ((firstLeadingBit(var_0.c.c.x) >> (var_1.x % 32u)) % 32u)) % 32u);
    var_1 = ~(~vec2<u32>(15079u, ~4294967295u)) ^ u_input.c.zx;
    var_1 = vec2<u32>(_wgslsmith_sub_u32(~26518u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(24353u, 93490u, var_1.x, 1u), vec4<u32>(arg_3.x, u_input.c.x, var_1.x, 18112u)))), firstLeadingBit(countOneBits(43017u) ^ select(var_1.x, arg_3.x, true))) & u_input.c.zx;
    return false;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2287f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2114f)) - _wgslsmith_f_op_f32(ceil(719f)))))), 294f));
    return !((u_input.d.x >= -(~23359i)) | !func_4(~2147483647i, func_2(u_input.c, var_0), true, ~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-488f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-277f + -113f))) - _wgslsmith_f_op_f32(select(1000f, 1487f, func_1())))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1053f, -1629f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2400f + -1808f), -568f))), Struct_1(_wgslsmith_f_op_f32(abs(950f)), ~2147483647i, _wgslsmith_sub_vec4_u32(~vec4<u32>(86102u, 0u, u_input.c.x, u_input.c.x) | firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, 67336u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 1u), vec4<u32>(4294967295u, u_input.a, 72688u, 4294967295u)))), vec3<i32>(1i, u_input.e.x, 2147483647i >> (abs(~u_input.a) % 32u)));
    let var_1 = 1u;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(-724f, -864f))), _wgslsmith_f_op_f32(-var_0.c.a)));
    var var_3 = countOneBits(~(2147483647i ^ var_0.c.b));
    var var_4 = !all(vec2<bool>(true, true));
    var var_5 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 + var_0.a))), _wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2))))), Struct_1(-728f, ~(1857i << (~var_0.c.c.x % 32u)), ~var_0.c.c), ~abs(~var_0.d));
    var_5 = Struct_4(var_0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_5.b) - _wgslsmith_div_vec2_f32(var_5.b, var_0.b)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1628f, 1520f)), _wgslsmith_f_op_vec2_f32(trunc(var_5.b)), true))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_5.b - vec2<f32>(723f, var_0.c.a)), var_5.b), var_5.b))), Struct_1(_wgslsmith_f_op_f32(ceil(1f)), u_input.d.x, vec4<u32>(var_1, u_input.b, 12705u & _wgslsmith_clamp_u32(u_input.b, 25524u, 4727u), ~reverseBits(var_1))), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1002f)), _wgslsmith_f_op_f32(-880f - 1000f))) * var_2), var_0.b, ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(0u, u_input.b), u_input.c.zy)), firstLeadingBit(abs(vec4<i32>(-61085i, 2147483647i | var_0.d.x, var_0.d.x, _wgslsmith_sub_i32(var_5.c.b, u_input.d.x)))));
}

