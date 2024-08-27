struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global0 = arg_2.c.c.x;
    global0 = -2147483647i & arg_1.c.x;
    let var_0 = max(~(~vec2<u32>(u_input.d, 1u)) << (select(~vec2<u32>(u_input.d, u_input.d) << (select(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, u_input.d), vec2<bool>(true, arg_2.a)) % vec2<u32>(32u)), vec2<u32>(73999u, 5960u), false) % vec2<u32>(32u)), abs(~vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(24674u, u_input.d), vec2<u32>(0u, 22157u)))));
    var var_1 = Struct_4(arg_2, 31493i, arg_2.b.c, 0u);
    global0 = select((-529i >> (var_0.x % 32u)) & (i32(-1i) * -1385i), ~(-18129i), !var_1.a.a);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~arg_2.c.b << (abs(36709u) % 32u), 1i, arg_1.b, firstTrailingBit(-3229i)), _wgslsmith_sub_vec4_i32(~firstLeadingBit(u_input.e), max(vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 30138i), u_input.b), firstLeadingBit(arg_2.d.b), 1i), u_input.e)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = func_3(1434f, Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x))))), ~(-39587i), firstTrailingBit(vec2<i32>(46263i, 30253i) >> (vec2<u32>(u_input.d, arg_1.x) % vec2<u32>(32u)))), Struct_2(all(vec4<bool>(true, true, true, true)), arg_0, arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 1422f, -752f, -1012f) - vec4<f32>(515f, -1133f, arg_0.a.x, arg_0.a.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, -608f, arg_0.a.x, 661f), arg_0.a)), 23039i, vec2<i32>(-u_input.b.x, firstLeadingBit(u_input.a)))));
    var var_1 = u_input.c ^ u_input.c;
    var_1 = u_input.c ^ _wgslsmith_mod_vec3_i32(u_input.b, countOneBits(u_input.b));
    var var_2 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -161f), -2019f, _wgslsmith_f_op_f32(arg_0.a.x - 1327f), _wgslsmith_f_op_f32(max(-1408f, arg_0.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-884f)), _wgslsmith_f_op_f32(min(-859f, arg_0.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1432f))), ~(u_input.b.x & 1i), ~u_input.b.yy), arg_0, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1435f)) + -1933f), -589f, _wgslsmith_f_op_f32(round(1108f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(972f, arg_0.a.x))))), u_input.a, _wgslsmith_clamp_vec2_i32(var_1.yy << (arg_1.wx % vec2<u32>(32u)), vec2<i32>(min(2147483647i, u_input.a), -2147483647i), -var_1.zz)));
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_4) -> Struct_3 {
    global0 = ~arg_3.a.b.b;
    global0 = ~reverseBits(arg_1);
    let var_0 = -arg_1;
    global0 = var_0 & ~24465i;
    global0 = u_input.c.x;
    return Struct_3(arg_3.a, func_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(sign(arg_0.a.x)), arg_3.a.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1385f)), _wgslsmith_add_i32(var_0 << (0u % 32u), 0i), select(vec2<i32>(2147483647i, 2147483647i), _wgslsmith_sub_vec2_i32(arg_0.c, u_input.e.wy), select(vec2<bool>(arg_3.a.a, arg_3.a.a), vec2<bool>(true, arg_3.a.a), false))), arg_2), vec4<f32>(-1000f, arg_3.a.c.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(func_2(Struct_1(arg_3.a.c.a, u_input.a, vec2<i32>(var_0, var_0)), arg_2).a.x)), arg_0.a.x, arg_3.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-443f, _wgslsmith_f_op_f32(ceil(-1612f)))))), true);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_4(func_2(Struct_1(arg_1.d.a, -_wgslsmith_mod_i32(u_input.c.x, u_input.b.x), select(vec2<i32>(1i, 1i), vec2<i32>(-3566i, arg_1.d.c.x), arg_0.zy)), vec4<u32>(_wgslsmith_mod_u32(13521u, u_input.d), _wgslsmith_sub_u32(u_input.d, 14279u), u_input.d & u_input.d, ~u_input.d) << (~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u))), ~arg_1.b.c.x, ~(~vec4<u32>(1u, ~17374u, firstLeadingBit(1u), _wgslsmith_mod_u32(u_input.d, u_input.d))), Struct_4(Struct_2(arg_0.x, arg_1.b, func_2(Struct_1(arg_1.c.a, 27225i, vec2<i32>(15783i, 60606i)), select(vec4<u32>(11230u, 0u, 4294967295u, u_input.d), vec4<u32>(1u, u_input.d, 40490u, u_input.d), false)), Struct_1(_wgslsmith_f_op_vec4_f32(select(arg_1.d.a, arg_1.c.a, vec4<bool>(true, arg_0.x, arg_1.a, arg_1.a))), -4889i, vec2<i32>(arg_1.b.c.x, -4744i) ^ arg_1.d.c)), 1i, vec2<i32>(_wgslsmith_mod_i32(1i, firstTrailingBit(-46525i)), arg_1.c.b), u_input.d));
    global0 = -43961i;
    let var_1 = select(vec4<bool>(var_0.d, arg_0.x | false, false, true), !(!vec4<bool>(!var_0.d, true, arg_1.a, true)), arg_0.x);
    let var_2 = true;
    var var_3 = arg_1.b.b;
    return func_4(func_4(Struct_1(vec4<f32>(var_0.c.x, -276f, _wgslsmith_f_op_f32(trunc(1849f)), 1397f), 2147483647i ^ arg_1.c.c.x, ~_wgslsmith_add_vec2_i32(u_input.e.yx, var_0.a.b.c)), -67618i, countOneBits(vec4<u32>(firstLeadingBit(0u), 85843u, 67062u, 1u >> (0u % 32u))), Struct_4(Struct_2(var_2, Struct_1(arg_1.b.a, -65343i, var_0.a.d.c), func_2(arg_1.d, vec4<u32>(u_input.d, 37305u, u_input.d, 1u)), arg_1.d), 1i, arg_1.d.c, _wgslsmith_mult_u32(abs(26610u), u_input.d))).b, var_0.a.b.c.x, max(vec4<u32>(abs(abs(4294967295u)), 0u, countOneBits(u_input.d & u_input.d), _wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u ^ u_input.d)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)), vec4<u32>(u_input.d, u_input.d, 1u, 64404u), vec4<u32>(10124u, 4294967295u, 1u, u_input.d)) << (~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u))), Struct_4(Struct_2(true, Struct_1(arg_1.c.a, var_0.b.c.x, max(vec2<i32>(-17463i, -10471i), vec2<i32>(var_0.b.b, var_0.a.c.c.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -197f, arg_1.b.a.x, var_0.a.b.a.x)), -1i, vec2<i32>(u_input.a, arg_1.d.c.x)), Struct_1(vec4<f32>(var_0.a.c.a.x, -982f, arg_1.c.a.x, arg_1.b.a.x), -1i, min(var_0.a.b.c, vec2<i32>(2147483647i, u_input.e.x)))), _wgslsmith_add_i32(arg_1.b.b ^ 1i, -2147483647i), vec2<i32>(0i, func_4(func_2(arg_1.b, vec4<u32>(u_input.d, u_input.d, 1u, u_input.d)), 1i, firstTrailingBit(vec4<u32>(u_input.d, u_input.d, u_input.d, 24815u)), Struct_4(arg_1, 2147483647i, vec2<i32>(arg_1.c.c.x, 0i), 10247u)).b.b), ~17363u)).a.c;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(func_5(Struct_3(Struct_2(true, func_1(vec3<bool>(true, true, true), Struct_2(false, Struct_1(vec4<f32>(302f, -872f, -1509f, 360f), 1i, vec2<i32>(u_input.a, u_input.b.x)), Struct_1(vec4<f32>(-366f, 374f, -1000f, -132f), u_input.e.x, vec2<i32>(-2147483647i, u_input.b.x)), Struct_1(vec4<f32>(-1000f, -880f, 1814f, -1038f), 8009i, u_input.e.zx))), func_2(Struct_1(vec4<f32>(538f, 276f, 155f, -264f), u_input.b.x, vec2<i32>(u_input.b.x, 2147483647i)), vec4<u32>(u_input.d, 4294967295u, u_input.d, 3293u)), Struct_1(vec4<f32>(676f, -1681f, 1000f, -1221f), u_input.a, u_input.e.wy)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1907f, -660f, -885f, 925f) - vec4<f32>(1643f, -1501f, 292f, -1000f)), -1i, select(vec2<i32>(1i, -1i), vec2<i32>(16527i, 23907i), vec2<bool>(false, true))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2043f), func_2(Struct_1(vec4<f32>(-487f, -784f, -1591f, 207f), u_input.c.x, u_input.e.wy), vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d)).a.x, _wgslsmith_f_op_f32(1217f * -707f), _wgslsmith_f_op_f32(min(-974f, -2309f))), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * 1f))), select(vec4<bool>(true, true, func_4(Struct_1(vec4<f32>(1984f, -1061f, -219f, -1000f), u_input.b.x, u_input.b.yz), u_input.c.x, vec4<u32>(1252u, u_input.d, 1u, u_input.d), Struct_4(Struct_2(true, Struct_1(vec4<f32>(206f, 651f, 1016f, -1271f), u_input.c.x, vec2<i32>(1i, u_input.c.x)), Struct_1(vec4<f32>(1509f, -574f, -271f, -1415f), 1i, u_input.e.xw), Struct_1(vec4<f32>(1159f, -687f, -890f, 114f), 63299i, vec2<i32>(0i, u_input.b.x))), u_input.a, vec2<i32>(u_input.a, u_input.b.x), u_input.d)).d, any(vec3<bool>(false, true, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1275f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(339f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1423f + 687f) + _wgslsmith_f_op_f32(f32(-1f) * -1208f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(601f))))));
    let var_2 = !(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), vec3<bool>(true, true, true), false));
    global0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-483f))))), u_input.b.zx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_1(vec3<bool>(var_2.x, true, var_2.x), Struct_2(var_2.x, Struct_1(vec4<f32>(-206f, -3316f, -343f, -847f), -1i, vec2<i32>(-1i, 30253i)), Struct_1(vec4<f32>(466f, 1115f, -2480f, -552f), u_input.c.x, vec2<i32>(u_input.e.x, u_input.b.x)), Struct_1(vec4<f32>(-751f, 116f, 525f, -1000f), 2147483647i, u_input.c.xz))).a.xww), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-166f, -923f, 934f)))))), 28848u);
}

