struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_mod_i32(0i, u_input.b.x);
    var var_1 = 1u == reverseBits(u_input.c);
    var var_2 = Struct_1(u_input.a.wwy, firstLeadingBit(~u_input.a.wz >> (~min(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy) % vec2<u32>(32u))), ~(~1u ^ firstTrailingBit(52623u)));
    var var_3 = true;
    var var_4 = Struct_4(vec4<bool>(all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_div_u32(0u, var_2.a.x), u_input.a.x, ~u_input.a.x) << (vec4<u32>(~1u, 9411u, _wgslsmith_div_u32(u_input.a.x, 89308u), 4294967295u) % vec4<u32>(32u)), firstTrailingBit(~(~u_input.a))), _wgslsmith_f_op_f32(floor(1f)));
    return u_input.b.xz;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> i32 {
    var var_0 = (min(~arg_1.a.c, 4294967295u) ^ u_input.a.x) < arg_1.b.a;
    let var_1 = vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, false), false), vec3<bool>(true, select(false, true, false), all(vec4<bool>(false, true, false, false))))), true);
    let var_2 = Struct_2(88710u, u_input.b.zz);
    let var_3 = _wgslsmith_clamp_u32(~u_input.a.x, arg_1.b.a, reverseBits(abs(_wgslsmith_div_u32(0u, var_2.a)))) > 0u;
    var var_4 = vec3<u32>(var_2.a, var_2.a, ~_wgslsmith_clamp_u32(39508u, max(abs(var_2.a), 24111u), _wgslsmith_clamp_u32(3638u, 1u, ~4294967295u)));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-min(vec2<i32>(-2147483647i, var_2.b.x), var_2.b), func_3()), -_wgslsmith_mod_vec2_i32(u_input.b.zz, arg_1.b.b));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = vec4<i32>(~(-19407i >> (_wgslsmith_add_u32(abs(0u), _wgslsmith_div_u32(u_input.a.x, 1582u)) % 32u)), ~0i, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), Struct_3(Struct_1(vec3<u32>(u_input.a.x, 1u, u_input.c), vec2<u32>(u_input.a.x, 38106u), u_input.c), Struct_2(_wgslsmith_mod_u32(u_input.c, 1u), func_3()), arg_0)), -53295i);
    let var_1 = -_wgslsmith_sub_vec3_i32(select(vec3<i32>(-1i, u_input.d.x ^ var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 54848i, u_input.b.x, -14108i), vec4<i32>(5132i, 42160i, 1i, 1i))), vec3<i32>(var_0.x, var_0.x, firstTrailingBit(var_0.x)), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.www, vec3<i32>(var_0.x, 53536i, 1i)), _wgslsmith_sub_vec3_i32(u_input.b.xyy, var_0.zwy)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xxy, u_input.a.xyy), vec3<u32>(0u, 60837u, 0u)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, 1694f, 924f, 1000f));
    let var_3 = Struct_3(Struct_1(u_input.a.xwx, vec2<u32>(u_input.a.x, ~51956u), ~(~_wgslsmith_div_u32(u_input.c, u_input.c))), Struct_2(firstLeadingBit(24163u) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xw, vec2<u32>(u_input.c, u_input.c)), abs(vec2<u32>(46760u, u_input.a.x))) % 32u), vec2<i32>(15722i, -countOneBits(-378i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 973f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1449f)));
    var var_4 = Struct_2(countOneBits(u_input.a.x) << (~abs(_wgslsmith_div_u32(32567u, u_input.c)) % 32u), -(var_0.yx & _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(34648i, -1i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, var_1.x), var_1.zx))));
    return Struct_2(2263u, var_1.zz);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_4 {
    var var_0 = 0u;
    let var_1 = Struct_2(22805u, arg_3.b);
    var_0 = ~26647u;
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f - _wgslsmith_div_f32(-1000f, -634f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1071f))) - 1582f)));
    return Struct_4(!(!vec4<bool>(false, u_input.b.x == 1i, false, arg_0.x)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(550f))));
}

