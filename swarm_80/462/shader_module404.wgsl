struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1439f, 905f, -105f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1571f, -881f, -1060f)) - vec3<f32>(1720f, -555f, 960f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1514f, 1817f), vec3<f32>(-1535f, -526f, 383f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1076f, 1333f, 1849f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(393f, var_0.x, -2060f), vec3<f32>(var_0.x, var_0.x, var_0.x), global0.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1000f), vec3<f32>(-208f, var_0.x, -607f)))))));
    var var_1 = max(max(vec2<u32>(1u, 1u), abs(countOneBits(vec2<u32>(1u, 1u)))), ~vec2<u32>(1u, 1u));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(480f, -1617f, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(2440f, var_0.x, 1421f, 1588f) + vec4<f32>(-702f, 404f, -261f, var_0.x)), vec4<f32>(var_0.x, -969f, var_0.x, var_0.x)))))));
    return !(!global0.a);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(true));
    global1 = ~1u;
    global0 = Struct_1(!any(vec4<bool>(var_0.a.a, func_3(), any(vec2<bool>(arg_3, false)), select(arg_3, global0.a, var_0.a.a))));
    var_0 = Struct_2(var_0.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(374f)))));
    return Struct_2(Struct_1(!arg_3));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1712f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(210f, 1037f)))), 694f, 980f), vec4<f32>(-310f, 1f, 475f, _wgslsmith_f_op_f32(min(1f, -1000f))))));
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(~firstTrailingBit(arg_2), 0u), arg_1.x) | firstTrailingBit(arg_1);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1182f)), -604f, var_0.x, _wgslsmith_f_op_f32(var_0.x + -122f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-133f, -2313f, 1105f, -444f), vec4<f32>(var_0.x, 395f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(595f, var_0.x, var_0.x, var_0.x)), false)))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-var_0.x), var_0.x, -718f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, var_0.x))))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2066f * 918f) + _wgslsmith_div_f32(2311f, var_0.x))), 1583f));
    let var_3 = ~(~vec4<u32>(~abs(54279u), var_1.x, max(0u, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(75172u, arg_2))), 1u));
    return _wgslsmith_f_op_f32(round(var_0.x));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = func_2(~(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 32908u, 1u, 8602u)))), ~vec2<u32>(4786u, ~(~1312u)), min(reverseBits(1u), 4294967295u), !global0.a);
    global0 = Struct_1(true);
    let var_1 = Struct_2(func_2(~max(~4294967295u, 1u), vec2<u32>(1u, 0u), 1u, arg_1.a).a);
    let var_2 = vec2<i32>(34191i, reverseBits(countOneBits(u_input.a.x) & -34441i));
    global1 = 1u;
    return Struct_2(var_0.a);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_f32(func_4(Struct_2(arg_0), ~vec2<u32>(1u, 1u), ~(~firstLeadingBit(38076u)), func_2(_wgslsmith_clamp_u32(31416u, ~75587u, 1u), vec2<u32>(58952u, 1u), 1u << (1u % 32u), false))), Struct_1(true), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 55387u, 0u, 18252u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_u32(~41282u, _wgslsmith_div_u32(54739u, 13787u))) >= 53615u, !vec3<bool>(true, arg_0.a, !arg_0.a & true));
    var var_1 = true;
    var var_2 = var_0.a;
    var var_3 = _wgslsmith_mult_vec4_i32(u_input.a, ~u_input.a) ^ ~u_input.a;
    global1 = firstLeadingBit(_wgslsmith_div_u32(~abs(4294967295u), ~1u));
    return func_2(0u, vec2<u32>(~firstTrailingBit(_wgslsmith_add_u32(63127u, 0u)), 1u), 1u, global0.a);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    global1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(0u, 43285u, 0u)), reverseBits(~vec3<u32>(1u, 1872u, 4294967295u)), ~vec3<u32>(70873u, 88615u, 4294967295u))), select(countOneBits(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 0u, 1u), vec3<bool>(arg_2.a, false, arg_1.a.a))), vec3<u32>(1u, 1u, 1u), arg_3.a));
    global0 = arg_3;
    var var_1 = select(vec4<u32>(70914u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(20913u, 1u)), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(71432u, 4294967295u, 4294967295u))) ^ vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~13647u, max(_wgslsmith_clamp_u32(17505u, 1u, 0u), ~416u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 52944u), _wgslsmith_mod_u32(4294967295u, 5578u)), ~abs(4294967295u)) >> (~vec4<u32>(~1u, ~0u, 16707u, _wgslsmith_dot_vec3_u32(vec3<u32>(81822u, 79610u, 0u), vec3<u32>(136574u, 4294967295u, 7527u))) % vec4<u32>(32u)), select(select(!select(vec4<bool>(arg_1.a.a, true, true, arg_1.a.a), vec4<bool>(arg_2.a, false, true, false), false), vec4<bool>(arg_1.a.a, !arg_2.a, false, arg_1.a.a), func_3()), !vec4<bool>(true != var_0.a, false, true, true), true));
    let var_2 = max(u_input.a.zx, ~(u_input.a.zy | ~vec2<i32>(u_input.a.x, 48217i)));
    return vec2<bool>(arg_2.a & !arg_3.a, all(select(select(!vec3<bool>(false, arg_1.a.a, true), vec3<bool>(true, false, arg_3.a), arg_2.a), !select(vec3<bool>(arg_2.a, global0.a, arg_3.a), vec3<bool>(true, arg_2.a, arg_1.a.a), vec3<bool>(global0.a, global0.a, false)), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    var var_0 = Struct_1(all(func_6(vec4<f32>(-1207f, _wgslsmith_f_op_f32(-1956f + -288f), _wgslsmith_f_op_f32(step(-839f, 2032f)), -1640f), func_1(Struct_1(true)), Struct_1(true), func_2(1u >> (0u % 32u), select(vec2<u32>(1u, 36778u), vec2<u32>(80634u, 24032u), vec2<bool>(global0.a, false)), 1u, true).a)));
    let var_1 = -_wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
    global0 = func_2(~_wgslsmith_mod_u32(4294967295u, 851u) & (1u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 8281u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(93960u, 60839u, 2944u), vec3<u32>(57574u, 3918u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u))) % 32u)), countOneBits(_wgslsmith_clamp_vec2_u32(~max(vec2<u32>(30712u, 1u), vec2<u32>(50459u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 68822u, 0u), vec3<u32>(0u, 0u, 4294967295u)), ~0u), vec2<u32>(max(121821u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(19400u, 4294967295u, 10873u), vec3<u32>(44877u, 4294967295u, 80590u))))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(36565u, _wgslsmith_mult_u32(54539u, _wgslsmith_div_u32(0u, 1u))), ~(~(~11077u)), 73144u), !(select(var_0.a, true & global0.a, u_input.a.x <= var_1) || true)).a;
    global0 = Struct_1(!all(!vec4<bool>(false, true, var_0.a, global0.a)));
    global1 = max(~4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~0u), ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(0u, 4294967295u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1596f), select(_wgslsmith_dot_vec3_i32(select(u_input.a.zzx, u_input.a.xxy, select(vec3<bool>(true, var_0.a, global0.a), vec3<bool>(var_0.a, global0.a, var_0.a), global0.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), vec3<i32>(-39695i, u_input.a.x, -37342i))), 29220i, true));
}

