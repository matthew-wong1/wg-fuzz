struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = vec4<bool>(arg_1.a, arg_1.a, !(arg_2.a & true), arg_1.a);
    var var_1 = Struct_1(abs(firstLeadingBit(max(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), vec4<u32>(36793u, 67931u, u_input.a, 48264u) & vec4<u32>(u_input.a, 4294967295u, u_input.a, 78032u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1083f, 587f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)), arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-539f, arg_0))), arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0)))))))), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, ~110984u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.a), 1u, reverseBits(18708u)), firstLeadingBit(~vec4<u32>(92393u, 1u, 0u, 3604u))), 0u), vec4<f32>(1553f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0, -928f))))), arg_0, 306f));
    var_0 = vec4<bool>(!arg_2.a, all(vec2<bool>(false, true)), true, all(select(select(var_0.zzw, select(var_0.xwz, vec3<bool>(var_0.x, false, true), false), select(vec3<bool>(arg_2.a, true, false), var_0.ywx, vec3<bool>(true, true, arg_2.a))), var_0.yzx, arg_1.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.b)));
    var var_3 = all(vec4<bool>(false, (var_1.a.x < u_input.a) && all(select(var_0.yy, var_0.yw, true)), !(~0u == max(u_input.a, 93531u)), var_0.x));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(max(arg_0, 1634f))) - arg_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_2.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-237f, -591f))))));
}

fn func_4(arg_0: vec2<f32>) -> vec4<bool> {
    let var_0 = !(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))));
    var var_1 = Struct_2(Struct_1(~((vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) & vec4<u32>(4294967295u, 4294967295u, 0u, 29687u)) ^ firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 12423u, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 508f, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, -3060f, 514f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-648f, -1000f, arg_0.x, -1064f) + vec4<f32>(arg_0.x, 2268f, arg_0.x, -1621f)), _wgslsmith_div_vec4_f32(vec4<f32>(449f, 219f, -104f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(19591u, u_input.a, u_input.a), var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1290f, 2453f, arg_0.x, arg_0.x))))), select(true, !(all(vec4<bool>(false, false, var_0.x, true)) || all(vec3<bool>(var_0.x, true, var_0.x))), var_0.x & !var_0.x));
    var_1 = Struct_2(var_1.a, select(var_0.x, !var_1.b, _wgslsmith_add_u32(var_1.a.d.x, ~u_input.a) < _wgslsmith_clamp_u32(~var_1.a.a.x, abs(1u), var_1.a.d.x << (var_1.a.d.x % 32u))));
    var var_2 = var_1.b;
    var_1 = Struct_2(var_1.a, ~2147483647i == (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 17615i) >> (vec2<u32>(u_input.a, 8317u) % vec2<u32>(32u)), ~vec2<i32>(2147483647i, -33178i)) >> (0u % 32u)));
    return select(vec4<bool>(u_input.a != 0u, var_1.b, any(vec4<bool>(true, all(vec3<bool>(var_0.x, var_1.b, var_1.b)), u_input.a > 42275u, true)), all(select(vec2<bool>(true, var_1.b), var_0.yz, var_0.yx))), select(vec4<bool>(any(!var_0), var_1.b, true, all(vec4<bool>(var_0.x, true, true, var_0.x))), select(select(vec4<bool>(true, var_0.x, var_1.b, var_0.x), select(vec4<bool>(var_0.x, var_1.b, var_1.b, true), vec4<bool>(var_1.b, true, var_0.x, true), false), select(vec4<bool>(var_1.b, false, true, false), vec4<bool>(var_0.x, var_0.x, var_1.b, false), vec4<bool>(false, var_0.x, var_1.b, var_1.b))), !vec4<bool>(true, var_1.b, var_0.x, false), !vec4<bool>(false, var_1.b, var_0.x, var_1.b)), !var_0.x), select(vec4<bool>(all(!vec4<bool>(true, var_1.b, var_0.x, true)), all(select(var_0, var_0, var_1.b)), var_1.b, !var_1.b), vec4<bool>(true, var_0.x, var_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.a.a.x, var_1.a.d.x, var_1.a.d.x), vec4<u32>(var_1.a.d.x, 1u, 77253u, u_input.a)) > _wgslsmith_clamp_u32(u_input.a, 5984u, u_input.a)), !var_0.x));
}

