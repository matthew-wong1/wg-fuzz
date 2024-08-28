struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: u32;

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(962f, 1272f, 170f, 377f), vec4<f32>(428f, 1454f, -1000f, 261f), vec4<f32>(947f, 346f, -809f, 1000f), vec4<f32>(817f, 660f, -637f, -1010f), vec4<f32>(-691f, -802f, 855f, -1000f), vec4<f32>(-177f, 471f, 844f, 1000f), vec4<f32>(776f, 1019f, -523f, 1000f), vec4<f32>(-485f, -1091f, 479f, -315f), vec4<f32>(1418f, 766f, 2277f, -150f), vec4<f32>(1054f, -1115f, 1127f, -574f), vec4<f32>(748f, 240f, 819f, 788f), vec4<f32>(-1045f, 1000f, 263f, 918f), vec4<f32>(614f, 198f, 624f, 1005f), vec4<f32>(-1096f, -1575f, -1000f, 1292f), vec4<f32>(-1603f, 1306f, -1000f, 1000f), vec4<f32>(2017f, 1160f, 117f, -1019f), vec4<f32>(897f, 1204f, -601f, 517f), vec4<f32>(728f, 1067f, -2532f, 340f), vec4<f32>(560f, 1232f, -331f, 118f), vec4<f32>(-455f, 524f, -258f, 330f), vec4<f32>(874f, -1023f, -1000f, 1411f), vec4<f32>(-1243f, 1752f, -235f, 1112f), vec4<f32>(-1222f, 394f, 460f, -616f), vec4<f32>(710f, -272f, 1115f, -1000f), vec4<f32>(-455f, -692f, -279f, 1703f), vec4<f32>(1209f, 1000f, 1669f, 1720f), vec4<f32>(1000f, 373f, 214f, -312f), vec4<f32>(-1542f, -1000f, -1356f, -1935f), vec4<f32>(1448f, -348f, 747f, 250f), vec4<f32>(647f, -222f, -415f, -197f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    global1 = 1u;
    var var_0 = Struct_4(Struct_1(!all(vec4<bool>(false, false, true, true)) | false, !(-527f >= _wgslsmith_f_op_f32(ceil(-696f))), u_input.c, ~abs(~vec4<u32>(1u, u_input.b, 0u, 0u))));
    var var_1 = Struct_1(all(!(!vec2<bool>(var_0.a.a, var_0.a.a))), !var_0.a.b, 47044i, ~vec4<u32>(firstLeadingBit(firstTrailingBit(u_input.b)), max(1u, min(1303u, var_0.a.d.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 46326u, 25336u), vec3<u32>(4294967295u, var_0.a.d.x, 46162u)), 109276u & ~var_0.a.d.x));
    var_1 = var_0.a;
    let var_2 = select(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.x, var_0.a.d.x, var_1.d.x, var_0.a.d.x), var_1.d, var_1.d), vec4<u32>(u_input.b, 0u, var_1.d.x, var_0.a.d.x))), _wgslsmith_mult_u32(~var_0.a.d.x, countOneBits(11685u)), !var_1.b);
    return !var_1.a;
}

fn func_2() -> Struct_5 {
    var var_0 = select(vec3<bool>(!(true && (u_input.b != u_input.b)), true, func_3()), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1371f, -1009f)), false, true), vec3<bool>(true, true, !(true || all(vec3<bool>(false, true, true)))));
    var var_1 = Struct_1(any(!vec4<bool>(any(var_0.zz), !var_0.x, all(vec2<bool>(true, var_0.x)), all(vec3<bool>(var_0.x, false, var_0.x)))), var_0.x || (any(vec2<bool>(true, false)) || false), -1i, vec4<u32>(u_input.b, u_input.b, ~(~u_input.b), u_input.b) << (vec4<u32>(u_input.b, 17929u << ((u_input.b & 41772u) % 32u), abs(~54905u), ~84370u) % vec4<u32>(32u)));
    let var_2 = vec4<bool>(func_3(), all(select(!(!vec3<bool>(true, var_1.a, false)), vec3<bool>(true, true, !var_0.x), !select(vec3<bool>(var_0.x, var_1.b, true), vec3<bool>(var_0.x, var_0.x, true), false))), true || var_0.x, all(var_0.xy));
    global1 = ~max(abs(_wgslsmith_mod_u32(97207u, u_input.b)), 4294967295u) & var_1.d.x;
    var var_3 = Struct_4(Struct_1(true, select(func_3(), var_1.b, (true != var_1.a) & false), u_input.a, ~vec4<u32>(42109u, 1u, ~u_input.b, var_1.d.x)));
    return Struct_5(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.d, 20179i), vec2<i32>(var_1.c, 43541i), true), -vec2<i32>(var_3.a.c, var_1.c)), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(var_3.a.c, 3320i)), _wgslsmith_sub_vec2_i32(vec2<i32>(27488i, var_3.a.c) | vec2<i32>(var_3.a.c, var_3.a.c), vec2<i32>(u_input.d, var_3.a.c)))), !vec4<bool>(all(vec3<bool>(true, true, true)), true, true, var_3.a.a), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(var_3.a.d, abs(var_3.a.d)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_3.a.d.x, 15660u, 0u), vec4<u32>(var_3.a.d.x, u_input.b, u_input.b, var_3.a.d.x)), vec4<u32>(77799u, u_input.b, 4294967295u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.d.x, u_input.b, var_3.a.d.x, u_input.b), ~vec4<u32>(54528u, 1u, 42849u, 4294967295u), firstTrailingBit(vec4<u32>(var_3.a.d.x, var_1.d.x, var_1.d.x, var_1.d.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-448f * _wgslsmith_div_f32(1067f, 621f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1206f, 769f), _wgslsmith_f_op_f32(1648f + -185f)))))));
    let var_1 = func_2();
    global1 = countOneBits(24711u);
    global2 = array<vec4<f32>, 30>();
    let var_2 = var_1;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 17496u), 31u)];
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.d.x - var_0.b)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.b)))))), _wgslsmith_div_vec2_f32(var_0.d.zx, vec2<f32>(_wgslsmith_f_op_f32(-837f * _wgslsmith_f_op_f32(abs(-846f))), 153f)), (((var_0.c.b || var_0.c.b) & (var_0.c.b && var_0.c.b)) && (true | !var_0.c.b)) && true));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(!(778f <= var_0.b), !(u_input.a <= 2147483647i), var_0.c.c, vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 12275u, u_input.b), ~0u, 1218u, min(u_input.b, var_0.c.d.x))), select(true, var_0.c.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-741f, -400f, 10664u != u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -1593f), -u_input.c != 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a);
}

