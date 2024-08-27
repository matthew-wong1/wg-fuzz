struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -1055f, arg_1) * vec4<f32>(arg_3.b.x, 347f, -378f, arg_1))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.b.x, arg_1, arg_1, arg_1), vec4<f32>(arg_1, arg_3.b.x, -1184f, arg_3.b.x), vec4<bool>(arg_3.c, true, arg_3.d.x, arg_3.d.x)))))))), !(!vec4<bool>(arg_3.d.x, !arg_3.c, all(vec3<bool>(true, true, arg_3.c)), false || arg_3.d.x)), all(select(!(!vec4<bool>(true, true, arg_3.d.x, arg_3.d.x)), arg_3.d, false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_1, arg_1, 1000f))))))), !vec3<bool>(arg_3.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, arg_0, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x)) > firstLeadingBit(u_input.a.x), !(0u != arg_2.x)));
    var var_1 = vec3<u32>(arg_3.a.x, 4294967295u, reverseBits(6163u & (reverseBits(arg_3.a.x) ^ arg_3.a.x)));
    var_1 = vec3<u32>(arg_2.x, ~(~abs(abs(0u))), reverseBits(abs(var_1.x)));
    var var_2 = Struct_2(var_0.d, select(vec4<bool>(arg_0 == -u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, 0i, -2147483647i), vec4<i32>(2147483647i, -60841i, 31876i, -1i)) >= 15541i, !any(vec2<bool>(arg_3.c, arg_3.d.x)), !(!var_0.b.x)), !select(!var_0.b, select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.b.x, arg_3.d.x, var_0.c, var_0.e.x), arg_3.c), var_0.b), vec4<bool>(!all(vec2<bool>(arg_3.c, true)), true, arg_3.c, all(vec4<bool>(arg_3.d.x, false, false, arg_3.d.x)) | var_0.c)), arg_3.d.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-642f)))), arg_1, -882f, _wgslsmith_f_op_f32(step(var_0.d.x, -1000f))) * var_0.a), arg_3.d.xxz);
    var var_3 = Struct_3(var_0);
    return reverseBits(u_input.b.zwx);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(select(-197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f - arg_2.b.x) * 1f), arg_3.c)), _wgslsmith_f_op_f32(round(364f)), arg_3.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) - 451f), -524f))), arg_2.d, !all(select(!arg_2.d, select(arg_3.d, arg_3.d, arg_2.d), any(arg_2.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(sign(arg_3.b.x)), _wgslsmith_f_op_f32(216f + arg_3.b.x), 143f))), !vec3<bool>(!all(vec3<bool>(true, arg_3.d.x, arg_3.c)), all(!vec3<bool>(true, arg_3.c, arg_3.d.x)), arg_2.d.x));
    let var_1 = Struct_3(Struct_2(var_0.a, !select(vec4<bool>(false, arg_0, arg_2.c, false), arg_2.d, arg_2.d), arg_2.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, 1154f, 1000f, 1708f)), vec4<f32>(_wgslsmith_f_op_f32(-311f * 926f), arg_2.b.x, _wgslsmith_div_f32(-1000f, arg_3.b.x), _wgslsmith_f_op_f32(arg_2.b.x * var_0.d.x)))), select(vec3<bool>(arg_0, arg_2.c, !arg_2.c), var_0.b.xxy, !(u_input.a.x != -22680i))));
    var var_2 = (i32(-1i) * -14442i) << (arg_3.a.x % 32u);
    var_2 = -_wgslsmith_dot_vec4_i32(arg_1, arg_1);
    var var_3 = -224f;
    return !(_wgslsmith_dot_vec4_i32(-max(arg_1, arg_1), min(countOneBits(arg_1), -arg_1)) < 2147483647i);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = any(vec2<bool>(all(vec3<bool>(arg_2, select(true, false, arg_3.c), true)), (_wgslsmith_mod_u32(47664u, u_input.b.x) < ~arg_1) != !arg_0.x));
    var var_1 = Struct_2(arg_3.d, vec4<bool>(arg_2, any(vec3<bool>(true, true, false)), !arg_0.x, all(!select(vec4<bool>(arg_0.x, arg_3.e.x, arg_2, arg_2), vec4<bool>(arg_2, arg_3.e.x, true, arg_3.b.x), arg_0.x))), func_4(false, -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -8448i), Struct_1(func_3(u_input.a.x, arg_3.a.x, vec3<u32>(u_input.b.x, 0u, 1u), Struct_1(u_input.b.zzy, arg_3.a.yw, true, vec4<bool>(arg_2, false, arg_0.x, arg_0.x))) & u_input.b.xxy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(2932f, arg_3.d.x) - arg_3.a.ww))), false && arg_2, !select(arg_0, arg_0, false)), Struct_1(~(~vec3<u32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(sign(arg_3.d.ww)), false, vec4<bool>(arg_3.a.x < arg_3.d.x, u_input.a.x < u_input.a.x, true, arg_0.x | arg_3.e.x))), arg_3.d, arg_3.b.zyw);
    var var_2 = !arg_0.x;
    var var_3 = vec3<f32>(arg_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_4 = arg_3;
    return _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-21997i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | 29182i, -u_input.a.x), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(~(~u_input.a.xz), ~_wgslsmith_clamp_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, 79609i), vec2<i32>(u_input.a.x, -28961i))), vec2<i32>(_wgslsmith_add_i32(~2147483647i, select(18324i, -2147483647i, false)), 1i >> (func_3(-36264i, var_1.a.x, u_input.b.yyy, Struct_1(vec3<u32>(arg_1, 1u, u_input.b.x), vec2<f32>(arg_3.d.x, var_3.x), true, vec4<bool>(true, true, true, arg_2))).x % 32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(firstLeadingBit(u_input.a.x), -10458i);
    var_0 = select(reverseBits(_wgslsmith_mod_vec2_i32(func_2(vec4<bool>(false, true, true, true), 29503u, true, Struct_2(vec4<f32>(195f, -923f, 1000f, -598f), vec4<bool>(false, true, false, true), false, vec4<f32>(1976f, 2214f, 461f, 1000f), vec3<bool>(false, false, false))) | -u_input.a.zy, vec2<i32>(u_input.a.x, ~var_0.x))), u_input.a.zz, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(768f - -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -629f) * 188f), _wgslsmith_f_op_f32(abs(-863f)))));
    var var_2 = Struct_1(min(vec3<u32>(~u_input.b.x ^ 46845u, 0u, u_input.b.x & _wgslsmith_sub_u32(113003u, u_input.b.x)), reverseBits(vec3<u32>(~u_input.b.x, min(18167u, 15157u), u_input.b.x))), _wgslsmith_f_op_vec2_f32(-var_1.yx), false, !select(vec4<bool>(-1000f != var_1.x, true, any(vec2<bool>(true, false)), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1238f), _wgslsmith_div_f32(_wgslsmith_div_f32(-583f, -2094f), var_2.b.x)) * var_2.b) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b)));
    return Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(max(var_2.b, _wgslsmith_f_op_vec2_f32(var_2.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b))))), any(var_2.d.zz), vec4<bool>(true, var_2.c, var_2.c, var_2.c));
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = vec2<bool>(false, !arg_0.d.x);
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x), _wgslsmith_f_op_f32(exp2(arg_0.b.x))))), select(func_1().d, vec4<bool>(arg_0.d.x, !arg_0.d.x, var_0.x, any(vec2<bool>(arg_0.d.x, arg_0.c))), var_0.x), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -698f, -291f, -1253f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.x, arg_0.b.x, -1194f, -122f), _wgslsmith_div_vec4_f32(vec4<f32>(-910f, arg_0.b.x, arg_0.b.x, 1735f), vec4<f32>(arg_0.b.x, arg_0.b.x, -1000f, arg_0.b.x))))), !vec3<bool>(true, !var_0.x, true)));
    var_1 = Struct_3(var_1.a);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.a + var_1.a.a) + var_1.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, var_1.a.a.x)), true || var_0.x)), !vec4<bool>(true, true, arg_0.b.x < arg_0.b.x, var_0.x), arg_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1291f, arg_0.b.x, arg_0.b.x, 101f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1320f, var_1.a.a.x, 1249f, 1221f))))) * var_1.a.a), select(select(vec3<bool>(arg_0.d.x, false, true), func_1().d.xyy, arg_0.c), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !var_1.a.b.yyz, var_0.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(var_1.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a.a, var_1.a.d, var_1.a.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1056f, arg_0.b.x, -857f, -831f) * _wgslsmith_f_op_vec4_f32(select(var_1.a.a, var_2.a.a, vec4<bool>(var_1.a.c, false, false, arg_0.c))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.d + var_1.a.d))))));
    return _wgslsmith_f_op_vec4_f32(-var_1.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(abs(u_input.b.x << (u_input.b.x % 32u)));
    let var_1 = u_input.b.xz << ((~u_input.b.xx & u_input.b.zx) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_1()))));
    let var_3 = vec2<i32>(u_input.a.x, func_2(vec4<bool>(true, all(vec2<bool>(true, true)), false, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), _wgslsmith_clamp_u32(0u, ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), firstLeadingBit(u_input.b.x)), true, Struct_2(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(u_input.b.wxx, var_2.zz, true, vec4<bool>(false, true, true, true)))), vec4<bool>(true, true, true, u_input.a.x >= u_input.a.x), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))), vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(f32(-1f) * -2185f), _wgslsmith_f_op_f32(-var_2.x)), vec3<bool>(true, 72082u <= var_1.x, any(vec3<bool>(true, false, false))))).x);
    var_0 = 1596u;
    var_0 = _wgslsmith_dot_vec2_u32(~((vec2<u32>(u_input.b.x, u_input.b.x) ^ vec2<u32>(u_input.b.x, 0u)) ^ (select(u_input.b.wy, vec2<u32>(var_1.x, var_1.x), vec2<bool>(true, true)) ^ (vec2<u32>(1u, 0u) | u_input.b.yx))), var_1);
    var_0 = var_1.x;
    var var_4 = _wgslsmith_add_i32(var_3.x, ~1i);
    var var_5 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) * _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 818f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-2895f, var_2.x)))), _wgslsmith_f_op_f32(trunc(var_2.x))), !vec4<bool>(true, -1558f <= var_2.x, all(vec4<bool>(true, true, false, false)), all(vec3<bool>(true, false, false))), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(910f, func_1().b.x, -351f, 1f)), !(!func_1().d.wxz)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b.xzx << (u_input.b.xzx % vec3<u32>(32u)), vec3<u32>(~firstLeadingBit(8252u), func_1().a.x, ~_wgslsmith_mod_u32(0u, u_input.b.x)), select(var_5.a.e, !select(vec3<bool>(var_5.a.e.x, true, var_5.a.e.x), vec3<bool>(var_5.a.e.x, var_5.a.e.x, var_5.a.c), vec3<bool>(var_5.a.c, false, true)), var_5.a.c)), ~_wgslsmith_clamp_vec2_u32(u_input.b.ww, u_input.b.yw, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 48518u), u_input.b.ww) << (~var_1 % vec2<u32>(32u))), var_1.x, var_2.x, (min(_wgslsmith_add_i32(u_input.a.x, 1i), -u_input.a.x) >> (abs(abs(var_1.x)) % 32u)) & (~(~32991i) ^ var_3.x));
}

