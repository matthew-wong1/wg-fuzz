struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -509f;

var<private> global1: vec2<f32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-776f - _wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2695f - global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), -920f))));
    global0 = var_0.x;
    return vec2<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 12210u), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(73467u, 16752u))), _wgslsmith_mult_u32(~abs(_wgslsmith_mod_u32(40202u, 11038u)), (_wgslsmith_dot_vec3_u32(vec3<u32>(9987u, 1u, 4294967295u), vec3<u32>(0u, 1u, 48415u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(26456u, 10598u), vec2<u32>(56752u, 1u))) & 1u));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-global1.x);
    let var_0 = _wgslsmith_div_vec2_u32(~func_3(all(vec4<bool>(true, true, true, true))), reverseBits(vec2<u32>(1u, 1u)) | firstTrailingBit(vec2<u32>(1u, 1u)));
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(19747u, 57487u, var_0.x, var_0.x), ~vec4<u32>(var_0.x, 37888u, var_0.x, 36683u))), ~1u);
    global0 = global1.x;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-global1.x), Struct_3(vec3<bool>(true, select(true, false, true), true), Struct_1(vec2<u32>(~15725u, _wgslsmith_sub_u32(var_1, var_1)), true, u_input.a >> (var_0 % vec2<u32>(32u)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), ~var_0), Struct_1(vec2<u32>(var_1, var_0.x), true, ~(u_input.a ^ vec2<i32>(34918i, u_input.b)), vec2<bool>(true, true), var_0), vec3<f32>(_wgslsmith_f_op_f32(2484f * _wgslsmith_f_op_f32(select(global1.x, global1.x, true))), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + global1.x)), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(18301u, 18824u), var_0, vec2<u32>(var_0.x, var_1)), ~vec2<u32>(var_0.x, 4294967295u), vec2<u32>(40182u, var_1) & vec2<u32>(19005u, var_0.x)), all(vec4<bool>(false, false, false, true)), vec2<i32>(-1i, -13234i), vec2<bool>(true, true), ~(~var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1277f))), 258f, Struct_3(vec3<bool>(true, true, true), Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 0u), var_0), _wgslsmith_div_vec2_u32(var_0, var_0)), true, ~(-u_input.a), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<u32>(~4294967295u, var_1)), Struct_1(~vec2<u32>(var_1, 80883u), any(vec4<bool>(false, false, false, false)), ~(-vec2<i32>(-823i, 2147483647i)), vec2<bool>(true, true), ~var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -946f, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1064f, 104f))))), Struct_1(var_0, !(var_0.x < var_0.x), reverseBits(vec2<i32>(-38801i, u_input.a.x) ^ u_input.a), vec2<bool>(var_0.x <= 3247u, false), reverseBits(vec2<u32>(2661u, 4294967295u) ^ var_0))));
    return var_2.e.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    var var_0 = -675f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1247f * arg_3.b))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - _wgslsmith_f_op_f32(sign(-657f)))));
    let var_2 = _wgslsmith_mod_vec2_u32(~(_wgslsmith_sub_vec2_u32(firstLeadingBit(arg_3.a.a), arg_3.a.e) ^ ~arg_3.a.e), ~_wgslsmith_mod_vec2_u32(max(firstTrailingBit(vec2<u32>(arg_2.e.e.x, 34297u)), vec2<u32>(31675u, 61436u)), ~_wgslsmith_div_vec2_u32(arg_2.e.a, vec2<u32>(arg_1.e.x, 0u))));
    var var_3 = 447f;
    return countOneBits(1u);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.a.c, vec2<i32>(~arg_1.a.c.x, 1i)), abs(arg_1.a.c)) | _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.a, countOneBits(_wgslsmith_div_vec2_i32(u_input.a, arg_1.a.c))), -vec2<i32>(arg_1.a.c.x, ~arg_1.a.c.x));
    let var_1 = vec3<u32>(~(~93515u), 0u, func_4(func_2(), func_2(), Struct_3(select(select(vec3<bool>(arg_0, arg_1.a.b, arg_1.a.d.x), vec3<bool>(arg_1.a.d.x, arg_1.a.d.x, true), arg_0), select(vec3<bool>(false, arg_1.a.b, true), vec3<bool>(arg_1.a.b, true, true), vec3<bool>(arg_0, false, false)), select(true, arg_1.a.d.x, true)), arg_1.a, func_2(), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b, arg_1.b, global1.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-316f, 606f, 318f), vec3<f32>(arg_1.b, 560f, -341f))))), Struct_1(vec2<u32>(arg_1.a.e.x, arg_1.a.a.x), 0u <= arg_1.a.a.x, vec2<i32>(var_0.x, u_input.b), select(arg_1.a.d, vec2<bool>(arg_0, false), arg_1.a.d), arg_1.a.e)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), arg_0, min(vec2<i32>(-1i, arg_1.a.c.x), u_input.a), vec2<bool>(arg_1.a.b, false), ~vec2<u32>(4294967295u, arg_1.a.a.x)), 989f)));
    global0 = -740f;
    let var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.x, global1.x) * vec3<f32>(global1.x, 1733f, -1227f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -178f, global1.x)), false))))));
    return max(vec2<u32>(arg_1.a.a.x, _wgslsmith_mult_u32(reverseBits(1u), var_2.a.x)), arg_1.a.a) | var_1.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(ceil(global1.x)));
    var var_1 = Struct_4(-107f, Struct_3(vec3<bool>(true, true, all(vec4<bool>(true, true, false, true))), Struct_1(vec2<u32>(1u, 1u), !select(false, false, true), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, 0i), vec3<i32>(u_input.a.x, -2147483647i, 0i)), -2147483647i), vec2<bool>(true, true), select(select(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 22293u), false), func_1(true, Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), false, vec2<i32>(0i, 10797i), vec2<bool>(true, false), vec2<u32>(0u, 110533u)), global1.x)), func_2().b)), Struct_1(select(vec2<u32>(8514u, 0u), abs(vec2<u32>(1u, 1u)), true), true, u_input.a, select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<u32>(34905u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(43815u, 4294967295u, 29801u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(360f, 498f, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, global1.x, 1374f)))), Struct_1(vec2<u32>(~0u, ~0u), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), _wgslsmith_mult_vec2_i32(-u_input.a, vec2<i32>(6777i, 2147483647i)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec3<bool>(true, false, true))), func_1(true, Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), false, vec2<i32>(u_input.a.x, 1i), vec2<bool>(false, false), vec2<u32>(20950u, 13958u)), global1.x)))), _wgslsmith_f_op_f32(551f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-561f, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 558f)), true))), _wgslsmith_f_op_f32(-2333f * _wgslsmith_f_op_f32(2206f - _wgslsmith_f_op_f32(abs(204f)))), Struct_3(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true)), func_2(), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1087f, global1.x, 1348f))))), Struct_1(vec2<u32>(1u, 1u), true, u_input.a, func_2().d, min(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(101093u, 82781u), vec2<u32>(31373u, 1u))))));
    let var_2 = Struct_2(var_1.b.e, _wgslsmith_f_op_f32(abs(-1014f)));
    var var_3 = all(!select(!vec4<bool>(var_2.a.d.x, false, false, var_2.a.b), vec4<bool>(all(vec4<bool>(true, var_2.a.b, false, var_2.a.b)), false, func_2().d.x, true), !vec4<bool>(var_1.e.e.b, var_1.e.c.b, true, false)));
    var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b, global1.x)))))), var_1.b, _wgslsmith_f_op_f32(trunc(-442f)), _wgslsmith_f_op_f32(f32(-1f) * -650f), Struct_3(vec3<bool>(!(true && var_2.a.d.x), var_2.b != 1f, u_input.b <= u_input.b), func_2(), Struct_1(vec2<u32>(~4294967295u, ~16637u), var_2.a.d.x, _wgslsmith_div_vec2_i32(u_input.a, u_input.a), var_1.e.c.d, var_2.a.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-705f - var_2.b), _wgslsmith_f_op_f32(select(855f, 2048f, false)))), Struct_1(var_2.a.a, true && var_2.a.d.x, _wgslsmith_add_vec2_i32(vec2<i32>(7035i, 1i), u_input.a ^ var_1.e.e.c), var_1.b.b.d, _wgslsmith_sub_vec2_u32(~var_2.a.a, var_1.e.c.e))));
    var_1 = Struct_4(var_1.b.d.x, var_1.b, -116f, -726f, var_1.e);
    let var_4 = _wgslsmith_div_vec4_i32(min(~vec4<i32>(_wgslsmith_clamp_i32(var_2.a.c.x, -3958i, -13327i), -1i, 22421i, abs(-2147483647i)), -vec4<i32>(firstTrailingBit(var_2.a.c.x), var_2.a.c.x, u_input.a.x >> (7164u % 32u), var_1.e.b.c.x)), -_wgslsmith_mult_vec4_i32(~vec4<i32>(var_2.a.c.x, var_2.a.c.x, 1i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.e.e.c.x, 29032i, 2147483647i, var_1.e.e.c.x), vec4<i32>(var_2.a.c.x, -13879i, -1i, u_input.b))) & select(select(firstLeadingBit(vec4<i32>(-8974i, var_1.b.c.c.x, -2147483647i, var_1.e.c.c.x)), firstLeadingBit(vec4<i32>(u_input.a.x, -245i, u_input.b, 56402i)), false), select(vec4<i32>(45430i, 0i, u_input.b, 2147483647i), -vec4<i32>(-21080i, var_1.b.c.c.x, var_1.e.e.c.x, var_2.a.c.x), vec4<bool>(var_2.a.b, true, false, true)), !select(vec4<bool>(false, var_2.a.b, var_2.a.d.x, var_2.a.d.x), vec4<bool>(false, true, var_2.a.d.x, var_1.e.a.x), vec4<bool>(true, false, var_1.b.a.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_i32(var_2.a.c.x, _wgslsmith_mod_i32(u_input.b, 1i) >> (var_2.a.e.x % 32u))), 1u);
}

