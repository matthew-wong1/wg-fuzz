struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(21534i, -53795i, 2147483647i, 25336i), vec4<f32>(312f, 1000f, -1000f, 627f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_add_i32(0i, ~u_input.a.x), -global0.a.x, _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(global0.a.xxz, vec3<i32>(2147483647i, -2147483647i, global0.a.x)), 11715i), global0.a.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1343f)), _wgslsmith_f_op_f32(floor(global0.b.x)), global1.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), 1183f)))));
    var var_1 = var_0.a;
    return Struct_1(u_input.a, global1.b);
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    global1 = func_2();
    let var_0 = any(vec4<bool>(false, true, true, true));
    let var_1 = Struct_5(vec4<bool>(var_0, true, var_0, true), Struct_2(all(vec4<bool>(true, true, false, any(vec3<bool>(false, var_0, true)))), -1055f, u_input.e.x, select(select(!vec2<bool>(true, var_0), !vec2<bool>(var_0, false), true), !vec2<bool>(true, var_0), all(vec4<bool>(var_0, var_0, var_0, false)) | all(vec2<bool>(var_0, var_0)))), global1.a);
    global1 = func_2();
    let var_2 = vec3<bool>(true, all(!vec4<bool>(true, var_1.b.a, var_1.a.x, var_1.b.a || var_0)), var_0);
    return !(!(!vec2<bool>(false, all(var_1.a.xz))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = Struct_1(-vec4<i32>(~2147483647i, global1.a.x, reverseBits(-22974i), select(11815i, u_input.a.x, false)) | _wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(-49061i, 1i, global1.a.x, -5291i)), vec4<i32>(global1.a.x, 1i, global0.a.x, global1.a.x) << (abs(vec4<u32>(37752u, u_input.c, u_input.b.x, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.b))));
    let var_0 = _wgslsmith_div_f32(-1334f, -1000f);
    let var_1 = func_2();
    var var_2 = func_2().a.x;
    global1 = var_1;
    return Struct_2(any(vec2<bool>(true, true)), 1229f, 0i, select(func_3(Struct_3(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), global1.b, 34337u, _wgslsmith_f_op_vec3_f32(-global1.b.yzx))), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> Struct_4 {
    let var_0 = func_2().b.zzx;
    var var_1 = -max(vec2<i32>(_wgslsmith_add_i32(global1.a.x, reverseBits(global0.a.x)), abs(u_input.d)), max(-(global0.a.wy << (vec2<u32>(arg_2.c, arg_2.a.x) % vec2<u32>(32u))), ~countOneBits(global1.a.xz)));
    var var_2 = select(!vec2<bool>(true, ~u_input.b.x > 24231u), !arg_1.d, false);
    var var_3 = u_input.e;
    var_3 = global1.a;
    return Struct_4(abs(56602u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(true, false, true), func_1(-1722f), Struct_3(~u_input.b, _wgslsmith_f_op_vec4_f32(floor(global0.b)), 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1515f, global1.b.x, global1.b.x)) + global1.b.zyy))), Struct_3(~vec3<u32>(1u, ~91143u, u_input.c), _wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_div_u32(u_input.b.x, 1u), vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.b.x)), global1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.x))))));
    let var_1 = ~abs(_wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(44428u, var_0.a) << (vec2<u32>(var_0.a, 91285u) % vec2<u32>(32u))));
    let var_2 = var_0.a == u_input.b.x;
    var var_3 = Struct_5(!select(select(!vec4<bool>(var_2, var_2, false, false), select(vec4<bool>(false, true, var_2, var_2), vec4<bool>(false, true, false, true), var_2), select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(true, var_2, false, true), vec4<bool>(false, true, var_2, false))), !(!vec4<bool>(var_2, var_2, var_2, true)), select(select(vec4<bool>(var_2, false, true, var_2), vec4<bool>(true, false, var_2, var_2), var_2), select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(false, var_2, var_2, false), vec4<bool>(var_2, var_2, var_2, false)), vec4<bool>(true, true, var_2, false))), func_1(global0.b.x), ~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(global1.a.x, -43379i), i32(-1i) * -2147483647i), abs(10440i), _wgslsmith_mod_i32(~14697i, global0.a.x), i32(-1i) * -global1.a.x));
    global0 = Struct_1(-(~max(var_3.c, vec4<i32>(26602i, global1.a.x, global1.a.x, global1.a.x))) & select(-vec4<i32>(var_3.b.c, 52056i, global0.a.x, 69625i), _wgslsmith_sub_vec4_i32(vec4<i32>(28575i, 1i, 0i, u_input.a.x), var_3.c & vec4<i32>(-14395i, u_input.d, global1.a.x, global0.a.x)), var_3.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global1.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, -624f, -218f, -1005f), vec4<f32>(global1.b.x, var_3.b.b, -1849f, 323f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -579f, 928f, -488f) - global0.b)))));
    var var_4 = Struct_3(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 54294u, var_1.x, var_0.a), vec4<u32>(var_1.x, var_1.x, var_0.a, 32054u)), vec4<u32>(7382u, var_0.a, 1u, 39729u)), var_0.a, abs(0u))), global0.b, min(1u, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(32426u, var_0.a), func_4(true, var_3.b, Struct_3(u_input.b, global0.b, 12169u, vec3<f32>(var_3.b.b, global0.b.x, global0.b.x)), Struct_3(vec3<u32>(69834u, 45533u, var_0.a), vec4<f32>(global1.b.x, 157f, var_3.b.b, var_3.b.b), 15305u, global1.b.yww)).a)), _wgslsmith_f_op_vec3_f32(-global1.b.yyz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(countOneBits(select(global1.a & vec4<i32>(global1.a.x, -1i, u_input.e.x, 16206i), var_3.c, !var_3.b.a)), _wgslsmith_sub_vec4_i32(global0.a, _wgslsmith_sub_vec4_i32(global0.a, ~global1.a)), -_wgslsmith_add_vec4_i32(global1.a ^ vec4<i32>(u_input.d, 3977i, u_input.e.x, global1.a.x), max(var_3.c, vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.d)))), func_2().a.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_4.a.x, u_input.c, 73480u)), vec4<u32>(var_4.c, u_input.c, u_input.b.x, var_0.a)), firstLeadingBit(firstLeadingBit(vec4<u32>(116976u, var_0.a, var_4.a.x, var_0.a)))) % 32u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1056f, -1542f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(119f, var_4.d.x))))))));
}

