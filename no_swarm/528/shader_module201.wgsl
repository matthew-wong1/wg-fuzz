struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32, arg_3: i32) -> u32 {
    global0 = 43263i;
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1097f, -793f), arg_0.a.a.x)), vec2<f32>(arg_0.c.a.x, _wgslsmith_f_op_f32(1310f + _wgslsmith_f_op_f32(arg_0.c.a.x - arg_0.a.a.x)))), min(select(_wgslsmith_mult_vec2_u32(arg_0.a.b, arg_0.c.b), select(arg_0.c.b, vec2<u32>(arg_2, 4294967295u), vec2<bool>(true, true)), true) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 98662u), _wgslsmith_sub_vec2_u32(arg_0.a.b, vec2<u32>(1u, u_input.a))), ~vec2<u32>(1u, 22363u ^ arg_0.a.b.x)));
    let var_1 = arg_0;
    var var_2 = select(var_1.b, false, any(vec2<bool>(true, !var_1.b)));
    let var_3 = arg_0.c;
    return var_3.b.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_3(arg_0.c, false, arg_0.c, min(arg_0.d, arg_0.d));
    let var_1 = var_0.a.b.x;
    let var_2 = var_0;
    global0 = -1i;
    var var_3 = ~func_3(Struct_3(var_0.a, any(vec2<bool>(false, true)), var_0.c, select(var_2.d, var_2.d ^ arg_0.d, true)), firstLeadingBit(~vec4<i32>(var_0.d.x, var_2.d.x, -2147483647i, 54345i)), 0u, -62012i);
    return _wgslsmith_f_op_f32(max(var_0.c.a.x, _wgslsmith_f_op_f32(-var_2.c.a.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<f32>(297f, _wgslsmith_f_op_f32(func_2(arg_1, _wgslsmith_mult_vec2_u32(arg_1.c.b, ~arg_1.a.b))));
    var var_1 = _wgslsmith_mod_vec3_u32(~(~(~reverseBits(vec3<u32>(arg_1.a.b.x, arg_1.c.b.x, 59580u)))), ~(~abs(vec3<u32>(0u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 55367u, 1u))));
    let var_2 = arg_1;
    let var_3 = arg_1.a.b.x;
    var_1 = _wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(24665u, ~arg_1.a.b.x, var_1.x)), vec3<u32>(func_3(arg_1, min(-arg_3, _wgslsmith_clamp_vec4_i32(arg_3, vec4<i32>(arg_2, arg_3.x, arg_2, 0i), arg_3)), ~var_2.a.b.x, arg_1.d.x), 0u >> ((var_3 << (var_2.c.b.x % 32u)) % 32u), ~_wgslsmith_clamp_u32(1u, u_input.a, 1u) & var_1.x));
    return Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-313f)), _wgslsmith_f_op_f32(floor(var_2.c.a.x))))), ~var_2.d);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_1.a.x)), -1248f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-113f, -1284f))) * _wgslsmith_f_op_vec2_f32(arg_1.a - vec2<f32>(865f, arg_0)))), true)), ~arg_1.b >> (firstLeadingBit(~firstLeadingBit(vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)));
    var var_1 = any(vec2<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))))));
    var_1 = !select(select(true, true, select(false, false, true)), true, any(vec3<bool>(false, false, true))) & all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), vec2<bool>(true, true), true));
    let var_2 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(!any(vec4<bool>(true, false, false, false)), any(vec2<bool>(false, false))), true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 2596f) - arg_1.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-411f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, arg_0))));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f + 285f)), -346f), vec2<u32>(_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 57964u), vec4<u32>(u_input.a, u_input.a, 24270u, 48406u)) << (~1u % 32u)), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u)), ~vec4<u32>(u_input.a, 37878u, 4294967295u, 49355u))));
}

