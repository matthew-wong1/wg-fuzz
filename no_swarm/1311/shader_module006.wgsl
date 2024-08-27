struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<i32>(i32(-2147483648), 48416i, -11440i)), Struct_2(vec3<i32>(-6347i, 0i, -32835i)), Struct_2(vec3<i32>(2147483647i, 2147483647i, 36125i)), Struct_2(vec3<i32>(-5681i, 1i, 1i)), Struct_2(vec3<i32>(-1i, -24915i, -28692i)), Struct_2(vec3<i32>(21833i, 2147483647i, 14569i)), Struct_2(vec3<i32>(-5894i, 2147483647i, 0i)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_2(vec3<i32>(1i, -22346i, 0i)), Struct_2(vec3<i32>(-29849i, -1i, -49750i)), Struct_2(vec3<i32>(11279i, -1i, -79559i)), Struct_2(vec3<i32>(-1i, -14502i, 7577i)), Struct_2(vec3<i32>(1i, 1i, -1i)), Struct_2(vec3<i32>(-52757i, 6930i, 1i)), Struct_2(vec3<i32>(31486i, -32686i, 51454i)), Struct_2(vec3<i32>(1i, 32002i, i32(-2147483648))), Struct_2(vec3<i32>(1i, -1i, -42267i)), Struct_2(vec3<i32>(0i, -31097i, -8855i)), Struct_2(vec3<i32>(17351i, 36558i, 1i)), Struct_2(vec3<i32>(i32(-2147483648), -13221i, -15191i)), Struct_2(vec3<i32>(2147483647i, -6017i, i32(-2147483648))), Struct_2(vec3<i32>(19302i, 10722i, -1i)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> vec3<bool> {
    global0 = array<Struct_2, 22>();
    let var_0 = arg_2.a;
    let var_1 = max((select(vec4<i32>(arg_1.a.x, u_input.e.x, 1i, arg_1.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 81333u, 2219u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, 2147483647i, arg_0), vec4<i32>(u_input.d.x, arg_1.a.x, arg_0, 1i)), !arg_2.b) << (u_input.a % vec4<u32>(32u))) | (_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a.x, -2147483647i, arg_0, arg_1.a.x), vec4<i32>(0i, arg_1.a.x, arg_1.a.x, u_input.c)), vec4<i32>(u_input.e.x, -17909i, u_input.b.x, u_input.b.x)) >> ((vec4<u32>(67269u, u_input.a.x, u_input.a.x, u_input.a.x) ^ select(u_input.a, u_input.a, false)) % vec4<u32>(32u))), ~(-vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, arg_1.a), -arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0, arg_1.a.x), vec3<i32>(-6831i, u_input.c, arg_1.a.x)), 1i)));
    var var_2 = ~(abs(abs(vec3<u32>(1u, 109987u, 81987u))) | firstTrailingBit(abs(vec3<u32>(4294967295u, 1u, 1u)))) ^ reverseBits(reverseBits(u_input.a.zzy) & ~(u_input.a.xzz ^ vec3<u32>(0u, u_input.a.x, 1u)));
    global0 = array<Struct_2, 22>();
    return vec3<bool>(false, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.c)) + _wgslsmith_f_op_f32(min(var_0, -319f))) - _wgslsmith_f_op_f32(-1210f + _wgslsmith_div_f32(arg_2.c, arg_2.a))) == 1012f);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(arg_0, all(select(func_3(-1i, Struct_2(vec3<i32>(-66185i, arg_1.x, 1i)), Struct_3(arg_0, false, arg_0)), vec3<bool>(true, true, true), !select(false, true, true))), _wgslsmith_f_op_f32(-arg_0));
    let var_1 = ~u_input.a.x & ~0u;
    let var_2 = var_0;
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    return Struct_1(-2147483647i, ~_wgslsmith_sub_vec3_i32(-vec3<i32>(-8512i, arg_1.x, u_input.c) | _wgslsmith_mult_vec3_i32(u_input.e, u_input.d), ~_wgslsmith_clamp_vec3_i32(u_input.e, vec3<i32>(-18451i, -2147483647i, 34160i), vec3<i32>(arg_1.x, arg_1.x, 0i))), vec4<bool>(func_3(_wgslsmith_mod_i32(abs(-2147483647i), i32(-1i) * -31604i), global0[_wgslsmith_index_u32(~min(7076u, u_input.a.x), 22u)], var_0).x, false, !var_0.b, var_0.b), !select(!(!vec3<bool>(var_2.b, false, var_0.b)), !vec3<bool>(true, var_0.b, true), !vec3<bool>(true, var_2.b, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 313f), 726f)));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_4(func_3(~arg_0.a, Struct_2(vec3<i32>(37879i, _wgslsmith_add_i32(-15779i, u_input.d.x), ~u_input.d.x)), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(floor(-506f)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)))));
    global0 = array<Struct_2, 22>();
    let var_1 = arg_0.c.x != any(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1705f * -747f))), min(countOneBits(u_input.b), vec2<i32>(u_input.c, -43595i))).c);
    var var_2 = vec4<i32>(13581i, -1i, _wgslsmith_sub_i32(abs(~(i32(-1i) * -40877i)), arg_0.b.x), 2147483647i);
    var var_3 = arg_0.d.x;
    return Struct_3(func_2(_wgslsmith_f_op_f32(1088f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f - -421f))), _wgslsmith_sub_vec2_i32(arg_0.b.xx, min(arg_0.b.zz, abs(u_input.e.xy)))).e, var_1, arg_0.e);
}

