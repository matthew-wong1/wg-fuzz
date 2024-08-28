struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(34248u, 4294967295u);

var<private> global1: vec4<u32> = vec4<u32>(0u, 4294967295u, 37987u, 4294967295u);

var<private> global2: bool = true;

var<private> global3: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-34716i, -11117i), vec2<i32>(1291i, 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(-14544i, 69419i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), 41359i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, -6980i), vec2<i32>(34500i, 2147483647i), vec2<i32>(16718i, -25770i), vec2<i32>(0i, 5785i), vec2<i32>(-42831i, -80826i), vec2<i32>(-15067i, 23992i), vec2<i32>(0i, 9567i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = !(any(arg_2.xz) == !(!arg_1.d));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, 1131f) + -757f), _wgslsmith_f_op_f32(select(-527f, arg_1.b.x, arg_1.d)), -865f))), _wgslsmith_f_op_vec3_f32(round(arg_1.b.zwx)));
    let var_2 = min(~(-firstTrailingBit(~vec3<i32>(-2147483647i, arg_0, arg_0))), select(countOneBits(_wgslsmith_add_vec3_i32(arg_1.a.ywz, arg_1.a.zzy)), -arg_1.a.yyx, select(arg_2, !(!arg_2), select(arg_2, arg_2, true))));
    global1 = abs(~u_input.c);
    let var_3 = arg_2.x | (_wgslsmith_add_u32(38379u, arg_1.c.x) < ~u_input.b);
    return arg_1.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global0 = _wgslsmith_mult_vec2_u32(min(vec2<u32>(global0.x, ~u_input.a), ~u_input.c.yw), min(vec2<u32>(49065u, arg_1.c.x), vec2<u32>(0u, arg_1.c.x)) & ~global1.yw) | vec2<u32>(_wgslsmith_mod_u32(~(~u_input.c.x), abs(1u)), arg_1.c.x);
    global2 = !arg_1.d;
    global0 = ~vec2<u32>(abs(20345u), 1u);
    let var_0 = arg_0.x;
    global2 = any(vec3<bool>(true, true, arg_1.d));
    return select(vec2<bool>(!arg_1.d, all(vec4<bool>(arg_1.d, any(vec3<bool>(false, arg_1.d, true)), true & arg_1.d, true))), vec2<bool>(all(vec3<bool>(!arg_1.d, !arg_1.d, arg_1.d)), !all(vec3<bool>(arg_1.d, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f * arg_2)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(388f, 641f))) > _wgslsmith_f_op_f32(1230f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) + _wgslsmith_f_op_f32(round(arg_2)))));
}

fn func_1() -> f32 {
    var var_0 = func_3(vec4<f32>(-1706f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1194f + -150f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f) + -1562f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-117f - -1226f))) * 424f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f)) + _wgslsmith_f_op_f32(step(1000f, -1224f)))), Struct_1(min(vec4<i32>(min(u_input.d, u_input.d), u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d), 93270i), func_2(u_input.d, Struct_1(vec4<i32>(1i, -1i, 11987i, 6431i), vec4<f32>(-929f, -450f, 842f, 644f), vec2<u32>(46351u, global1.x), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(619f, -235f), _wgslsmith_f_op_f32(floor(-252f)), _wgslsmith_f_op_f32(ceil(1350f)), _wgslsmith_f_op_f32(f32(-1f) * -256f)))), vec2<u32>(~(4834u >> (0u % 32u)), global1.x), true), 1000f);
    let var_1 = ~(~(u_input.c.zxz ^ vec3<u32>(global0.x, global0.x, global0.x))) << (u_input.c.wzz % vec3<u32>(32u));
    var_0 = vec2<bool>(any(vec2<bool>(true, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)) | var_0.x)), var_0.x);
    var var_2 = true;
    let var_3 = abs(-11348i);
    return -2574f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 15>();
    var var_0 = Struct_2(Struct_1(vec4<i32>(u_input.d, u_input.d, -1i, ~(-u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f - -1056f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f - 2177f))), ~(~vec2<u32>(1u, 1u) << (u_input.c.yz % vec2<u32>(32u))), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), ~_wgslsmith_div_u32(1u, global1.x), -_wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, abs(u_input.d), u_input.d), 20304i), select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, func_3(vec4<f32>(201f, -1719f, -235f, -1106f), Struct_1(vec4<i32>(10417i, 0i, u_input.d, u_input.d), vec4<f32>(372f, 134f, -539f, 1000f), vec2<u32>(u_input.c.x, global1.x), false), 998f).x, all(vec3<bool>(false, true, false)), u_input.d < -1i), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(941f, -258f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-547f, 674f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2531f, 1365f))), func_3(vec4<f32>(-433f, -505f, 1667f, 325f), Struct_1(vec4<i32>(u_input.d, -17002i, u_input.d, -26919i), vec4<f32>(-601f, -748f, 213f, -424f), vec2<u32>(global0.x, 1u), true), _wgslsmith_f_op_f32(-470f * -1325f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1397f, -750f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), vec2<bool>(true, true)))));
    let var_1 = abs(global1.x);
    let var_2 = Struct_2(var_0.a, ~_wgslsmith_mult_u32(4294967295u, global0.x), firstTrailingBit(abs(var_0.a.a.x ^ _wgslsmith_dot_vec3_i32(var_0.a.a.xyz, vec3<i32>(var_0.a.a.x, u_input.d, -1i)))), select(var_0.d, !var_0.d, !select(var_0.d, vec4<bool>(var_0.a.d, false, false, false), var_0.a.d)), vec2<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.e.x, -1000f)) + _wgslsmith_f_op_f32(sign(463f))), var_0.a.b.x, var_0.d.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.b.wyx) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.a.b.wxy), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(var_2.a.b.xwx, var_0.a.b.wzy)), vec3<f32>(-963f, var_0.e.x, 2150f))), !(global1.x <= global1.x))))));
    var var_4 = var_2.a.c.x | select(global1.x, 4294967295u, any(vec4<bool>(true, false, var_2.a.d, all(var_0.d.yww))));
    var var_5 = Struct_1(var_0.a.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1806f, 666f), _wgslsmith_f_op_f32(1025f + var_0.e.x), var_3.x, _wgslsmith_div_f32(var_0.a.b.x, 543f))))), firstTrailingBit(max(vec2<u32>(var_2.a.c.x, global0.x), vec2<u32>(global1.x, global1.x)) ^ firstTrailingBit(select(u_input.c.zx, vec2<u32>(u_input.b, var_2.b), true))), all(!(!vec2<bool>(var_0.d.x, var_2.a.d))));
    var var_6 = var_0.d.ywx;
    let var_7 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, 321f, -912f, var_3.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.b.x, var_5.b.x, var_2.a.b.x, var_2.a.b.x) + var_2.a.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1735f, var_0.e.x, 403f, -2472f)) * var_5.b)))), -11443i, vec4<bool>(any(vec3<bool>(var_5.d, false, u_input.b < global0.x)), true, var_1 >= _wgslsmith_mult_u32(~var_5.c.x, ~var_1), var_2.a.d), !(!(!vec2<bool>(var_6.x, var_6.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(-1i | _wgslsmith_div_i32(var_7.b, abs(var_5.a.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_7.a.yw)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-181f)), _wgslsmith_f_op_f32(708f * -1217f))))), var_2.e.x);
}

