struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(Struct_4(Struct_3(Struct_2(vec3<u32>(0u, 95742u, 143344u), 80062u, vec4<f32>(1259f, 237f, 721f, 335f), Struct_1(vec3<bool>(false, true, true)), vec4<bool>(false, false, false, false)), vec3<bool>(false, false, false), Struct_2(vec3<u32>(22563u, 1u, 5458u), 4294967295u, vec4<f32>(1282f, 1111f, 1258f, -617f), Struct_1(vec3<bool>(true, true, true)), vec4<bool>(false, true, false, false))), 4294967295u, Struct_2(vec3<u32>(6764u, 0u, 1u), 11207u, vec4<f32>(-1645f, -981f, -852f, -1312f), Struct_1(vec3<bool>(true, false, false)), vec4<bool>(false, true, false, true)), 0u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), Struct_3(Struct_2(vec3<u32>(56955u, 34616u, 1u), 0u, vec4<f32>(-496f, 234f, -831f, 1048f), Struct_1(vec3<bool>(false, false, true)), vec4<bool>(false, false, true, true)), vec3<bool>(false, true, true), Struct_2(vec3<u32>(23631u, 85142u, 29936u), 649u, vec4<f32>(-272f, 626f, 2764f, -1704f), Struct_1(vec3<bool>(true, false, false)), vec4<bool>(false, false, false, true))), Struct_3(Struct_2(vec3<u32>(4294967295u, 1u, 0u), 55848u, vec4<f32>(-478f, -187f, 1040f, 386f), Struct_1(vec3<bool>(true, true, true)), vec4<bool>(true, false, false, true)), vec3<bool>(true, false, true), Struct_2(vec3<u32>(12447u, 4294967295u, 70248u), 1u, vec4<f32>(1000f, -1109f, -811f, 1041f), Struct_1(vec3<bool>(false, true, true)), vec4<bool>(false, false, true, false))), Struct_2(vec3<u32>(1u, 22056u, 31945u), 4294967295u, vec4<f32>(-1024f, 518f, -873f, 361f), Struct_1(vec3<bool>(true, true, true)), vec4<bool>(true, false, false, false))), Struct_5(Struct_4(Struct_3(Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), 1u, vec4<f32>(503f, -1300f, 1442f, -203f), Struct_1(vec3<bool>(true, true, false)), vec4<bool>(true, false, false, true)), vec3<bool>(true, false, true), Struct_2(vec3<u32>(20613u, 50818u, 1u), 1493u, vec4<f32>(750f, 622f, -227f, 1695f), Struct_1(vec3<bool>(false, true, true)), vec4<bool>(false, false, true, true))), 0u, Struct_2(vec3<u32>(32076u, 59604u, 12203u), 39754u, vec4<f32>(221f, 301f, 1174f, 1308f), Struct_1(vec3<bool>(false, true, true)), vec4<bool>(false, false, false, true)), 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 30835u), Struct_3(Struct_2(vec3<u32>(21645u, 4294967295u, 0u), 1u, vec4<f32>(2398f, -787f, -591f, 626f), Struct_1(vec3<bool>(true, false, false)), vec4<bool>(true, true, false, true)), vec3<bool>(true, true, false), Struct_2(vec3<u32>(0u, 0u, 24409u), 48818u, vec4<f32>(-838f, -370f, -125f, 1266f), Struct_1(vec3<bool>(false, false, false)), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(vec3<u32>(25027u, 21788u, 11029u), 43945u, vec4<f32>(684f, 581f, 1000f, -589f), Struct_1(vec3<bool>(true, false, true)), vec4<bool>(false, false, false, false)), vec3<bool>(false, false, false), Struct_2(vec3<u32>(1u, 1u, 1u), 17285u, vec4<f32>(215f, 713f, -1270f, -1008f), Struct_1(vec3<bool>(true, true, false)), vec4<bool>(false, false, true, false))), Struct_2(vec3<u32>(1u, 2169u, 4294967295u), 32235u, vec4<f32>(1000f, 431f, 225f, -1511f), Struct_1(vec3<bool>(true, true, true)), vec4<bool>(false, false, false, false))));

var<private> global1: f32;

