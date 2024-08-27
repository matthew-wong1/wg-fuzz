struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -752f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(select(1518f, 495f, true))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1341f, 809f))))));
    global0 = -1000f;
    let var_0 = 249f;
    let var_1 = countOneBits(firstLeadingBit(abs(vec4<i32>(2147483647i, u_input.c, 9674i, 1i)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.d.x), abs(vec4<u32>(6806u, u_input.d.x, u_input.d.x, 34583u))) % vec4<u32>(32u))));
    global0 = -1634f;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_1.x, var_1.x, _wgslsmith_div_i32(~(-1i), ~var_1.x)), 0i, -49900i, 0i), _wgslsmith_div_vec4_i32(select(var_1, var_1, _wgslsmith_f_op_f32(var_0 - -253f) > _wgslsmith_f_op_f32(floor(-169f))), firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(var_1, vec4<i32>(u_input.e, u_input.c, u_input.b.x, var_1.x)), var_1))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = arg_1;
    var_2 = Struct_1(var_0.d.x, true, vec4<i32>(min(~u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 10529i, 1i), min(arg_1.c.xyw, arg_1.c.yyz))), _wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(2147483647i, var_0.c.x, 1i, var_2.c.x) & min(var_1.c, vec4<i32>(arg_1.c.x, arg_1.c.x, var_1.c.x, arg_1.c.x))), reverseBits(arg_1.c.x), _wgslsmith_dot_vec2_i32(~firstTrailingBit(arg_1.c.ww), ~(vec2<i32>(1i, 1i) | var_2.c.zx))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d + vec4<f32>(-1220f, var_1.a, var_0.a, 1944f)))), _wgslsmith_f_op_vec4_f32(step(var_1.d, vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -742f), 561f, _wgslsmith_f_op_f32(f32(-1f) * -368f)))))));
    var_0 = arg_1;
    return vec4<i32>(var_1.c.x, var_2.c.x ^ select(~_wgslsmith_mult_i32(var_0.c.x, var_1.c.x), ~_wgslsmith_add_i32(-1i, 0i), true), var_0.c.x, -1i);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = ~countOneBits(vec3<u32>(~0u, u_input.d.x, u_input.a.x) << (u_input.a % vec3<u32>(32u)));
    global0 = -574f;
    let var_1 = !(!select(vec2<bool>(true, true), arg_0.zz, vec2<bool>(all(arg_0.yx), true)));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.c), firstLeadingBit(u_input.e), -2147483647i, -reverseBits(-2147483647i)), func_4(arg_1.x, Struct_1(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(min(-834f, 1074f)), select(true, var_1.x, var_1.x))), u_input.c <= _wgslsmith_div_i32(u_input.e, 52104i), _wgslsmith_mult_vec4_i32(vec4<i32>(11525i, u_input.c, u_input.e, 9624i), vec4<i32>(-2147483647i, u_input.e, 1i, u_input.e)) | func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, 216f, 1395f, arg_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.x, 527f, 313f))))));
    let var_3 = Struct_1(326f, false, min(vec4<i32>(~u_input.b.x, ~u_input.c, select(-22823i, -32121i, true), var_2), vec4<i32>(~var_2, u_input.c >> (35393u % 32u), min(34320i, -922i), 21616i)) ^ (func_3() ^ ((vec4<i32>(var_2, -9740i, -959i, 2147483647i) & vec4<i32>(9950i, var_2, -1i, u_input.c)) << (vec4<u32>(50u, 66926u, u_input.d.x, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), -670f, arg_1.x, 798f)))));
    return var_3;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global0 = 404f;
    global0 = arg_1.d.x;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(325f + arg_1.d.x), arg_1.b));
    let var_0 = arg_1.c.x;
    let var_1 = _wgslsmith_clamp_u32(select(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, arg_0.x), u_input.d.yx)), ~(arg_0.x << (arg_0.x % 32u)), arg_1.b && func_2(vec3<bool>(false, true, true), vec3<f32>(-849f, -1336f, -1355f)).b) >> (u_input.a.x % 32u), ~(~(~4294967295u)), ~26700u);
    return select(!(!vec2<bool>(any(vec3<bool>(arg_1.b, arg_1.b, arg_1.b)), true)), !vec2<bool>(!arg_1.b, !arg_1.b || true), !(!select(vec2<bool>(arg_1.b, arg_1.b), !vec2<bool>(arg_1.b, false), vec2<bool>(false, arg_1.b))));
}

