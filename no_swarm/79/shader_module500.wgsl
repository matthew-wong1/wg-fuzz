struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: i32,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<Struct_3, 23>;

var<private> global2: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(494f, -273f, -770f), vec3<f32>(-1238f, 1355f, -1000f), vec3<f32>(763f, 934f, 545f), vec3<f32>(263f, -981f, -387f), vec3<f32>(685f, -1229f, -383f), vec3<f32>(1346f, 807f, -2282f), vec3<f32>(-140f, -526f, 288f), vec3<f32>(-1000f, 674f, -170f), vec3<f32>(1925f, -175f, -2499f), vec3<f32>(-352f, 1313f, 1456f), vec3<f32>(353f, -901f, -628f), vec3<f32>(-1107f, 741f, -467f), vec3<f32>(-1001f, -1152f, 151f), vec3<f32>(364f, 384f, 1170f), vec3<f32>(545f, 2330f, -466f), vec3<f32>(590f, -443f, 233f), vec3<f32>(889f, 1607f, 781f), vec3<f32>(2235f, -1528f, 235f), vec3<f32>(-485f, -159f, 1206f), vec3<f32>(-1439f, 1642f, 1099f), vec3<f32>(846f, -1000f, -104f), vec3<f32>(1849f, -1000f, 1809f), vec3<f32>(662f, -928f, 517f), vec3<f32>(-1000f, 1514f, -1810f), vec3<f32>(2054f, 554f, 278f), vec3<f32>(-581f, -420f, -718f), vec3<f32>(-202f, 726f, -516f), vec3<f32>(-865f, 464f, 846f), vec3<f32>(762f, 1225f, 140f), vec3<f32>(-570f, -726f, -104f), vec3<f32>(692f, 1624f, 1342f), vec3<f32>(-1185f, 1000f, 216f));

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(1162f, -524f)), Struct_1(vec2<u32>(30144u, 22571u), vec2<f32>(1822f, 941f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_5) -> vec2<f32> {
    global0 = array<bool, 3>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(arg_0.b.a.b.x)), Struct_1(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(53584u, arg_0.d.b.a.x), arg_0.a.d, 1u), global3.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(346f, arg_0.d.b.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.b.b.x, arg_0.d.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.a, 336f) * vec2<f32>(1183f, arg_0.d.b.b.x)))))));
    var var_1 = Struct_5(arg_0.a, arg_0.b, u_input.a, arg_0.d, arg_0.a.c);
    global2 = array<vec3<f32>, 32>();
    global4 = array<Struct_1, 2>();
    return arg_0.b.a.b;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(16458u, 1u)), arg_0) ^ ~firstTrailingBit(~vec2<u32>(arg_0, global3.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1317f, -422f) - vec2<f32>(-161f, 197f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1133f, 483f))) - vec2<f32>(-1000f, -1181f)) * vec2<f32>(1f, 1f)));
    var_0 = global4[_wgslsmith_index_u32(global3.x, 2u)];
    let var_1 = _wgslsmith_mod_u32(0u, ~var_0.a.x);
    var var_2 = Struct_5(Struct_4(vec2<bool>(true, !all(arg_1)), true, vec3<i32>(u_input.a, ~27133i, 15669i), _wgslsmith_add_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_0), vec3<u32>(4294967295u, 1u, 0u)), var_1), 4294967295u), _wgslsmith_clamp_i32(8753i, u_input.a, u_input.a << (var_1 % 32u)) ^ u_input.a), Struct_2(Struct_1(~var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, arg_1.x)) - _wgslsmith_f_op_vec2_f32(func_3(Struct_5(Struct_4(arg_1.ww, arg_1.x, vec3<i32>(24876i, 11175i, 16266i), var_1, 15693i), Struct_2(global4[_wgslsmith_index_u32(10155u, 2u)], true, global4[_wgslsmith_index_u32(var_0.a.x, 2u)]), 1i, Struct_3(var_0.b.x, global4[_wgslsmith_index_u32(0u, 2u)]), vec3<i32>(u_input.a, u_input.a, u_input.a)))))), all(select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, false), arg_1.zz)) & (global3.x >= 1u), Struct_1(~_wgslsmith_mod_vec2_u32(global3.xz, vec2<u32>(69276u, var_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.x, var_0.b.x), vec2<f32>(474f, var_0.b.x)))))), firstTrailingBit(1i), global1[_wgslsmith_index_u32(var_1, 23u)], vec3<i32>(u_input.a, 0i | min(17173i & u_input.a, -u_input.a), _wgslsmith_mod_i32(~(-u_input.a), -_wgslsmith_add_i32(-1i, u_input.a))));
    var var_3 = var_2.c;
    return vec4<i32>(0i, max(u_input.a, u_input.a) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -18971i, var_2.e.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.c.x, -5942i, -5885i, 34192i), vec4<i32>(-2147483647i, var_2.e.x, 2147483647i, 18121i))), countOneBits(u_input.a), -min(~var_2.e.x, u_input.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> i32 {
    global2 = array<vec3<f32>, 32>();
    global2 = array<vec3<f32>, 32>();
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(min(countOneBits(vec4<i32>(u_input.a, u_input.a, -2147483647i, -1599i)) & ~vec4<i32>(u_input.a, u_input.a, 1i, 1i), ~func_2(global3.x, vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]))), vec4<i32>(-1i) * -(vec4<i32>(-63483i, u_input.a, -1i, -8865i) & vec4<i32>(u_input.a, u_input.a, u_input.a, 15770i)), vec4<i32>(u_input.a, u_input.a, -(~u_input.a), u_input.a)), ~firstTrailingBit(vec4<i32>(-u_input.a, abs(-45919i), countOneBits(1i), ~1i)));
    var var_1 = select(global3.x, ~43925u, arg_1 <= _wgslsmith_f_op_vec2_f32(func_3(Struct_5(Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(39219u, 3u)], false), false, vec3<i32>(2147483647i, u_input.a, -682i), 1u, u_input.a), Struct_2(Struct_1(vec2<u32>(global3.x, 4294967295u), vec2<f32>(arg_0.x, arg_0.x)), global0[_wgslsmith_index_u32(19953u, 3u)], Struct_1(vec2<u32>(11292u, 37165u), vec2<f32>(-1143f, arg_0.x))), -14385i, global1[_wgslsmith_index_u32(1u, 23u)], -vec3<i32>(u_input.a, u_input.a, -1i)))).x);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, ~u_input.a), min(u_input.a, _wgslsmith_div_i32(17309i, -1i)), u_input.a, ~_wgslsmith_mod_i32(14139i, -11456i)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-7244i, 1i, u_input.a), vec3<i32>(u_input.a, -38010i, -18737i)))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), abs(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a))) & abs(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -12459i, -27014i), vec4<i32>(18008i, 2147483647i, -14500i, u_input.a), vec4<i32>(12750i, u_input.a, -2147483647i, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global3.x;
    global3 = _wgslsmith_add_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, 13320u, 0u, global3.x), vec4<u32>(1u, global3.x, 64117u, global3.x)), ~vec4<u32>(global3.x, global3.x, global3.x, global3.x)), abs(vec4<u32>(4294967295u, 4734u, global3.x, global3.x)) | ~vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(14043u, ~63621u, global3.x, firstTrailingBit(global3.x)))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(global3.x, global3.x, global3.x, global3.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global3.x, 52424u, global3.x, global3.x), firstLeadingBit(firstTrailingBit(vec4<u32>(0u, global3.x, 32401u, 42086u))))));
    var var_1 = Struct_4(select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), !global0[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(true, true), vec2<bool>(true, true)), false, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-10805i, func_1(vec2<f32>(-679f, 114f), -1000f)), _wgslsmith_sub_i32(abs(1i), i32(-1i) * -4807i), abs(~u_input.a)), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(111162i, u_input.a, -11510i))) | ~vec3<i32>(-18398i, -1i, u_input.a)), global3.x, ~(-4184i));
    var var_2 = ~_wgslsmith_mod_u32(~7684u, _wgslsmith_dot_vec2_u32(global3.yw, select(vec2<u32>(49989u, 1u), global3.xx, vec2<bool>(false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_div_vec2_u32((countOneBits(global3.ww) >> (global3.xx % vec2<u32>(32u))) & ~(~vec2<u32>(40758u, 4294967295u)), ~select(global3.wx | vec2<u32>(4294967295u, 78738u), select(vec2<u32>(var_1.d, var_1.d), global3.yz, false), true)), _wgslsmith_f_op_f32(select(721f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-768f)), _wgslsmith_div_f32(1159f, -265f))), global0[_wgslsmith_index_u32(15292u, 3u)])), ~(-firstTrailingBit(var_1.c | vec3<i32>(var_1.e, u_input.a, 13393i))), func_2(_wgslsmith_mult_u32(global3.x, min(min(global3.x, global3.x), global3.x)), !(!(!vec4<bool>(false, var_1.a.x, true, true)))).x);
}