var<private> global2: array<u32, 6> = array<u32, 6>(4294967295u, 4294967295u, 4294967295u, 5183u, 82288u, 4294967295u);

var<private> global3: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> bool {
    var var_0 = true;
    global2 = array<u32, 6>();
    let var_1 = arg_0;
    global0 = array<Struct_5, 2>();
    let var_2 = vec2<f32>(global3.c.x, 149f);
    return true;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_5(Struct_4(Struct_3(Struct_2(global3.a, ~global2[_wgslsmith_index_u32(76263u, 6u)], vec4<f32>(global3.c.x, -239f, -333f, arg_3.x), Struct_1(global3.e.yzy), vec4<bool>(true, global3.e.x, false, true)), vec3<bool>(false, true, true), Struct_2(global3.a, global2[_wgslsmith_index_u32(44947u, 6u)] ^ global3.b, vec4<f32>(arg_3.x, arg_3.x, 1681f, global3.c.x), Struct_1(arg_2), global3.e)), select(global2[_wgslsmith_index_u32(u_input.d, 6u)], _wgslsmith_add_u32(0u, reverseBits(24475u)), arg_2.x), Struct_2(global3.a, ~global2[_wgslsmith_index_u32(0u, 6u)] | _wgslsmith_add_u32(global3.b, global2[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.c, vec4<f32>(240f, -194f, -1385f, arg_3.x))), global3.d, vec4<bool>(any(vec3<bool>(false, true, arg_0.x)), true, true, arg_0.x || true)), select(~(~global3.b), u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(2147483647i, -2147483647i)) <= u_input.c.x)), ~vec4<u32>(~_wgslsmith_dot_vec3_u32(global3.a, global3.a), ~u_input.d, 60349u, _wgslsmith_div_u32(4294967295u & global3.a.x, 4861u << (global3.a.x % 32u))), Struct_3(Struct_2(global3.a, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(1u, 6u)] << (13921u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global3.a.x, 22008u, 61361u), vec4<u32>(0u, 1u, global3.a.x, 36619u))), arg_3, Struct_1(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(true, false, true), true)), global3.e), arg_2, Struct_2(_wgslsmith_mod_vec3_u32(global3.a, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)], 0u, 20540u)), _wgslsmith_dot_vec3_u32(~global3.a, ~global3.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3 + vec4<f32>(-1204f, arg_3.x, arg_3.x, 450f))), global3.d, !vec4<bool>(true, global3.e.x, arg_2.x, global3.d.a.x))), Struct_3(Struct_2(min(global3.a, _wgslsmith_clamp_vec3_u32(global3.a, global3.a, global3.a)), _wgslsmith_sub_u32(global3.a.x, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, -1249f, -216f, global3.c.x))), Struct_1(vec3<bool>(arg_1, arg_2.x, true)), !vec4<bool>(false, arg_2.x, arg_2.x, false)), !vec3<bool>(true, true, arg_1), Struct_2(min(~global3.a, _wgslsmith_div_vec3_u32(global3.a, global3.a)), _wgslsmith_dot_vec2_u32(~global3.a.zx, vec2<u32>(u_input.d, global3.b)), vec4<f32>(_wgslsmith_f_op_f32(step(global3.c.x, 504f)), _wgslsmith_div_f32(-888f, -205f), -631f, -893f), Struct_1(arg_2), global3.e)), Struct_2(~global3.a, _wgslsmith_clamp_u32(u_input.d, 86167u, _wgslsmith_mult_u32(~0u, u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -243f), arg_3.x, _wgslsmith_f_op_f32(-484f + global3.c.x), global3.c.x), Struct_1(select(!vec3<bool>(arg_1, false, arg_2.x), select(arg_2, vec3<bool>(arg_0.x, false, true), true), select(vec3<bool>(arg_0.x, arg_0.x, false), arg_0, arg_2.x))), select(global3.e, select(!vec4<bool>(false, arg_0.x, arg_2.x, true), global3.e, all(global3.e)), any(!arg_2.xz))));
    return ~max(min(~u_input.c.x, u_input.a), u_input.b);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~(~(-vec4<i32>(11028i, 7280i, 13151i, u_input.a))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(max(vec4<i32>(38289i, u_input.c.x, 29598i, 19241i), vec4<i32>(u_input.b, 2147483647i, u_input.c.x, 18725i))), vec4<i32>(_wgslsmith_mod_i32(u_input.a, -1i), func_3(global3.d.a, global3.d.a.x, global3.d.a, global3.c), max(u_input.b, -30041i), 1i), abs(abs(vec4<i32>(u_input.c.x, -22926i, u_input.b, -41105i))))), -vec4<i32>(u_input.c.x, -2147483647i, u_input.b << (_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(77435u, 6u)], global3.b) % 32u), firstLeadingBit(u_input.b ^ -38018i)), countOneBits(reverseBits(-vec4<i32>(-9407i, u_input.c.x, -37974i, u_input.b))) | firstTrailingBit(abs(vec4<i32>(u_input.c.x, -3012i, u_input.c.x, -5634i))));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(max(1658f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x))))))));
    var var_3 = _wgslsmith_mod_u32(~(~0u), ~(~6107u));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-322f, _wgslsmith_f_op_f32(-global3.c.x), any(vec3<bool>(global3.e.x, true, global3.e.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.x * -1034f) + global3.c.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1410f)))), global3.c.x))) * -551f);
    return Struct_1(select(global3.e.wyy, global3.d.a, select(vec3<bool>(true, !global3.d.a.x, global3.d.a.x), select(select(global3.e.zzw, global3.d.a, true), select(vec3<bool>(global3.d.a.x, true, global3.d.a.x), global3.e.xxz, vec3<bool>(global3.d.a.x, global3.e.x, false)), global3.d.a), vec3<bool>(false, any(vec3<bool>(true, global3.d.a.x, true)), !global3.d.a.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = -firstTrailingBit(u_input.c) >> (~_wgslsmith_mod_vec3_u32(arg_1.a, select(arg_1.a, vec3<u32>(global2[_wgslsmith_index_u32(1u, 6u)], 0u, u_input.d), select(vec3<bool>(arg_1.d.a.x, global3.d.a.x, true), global3.e.yxw, vec3<bool>(global3.d.a.x, global3.e.x, true)))) % vec3<u32>(32u));
    global2 = array<u32, 6>();
    var var_1 = u_input.b;
    global2 = array<u32, 6>();
    var var_2 = -8046i;
    return global3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(0i, vec4<bool>(u_input.d >= 36173u, all(select(global3.d.a, !global3.e.zzy, any(vec4<bool>(global3.d.a.x, global3.e.x, global3.d.a.x, global3.d.a.x)))), global3.e.x, false));
    var var_1 = false;
    var var_2 = func_4(u_input.c, Struct_2(global3.a, _wgslsmith_mod_u32(49965u, 2846u), global3.c, func_2(), !(!select(global3.e, vec4<bool>(global3.d.a.x, global3.d.a.x, true, global3.d.a.x), global3.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) - global3.c.x));
    let var_3 = Struct_5(Struct_4(Struct_3(Struct_2(~vec3<u32>(global2[_wgslsmith_index_u32(1u, 6u)], u_input.d, u_input.d), ~u_input.d, vec4<f32>(-223f, global3.c.x, -247f, global3.c.x), func_4(vec3<i32>(-33574i, u_input.c.x, u_input.c.x), Struct_2(global3.a, u_input.d, vec4<f32>(global3.c.x, global3.c.x, global3.c.x, global3.c.x), Struct_1(vec3<bool>(false, global3.e.x, var_2.a.x)), vec4<bool>(false, true, false, var_2.a.x)), global3.c.x), global3.e), select(!var_2.a, vec3<bool>(global3.d.a.x, true, true), any(var_2.a.xz)), Struct_2(vec3<u32>(u_input.d, 18838u, 0u), _wgslsmith_div_u32(global3.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b, 6u)], 6u)]), _wgslsmith_f_op_vec4_f32(-global3.c), func_4(vec3<i32>(u_input.c.x, 9765i, u_input.b), Struct_2(vec3<u32>(u_input.d, 14085u, 40705u), 67641u, vec4<f32>(global3.c.x, 1367f, 681f, -357f), global3.d, vec4<bool>(true, var_2.a.x, false, false)), global3.c.x), global3.e)), ~0u, Struct_2(global3.a, ~_wgslsmith_clamp_u32(0u, 1u, u_input.d), vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(1106f * global3.c.x), _wgslsmith_f_op_f32(global3.c.x + -107f), _wgslsmith_f_op_f32(-global3.c.x)), Struct_1(global3.d.a), global3.e), u_input.d), _wgslsmith_mod_vec4_u32(~((vec4<u32>(global3.b, 1u, 4294967295u, 1u) & vec4<u32>(61079u, global3.a.x, 1u, 8780u)) | vec4<u32>(global3.b, u_input.d, 13160u, 8364u)), vec4<u32>(reverseBits(4294967295u), max(43888u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), global3.b ^ 4294967295u, ~26345u) | vec4<u32>(abs(0u), u_input.d, ~u_input.d, 0u)), Struct_3(Struct_2(~vec3<u32>(global3.a.x, u_input.d, 1u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global3.a.x, u_input.d, 4294967295u), vec3<u32>(u_input.d, global3.a.x, 45167u)), ~3565u, vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(global3.c.x)), _wgslsmith_f_op_f32(global3.c.x - 1000f), global3.c.x), global3.d, select(global3.e, !global3.e, !var_2.a.x)), !vec3<bool>(global3.e.x, global3.e.x, global3.e.x), Struct_2(global3.a, global3.b, vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(global3.c.x - 1000f), _wgslsmith_f_op_f32(min(502f, global3.c.x)), _wgslsmith_f_op_f32(global3.c.x - global3.c.x)), func_4(abs(u_input.c), Struct_2(global3.a, global3.a.x, vec4<f32>(1304f, global3.c.x, 726f, global3.c.x), Struct_1(global3.d.a), vec4<bool>(global3.d.a.x, global3.d.a.x, var_2.a.x, true)), _wgslsmith_f_op_f32(790f - global3.c.x)), select(vec4<bool>(global3.e.x, global3.d.a.x, false, false), !vec4<bool>(var_2.a.x, var_2.a.x, global3.e.x, global3.e.x), vec4<bool>(true, var_2.a.x, true, true)))), Struct_3(Struct_2(vec3<u32>(_wgslsmith_add_u32(u_input.d, global2[_wgslsmith_index_u32(global3.a.x, 6u)]), 1u, 71047u), ~(global2[_wgslsmith_index_u32(35728u, 6u)] & global2[_wgslsmith_index_u32(4294967295u, 6u)]), global3.c, global3.d, global3.e), select(select(!vec3<bool>(false, global3.d.a.x, false), !var_2.a, var_2.a.x), var_2.a, vec3<bool>(all(var_2.a), func_1(u_input.c.x, global3.e), false)), Struct_2(countOneBits(vec3<u32>(global3.a.x, 4294967295u, u_input.d)), _wgslsmith_clamp_u32(~u_input.d, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global3.a.x, 6u)], global3.b), max(1u, global2[_wgslsmith_index_u32(u_input.d, 6u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.c.x, global3.c.x, global3.c.x, global3.c.x), vec4<f32>(global3.c.x, global3.c.x, 1214f, 2335f))), _wgslsmith_div_vec4_f32(vec4<f32>(965f, -676f, global3.c.x, 1611f), global3.c)), func_2(), vec4<bool>(global3.e.x, global3.e.x, u_input.d < u_input.d, true))), Struct_2(firstLeadingBit(global3.a), 4294967295u, vec4<f32>(961f, global3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -405f), 177f), Struct_1(vec3<bool>(global3.d.a.x, true, !global3.e.x)), vec4<bool>(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, 6045i, 29653i), vec4<i32>(18165i, u_input.a, u_input.b, -56187i)), select(global3.e, vec4<bool>(false, var_2.a.x, var_2.a.x, true), global3.e)), global3.e.x, u_input.c.x >= ~2147483647i, func_1(-u_input.a, !vec4<bool>(true, var_2.a.x, false, global3.e.x)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_3.e.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1084f - 1063f)))), 2340f)));
    var var_5 = var_3.c;
    global1 = 1207f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f), var_4.x)))), -1i);
}

