struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = vec4<i32>(abs(arg_1.e.c.x), ~arg_1.c, -103630i, arg_1.c ^ _wgslsmith_mult_i32(select(reverseBits(u_input.a), -41986i, !arg_0), _wgslsmith_dot_vec2_i32(u_input.c.yw, abs(vec2<i32>(u_input.c.x, -1i)))));
    var var_1 = vec4<bool>(true | any(vec3<bool>(false, arg_0, arg_1.a.x != 251f)), true | (-3263i > -_wgslsmith_dot_vec2_i32(arg_1.e.c.yx, vec2<i32>(1i, -2147483647i))), !arg_0, !(!(true || arg_0)));
    var_1 = arg_1.e.b;
    let var_2 = arg_1.e.b;
    let var_3 = arg_1.e;
    return arg_1.e.e.x;
}

fn func_2() -> f32 {
    let var_0 = select(4294967295u, 45439u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f + -868f)), 338f, true)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1333f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2655f, 2259f, false)))));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f + -1025f)), vec4<bool>(true, true, true, true), vec3<i32>(~u_input.c.x, -1i, min(-2147483647i, u_input.a)) | ((vec3<i32>(u_input.a, u_input.c.x, u_input.a) & u_input.c.xwx) & (u_input.c.xxw ^ vec3<i32>(u_input.a, -86980i, u_input.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -490f), vec4<u32>(max(var_0 << (4294967295u % 32u), 4294967295u), 7589u, func_3(select(false, true, false), Struct_3(vec4<f32>(1426f, -628f, 262f, 376f), vec3<bool>(false, true, true), u_input.a, u_input.b.x, Struct_1(-263f, vec4<bool>(true, false, false, true), u_input.c.wwz, 229f, vec4<u32>(4294967295u, var_0, u_input.b.x, var_0))), 33612u), ~28251u << (u_input.b.x % 32u))), true, !vec3<bool>(select(true, true, true), false, all(vec2<bool>(true, true))));
    var var_2 = reverseBits(88005u);
    let var_3 = vec4<u32>(var_0, 4294967295u, (_wgslsmith_mult_u32(~var_1.a.e.x, _wgslsmith_clamp_u32(u_input.b.x, 39424u, u_input.b.x)) | 0u) ^ 1u, ~abs(3238u));
    var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.d - var_1.a.d) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.d, -248f)) + _wgslsmith_f_op_f32(ceil(var_1.a.d))), var_1.b)), vec4<bool>(true, true == all(vec4<bool>(var_1.b, var_1.a.b.x, var_1.c.x, true)), all(select(var_1.a.b, vec4<bool>(var_1.a.b.x, var_1.c.x, false, var_1.c.x), vec4<bool>(var_1.a.b.x, var_1.b, var_1.b, var_1.c.x))), false), var_1.a.c, -727f, var_3), true, select(select(!select(vec3<bool>(false, true, var_1.c.x), vec3<bool>(false, true, false), var_1.a.b.x), vec3<bool>(true && var_1.b, true, any(var_1.a.b.yx)), select(!vec3<bool>(var_1.a.b.x, var_1.b, false), !var_1.a.b.wxx, false)), select(var_1.c, select(!var_1.c, !var_1.a.b.zww, true), var_1.a.b.xyw), any(!select(vec3<bool>(false, var_1.b, false), var_1.c, vec3<bool>(false, true, true)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a + var_1.a.a) + _wgslsmith_f_op_f32(select(var_1.a.d, 566f, true))))), _wgslsmith_f_op_f32(var_1.a.a + var_1.a.a), var_1.b));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = -35383i;
    let var_1 = all(!arg_3.a.b) != !arg_3.c.x;
    let var_2 = true;
    var var_3 = var_1;
    var_3 = any(arg_3.a.b);
    return ~countOneBits(~u_input.b.xxx);
}

