struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-483f, 323f, -1041f, -698f), vec4<f32>(-1000f, -512f, 1228f, 1000f), vec4<f32>(-1000f, -226f, -212f, 422f), vec4<f32>(1030f, -261f, -1025f, 1000f), vec4<f32>(-1038f, 1676f, 1907f, 1160f), vec4<f32>(464f, -641f, 407f, 1368f), vec4<f32>(-1419f, 1135f, 419f, -3062f), vec4<f32>(497f, 1000f, 2243f, 1000f), vec4<f32>(667f, 1000f, -780f, -1630f), vec4<f32>(-2842f, 764f, 1141f, -1565f), vec4<f32>(1211f, 399f, 1000f, -1816f), vec4<f32>(202f, 1000f, -146f, 643f), vec4<f32>(-264f, 1996f, -744f, 568f), vec4<f32>(110f, -1127f, 290f, -423f), vec4<f32>(982f, -489f, 1000f, -217f), vec4<f32>(585f, 1000f, 453f, 443f), vec4<f32>(-1491f, -187f, -1000f, -917f), vec4<f32>(210f, 214f, -871f, -623f), vec4<f32>(501f, 630f, -463f, 301f), vec4<f32>(1791f, -1034f, 771f, 606f));

var<private> global1: vec2<u32>;

