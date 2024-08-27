struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(arg_1.x, u_input.a)) ^ _wgslsmith_mult_vec2_u32(arg_1.yy, vec2<u32>(u_input.a, 1u)), ~vec2<u32>(u_input.a, 47517u)) & (vec2<u32>(4294967295u, u_input.a) & _wgslsmith_mult_vec2_u32(arg_1.wx, vec2<u32>(arg_1.x, u_input.a))), _wgslsmith_div_f32(arg_0.x, arg_0.x), -(-(~2147483647i) << (abs(_wgslsmith_mod_u32(7908u, 1u)) % 32u)), -657f);
    let var_1 = Struct_5(~_wgslsmith_sub_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, var_0.c), vec3<i32>(var_0.c, var_0.c, var_0.c)), _wgslsmith_add_vec3_i32(vec3<i32>(-21195i, -11638i, 319i), vec3<i32>(0i, var_0.c, var_0.c))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c, var_0.c, var_0.c), vec3<i32>(4153i, var_0.c, -46540i), vec3<i32>(var_0.c, var_0.c, 0i))));
    let var_2 = 1u >= var_0.a.x;
    global1 = arg_1.x;
    var var_3 = vec3<bool>(false, all(!vec2<bool>(var_0.a.x < u_input.a, select(var_2, var_2, false))), false);
    return Struct_2(Struct_1(-(~vec3<i32>(-18816i, var_1.a.x, -13692i) ^ vec3<i32>(var_1.a.x, -1i, var_1.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)), true & (firstTrailingBit(3426u) < u_input.a))), 0i);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> i32 {
    global0 = arg_2.b;
    global0 = arg_2.d;
    global0 = 1005f;
    var var_0 = Struct_5(vec3<i32>(firstTrailingBit(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(173f, -686f, arg_3.b)), vec4<u32>(u_input.a, 4294967295u, arg_3.a.x, 58247u)).c), arg_3.c, 7465i));
    global1 = ~_wgslsmith_dot_vec2_u32(select(arg_2.a, arg_3.a, any(vec4<bool>(false, true, true, true))), arg_2.a);
    return max(_wgslsmith_dot_vec2_i32(vec2<i32>(max(_wgslsmith_mod_i32(arg_3.c, 919i), arg_2.c), ~(arg_2.c ^ var_0.a.x)), (vec2<i32>(-36859i, arg_2.c) | -var_0.a.yx) | vec2<i32>(arg_2.c, -2147483647i)), ~21488i);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(740f, 130f, 592f)), vec3<f32>(-1075f, -1000f, -719f), vec3<bool>(true, true, true)))))), ~vec4<u32>(u_input.a, 0u, 1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, u_input.a, 77652u)), select(u_input.a, 4294967295u, true))));
    var var_1 = Struct_1(_wgslsmith_add_vec3_i32(var_0.a.a, vec3<i32>(func_3(vec2<f32>(976f, var_0.b), u_input.a, Struct_4(vec2<u32>(0u, 3621u), -133f, var_0.a.a.x, 780f), Struct_4(vec2<u32>(arg_0, 4294967295u), 1040f, var_0.a.a.x, 346f)) ^ var_0.a.a.x, max(_wgslsmith_dot_vec3_i32(var_0.a.a, vec3<i32>(37620i, 2147483647i, var_0.a.a.x)), -1i), -27939i)));
    var var_2 = var_0.b;
    var var_3 = vec4<i32>(~(_wgslsmith_add_i32(~var_0.c, -4334i) >> (u_input.a % 32u)), max(var_1.a.x, var_0.c), min(-(~2147483647i), ~(-2147483647i)), 49743i);
    var var_4 = select(vec3<bool>(true, all(vec2<bool>(all(vec3<bool>(true, true, false)), -904f <= var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1419f)) - 821f) < var_0.b), select(vec3<bool>(false, _wgslsmith_f_op_f32(floor(-1376f)) != var_0.b, all(vec2<bool>(true, true))), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(step(858f, -726f)) == _wgslsmith_f_op_f32(round(var_0.b))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), !all(vec3<bool>(false, false, true)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))) | (var_3.x <= ~2147483647i)));
    return !select(vec3<bool>(!(var_4.x | true), !any(var_4.zx), var_4.x), !vec3<bool>(true, all(vec3<bool>(false, false, var_4.x)), true), select(!select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(var_4.x, true, false), var_4.x), !vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(true, var_4.x, var_4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1625f;
    global1 = u_input.a;
    let var_0 = select(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), false), !func_1(u_input.a), vec3<bool>(true, true, true)), select(func_1(min(u_input.a, 5749u) << (u_input.a % 32u)), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), !select(func_1(u_input.a), func_1(u_input.a), all(vec3<bool>(false, true, true)))), func_1(~u_input.a));
    let var_1 = -7258i;
    var var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(492f)), _wgslsmith_f_op_f32(f32(-1f) * -756f)) - 749f), _wgslsmith_f_op_f32(628f * -657f), -131f), min(abs(vec4<u32>(4294967295u, 0u, u_input.a, 0u)) >> (~(~vec4<u32>(38514u, u_input.a, 6424u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~u_input.a, _wgslsmith_add_u32(u_input.a, 0u), 7581u), vec4<u32>(~4294967295u, ~u_input.a, ~58102u, firstTrailingBit(1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 19807u, 4294967295u) | vec4<u32>(u_input.a, 1u, 48406u, u_input.a), ~vec4<u32>(1u, u_input.a, 1u, 4294967295u))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1399f, 268f) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f)), -334f), _wgslsmith_add_vec2_i32(var_2.a.zx, -(firstLeadingBit(var_2.a.xy) & vec2<i32>(-16156i, 2147483647i))), -firstLeadingBit(vec2<i32>(var_1, 2147483647i)) << (_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), ~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) % vec2<u32>(32u)));
}

