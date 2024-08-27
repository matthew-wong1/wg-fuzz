struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(21025u, Struct_2(Struct_1(vec4<u32>(39276u, 1u, 47766u, 0u), 75163u, 536f, 1u, 0u), 52614u, -10685i, vec4<i32>(i32(-2147483648), 50343i, -1i, 5780i), Struct_1(vec4<u32>(20148u, 18117u, 1u, 4294967295u), 1u, 309f, 4294967295u, 49307u)), vec3<f32>(-705f, 1061f, 560f), Struct_1(vec4<u32>(1u, 1u, 36326u, 53697u), 4294967295u, -817f, 1u, 4012u), Struct_2(Struct_1(vec4<u32>(38337u, 8528u, 10513u, 4294967295u), 0u, 224f, 44660u, 9150u), 4294967295u, 2147483647i, vec4<i32>(-1i, 2147483647i, 61480i, -41677i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1729u, 7764u), 37289u, -1000f, 67831u, 1u)));

var<private> global1: vec4<i32>;

var<private> global2: array<i32, 22> = array<i32, 22>(1i, 2147483647i, 1i, 1i, 2147483647i, i32(-2147483648), 0i, 2147483647i, 24463i, 2147483647i, i32(-2147483648), -1i, i32(-2147483648), -7388i, 12359i, 7270i, i32(-2147483648), 2147483647i, -1i, 28329i, -14280i, 54690i);

var<private> global3: Struct_2;