fn func_1(arg_0: Struct_5, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(select(arg_0.d.x, -798f, arg_0.b)))) + -705f), _wgslsmith_f_op_f32(step(arg_0.c.x, arg_0.e.a.a)), arg_0.b)));
    var_0 = arg_0.c.x;
    let var_1 = min(~func_4(~(~u_input.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-1000f - arg_0.e.a.d))), arg_0.e.a.c.x, Struct_4(Struct_1(arg_0.c.x, arg_0.e.a.b, vec3<i32>(-1i, -2147483647i, 28526i), 218f, u_input.b), select(arg_0.e.c.x, true, arg_0.b), select(arg_0.e.c, vec3<bool>(arg_0.e.b, true, arg_0.e.c.x), arg_0.e.a.b.zyy))), func_4(func_3(true, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.c.x, arg_0.c.x, arg_0.e.a.a)), vec3<bool>(arg_0.b, arg_0.b, arg_0.e.a.b.x), arg_0.e.a.c.x & -1i, max(42995u, arg_0.e.a.e.x), Struct_1(arg_0.d.x, vec4<bool>(arg_0.b, false, false, true), vec3<i32>(-2147483647i, -35258i, -40448i), -391f, vec4<u32>(20578u, arg_0.e.a.e.x, 2319u, 1u))), arg_0.e.a.e.x | 1u), arg_0.c.x, 0i, Struct_4(arg_0.e.a, true, vec3<bool>(false, false, true))));
    var_0 = _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(select(-376f, _wgslsmith_f_op_f32(arg_0.c.x * arg_0.e.a.a), arg_0.e.a.d > 1247f))))));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x))), true)), _wgslsmith_f_op_f32(1000f - -1518f), true))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d * vec4<f32>(-736f, 1059f, arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(arg_0.d + arg_0.d)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.d - arg_0.d)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.a.a, arg_0.d.x, arg_0.c.x, 398f) * vec4<f32>(arg_0.d.x, arg_0.d.x, -1820f, -543f)) - vec4<f32>(arg_0.c.x, 1054f, arg_0.d.x, arg_0.d.x)) + vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.d.x, arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(min(-602f, arg_0.c.x)), -1283f))), arg_0.e.a.b.zxy, _wgslsmith_mod_i32(arg_1, _wgslsmith_sub_i32(arg_1, ~firstLeadingBit(u_input.c.x))), ~firstLeadingBit(1u), Struct_1(arg_0.d.x, select(!select(vec4<bool>(arg_0.e.b, false, arg_0.b, true), arg_0.e.a.b, arg_0.e.b), select(select(arg_0.e.a.b, vec4<bool>(false, arg_0.b, arg_0.b, arg_0.e.b), true), vec4<bool>(true, true, true, true), false), arg_0.e.a.b), _wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(2147483647i, 2147483647i, 28826i)), _wgslsmith_mod_vec3_i32(u_input.c.yxx, arg_0.e.a.c) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, -957i), arg_0.e.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -846f), ~vec4<u32>(1u ^ u_input.b.x, 4294967295u, u_input.b.x << (0u % 32u), _wgslsmith_dot_vec3_u32(u_input.b.wyx, var_1))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = arg_1;
    let var_1 = true;
    let var_2 = arg_0;
    var var_3 = Struct_4(Struct_1(arg_0.a.x, vec4<bool>(true, _wgslsmith_f_op_f32(-var_2.e.d) > _wgslsmith_f_op_f32(-arg_0.a.x), ~arg_0.e.e.x < 55607u, true), -abs(vec3<i32>(arg_0.e.c.x, 44861i, var_2.e.c.x)) << (var_2.e.e.wzx % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - var_2.a.x), var_2.e.e), true, vec3<bool>(!(true | all(arg_0.e.b)), true, all(var_2.b)));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b.x, 5767u, 57831u) | vec3<u32>(arg_2.x, var_2.e.e.x, var_2.e.e.x)), vec3<u32>(1u, 4294967295u, ~82646u) ^ u_input.b.zxx), ~_wgslsmith_div_u32(_wgslsmith_div_u32(func_4(arg_0.d, -1318f, -1i, Struct_4(var_2.e, var_1, vec3<bool>(arg_0.b.x, true, arg_3.x))).x, ~35837u), 1u));
    return firstTrailingBit(arg_0.e.c.x);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = Struct_4(arg_1.e, any(!vec4<bool>(arg_1.b.x, true, false, false)), arg_1.e.b.yxy);
    var_0 = Struct_4(func_1(Struct_5(58068u, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.wxz * arg_0.a.xyx)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.d, arg_1.e.d, arg_0.a.x, -714f)), Struct_4(func_1(Struct_5(0u, arg_1.b.x, arg_0.a.zzx, vec4<f32>(var_0.a.d, arg_0.a.x, 661f, -801f), Struct_4(Struct_1(arg_1.e.a, vec4<bool>(var_0.a.b.x, false, arg_1.e.b.x, var_0.a.b.x), var_0.a.c, var_0.a.d, vec4<u32>(var_0.a.e.x, u_input.b.x, 1u, var_0.a.e.x)), true, var_0.c)), arg_1.e.c.x).e, u_input.b.x != u_input.b.x, vec3<bool>(var_0.c.x, var_0.c.x, false))), firstLeadingBit(~func_5(arg_1, true, u_input.b.xy, vec2<bool>(arg_1.b.x, var_0.b)))).e, !(!(false & (0u <= u_input.b.x))), arg_1.e.b.xwx);
    let var_1 = arg_1;
    var_0 = Struct_4(func_1(Struct_5(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a.e.x, arg_1.e.e.x), 0u), !any(var_0.a.b), arg_1.a.yzw, arg_1.a, Struct_4(Struct_1(arg_0.a.x, vec4<bool>(var_1.b.x, true, true, var_0.b), var_0.a.c, 1003f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_1.d)), 1i == var_0.a.c.x, select(var_1.e.b.wxw, var_0.a.b.xwx, var_0.a.b.xxz))), 27744i).e, false, !vec3<bool>(false, -20791i > -var_1.c, true));
    let var_2 = Struct_4(func_1(Struct_5(17262u, var_1.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.e.a, var_1.a.x)), var_1.a, Struct_4(Struct_1(626f, var_0.a.b, vec3<i32>(arg_2, var_1.e.c.x, var_1.c), arg_0.a.x, var_1.e.e), all(vec4<bool>(false, var_1.b.x, arg_1.b.x, var_0.a.b.x)), !vec3<bool>(arg_1.e.b.x, false, false))), var_1.c).e, !all(arg_1.b.yy), vec3<bool>(false, any(vec2<bool>(!arg_1.b.x, 13238u < u_input.b.x)), false));
    return 1086f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_2(vec4<f32>(-651f, 1445f, -2073f, 713f)), Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1455f, 390f, 2092f, 1467f), vec4<f32>(-1067f, -126f, -336f, 227f)), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, true), vec3<bool>(true, var_0, var_0)), max(u_input.c.x, 2147483647i), 112293u, Struct_1(-610f, vec4<bool>(var_0, var_0, false, false), vec3<i32>(u_input.a, 2147483647i, u_input.a), -306f, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), func_5(func_1(Struct_5(u_input.b.x, true, vec3<f32>(246f, -1472f, -140f), vec4<f32>(-598f, -1811f, -433f, -305f), Struct_4(Struct_1(846f, vec4<bool>(true, var_0, var_0, false), u_input.c.ywz, -1684f, u_input.b), false, vec3<bool>(true, var_0, var_0))), u_input.a), var_0 | true, vec2<u32>(5998u, u_input.b.x), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), false))))) - -195f);
    let var_2 = u_input.b.x;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1107f, 529f, -271f, var_1) * _wgslsmith_div_vec4_f32(vec4<f32>(-791f, var_1, -1315f, 1348f), vec4<f32>(var_1, var_1, -777f, var_1)))))), select(vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(var_0, false), vec2<bool>(true, false))), 477f < _wgslsmith_div_f32(var_1, 1119f)), !vec3<bool>(false, all(vec2<bool>(var_0, var_0)), any(vec3<bool>(true, true, true))), vec3<bool>(func_4(u_input.b.x, var_1, u_input.a, Struct_4(Struct_1(-1004f, vec4<bool>(true, true, var_0, true), vec3<i32>(0i, -17351i, 5309i), var_1, vec4<u32>(u_input.b.x, 1u, var_2, 16180u)), var_0, vec3<bool>(false, true, true))).x <= ~4294967295u, u_input.a != -u_input.a, any(select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, true, true), vec4<bool>(true, true, var_0, true))))), u_input.a, var_2, Struct_1(846f, vec4<bool>(true, !(var_0 || false), func_1(Struct_5(u_input.b.x, var_0, vec3<f32>(516f, var_1, -1000f), vec4<f32>(var_1, 1279f, var_1, -1329f), Struct_4(Struct_1(-1236f, vec4<bool>(var_0, var_0, false, true), u_input.c.wwz, var_1, vec4<u32>(var_2, var_2, u_input.b.x, var_2)), var_0, vec3<bool>(var_0, true, var_0))), -28815i).e.b.x | true, false), u_input.c.wxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) * -269f), ~max(~vec4<u32>(u_input.b.x, 1u, 0u, 4294967295u), u_input.b)));
    var var_4 = Struct_5(~max(u_input.b.x, 46034u), var_0, _wgslsmith_f_op_vec3_f32(select(var_3.a.ywz, var_3.a.yyz, var_3.b.x)), var_3.a, Struct_4(var_3.e, var_2 >= ~var_3.d, select(var_3.b, !vec3<bool>(var_0, var_0, true), var_3.b.x)));
    let var_5 = vec3<f32>(func_1(Struct_5(var_2, true, func_1(Struct_5(0u, true, var_3.a.yxy, var_4.d, var_4.e), _wgslsmith_div_i32(var_3.c, -1i)).a.zyz, var_4.d, Struct_4(func_1(Struct_5(33968u, true, var_4.c, vec4<f32>(var_3.a.x, var_4.c.x, var_4.d.x, 1051f), var_4.e), var_3.e.c.x).e, true, func_1(Struct_5(var_3.e.e.x, true, var_3.a.yxw, var_4.d, var_4.e), 23812i).e.b.wzw)), ~_wgslsmith_dot_vec3_i32(~u_input.c.wxy, abs(vec3<i32>(55832i, var_4.e.a.c.x, var_3.e.c.x)))).e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) - _wgslsmith_div_f32(161f, -605f)), 347f);
    var_3 = func_1(Struct_5(_wgslsmith_mult_u32(~var_2, 21933u ^ (1u | var_2)), all(select(vec2<bool>(false, var_0), vec2<bool>(false, false), !var_4.e.a.b.wz)), var_3.a.xzw, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, -281f, 1443f, var_4.e.a.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.a, var_4.e.a.d, var_3.a.x, var_4.e.a.a)))), var_4.e), ~abs((u_input.a ^ var_4.e.a.c.x) ^ var_3.c));
    var var_6 = _wgslsmith_sub_vec3_u32(u_input.b.wzz, var_3.e.e.yyy);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_4.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2779f, var_5.x, 1046f) * vec3<f32>(366f, -1649f, -203f))), vec3<f32>(2881f, var_1, _wgslsmith_f_op_f32(-var_4.d.x))), vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, var_5.x)), var_5.x, var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(314f, -289f, 260f, 581f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.e.d, -858f, -448f, var_1) * vec4<f32>(-1072f, var_1, 364f, var_4.d.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_3.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.x, 1067f, var_5.x, -1279f))))), var_4.d);
}

