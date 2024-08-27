struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1708f, 13044u, vec2<f32>(197f, -749f), -244f, -2426f), vec4<f32>(-1481f, 541f, 609f, -225f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    let var_0 = vec4<bool>(false, global0.a.b != 1u, !(!(any(vec2<bool>(false, false)) && true)), !(_wgslsmith_f_op_f32(global0.a.c.x + global0.b.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(206f, -1019f)))));
    return -(~u_input.c.zy) & -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x >> (global0.a.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(58349i, u_input.a, 1i, u_input.d), u_input.c)), ~countOneBits(vec2<i32>(u_input.c.x, 2147483647i)), firstLeadingBit(u_input.c.zx));
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> f32 {
    var var_0 = ~vec4<u32>(arg_1, _wgslsmith_add_u32(63508u, ~(~arg_0.a.a.x)), arg_0.a.a.x, 0u << (0u % 32u));
    var var_1 = ~func_3();
    let var_2 = vec4<bool>(true, var_0.x > _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~52258u, 41453u ^ var_0.x, global0.a.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.b, 76019u, arg_0.a.a.x, 0u), ~vec4<u32>(var_0.x, arg_1, 0u, global0.a.b))), true || any(vec3<bool>(true, false, true)), !(!(arg_1 > global0.a.b) && false));
    let var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, countOneBits(1u), _wgslsmith_dot_vec3_u32(reverseBits(var_0.wxz), ~vec3<u32>(arg_1, 13722u, global0.a.b)), _wgslsmith_div_u32(var_0.x, global0.a.b) << (0u % 32u)), ~vec4<u32>(~30258u, arg_1, ~4294967295u, 98726u));
    var_1 = -u_input.b.yx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(471f)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = false;
    var_0 = false;
    global0 = Struct_2(global0.a, vec4<f32>(-1050f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(vec3<u32>(1174u, global0.a.b, global0.a.b)), vec2<i32>(arg_0, u_input.d)), 25722u))), _wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(global0.b.x - arg_1.x)));
    var var_1 = min(~(~(~global0.a.b) | global0.a.b), global0.a.b);
    let var_2 = ~(~(~(-u_input.e.x & firstTrailingBit(-1104i))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 1f)), 0u, vec2<f32>(-128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(vec3<u32>(55155u, global0.a.b, global0.a.b)), arg_2.yx), ~global0.a.b)))), _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(455f * _wgslsmith_f_op_f32(arg_1.x * global0.a.d)))), global0.a.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_2 {
    global0 = Struct_2(Struct_1(arg_0.a, ~arg_2.a.a.x, _wgslsmith_f_op_vec2_f32(-global0.a.c), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)) - _wgslsmith_f_op_f32(ceil(arg_0.a))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.e, -628f), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(913f - 178f))), _wgslsmith_f_op_f32(func_1(-1i, vec3<f32>(622f, global0.a.c.x, 343f), u_input.c).c.x - -963f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.e), -278f, -713f, _wgslsmith_f_op_f32(931f * -207f)))));
    let var_0 = !((arg_2.a.a.x > _wgslsmith_mult_u32(select(0u, arg_2.a.a.x, false), 27349u << (arg_0.b % 32u))) | ((false & any(vec4<bool>(false, false, true, false))) | false));
    let var_1 = !(!(!var_0));
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, func_1(15076i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, -262f, arg_0.c.x) + global0.b.xzw)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.b.x, -2147483647i, u_input.e.x, arg_2.b.x), u_input.c), vec4<i32>(-2147483647i, -29567i, arg_2.b.x, u_input.d) | vec4<i32>(8182i, arg_2.b.x, arg_1.x, 2147483647i))).b), arg_2.a.a >> (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.a.a, vec3<u32>(global0.a.b, 0u, arg_0.b)), ~(~arg_2.a.a)) % vec3<u32>(32u)));
    var_2 = arg_2.a.a;
    return Struct_2(func_1(-28113i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-884f, 694f)), -1000f), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_2.b.x, u_input.e.x), reverseBits(-38125i)), arg_1.x, ~48937i, firstLeadingBit(1i))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_0.e - 1396f), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.a * global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.e - arg_0.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(-u_input.a & u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.a.c.x, global0.b.x, false)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(622f + global0.b.x))), vec4<i32>(i32(-1i) * -u_input.a, -1i, _wgslsmith_mod_i32(u_input.d, 1i), u_input.b.x)), vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(69340i, u_input.a) >> (_wgslsmith_add_u32(4294967295u, global0.a.b) % 32u), ~(31981i >> (0u % 32u))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, -u_input.c.xyx), _wgslsmith_dot_vec3_i32(u_input.c.yxw, vec3<i32>(-40452i, u_input.d, u_input.a))), -1i), Struct_4(Struct_3(vec3<u32>(33098u, ~global0.a.b, global0.a.b)), _wgslsmith_sub_vec2_i32(u_input.e, abs(max(u_input.b.yy, vec2<i32>(39746i, 2147483647i))))));
    let var_0 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.b, u_input.b), vec3<i32>(u_input.c.x, firstLeadingBit(u_input.b.x), abs(-42183i))), ~_wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(2147483647i, u_input.e.x)), vec2<i32>(-2147483647i, u_input.b.x)), -u_input.d);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1228f) - global0.a.a));
    let var_2 = Struct_3(~firstLeadingBit(countOneBits(abs(vec3<u32>(global0.a.b, 36880u, global0.a.b)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(var_2.a), vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_div_u32(var_2.a.x, global0.a.b))))) + _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-448f * -1148f), _wgslsmith_f_op_f32(sign(-1000f)))))), 2175u, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.d, global0.a.a) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1000f)))), -2181f)), _wgslsmith_f_op_f32(f32(-1f) * -1461f), -1137f);
    var var_4 = !select(select(vec4<bool>(true, any(vec2<bool>(true, false)), all(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)), false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), true), !(!all(vec3<bool>(false, true, false))));
    global0 = Struct_2(func_1(var_0, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.b.xzx), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b.yyw * global0.b.wzz), global0.b.yyx))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_0, -3451i, u_input.b.x << (21952u % 32u)), u_input.c)), _wgslsmith_f_op_vec4_f32(exp2(global0.b)));
    let var_5 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~vec4<u32>(1u, 0u, var_5.b, 23229u | global0.a.b), firstTrailingBit(u_input.c.ww), min(var_0, var_0), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(global0.a.b, var_5.b), func_4(global0.a, vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.e.x, var_0, u_input.e.x), vec4<i32>(var_0, -49162i, 0i, u_input.e.x)), -2147483647i, _wgslsmith_add_i32(-15462i, -1i)), Struct_4(Struct_3(vec3<u32>(var_5.b, var_5.b, var_5.b)), u_input.c.yx)).a.b));
}

