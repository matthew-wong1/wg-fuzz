struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> vec3<bool> {
    global0 = _wgslsmith_add_vec2_i32(select(firstTrailingBit(abs(vec2<i32>(-83904i, -2147483647i))), ~_wgslsmith_add_vec2_i32(vec2<i32>(6344i, 14255i), vec2<i32>(global0.x, 0i)), select(vec2<bool>(true, true), vec2<bool>(false, true), true)) | (countOneBits(firstTrailingBit(vec2<i32>(1i, 18258i))) >> (max(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(arg_0, arg_0)), vec2<u32>(2251u, 71786u)) % vec2<u32>(32u))), vec2<i32>(1i, global0.x) << (~vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)));
    global0 = ~vec2<i32>(42113i, global0.x);
    var var_0 = vec2<bool>(any(vec2<bool>(true, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)) && !any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    var_0 = !(!vec2<bool>(_wgslsmith_f_op_f32(sign(1072f)) >= _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), !(var_0.x | true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 530f, -1179f), vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, 665f, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))), vec3<f32>(-932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x)))));
    return !(!vec3<bool>(var_0.x, false, true));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1054f * _wgslsmith_div_f32(223f, -746f)), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-697f + -364f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1115f, -1749f, -1000f), vec3<f32>(416f, -2248f, 1078f)))), !(!func_3(u_input.b, vec2<f32>(-555f, 1000f))))), Struct_2(Struct_1(func_3(~u_input.b, vec2<f32>(-739f, 744f)).zx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-256f, -228f, 841f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1508f, 538f, -2145f))), vec3<f32>(1184f, _wgslsmith_f_op_f32(501f + -1317f), 793f), 819f), Struct_1(!(!arg_0.wz), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 930f, -1263f, 1267f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(228f, -554f, 1129f, 941f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1301f, -1516f, -400f), vec3<f32>(160f, -149f, -888f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-487f, 515f, 1182f) + vec3<f32>(-260f, -1849f, 193f))), _wgslsmith_f_op_f32(f32(-1f) * -364f)), !func_3(~21293u, vec2<f32>(1807f, -1186f)).x, arg_0.wy, false), !(!all(arg_0.wzw) & func_3(4294967295u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-142f, -139f)))).x));
    global0 = -select(vec2<i32>(global0.x, countOneBits(1i)), vec2<i32>(u_input.c, select(11611i, -20614i, false)) & abs(vec2<i32>(1i, 1i)), false);
    let var_1 = vec4<f32>(var_0.b.a.d, _wgslsmith_f_op_f32(abs(-219f)), _wgslsmith_f_op_f32(round(260f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(279f, _wgslsmith_f_op_f32(var_0.b.b.b.x - var_0.a.x))) * _wgslsmith_f_op_f32(max(412f, var_0.b.b.c.x))), var_0.a.x));
    var_0 = Struct_3(var_0.b.b.c, Struct_2(var_0.b.b, var_0.b.a, all(vec4<bool>(func_3(0u, var_0.a.xz).x, !arg_0.x, true, var_0.c != var_0.b.a.a.x)), vec2<bool>(false, !arg_0.x != all(vec3<bool>(arg_0.x, true, var_0.c))), !all(vec2<bool>(arg_0.x, arg_0.x))), true);
    return Struct_1(!vec2<bool>(!var_0.c, u_input.a > _wgslsmith_div_i32(0i, global0.x)), _wgslsmith_f_op_vec4_f32(-var_0.b.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.b.a.c.x, -690f)), arg_0.xzz))), 345f);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> u32 {
    global0 = vec2<i32>(~_wgslsmith_add_i32(max(-2147483647i, arg_1.x), abs(arg_1.x)), _wgslsmith_mult_i32(max(arg_1.x, countOneBits(20768i)), -2147483647i)) | arg_1.zy;
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c.zy + arg_0.c.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x) * vec2<f32>(-1304f, arg_0.c.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.d) - arg_0.b.wy))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, -881f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b.wz, vec2<f32>(arg_0.d, 497f)))))) + vec2<f32>(arg_0.d, 1016f));
    global0 = arg_1.xy;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b.yyw * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, var_1.x, arg_0.d) + vec3<f32>(-347f, -1046f, 317f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_0.b.x, 787f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.b.xwx, vec3<f32>(var_1.x, 1947f, -819f))) * vec3<f32>(arg_0.d, arg_0.d, _wgslsmith_f_op_f32(-arg_0.c.x)))));
    return reverseBits(64973u);
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(abs(abs(~vec2<u32>(29854u, 1u))), vec2<u32>(reverseBits(u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 18006u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 11344u)))), func_4(func_2(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -24354i) ^ vec3<i32>(u_input.c, 2147483647i, global0.x), max(vec3<i32>(17183i, 0i, 2147483647i), vec3<i32>(global0.x, u_input.c, global0.x))), all(vec3<bool>(true, true, all(vec3<bool>(true, false, false)))), 17982i));
    global0 = select(vec2<i32>(~17678i, _wgslsmith_add_i32(select(2147483647i, -u_input.c, false), u_input.a)), vec2<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.x, 1i, -67047i, u_input.c)), -vec4<i32>(-26491i, 43525i, u_input.a, 52730i) ^ (vec4<i32>(17994i, -2147483647i, u_input.a, 0i) >> (vec4<u32>(var_0.x, 12026u, var_0.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -87851i, -49455i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-10678i, 9764i, 10622i, 2147483647i), vec4<i32>(global0.x, -2147483647i, global0.x, 1i)), vec4<i32>(-23136i, -1i, global0.x, 42930i) << (vec4<u32>(1u, u_input.b, 4777u, var_0.x) % vec4<u32>(32u)))), all(!func_2(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)).a));
    let var_1 = -196f;
    let var_2 = Struct_5(Struct_2(func_2(vec4<bool>(true, true, true, true)), Struct_1(func_3(select(u_input.b, 26638u, true), vec2<f32>(var_1, -704f)).yz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -787f, 317f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(771f, var_1, 237f), vec3<f32>(var_1, var_1, -110f))))), -342f), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(!all(vec4<bool>(true, false, false, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), !((u_input.b < 0u) & true)), vec2<bool>(false, !any(vec2<bool>(true, true))));
    let var_3 = Struct_4(var_2.a.b.b, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 417f, 129f), vec3<f32>(1512f, var_1, var_2.a.b.b.x)) - vec3<f32>(_wgslsmith_f_op_f32(-var_1), -1783f, _wgslsmith_f_op_f32(min(196f, var_2.a.b.c.x)))), Struct_2(Struct_1(select(var_2.a.d, var_2.a.b.a, var_2.b.x), var_2.a.a.b, _wgslsmith_f_op_vec3_f32(var_2.a.b.c - vec3<f32>(-984f, var_1, -1147f)), _wgslsmith_f_op_f32(-496f * var_1)), func_2(!vec4<bool>(false, var_2.a.d.x, true, var_2.b.x)), var_2.a.d.x, !(!vec2<bool>(var_2.a.b.a.x, var_2.b.x)), true), !(!any(vec3<bool>(false, false, var_2.b.x)))));
    return var_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<f32>) -> bool {
    return arg_0.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!func_5(func_1(), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true)), _wgslsmith_div_vec4_f32(vec4<f32>(2719f, 1218f, 258f, -189f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -804f, -109f, 1175f)))), true, true);
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(abs(362f)), _wgslsmith_f_op_f32(min(-738f, -1226f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1004f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(543f, 815f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(749f, -1641f, -107f), vec3<f32>(430f, 1866f, 701f)) + vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(f32(-1f) * -1619f), _wgslsmith_f_op_f32(-144f + 692f))), Struct_2(func_2(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), false)), func_2(!vec4<bool>(false, var_0, var_0, var_0)), true, vec2<bool>(!var_0, var_0), var_0), var_0 | var_0));
    var_1 = Struct_4(var_1.b.b.a.b, Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(var_1.b.b.b.c, vec3<f32>(var_1.a.x, -1000f, var_1.a.x))))))), func_1(), var_0));
    var var_2 = ~abs(vec2<u32>(firstLeadingBit(u_input.b), countOneBits(reverseBits(u_input.b))));
    let var_3 = ~countOneBits(_wgslsmith_clamp_vec2_u32(firstTrailingBit(countOneBits(vec2<u32>(var_2.x, u_input.b))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(var_2.x, var_2.x))), countOneBits(vec2<u32>(13061u, 40013u) ^ vec2<u32>(u_input.b, 1u))));
    var_2 = vec2<u32>(~(~max(reverseBits(52359u), ~1518u)), _wgslsmith_mod_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_2.x, var_2.x, var_3.x), vec4<u32>(u_input.b, var_3.x, u_input.b, 0u)) << (1u % 32u)) >> (abs(u_input.b) % 32u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u | u_input.b, ~u_input.b), var_3.x)));
    var_2 = countOneBits(select(vec2<u32>(~1u, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, countOneBits(4294967295u)), vec2<u32>(_wgslsmith_mult_u32(var_2.x, 28585u), var_3.x)), !(!(var_1.b.b.a.a.x & var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, var_1.b.a.xy, ~(~var_3), ~var_2.x, _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(351f + _wgslsmith_f_op_f32(-916f - var_1.b.b.a.b.x)))), false || var_1.b.b.b.a.x)));
}