var<private> global2: u32 = 22163u;

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<u32> {
    global1 = _wgslsmith_div_vec2_u32(vec2<u32>(~((global1.x | 0u) & arg_0.e.x), _wgslsmith_sub_u32(65850u, _wgslsmith_sub_u32(reverseBits(4294967295u), u_input.e.x))), firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(4519u, ~global1.x), countOneBits(arg_0.e.x >> (arg_2.c % 32u)))));
    global2 = 9303u;
    global2 = reverseBits(firstTrailingBit(reverseBits(~(~70105u))));
    global3 = arg_0.d;
    var var_0 = _wgslsmith_mult_vec3_u32(select(arg_0.e, u_input.d.zyw, !any(select(vec3<bool>(arg_2.a, false, arg_2.a), vec3<bool>(arg_0.a.b, arg_3.x, arg_0.a.a), vec3<bool>(arg_2.b, false, false)))), u_input.e);
    return ~var_0.xz;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_1(select(67037u != ~global1.x, !(!(global1.x > 69500u)), true), true, _wgslsmith_mod_u32(global1.x, 0u), _wgslsmith_div_vec2_i32(~u_input.b.yx, u_input.b.yy), _wgslsmith_sub_vec2_u32(u_input.e.xx, func_3(Struct_4(Struct_1(false, false, 29314u, vec2<i32>(u_input.b.x, u_input.b.x), u_input.e.xx), Struct_3(vec2<u32>(global1.x, 0u)), false, _wgslsmith_f_op_f32(trunc(-121f)), u_input.e), u_input.b.x, Struct_1(all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)), 42364u >> (global1.x % 32u), ~vec2<i32>(u_input.b.x, 61173i), ~vec2<u32>(45470u, u_input.a)), vec2<bool>(true, true))));
    var var_1 = u_input.d.wyy;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1479f, 786f)))), _wgslsmith_div_f32(-390f, 120f), -769f);
    return Struct_5(Struct_4(Struct_1(any(vec3<bool>(var_0.b, var_0.a, true)) && select(false, var_0.a, false), !var_0.a, 59900u, vec2<i32>(-1i) * -u_input.b.wy, max(var_1.zx, ~var_0.e)), Struct_3(var_0.e), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 2128f) + _wgslsmith_div_f32(656f, 479f)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(floor(var_2.x))), all(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.b, var_0.a, var_0.b, true), false)))), u_input.e), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-1000f * 593f)), _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_clamp_u32((firstTrailingBit(4294967295u) | global1.x) ^ abs(var_0.c), _wgslsmith_dot_vec3_u32(~countOneBits(u_input.d.ywx), ~max(u_input.e, u_input.e)), 1u), u_input.d);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, var_0.c) * arg_3)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.x, 2221f), vec2<f32>(arg_3.x, arg_1.a.d), false)) + vec2<f32>(var_0.a.d, 218f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a.d, arg_3.x), arg_3)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 842f)))), arg_1.b.a))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x - -1524f))), arg_3.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1142f, var_1.x) - arg_3)) - vec2<f32>(-718f, _wgslsmith_f_op_f32(arg_3.x - var_1.x))) + arg_3));
    let var_3 = Struct_1(!any(vec4<bool>(any(arg_0), true, all(arg_0.yz), arg_1.b.d.x <= 1i)), !all(arg_0), 36244u, var_0.a.a.d, var_0.a.a.e);
    let var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_3 - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(var_0.c - 1058f), _wgslsmith_f_op_f32(207f + -786f)))))));
    return _wgslsmith_f_op_f32(-arg_3.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> i32 {
    global2 = u_input.c;
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1360f, 587f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-493f, -1703f) - vec2<f32>(1900f, -1656f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) * _wgslsmith_f_op_f32(f32(-1f) * -1507f)), _wgslsmith_f_op_f32(func_4(vec3<bool>(arg_0.x, false, arg_2), func_2(), min(u_input.d, vec4<u32>(u_input.e.x, arg_1.c, 1u, u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, -196f))))))));
    return 2147483647i;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec2_i32(u_input.b.yx, vec2<i32>(arg_2.c, _wgslsmith_mult_i32(arg_2.c, u_input.b.x << (_wgslsmith_clamp_u32(arg_2.b, 4294967295u, global1.x) % 32u))));
    global2 = _wgslsmith_mod_u32(1u, 1u);
    var_0 = vec2<i32>(-1i, reverseBits(u_input.b.x) & u_input.b.x);
    var var_1 = func_2().b;
    let var_2 = Struct_3((_wgslsmith_div_vec2_u32(vec2<u32>(var_1.e.x, arg_2.b), vec2<u32>(arg_2.b, 17579u) << (u_input.e.xx % vec2<u32>(32u))) << (vec2<u32>(4294967295u >> (0u % 32u), ~arg_0.x) % vec2<u32>(32u))) ^ u_input.d.wx);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.xz;
    var var_1 = func_5(~vec3<u32>(global1.x >> (0u % 32u), _wgslsmith_mult_u32(u_input.a, 1u), 152505u) | vec3<u32>(~_wgslsmith_add_u32(var_0.x, u_input.c), ~0u, 1u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, -1084f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-342f, 1245f), vec2<f32>(-2087f, 1475f))), _wgslsmith_div_vec2_f32(vec2<f32>(-287f, 351f), vec2<f32>(-267f, 918f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f + -747f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_2(!select(true, true, false), _wgslsmith_mod_u32(0u, u_input.c), func_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), Struct_1(true, true, 0u, firstLeadingBit(u_input.b.xy), ~vec2<u32>(var_0.x, 14764u)), !any(vec4<bool>(true, false, true, false))), global0[_wgslsmith_index_u32(var_0.x, 20u)], !func_2().b.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1033f, var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(933f, -754f)) * var_1.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.d.zzy + vec3<f32>(_wgslsmith_f_op_f32(var_1.d.x - -119f), _wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(var_1.d.x - var_1.d.x)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x));
    global3 = _wgslsmith_f_op_f32(trunc(var_1.d.x));
    var var_4 = _wgslsmith_mult_u32(global1.x, 0u);
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, var_0.x, var_0.x, 0u)), vec4<u32>(var_1.b, 24601u, 0u, 4294967295u) | ~u_input.d), abs(vec4<u32>(36233u, var_5, 1u, 4294967295u))), _wgslsmith_f_op_f32(-var_1.d.x), 58400i);
}

