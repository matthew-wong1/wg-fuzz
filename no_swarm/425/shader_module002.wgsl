struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, 1u), u_input.a.yzx);
    var var_1 = vec4<bool>(!select(true, true, true), true, all(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))))), true);
    var var_2 = Struct_1(var_1.zzz, vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-2076f)))), _wgslsmith_f_op_f32(max(761f, -664f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1509f, 1586f, arg_0) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, arg_0)))))));
    let var_3 = Struct_1(var_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b), vec4<f32>(var_2.c.x, arg_0, arg_0, 1060f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2.b * vec4<f32>(356f, -247f, var_2.b.x, -1930f))))), vec4<f32>(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_2.c.x, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.b.yzz, vec3<f32>(_wgslsmith_f_op_f32(-1175f - -340f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-var_2.b.x)))));
    let var_4 = firstLeadingBit(vec2<u32>(0u, ((var_0.x & var_0.x) | _wgslsmith_div_u32(var_0.x, 0u)) & abs(reverseBits(1u))));
    return select(vec4<bool>(!var_2.a.x, var_2.a.x, all(!var_3.a.yz), (var_2.b.x < 584f) & !any(var_1.zy)), select(select(!select(vec4<bool>(var_2.a.x, var_2.a.x, true, false), vec4<bool>(true, var_3.a.x, var_1.x, var_3.a.x), vec4<bool>(false, false, true, true)), !(!vec4<bool>(true, true, false, var_1.x)), any(select(var_1.ww, var_1.xy, var_2.a.yy))), !select(vec4<bool>(true, false, var_3.a.x, var_1.x), select(vec4<bool>(var_3.a.x, var_2.a.x, false, true), vec4<bool>(var_1.x, var_1.x, var_3.a.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_3.a.x)), vec4<bool>(false, var_1.x, var_1.x, true)), select(!vec4<bool>(var_3.a.x, var_3.a.x, var_2.a.x, false), vec4<bool>(all(vec3<bool>(false, true, var_1.x)), all(var_3.a), true, any(vec3<bool>(false, var_2.a.x, true))), select(vec4<bool>(var_1.x, var_3.a.x, var_2.a.x, true), vec4<bool>(var_2.a.x, var_2.a.x, var_3.a.x, false), !var_3.a.x))), var_2.a.x);
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = all(!select(func_3(884f), vec4<bool>(any(vec3<bool>(true, true, false)), true, func_3(345f).x, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)));
    return vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + 1654f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-632f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(399f, arg_0.x, true)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.x))))), -388f);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) + _wgslsmith_f_op_f32(sign(675f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1392f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 366f, -2625f, arg_0)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_0, arg_0, arg_0))))))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, arg_0, -747f)) * vec3<f32>(arg_0, 622f, arg_0)) + vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, 1481f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1002f * arg_0)))))));
    let var_1 = Struct_2(vec4<f32>(1338f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f), 519f)), -1000f), _wgslsmith_dot_vec2_u32(vec2<u32>(89525u, ~19691u), u_input.b.xx), (~reverseBits(u_input.c) <= u_input.c) | true, vec2<i32>(u_input.c, 0i), min(_wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(-2147483647i, 26370i), _wgslsmith_mod_i32(u_input.c, 2147483647i)), max(u_input.c, _wgslsmith_mult_i32(u_input.c, 0i))) << (_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(64698u, u_input.b.x, u_input.b.x, u_input.b.x)), ~u_input.a) % 32u));
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))) < _wgslsmith_f_op_f32(arg_0 - 1f);
    var var_4 = var_1;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(597f, 501f, 334f, 857f) - vec4<f32>(1118f, 788f, 2057f, 391f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(461f, 539f, -318f, -571f), vec4<f32>(-1191f, 107f, 378f, -550f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(1745f)), _wgslsmith_f_op_f32(f32(-1f) * -1279f), 409f, -834f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, -897f, -282f, 2381f) - vec4<f32>(509f, -132f, -1000f, 188f)) + vec4<f32>(-1000f, -156f, -710f, 347f))))), ~(u_input.b.x >> (_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(0u, u_input.b.x, 5933u)) % 32u)), !(!select(true, true, func_1(688f))), firstTrailingBit(~(~vec2<i32>(-42471i, 17401i))), -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -15587i, 2376i), vec3<i32>(0i, u_input.c, u_input.c)), min(vec3<i32>(-2147483647i, u_input.c, 1i), vec3<i32>(u_input.c, 2147483647i, u_input.c))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), countOneBits(vec2<i32>(-8728i, u_input.c)))));
    var var_1 = select(vec3<bool>(true, any(func_3(var_0.a.x)), !all(vec2<bool>(true, false))), vec3<bool>(true | var_0.c, all(vec3<bool>(true, true, true)), false), !func_3(var_0.a.x).xyz);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_vec4_f32(func_2(var_0.a.wyx)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)) * -1599f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(365f)) * _wgslsmith_f_op_f32(var_0.a.x * -295f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.a))))), (u_input.a.x << (~(~u_input.a.x) % 32u)) << (var_0.b % 32u), var_0.c, var_0.d, var_0.e ^ var_0.d.x);
    var_1 = func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.a.x)), -322f, all(var_1.zx))))))).wxz;
    let var_2 = Struct_1(vec3<bool>(false, true, true), var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.a.zyy));
    var var_3 = -(vec4<i32>(-1i) * -vec4<i32>(abs(-25361i), 26754i, ~u_input.c, _wgslsmith_div_i32(4044i, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(max(u_input.a, vec4<u32>(var_0.b, _wgslsmith_mult_u32(u_input.b.x, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, var_0.b), u_input.b.xy), ~u_input.a.x)), abs(vec4<u32>(u_input.b.x, u_input.a.x, _wgslsmith_div_u32(var_0.b, 77637u), 0u))), -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.c, var_0.d.x), i32(-1i) * -1i), var_0.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_2.b.yy, var_2.c.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_2.b.xw)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.a.wy))))));
}