fn func_6(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 1451f, arg_0.c)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, arg_0.c), vec3<f32>(899f, 908f, 1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-289f, arg_0.c, arg_0.c) - vec3<f32>(628f, arg_0.c, arg_0.c))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, 183f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.c, arg_0.c, 824f))))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, arg_0.c)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c, -642f, -1000f))), select(vec3<bool>(arg_0.a.x, arg_0.a.x, false), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a.ywz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 1226f, arg_0.c))))), vec3<f32>(_wgslsmith_div_f32(-1701f, arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_div_f32(281f, arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !(_wgslsmith_f_op_f32(arg_0.c * -2457f) < _wgslsmith_f_op_f32(-arg_0.c)))));
    let var_1 = any(arg_0.a);
    var var_2 = select(true, u_input.d.x > -2147483647i, true);
    var_2 = var_1;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(781f, arg_0.c))))) - var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_0.c)))))), arg_0.c);
    return reverseBits(4294967295u);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = func_6(func_5(vec4<bool>((arg_0 && false) | true, arg_0 == arg_0, any(vec4<bool>(true, true, false, arg_0)), false), arg_0, u_input.a.wz, func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(151f + -1162f), _wgslsmith_f_op_f32(trunc(545f)))))));
    let var_1 = _wgslsmith_sub_vec3_i32(u_input.b.yww, vec3<i32>(0i, 30556i, reverseBits(u_input.d.x)));
    let var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1928f) - _wgslsmith_f_op_f32(394f + 153f)), -893f)) * 1343f));
    var var_3 = u_input.b.x;
    let var_4 = _wgslsmith_f_op_f32(select(1244f, 1827f, false));
    return Struct_3(Struct_1(~arg_1.xyx, firstLeadingBit(_wgslsmith_clamp_vec2_u32(arg_1.wx, vec2<u32>(39848u, 0u), u_input.a.zw)) >> (u_input.a.xz % vec2<u32>(32u)), _wgslsmith_mult_u32(func_2(_wgslsmith_f_op_f32(-var_4)).a, ~abs(4294967295u))), func_2(_wgslsmith_f_op_f32(floor(195f))), 506f);
}

fn func_7(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = select(func_5(select(vec4<bool>(true, false, true, any(vec2<bool>(false, false))), select(func_5(vec4<bool>(false, false, true, false), true, vec2<u32>(arg_0.a.c, arg_0.b.a), arg_0.b).a, vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true)), !(arg_0.a.c == arg_0.b.a)), true, vec2<u32>(~(~arg_0.a.c), _wgslsmith_add_u32(~u_input.c, arg_0.a.b.x | u_input.a.x)), func_2(950f)).a.yw, select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(func_5(vec4<bool>(true, true, true, true), true, arg_0.a.b, arg_0.b).a.xy, select(vec2<bool>(true, true), vec2<bool>(true, true), true), !func_5(vec4<bool>(true, true, true, true), true, u_input.a.xz, arg_0.b).a.x), vec2<bool>(arg_0.c <= _wgslsmith_div_f32(arg_0.c, arg_0.c), select(true, false, true))), any(vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)) && func_5(vec4<bool>(false, false, false, true), true, vec2<u32>(1u, 4294967295u), Struct_2(76083u, vec2<i32>(u_input.d.x, 15177i))).a.x, true)));
    let var_1 = select(vec4<bool>(var_0.x, false, select(_wgslsmith_sub_i32(arg_0.b.b.x, u_input.d.x) < _wgslsmith_sub_i32(90i, -11836i), false, var_0.x), var_0.x), !vec4<bool>(all(var_0), any(vec2<bool>(true, var_0.x)), var_0.x | all(vec3<bool>(var_0.x, false, var_0.x)), false), vec4<bool>((var_0.x || true) || true, false, true, var_0.x));
    var var_2 = arg_0.a;
    let var_3 = -6651i;
    var var_4 = firstTrailingBit(u_input.a);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.c, arg_0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, 752f) - vec2<f32>(-496f, 853f)), var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)), all(!vec4<bool>(true, var_1.x, false, var_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_7(func_1(any(vec3<bool>(false, true, false)), u_input.a, vec4<u32>(50726u, 1u, 46433u, _wgslsmith_add_u32(u_input.a.x, u_input.c))))));
    let var_1 = u_input.a;
    let var_2 = var_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, 567f), false)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -2669f))))) - vec2<f32>(686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(304f * var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1145f) + vec2<f32>(1871f, var_0.x)), vec2<f32>(var_0.x, var_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(min(2332f, -946f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1366f - 1166f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -972f), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -2270f)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1698f))))), vec2<bool>(true, true))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, var_0.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -255f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -134f, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f + _wgslsmith_f_op_f32(-var_3.x))), -319f, var_0.x));
}

