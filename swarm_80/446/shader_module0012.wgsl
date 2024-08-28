struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1810f, -102f), vec2<f32>(-441f, 1387f), vec2<f32>(-317f, 473f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-131f, -200f, -1857f, -896f), _wgslsmith_div_vec4_f32(vec4<f32>(-722f, 2153f, 1232f, 1600f), vec4<f32>(1263f, -902f, -577f, -589f)))) + vec4<f32>(-720f, 392f, 512f, _wgslsmith_f_op_f32(max(824f, -1254f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-330f, 1001f, 196f, 173f) - vec4<f32>(1000f, -709f, -1141f, 447f))))), vec4<bool>(true, arg_0.x, !arg_0.x | select(false, arg_0.x, false), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1056f, -2970f, -895f, -125f), vec4<f32>(2027f, -1000f, 254f, 1771f), arg_0.x)))))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.x)))) - _wgslsmith_div_f32(var_0.x, var_0.x)) != var_0.x;
    let var_3 = !arg_0;
    var var_4 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.a, u_input.a), -vec2<i32>(2147483647i, arg_1), countOneBits(-vec2<i32>(arg_1, u_input.a))) >> (vec2<u32>(u_input.c.x, arg_3) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(u_input.b, arg_1) >> (_wgslsmith_add_u32(~4294967295u, u_input.c.x << (0u % 32u)) % 32u), arg_1));
    return false;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(countOneBits(firstTrailingBit(~(2147483647i ^ u_input.a))));
    let var_1 = select(select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), true, true), vec4<bool>(all(vec3<bool>(true, false, true)), func_3(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), u_input.b, abs(vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x), true, ~u_input.c.x < ~42327u), vec4<bool>(true, true, false, !(-1i != var_0.a))), select(vec4<bool>(true, all(vec3<bool>(true, true, false)) | false, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), false), vec4<bool>(all(vec4<bool>(true, false, true, true)), false, true, any(vec3<bool>(true, true, true))), !any(vec4<bool>(true, false, true, false))), vec4<bool>(true, true & all(vec3<bool>(true, true, true)), true, ~(u_input.c.x & u_input.c.x) != _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_sub_u32(0u, 0u))));
    return firstTrailingBit(vec2<i32>(-1i, abs(_wgslsmith_mod_i32(-u_input.b, -var_0.a))));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> vec4<bool> {
    global0 = array<vec2<f32>, 3>();
    let var_0 = Struct_3(Struct_2(Struct_1(-11029i), -19255i, Struct_1(~_wgslsmith_add_i32(arg_2, -12629i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -2313f, -795f), vec3<f32>(2103f, 2613f, 182f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(379f, 1000f, 1000f), vec3<f32>(-556f, -1398f, 158f), true))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1041f, -1598f, -560f) * vec3<f32>(-1000f, -141f, 719f))))))), Struct_2(Struct_1(abs(1i)), arg_1.x, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2), firstLeadingBit(arg_1)))), !(!(!all(vec2<bool>(false, true)))));
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    return !select(vec4<bool>(false, all(!vec2<bool>(false, var_0.d)), var_0.d, any(!vec3<bool>(var_0.d, false, var_0.d))), select(!vec4<bool>(var_0.d, var_0.d, false, true), select(!vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), select(vec4<bool>(var_0.d, var_0.d, true, var_0.d), vec4<bool>(var_0.d, false, var_0.d, false), true), var_0.d), !select(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), vec4<bool>(var_0.d, true, false, var_0.d), vec4<bool>(false, var_0.d, true, var_0.d))), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d));
}

fn func_1() -> Struct_1 {
    let var_0 = -1000f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(431f))));
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    var var_1 = !func_4(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a & -39497i, -26278i), _wgslsmith_dot_vec2_i32(vec2<i32>(9853i, u_input.b) & vec2<i32>(0i, u_input.b), vec2<i32>(1i, 24173i))), func_2(), 0i);
    return Struct_1(u_input.b);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    global0 = array<vec2<f32>, 3>();
    var var_0 = Struct_4(_wgslsmith_mod_vec2_u32((_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)) & min(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(4294967295u, 27978u))) & _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(60608u, 26624u), u_input.c)), select(u_input.c, u_input.c, false)), func_1());
    var_0 = Struct_4(_wgslsmith_clamp_vec2_u32(~(~u_input.c), vec2<u32>(0u, _wgslsmith_add_u32(24081u, 0u)) << (reverseBits(u_input.c) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(10501u, _wgslsmith_mult_u32(1u, 1u)), 71156u)), Struct_1(u_input.a));
    return Struct_2(func_1(), ~(~_wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.a, var_0.b.a, 2147483647i), vec3<i32>(-1i, arg_0.a, 8348i)))), Struct_1(-2147483647i));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    global0 = array<vec2<f32>, 3>();
    let var_0 = u_input.c;
    global0 = array<vec2<f32>, 3>();
    var var_1 = Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_3.b)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_3.b - arg_3.b))), _wgslsmith_f_op_vec3_f32(-arg_3.b))), Struct_2(Struct_1(select(arg_0.a.a, abs(arg_0.a.a), true)), arg_0.a.a, Struct_1(arg_1.x)), arg_3.d);
    var_1 = arg_3;
    return arg_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(Struct_1(~min(0i, 37585i)), max(-(i32(-1i) * -21089i), u_input.b), func_6(func_5(func_1()), firstLeadingBit(vec2<i32>(2147483647i, u_input.a)) >> (u_input.c % vec2<u32>(32u)), -1000f, Struct_3(Struct_2(Struct_1(27970i), u_input.a, Struct_1(u_input.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(722f, 419f, 1811f) * vec3<f32>(1002f, -702f, 1237f)), Struct_2(Struct_1(u_input.b), u_input.a, Struct_1(u_input.b)), func_4(u_input.a, vec2<i32>(u_input.b, 2147483647i), 2147483647i).x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1165f, -1154f, -1300f), vec3<f32>(-1350f, -590f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2002f, 337f, -1000f) - vec3<f32>(129f, 282f, -1367f)), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(872f, -1130f, 613f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), Struct_2(Struct_1(u_input.b), _wgslsmith_add_i32(abs(firstLeadingBit(u_input.b)), _wgslsmith_mult_i32(u_input.a, 1i)), Struct_1(-u_input.b)), false | (~u_input.c.x < u_input.c.x));
    global0 = array<vec2<f32>, 3>();
    let var_1 = func_5(Struct_1(var_0.a.a.a ^ var_0.c.a.a));
    var var_2 = true;
    var_2 = true;
    var var_3 = !(!(!(!(!vec3<bool>(var_0.d, false, var_0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), -228f), vec3<f32>(_wgslsmith_f_op_f32(round(var_0.b.x)), -483f, -1349f)))));
}

