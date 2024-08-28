struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1.a.b;
    return arg_1.a.b;
}

fn func_3() -> u32 {
    var var_0 = 1266u;
    let var_1 = vec4<bool>(true, -2334i != _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c.x, u_input.a.x), max(u_input.a.x, -5588i)), ~(2147483647i >> (0u % 32u))), any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, true, any(vec2<bool>(false, true))))), all(vec4<bool>(-58326i > (9721i >> (u_input.b.x % 32u)), abs(u_input.d) > -1i, true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))))));
    let var_2 = func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1938f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(731f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f * 1006f)), 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, -387f, -1000f, 1769f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2012f, 458f, 153f, -552f), vec4<f32>(-769f, 1000f, 348f, 634f), vec4<bool>(var_1.x, var_1.x, var_1.x, false)))))), Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1298f, -124f)) - _wgslsmith_f_op_f32(443f - 788f)), Struct_1(~4294967295u, ~u_input.c.x, ~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-126f))), u_input.b), ~abs(_wgslsmith_mult_u32(12727u, u_input.e.x))));
    let var_3 = Struct_2(~u_input.c.zy | vec2<i32>(u_input.a.x, abs(-var_2.c)), func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -854f), -803f, _wgslsmith_f_op_f32(trunc(-829f)), 430f), Struct_4(Struct_3(_wgslsmith_f_op_f32(sign(-1783f)), var_2, -1615f, firstLeadingBit(u_input.b)), u_input.e.x)), select(_wgslsmith_div_u32(42467u, var_2.a), ~u_input.e.x, all(var_1.xw)), ~firstLeadingBit(u_input.b), ~(~(~(~u_input.b))));
    let var_4 = -1i >> (max(var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 3541u, u_input.e.x, var_3.b.a) << (vec4<u32>(52769u, var_3.d.x, var_2.a, 89979u) % vec4<u32>(32u)), select(vec4<u32>(8057u, var_2.a, 1u, 4294967295u), vec4<u32>(var_2.a, u_input.b.x, var_2.a, var_2.a), var_1.x)) | ~u_input.b.x) % 32u);
    return _wgslsmith_dot_vec2_u32(var_3.e.zy, countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.c, _wgslsmith_div_u32(var_2.a, 4294967295u)), abs(u_input.e))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_4(Struct_3(1364f, arg_0.b, _wgslsmith_f_op_f32(-1000f * 1701f), arg_0.e), 0u);
    var var_2 = 4294967295u;
    var var_3 = var_1.a.a;
    let var_4 = vec4<bool>(!arg_1.x, !arg_1.x, !any(!(!vec2<bool>(false, arg_1.x))), !arg_1.x);
    return var_1.a;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3 + arg_1.a), _wgslsmith_f_op_f32(-755f + arg_3), _wgslsmith_f_op_f32(-arg_3))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -140f, arg_3)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c, arg_1.c, 391f), vec3<f32>(arg_3, -1871f, arg_1.a)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -525f, arg_1.c))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1239f, 476f, 1495f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, var_0.x, -569f) - vec3<f32>(1480f, arg_3, var_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(527f, -456f, 658f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2984f, -1000f, arg_1.a) * vec3<f32>(-917f, 265f, -1712f))))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(func_4(Struct_2(vec2<i32>(10809i, 71508i), arg_1.b, 0u, vec3<u32>(arg_2, 15907u, 0u), u_input.b), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true)).a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-584f))))), _wgslsmith_f_op_f32(floor(arg_1.a))));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)), _wgslsmith_f_op_f32(sign(1533f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(exp2(arg_3))))));
    var_0 = var_1;
    let var_2 = Struct_2(vec2<i32>(-_wgslsmith_mult_i32(arg_1.b.b, 0i) | arg_1.b.b, 5780i), Struct_1(u_input.e.x, -58924i, _wgslsmith_clamp_i32(u_input.c.x & arg_1.b.b, -14715i ^ arg_0, 33888i) ^ -arg_1.b.b), abs(u_input.e.x), ~select(~func_4(Struct_2(vec2<i32>(arg_1.b.c, u_input.a.x), Struct_1(u_input.e.x, u_input.a.x, 37328i), arg_2, u_input.b, vec3<u32>(58010u, 20271u, arg_1.d.x)), vec4<bool>(false, false, true, true)).d, countOneBits(vec3<u32>(arg_2, 4294967295u, 31858u)), false), vec3<u32>(1u, 48231u, firstTrailingBit(_wgslsmith_sub_u32(arg_1.d.x, arg_1.b.a))));
    return arg_1;
}

