struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> vec2<u32> {
    var var_0 = Struct_1(countOneBits((i32(-1i) * -u_input.d) ^ ~(~u_input.d)));
    var_0 = Struct_1(38876i & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, u_input.d), -vec3<i32>(u_input.d, var_0.a, u_input.d)), ~firstTrailingBit(var_0.a)));
    var var_1 = _wgslsmith_div_u32(1u, _wgslsmith_div_u32(u_input.b.x, 0u));
    var var_2 = arg_1;
    var_2 = false;
    return u_input.a & ((~abs(u_input.b) >> (u_input.b % vec2<u32>(32u))) << (~u_input.c % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_1;
    let var_1 = arg_0;
    var var_2 = Struct_4(-18818i, 1u, ~var_1.c, Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-838f, arg_0.d.a.x, var_0.b.a.x, var_1.d.a.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1286f, global0.x, var_0.b.b.x, var_0.c.x))))), arg_0.d.a), arg_1.c);
    var var_3 = ~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_0.a, -25986i) ^ abs(vec2<i32>(-2147483647i, arg_1.a))), vec2<i32>(u_input.d, -1i));
    var_0 = Struct_3(_wgslsmith_sub_i32(18424i, -_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, 37638i, var_0.a), ~vec3<i32>(-46753i, u_input.d, -2278i))), var_1.d, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), -1067f, _wgslsmith_f_op_f32(-arg_0.e.x)), vec3<f32>(-320f, _wgslsmith_f_op_f32(arg_0.d.a.x - -917f), arg_3.a.x)));
    return arg_0.d.a.xz;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_4(u_input.d, u_input.b.x, abs(func_3(vec2<bool>(true, true), false)), Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -198f, 804f, global0.x), vec4<f32>(1375f, global0.x, global0.x, -2085f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -1000f, global0.x, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-1514f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -215f), 1839f)), Struct_3(56149i, Struct_2(vec4<f32>(global0.x, 629f, global0.x, -584f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1058f, 1129f, 969f, -482f), vec4<f32>(508f, -623f, global0.x, 758f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1534f)), _wgslsmith_f_op_f32(step(-819f, -214f)), -798f)), 4294967295u, Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -668f, global0.x, -1727f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -398f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(741f, -357f, -596f, global0.x)))))));
    var var_0 = select(vec3<bool>(false, max(_wgslsmith_mult_u32(u_input.a.x, 0u), 50087u) < firstTrailingBit(0u << (0u % 32u)), true), !select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, 0u >= u_input.b.x, true), false), true | all(vec2<bool>(true, false)));
    let var_1 = Struct_4(_wgslsmith_dot_vec2_i32(abs(~countOneBits(vec2<i32>(u_input.d, -2147483647i))), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.d, u_input.d)) | select(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(u_input.d, 53878i), false), -(vec2<i32>(53665i, u_input.d) ^ vec2<i32>(2147483647i, -2147483647i)))), ~u_input.b.x, u_input.c, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1051f, global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 662f, -452f, -916f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(-1103f, 836f, 770f, -1451f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) - _wgslsmith_f_op_f32(global0.x + -1786f)), 113f, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(global0.x * 689f), global0.x == global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1887f + _wgslsmith_f_op_f32(-global0.x)), -1921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(292f, global0.x, true)) * _wgslsmith_f_op_f32(min(1000f, -710f))))));
    let var_2 = false;
    let var_3 = func_3(var_0.yz, false).x;
    return Struct_3(2147483647i, Struct_2(_wgslsmith_f_op_vec4_f32(-var_1.d.b), var_1.d.b), vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.a.x), _wgslsmith_div_f32(207f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d.b.x * -145f), _wgslsmith_f_op_f32(sign(961f)), true)), _wgslsmith_f_op_f32(round(763f))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = func_2().b;
    var_0 = Struct_2(arg_1.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(738f, _wgslsmith_f_op_f32(global0.x * -125f), _wgslsmith_f_op_f32(arg_1.c.x - global0.x), _wgslsmith_f_op_f32(global0.x + global0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.b.x, var_0.b.x, var_0.a.x, 1587f)))))));
    let var_1 = Struct_1(arg_2);
    return -376f;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_5(vec3<bool>(true, false, true), func_2(), _wgslsmith_dot_vec3_i32(arg_1.yww, vec3<i32>(arg_2.a, arg_2.a, -2147483647i)))), _wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1000f) - _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-695f - arg_0.x))), _wgslsmith_f_op_vec2_f32(func_4(Struct_4(_wgslsmith_dot_vec3_i32(arg_1.xzz, arg_1.yww), ~u_input.a.x, countOneBits(u_input.a), Struct_2(vec4<f32>(-399f, 1122f, -273f, arg_0.x), vec4<f32>(861f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(326f, global0.x, 132f) + vec3<f32>(global0.x, 319f, arg_0.x))), func_2(), _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_div_u32(u_input.c.x, 0u), ~u_input.b.x), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, -661f, arg_0.x, global0.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, global0.x, arg_0.x, arg_0.x)))))).x));
    global0 = _wgslsmith_f_op_vec2_f32(floor(arg_0));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(743f, -1000f) + arg_0), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, -1699f), arg_0)))) * _wgslsmith_f_op_vec2_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, -1440f))) + _wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(-1441f, arg_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1139f, _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1235f, arg_0.x), arg_0)) * _wgslsmith_f_op_vec2_f32(arg_0 * arg_0)))));
    let var_0 = abs(~_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_add_u32(~u_input.b.x, 657u), 37043u));
    return arg_0.x;
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    return func_2().b;
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1861f) - arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1347f * 1908f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-485f - 1245f)));
    let var_0 = u_input.a.x;
    let var_1 = vec4<bool>(true, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1275f + -132f) - -371f) == arg_0.a.x) & (true || any(vec3<bool>(true, true, true))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(false, true)), true, false), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec3<bool>(false, false, false), Struct_3(44181i, arg_0, vec3<f32>(arg_0.b.x, -439f, 530f)), u_input.d))) * _wgslsmith_f_op_f32(round(-577f))) <= _wgslsmith_f_op_f32(-func_2().b.b.x));
    var var_2 = Struct_4(~u_input.d ^ _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(u_input.d, -1i)), -vec2<i32>(-1i, 54456i)), _wgslsmith_mod_u32(4294967295u, ~1u), ~(~func_3(select(vec2<bool>(var_1.x, var_1.x), var_1.yx, var_1.x), select(false, true, var_1.x))), func_2().b, _wgslsmith_f_op_vec3_f32(floor(arg_0.b.zwz)));
    var_2 = Struct_4(~_wgslsmith_clamp_i32(max(12851i, -16559i), func_2().a, ~u_input.d), _wgslsmith_add_u32(u_input.c.x & 63580u, _wgslsmith_div_u32(~var_2.c.x & _wgslsmith_div_u32(var_2.b, var_2.b), ~abs(33851u))), abs(u_input.c), Struct_2(var_2.d.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.d.a, vec4<f32>(global0.x, 836f, -1438f, var_2.d.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1378f, global0.x, var_2.e.x, arg_0.b.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), -236f, -1730f, _wgslsmith_f_op_f32(f32(-1f) * -2038f))))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.e.x, global0.x, _wgslsmith_f_op_f32(max(383f, _wgslsmith_f_op_f32(-var_2.d.b.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_2().c.x, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(step(global0.x, global0.x))), arg_0.b.xzx, var_1.xzw))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, u_input.d & 0i, u_input.d), reverseBits(-vec4<i32>(u_input.d, -2147483647i, -1i, 10198i))) << (u_input.a.x % 32u), u_input.d);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(270f, -1002f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, global0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + vec2<f32>(global0.x, -480f))))));
    var var_1 = func_7(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec4<i32>(1i, -12155i, 27208i, -15539i), Struct_1(var_0))) + -538f), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), firstTrailingBit(u_input.b.x)));
    var var_2 = func_7(func_6(-644f, vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(false, true)), true), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
    var var_3 = select(vec4<bool>(true | (4294967295u < (u_input.a.x | u_input.b.x)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), -997f > _wgslsmith_f_op_f32(floor(-313f)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(true, true, true)))), vec4<bool>(-u_input.d >= countOneBits(var_0 << (u_input.c.x % 32u)), true, false, any(vec2<bool>(29594u <= u_input.c.x, u_input.a.x <= 40158u))), !vec4<bool>((1761f >= var_2.b.x) && all(vec2<bool>(true, false)), (13466i == u_input.d) & false, any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, false, false))));
    let var_4 = ~4294967295u >> (u_input.b.x % 32u);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1466f));
    let var_6 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(u_input.c, min(firstTrailingBit(vec2<u32>(19498u, var_4)), vec2<u32>(var_4, 8103u)), _wgslsmith_sub_vec2_u32(u_input.b, ~u_input.c))), abs(_wgslsmith_mod_u32(firstLeadingBit(~22752u), ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, global0.x, var_0);
}

