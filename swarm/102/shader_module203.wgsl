struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(20865i, vec4<i32>(-1i, -16890i, 2147483647i, -12856i)), Struct_1(0i, vec4<i32>(1i, 0i, 41737i, -3340i)), Struct_1(-15373i, vec4<i32>(1i, i32(-2147483648), -42552i, 20025i)), Struct_1(-1i, vec4<i32>(29189i, -1i, 8967i, 2147483647i)), Struct_1(i32(-2147483648), vec4<i32>(29599i, -76618i, 1i, -20664i)), Struct_1(-18276i, vec4<i32>(-1i, 1i, 41642i, i32(-2147483648))), Struct_1(-13456i, vec4<i32>(1i, -1532i, 0i, 1i)), Struct_1(-31010i, vec4<i32>(15288i, 0i, 8889i, 0i)), Struct_1(0i, vec4<i32>(-1i, -34168i, 30733i, -17849i)), Struct_1(-18391i, vec4<i32>(9442i, 2147483647i, -62890i, -32034i)), Struct_1(1i, vec4<i32>(50121i, -49257i, 1i, -31085i)), Struct_1(-17476i, vec4<i32>(2147483647i, 10320i, 20650i, 1i)), Struct_1(40318i, vec4<i32>(-425i, 0i, -57246i, -12241i)), Struct_1(62639i, vec4<i32>(1i, -16930i, 38123i, 0i)), Struct_1(0i, vec4<i32>(-56761i, -1i, -1i, -15520i)), Struct_1(31741i, vec4<i32>(-10578i, -1i, -51462i, i32(-2147483648))), Struct_1(i32(-2147483648), vec4<i32>(26900i, -1i, 2147483647i, 15626i)), Struct_1(13466i, vec4<i32>(1i, 1i, 0i, 2147483647i)), Struct_1(24914i, vec4<i32>(-1i, -58056i, -60987i, 34317i)));

