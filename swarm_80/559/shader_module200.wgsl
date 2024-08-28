struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30>;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    global0 = array<vec3<f32>, 30>();
    let var_0 = 1u;
    let var_1 = ~max(-1532i, min(2147483647i, 1i));
    global1 = arg_0;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x - global1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(406f)) * _wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(exp2(global1.b.x))), _wgslsmith_f_op_f32(-global1.b.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec3<u32> {
    global0 = array<vec3<f32>, 30>();
    var var_0 = global1.a.x;
    global1 = Struct_2(vec4<i32>(-abs(-4858i), -(arg_1.x | arg_1.x), global1.a.x, 11240i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1109f - -2268f), _wgslsmith_f_op_f32(func_3(Struct_2(arg_1, vec2<f32>(global1.b.x, global1.b.x)), vec4<bool>(false, true, false, true)))))));
    let var_1 = Struct_3(Struct_1(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(27088u, 67527u), vec2<u32>(25356u, 4294967295u)))), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(all(vec4<bool>(true, false, false, true)), true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(max(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21672u, 4294967295u, 45454u), vec3<u32>(4294967295u, 39699u, 36121u)), max(1922u, 4294967295u)), ~(~vec2<u32>(4294967295u, 1u)))));
    global1 = Struct_2(_wgslsmith_mult_vec4_i32(~arg_1, vec4<i32>(arg_1.x, i32(-1i) * -14286i, global1.a.x, -15610i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.b)) * _wgslsmith_f_op_vec2_f32(-arg_0.xy)), _wgslsmith_f_op_vec2_f32(trunc(arg_0.wz)), vec2<bool>(0u <= var_1.a.a.x, all(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x)))))));
    return vec3<u32>(~var_1.c.a.x, 4294967295u, var_1.a.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_1.x, arg_1.x), arg_1.x), vec2<u32>(4294967295u, select(arg_0.a.x, arg_1.x, false)));
    var_0 = ~(firstTrailingBit(~arg_0.a.x) << (_wgslsmith_mult_u32(arg_0.a.x & 37945u, 4294967295u) % 32u)) | 13880u;
    let var_1 = vec2<bool>(((abs(global1.a.x) <= -44233i) & true) || true, _wgslsmith_f_op_f32(f32(-1f) * -252f) >= _wgslsmith_f_op_f32(func_3(Struct_2(max(global1.a, global1.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1257f, 306f)))), vec4<bool>(true, false, true, true))));
    global0 = array<vec3<f32>, 30>();
    let var_2 = true;
    return Struct_3(arg_0, !vec2<bool>(!any(vec4<bool>(true, false, true, false)), true), arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> vec4<i32> {
    global0 = array<vec3<f32>, 30>();
    var var_0 = countOneBits(global1.a) & select(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(0i, 44290i, 1i, -9424i)), global1.a.x), -47547i, u_input.b, u_input.a | -global1.a.x), vec4<i32>(reverseBits(u_input.b & 2147483647i), -u_input.a, 2147483647i, select(firstLeadingBit(u_input.b), arg_1, all(vec4<bool>(true, true, true, arg_0.b.x)))), any(!select(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x), vec4<bool>(false, false, arg_0.b.x, arg_0.b.x), true)));
    var var_1 = _wgslsmith_mult_u32(~(~87153u), arg_0.a.a.x);
    var_1 = countOneBits(_wgslsmith_sub_u32(1u, reverseBits(0u)));
    let var_2 = vec3<i32>(u_input.a, arg_1, 1i);
    return _wgslsmith_div_vec4_i32(-max(select(vec4<i32>(-10418i, -21465i, global1.a.x, 1i) & global1.a, select(vec4<i32>(u_input.b, arg_1, arg_1, var_2.x), vec4<i32>(-1i, u_input.a, u_input.a, var_2.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, true)), vec4<bool>(true, false, arg_0.b.x, false)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a.x, arg_1, var_0.x, 1i), global1.a))), global1.a);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    let var_0 = firstLeadingBit(-(~_wgslsmith_div_vec2_i32(-vec2<i32>(arg_0.a.x, 6958i), arg_0.a.zz)));
    var var_1 = arg_1.b;
    var_1 = arg_1.b;
    global0 = array<vec3<f32>, 30>();
    global0 = array<vec3<f32>, 30>();
    return Struct_3(func_4(arg_1.c, ~(~vec3<u32>(arg_1.c.a.x, arg_1.a.a.x, arg_1.a.a.x) | vec3<u32>(arg_1.a.a.x, arg_1.a.a.x, 45239u)), vec3<i32>(~(-global1.a.x), -var_0.x & select(-8728i, u_input.a, true), _wgslsmith_mod_i32(-global1.a.x, var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-860f)))))).c, vec2<bool>(var_1.x, !(true && any(vec2<bool>(var_1.x, true)))), arg_1.c);
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = func_6(Struct_2(func_5(func_4(Struct_1(vec2<u32>(2750u, 0u)), func_2(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 294f), vec4<i32>(global1.a.x, u_input.a, arg_0, 12733i)), vec3<i32>(0i, arg_0, u_input.a), global1.b.x), min(arg_0 & 2147483647i, global1.a.x)), global1.b), Struct_3(Struct_1(vec2<u32>(1u, ~1u)), func_4(Struct_1(vec2<u32>(1u, 1u)), reverseBits(vec3<u32>(1u, 21820u, 11595u)), vec3<i32>(-1i) * -global1.a.yzx, 853f).b, Struct_1(~(~vec2<u32>(23471u, 61189u)))));
    let var_1 = firstTrailingBit(func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b.x, global1.b.x, -305f, 1576f))), vec4<f32>(global1.b.x, 1000f, 382f, 191f))), vec4<i32>(0i, 11122i, _wgslsmith_clamp_i32(u_input.b, u_input.a, -34512i), _wgslsmith_clamp_i32(2147483647i, -9142i, u_input.a))).xx << (var_0.c.a % vec2<u32>(32u)));
    let var_2 = select(~var_1.x, ~var_0.c.a.x, var_0.b.x);
    let var_3 = Struct_3(func_6(Struct_2(vec4<i32>(~u_input.b, u_input.b, i32(-1i) * -53125i, -u_input.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.x, global1.b.x), global1.b, vec2<bool>(true, var_0.b.x)))))), func_6(Struct_2(~vec4<i32>(-1i, -1i, global1.a.x, 13313i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1318f, global1.b.x), global1.b, var_0.b.x))), func_4(Struct_1(vec2<u32>(var_2, 8773u)), firstTrailingBit(vec3<u32>(0u, var_1.x, var_1.x)), global1.a.wzz, 1326f))).c, !(!(!func_4(var_0.c, vec3<u32>(1u, var_2, var_1.x), vec3<i32>(u_input.b, 1i, global1.a.x), global1.b.x).b)), var_0.a);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-global1.b.x))) * global1.b.x), -1111f);
    return var_3;
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(firstTrailingBit(vec4<i32>(81660i, global1.a.x, global1.a.x, -_wgslsmith_mod_i32(21805i, arg_3.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_3.b * _wgslsmith_f_op_vec2_f32(abs(global1.b))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, arg_3.b.x))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(arg_3.b)))))));
    global0 = array<vec3<f32>, 30>();
    let var_1 = arg_0.a;
    global0 = array<vec3<f32>, 30>();
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1900f)), 1351f));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_1(-17862i), -543f, vec4<u32>(~4294967295u, _wgslsmith_div_u32(func_1(~(-17886i)).c.a.x, func_1(u_input.b).a.a.x), ~1u, func_1(-global1.a.x & -55167i).c.a.x), Struct_2(abs(vec4<i32>(0i, u_input.b, global1.a.x, u_input.a)) << (abs(vec4<u32>(4294967295u, 63451u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.b.x, 863f)))))));
    let var_1 = u_input.b;
    global0 = array<vec3<f32>, 30>();
    let var_2 = vec3<bool>((u_input.b >= 53133i) && ((true & func_1(1i).b.x) | func_1(abs(var_1)).b.x), false, false);
    var var_3 = Struct_1(~_wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(5975u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 32530u))), vec2<u32>(_wgslsmith_clamp_u32(5201u, 19216u, 4294967295u), ~4294967295u)));
    var var_4 = ~max((-vec3<i32>(-20337i, 2147483647i, 26607i) >> ((vec3<u32>(var_3.a.x, 69806u, var_3.a.x) >> (vec3<u32>(73922u, var_3.a.x, var_3.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ countOneBits(~vec3<i32>(var_0.a.x, u_input.a, global1.a.x)), ~vec3<i32>(var_1, 13141i, var_0.a.x));
    var var_5 = any(func_1(-1i).b);
    global1 = func_7(func_1(_wgslsmith_mod_i32(1i, var_1 | 1323i)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(global1.b.x * var_0.b.x)), vec4<u32>(_wgslsmith_mod_u32(11417u, 1u), var_3.a.x, 13452u, _wgslsmith_sub_u32(~9021u, var_3.a.x)), Struct_2(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, -741f))), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_div_f32(256f, global1.b.x)))));
    let var_6 = Struct_2(global1.a, vec2<f32>(818f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1870f))) + _wgslsmith_f_op_f32(round(func_7(Struct_3(Struct_1(var_3.a), var_2.yz, Struct_1(var_3.a)), 1000f, vec4<u32>(var_3.a.x, var_3.a.x, 1u, 41088u), var_0).b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(~vec4<i32>(-1i, -50484i, var_1, var_6.a.x)) | select(var_0.a, -var_0.a, !vec4<bool>(true, true, var_2.x, false))), var_3.a, var_3.a, var_0.b);
}