var<private> global4: vec4<u32> = vec4<u32>(0u, 4294967295u, 82063u, 4239u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = select(false, any(vec2<bool>(true, true)), !(true | (global3.b < 8069u))) != true;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1212f, arg_0.c, global0.c.x, -615f) - vec4<f32>(-1633f, 1727f, 293f, global0.d.c)) - vec4<f32>(arg_0.c, -1237f, arg_0.c, arg_0.c)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.a.c, global3.a.c, -1522f, arg_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.e.c, 1940f, global3.e.c, -855f)))))))));
    var var_2 = vec2<i32>(1i, u_input.c);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(-global3.a.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, -1368f))))));
    var var_4 = Struct_4(_wgslsmith_mult_u32(arg_0.d, 0u), global0.b, _wgslsmith_f_op_vec3_f32(var_1.www * var_3.xww), Struct_1(vec4<u32>(_wgslsmith_add_u32(~42122u, abs(global0.d.b)), _wgslsmith_sub_u32(4294967295u ^ u_input.b.x, 217u), arg_0.b, ~(~global0.b.a.e)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global3.e.e, 0u, 57965u), u_input.b)), global0.c.x, u_input.b.x, _wgslsmith_mod_u32(~1u ^ ~u_input.b.x, arg_0.e)), global0.b);
    return global4.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> Struct_3 {
    let var_0 = abs(~_wgslsmith_clamp_u32(27442u, _wgslsmith_mult_u32(abs(6438u), _wgslsmith_dot_vec3_u32(global3.e.a.zzx, global4.xyy)), ~(~u_input.d)));
    var var_1 = arg_1;
    global4 = global3.e.a;
    var var_2 = Struct_4(_wgslsmith_add_u32(firstLeadingBit(~arg_1.d.a.x), abs(144015u)), Struct_2(var_1.d, func_3(global3.e), max(global0.e.c, 0i), vec4<i32>(-26185i, select(var_1.e.d.x, -1i, false), _wgslsmith_mult_i32(global3.c, u_input.e), arg_1.e.d.x) << (vec4<u32>(_wgslsmith_dot_vec2_u32(global0.b.a.a.yz, u_input.b.zw), ~arg_0.b, reverseBits(649u), _wgslsmith_add_u32(var_0, 13262u)) % vec4<u32>(32u)), Struct_1(select(global0.e.a.a, vec4<u32>(3777u, 1u, 9461u, global3.b), true) >> (global3.e.a % vec4<u32>(32u)), global4.x, _wgslsmith_div_f32(-531f, -1411f), ~_wgslsmith_clamp_u32(global4.x, 0u, arg_1.a), firstTrailingBit(~45103u))), vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_div_f32(global3.e.c, -1034f), -1105f), arg_1.e.a, var_1.e);
    var_1 = arg_1;
    return Struct_3(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true), any(vec2<bool>(true, false)) | select(false, false, true)), !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1543f)) * _wgslsmith_f_op_f32(global3.e.c + _wgslsmith_f_op_f32(abs(-674f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.c)), 1520f, var_1.c.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = global4.x;
    let var_1 = arg_0;
    let var_2 = var_1;
    var var_3 = countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(global4.wxz, ~vec3<u32>(1u, 4294967295u, global4.x)), 0u, u_input.d, 1u));
    var var_4 = var_1.b;
    return var_2.c.x;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    global1 = ~global0.e.d;
    let var_0 = arg_0.e.b.a;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_1(arg_1.a, 4294967295u, arg_1.c, 40511u, var_0.b), Struct_4(var_0.d, Struct_2(Struct_1(global3.e.a, 53770u, arg_2, 4294967295u, global0.a), 1u, global1.x, vec4<i32>(arg_0.c.x, global0.e.d.x, 2147483647i, global1.x), arg_1), vec3<f32>(arg_1.c, arg_2, 1084f), var_0, arg_0.e.e)), global0.e, arg_0.d.x)))));
    global3 = Struct_2(global3.a, global0.e.e.d, _wgslsmith_mult_i32(global1.x, 2147483647i), ~_wgslsmith_mod_vec4_i32(-firstLeadingBit(vec4<i32>(-74287i, 1i, -1i, 13927i)), vec4<i32>(i32(-1i) * -63985i, abs(global1.x), i32(-1i) * -936i, global3.c)), Struct_1(min(vec4<u32>(global4.x, ~35414u, _wgslsmith_mod_u32(u_input.d, var_0.e), ~0u), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 34350u, 99023u, 0u), vec4<u32>(global4.x, global4.x, arg_1.a.x, var_0.d))), _wgslsmith_sub_u32(~_wgslsmith_add_u32(4294967295u, global4.x), var_0.d), func_2(global3.a, Struct_4(arg_0.e.d.a.x, global0.b, global0.c, Struct_1(global0.e.e.a, global4.x, -2146f, 1u, arg_1.e), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 59477u, global4.x), 19123u, 311f, 58635u, u_input.b.x), global4.x, 7051i, vec4<i32>(2207i, global1.x, arg_0.c.x, global1.x), global3.e))).c.x, var_0.d, ~firstTrailingBit(firstTrailingBit(4294967295u))));
    var var_2 = select(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(142987u, global0.a), abs(11880u)), vec2<u32>(global3.e.a.x, arg_0.e.a)), global4.wy & global0.e.a.a.wz), ~(~_wgslsmith_sub_vec2_u32(arg_0.e.b.a.a.zw, ~arg_0.e.e.e.a.yy)), !arg_0.d.yz);
    return func_2(Struct_1(_wgslsmith_add_vec4_u32(~(var_0.a << (vec4<u32>(19744u, 4294967295u, u_input.d, 996u) % vec4<u32>(32u))), ~(~arg_1.a)), 18962u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f * -297f))), _wgslsmith_mod_u32(~u_input.b.x >> (2537u % 32u), global0.b.a.e), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(global3.e.a.x, 1u), 4294967295u)), arg_0.e);
}

