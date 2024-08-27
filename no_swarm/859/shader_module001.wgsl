struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    return _wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, select(_wgslsmith_mult_u32(u_input.c, u_input.c), 0u, true), u_input.d.x), max(~(~select(u_input.a.x, u_input.d.x, true)), _wgslsmith_sub_u32(u_input.d.x, select(4294967295u, 20501u, true))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_u32(~u_input.d.yy, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.c)), max(u_input.d.zy, vec2<u32>(u_input.a.x, 92074u))), u_input.a), vec2<u32>(~u_input.c, ~(~u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1588f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))));
    var var_2 = u_input.d;
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, var_1.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_1.x, 336f)))), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(ceil(395f)))), Struct_2(vec3<u32>(0u, func_3(), var_0.x), !arg_0, _wgslsmith_sub_vec3_i32(vec3<i32>(-12602i, u_input.b.x, _wgslsmith_sub_i32(-9854i, 62132i)), vec3<i32>(23686i, u_input.b.x, -92218i) >> (select(vec3<u32>(1u, 1u, var_0.x), vec3<u32>(var_2.x, 0u, 85279u), arg_0) % vec3<u32>(32u))), -1909f, Struct_1(select(vec2<bool>(false, arg_0), vec2<bool>(false, true), true))), vec4<bool>(!any(vec3<bool>(true, true, true)), !arg_0, ~_wgslsmith_add_u32(604u, u_input.c) < ~_wgslsmith_add_u32(0u, u_input.c), false), any(!(!vec4<bool>(arg_0, true, arg_0, arg_0))) & true, select(!select(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, false, true)), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0)), !(!vec3<bool>(arg_0, false, true)), vec3<bool>(false, false, !arg_0)));
    var var_4 = vec4<f32>(-827f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(198f, -132f))))), 1872f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2085f))), -1510f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.d + var_1.x), _wgslsmith_div_f32(var_3.b.d, 487f)))) + -572f));
    return 980f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = 188f;
    var var_1 = countOneBits(countOneBits(vec4<i32>(-arg_1.b, 28457i, _wgslsmith_div_i32(u_input.b.x, arg_0.c.x), arg_0.c.x)) ^ vec4<i32>(0i, 0i, 53824i, i32(-1i) * -arg_0.c.x));
    let var_2 = _wgslsmith_f_op_f32(step(482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.x)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-984f, _wgslsmith_f_op_f32(abs(666f))))))));
    var_1 = vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(33677i, 1i) << (arg_2.xx % vec2<u32>(32u)), vec2<i32>(0i, var_1.x)), arg_1.b >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(13115u, arg_0.a.x), 1u) % 32u)), arg_0.c.x, arg_0.c.x, ~arg_0.c.x);
    var var_3 = arg_1.c.x;
    return Struct_1(arg_0.e.a);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_add_u32(~(~u_input.c), 20199u)), ~(~(~u_input.a.x ^ ~15330u)));
    let var_1 = ~vec3<i32>(-2147483647i, -countOneBits(u_input.b.x), firstTrailingBit(u_input.b.x));
    var_0 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(6239u, 0u) ^ ~firstTrailingBit(vec2<u32>(30998u, u_input.d.x))), ~u_input.d.zx);
    let var_2 = _wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f), -1000f), _wgslsmith_div_f32(-2814f, -1049f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-499f)), _wgslsmith_f_op_f32(max(-610f, -1140f)))))));
    var var_3 = u_input.d.zyz;
    return func_4(Struct_2(_wgslsmith_sub_vec3_u32(u_input.d.zxw, u_input.d.wxx & (vec3<u32>(var_3.x, var_3.x, 19010u) >> (vec3<u32>(var_0.x, 0u, 71500u) % vec3<u32>(32u)))), true, var_1, var_2, Struct_1(vec2<bool>(true, arg_0))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(arg_0, vec2<f32>(182f, -1651f))), var_2, _wgslsmith_f_op_f32(floor(829f)))), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), vec2<f32>(var_2, var_2)))), ~select(u_input.d.ywz, ~(~u_input.d.yxw), vec3<bool>(false, !arg_0, false)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = ((select(vec4<i32>(u_input.b.x, 64896i, 1i, u_input.b.x) & vec4<i32>(u_input.b.x, -29818i, 7213i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, 0i, 1i), select(vec4<bool>(false, arg_0.a.x, true, false), vec4<bool>(false, false, false, true), arg_0.a.x)) ^ firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(-4857i, 1i, 2147483647i, u_input.b.x)))) ^ _wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x)), -vec4<i32>(-1i, 1i, 17i, u_input.b.x))) | ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 18685i, u_input.b.x), vec3<i32>(u_input.b.x, 53355i, 2147483647i))), u_input.b.x, -2147483647i, -u_input.b.x);
    let var_1 = (u_input.b.x ^ -2905i) < 24033i;
    return firstTrailingBit(_wgslsmith_sub_i32(var_0.x, min(i32(-1i) * -u_input.b.x, i32(-1i) * -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(175f, -597f, 1000f) + vec3<f32>(-1560f, -983f, 1103f)), vec3<f32>(131f, 970f, 1000f)))))), u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_f_op_f32(1209f * -1333f))))));
    var var_1 = select(vec2<bool>(~(-1i) != func_5(func_1(true), true, _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x)), select(!(u_input.b.x <= var_0.b), true, select(true, var_0.a.x < 1672f, true))), vec2<bool>(true, true), func_4(Struct_2(u_input.d.xzx, all(vec3<bool>(false, true, true)) | select(false, true, false), vec3<i32>(-8656i, -5266i, firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.a.x)))), func_4(Struct_2(u_input.d.zzz, true, vec3<i32>(40032i, -2147483647i, 3126i), 718f, Struct_1(vec2<bool>(true, false))), Struct_3(vec3<f32>(var_0.a.x, -867f, var_0.c.x), u_input.b.x, vec2<f32>(879f, 457f)), vec3<u32>(u_input.d.x, 36929u, u_input.a.x))), Struct_3(var_0.a, 33222i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-860f, var_0.a.x))), u_input.d.xww).a);
    var_1 = !(!vec2<bool>(any(!vec4<bool>(true, true, var_1.x, false)), _wgslsmith_f_op_f32(ceil(var_0.c.x)) == -1240f));
    let var_2 = vec4<bool>(any(vec3<bool>(true && !var_1.x, !any(vec4<bool>(false, true, var_1.x, var_1.x)), any(vec4<bool>(true, true, var_1.x, var_1.x)))), select(-45236i != (-var_0.b << (72511u % 32u)), true, var_1.x), !var_1.x, func_4(Struct_2(vec3<u32>(u_input.a.x, abs(u_input.c), 31860u), false, vec3<i32>(-1i) * -vec3<i32>(var_0.b, var_0.b, u_input.b.x), -266f, func_4(Struct_2(vec3<u32>(7495u, 1u, 27121u), false, vec3<i32>(var_0.b, u_input.b.x, -14775i), 1000f, Struct_1(vec2<bool>(false, var_1.x))), Struct_3(var_0.a, var_0.b, vec2<f32>(704f, var_0.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(4901u, u_input.c, 90218u), vec3<u32>(u_input.d.x, u_input.c, 3477u)))), Struct_3(var_0.a, ~min(0i, u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_0.a.x), var_0.c) + var_0.a.yy)), ~(~(~u_input.d.xwz))).a.x);
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.c.x) + vec3<f32>(var_0.a.x, 1000f, 2167f)))))), -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, -1000f) * vec2<f32>(var_0.a.x, var_0.c.x))));
    var_1 = vec2<bool>(any(select(!vec3<bool>(false, var_2.x, false), var_2.zww, select(var_2.wxz, select(vec3<bool>(var_1.x, true, var_1.x), var_2.zww, false), !var_1.x))), true);
    var_1 = var_2.zw;
    let x = u_input.a;
    s_output = StorageBuffer(59932u);
}

