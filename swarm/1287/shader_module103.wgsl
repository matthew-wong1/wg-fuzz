struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> bool {
    global1 = abs(~(~_wgslsmith_mod_vec3_u32(arg_1.a.b.zwx & vec3<u32>(arg_1.c.d.x, 77990u, global1.x), arg_1.a.b.zyz)));
    let var_0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(countOneBits(4294967295u | u_input.d), u_input.c, global1.x, 46637u)), vec4<u32>(firstTrailingBit(1u) | ~0u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(arg_1.a.b, arg_1.c.e.b), arg_1.a.b), 11348u, ~(~(~arg_1.b.x))));
    let var_1 = ~(~0u) << (max(27853u, select(~global1.x, ~1u, any(arg_1.a.a))) % 32u);
    var var_2 = arg_1;
    global0 = !vec3<bool>(arg_1.e, true, global0.x);
    return false;
}

fn func_2() -> f32 {
    let var_0 = global0.x;
    var var_1 = global0.x;
    global0 = select(vec3<bool>(36165u <= global1.x, false, true), vec3<bool>(global0.x & global0.x, false && any(select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), false)), func_3(~0i, Struct_3(Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u), 1962f), firstLeadingBit(vec2<u32>(global1.x, global1.x)), Struct_2(-1i, -2147483647i, false, vec4<u32>(global1.x, global1.x, u_input.c, u_input.d), Struct_1(vec4<bool>(false, global0.x, global0.x, true), vec4<u32>(global1.x, 27698u, 3578u, u_input.c), -169f)), u_input.b, !global0.x))), true);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1716f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-167f, -1000f, !global0.x)) + 425f) - _wgslsmith_f_op_f32(1f * 1207f))));
    let var_3 = global0.x;
    return 980f;
}