fn func_2() -> bool {
    let var_0 = select(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(-118f, Struct_3(true), Struct_3(false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1055f, -148f)))))), !select(vec4<bool>(false, true, true, true), vec4<bool>(select(false, false, false), true, true, true), true), !func_4(vec2<f32>(-845f, 242f)));
    var var_1 = Struct_3(all(!var_0.wzz));
    let var_2 = Struct_2(Struct_1(~max(abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1003f, -953f, 251f, -558f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1497f)), 398f)), select(~vec3<u32>(9058u, u_input.a, u_input.a) ^ vec3<u32>(0u, u_input.a, 11928u), vec3<u32>(~u_input.a, _wgslsmith_clamp_u32(20804u, u_input.a, 82144u), u_input.a), var_0.xyw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(343f, -489f, 383f, -420f)))))), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.e.ww) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_2.a.e.x) * vec2<f32>(var_2.a.b.x, var_2.a.e.x)), _wgslsmith_f_op_vec2_f32(var_2.a.b.wz - vec2<f32>(var_2.a.c.x, var_2.a.b.x)))))), var_2.a.e.zx, var_0.yw)));
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, -729f)))).x;
    return false;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = abs(vec4<i32>(reverseBits(~(~(-1i))), firstTrailingBit(min(2650i, _wgslsmith_div_i32(47824i, -2147483647i))), -1i, select(arg_0.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(-21771i, 0i, arg_0.x, -276i), vec4<i32>(arg_0.x, 13045i, arg_0.x, arg_0.x)), all(vec4<bool>(false, true, true, true)) & true)));
    var_0 = vec4<i32>(~select(arg_0.x, arg_0.x, true), min(countOneBits(firstLeadingBit(min(56829i, arg_2.x))), 2147483647i), _wgslsmith_dot_vec3_i32(var_0.wxz, _wgslsmith_mult_vec3_i32(~var_0.xwy, select(vec3<i32>(arg_0.x, -1i, var_0.x), vec3<i32>(var_0.x, arg_0.x, arg_0.x), false))) ^ 29794i, countOneBits(~arg_2.x));
    var var_1 = vec4<bool>(arg_1.x >= -560f, true, true & all(vec2<bool>(any(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, true)))), all(vec3<bool>(~u_input.a > 4294967295u, false, true)));
    var_1 = vec4<bool>(func_2(), true, all(select(!select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(all(var_1.yw), var_1.x, true, var_1.x), !(!var_1.x))), arg_1.x <= arg_1.x);
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, var_0.x, arg_2.x), var_0.wyz) | max(var_0.yyz, var_0.zzx), ~(var_0.xzy << (vec3<u32>(u_input.a, u_input.a, 9715u) % vec3<u32>(32u)))), arg_0.x), -18568i);
    return Struct_2(Struct_1(select(abs(~vec4<u32>(1u, 104071u, u_input.a, 0u)), max(~vec4<u32>(0u, 9022u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 29213u, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, -1559f, 1000f), arg_1)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(216f, 684f, arg_1.x, arg_1.x), arg_1, false || var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1050f, arg_1.x)) + _wgslsmith_f_op_vec2_f32(min(arg_1.xw, vec2<f32>(1595f, 500f)))) * vec2<f32>(_wgslsmith_f_op_f32(floor(1384f)), 1388f)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(18774u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(arg_1 * arg_1)), all(vec2<bool>(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(vec2<i32>(i32(-1i) * -1i, abs(-2147483647i >> (u_input.a % 32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, -1000f, -1000f, -1223f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, -321f, 921f, 637f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-562f, -1238f, 778f, -1000f) - vec4<f32>(-1224f, 730f, -1434f, -166f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(811f, 669f, -455f, -1357f))))), -vec2<i32>(-firstTrailingBit(8033i), 0i));
    let var_1 = _wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(~0i, 37431i), 1i), _wgslsmith_clamp_vec2_i32(select(reverseBits(vec2<i32>(1i, 1i)), vec2<i32>(0i, _wgslsmith_add_i32(-13167i, 10584i)), !(var_0.b & false)), firstTrailingBit(~vec2<i32>(0i, 1i) >> ((var_0.a.a.zw | vec2<u32>(31453u, u_input.a)) % vec2<u32>(32u))), countOneBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, 2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_0.a.a.x >> (~10649u % 32u), var_0.a.a.x) ^ firstLeadingBit(vec2<u32>(func_1(vec2<i32>(1i, var_1.x), vec4<f32>(var_0.a.c.x, -263f, var_0.a.c.x, 1277f), var_1).a.a.x, 64000u >> (u_input.a % 32u))), abs(u_input.a));
}

