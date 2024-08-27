struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + -369f), -1426f, _wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(-195f * 1250f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -193f, arg_1.x, 502f))))));
    var var_1 = 36546u;
    var var_2 = u_input.a.yz;
    var var_3 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-arg_1.x));
    let var_4 = !(!(var_2.x < (var_2.x & 74524u))) | false;
    return var_0.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(~1u), ~min(41742u, u_input.a.x)), ~min(select(arg_1.yy, arg_1.zy, false), _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_1.x), u_input.a.yy)));
    let var_1 = abs(arg_1.yx);
    let var_2 = arg_2.d.wyy;
    let var_3 = Struct_3(arg_0.c, !arg_0.b.d.x, _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(-arg_0.b.a.x)), Struct_2(select(select(select(vec2<bool>(true, arg_2.b.x), vec2<bool>(true, true), vec2<bool>(false, var_2.x)), select(var_2.zx, vec2<bool>(false, true), false), arg_0.a.x && true), vec2<bool>(true, var_2.x), arg_0.b.c), Struct_1(vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(select(arg_2.a.x, 285f, true)), _wgslsmith_f_op_f32(max(-1707f, arg_0.b.a.x))), !vec2<bool>(var_2.x, false), !select(var_2.x, arg_2.c, true), arg_0.b.d, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1069f, 888f, arg_0.c.x, -432f))))), arg_2.d);
    var var_4 = -7912i;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    let var_0 = arg_3.c.b.x;
    let var_1 = vec2<bool>(var_0, any(!arg_0.b.d));
    var var_2 = !(!select(vec3<bool>(arg_0.b.b.x, arg_3.c.b.x, true), vec3<bool>(var_1.x, false, func_3(arg_0, vec3<u32>(arg_3.c.e, arg_0.b.e, arg_2.e), Struct_1(vec3<f32>(arg_0.b.a.x, arg_3.c.a.x, 226f), arg_3.c.d.wy, var_1.x, vec4<bool>(true, true, var_0, arg_2.c), arg_3.c.e))), false));
    var var_3 = Struct_2(vec2<bool>(var_2.x, -262f < _wgslsmith_f_op_f32(step(-388f, arg_3.a.x))), Struct_1(arg_3.c.a, vec2<bool>(var_2.x, any(!vec2<bool>(arg_3.c.d.x, arg_2.c))), select(var_0, _wgslsmith_mod_u32(u_input.a.x, 4294967295u) == reverseBits(u_input.a.x), true), select(select(vec4<bool>(true, var_0, var_2.x, var_0), !arg_3.c.d, select(arg_2.d, arg_3.c.d, vec4<bool>(false, arg_3.c.d.x, arg_2.d.x, var_1.x))), vec4<bool>(select(true, false, false), true, false, true), arg_0.b.d), _wgslsmith_dot_vec3_u32(u_input.a.wyx, u_input.a.ywy) & firstTrailingBit(_wgslsmith_sub_u32(arg_0.b.e, 103403u))), _wgslsmith_f_op_vec4_f32(arg_0.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c))));
    var_3 = arg_0;
    return arg_3.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    let var_0 = func_2(Struct_2(!arg_1.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 1777f, 697f)), select(!arg_1.b, arg_1.d.yz, func_2(Struct_2(arg_1.b, Struct_1(vec3<f32>(arg_0.x, arg_0.x, -1381f), vec2<bool>(arg_1.b.x, false), true, arg_1.d, arg_1.e), vec4<f32>(arg_1.a.x, arg_1.a.x, arg_0.x, -781f)), 5816i, Struct_1(arg_1.a, arg_1.d.wz, true, arg_1.d, arg_1.e), Struct_4(vec2<f32>(-733f, arg_0.x), u_input.b.x, Struct_1(vec3<f32>(arg_1.a.x, arg_0.x, -706f), vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.b.x, arg_1.d, 55115u))).d.ww), !arg_1.c, !vec4<bool>(false, false, true, arg_1.b.x), u_input.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(984f, arg_0.x, -893f, arg_0.x)))), vec4<f32>(1000f, _wgslsmith_div_f32(arg_0.x, -1246f), _wgslsmith_f_op_f32(arg_1.a.x + -838f), _wgslsmith_f_op_f32(floor(arg_1.a.x))), true))), firstTrailingBit((-21239i | abs(u_input.b.x)) | max(u_input.b.x, 0i)), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-195f)), _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x))), func_2(Struct_2(vec2<bool>(true, true), arg_1, _wgslsmith_div_vec4_f32(vec4<f32>(861f, -437f, arg_0.x, -1136f), vec4<f32>(1316f, -1461f, -442f, 1607f))), -9142i, Struct_1(vec3<f32>(-556f, arg_1.a.x, arg_1.a.x), !vec2<bool>(arg_1.c, true), !arg_1.b.x, select(vec4<bool>(arg_1.d.x, arg_1.c, arg_1.b.x, false), vec4<bool>(arg_1.b.x, true, arg_1.b.x, false), vec4<bool>(false, false, false, arg_1.b.x)), 43184u), Struct_4(vec2<f32>(1498f, 447f), ~48629i, arg_1)).b, arg_1.d.x, select(vec4<bool>(any(vec3<bool>(false, true, false)), !arg_1.b.x, true, any(vec2<bool>(false, true))), !(!vec4<bool>(false, arg_1.d.x, arg_1.c, true)), !vec4<bool>(arg_1.d.x, arg_1.b.x, true, arg_1.b.x)), 4294967295u), Struct_4(_wgslsmith_f_op_vec2_f32(round(arg_1.a.xy)), 22886i, func_2(Struct_2(func_2(Struct_2(vec2<bool>(arg_1.b.x, false), Struct_1(arg_1.a, arg_1.d.xy, true, vec4<bool>(arg_1.c, false, arg_1.d.x, false), u_input.a.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_1.a.x)), u_input.b.x, Struct_1(arg_1.a, arg_1.d.xz, false, vec4<bool>(true, false, false, false), 4294967295u), Struct_4(arg_1.a.zx, 4043i, Struct_1(vec3<f32>(-218f, arg_1.a.x, arg_0.x), arg_1.d.yx, arg_1.b.x, arg_1.d, 57504u))).d.xw, Struct_1(arg_1.a, arg_1.b, arg_1.b.x, arg_1.d, arg_1.e), _wgslsmith_div_vec4_f32(vec4<f32>(-1130f, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<f32>(-1002f, -1651f, 471f, -235f))), 2546i, func_2(Struct_2(arg_1.d.yy, Struct_1(vec3<f32>(arg_1.a.x, 1832f, 1000f), vec2<bool>(true, true), arg_1.b.x, vec4<bool>(false, false, true, false), u_input.a.x), vec4<f32>(690f, arg_1.a.x, arg_1.a.x, arg_0.x)), ~(-76862i), Struct_1(arg_1.a, arg_1.b, arg_1.b.x, arg_1.d, 4294967295u), Struct_4(arg_0, -29093i, Struct_1(vec3<f32>(arg_1.a.x, 1676f, arg_1.a.x), vec2<bool>(false, false), false, arg_1.d, 1u))), Struct_4(_wgslsmith_f_op_vec2_f32(-arg_1.a.xy), _wgslsmith_mod_i32(0i, u_input.b.x), arg_1)))).d.yyx;
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 1u, _wgslsmith_sub_u32(55027u, u_input.a.x)), ~(vec4<u32>(arg_1.e, 17475u, 1u, 105423u) ^ u_input.a) & _wgslsmith_mod_vec4_u32(~vec4<u32>(42213u, 22338u, 0u, 25289u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.e, u_input.a.x, 18694u, 107719u), vec4<u32>(5919u, arg_1.e, 0u, arg_1.e)))), ~((~u_input.a << (u_input.a % vec4<u32>(32u))) << (~min(vec4<u32>(u_input.a.x, 44549u, 0u, arg_1.e), u_input.a) % vec4<u32>(32u))));
    let var_2 = Struct_2(vec2<bool>(var_0.x, arg_1.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(arg_1.a, vec3<f32>(-404f, arg_0.x, -1159f))))), var_0.xx, !var_0.x, vec4<bool>(all(vec4<bool>(arg_1.d.x, true, arg_1.b.x, var_0.x)), any(arg_1.d), false, false), firstLeadingBit(1u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 768f)) * -1644f), -1000f, -320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_1.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * _wgslsmith_div_f32(-1335f, arg_0.x)))));
    var_1 = vec4<u32>(~u_input.a.x | 4294967295u, ~(~abs(62006u)), 4294967295u, 0u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-336f, _wgslsmith_f_op_f32(var_2.b.a.x - -355f)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(u_input.a.x, u_input.a.x, false), _wgslsmith_div_vec4_f32(vec4<f32>(-390f, 141f, -762f, -958f), vec4<f32>(1578f, 279f, -647f, -1312f)))))));
    var var_1 = vec4<u32>(~(4294967295u | _wgslsmith_mult_u32(10331u, ~u_input.a.x)), u_input.a.x, 0u, 4294967295u);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(224f, 633f, 1041f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(412f, 163f, 375f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, 473f, 1000f))))), select(vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false)) | true), vec2<bool>(true, true), vec2<bool>(true, func_4(vec2<f32>(927f, 667f), func_2(Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(1792f, -1251f, 1406f), vec2<bool>(true, false), false, vec4<bool>(false, true, true, false), var_1.x), vec4<f32>(1385f, -1845f, 1199f, 867f)), u_input.b.x, Struct_1(vec3<f32>(-1053f, 495f, -968f), vec2<bool>(true, true), false, vec4<bool>(false, false, true, true), u_input.a.x), Struct_4(vec2<f32>(365f, -575f), -2147483647i, Struct_1(vec3<f32>(184f, 149f, -395f), vec2<bool>(true, false), true, vec4<bool>(true, true, true, false), 27252u)))))), true == !(min(4294967295u, var_1.x) == 4294967295u), !vec4<bool>(true == (var_1.x > u_input.a.x), true, select(true, true, all(vec2<bool>(true, true))), true), ~_wgslsmith_sub_u32(reverseBits(u_input.a.x), 6747u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -277f, 978f, var_2.a.x) * vec4<f32>(var_2.a.x, 108f, var_2.a.x, 277f)))), vec4<f32>(-1147f, 1000f, _wgslsmith_f_op_f32(abs(var_2.a.x)), var_2.a.x)))));
    var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-699i, u_input.b.x, 22584i, 12301i) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 23897u, var_2.e, u_input.a.x), u_input.a) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_add_i32(u_input.b.x, -1i), u_input.b.x, -u_input.b.x, u_input.b.x) >> (vec4<u32>(~69811u, func_2(Struct_2(var_2.b, Struct_1(vec3<f32>(var_3.x, 1463f, var_2.a.x), var_2.d.zz, var_2.b.x, vec4<bool>(false, var_2.c, var_2.c, true), u_input.a.x), vec4<f32>(733f, var_3.x, var_2.a.x, 1102f)), 32223i, Struct_1(var_3.wwx, var_2.b, var_2.b.x, vec4<bool>(var_2.b.x, false, false, false), 1u), Struct_4(vec2<f32>(626f, 1597f), u_input.b.x, Struct_1(vec3<f32>(var_2.a.x, 196f, var_3.x), var_2.d.yx, var_2.c, var_2.d, 1u))).e, 1u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1755f + -500f) + var_3.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1306f, 690f) + _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)), var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1421f, 1340f), _wgslsmith_f_op_f32(f32(-1f) * -1110f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 238f, var_3.x, var_3.x))))), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f + var_3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(select(var_2.a.x, -407f, var_2.c))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1852f) + _wgslsmith_f_op_f32(round(649f)))))), (vec3<i32>(~u_input.b.x, firstTrailingBit(u_input.b.x), countOneBits(u_input.b.x)) & _wgslsmith_mult_vec3_i32(vec3<i32>(-5523i, u_input.b.x, u_input.b.x), ~vec3<i32>(-24052i, u_input.b.x, -39560i))) & vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, min(0i, u_input.b.x)), 1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, -4952i), vec3<i32>(38529i, 2902i, u_input.b.x))));
}

