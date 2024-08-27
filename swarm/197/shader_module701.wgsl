struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f), arg_0.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f * arg_0.x)))));
    var var_2 = vec2<i32>(~countOneBits(abs(-2147483647i)), 2483i) & _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(u_input.b, u_input.b) | vec2<i32>(-14455i, u_input.b)), abs(vec2<i32>(-9162i, -1i)) >> (vec2<u32>(_wgslsmith_add_u32(7266u, 16349u), ~u_input.d) % vec2<u32>(32u)));
    var var_3 = true;
    var var_4 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-853f + var_1.a) * _wgslsmith_f_op_f32(2165f + var_1.a)) - 1509f)) * arg_0.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), arg_2.a));
    var var_2 = var_1;
    var var_3 = _wgslsmith_mult_i32(48945i, max(u_input.b, -2147483647i)) < -(u_input.b ^ _wgslsmith_sub_i32(-u_input.b, -11611i));
    let var_4 = arg_2;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(593f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-550f, _wgslsmith_f_op_f32(var_4.a * -150f))))), _wgslsmith_f_op_f32(-var_4.a)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_0);
    global0 = ~48039u & ~u_input.e.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-vec4<i32>(-1i, arg_1, _wgslsmith_div_i32(-1i, -11776i), arg_1 >> (0u % 32u)), countOneBits(arg_1 & 51487i) > arg_1, Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(281f, arg_2.a, arg_2.a, arg_2.a) * vec4<f32>(arg_0, arg_2.a, -1000f, 103f))))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = ~(~((vec2<i32>(-15411i, 1i) << ((vec2<u32>(0u, 41612u) | vec2<u32>(arg_0.x, arg_0.x)) % vec2<u32>(32u))) & vec2<i32>(-78507i, -u_input.b)));
    let var_1 = _wgslsmith_div_u32(u_input.e.x, u_input.a.x);
    var var_2 = -1000f;
    var var_3 = !vec2<bool>(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), true);
    var var_4 = true;
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(1i), var_0.x, 589i, -firstTrailingBit(_wgslsmith_mod_i32(2147483647i, u_input.b))), ~_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, var_0.x, -71111i, 9685i) << (countOneBits(u_input.e) % vec4<u32>(32u)), -abs(vec4<i32>(26596i, var_0.x, -19532i, 1651i))), vec4<i32>(_wgslsmith_clamp_i32(var_0.x, var_0.x, _wgslsmith_clamp_i32(-1i, var_0.x, u_input.b)), ~firstTrailingBit(u_input.b), -4871i, -(34176i & u_input.b)) ^ vec4<i32>(_wgslsmith_mult_i32(-2147483647i, ~u_input.b), 10538i, u_input.b, u_input.b));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(85922u, 13474u), 1u), u_input.a, u_input.e.zy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(-657f, 1008f)), _wgslsmith_f_op_f32(func_2(775f, 4346i, Struct_1(878f))), _wgslsmith_f_op_f32(f32(-1f) * -542f))))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.b, 12076i, u_input.b, 46579i), true, Struct_1(106f))), _wgslsmith_div_f32(294f, 134f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1082f) * 1269f)))), ~vec2<u32>(u_input.c, ~(72666u ^ u_input.e.x)));
    var var_1 = countOneBits(abs(select(min(~var_0.yxy, countOneBits(vec3<i32>(-24745i, 0i, var_0.x))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 51234i, arg_0), vec3<i32>(var_0.x, arg_0, -9389i)), vec3<i32>(u_input.b, arg_0, -7760i) ^ vec3<i32>(66813i, arg_0, arg_0)), true)));
    var_1 = ~(select(-(vec3<i32>(1i, var_0.x, var_1.x) ^ vec3<i32>(arg_0, var_1.x, -31081i)), vec3<i32>(~19391i, -8420i, -u_input.b), vec3<bool>(true, false, 1u > u_input.c)) ^ max(_wgslsmith_div_vec3_i32(abs(var_0.xzz), ~var_0.wzy), ~_wgslsmith_sub_vec3_i32(var_0.zzz, var_0.yzy)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-429f * _wgslsmith_div_f32(-140f, 125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1325f))), vec2<f32>(1598f, _wgslsmith_f_op_f32(max(-454f, -1402f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1520f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -101f))))));
    return Struct_1(-378f);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-371f, arg_1.a, -404f, -1725f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1891f, arg_1.a, arg_1.a, arg_1.a) * vec4<f32>(arg_0.a, -153f, 731f, arg_1.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, 770f, -114f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -1130f, 1414f, arg_0.a), vec4<f32>(arg_1.a, 140f, -999f, -390f), vec4<bool>(true, false, false, true))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-2281f, arg_0.a, -375f, arg_0.a), vec4<f32>(arg_0.a, -1000f, -329f, arg_0.a)), vec4<f32>(arg_0.a, arg_1.a, arg_0.a, -1576f))))) * vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, 264f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a - 162f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_1.a, arg_0.a, arg_1.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(858f, arg_0.a, arg_0.a, 654f) * vec4<f32>(var_0.x, 1682f, arg_0.a, -577f))) + vec4<f32>(var_0.x, arg_1.a, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(arg_1.a * arg_0.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, arg_1.a, -668f, var_0.x), vec4<f32>(-102f, -210f, 461f, -470f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a, var_0.x, 1238f, 423f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-870f, -1140f, 1000f, 119f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 518f, var_0.x, arg_0.a)))), vec4<bool>(56890i > u_input.b, any(vec3<bool>(false, false, false)), u_input.b >= 2147483647i, u_input.e.x >= 4294967295u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, u_input.d == 1u), vec4<bool>(true, true, true, true)))));
    global0 = 0u;
    var var_1 = -8981i;
    var var_2 = u_input.a.x ^ u_input.d;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(0i), func_1(abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(46987i, -2147483647i), -vec2<i32>(-2147483647i, 2147483647i)))), firstLeadingBit(u_input.b >> (u_input.d % 32u)));
    var_0 = func_6(Struct_1(-689f), func_1(-1i), ~(-2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1498f, 1000f, var_0.a, var_0.a) + vec4<f32>(var_0.a, 1117f, var_0.a, -1051f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(1157f, -569f, -185f, -853f))) * -562f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -635f), var_0.a)));
    global0 = max(u_input.c, u_input.c);
    var var_2 = u_input.e;
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-949f * _wgslsmith_f_op_f32(399f - 185f)), var_1.x, func_1(u_input.b).a, _wgslsmith_f_op_f32(-867f + _wgslsmith_f_op_f32(-603f - var_1.x))))));
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec3<i32>(-52598i, ~(~u_input.b), 57568i) << (var_2.xyw % vec3<u32>(32u)), _wgslsmith_div_i32(u_input.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, 21122i)), vec2<i32>(-28823i, u_input.b) << (vec2<u32>(115521u, u_input.c) % vec2<u32>(32u))), _wgslsmith_mult_i32(u_input.b, -u_input.b), abs(-1i))));
}