fn func_5(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = arg_0;
    global4 = abs(vec4<u32>(reverseBits(57557u), 96151u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global4.x, 13004u, 1u), global0.e.a.a.wxz), 23170u));
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~u_input.d, 65193u, ~global0.b.e.b), vec4<u32>(~2931u, ~4687u, max(50777u, u_input.d), 0u)), global4.x | (_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.b, global3.b), global4.yz) >> (~0u % 32u)), ~1u), min(global3.e.a.yxz, select(global3.a.a.zxy, u_input.b.zxx, func_2(global0.d, Struct_4(85417u, Struct_2(global0.b.a, global4.x, global2[_wgslsmith_index_u32(global0.e.e.d, 22u)], global0.e.d, global3.e), vec3<f32>(-930f, var_0.c.x, -631f), global0.e.e, global0.b)).b.xzw)) ^ u_input.b.xxx);
    var_0 = arg_0;
    var var_2 = func_2(global3.e, Struct_4(4294967295u, global0.e, func_1(Struct_5(arg_0.b.x, !var_0.a.x, ~global3.d.yx, !var_0.b, Struct_4(37366u, Struct_2(Struct_1(vec4<u32>(global4.x, 13996u, 12556u, 10245u), 48254u, -204f, global4.x, 4294967295u), global0.a, global2[_wgslsmith_index_u32(1u, 22u)], vec4<i32>(-1i, 59555i, 2147483647i, global3.d.x), global0.b.e), vec3<f32>(global0.d.c, -1318f, -446f), Struct_1(global3.e.a, 0u, global3.e.c, 4294967295u, 6080u), Struct_2(Struct_1(global0.d.a, 4294967295u, 536f, u_input.d, global4.x), var_1.x, u_input.e, vec4<i32>(u_input.e, global0.b.c, global0.b.d.x, 2147483647i), global3.a))), Struct_1(~global0.e.e.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, var_1.x, 0u, 4294967295u), u_input.b), _wgslsmith_f_op_f32(771f * var_0.c.x), ~1u, 24790u), var_0.c.x).c.wyy, Struct_1(~(~u_input.b), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1117f * global0.c.x), _wgslsmith_f_op_f32(func_4(Struct_3(var_0.a, vec4<bool>(arg_0.a.x, arg_0.b.x, true, true), vec4<f32>(arg_0.c.x, 105f, 1000f, arg_0.c.x)), global0.b, var_0.a.x))), ~_wgslsmith_mod_u32(global4.x, global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(23290u, 35967u, 7824u, 0u), select(global3.e.a, global0.d.a, vec4<bool>(arg_0.a.x, true, true, var_0.a.x)))), Struct_2(Struct_1(u_input.b, abs(35977u), func_1(Struct_5(false, true, global1.xx, arg_0.b, Struct_4(42657u, global0.e, vec3<f32>(global3.a.c, 1315f, var_0.c.x), global0.b.a, global0.e)), global0.e.e, global0.e.a.c).c.x, global0.b.b >> (4294967295u % 32u), 1u), var_1.x, global3.d.x, _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.e, -392i, 1i, 45799i), -global0.e.d), global0.d)));
    return global4.xwz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 22>();
    var var_0 = _wgslsmith_mod_u32(0u, ~u_input.b.x << (_wgslsmith_mod_u32(abs(u_input.d), global3.a.e) % 32u));
    let var_1 = ~(~func_5(func_1(Struct_5(true, true, vec2<i32>(global1.x, global0.b.d.x), vec4<bool>(false, false, false, true), Struct_4(u_input.d, Struct_2(global0.b.a, 91538u, global2[_wgslsmith_index_u32(4294967295u, 22u)], vec4<i32>(global1.x, 1i, 1i, u_input.e), Struct_1(global0.e.e.a, global3.e.a.x, -1006f, global3.a.d, 8684u)), global0.c, global0.e.a, global0.e)), Struct_1(global3.e.a, 0u, global0.c.x, 4294967295u, global3.e.a.x), -410f))) ^ ~vec3<u32>(~(u_input.d << (31780u % 32u)), global3.b, 14180u);
    global3 = Struct_2(Struct_1(max(~(~u_input.b), u_input.b), 4294967295u & global3.e.a.x, _wgslsmith_f_op_f32(-global3.a.c), _wgslsmith_div_u32(49206u, global3.b), ~firstTrailingBit(var_1.x)), ~13959u, ~u_input.e, vec4<i32>(u_input.a, global0.b.c, global0.e.d.x, u_input.a), Struct_1(~(~global3.a.a) & global3.a.a, _wgslsmith_clamp_u32(52430u, ~u_input.b.x, global3.e.b << (69095u % 32u)) << (~(~global4.x) % 32u), 200f, global0.b.b, _wgslsmith_sub_u32(u_input.b.x, func_3(global0.e.e) >> (countOneBits(var_1.x) % 32u))));
    global4 = global0.d.a;
    global1 = global0.b.d;
    let var_2 = global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.a.a, global0.c.yz);
}