fn func_1() -> i32 {
    var var_0 = Struct_4(func_5(_wgslsmith_div_i32(max(select(0i, u_input.c.x, false), _wgslsmith_sub_i32(u_input.a.x, 2147483647i)), ~reverseBits(u_input.a.x)), func_4(Struct_2(~u_input.a.zy, func_2(vec4<f32>(179f, -743f, -1475f, 1252f), Struct_4(Struct_3(-655f, Struct_1(u_input.e.x, 62819i, u_input.a.x), 312f, vec3<u32>(7342u, u_input.e.x, 1u)), 24227u)), func_3(), _wgslsmith_mod_vec3_u32(u_input.b, u_input.b), u_input.b), vec4<bool>(true, false, false, true)), 6296u, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2014f)))), u_input.b.x);
    var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(sign(var_0.a.c))), var_0.a.b, var_0.a.c, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(17233u, u_input.b.x, var_0.a.b.a), var_0.a.d, var_0.a.d))), func_5(0i, var_0.a, ~11749u, 405f).b.a);
    let var_1 = max(firstTrailingBit(abs(2147483647i)), _wgslsmith_dot_vec3_i32(u_input.c, firstTrailingBit(u_input.a.xyx << (var_0.a.d % vec3<u32>(32u))))) >> (func_5(5975i, func_4(Struct_2(u_input.a.wz, Struct_1(u_input.e.x, 50875i, u_input.a.x), u_input.b.x | 11768u, ~var_0.a.d, var_0.a.d), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 1u != var_0.b)), u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a))).b.a % 32u);
    var var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), 475f, var_2.a) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a - var_0.a.c) * _wgslsmith_f_op_f32(func_4(Struct_2(u_input.c.zy, var_0.a.b, 55271u, vec3<u32>(var_2.b.a, u_input.e.x, var_0.a.b.a), vec3<u32>(u_input.e.x, var_2.b.a, 0u)), vec4<bool>(true, true, false, true)).a * _wgslsmith_f_op_f32(abs(-2194f)))), 734f, -853f, var_2.a));
    return i32(-1i) * -1196i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, any(vec2<bool>(true, false)), 2147483647i < u_input.c.x)), select(vec4<bool>(any(vec3<bool>(true, false, true)), true, true, any(vec4<bool>(true, false, false, true))), vec4<bool>(any(vec2<bool>(false, false)), true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true)), select(vec4<bool>(false, true, any(vec4<bool>(false, false, false, false)), u_input.b.x > u_input.b.x), vec4<bool>(true, true, true, true), true));
    let var_1 = Struct_1(~(~_wgslsmith_add_u32(~0u, max(15642u, u_input.e.x))), 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(1i, 2053i)), u_input.c.zz), min(u_input.c.yy << (vec2<u32>(u_input.b.x, 41864u) % vec2<u32>(32u)), ~(vec2<i32>(0i, u_input.a.x) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))))));
    var var_2 = func_1();
    var_2 = ~func_4(Struct_2(u_input.a.ww, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1917f, -1046f, -1000f, 1709f)), Struct_4(Struct_3(-228f, Struct_1(27581u, var_1.b, 12143i), 609f, vec3<u32>(var_1.a, var_1.a, var_1.a)), u_input.e.x)), var_1.a, u_input.b ^ ~vec3<u32>(23559u, 1u, u_input.e.x), func_4(Struct_2(u_input.c.zy, Struct_1(var_1.a, var_1.b, var_1.c), 34815u, u_input.b, vec3<u32>(10640u, 22054u, 55890u)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true), var_0)).d), !vec4<bool>(all(vec2<bool>(true, true)), var_0.x, false, true)).b.b;
    var_2 = _wgslsmith_clamp_i32(var_1.c, func_5(_wgslsmith_dot_vec4_i32(~(u_input.a >> (vec4<u32>(0u, u_input.e.x, 23731u, 24537u) % vec4<u32>(32u))), vec4<i32>(reverseBits(var_1.c), 1i, _wgslsmith_dot_vec2_i32(u_input.a.yw, u_input.c.xy), 1i)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1487f + 715f) - _wgslsmith_f_op_f32(select(-1298f, 113f, var_0.x))), func_5(var_1.c, func_5(u_input.d, Struct_3(1000f, Struct_1(15188u, -1641i, var_1.c), 1920f, u_input.b), u_input.e.x, 101f), 1u, _wgslsmith_div_f32(-1240f, 570f)).b, 1f, ~vec3<u32>(u_input.e.x, var_1.a, 1u)), 35665u, 642f).b.b, 2047i);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, u_input.a, func_3());
}