var<private> global2: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1790f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f * 679f) - 1262f))), Struct_1(abs(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), _wgslsmith_mod_vec4_i32(global0.b.b, global0.b.b)), !global0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1168f, _wgslsmith_f_op_f32(round(1871f))), -1368f, 1534f, arg_2) * vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(arg_2 * 127f), 377f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(round(global2.x))))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1956f, arg_2, global2.x, -2160f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(global0.a.x * global0.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1642f * global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1252f)), 356f) - vec4<f32>(449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))), arg_2, 380f))));
    global1 = array<Struct_1, 19>();
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(954f, global0.a.x, 958f, global2.x) + vec4<f32>(var_0.a.x, -258f, 2354f, global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, global2.x, -1641f, var_1.x), vec4<f32>(1934f, global2.x, var_0.a.x, var_0.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, arg_2, 1116f, 701f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(978f, -1000f, -1134f, -523f) * vec4<f32>(1383f, var_0.a.x, -1031f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, global2.x, var_1.x, global0.a.x), vec4<f32>(-2269f, var_0.a.x, global2.x, -251f)))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-global0.a.x), 112f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), 893f))), any(!vec3<bool>(!global0.c.x, global0.c.x, !global0.c.x))));
    return -1635f;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> bool {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    var var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) + global2.x);
    return any(select(select(arg_1.e.c, arg_1.c.c, arg_1.e.c.x), select(global0.c, select(var_0.c, vec4<bool>(global0.c.x, arg_1.c.c.x, arg_1.e.c.x, global0.c.x), vec4<bool>(true, global0.c.x, true, var_0.c.x)), vec4<bool>(true, arg_1.e.c.x, arg_1.b.x, global0.c.x)), !(!vec4<bool>(global0.c.x, arg_1.b.x, false, global0.c.x)))) || false;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: u32) -> vec3<bool> {
    let var_0 = global0.b.b.ww;
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(889f, _wgslsmith_f_op_f32(round(189f)), func_4(_wgslsmith_f_op_f32(func_3(vec3<u32>(35663u, 1u, 1u), arg_3, 1297f)), Struct_3(vec4<u32>(arg_1.x, arg_3, u_input.a, arg_3), vec3<bool>(false, global0.c.x, false), Struct_2(global0.a, global0.b, global0.c), vec4<i32>(1936i, 40715i, -1i, 12594i), Struct_2(vec3<f32>(545f, global2.x, 2492f), global0.b, global0.c)), -459f, max(45336i, var_0.x)))), _wgslsmith_f_op_f32(-1161f - _wgslsmith_f_op_f32(-1427f * _wgslsmith_f_op_f32(1250f + global0.a.x))), _wgslsmith_f_op_f32(-global0.a.x)), global1[_wgslsmith_index_u32(abs(~abs(_wgslsmith_mod_u32(arg_3, arg_3))), 19u)], vec4<bool>(global0.c.x, any(select(!global0.c, vec4<bool>(global0.c.x, true, false, global0.c.x), !vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x))), true, global0.c.x));
    var var_1 = Struct_1(arg_0.x >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(6970u, u_input.a, 92993u) & min(1u, u_input.a), 28753u, firstTrailingBit(~0u)) % 32u), -select(arg_0, global0.b.b, !vec4<bool>(global0.c.x, global0.c.x, false, true)));
    var var_2 = Struct_1(abs(i32(-1i) * -(u_input.c.x << (4294967295u % 32u))), _wgslsmith_mod_vec4_i32(arg_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(-31960i, firstLeadingBit(u_input.b.x), i32(-1i) * -11377i, arg_0.x), firstLeadingBit(arg_0), _wgslsmith_mult_vec4_i32(global0.b.b, firstLeadingBit(vec4<i32>(-12781i, -5440i, 21439i, -52148i))))));
    var var_3 = -_wgslsmith_mod_vec4_i32(arg_0, select(~vec4<i32>(var_1.b.x, 12886i, arg_2.x, arg_2.x), _wgslsmith_mult_vec4_i32(arg_0 & vec4<i32>(-2147483647i, var_0.x, -20304i, global0.b.a), vec4<i32>(43384i, -53344i, -18124i, global0.b.b.x) ^ vec4<i32>(2147483647i, var_1.b.x, -25620i, arg_0.x)), select(global0.c, vec4<bool>(global0.c.x, true, global0.c.x, false), !vec4<bool>(true, global0.c.x, global0.c.x, false))));
    return vec3<bool>(!all(vec3<bool>(global0.c.x, all(vec2<bool>(global0.c.x, global0.c.x)), false)), all(vec2<bool>(any(!vec3<bool>(false, false, global0.c.x)), global2.x >= 1150f)), false);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_3(~(~vec4<u32>(~0u, countOneBits(4294967295u), firstLeadingBit(65889u), abs(u_input.a))), func_2(vec4<i32>(29771i, ~_wgslsmith_div_i32(34449i, global0.b.b.x), _wgslsmith_mod_i32(-33348i, arg_0.x), ~(-40620i)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a))), ~firstLeadingBit(u_input.c.xz), _wgslsmith_sub_u32(u_input.a, abs(abs(1u)))), Struct_2(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x + 1275f))), _wgslsmith_f_op_f32(trunc(global2.x))), Struct_1(~_wgslsmith_mult_i32(arg_0.x, arg_0.x), ~global0.b.b), global0.c), -vec4<i32>(2147483647i, 1i, -(global0.b.a ^ u_input.c.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2289i), vec2<i32>(arg_0.x, arg_0.x))), Struct_2(global0.a, Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.c.x, -2147483647i)), _wgslsmith_mod_vec2_i32(u_input.c.yz, arg_0)), global0.b.b), !vec4<bool>(false & global0.c.x, all(vec4<bool>(false, global0.c.x, true, false)), global0.a.x > -732f, all(vec2<bool>(global0.c.x, global0.c.x)))));
    global2 = global0.a.zy;
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.x)), 498f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(var_0.e.a.xx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.e.a.xx))));
    var var_2 = select(abs(vec3<i32>(_wgslsmith_div_i32(2147483647i, var_0.c.b.b.x | -5450i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -21387i), arg_0)), -11703i)), global0.b.b.wyx, global0.c.x);
    return _wgslsmith_mod_i32(global0.b.b.x, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = vec4<i32>(firstLeadingBit(func_1(reverseBits(u_input.b.yx))), -_wgslsmith_mod_i32(-select(-6782i, 1i, false), ~(~u_input.c.x)), global0.b.b.x, ~global0.b.b.x << (1u % 32u));
    let var_2 = var_1.x;
    var_1 = -min(select(~countOneBits(global0.b.b), -vec4<i32>(38292i, global0.b.a, 0i, global0.b.a), select(select(vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x), vec4<bool>(global0.c.x, false, true, true), vec4<bool>(global0.c.x, global0.c.x, false, false)), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), any(vec2<bool>(true, global0.c.x)))), ~vec4<i32>(_wgslsmith_sub_i32(var_1.x, var_1.x), max(u_input.b.x, 0i), -88995i, ~1i));
    global2 = global0.a.zy;
    let var_3 = Struct_3(select(vec4<u32>(~u_input.a, ~1u, ~abs(4294967295u), _wgslsmith_clamp_u32(u_input.a, ~48124u, ~12124u)), vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a) | reverseBits(4294967295u), u_input.a, ~(~44324u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), select(vec3<u32>(u_input.a, u_input.a, 3606u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true)))), !(false || global0.c.x) && global0.c.x), global0.c.wzy, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.a, global0.a)) * global0.a)), global0.b, !select(global0.c, select(global0.c, global0.c, true), global0.c)), countOneBits(global0.b.b), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a))), Struct_1(u_input.c.x, vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(var_1.x, u_input.b.x), reverseBits(u_input.b.x), countOneBits(var_1.x))), global0.c));
    let var_4 = Struct_3(~reverseBits(var_3.a), var_3.b, var_3.c, min((global0.b.b << (var_3.a % vec4<u32>(32u))) ^ ~_wgslsmith_div_vec4_i32(global0.b.b, var_3.e.b.b), var_3.e.b.b), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(908f, global2.x)), var_3.e.a.x)), global0.a.x, _wgslsmith_f_op_f32(max(var_3.e.a.x, global2.x))), global1[_wgslsmith_index_u32(u_input.a, 19u)], !select(var_3.e.c, vec4<bool>(true, false, false, global0.c.x), !global0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.x, 11275u, 78415u, 4294967295u), _wgslsmith_div_vec4_u32(var_3.a, var_4.a)) | ~reverseBits(u_input.a)) & select(~u_input.a, firstTrailingBit(var_3.a.x), var_3.b.x), ~firstLeadingBit(u_input.b.x));
}

