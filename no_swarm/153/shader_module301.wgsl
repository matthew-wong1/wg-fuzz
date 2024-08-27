struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5) -> vec3<f32> {
    global0 = -11910i;
    global0 = -arg_1.c.x;
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_i32(1i, ~_wgslsmith_clamp_i32(0i & var_0.c.x, -firstTrailingBit(-64653i), ~(i32(-1i) * -1i)));
    var var_2 = vec2<bool>(arg_1.a, false);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1713f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(631f * -183f), _wgslsmith_div_f32(-366f, -1490f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-409f + -788f), _wgslsmith_f_op_f32(-249f - -213f)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-391f, 585f, _wgslsmith_f_op_f32(438f * -738f)))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-591f, 1830f, _wgslsmith_f_op_f32(f32(-1f) * -730f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(127f, 1646f, 281f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-213f, -1962f, 109f), vec3<f32>(574f, 177f, -1767f))))))));
    let var_1 = any(vec3<bool>(true, true, true));
    global0 = 23400i;
    let var_2 = u_input.a.x << (~25573u % 32u);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(4294967295u, 48424u, u_input.a.x, var_2), Struct_5(true, 75345u, vec4<i32>(1i, 1i, 1i, 1i)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a)))), _wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -710f, var_0.a.x) - vec3<f32>(var_0.a.x, 1683f, var_0.a.x)))))));
    return Struct_2(select(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(10030i, -1i, -40195i, -1i), vec4<i32>(25031i, 0i, 29433i, 402i), vec4<i32>(2147483647i, 1i, 0i, 20147i))), vec4<i32>(1i, 1i, 1i, 1i), var_1) << (select(~(~vec4<u32>(4294967295u, 20159u, var_2, 51595u)), vec4<u32>(31697u, var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(25342u, var_2, var_2, var_2), vec4<u32>(var_2, u_input.a.x, 110843u, 34368u)), ~u_input.a.x), !(!vec4<bool>(true, false, true, var_1))) % vec4<u32>(32u)), ~0u, u_input.a.x, select(-15172i, 1i, true), Struct_1(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(var_1, var_1, false)), select(vec3<bool>(false, false, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, false, true)), false)));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.yz));
    var var_1 = func_2();
    var var_2 = var_1.e;
    var var_3 = vec2<bool>(any(var_1.e.a.xx), false);
    var_2 = func_2().e;
    return vec3<bool>(arg_0.a.x <= -240f, false, _wgslsmith_div_f32(357f, arg_0.a.x) >= _wgslsmith_f_op_f32(-1155f - -721f));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> vec2<i32> {
    var var_0 = func_2();
    global0 = -15496i;
    var_0 = func_2();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(_wgslsmith_mod_u32(4294967295u, var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(65921u, var_0.c, 48264u), vec3<u32>(var_0.c, 37632u, var_0.c)), u_input.b << (u_input.b % 32u), _wgslsmith_mod_u32(u_input.a.x, 4294967295u)), Struct_5(var_0.e.a.x, ~u_input.a.x, select(var_0.a, vec4<i32>(var_0.d, var_0.a.x, -44687i, 1i), vec4<bool>(true, var_0.e.a.x, false, arg_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-807f, -2113f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1356f, -2114f) - vec3<f32>(-617f, 244f, 734f)))), all(vec4<bool>(var_0.e.a.x, arg_0.x, var_0.e.a.x, var_0.e.a.x)) && arg_0.x)));
    return vec2<i32>(-6393i, select(arg_1, _wgslsmith_mult_i32((var_0.d & arg_1) & ~arg_1, ~(-var_0.a.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<bool>(true && any(func_1(Struct_3(vec3<f32>(868f, -1146f, -1000f)))), true, any(vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), true))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, countOneBits(-2147483647i), abs(-1i)), select(-vec3<i32>(-1i, -38789i, -1i), func_2().a.xyw, false)) | ~1i);
    let var_1 = !vec4<bool>(true, all(vec4<bool>(false, true, true, true)), false, true);
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec4_i32(countOneBits(firstLeadingBit(reverseBits(vec4<i32>(-2147483647i, 1i, var_0.x, var_0.x)))), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-48167i, var_0.x, var_0.x, var_0.x)) | -vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i)));
    var var_3 = 1000f;
    var var_4 = u_input.a;
    global0 = abs(~var_0.x);
    var_4 = select(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, reverseBits(vec2<u32>(var_4.x, 0u))), ~u_input.a.x), u_input.a, any(var_1.xxx));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, max(-(~(vec4<i32>(14213i, 2147483647i, 19156i, -2147483647i) | vec4<i32>(var_2.x, -70402i, var_0.x, var_2.x))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 1i, var_2.x, 18951i), vec4<i32>(2147483647i, 20716i, var_0.x, var_2.x) | vec4<i32>(var_0.x, -1i, var_0.x, var_2.x)), min(vec4<i32>(var_2.x, 39960i, var_0.x, 38980i), select(vec4<i32>(0i, var_0.x, 21320i, var_0.x), vec4<i32>(26266i, var_2.x, var_2.x, 2147483647i), var_1.x)))));
}

