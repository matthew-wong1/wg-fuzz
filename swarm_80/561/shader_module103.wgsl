struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1236f, 174f, -437f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1721f, 1000f, 669f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-201f, -352f, -633f) * vec3<f32>(-1264f, -1893f, 162f)))))), u_input.c, !arg_0.x, 202f, 1u);
    var var_1 = !var_0.c;
    let var_2 = _wgslsmith_f_op_f32(round(-1588f));
    var_1 = any(!vec2<bool>(all(arg_0), any(vec3<bool>(false, var_0.c, true))));
    var_1 = arg_0.x;
    return !(!(!(arg_0.x & true)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> Struct_4 {
    var var_0 = select(-1i << (_wgslsmith_div_u32(~(47451u >> (arg_1.e % 32u)), 32341u) % 32u), arg_0.x, !func_3(select(vec3<bool>(false, arg_2, false), !vec3<bool>(arg_1.a, arg_1.d.a.e, true), !vec3<bool>(arg_2, true, true))));
    var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.d.a.x + arg_1.d.a.a.x)), _wgslsmith_f_op_f32(max(-1318f, _wgslsmith_f_op_f32(ceil(arg_1.d.d.a.x))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.d.a.x, -177f))))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.d.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2273f + 1080f) * _wgslsmith_f_op_f32(497f + arg_1.d.a.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(808f + -1675f))))), (u_input.c & u_input.c) >> (_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 22180u, 37563u, 1u), firstLeadingBit(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(1u, arg_3.x, arg_3.x, 70725u)))) % vec4<u32>(32u)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.d.d.d.x)) + 1167f), _wgslsmith_f_op_f32(select(-745f, -456f, true)))) - -1115f), reverseBits(min(arg_1.e & 16110u, min(3445u, 1u)) | 20648u));
    let var_3 = var_2;
    return var_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> u32 {
    let var_0 = arg_1.b.zzx;
    var var_1 = u_input.d.x;
    let var_2 = Struct_3(arg_1.c, true, -(~_wgslsmith_div_i32(28528i, u_input.b) & u_input.b), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.xyw - _wgslsmith_f_op_vec3_f32(-arg_1.a)), arg_1.b.xw, ~u_input.a.yz & arg_1.b.wz, vec3<f32>(-311f, 650f, _wgslsmith_f_op_f32(-arg_1.d)), true), arg_1.b.x, u_input.d.yy, Struct_1(arg_1.a, vec2<i32>(30298i, u_input.c.x), ~arg_1.b.yw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(220f, -602f, 412f)), false)), ~69119u);
    var var_3 = ~_wgslsmith_sub_vec2_i32(-(~_wgslsmith_clamp_vec2_i32(u_input.a.xx, var_2.d.a.b, vec2<i32>(arg_1.b.x, -2147483647i))), firstTrailingBit(u_input.c.yx));
    var_1 = var_2.e;
    return _wgslsmith_mult_u32(min(7008u << (min(var_2.d.c.x, u_input.d.x) % 32u), reverseBits(var_2.e)) | u_input.d.x, 7614u);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_mult_u32(24057u, arg_1)) >> (func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -135f, -619f, 459f) + vec4<f32>(1839f, 563f, 1408f, -496f)), func_2(vec3<i32>(u_input.c.x, 80969i, 2147483647i), Struct_3(true, false, arg_0.x, Struct_2(Struct_1(vec3<f32>(-224f, 1383f, 377f), arg_0.xz, u_input.a.xz, vec3<f32>(945f, -276f, 419f), arg_2.x), u_input.b, u_input.d.xz, Struct_1(vec3<f32>(-640f, 386f, -440f), arg_0.wz, vec2<i32>(5839i, 22117i), vec3<f32>(-1020f, -625f, 1116f), true)), 90053u), false, u_input.d.yzw)) % 32u), ~_wgslsmith_add_u32(75884u, 1u)) >> (u_input.d.wx % vec2<u32>(32u));
    var_0 = ~(~(u_input.d.xw >> (u_input.d.xz % vec2<u32>(32u))));
    var_0 = vec2<u32>(~u_input.d.x, 23261u);
    var var_1 = !arg_2;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(253f, _wgslsmith_f_op_f32(floor(481f)), -514f)))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, max(_wgslsmith_sub_i32(-2147483647i, u_input.c.x), 0i)), arg_0.xz & -vec2<i32>(arg_0.x, 17287i)), abs(select(u_input.c.ww & u_input.c.ww, ~u_input.c.xw, false)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-996f, -1188f, -738f) * vec3<f32>(-207f, -246f, 147f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1827f, -634f, -1198f) - vec3<f32>(203f, 379f, -1529f)))))), var_1.x)), any(select(vec4<bool>(false, var_1.x, var_1.x, any(arg_2.yw)), select(select(vec4<bool>(true, var_1.x, false, arg_2.x), arg_2, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x)), arg_2)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_2.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, 168f) - var_2.a), true)), var_2.a)), var_2.c, var_2.b, _wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(0i, arg_0.x, -6068i), Struct_3(false, true, 1i, Struct_2(Struct_1(var_2.d, vec2<i32>(-805i, u_input.c.x), var_2.c, var_2.a, true), 2147483647i, u_input.d.ww, Struct_1(var_2.a, vec2<i32>(u_input.b, 1i), var_2.c, vec3<f32>(-1993f, -640f, -1287f), var_2.e)), 0u), true, abs(vec3<u32>(0u, 0u, arg_1))).a - var_2.d), all(vec2<bool>(!var_2.e, 1u == u_input.d.x))), -arg_0.x, u_input.d.wx, Struct_1(var_2.a, u_input.a.yy, vec2<i32>(-1i) * -vec2<i32>(27280i, var_2.c.x), var_2.a, any(select(var_1.yyw, arg_2.xxy, arg_2.x && true))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = firstTrailingBit(-2147483647i);
    var var_1 = func_1(~u_input.c, 38845u, vec4<bool>(false, !all(select(vec3<bool>(arg_0.d.e, arg_3.c, true), vec3<bool>(arg_3.c, arg_3.c, false), arg_3.c)), arg_0.d.e, all(select(vec3<bool>(true, arg_3.c, arg_0.d.e), vec3<bool>(true, true, arg_0.d.e), !vec3<bool>(arg_3.c, arg_0.d.e, arg_0.a.e)))));
    var var_2 = arg_3.d;
    let var_3 = Struct_3(var_1.a.e, !(!(arg_0.b <= ~u_input.c.x)), _wgslsmith_add_i32(arg_3.b.x, _wgslsmith_mod_i32(-26849i, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(8670i, -44171i))))), func_1(min(arg_3.b, vec4<i32>(12865i, 14175i, arg_1, -1i) << (u_input.d % vec4<u32>(32u))) ^ (-u_input.c | vec4<i32>(-30773i, 2147483647i, 4360i, u_input.c.x)), (arg_3.e << (var_1.c.x % 32u)) >> ((var_1.c.x >> (_wgslsmith_dot_vec3_u32(u_input.d.yzy, vec3<u32>(var_1.c.x, 31448u, arg_3.e)) % 32u)) % 32u), select(select(!vec4<bool>(arg_3.c, true, true, arg_0.a.e), vec4<bool>(false, false, false, arg_0.a.e), vec4<bool>(true, false, false, var_1.a.e)), select(!vec4<bool>(arg_3.c, true, true, arg_3.c), vec4<bool>(false, arg_3.c, true, false), vec4<bool>(var_1.a.e, false, true, true)), !var_1.d.e)), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(81225u, var_1.c.x, arg_0.c.x, 4294967295u), u_input.d)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(13117u, 4294967295u, arg_3.e, 79437u), ~u_input.d))));
    var var_4 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, arg_3.a.x)), -617f, _wgslsmith_f_op_f32(258f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d * var_3.d.a.d.x)))), vec4<bool>(arg_0.a.e, true, !all(!vec3<bool>(var_3.b, var_1.d.e, arg_3.c)), arg_0.d.e), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 1i, -2147483647i, firstTrailingBit(-2147483647i)), vec4<i32>(func_2(u_input.a, var_3, true, vec3<u32>(arg_0.c.x, u_input.d.x, u_input.d.x)).b.x, arg_0.a.b.x << (var_1.c.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(21689i, -17711i, arg_3.b.x), vec3<i32>(68492i, 1i, 54420i)), countOneBits(arg_0.b)), arg_3.b), firstTrailingBit(-arg_3.b)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.d.x, _wgslsmith_div_f32(arg_0.a.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.d.x, 719f), _wgslsmith_f_op_f32(var_4.a.x - var_1.d.d.x))), var_4.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(-2116f, -1745f, _wgslsmith_f_op_f32(996f - _wgslsmith_f_op_f32(-384f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), select(~u_input.a.yz >> (firstLeadingBit(u_input.d.xw & u_input.d.wz) % vec2<u32>(32u)), -(~select(u_input.c.yw, vec2<i32>(u_input.c.x, 7891i), vec2<bool>(false, true))), true), u_input.c.zw, _wgslsmith_f_op_vec3_f32(func_5(func_1(~vec4<i32>(2147483647i, 28632i, 0i, 1i), ~u_input.d.x, vec4<bool>(true, select(true, false, true), true, false)), func_1(select(firstTrailingBit(u_input.c), -vec4<i32>(u_input.b, 0i, u_input.a.x, u_input.c.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))), 0u, select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))).a.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1293f, 214f) + vec2<f32>(793f, -961f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(727f, 109f) - vec2<f32>(-173f, 137f)))), func_2(u_input.a, Struct_3(all(vec3<bool>(true, true, false)), 50156u >= u_input.d.x, u_input.a.x, func_1(u_input.c, 0u, vec4<bool>(false, true, false, false)), u_input.d.x | 1u), true, _wgslsmith_add_vec3_u32(~u_input.d.ywx, vec3<u32>(u_input.d.x, 19154u, 0u) | u_input.d.yzz)))), !all(vec4<bool>(true, true, true, false)));
    let var_1 = select(vec3<bool>(var_0.e, var_0.e, (~var_0.c.x & 0i) <= (func_2(u_input.a, Struct_3(true, false, -2147483647i, Struct_2(Struct_1(vec3<f32>(247f, 402f, var_0.a.x), vec2<i32>(36595i, u_input.b), u_input.c.yx, var_0.d, false), var_0.b.x, u_input.d.ww, var_0), 4294967295u), var_0.e, vec3<u32>(1u, u_input.d.x, u_input.d.x)).b.x >> (_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u) % 32u))), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(var_0.e, false, false), vec3<bool>(var_0.e, false, var_0.e)), vec3<bool>(false || var_0.e, true, var_0.e), func_1(vec4<i32>(var_0.c.x, u_input.a.x, 1i, var_0.b.x), 4294967295u, vec4<bool>(false, false, true, var_0.e)).a.e && !var_0.e), vec3<bool>(var_0.e, (var_0.a.x == 1000f) & (var_0.e & var_0.e), true), select(!vec3<bool>(var_0.e, false, var_0.e), vec3<bool>(all(vec2<bool>(var_0.e, true)), all(vec4<bool>(true, var_0.e, var_0.e, var_0.e)), func_1(u_input.c, u_input.d.x, vec4<bool>(var_0.e, var_0.e, true, var_0.e)).a.e), var_0.e)), select(select(!(!vec3<bool>(var_0.e, var_0.e, true)), select(select(vec3<bool>(var_0.e, var_0.e, true), vec3<bool>(var_0.e, var_0.e, var_0.e), vec3<bool>(var_0.e, true, false)), select(vec3<bool>(var_0.e, false, true), vec3<bool>(true, true, var_0.e), vec3<bool>(var_0.e, false, var_0.e)), vec3<bool>(false, var_0.e, false)), !select(vec3<bool>(var_0.e, var_0.e, true), vec3<bool>(true, true, false), vec3<bool>(true, var_0.e, var_0.e))), vec3<bool>((u_input.d.x | u_input.d.x) > (u_input.d.x >> (u_input.d.x % 32u)), func_2(min(u_input.a, u_input.a), Struct_3(false, true, 11464i, Struct_2(var_0, var_0.c.x, vec2<u32>(u_input.d.x, u_input.d.x), var_0), 4294967295u), u_input.d.x == u_input.d.x, abs(vec3<u32>(23189u, u_input.d.x, u_input.d.x))).c, true), vec3<bool>(false, true, var_0.e)));
    let var_2 = !var_1;
    let var_3 = vec2<u32>(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.d.x, var_0.d.x, -708f)), _wgslsmith_div_vec4_f32(vec4<f32>(1371f, var_0.d.x, var_0.a.x, -1988f), vec4<f32>(var_0.a.x, 1457f, var_0.a.x, 767f)))), func_2(u_input.a, Struct_3(all(vec3<bool>(true, var_2.x, false)), true, _wgslsmith_add_i32(-2147483647i, -1i), func_1(vec4<i32>(-2147483647i, u_input.b, -5135i, var_0.c.x), u_input.d.x, vec4<bool>(false, var_1.x, var_2.x, false)), reverseBits(22889u)), false, _wgslsmith_sub_vec3_u32(u_input.d.zyx << (vec3<u32>(0u, 37347u, u_input.d.x) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, 22694u, u_input.d.x)))), select(u_input.d.x, 1u, false));
    var var_4 = var_0;
    var var_5 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-func_1(vec4<i32>(-1i) * -u_input.c, ~1u, select(vec4<bool>(var_0.e, var_2.x, var_1.x, var_4.e), !vec4<bool>(var_4.e, false, false, false), vec4<bool>(var_4.e, var_0.e, true, false))).a.a), _wgslsmith_f_op_vec3_f32(-var_0.a), !select(select(vec3<bool>(var_1.x, var_0.e, var_4.e), vec3<bool>(true, var_4.e, var_2.x), true), vec3<bool>(var_2.x, func_3(vec3<bool>(false, var_4.e, var_2.x)), true), select(select(vec3<bool>(false, true, false), var_1, var_2), var_2, 75845u < u_input.d.x))));
    var var_6 = vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d.x | 25625u, u_input.d.x, u_input.d.x), ~1u));
    let var_7 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1119f), 733f), var_4.a)), vec4<bool>(all(vec3<bool>(false && var_0.e, var_5.x < 1000f, !var_2.x)), true, all(select(vec2<bool>(true, true), var_2.xz, true)), var_1.x), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(768f, var_4.a.x, _wgslsmith_f_op_f32(311f - _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_6.x, u_input.d.x), 58682u), _wgslsmith_sub_u32(60647u, 1u), firstTrailingBit(min(1u, 81450u)), 1942u), vec4<u32>(select(func_4(vec4<f32>(var_5.x, -1721f, -511f, 298f), Struct_4(var_4.d, vec4<i32>(u_input.a.x, u_input.c.x, var_4.b.x, u_input.b), true, var_5.x, u_input.d.x)), func_2(var_7.c.wyy, Struct_3(true, var_4.e, var_4.c.x, Struct_2(var_0, var_0.c.x, vec2<u32>(var_3.x, 0u), Struct_1(var_4.a, vec2<i32>(6355i, -1i), var_0.b, var_4.d, true)), 6626u), var_7.b.x, vec3<u32>(49595u, u_input.d.x, var_6.x)).e, func_1(u_input.c, var_6.x, vec4<bool>(var_2.x, var_7.b.x, true, false)).d.e), 42404u, ~_wgslsmith_sub_u32(4294967295u, var_3.x), 13802u)), u_input.d.x & var_3.x, abs(-var_0.b.x & _wgslsmith_div_i32(1i, var_0.c.x)), -1i);
}