fn func_6(arg_0: vec2<bool>) -> Struct_1 {
    global0 = -1695f;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-978f)) - 390f), 677f));
    var var_0 = func_2(!vec3<bool>((false | arg_0.x) && all(vec2<bool>(true, true)), true, func_5(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, 22120u), u_input.a), Struct_1(722f, arg_0.x, vec4<i32>(u_input.e, u_input.c, -19045i, -11467i), vec4<f32>(-1419f, -771f, 596f, -551f)), _wgslsmith_f_op_f32(ceil(748f))).x), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(529f, _wgslsmith_f_op_f32(1277f + -1591f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-145f - -742f)), 2668f), _wgslsmith_f_op_f32(100f * func_2(vec3<bool>(true, arg_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1572f, 1217f, -626f), vec3<f32>(-1000f, 555f, 182f)))).d.x)));
    return func_2(!vec3<bool>(select(true, false, arg_0.x), -1i > u_input.e, func_2(vec3<bool>(var_0.b, var_0.b, var_0.b), var_0.d.xwx).b), vec3<f32>(var_0.a, -624f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a)))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1047f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1485f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -979f)), -980f) + vec3<f32>(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-854f, 1329f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-266f, 1000f, true)))));
    let var_1 = func_6(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_5(_wgslsmith_add_vec3_u32(countOneBits(u_input.a), u_input.a ^ u_input.d), func_2(vec3<bool>(true, true, true), vec3<f32>(1028f, var_0.x, var_0.x)), 1f), !any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))));
    let var_2 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.a.x, 0u) & vec4<u32>(4294967295u, 1u, u_input.d.x, 4294967295u)), vec4<u32>(max(7086u, 68605u), 0u, select(44476u, 0u, var_1.b), u_input.a.x >> (81101u % 32u))), _wgslsmith_div_u32(41984u, u_input.d.x));
    var var_3 = var_1.b;
    var var_4 = var_1;
    return var_4.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = -vec3<i32>(abs(u_input.e ^ u_input.c), -26401i << (0u % 32u), i32(-1i) * -10877i);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(466f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) - _wgslsmith_f_op_f32(func_1())))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1401f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -623f)))))), 544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) + _wgslsmith_f_op_f32(step(215f, 1875f))))));
    let var_3 = func_6(vec2<bool>(true, true));
    let var_4 = var_0;
    var var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.yy, vec2<f32>(var_3.d.x, 794f), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-612f, var_2.x) * vec2<f32>(1980f, var_2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1401f, var_3.d.x)), select(func_5(u_input.a, var_3, -1110f), vec2<bool>(true, var_0), !vec2<bool>(var_4, false)))) * _wgslsmith_f_op_vec2_f32(exp2(var_3.d.yy))), var_3.d.wy);
    let var_6 = !(!(func_2(vec3<bool>(var_3.b, var_0, false), var_3.d.zzx).b | select(true, var_4, false)) || var_4);
    var var_7 = Struct_1(func_6(vec2<bool>(func_2(vec3<bool>(true, true, var_3.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_3.d.x, var_2.x))).b, var_3.b)).d.x, func_6(vec2<bool>(any(vec2<bool>(true, true)), !var_4)).b || false, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_1.x, 28023i, -2147483647i, var_3.c.x), select(var_3.c, var_3.c, true)) ^ reverseBits(func_2(vec3<bool>(var_3.b, var_4, true), vec3<f32>(var_5.x, var_3.a, -839f)).c), vec4<i32>(i32(-1i) * -1i, var_3.c.x, 1i, -_wgslsmith_mod_i32(var_3.c.x, 1i)), vec4<i32>(_wgslsmith_mod_i32(-32861i, -2147483647i), select(-2147483647i, u_input.e, select(false, true, var_6)), _wgslsmith_dot_vec2_i32(u_input.b.zx, min(u_input.b.yy, vec2<i32>(-25511i, u_input.c))), -var_3.c.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_3.d, _wgslsmith_f_op_vec4_f32(var_3.d + var_3.d))) * var_3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(488f + _wgslsmith_f_op_f32(f32(-1f) * -805f)), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_3.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_3.a), _wgslsmith_f_op_f32(round(926f))) * var_3.a), ~(~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, 0i, var_3.c.x), var_7.c.zyx)), vec3<f32>(1481f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_7.a * var_5.x), 497f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-844f)) + _wgslsmith_f_op_f32(max(-775f, var_2.x)))) - _wgslsmith_f_op_f32(var_5.x + _wgslsmith_f_op_f32(819f - _wgslsmith_f_op_f32(var_5.x * var_3.a)))));
}

