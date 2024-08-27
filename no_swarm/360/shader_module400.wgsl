struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: u32;

var<private> global2: array<vec4<bool>, 19>;

var<private> global3: vec3<u32> = vec3<u32>(0u, 4294967295u, 1u);

var<private> global4: Struct_2 = Struct_2(vec3<i32>(-30851i, -1i, 2147483647i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = ~27043u;
    var var_0 = _wgslsmith_mod_vec4_u32(select(~vec4<u32>(global3.x | 11993u, ~global3.x, global3.x, global3.x ^ 118694u), vec4<u32>(_wgslsmith_div_u32(42026u, global3.x), global3.x, 73770u, ~global3.x) ^ min(~vec4<u32>(37167u, global3.x, 26834u, 1u), ~vec4<u32>(19866u, 4294967295u, 0u, global3.x)), true), ~vec4<u32>(global3.x, ~(global3.x >> (global3.x % 32u)), global3.x, global3.x));
    let var_1 = vec4<i32>(u_input.a.x, -3636i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(30104u, 19u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, reverseBits(global0[_wgslsmith_index_u32(var_0.x, 19u)]), i32(-1i) * -1i, _wgslsmith_div_i32(u_input.a.x, 37575i)), _wgslsmith_div_vec4_i32(u_input.a & u_input.a, reverseBits(u_input.a)))), ~_wgslsmith_sub_i32(u_input.a.x, -_wgslsmith_div_i32(-1i, u_input.b)));
    var_0 = max(abs(~(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, global3.x, 0u, 50020u), vec4<u32>(var_0.x, 82527u, 1u, global3.x)) << (reverseBits(vec4<u32>(var_0.x, global3.x, 1u, var_0.x)) % vec4<u32>(32u)))), ~(~max(vec4<u32>(var_0.x, var_0.x, var_0.x, 1258u) << (vec4<u32>(global3.x, global3.x, 4294967295u, global3.x) % vec4<u32>(32u)), vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x) & vec4<u32>(43692u, var_0.x, 4294967295u, 77351u))));
    global2 = array<vec4<bool>, 19>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(918f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1382f)) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1467f, -960f), -627f))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.b)) * _wgslsmith_div_f32(355f, 244f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(268f * 1000f), _wgslsmith_f_op_f32(abs(-417f))))), -1000f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1088f, _wgslsmith_f_op_f32(f32(-1f) * -354f))) - _wgslsmith_f_op_f32(-686f * _wgslsmith_f_op_f32(trunc(370f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1324f + -269f)), 1793f))));
    let var_1 = Struct_1(var_0.x, -_wgslsmith_dot_vec3_i32(-u_input.a.wzx, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 49390i, arg_0.a.x), u_input.a), global4.a.x, select(69729i, u_input.c.x, false))), 4294967295u, all(!vec2<bool>(true, all(vec3<bool>(false, true, false)))), -1439f);
    global4 = Struct_2(max(arg_1.a.a, vec3<i32>(-14327i, _wgslsmith_mod_i32(2147483647i, -2147483647i), max(-13375i, countOneBits(global0[_wgslsmith_index_u32(64213u, 19u)])))));
    global1 = 1u;
    var var_2 = arg_1.a;
    return !(!var_1.d || !any(select(vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(arg_1.b, true, false), var_1.d)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    global0 = array<i32, 19>();
    global1 = ~8798u;
    global4 = Struct_2(reverseBits(~(~min(u_input.c, vec3<i32>(1i, arg_0.b, global4.a.x)))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.e - arg_0.e), _wgslsmith_f_op_f32(ceil(535f)), arg_1.x, _wgslsmith_f_op_f32(-913f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 1000f)) - -869f)));
    var var_1 = arg_0;
    return Struct_2(_wgslsmith_mult_vec3_i32(u_input.c, -_wgslsmith_clamp_vec3_i32(~global4.a, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(26076u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), u_input.a.zzy)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = false;
    var var_1 = func_4(Struct_1(-366f, reverseBits(_wgslsmith_sub_i32(~(-14762i), firstTrailingBit(u_input.c.x))), arg_0, func_2(Struct_2(vec3<i32>(0i, global4.a.x, -2147483647i)), Struct_3(Struct_2(vec3<i32>(2147483647i, global4.a.x, global4.a.x)), arg_1.x), vec3<u32>(37962u, 31904u, arg_0) << (vec3<u32>(1u, 1u, 75695u) % vec3<u32>(32u)), firstLeadingBit(vec4<u32>(global3.x, 0u, arg_0, 4294967295u))) && !arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 524f, 397f, 356f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(1035f)), 1533f, 739f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(319f, -354f, 159f, -1404f) + vec4<f32>(-1046f, -814f, -1157f, 1000f)))));
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f)), -_wgslsmith_mult_i32(u_input.c.x, u_input.b), global3.x, ~(0u >> (global3.x % 32u)) == ~(~arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 1870f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-117f)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(418f - 297f) + _wgslsmith_f_op_f32(-605f * 1025f)), _wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(213f)) - _wgslsmith_f_op_f32(floor(-347f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f - 889f))))));
    var var_3 = countOneBits(arg_0);
    global1 = abs(~(~arg_0));
    return _wgslsmith_f_op_f32(max(920f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-987f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(824f - 918f)))))));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_2 {
    global4 = arg_3.a;
    global4 = Struct_2(min(arg_3.a.a, (u_input.c << (vec3<u32>(global3.x, global3.x, global3.x) % vec3<u32>(32u))) | vec3<i32>(arg_3.a.a.x, -25923i, -2147483647i)) | firstTrailingBit(~abs(u_input.a.wwy)));
    global3 = ~abs(vec3<u32>(global3.x, _wgslsmith_clamp_u32(global3.x, global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, 109329u, 1u), vec4<u32>(global3.x, global3.x, 76617u, global3.x))), 1u));
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1090f * _wgslsmith_f_op_f32(floor(204f)))), _wgslsmith_f_op_f32(1f + -811f)), -15747i, ~global3.x, !arg_0, 164f);
    global1 = ~56291u | firstLeadingBit(var_0.c);
    return Struct_2(reverseBits(arg_3.a.a | (~vec3<i32>(var_0.b, var_0.b, global4.a.x) >> (select(vec3<u32>(global3.x, 4294967295u, 13530u), vec3<u32>(global3.x, 50117u, 1u), vec3<bool>(arg_3.b, false, true)) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 19>();
    let var_0 = func_5(!(_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_u32(global3.x, 4294967295u), select(vec2<bool>(true, true), vec2<bool>(true, false), true))) >= 746f), -_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 19u)]), -vec2<i32>(u_input.b, 2147483647i)) & -max(~u_input.c.zx, ~vec2<i32>(u_input.a.x, 2147483647i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), func_2(Struct_2(global4.a), Struct_3(Struct_2(vec3<i32>(-55610i, 2147483647i, u_input.b)), true), vec3<u32>(global3.x, global3.x, global3.x), vec4<u32>(global3.x, 4294967295u, 0u, 27394u))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true))), vec2<bool>(max(global4.a.x, 0i) >= (i32(-1i) * -12899i), true)), Struct_3(func_4(Struct_1(_wgslsmith_div_f32(-690f, -328f), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global3.x, 19u)], -7317i), 4294967295u, true, _wgslsmith_div_f32(-1000f, -1045f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(933f, 948f, -1143f, 406f), vec4<f32>(-264f, 239f, -1341f, -1798f)))), true));
    let var_1 = Struct_3(Struct_2(~vec3<i32>(global0[_wgslsmith_index_u32(~global3.x, 19u)], func_4(Struct_1(949f, -26265i, 35513u, true, -772f), vec4<f32>(470f, -401f, -191f, 1027f)).a.x, -44369i)), func_2(var_0, Struct_3(Struct_2(u_input.c), var_0.a.x != _wgslsmith_mult_i32(global4.a.x, var_0.a.x)), ~vec3<u32>(min(28487u, global3.x), countOneBits(global3.x), min(4294967295u, 0u)), vec4<u32>(~_wgslsmith_sub_u32(4294967295u, global3.x), ~_wgslsmith_sub_u32(global3.x, 44756u), 4294967295u, global3.x)));
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1168f - 2063f), _wgslsmith_f_op_f32(1274f + 226f))), ~2147483647i, firstLeadingBit(_wgslsmith_sub_u32(global3.x, 90611u)), var_1.b, 238f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1324f), _wgslsmith_f_op_f32(-496f - 2170f), _wgslsmith_f_op_f32(386f - 509f), _wgslsmith_f_op_f32(trunc(-418f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(972f, -436f, 1000f, -1298f) + vec4<f32>(1000f, 283f, 685f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 156f, -1775f, 525f) - vec4<f32>(280f, -1000f, -799f, 208f)))))));
    global3 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(abs(firstTrailingBit(20156u)), global3.x << (global3.x % 32u), 68512u), vec3<u32>(global3.x, min(4294967295u, firstTrailingBit(3352u)), abs(global3.x)) & ~_wgslsmith_sub_vec3_u32(~vec3<u32>(global3.x, 4294967295u, global3.x), vec3<u32>(4294967295u, global3.x, global3.x)), reverseBits(vec3<u32>(min(_wgslsmith_sub_u32(4294967295u, global3.x), 42596u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4294967295u, 1u, global3.x), vec4<u32>(14107u, 4294967295u, 0u, global3.x)) | _wgslsmith_div_u32(global3.x, global3.x), ~_wgslsmith_add_u32(23570u, 1u))));
    global4 = func_5(2416f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(697f)))), func_5(true, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, abs(-44773i)), vec2<i32>(~785i, select(0i, -48417i, var_1.b))), select(vec2<bool>(var_1.b, !var_1.b), vec2<bool>(!var_1.b, true), true), Struct_3(var_0, !var_1.b)).a.xz, !(!select(!vec2<bool>(var_1.b, false), !vec2<bool>(var_1.b, var_1.b), var_1.b & var_1.b)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)) & vec4<i32>(-1i, firstTrailingBit(-1i), var_1.a.a.x, global4.a.x)));
}

