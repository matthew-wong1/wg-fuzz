struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4748i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = -924f;
    var var_1 = ~22692u;
    let var_2 = select(-vec2<i32>(0i, -arg_0.x), arg_0, false);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1418f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1208f)))), _wgslsmith_f_op_f32(1401f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1455f, 200f)), _wgslsmith_f_op_f32(floor(-145f))))));
    let var_3 = -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-arg_0.x, arg_0.x ^ var_2.x), -2147483647i, -21588i, var_2.x), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-12051i, -1i, -27714i, arg_0.x), vec4<i32>(arg_3, arg_0.x, 10212i, 1i)), vec4<i32>(arg_0.x, arg_0.x ^ -9988i, var_2.x | arg_0.x, -51998i)));
    return !arg_1.x;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>, arg_3: vec2<f32>) -> vec2<f32> {
    global0 = -firstTrailingBit(-2147483647i);
    let var_0 = _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(min(u_input.a.zzz ^ vec3<u32>(arg_0.b, 28800u, 19653u), abs(vec3<u32>(arg_1, arg_1, arg_0.b))), _wgslsmith_mod_vec3_u32(~vec3<u32>(61247u, u_input.a.x, 2782u), vec3<u32>(arg_1, 66412u, arg_1) | vec3<u32>(4349u, 0u, 34389u))), vec3<u32>(~_wgslsmith_div_u32(19829u, u_input.a.x) | 1u, reverseBits(4294967295u), arg_0.b));
    let var_1 = _wgslsmith_f_op_f32(floor(684f));
    var var_2 = ~(-1i);
    let var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1426f) - arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(arg_0.a + 1101f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(479f, arg_0.a)))))), ~(~arg_0.b), !(!arg_0.c));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(-var_3.a)), 143f) * arg_3)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(233f, u_input.b.x, vec2<bool>(true, func_3(vec2<i32>(-21865i, 25511i), vec4<bool>(true, false, true, false), 5782u, 0i))), abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyw, vec3<u32>(1u, 1u, u_input.b.x)), u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1561f, arg_0, -106f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(220f, arg_0) * vec2<f32>(arg_0, 108f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1187f - _wgslsmith_div_f32(arg_0, -1327f)), 294f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-109f * -1038f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-380f, 1967f, arg_0)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -1205f, arg_0), vec3<f32>(arg_0, arg_0, arg_0)))))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(func_3(vec2<i32>(-18948i, 1i), vec4<bool>(true, false, false, false), u_input.a.x, -49871i), true, true), false))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(arg_0 <= -126f, all(vec3<bool>(false, false, false)), true, false), true), !vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), !(false == (288f <= arg_0))), select(vec2<bool>(true, true), select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), true), !(!(arg_0 > arg_0))));
    var var_1 = vec4<u32>(~u_input.a.x, 1u & _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, firstTrailingBit(1u)), countOneBits(~u_input.a.x)), 24184u, u_input.b.x);
    var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2594f, arg_0) * vec2<f32>(arg_0, 1859f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1747f, arg_0), vec2<f32>(var_0.a.x, arg_0))))) * vec2<f32>(_wgslsmith_div_f32(1674f, 651f), -635f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(-418f, var_0.b.x)))), -2402f)), var_0.b, var_0.c, select(select(!var_0.d, var_0.c.xw, true), !var_0.d, !var_0.c.xw));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_4(Struct_3(1166f, _wgslsmith_clamp_u32(var_1.x, 1u, u_input.a.x), select(vec2<bool>(var_0.d.x, false), var_0.c.yx, true)), _wgslsmith_sub_u32(~(~34541u), select(var_1.x, u_input.b.x, true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 857f, var_0.b.x), vec3<f32>(var_0.a.x, 1037f, 2325f))), var_0.b, true)))), _wgslsmith_f_op_vec2_f32(round(var_0.a)))).x;
    var var_3 = Struct_1(vec2<bool>(var_0.c.x, var_0.c.x), vec3<f32>(-1421f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f), 796f)), _wgslsmith_f_op_f32(-arg_0)), var_1.x, abs(~u_input.a.x), !vec3<bool>(true, true, var_0.d.x));
    return Struct_1(var_0.d, _wgslsmith_f_op_vec3_f32(-var_0.b), ~(~12760u) >> (_wgslsmith_add_u32(4294967295u, ~var_3.c) % 32u), ~(~var_3.c), var_0.c.xyw);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = true;
    global0 = arg_0;
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-20593i >> (~(~u_input.a.x) % 32u), _wgslsmith_add_i32(-2867i, -27372i & arg_0)), vec2<i32>(arg_0, ~arg_0), vec2<i32>(-2147483647i, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -10134i, -2147483647i, arg_0), vec4<i32>(-1i, arg_0, arg_0, arg_0)))));
    global0 = ~_wgslsmith_clamp_i32(var_1.x, arg_0, _wgslsmith_div_i32(-2147483647i, 1i));
    let var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1719f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(252f, 103f) - _wgslsmith_f_op_f32(884f + -397f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-3133f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1289f)))));
    return func_2(-859f).b.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = min(vec3<i32>(39405i, ~(-50975i << (0u % 32u)), 1i), vec3<i32>(-1i >> (1u % 32u), -(i32(-1i) * -2147483647i), _wgslsmith_add_i32(1i, firstTrailingBit(-12338i))));
    global0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-(i32(-1i) * -48630i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, ~var_0.x), 5299i)), _wgslsmith_sub_i32(reverseBits(~var_0.x), 1i));
    global0 = ~reverseBits(i32(-1i) * -(i32(-1i) * -2147483647i));
    let var_1 = _wgslsmith_clamp_u32(func_2(arg_0.x).c, 1u, _wgslsmith_add_u32(_wgslsmith_add_u32(~(~0u), ~firstTrailingBit(u_input.a.x)), max(~_wgslsmith_dot_vec3_u32(u_input.a.yzz, u_input.a.yzy), 1u)));
    var var_2 = Struct_2(arg_0.zz, _wgslsmith_f_op_vec3_f32(-arg_0.xyx), select(vec4<bool>(func_2(_wgslsmith_f_op_f32(arg_0.x * -1061f)).a.x, arg_3.x, select(true, func_3(var_0.xx, vec4<bool>(arg_3.x, false, arg_3.x, false), var_1, var_0.x), arg_3.x == arg_3.x), !all(arg_3)), !select(select(vec4<bool>(arg_3.x, false, arg_2.x, true), vec4<bool>(arg_3.x, true, arg_3.x, true), arg_2.x), !vec4<bool>(false, arg_3.x, arg_2.x, arg_2.x), arg_2.x), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 23544u)) == 1u), select(vec2<bool>(any(vec2<bool>(arg_3.x, arg_2.x)) || false, arg_3.x), arg_2, all(select(func_2(1048f).e, !vec3<bool>(arg_3.x, false, true), all(vec2<bool>(true, arg_3.x))))));
    return Struct_3(413f, 4294967295u, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(firstLeadingBit(abs(u_input.a)), select(reverseBits(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), vec4<u32>(countOneBits(u_input.b.x), u_input.b.x, u_input.a.x, u_input.a.x), true & (1i < (0i << (u_input.b.x % 32u)))));
    var_0 = ~u_input.a;
    let var_1 = !(!vec2<bool>(all(vec4<bool>(true, false, false, false)), !select(false, true, true)));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_f_op_f32(func_1(-26181i)), 1008f, _wgslsmith_f_op_f32(-1000f * -257f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-900f, 1001f, 2035f, 111f), vec4<f32>(391f, 1042f, -1000f, -546f)))))), 1000f, select(var_1, select(select(var_1, var_1, vec2<bool>(true, true)), !vec2<bool>(var_1.x, false), var_1.x), func_2(_wgslsmith_f_op_f32(-873f - _wgslsmith_f_op_f32(-1677f - -1534f))).e.x), !vec2<bool>(all(vec4<bool>(true, var_1.x, false, true)) | false, var_1.x));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-703f, -357f))), -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a.x ^ var_2.b, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, var_2.a))))), _wgslsmith_f_op_f32(-939f + var_3), 256f));
}