fn func_5(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_3(arg_0, true, Struct_2(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-815f, arg_0.a.x) - -817f)), vec2<u32>(99739u, _wgslsmith_div_u32(u_input.a, 69303u))), -abs(_wgslsmith_sub_vec2_i32(func_1(vec3<bool>(true, true, true), Struct_3(Struct_2(vec2<f32>(arg_0.a.x, -498f), arg_0.b), false, arg_0, vec2<i32>(2147483647i, -1i)), 26487i, vec4<i32>(239i, 12661i, 38793i, 1i)).b, vec2<i32>(25399i, 0i))));
    let var_1 = 8834i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -738f)), -1000f)), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_1, var_1), vec3<i32>(var_1, var_1, var_0.d.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.d.x, var_1, -35871i), vec3<i32>(-33731i, var_1, var_0.d.x), vec3<i32>(var_0.d.x, var_0.d.x, 75324i))), _wgslsmith_clamp_i32(abs(var_0.d.x), var_1, -33216i & var_1)), func_1(!vec3<bool>(true, var_0.b, false), Struct_3(var_0.a, var_0.b, var_0.c, vec2<i32>(var_0.d.x, var_0.d.x)), 1i, vec4<i32>(var_0.d.x, select(2147483647i, var_0.d.x, true), abs(1i), var_1)).b));
    var_2 = func_1(vec3<bool>(true, !var_0.b, true), Struct_3(func_4(var_0.a.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(548f, var_0.c.a.x), vec2<f32>(arg_0.a.x, var_2.a.x))), min(vec2<i32>(12773i, -2147483647i), var_2.b))), !(!all(vec3<bool>(var_0.b, var_0.b, false))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, 260f) * arg_0.a), ~min(var_0.c.b, vec2<u32>(var_0.c.b.x, u_input.a))), _wgslsmith_div_vec2_i32(func_1(vec3<bool>(true, var_0.b, false), Struct_3(arg_0, true, arg_0, vec2<i32>(var_1, var_1)), max(-1i, var_1), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.x, var_1, var_0.d.x, 2147483647i), vec4<i32>(var_0.d.x, var_1, var_0.d.x, -2147483647i))).b, select(var_0.d, vec2<i32>(var_2.b.x, var_2.b.x), vec2<bool>(false, false)))), 1i, vec4<i32>(-var_0.d.x, var_1, 1i, -15834i));
    let var_3 = abs(firstTrailingBit(var_1));
    return -517f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(126f));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(1261f + -820f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_f32(1163f + 965f), func_1(vec3<bool>(true, false, false), Struct_3(Struct_2(vec2<f32>(1756f, -411f), vec2<u32>(1u, 58580u)), true, Struct_2(vec2<f32>(-511f, 529f), vec2<u32>(1u, u_input.a)), vec2<i32>(-2147483647i, -44191i)), 38483i, vec4<i32>(-37004i, -1i, 0i, 2147483647i))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(vec2<f32>(-239f, -1823f), vec2<u32>(4294967295u, u_input.a)), false, Struct_2(vec2<f32>(1289f, 1270f), vec2<u32>(1u, 1u)), vec2<i32>(1i, 61002i)), vec2<u32>(4294967295u, 62187u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(2955f, -2797f, false))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1369f, func_1(vec3<bool>(true, true, true), Struct_3(Struct_2(vec2<f32>(-834f, -2179f), vec2<u32>(18723u, 0u)), true, Struct_2(vec2<f32>(403f, 195f), vec2<u32>(u_input.a, 1u)), vec2<i32>(-10289i, 37126i)), 2147483647i, vec4<i32>(3353i, -2147483647i, -2147483647i, 2147483647i)).a.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(Struct_2(vec2<f32>(-276f, -1140f), vec2<u32>(u_input.a, u_input.a)))), -756f)))));
    let var_2 = 1i;
    let var_3 = vec3<u32>(37797u, ~(~u_input.a), ~u_input.a);
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1748f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 2692f))), -1061f), -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), 271f, var_1.x), vec3<f32>(_wgslsmith_div_f32(-512f, var_1.x), 1035f, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_1.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - var_1.zz))), _wgslsmith_f_op_vec2_f32(-var_1.zx), !(!select(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(325f * 1000f), 327f) + func_4(_wgslsmith_f_op_f32(var_1.x + -859f), Struct_1(vec2<f32>(var_1.x, var_1.x), vec2<i32>(var_2, var_2))).a.x)), min(-countOneBits(countOneBits(vec3<i32>(-1i, var_2, var_2))), -select(vec3<i32>(var_2, var_2, var_2), vec3<i32>(var_2, var_2, var_2), true) & _wgslsmith_sub_vec3_i32(vec3<i32>(var_2, var_2, -2147483647i) & vec3<i32>(var_2, var_2, var_2), vec3<i32>(-2147483647i, 2147483647i, var_2))));
}

