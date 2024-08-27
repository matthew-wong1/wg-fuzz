struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<bool>, 23>();
    var var_0 = global0.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 1161f, -405f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, 438f, -558f))))));
    let var_2 = vec4<bool>(!global0.x, !(!(!any(global0.xz))), any(global0.xx), false);
    let var_3 = ~(~33185u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1077f, var_1.a.x)), -292f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = -(~u_input.b);
    var var_1 = func_2();
    var var_2 = select(select(!select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), select(select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), select(vec2<bool>(global0.x, false), global0.yy, global0.zy)), select(select(vec2<bool>(global0.x, true), global0.xz, true), vec2<bool>(global0.x, false), all(vec4<bool>(true, global0.x, global0.x, true))), select(vec2<bool>(true, true), !global0.zx, global0.yx)), global0.xy), global0.zx, global0.x);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-445f, arg_1.a.a.x, -1379f) + arg_0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1220f, -1270f, _wgslsmith_f_op_f32(f32(-1f) * -745f))), true)));
    let var_3 = any(select(global0.yy, vec2<bool>(all(global0.zx), (var_2.x || false) || false), global0.yx));
    return func_2();
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(min(firstTrailingBit(vec3<u32>(reverseBits(1u), ~u_input.a, _wgslsmith_clamp_u32(u_input.a, 0u, 72548u))), ~vec3<u32>(1u, min(95707u, 11723u), u_input.a | 36335u)), Struct_2(func_3(func_2(), Struct_2(Struct_1(vec3<f32>(837f, -1598f, 1346f))), vec4<i32>(_wgslsmith_mod_i32(-34044i, -27422i), ~u_input.b, -14110i, abs(-1i)))), !global0.x);
    let var_1 = all(!select(!vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, all(vec4<bool>(var_0.c, true, global0.x, true)), true, global0.x), global0.x));
    global1 = array<vec3<bool>, 23>();
    var var_2 = var_0;
    let var_3 = !select(!global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(u_input.a, 1782u, u_input.a)), 4294967295u), 23u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.x, var_0.a.x), ~var_0.a.zz) & ((51851u >> (1u % 32u)) >> (reverseBits(0u) % 32u)), 23u)], !vec3<bool>(true, global0.x, true));
    return Struct_3(max(var_0.a, vec3<u32>(~9426u, u_input.a | u_input.a, select(u_input.a, 29767u, global0.x))) << (var_0.a % vec3<u32>(32u)), var_0.b, u_input.a <= 0u);
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3) -> vec3<i32> {
    global1 = array<vec3<bool>, 23>();
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + func_1().b.a.a.x));
    global0 = vec3<bool>(all(select(!(!global1[_wgslsmith_index_u32(arg_2.a.x, 23u)]), select(select(vec3<bool>(global0.x, arg_1, true), global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(arg_2.a.x, 23u)]), !global1[_wgslsmith_index_u32(28870u, 23u)], select(global1[_wgslsmith_index_u32(1u, 23u)], vec3<bool>(arg_2.c, arg_2.c, true), global1[_wgslsmith_index_u32(1u, 23u)])), !vec3<bool>(arg_2.c, true, global0.x))), false, select(arg_1, true, false) == arg_1);
    global1 = array<vec3<bool>, 23>();
    return firstLeadingBit(_wgslsmith_add_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(8643i, -5233i, u_input.b), vec3<i32>(-1i, 1i, u_input.b)), ~vec3<i32>(-2147483647i, u_input.b, u_input.b)) << (arg_2.a % vec3<u32>(32u)), vec3<i32>(-9506i, u_input.b, _wgslsmith_add_i32(2147483647i, reverseBits(2147483647i)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = abs(abs(select(abs(arg_0), vec3<i32>(arg_0.x, 36299i, 21720i), global0.x & global0.x))) >> (vec3<u32>(countOneBits(~u_input.a), _wgslsmith_sub_u32(~0u, u_input.a), u_input.a) % vec3<u32>(32u));
    let var_1 = func_1();
    global1 = array<vec3<bool>, 23>();
    let var_2 = 9749u;
    var var_3 = vec4<bool>(true, var_1.c, true, any(!(!(!vec4<bool>(var_1.c, true, true, global0.x)))));
    return func_3(arg_1.a, func_1().b, vec4<i32>(u_input.b, u_input.b, 2147483647i, -18799i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(min(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(11260i, u_input.b, u_input.b), countOneBits(-vec3<i32>(u_input.b, u_input.b, 3857i))), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(941f, -745f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(731f, 345f))), false, func_1())), func_1().b);
    var var_1 = var_0.a.yz;
    var var_2 = vec3<i32>(u_input.b & 0i, u_input.b, -2147483647i);
    var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, 2364i, u_input.b, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, -2147483647i, var_2.x, -1i), vec4<i32>(1i, -30214i, -18906i, u_input.b)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 62933u, u_input.a)) % vec4<u32>(32u))), u_input.b, max(select(var_2.x, ~11450i, any(vec2<bool>(global0.x, false))), ~(~var_2.x))), abs(vec3<i32>(~(-2147483647i), 0i, -8046i) | vec3<i32>(17648i, -1i, var_2.x)));
    global0 = !(!vec3<bool>(any(select(vec2<bool>(global0.x, global0.x), global0.yy, false)), global0.x, !all(global0.yz)));
    var var_3 = vec4<u32>(~_wgslsmith_sub_u32(abs(0u), u_input.a), u_input.a, u_input.a ^ 1u, select(u_input.a, u_input.a, any(select(select(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global0.x), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, var_1.x, var_0.a.x, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1109f, var_0.a.x, var_0.a.x, var_1.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, -541f, 754f, var_0.a.x), vec4<f32>(469f, 856f, var_1.x, var_0.a.x))), false))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, -350f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(768f, var_1.x, var_1.x, -1990f) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, 1453f, var_1.x, var_0.a.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1369f, var_1.x, var_1.x, -1053f), vec4<f32>(var_1.x, 1323f, var_1.x, 319f), vec4<bool>(false, false, true, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(739f, var_0.a.x, var_1.x, var_1.x) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1264f, 1000f, var_1.x, 108f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, 1735f, -796f), vec4<f32>(404f, 104f, 370f, var_0.a.x), global0.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1189f, 197f, 1556f, var_1.x) * vec4<f32>(var_1.x, -739f, 597f, var_1.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, -1770f, -1295f, var_0.a.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(794f, 154f, 1296f, var_0.a.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, 2425f)), -1609f, func_3(Struct_1(var_0.a), Struct_2(Struct_1(vec3<f32>(-573f, var_0.a.x, 320f))), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, var_2.x)).a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1087f, var_1.x, var_0.a.x, 1975f) * vec4<f32>(-659f, 1955f, 300f, var_1.x)) - vec4<f32>(1846f, var_0.a.x, 1000f, var_1.x))))), func_3(func_2(), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a))), vec4<i32>(-(~(-2147483647i)), -21561i, var_2.x, ~_wgslsmith_mod_i32(var_2.x, 1i))).a.zx);
}

