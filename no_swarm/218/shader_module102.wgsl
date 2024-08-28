struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    let var_0 = arg_0;
    let var_1 = var_0;
    global0 = array<vec4<u32>, 29>();
    return var_1.d.a.xz;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-627f, -401f, _wgslsmith_f_op_f32(-678f + -797f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(961f, 347f, -667f) + vec3<f32>(-281f, 705f, 130f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(256f, -269f, -1084f) - vec3<f32>(-1302f, 1028f, -338f)), !arg_0.a.x)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1092f, 212f, -2076f))))));
    var var_1 = Struct_1(!select(!arg_0.a, !vec3<bool>(false, arg_0.a.x, arg_0.b.x), arg_0.a.x), !select(select(!arg_0.b, func_3(Struct_2(arg_0.b.x, arg_0, vec4<bool>(true, false, true, arg_0.a.x), Struct_1(arg_0.a, arg_0.b, 0u), Struct_1(arg_0.a, vec2<bool>(arg_0.b.x, arg_0.b.x), 1u)), u_input.a.x), vec2<bool>(true, arg_0.a.x)), !vec2<bool>(arg_0.a.x, true), select(vec2<bool>(arg_0.a.x, false), arg_0.b, select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.a.xy))), 4294967295u);
    let var_2 = var_0.x;
    let var_3 = 21804i;
    var var_4 = -vec3<i32>(~(-max(60726i, 0i)), -39685i, _wgslsmith_div_i32(var_3, var_3 | u_input.b));
    return -202f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), 1u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-100f, 1331f)), -1011f, true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0)))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1702f - arg_0)), arg_0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-696f, -1374f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2384f, -1325f) + vec2<f32>(1245f, -372f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_0.x) * vec2<f32>(-509f, -425f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1163f + 164f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -390f, var_0.x, var_0.x) - vec4<f32>(-777f, -523f, arg_0, 310f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, arg_0, 1000f, 249f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(170f, var_0.x, arg_0, arg_0) - vec4<f32>(arg_0, 538f, 997f, 1084f))))))));
    global0 = array<vec4<u32>, 29>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-arg_0))), -1242f));
    return Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec2<bool>(!all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), all(vec4<bool>(true, true, true, true))), select(4294967295u, ~(~u_input.c.x), ((4294967295u | u_input.c.x) > u_input.c.x) & false));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = u_input.c.x | u_input.c.x;
    var var_1 = Struct_1(arg_0.a, vec2<bool>(false, arg_0.b.x), 46828u);
    let var_2 = Struct_2(2147483647i >= (firstLeadingBit(~18394i) ^ _wgslsmith_add_i32(arg_1 | u_input.a.x, -1i)), arg_3.b, select(!select(!arg_3.c, select(arg_3.c, vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), vec4<bool>(false, false, false, arg_3.e.a.x)), arg_0.b.x && true), !(!(!arg_3.c)), all(vec3<bool>(select(arg_3.d.a.x, arg_0.a.x, arg_0.b.x), true, var_1.a.x))), arg_0, Struct_1(select(arg_0.a, arg_3.c.ywx, var_1.b.x), func_3(arg_3, max(abs(arg_1), ~u_input.a.x)), reverseBits(147033u & var_0) >> (arg_3.b.c % 32u)));
    var var_3 = Struct_2(arg_0.a.x, func_1(_wgslsmith_f_op_f32(-arg_2.x)), var_2.c, func_1(arg_2.x), var_2.b);
    let var_4 = var_3.e.c;
    return Struct_1(select(!var_1.a, vec3<bool>(!(!var_1.b.x), _wgslsmith_mod_u32(u_input.c.x, arg_0.c) >= (var_0 ^ 1u), !arg_0.a.x), var_1.a), !vec2<bool>(arg_3.d.b.x, any(vec2<bool>(false, false)) & true), 0u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = -(countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, 0i)), 0i ^ u_input.b)) | u_input.a.zz);
    var_0 = -24023i;
    let var_2 = select(arg_3.xyy, arg_3.xxx, arg_1.a);
    var_1 = vec2<i32>(_wgslsmith_clamp_i32(-firstLeadingBit(max(u_input.b, -1i)), -var_1.x, (u_input.b ^ (i32(-1i) * -2147483647i)) ^ ~1i), abs(var_1.x));
    return arg_0;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    global0 = array<vec4<u32>, 29>();
    var var_0 = 25454i;
    var_0 = -min(countOneBits(abs(-28752i)), 1i);
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    return Struct_2(arg_2.b.x, Struct_1(vec3<bool>(true, func_5(Struct_1(arg_2.a, arg_2.a.xz, arg_2.c), Struct_1(vec3<bool>(arg_2.a.x, false, arg_2.b.x), vec2<bool>(true, arg_0), arg_2.c), Struct_2(false, arg_2, vec4<bool>(true, false, arg_2.a.x, arg_0), Struct_1(vec3<bool>(false, false, arg_2.a.x), vec2<bool>(true, arg_2.b.x), 24835u), arg_2), vec4<u32>(arg_2.c, 48406u, u_input.c.x, u_input.c.x) ^ vec4<u32>(48189u, u_input.c.x, u_input.c.x, 40127u)).b.x, arg_2.b.x), !select(!arg_2.a.zy, vec2<bool>(true, arg_0), !arg_2.a.xy), ~firstTrailingBit(arg_1)), vec4<bool>(arg_0, !all(vec3<bool>(true, false, true)), true, false), arg_2, Struct_1(func_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-1078f, -989f))).a, arg_2.a.zx, ~arg_1));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(i32(-1i) * -abs(~u_input.a.x), _wgslsmith_mod_i32(abs(abs(_wgslsmith_add_i32(u_input.b, -1i))), u_input.b), _wgslsmith_div_i32(1i, 2147483647i));
    var var_1 = Struct_2(var_0.x != ~min(_wgslsmith_dot_vec4_i32(vec4<i32>(8125i, var_0.x, 2147483647i, -8749i), vec4<i32>(u_input.a.x, 82948i, 2147483647i, var_0.x)), i32(-1i) * -1i), Struct_1(func_6(func_4(arg_1, 0i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, 1000f)), func_6(true, u_input.c.x, Struct_1(arg_0.c.zwx, vec2<bool>(arg_0.c.x, arg_1.a.x), arg_0.b.c), vec4<i32>(u_input.b, 1i, 30832i, -2147483647i))).b.x, _wgslsmith_add_u32(u_input.c.x, arg_0.e.c), arg_1, ~vec4<i32>(-83707i, var_0.x, var_0.x, -8527i)).c.zyw, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(620f)))).b, arg_1.c), !func_6(all(!arg_1.a.xy), 0u, arg_0.d, ~vec4<i32>(u_input.b, u_input.a.x, var_0.x, 2147483647i)).c, Struct_1(vec3<bool>(false, u_input.b < 0i, arg_0.e.b.x), select(!(!arg_1.b), vec2<bool>(!arg_1.a.x, any(vec3<bool>(true, arg_1.b.x, true))), func_3(Struct_2(arg_1.a.x, arg_0.b, vec4<bool>(arg_1.b.x, arg_0.c.x, false, false), Struct_1(arg_0.b.a, arg_1.a.zz, 63362u), arg_0.d), 65264i).x), ~(~(~1u))), Struct_1(arg_0.c.wwx, arg_1.a.xz, 37184u));
    let var_2 = _wgslsmith_clamp_i32(var_0.x, var_0.x, u_input.b);
    var var_3 = var_1.b.c;
    let var_4 = ~(~(~(~u_input.c))) & u_input.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(false, countOneBits(4294967295u) >> (~(~u_input.c.x) % 32u), func_5(func_4(func_1(172f), 1i, vec2<f32>(576f, 1299f), Struct_2(false, Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), u_input.c.x), vec4<bool>(true, false, false, true), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false), u_input.c.x), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true), 25228u))), func_1(_wgslsmith_f_op_f32(ceil(-208f))), Struct_2(all(vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), u_input.c.x), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), 46722u), func_4(Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), u_input.c.x), u_input.b, vec2<f32>(-1327f, -376f), Struct_2(false, Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), u_input.c.x), vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), 21674u), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true), 100405u)))), vec4<u32>(21023u, 4294967295u, ~15139u, _wgslsmith_clamp_u32(51349u, 4294967295u, 4294967295u))), _wgslsmith_add_vec4_i32(countOneBits(-vec4<i32>(u_input.a.x, 21817i, 0i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-37792i, u_input.b, u_input.a.x, 2147483647i) >> (global0[_wgslsmith_index_u32(u_input.c.x, 29u)] % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 1i, u_input.b, u_input.b), firstTrailingBit(vec4<i32>(u_input.b, -76059i, u_input.b, -1i))))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(992f - 717f))) - -949f)));
    global0 = array<vec4<u32>, 29>();
    let var_1 = Struct_2(u_input.c.x >= (~var_0.d.c & _wgslsmith_div_u32(~u_input.c.x, var_0.d.c)), func_6(var_0.d.c > 51533u, countOneBits(~func_7(Struct_2(false, Struct_1(vec3<bool>(var_0.b.b.x, var_0.a, true), vec2<bool>(var_0.e.a.x, true), var_0.d.c), var_0.c, Struct_1(var_0.d.a, var_0.b.a.xx, 4294967295u), Struct_1(var_0.b.a, vec2<bool>(false, false), var_0.d.c)), Struct_1(var_0.d.a, var_0.d.b, 98463u)).e.c), func_1(1129f), vec4<i32>(max(u_input.b, u_input.b), u_input.b, u_input.a.x, 1i & u_input.b)).e, var_0.c, var_0.e, var_0.e);
    global0 = array<vec4<u32>, 29>();
    var var_2 = select(vec3<bool>(var_0.e.b.x & !(!var_1.d.a.x), true && func_7(var_1, Struct_1(vec3<bool>(true, true, var_0.c.x), var_1.e.a.yx, 97568u)).e.b.x, true), vec3<bool>(var_1.a, var_1.a, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(~(~vec3<u32>(13614u, 11073u, 0u))), ~vec3<u32>(var_0.b.c, var_0.b.c, 26106u) & ~vec3<u32>(var_0.e.c, var_1.b.c, 57293u)));
}

