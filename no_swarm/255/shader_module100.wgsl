struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: Struct_3,
    e: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: Struct_3,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<u32, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_2));
    let var_1 = u_input.a;
    global0 = Struct_5(arg_1.x, !(!(!global0.c.a.xz)), global0.c, vec3<bool>(any(!vec3<bool>(global0.b.x, false, global0.e)), !arg_1.x, true), true);
    let var_2 = Struct_2(Struct_1(vec3<f32>(arg_0, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f * arg_0) + arg_0)), _wgslsmith_mod_i32(-33976i, ~countOneBits(1i)), select(firstLeadingBit(vec4<i32>(48876i, 7071i, -919i, -1i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(78446i, 8798i, -17931i, -22956i), vec4<i32>(47250i, 0i, -2147483647i, -2263i), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, 2147483647i), vec4<i32>(15115i, -5114i, 7078i, -1i), vec4<i32>(0i, 7189i, 28219i, -23100i))), global0.b.x)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -561f) * var_2.a.a.xx)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.a.a.yx)) * var_2.a.a.yy))), _wgslsmith_dot_vec3_u32(~(~(~u_input.b)), var_1.xyw), 1u, global0.c, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(636u, u_input.b.x)), vec2<u32>(u_input.b.x, _wgslsmith_add_u32(5529u, 2004u))), u_input.c));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.a.a))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.a.a + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_2.a.a, vec3<f32>(arg_2, var_2.a.a.x, -1778f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1737f, -1069f) + var_2.a.a), var_2.a.a))), var_3.d.a.x & select(false || global0.d.x, true, any(vec2<bool>(global0.c.a.x, false))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<f32> {
    let var_0 = any(vec4<bool>(false, !any(vec3<bool>(global0.e, true, false)) | !(1i > arg_0.b), true, global0.a));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -479f) - -896f), _wgslsmith_f_op_f32(f32(-1f) * -427f), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)), _wgslsmith_f_op_vec3_f32(func_3(arg_0.a.x, select(global0.b, global0.d.xy, global0.b), _wgslsmith_f_op_f32(f32(-1f) * -1268f))).x)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_5(false, vec2<bool>(global0.c.a.x, global0.e), global0.c, !global0.d, true);
    global0 = Struct_5(false, vec2<bool>(all(select(vec3<bool>(true, global0.d.x, global0.a), select(vec3<bool>(false, global0.b.x, global0.c.a.x), global0.c.a.yxw, false), select(vec3<bool>(global0.e, false, true), vec3<bool>(true, true, true), global0.d))), global0.e), global0.c, global0.c.a.zyx, false);
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-591f, 1002f, 761f) * vec3<f32>(-2675f, 1666f, -811f)) * _wgslsmith_f_op_vec3_f32(func_3(346f, global0.c.a.wz, 912f))), _wgslsmith_dot_vec3_i32(vec3<i32>(19299i, -2147483647i, -1i), vec3<i32>(2147483647i, -16397i, 19353i)) << (33918u % 32u), _wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, 0i, -28682i, 36135i)), vec4<i32>(1i, 1i, 1i, 1i))), countOneBits(vec3<i32>(-12183i, 2147483647i, -10470i) >> (vec3<u32>(u_input.b.x, 1u, 1u) % vec3<u32>(32u))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(332f - _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec3<f32>(215f, -2208f, 579f), 0i, vec4<i32>(-21631i, -26226i, 0i, 1i)), vec3<i32>(-39901i, 1i, 1i))).x), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2055f), global0.d.yz, _wgslsmith_f_op_f32(min(318f, 434f)))).x, _wgslsmith_f_op_f32(f32(-1f) * -2279f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(-672f, vec2<bool>(global0.e, true), 752f)).x * _wgslsmith_f_op_f32(-483f - 1304f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-815f, -1054f, 1f, 1604f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1842f, -1000f, -967f, 692f)))));
    global0 = Struct_5(true, vec2<bool>(global0.e, global0.a), Struct_3(select(select(select(global0.c.a, global0.c.a, vec4<bool>(global0.d.x, global0.b.x, global0.a, false)), !global0.c.a, global0.e), global0.c.a, !(!global0.e))), select(select(!global0.d, global0.c.a.yyy, vec3<bool>(var_0.x <= -812f, var_0.x >= 1546f, true)), global0.c.a.wyy, global0.b.x), all(select(select(global0.d.xy, select(vec2<bool>(false, global0.e), vec2<bool>(global0.a, global0.a), global0.c.a.yz), select(vec2<bool>(false, global0.d.x), global0.b, vec2<bool>(true, global0.d.x))), vec2<bool>(global0.d.x, any(vec4<bool>(true, false, true, false))), vec2<bool>(!global0.e, all(vec3<bool>(global0.c.a.x, global0.b.x, false))))));
    global1 = array<u32, 25>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-376f * -2022f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_3(-709f, global0.c.a.yz, var_0.x)).x, _wgslsmith_f_op_f32(-var_0.x))), -339f))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(abs(_wgslsmith_div_i32(0i, 27767i)), _wgslsmith_clamp_i32(i32(-1i) * -1i, ~(-12904i), ~(-1i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-22286i, -2147483647i, 23031i), vec3<i32>(0i, 1i, 2147483647i)), 1i)), _wgslsmith_sub_vec4_i32(firstTrailingBit(select(vec4<i32>(-9062i, -19397i, -3434i, 26724i), -vec4<i32>(-30439i, -14940i, 0i, -9663i), true)), vec4<i32>(1i, 1i, 1i, 1i) | select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, 36916i, 0i, -1i), global0.c.a)));
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<i32>(arg_3.b, ~(-2012i), 10285i);
    let var_1 = reverseBits(arg_2.a.b);
    global0 = Struct_5(true, arg_0.b, Struct_3(!select(select(vec4<bool>(global0.c.a.x, global0.d.x, global0.d.x, arg_0.c.a.x), vec4<bool>(true, true, arg_0.d.x, false), global0.b.x), global0.c.a, global0.b.x)), arg_0.d, all(!arg_0.c.a.xx));
    var var_2 = func_2();
    let var_3 = false;
    return _wgslsmith_f_op_f32(f32(-1f) * -1578f);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    let var_0 = true;
    global1 = array<u32, 25>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.a) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -932f))), -abs(arg_1.a.b), -select(vec4<i32>(1i, -2147483647i, arg_1.a.b, 896i), reverseBits(vec4<i32>(arg_2, -26237i, 47952i, arg_1.a.c.x)), global0.e));
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -490f);
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(!global0.d.x, global0.b, Struct_3(global0.c.a), global0.d, false);
    var var_0 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_5(global0.b.x, vec2<bool>(true, global0.a), global0.c, global0.c.a.wxy, true), 1u, Struct_2(Struct_1(vec3<f32>(900f, -920f, 488f), -1i, vec4<i32>(-13456i, 47i, -2147483647i, -36627i))), Struct_1(vec3<f32>(1000f, 1169f, 2256f), 1i, vec4<i32>(-2147483647i, 0i, -10474i, 1i)))), _wgslsmith_f_op_f32(-1002f + -1251f), _wgslsmith_f_op_vec3_f32(func_3(2194f, global0.d.zz, 1000f)).x), max(-15376i, ~0i), vec4<i32>(-1i) * -vec4<i32>(23657i, 2147483647i, -21356i, 2147483647i))), -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(reverseBits(79001i), 0i, -2147483647i), 1i));
    var var_1 = ~(-(~vec4<i32>(-22479i, -9342i, 28823i, -2147483647i)));
    let var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -firstLeadingBit(vec3<i32>(var_2.b, -30712i, var_1.x) << (abs(u_input.b) % vec3<u32>(32u))), _wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, true)));
}

