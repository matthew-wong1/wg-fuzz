struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec2<u32>(4294967295u, 1u), true, vec4<bool>(true, false, true, false), vec4<i32>(0i, 2147483647i, 2147483647i, 1i), vec4<f32>(-733f, 1421f, 1320f, 1000f)), Struct_2(vec2<u32>(31360u, 71566u), false, vec4<bool>(false, true, false, true), vec4<i32>(29860i, i32(-2147483648), 33254i, 1i), vec4<f32>(-1965f, 981f, 992f, -445f)), Struct_2(vec2<u32>(4294967295u, 0u), false, vec4<bool>(false, false, false, true), vec4<i32>(3351i, 25290i, i32(-2147483648), 1i), vec4<f32>(-942f, 243f, 1000f, 2691f)), Struct_2(vec2<u32>(79295u, 11618u), true, vec4<bool>(false, false, false, false), vec4<i32>(32032i, -3720i, -1i, 3252i), vec4<f32>(-543f, 850f, 699f, 1932f)), Struct_2(vec2<u32>(4294967295u, 1u), true, vec4<bool>(false, false, true, true), vec4<i32>(11214i, -1i, -12800i, -21287i), vec4<f32>(281f, 1336f, 1051f, 747f)), Struct_2(vec2<u32>(149828u, 1u), true, vec4<bool>(true, false, true, false), vec4<i32>(0i, 2147483647i, 17940i, 2147483647i), vec4<f32>(1185f, 726f, -1005f, -1960f)), Struct_2(vec2<u32>(0u, 0u), false, vec4<bool>(false, true, true, true), vec4<i32>(40008i, i32(-2147483648), 9622i, 0i), vec4<f32>(340f, -1783f, 1294f, 262f)), Struct_2(vec2<u32>(4294967295u, 0u), true, vec4<bool>(true, true, true, true), vec4<i32>(-61128i, -17089i, 0i, 12065i), vec4<f32>(819f, 481f, 1659f, -928f)), Struct_2(vec2<u32>(0u, 56620u), false, vec4<bool>(false, false, false, false), vec4<i32>(i32(-2147483648), 9193i, -1i, -1i), vec4<f32>(395f, -744f, 321f, -1111f)), Struct_2(vec2<u32>(1u, 0u), false, vec4<bool>(true, false, false, false), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -3756i), vec4<f32>(1878f, 333f, -679f, 764f)), Struct_2(vec2<u32>(0u, 4294967295u), true, vec4<bool>(true, true, true, true), vec4<i32>(1i, 2147483647i, 0i, i32(-2147483648)), vec4<f32>(-534f, 821f, -146f, -220f)), Struct_2(vec2<u32>(12735u, 4294967295u), true, vec4<bool>(false, true, false, true), vec4<i32>(47883i, -31601i, 13229i, -19014i), vec4<f32>(548f, -766f, -901f, -172f)), Struct_2(vec2<u32>(0u, 4294967295u), true, vec4<bool>(true, false, false, false), vec4<i32>(2147483647i, 43175i, -1i, 0i), vec4<f32>(816f, -1850f, -1712f, 139f)), Struct_2(vec2<u32>(4294967295u, 18555u), true, vec4<bool>(true, false, false, false), vec4<i32>(44115i, -45805i, 54987i, 49150i), vec4<f32>(-226f, -812f, 1146f, -1077f)), Struct_2(vec2<u32>(0u, 3975u), true, vec4<bool>(false, true, true, false), vec4<i32>(-10671i, i32(-2147483648), -1i, 2147483647i), vec4<f32>(-347f, 671f, -1000f, -836f)), Struct_2(vec2<u32>(1u, 39851u), false, vec4<bool>(false, true, true, false), vec4<i32>(-28053i, 1i, 12413i, -28961i), vec4<f32>(1926f, 726f, 179f, -889f)), Struct_2(vec2<u32>(4267u, 4294967295u), true, vec4<bool>(true, false, false, true), vec4<i32>(0i, 0i, 1i, 6707i), vec4<f32>(753f, -1156f, 1000f, -1000f)), Struct_2(vec2<u32>(1u, 0u), false, vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, 2147483647i, -5064i, 2147483647i), vec4<f32>(-1392f, -1000f, -223f, 749f)));