fn func_1() -> Struct_1 {
    global1 = min(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(1u, global1.x, 8332u)), ~vec3<u32>(15286u, 100445u, 6280u), _wgslsmith_mult_vec3_u32(vec3<u32>(18914u, u_input.d, global1.x), vec3<u32>(6277u, global1.x, 0u))), firstTrailingBit(vec3<u32>(9373u, 10560u, 15332u)) << (vec3<u32>(2458u, global1.x, global1.x) % vec3<u32>(32u))), vec3<u32>(94480u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, 1u, global1.x), reverseBits(vec3<u32>(1u, global1.x, global1.x))), u_input.d));
    var var_0 = vec3<bool>(true, global0.x, select(select(global0.x, all(vec2<bool>(global0.x, global0.x)), !any(vec4<bool>(true, global0.x, global0.x, global0.x))), global0.x, _wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1460f)) + 217f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1509f, -863f, -849f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(698f, 2092f, 988f))))) + vec3<f32>(_wgslsmith_f_op_f32(select(-1125f, 603f, true)), 1289f, 175f))));
    var var_2 = Struct_2(u_input.b | ~select(u_input.b, -u_input.b, true), -2147483647i, !(!(!(u_input.d >= u_input.c))), vec4<u32>(1u | _wgslsmith_mod_u32(1u, global1.x), ~_wgslsmith_div_u32(~global1.x, ~1u), ~26871u, select(~(~87977u), _wgslsmith_mult_u32(1u, ~3133u), var_0.x)), Struct_1(!vec4<bool>(global0.x || var_0.x, true, true, true), abs(~vec4<u32>(20829u, 19924u, global1.x, 1216u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-913f, _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), 1000f)))));
    let var_3 = Struct_3(var_2.e, firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(69238u, min(1u, 4294967295u)), _wgslsmith_sub_u32(max(26989u, 1u), global1.x << (var_2.e.b.x % 32u)))), Struct_2(4749i, _wgslsmith_add_i32(i32(-1i) * -19701i, firstLeadingBit(u_input.b)) | var_2.a, true, var_2.e.b, var_2.e), var_2.a << ((reverseBits(u_input.c) & ~(~var_2.e.b.x)) % 32u), all(vec3<bool>(false, var_0.x && (u_input.a.x >= 7331u), var_2.c)));
    return var_2.e;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec3<u32> {
    global0 = !select(arg_1.a.zxw, vec3<bool>(global0.x, any(vec2<bool>(true, global0.x)), func_1().a.x), arg_1.a.x);
    var var_0 = select(vec3<bool>(arg_1.a.x, arg_1.c >= _wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(round(518f))), arg_1.a.x), vec3<bool>(false, all(!vec3<bool>(global0.x, global0.x, true)), arg_1.a.x), !arg_1.a.xxy);
    var var_1 = u_input.b;
    let var_2 = select(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 109065u), _wgslsmith_add_vec2_u32(countOneBits(arg_3), countOneBits(arg_2.yx ^ vec2<u32>(0u, 4294967295u)))), global1.xx | arg_2.xz, vec2<bool>(any(vec3<bool>(global0.x, var_0.x, true)), global0.x));
    var var_3 = _wgslsmith_f_op_f32(sign(arg_1.c));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~1u), ~8033u, ~(~arg_3.x)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.d, arg_1.b.x, global1.x), vec3<u32>(var_2.x, 4294967295u, 35682u)), firstLeadingBit(vec3<u32>(arg_1.b.x, var_2.x, 4294967295u))) | (vec3<u32>(arg_1.b.x, arg_1.b.x, 6441u) ^ (vec3<u32>(11017u, 24506u, 77946u) >> (vec3<u32>(49763u, global1.x, 0u) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(reverseBits(max(arg_2, vec3<u32>(arg_0, 0u, 58969u))), vec3<u32>(arg_0, ~4294967295u, 3316u))) >> ((abs(firstTrailingBit(~vec3<u32>(1u, 4294967295u, arg_0))) << (firstLeadingBit(vec3<u32>(~u_input.a.x, 1u, 4582u)) % vec3<u32>(32u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_clamp_u32(~0u, 43111u, 17019u), func_1(), ~vec3<u32>(global1.x, min(select(0u, global1.x, global0.x), _wgslsmith_mod_u32(u_input.a.x, 33481u)), _wgslsmith_sub_u32(39646u, u_input.a.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(~85739u, _wgslsmith_mod_u32(global1.x, 11130u)), reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 4294967295u), vec2<u32>(83406u, global1.x)))));
    global0 = !vec3<bool>(global0.x, global0.x && false, func_3(u_input.b, Struct_3(Struct_1(vec4<bool>(global0.x, true, true, global0.x), vec4<u32>(4294967295u, 1u, 1u, global1.x), -183f), _wgslsmith_mult_vec2_u32(vec2<u32>(30143u, 50766u), u_input.a), Struct_2(u_input.b, u_input.b, true, vec4<u32>(7527u, global1.x, global1.x, global1.x), Struct_1(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<u32>(global1.x, 27305u, u_input.a.x, global1.x), -983f)), u_input.b, true)));
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1196f - -456f)), 1309f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1487f * _wgslsmith_f_op_f32(1240f - -236f)), -990f)))));
    global1 = ~reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 51212u, u_input.c), vec3<u32>(118213u, 1u, u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(79657u, global1.x, global1.x), vec3<u32>(u_input.d, u_input.c, u_input.c))), ~vec3<u32>(0u, u_input.a.x, 162061u) & (vec3<u32>(u_input.a.x, 60079u, 51211u) ^ vec3<u32>(global1.x, 108467u, 48867u))));
    global0 = vec3<bool>(global1.x < ~(~u_input.d), !global0.x, func_1().a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2080f, _wgslsmith_f_op_f32(select(-274f, 1373f, true)), var_0, -793f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-361f, var_0, true)), _wgslsmith_f_op_f32(f32(-1f) * -1146f), -676f, _wgslsmith_f_op_f32(var_0 - -913f)))));
}

