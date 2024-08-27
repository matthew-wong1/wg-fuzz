struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-46019i, -19007i, 20182i, 2147483647i), vec4<i32>(2147483647i, 17082i, 18864i, 1i), vec4<i32>(28281i, i32(-2147483648), -50432i, 509i), vec4<i32>(1i, 2356i, 0i, -1i), vec4<i32>(37454i, -1i, -1i, 2147483647i), vec4<i32>(36313i, -35391i, -17627i, 0i), vec4<i32>(1i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 2147483647i, i32(-2147483648)), vec4<i32>(42136i, -1i, i32(-2147483648), -9728i), vec4<i32>(1i, -1i, -1i, i32(-2147483648)), vec4<i32>(34001i, i32(-2147483648), -15936i, -80996i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 15170i), vec4<i32>(1i, 1i, 12003i, -11944i), vec4<i32>(-20982i, i32(-2147483648), -13333i, i32(-2147483648)));

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<f32>, 21>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    let var_0 = !(!(global1.x & global1.x));
    global2 = array<vec3<f32>, 21>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-732f, 1226f)) - _wgslsmith_f_op_f32(427f - global3.a)) + -1000f))), !select(global1.yy, select(vec2<bool>(false, global1.x), !global1.zx, true), true), vec4<bool>(var_0, false, var_0, true));
    var var_2 = Struct_1(global3.a, min(global3.b >> (~(~1u) % 32u), _wgslsmith_sub_i32(1i ^ u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global3.b), select(vec3<i32>(41626i, u_input.a.x, 9755i), vec3<i32>(-26320i, u_input.a.x, global3.b), vec3<bool>(var_0, global1.x, true))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(671f, -493f))), var_2.b);
    return _wgslsmith_add_vec3_i32(firstTrailingBit(firstLeadingBit(select(min(vec3<i32>(-2147483647i, 18294i, var_2.b), vec3<i32>(u_input.a.x, global3.b, global3.b)), min(vec3<i32>(u_input.a.x, -5669i, -1i), vec3<i32>(-2147483647i, u_input.a.x, -3712i)), vec3<bool>(var_1.c.x, false, false)))), min(-vec3<i32>(65299i, -1142i >> (0u % 32u), 37433i), _wgslsmith_div_vec3_i32(~(vec3<i32>(global3.b, global3.b, global3.b) & vec3<i32>(-47967i, var_2.b, global3.b)), -(vec3<i32>(u_input.a.x, u_input.a.x, global3.b) ^ vec3<i32>(global3.b, 1i, global3.b)))));
}

fn func_4(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = ~65532i;
    let var_1 = Struct_1(global3.a, arg_1);
    var var_2 = -(countOneBits(global3.b) << (4294967295u % 32u));
    let var_3 = var_1.b;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-382f * var_1.a) - -1302f), _wgslsmith_f_op_f32(1433f - -141f)) + _wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(-var_1.a))), vec2<bool>(true, arg_0), vec4<bool>(true, all(!select(vec4<bool>(arg_0, true, global1.x, global1.x), vec4<bool>(arg_0, arg_0, arg_0, global1.x), vec4<bool>(arg_0, arg_0, false, global1.x))), -1i < _wgslsmith_mult_i32(-u_input.a.x, 12148i), all(vec3<bool>(true || global1.x, true, true))));
    return ~arg_1;
}

fn func_2() -> i32 {
    var var_0 = vec4<f32>(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-924f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a - global3.a)))), 953f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(353f + _wgslsmith_f_op_f32(trunc(global3.a))))));
    global3 = Struct_1(global3.a, func_4(any(!select(global1.xx, vec2<bool>(global1.x, true), global1.zz)), _wgslsmith_dot_vec3_i32(func_3() ^ (vec3<i32>(global3.b, 2147483647i, -23891i) | vec3<i32>(2147483647i, global3.b, global3.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 15071i, global3.b), vec3<i32>(0i, 1i, global3.b)))));
    var var_1 = any(!select(select(vec4<bool>(global1.x, true, false, true), vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, select(false, false, global1.x), !global1.x), !(!vec4<bool>(global1.x, false, false, true))));
    global1 = vec3<bool>(!all(select(!vec4<bool>(global1.x, true, global1.x, global1.x), !vec4<bool>(true, global1.x, true, true), !global1.x)), true, true);
    var var_2 = select(!vec3<bool>(!select(true, global1.x, false), all(vec3<bool>(true, true, global1.x)), false), select(vec3<bool>(global3.b < (global3.b | global3.b), true, true), select(vec3<bool>(all(vec3<bool>(true, global1.x, true)), any(vec3<bool>(false, global1.x, global1.x)), false), select(!vec3<bool>(false, global1.x, false), vec3<bool>(false, true, true), true), true), vec3<bool>(false, true && all(vec2<bool>(global1.x, false)), false)), global1.x);
    return global3.b;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_div_i32(-42292i, -_wgslsmith_clamp_i32(1i, ~func_2(), 1i));
    let var_2 = 735f;
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -min(u_input.a ^ u_input.a, u_input.a), vec2<i32>(~min(~u_input.a.x, ~global3.b), _wgslsmith_add_i32((u_input.a.x << (0u % 32u)) & -1i, -2147483647i)));
    global3 = Struct_1(-422f, _wgslsmith_mod_i32(global3.b, global3.b));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-789f)) - 975f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + -348f);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global1 = select(!arg_0.c.zxy, arg_0.c.zzy, all(vec4<bool>(all(select(arg_0.c.yyx, arg_0.c.xwx, true)), true, all(vec4<bool>(true, global1.x, global1.x, false)), global3.b > abs(-2147483647i))));
    let var_0 = Struct_2(Struct_1(arg_0.a, select(~5748i >> (1u % 32u), u_input.a.x, any(select(vec4<bool>(global1.x, global1.x, arg_0.b.x, global1.x), arg_0.c, vec4<bool>(arg_0.c.x, global1.x, false, true))))), _wgslsmith_f_op_f32(arg_0.a - 246f));
    var var_1 = ~(~vec3<i32>(max(u_input.a.x, i32(-1i) * -51967i), select(i32(-1i) * -27205i, global3.b, global1.x), 1i));
    let var_2 = arg_0.c;
    global0 = array<vec4<i32>, 14>();
    return var_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = arg_2.c;
    global3 = arg_0.a;
    let var_2 = Struct_2(func_5(arg_2).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) - -594f));
    let var_3 = false;
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a), firstLeadingBit(var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(func_5(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, global1.x, true, false))), _wgslsmith_f_op_f32(max(-1096f, 788f))), vec2<bool>(false, true), vec4<bool>(global1.x, global1.x, global1.x, all(global1.zz)))), ~vec2<u32>(4294967295u, _wgslsmith_sub_u32(~31u, countOneBits(35042u))), Struct_3(global3.a, !global1.yx, vec4<bool>(true, true, true, true)));
    let var_0 = 17103u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -437f);
    var var_2 = (-2147483647i << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0, var_0, ~var_0), ~(~0u)) % 32u)) << (firstLeadingBit(~(~(~var_0))) % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.a, _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(sign(-1995f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(firstLeadingBit(abs(vec4<u32>(0u, var_0, 30524u, 1u)))), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_0), 7430u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_0), _wgslsmith_div_u32(23012u, var_0))), ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 4294967295u, var_0, var_0), vec4<u32>(var_0, var_0, 0u, 81322u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0, var_0), vec3<u32>(var_0, var_0, var_0)), 1u));
}