var<private> global2: u32 = 0u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> bool {
    global0 = arg_0;
    let var_0 = ~(-vec4<i32>(_wgslsmith_add_i32(0i, ~(-48084i)), u_input.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, 44015i), _wgslsmith_mod_i32(u_input.c, -93390i)), -2147483647i));
    let var_1 = !(!select(!(!vec4<bool>(arg_0, arg_0, true, arg_0)), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, true, arg_0), !vec4<bool>(arg_0, true, arg_0, false)), arg_0));
    var var_2 = _wgslsmith_sub_i32(u_input.b.x, ~(i32(-1i) * -10152i)) << (select(u_input.e.x, u_input.e.x, !(!any(var_1))) % 32u);
    var_2 = 23026i;
    return any(var_1.wy) == (_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-258f, -977f)) * _wgslsmith_div_f32(-1082f, 1382f)), _wgslsmith_f_op_f32(f32(-1f) * -1708f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e.wy + _wgslsmith_f_op_vec2_f32(vec2<f32>(883f, -247f) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-170f, arg_0.e.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e.wz)))));
    let var_1 = Struct_1(!vec4<bool>(!arg_0.c.x, !any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false)), all(select(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.b), vec3<bool>(arg_0.b, true, arg_0.b), true)), func_2(true)), arg_0.e, countOneBits(vec2<u32>(max(arg_0.a.x, 19559u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, 25181u), ~arg_0.a.x))), i32(-1i) * -2248i);
    let var_2 = Struct_3(vec3<i32>(countOneBits(-40209i), _wgslsmith_clamp_i32(reverseBits(~0i), _wgslsmith_add_i32(var_1.d, arg_0.d.x), min(arg_2, abs(-1i))), arg_1.x));
    let var_3 = Struct_2(~u_input.e.wy, !(_wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.x)) - var_0.x)), select(var_1.a, !var_1.a, var_1.a), firstTrailingBit(arg_0.d), var_1.b);
    var var_4 = -44354i;
    return var_3.e.x;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_3 {
    global0 = true;
    global0 = !(~1u >= _wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, u_input.e.x), arg_1.a.x));
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -1270f) + vec3<f32>(149f, arg_0.x, -529f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, 1000f, arg_0.x)))))), arg_1, vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(~u_input.c, 2147483647i), firstLeadingBit(u_input.c ^ 1645i)), u_input.b.x), select(vec3<bool>(arg_1.c.x, all(vec2<bool>(arg_1.b, false)), _wgslsmith_sub_u32(u_input.a.x, 1u) > arg_1.a.x), vec3<bool>(false, (13547i >> (arg_1.a.x % 32u)) <= -2147483647i, true), select(!arg_1.c.wzx, vec3<bool>(select(arg_1.c.x, arg_1.b, false), true, true), !select(arg_1.c.yzy, arg_1.c.zyz, false))), max(-3060i, 1i));
    global1 = array<Struct_2, 18>();
    global0 = (any(!vec2<bool>(arg_1.b, true)) || (!(1u < u_input.d) && var_0.b.b)) | true;
    return Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(~var_0.b.d, min(arg_1.d, vec4<i32>(62146i, arg_1.d.x, u_input.c, -2147483647i))), var_0.e >> ((arg_1.a.x ^ var_0.b.a.x) % 32u)), arg_1.d.xyw));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1, arg_1)))), -169f, _wgslsmith_f_op_f32(trunc(-750f))), global1[_wgslsmith_index_u32(u_input.d, 18u)], vec3<i32>(arg_2.a.x, _wgslsmith_sub_i32(arg_0, _wgslsmith_sub_i32(u_input.c, u_input.c) << (abs(26121u) % 32u)), _wgslsmith_sub_i32(-15989i, ~firstLeadingBit(-28308i))), select(select(vec3<bool>(true, all(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(func_2(false), true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), true), select(u_input.a.x, u_input.e.x, false) >= ~u_input.a.x), vec3<bool>(!func_2(true), all(vec3<bool>(true, true, true)), true)), select(1i, 15861i, true));
    let var_1 = -(min(countOneBits(-vec3<i32>(arg_2.a.x, arg_2.a.x, u_input.c)), ~vec3<i32>(-31924i, -19422i, arg_3.a.x) ^ (u_input.b.xwy & arg_3.a)) ^ vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(var_0.c.x), 38698i, _wgslsmith_mod_i32(-1i, -1i)), ~var_0.c.x, arg_0));
    global2 = var_0.b.a.x;
    global0 = var_0.b.b;
    var var_2 = arg_3;
    return Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, var_0.a.x) + vec3<f32>(1693f, 567f, -200f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(arg_1 - var_0.b.e.x), -468f)), var_0.a, vec3<bool>(func_2(!var_0.d.x), var_0.d.x, !any(vec2<bool>(var_0.b.b, true))))), Struct_2(~firstLeadingBit(vec2<u32>(49224u, 35623u)), true, vec4<bool>(!var_0.b.b, func_2(var_0.d.x || true), func_2(var_0.b.b), var_0.d.x | (u_input.d < 0u)), vec4<i32>(-31094i, firstTrailingBit(var_1.x), 1i, -10282i) & vec4<i32>(~u_input.c, 28302i >> (1u % 32u), countOneBits(arg_3.a.x), ~var_1.x), _wgslsmith_f_op_vec4_f32(min(var_0.b.e, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1000f, -534f, arg_1) * var_0.b.e)))))), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(9706i, var_1.x, -2147483647i), ~vec3<i32>(-1i, arg_0, 1i)), max(var_0.c.x, u_input.c), arg_3.a.x ^ arg_3.a.x)), var_0.b.c.yxz, arg_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 18>();
    global2 = countOneBits(countOneBits(_wgslsmith_mult_u32(u_input.e.x, ~(u_input.e.x << (u_input.a.x % 32u)))));
    let var_0 = func_4(-2147483647i, 1f, func_3(vec3<f32>(_wgslsmith_f_op_f32(-1132f + 122f), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 18u)], select(vec2<i32>(9964i, -2147483647i), vec2<i32>(58888i, -31225i), vec2<bool>(false, true)), u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(511f, -1000f)) - _wgslsmith_f_op_f32(-2368f - -278f))), Struct_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.e.x, u_input.a.x)), true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), all(vec2<bool>(true, true))), vec4<i32>(u_input.b.x, 1i, -u_input.b.x, -u_input.c), vec4<f32>(_wgslsmith_f_op_f32(max(934f, 277f)), 1f, _wgslsmith_f_op_f32(trunc(-2236f)), _wgslsmith_f_op_f32(max(762f, -666f))))), func_3(vec3<f32>(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~122511u, 18u)], abs(u_input.b.yx), ~(-2147483647i))), _wgslsmith_f_op_f32(func_1(Struct_2(u_input.a, true, vec4<bool>(true, false, false, true), u_input.b, vec4<f32>(280f, 959f, 202f, 528f)), vec2<i32>(u_input.b.x, 0i), u_input.b.x)), _wgslsmith_f_op_f32(-1668f * -892f)), global1[_wgslsmith_index_u32(4294967295u, 18u)]));
    global2 = ~_wgslsmith_add_u32(50563u, countOneBits(max(82684u, 11207u)) ^ min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<u32>(u_input.d, u_input.a.x, u_input.d)), ~4294967295u));
    global1 = array<Struct_2, 18>();
    global2 = _wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(u_input.e.yxw, vec3<u32>(2835u, ~24973u, 4294967295u >> (var_0.b.a.x % 32u))), u_input.e.wzy, vec3<bool>(!(-44865i <= u_input.c), any(var_0.b.c), !(var_0.b.a.x >= u_input.d))), u_input.e.xxx);
    let var_1 = _wgslsmith_add_vec2_u32(abs(~vec2<u32>(13776u, select(var_0.b.a.x, 82266u, var_0.d.x))), u_input.a);
    var var_2 = vec3<f32>(-153f, 367f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.e.x * -2702f))) + _wgslsmith_div_f32(-953f, _wgslsmith_f_op_f32(-1317f - var_0.b.e.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-162f, ~var_1, vec3<u32>(abs(0u & var_0.b.a.x), ~var_0.b.a.x, 22758u) << (u_input.e.zxz % vec3<u32>(32u)));
}

