struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 36418u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_4(arg_2, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-277f)))), true & all(vec3<bool>(true, false, arg_1.x)), arg_1.yy, Struct_1(-564f));
    global0 = max(~arg_0.zx, _wgslsmith_mult_vec2_u32(firstTrailingBit(arg_0.zy), arg_0.zz));
    var var_1 = ~_wgslsmith_add_u32(1u, (arg_3.b.x >> (_wgslsmith_mult_u32(0u, u_input.b) % 32u)) | countOneBits(~global0.x));
    global0 = _wgslsmith_div_vec2_u32(arg_3.b.wx, _wgslsmith_add_vec2_u32(abs(firstTrailingBit(~arg_3.b.yy)), arg_3.b.wy << (vec2<u32>(91048u, 1u) % vec2<u32>(32u))));
    var var_2 = any(select(!(!select(vec2<bool>(false, false), vec2<bool>(true, arg_1.x), vec2<bool>(false, arg_3.a.x))), select(!vec2<bool>(true, arg_1.x), vec2<bool>(true, true), var_0.d.x), arg_1.x && !any(vec3<bool>(var_0.d.x, arg_3.a.x, arg_3.a.x))));
    return 1u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(arg_1, _wgslsmith_div_vec4_u32(~vec4<u32>(func_3(vec3<u32>(global0.x, u_input.b, 4294967295u), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), 1385f, Struct_3(vec2<bool>(arg_1.x, arg_1.x), vec4<u32>(global0.x, u_input.b, 36565u, 12611u))), 9246u, _wgslsmith_mod_u32(u_input.b, global0.x), _wgslsmith_mod_u32(u_input.b, global0.x)), vec4<u32>(~u_input.b, _wgslsmith_add_u32(57180u, global0.x), ~global0.x, 34780u) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 1u, 1u, 0u), vec4<u32>(global0.x, u_input.b, u_input.b, 1u), vec4<u32>(74995u, u_input.b, 4418u, global0.x))));
    var var_1 = 111f;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(1045f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1023f))), true)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2603f, 1258f, var_2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 729f, -605f))) - vec3<f32>(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 2404f)))));
    let var_4 = 0i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(52004u, 72840u, 43749u)) & vec3<u32>(74751u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(74851u, 20117u, 15833u), vec3<u32>(21526u, global0.x, u_input.b))), vec3<u32>(~_wgslsmith_clamp_u32(20981u, u_input.b, 47877u), 30513u, _wgslsmith_sub_u32(~44289u, ~u_input.b))));
    var var_1 = Struct_3(vec2<bool>(!arg_0.c, !(_wgslsmith_f_op_f32(arg_0.e.a - 548f) > _wgslsmith_f_op_f32(arg_0.b.a + 534f))), abs(vec4<u32>(4294967295u, 0u, u_input.b << (firstTrailingBit(var_0.x) % 32u), u_input.b)));
    var var_2 = Struct_2(142f);
    var_1 = Struct_3(select(!vec2<bool>(!arg_0.c, any(arg_0.d)), arg_0.d, arg_0.a > -326f), vec4<u32>(1u, u_input.b, ~52661u, u_input.b << (var_0.x % 32u)));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(min(arg_0.a, 1917f)), Struct_1(_wgslsmith_f_op_f32(trunc(1769f))), true, select(vec2<bool>(arg_0.d.x, arg_0.b.a < -1248f), arg_0.d, !(var_1.a.x & arg_0.d.x)), func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.c, u_input.c), min(u_input.a, vec3<i32>(-44538i, u_input.a.x, -1i))), vec2<bool>(var_1.a.x, u_input.a.x <= (u_input.c << (var_1.b.x % 32u)))));
    return func_2(_wgslsmith_mod_vec3_i32(abs(u_input.a) | ~(-u_input.a), firstLeadingBit(vec3<i32>(-1i << (0u % 32u), u_input.a.x, -5136i))), !select(!arg_0.d, !vec2<bool>(false, var_3.d.x), arg_0.c | (arg_0.a > var_2.a)));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> vec2<i32> {
    var var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(-arg_1)))), func_2(~firstLeadingBit(u_input.a), !arg_0.ww), true, select(vec2<bool>(u_input.c <= 27106i, arg_0.x), !vec2<bool>(arg_0.x, arg_0.x), arg_0.x), Struct_1(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_1)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(344f, 1000f, -1074f) + vec3<f32>(-1000f, var_0.a, 2673f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, var_0.a))))) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a, 1000f))), _wgslsmith_div_f32(-165f, arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, -1599f, arg_0.x)) + _wgslsmith_div_f32(708f, var_0.a)))));
    var var_2 = Struct_3(select(select(!(!arg_0.yz), !select(vec2<bool>(true, false), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, false)), arg_0.wx), arg_0.xx, vec2<bool>(arg_0.x, arg_0.x)), ~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(24318u, global0.x, 0u, 51873u), vec4<u32>(1u, global0.x, global0.x, 1u)), vec4<u32>(global0.x, 4294967295u, 66884u, global0.x) | vec4<u32>(90225u, 1u, u_input.b, 23433u))));
    var var_3 = _wgslsmith_f_op_f32(var_1.x * var_1.x);
    var var_4 = Struct_4(-1055f, func_4(Struct_4(1818f, func_2(~vec3<i32>(u_input.c, -25401i, 7302i), var_2.a), arg_0.x, select(var_2.a, select(arg_0.zz, vec2<bool>(true, var_2.a.x), vec2<bool>(arg_0.x, false)), false), func_2(vec3<i32>(-5295i, u_input.c, u_input.c), select(vec2<bool>(true, var_2.a.x), vec2<bool>(false, var_2.a.x), true)))), !(!any(select(vec3<bool>(true, false, false), arg_0.xxz, arg_0.wwy))), !vec2<bool>(select(var_2.a.x, any(vec2<bool>(true, var_2.a.x)), u_input.a.x <= u_input.a.x), var_2.a.x), Struct_1(var_1.x));
    return -u_input.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(max(~(~u_input.b), ~u_input.b), u_input.b);
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(878f + _wgslsmith_f_op_f32(-1000f - -1070f)), 634f)), _wgslsmith_dot_vec3_u32(vec3<u32>(4715u, ~1u, 0u >> (1u % 32u)), firstTrailingBit(vec3<u32>(global0.x, 0u, 580u))) > ~26825u, vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(396f)) + -1330f) - -1528f)));
    var var_1 = ~4294967295u;
    let var_2 = -countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(u_input.a.zx), u_input.a.zx & u_input.a.yx), vec2<i32>(max(u_input.a.x, -18228i), 3984i)));
    var var_3 = _wgslsmith_div_vec2_i32(select(-vec2<i32>(~53017i, reverseBits(-24661i)), u_input.a.zx, var_0.c), func_1(!vec4<bool>(all(vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x)), true, select(var_0.d.x, var_0.c, var_0.d.x), true), -583f));
    var var_4 = var_0.e;
    let var_5 = -288f;
    let var_6 = func_1(select(vec4<bool>(u_input.c < -1135i, false, !(false && var_0.c), true & (var_0.d.x || var_0.c)), vec4<bool>(true, _wgslsmith_f_op_f32(var_4.a + var_5) < _wgslsmith_div_f32(var_4.a, -397f), var_0.c, any(select(var_0.d, vec2<bool>(true, var_0.d.x), false))), global0.x >= ~global0.x), -970f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global0.x), vec2<u32>(0u, 1u)), max(u_input.b, 18829u)), ~14349u), _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.b, 1u)) ^ (vec2<u32>(1u, global0.x) & vec2<u32>(11214u, global0.x)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(4294967295u, 0u))))), ~abs(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global0.x, 13702u, 13839u), vec4<u32>(global0.x, 1u, 4294967295u, global0.x)))), vec4<i32>(-29226i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, -2147483647i) | _wgslsmith_sub_i32(var_6.x, 0i), -12965i, u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(16714u, 4294967295u, 4294967295u), vec3<u32>(8178u, global0.x, global0.x)) % 32u)), -firstLeadingBit(-6028i), i32(-1i) * -(~var_6.x)), max(var_2, _wgslsmith_mod_i32(-var_2, _wgslsmith_sub_i32(min(2147483647i, -1i), countOneBits(68183i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-311f, var_5, -1445f, 117f) + vec4<f32>(var_5, var_0.b.a, 1242f, var_4.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, -1234f, var_5, var_0.b.a) - vec4<f32>(-741f, -680f, 723f, -1580f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_4.a, var_5, var_5, 2681f), vec4<f32>(var_5, 1666f, var_4.a, -761f))), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(585f, var_4.a, 505f, var_4.a), vec4<f32>(var_4.a, -3775f, 828f, var_5)) * vec4<f32>(748f, var_4.a, 574f, 146f)))));
}