fn func_1() -> bool {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f - -1023f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f))), ~firstTrailingBit(u_input.d.zz)));
    let var_1 = u_input.d.yx & u_input.d.xz;
    let var_2 = Struct_4(func_2(var_0.c, ~(~select(u_input.b, var_1, var_0.b))).d);
    var var_3 = 1456f;
    let var_4 = var_2;
    return func_2(var_0.a, reverseBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.x, u_input.e.x), vec2<i32>(6581i, -1i))) ^ select(u_input.e.zy, u_input.b, false == (var_0.b & true))).c.x;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    let var_0 = ~(u_input.a.xzx | ~min(u_input.a.zxy, u_input.a.xyx));
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(arg_0, arg_0));
    var_1 = -2478f;
    var var_2 = Struct_4(vec3<bool>(arg_0 < _wgslsmith_f_op_f32(-arg_0), all(select(!vec3<bool>(arg_1.x, true, false), vec3<bool>(false, true, true), true)), true));
    return ~reverseBits(_wgslsmith_add_u32(~38110u, _wgslsmith_clamp_u32(u_input.a.x, var_0.x, var_0.x)) ^ var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-796f)), -1683f)), vec2<bool>(func_1(), false), max(reverseBits(-48861i & u_input.b.x), ~u_input.b.x), _wgslsmith_mod_vec3_i32(u_input.e, u_input.d));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2(_wgslsmith_f_op_f32(-213f * _wgslsmith_div_f32(-682f, -715f)), vec2<i32>(firstLeadingBit(u_input.d.x), -u_input.d.x)).e)) - 775f);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(162f)), var_1, 548f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-176f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), var_1) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, var_1, 167f, 424f)))))));
    global0 = array<Struct_2, 22>();
    let var_3 = select(!select(vec4<bool>(false, true, any(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), _wgslsmith_mod_u32(var_0, var_0) != 1u), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, func_3(1i & u_input.b.x, Struct_2(u_input.e), Struct_3(473f, true, 1366f)).x, true || (var_0 > 36521u)), false), vec4<bool>(-abs(u_input.c) > firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, -1i, -2147483647i), vec4<i32>(-23715i, u_input.e.x, u_input.b.x, 1i))), !(true & all(vec3<bool>(false, true, false))), true, 1i > (u_input.d.x ^ u_input.b.x)));
    var var_4 = _wgslsmith_mod_i32(2147483647i, 23984i);
    let var_5 = Struct_3(_wgslsmith_f_op_f32(trunc(var_1)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1)))));
    let var_6 = _wgslsmith_sub_u32(max(select(u_input.a.x, 26795u, var_5.b & true), _wgslsmith_div_u32(47265u >> (var_0 % 32u), var_0) ^ var_0), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_5.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1135f - _wgslsmith_f_op_f32(round(-128f))) - -1374f))));
}

