struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-583f + -730f) + -400f);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = arg_1.x;
    global0 = true;
    let var_1 = select(arg_0.zyy, select(!vec3<bool>(!arg_0.x, true, true), !select(!arg_0.xyy, select(arg_0.xxx, arg_0.ywy, arg_0.yxy), vec3<bool>(false, arg_0.x, true)), arg_0.yxx), select(vec3<bool>(arg_0.x, ~u_input.b.x == 1i, arg_0.x), select(vec3<bool>(true, true, arg_0.x), arg_0.xyy, vec3<bool>(true, true, true)), arg_0.zxx));
    var var_2 = Struct_1(-u_input.b.x, ~(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, 46291i, u_input.b.x, -20784i), reverseBits(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x))) ^ vec4<i32>(u_input.b.x, _wgslsmith_add_i32(-1i, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, 1i), u_input.b.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1363f, var_0, -1005f, var_0), vec4<f32>(arg_1.x, arg_1.x, -837f, var_0))), vec4<f32>(_wgslsmith_div_f32(1050f, 1129f), _wgslsmith_f_op_f32(abs(-554f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + -438f))))));
    return vec3<i32>(countOneBits(43969i), _wgslsmith_clamp_i32(-3995i, var_2.b.x << (1u % 32u), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, u_input.b.x)), (var_2.b.xw << (vec2<u32>(46977u, u_input.a.x) % vec2<u32>(32u))) ^ reverseBits(u_input.b.yz))), u_input.b.x);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = select(any(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, true, false), true)), true, !(any(vec4<bool>(true, true, true, true)) & all(vec2<bool>(true, true))));
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = -1252f;
    var_0 = Struct_1(-1i, vec4<i32>(_wgslsmith_div_i32(~(-46940i), max(3585i, u_input.b.x)) << (u_input.a.x % 32u), -17469i, _wgslsmith_mult_i32(arg_3.x, _wgslsmith_mult_i32(-arg_1, 0i & u_input.b.x)), -2147483647i));
    return vec2<bool>(true, any(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = any(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), true)) | true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1072f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1370f, 989f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, false), vec4<i32>(u_input.b.x, -1i, 2272i, u_input.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-952f * -683f), all(vec2<bool>(false, false)))) * _wgslsmith_f_op_f32(floor(-386f)))), 1f);
    let var_2 = vec3<i32>(-(i32(-1i) * -firstTrailingBit(u_input.b.x)), -2147483647i, 7090i);
    let var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -1738f) - var_1.x))), var_2.x, Struct_1(-(~1i) << ((u_input.a.x ^ u_input.a.x) % 32u), vec4<i32>(-var_2.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, 1i, 0i, 28949i)), -vec4<i32>(var_2.x, u_input.b.x, var_2.x, u_input.b.x)), -35651i, -1111i)), vec4<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(var_2.x, 1i, 1i) | var_2), ~reverseBits(var_2)), _wgslsmith_dot_vec3_i32(u_input.b, func_3(vec4<bool>(true, false, false, true), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, 1797f), vec4<f32>(450f, -1750f, var_1.x, 915f))))), 24056i, 23097i));
    var_0 = false;
    return Struct_1(u_input.b.x & (-39153i | var_2.x), _wgslsmith_div_vec4_i32(-(~vec4<i32>(var_2.x, 1i, var_2.x, var_2.x)), -_wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.b.x, 60919i, 2147483647i, var_2.x), vec4<i32>(u_input.b.x, var_2.x, 13345i, 1i)), -vec4<i32>(var_2.x, var_2.x, 2147483647i, var_2.x))));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = 81500i;
    let var_1 = func_1(countOneBits(vec2<u32>(u_input.c ^ u_input.c, reverseBits(1u))) | _wgslsmith_mult_vec2_u32(abs(~vec2<u32>(u_input.c, u_input.c)), firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.a.xx, u_input.a.xy))));
    var var_2 = Struct_1(arg_2.b.x, vec4<i32>(arg_2.b.x, -var_1.b.x, -_wgslsmith_clamp_i32(var_1.a, -1i, -17790i), func_1(abs(~vec2<u32>(0u, u_input.c))).a));
    let var_3 = Struct_1(28492i ^ (-19603i >> (~min(u_input.c, u_input.c) % 32u)), select(arg_2.b, var_2.b, all(select(select(arg_1.xxw, vec3<bool>(true, arg_0, arg_1.x), arg_0), select(arg_1.xxz, arg_1.wxz, vec3<bool>(arg_0, arg_0, arg_0)), true))));
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(756f, -661f)))))));
    return select(arg_1.yyy, arg_1.zww, select(arg_0, false, arg_1.x));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    return func_1(~abs(vec2<u32>(1u << (u_input.c % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-45369i, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, 0i, u_input.b.x, u_input.b.x), vec4<i32>(_wgslsmith_div_i32(0i, u_input.b.x), u_input.b.x, -u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 0i), ~vec4<i32>(-44519i, u_input.b.x, u_input.b.x, u_input.b.x)) << (max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 16840u), vec4<u32>(u_input.a.x, 4294967295u, 28236u, u_input.a.x)), reverseBits(vec4<u32>(45402u, 49789u, 1u, u_input.a.x))) % vec4<u32>(32u))));
    global0 = !(!(_wgslsmith_f_op_f32(498f + -312f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(602f)), _wgslsmith_f_op_f32(trunc(-835f)))));
    var_0 = func_6(Struct_1(2147483647i, ~(vec4<i32>(-1i) * -var_0.b)), func_5(true, vec4<bool>(true, true, true, true), func_1(vec2<u32>(1u, ~u_input.c))));
    global0 = select(!(~(i32(-1i) * -32166i) > u_input.b.x), 1u <= (u_input.c << (u_input.c % 32u)), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), 4294967295u != u_input.a.x), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)) && all(vec2<bool>(false, false)))));
    let var_1 = ~select(u_input.a, firstTrailingBit(vec3<u32>(18421u | u_input.c, ~u_input.c, u_input.a.x)), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(func_4(1000f, 73158i, Struct_1(var_0.b.x, vec4<i32>(u_input.b.x, -19779i, 1i, var_0.b.x)), vec4<i32>(var_0.b.x, var_0.a, -2147483647i, var_0.a)).x, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), func_5(false, vec4<bool>(false, true, true, true), Struct_1(u_input.b.x, vec4<i32>(var_0.b.x, 2147483647i, u_input.b.x, 6160i))), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-939f, 1000f, 528f) + vec3<f32>(1625f, 1857f, -459f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1948f, 1861f, 1116f) * vec3<f32>(-1371f, -501f, 331f))), vec3<f32>(-236f, _wgslsmith_f_op_f32(min(605f, -450f)), _wgslsmith_div_f32(-621f, -822f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f - -1088f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1118f * -1768f)), -1222f))));
    let var_3 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-623f, 255f, -988f, var_2.x))))), _wgslsmith_div_u32(22321u, ~min(~u_input.c, reverseBits(var_1.x))), ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, var_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 13142u, u_input.a.x), u_input.a, vec3<u32>(65633u, 1u, 4294967295u)))), vec4<i32>(u_input.b.x | (u_input.b.x << (64446u % 32u)), ~_wgslsmith_sub_i32(var_0.b.x, -1i), _wgslsmith_clamp_i32(11948i, func_3(vec4<bool>(true, false, true, false), vec4<f32>(var_2.x, var_2.x, var_2.x, 613f)).x, -38676i), u_input.b.x) | countOneBits(func_1(_wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(11534u, 16473u))).b), countOneBits(select(~vec4<u32>(var_1.x, u_input.c, 28856u, 1u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 67092u, 103878u, u_input.c), vec4<u32>(40117u, 23591u, u_input.a.x, var_1.x), vec4<u32>(var_1.x, u_input.a.x, 1u, var_1.x)), ~(~vec4<u32>(34093u, 0u, 2133u, var_1.x)), !all(vec4<bool>(true, false, false, false)))));
}

