struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(-852f));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-576f))));
    var_0 = _wgslsmith_f_op_f32(289f * 1132f);
    var_0 = _wgslsmith_f_op_f32(-var_1);
    let var_2 = select(arg_3.a.d, !arg_1.d, select(false, select(!arg_3.a.c.x, true, all(arg_1.c.wx)), false));
    return vec2<bool>(true, !(select(!arg_1.d.x, true, !arg_1.c.x) | !all(arg_1.d)));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    global0 = 1000f;
    var var_0 = 16343u;
    var_0 = arg_3.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -2381f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, arg_0), vec2<f32>(159f, arg_0))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-376f, -1138f))))))));
    let var_2 = arg_2.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + 1882f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) - _wgslsmith_f_op_f32(ceil(622f)))), _wgslsmith_f_op_f32(round(419f)))));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)), vec2<bool>(all(select(func_3(vec3<f32>(-272f, -656f, 869f), Struct_1(u_input.c.x, 40229i, vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec3<u32>(4294967295u, 40796u, 1u)), vec4<i32>(u_input.e.x, u_input.e.x, -2147483647i, u_input.b), Struct_2(Struct_1(1i, 0i, vec4<bool>(true, true, false, false), vec2<bool>(false, true), u_input.d))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), false), Struct_2(Struct_1(1i, 1i, select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), vec2<bool>(true, any(vec4<bool>(false, true, false, false))), select(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), ~u_input.d, vec3<bool>(false, false, true)))), ~(u_input.d ^ vec3<u32>(1u ^ u_input.d.x, ~0u, abs(u_input.d.x)))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1598f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(754f)))))));
    var var_0 = Struct_1(i32(-1i) * -9136i, -8971i, vec4<bool>(select(false, true, true), false, true, true), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, false))), select((vec3<u32>(u_input.d.x, 1u, u_input.d.x) ^ u_input.d) & u_input.d, u_input.d, vec3<bool>(true, any(vec2<bool>(true, true)), select(true, all(vec4<bool>(true, true, false, false)), true))));
    var var_1 = func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -306f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -930f)), 500f), Struct_1(~select(_wgslsmith_clamp_i32(11589i, var_0.a, -8410i), -58247i, !var_0.d.x), select(abs(u_input.c.x ^ 16847i), -37461i, reverseBits(var_0.a) < -var_0.b), !select(select(vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x), var_0.c, vec4<bool>(false, var_0.d.x, false, var_0.d.x)), var_0.c, var_0.d.x), vec2<bool>(var_0.c.x, !var_0.c.x), reverseBits(var_0.e)), min(vec4<i32>(_wgslsmith_sub_i32(~(-11580i), var_0.a), -1i, -var_0.a, -firstLeadingBit(2147483647i)), vec4<i32>(0i, ~u_input.b << (max(var_0.e.x, 1u) % 32u), 2147483647i, min(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(4243i, var_0.a, -1i, -25602i))))), Struct_2(Struct_1(reverseBits(var_0.a), var_0.a, !vec4<bool>(true, var_0.c.x, true, false), vec2<bool>(true, var_0.c.x), var_0.e)));
    let var_2 = Struct_1(u_input.a.x, -(-23050i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10773u, 0u, u_input.d.x), vec4<u32>(var_0.e.x, 57833u, 1u, var_0.e.x)) % 32u)), select(vec4<bool>(select(select(false, true, var_0.d.x), var_1.x, !var_0.c.x), 0u > var_0.e.x, var_1.x, false), vec4<bool>(var_1.x, true, true, !(!var_1.x)), vec4<bool>(true, false, true, var_1.x | true)), var_0.d, vec3<u32>(max(abs(0u), 4294967295u), 6352u, var_0.e.x));
    return var_2;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = min(u_input.e, vec4<i32>(~_wgslsmith_mod_i32(1i, arg_2.a.b ^ 30713i), ~(-24848i), 31828i, ((arg_1.a.b | u_input.e.x) ^ (arg_2.a.b >> (1u % 32u))) >> ((~arg_1.a.e.x | ~62083u) % 32u)));
    var var_1 = Struct_1(_wgslsmith_mult_i32(u_input.c.x, abs(var_0.x)), -2147483647i, vec4<bool>(false, any(!arg_1.a.c.wyx), arg_2.a.d.x, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 529f, arg_0.x)), func_2(), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, -2147483647i, -2147483647i, -58550i), u_input.e), Struct_2(Struct_1(-10044i, -2147483647i, arg_2.a.c, arg_1.a.c.xx, vec3<u32>(u_input.d.x, arg_2.a.e.x, 5824u)))).x), vec2<bool>(false, (43890u == _wgslsmith_mult_u32(24706u, arg_2.a.e.x)) & false), vec3<u32>(_wgslsmith_add_u32(1u << (firstLeadingBit(u_input.d.x) % 32u), u_input.d.x), ~func_2().e.x, 0u));
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    let var_0 = Struct_1(u_input.b, arg_1.a.b, func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_2)) - _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1000f, 184f, 1000f) * arg_2))), Struct_2(Struct_1(u_input.b, firstLeadingBit(7430i), vec4<bool>(true, true, arg_0.a.c.x, false), !arg_1.a.c.ww, _wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(arg_0.a.e.x, 6810u, 22939u)))), arg_1).c, !vec2<bool>(arg_1.a.d.x, true), vec3<u32>(1u, ~(~arg_1.a.e.x), ~19317u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.x, -131f)), 771f))) * arg_2.x));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1407f))))));
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x), vec2<bool>(!var_0.c.x, !arg_0.a.d.x), Struct_2(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) * _wgslsmith_f_op_vec4_f32(-arg_2)), arg_1, arg_0)), vec3<u32>(~26113u, arg_3, ~(~arg_0.a.e.x & 29555u))));
    return Struct_2(var_0);
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_6(Struct_2(Struct_1(~u_input.b, 2147483647i, vec4<bool>(true, true, true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), ~u_input.d << ((u_input.d | vec3<u32>(u_input.d.x, 4170u, u_input.d.x)) % vec3<u32>(32u)))), Struct_2(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(159f, -272f, -127f, 830f) + vec4<f32>(-794f, -366f, 1837f, 276f))), Struct_2(Struct_1(20719i, u_input.b, vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), Struct_2(func_2()))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, _wgslsmith_f_op_f32(floor(1281f)), _wgslsmith_f_op_f32(-679f * 310f), 304f)), vec4<f32>(1f, -170f, 2304f, _wgslsmith_f_op_f32(f32(-1f) * -102f)))), u_input.d.x);
    var_0 = func_6(Struct_2(func_2()), func_6(func_6(Struct_2(Struct_1(0i, -7483i, vec4<bool>(var_0.a.d.x, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x), vec2<bool>(false, false), vec3<u32>(18816u, 22931u, 38951u))), Struct_2(Struct_1(1i, u_input.e.x, var_0.a.c, vec2<bool>(var_0.a.c.x, false), u_input.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(568f, 1372f, -455f, 782f), vec4<f32>(569f, 1684f, 342f, 119f))) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_mod_u32(firstLeadingBit(u_input.d.x), 2272u)), func_6(func_6(func_6(Struct_2(Struct_1(arg_0, 30463i, vec4<bool>(false, var_0.a.d.x, var_0.a.c.x, true), var_0.a.c.yx, var_0.a.e)), Struct_2(Struct_1(-18542i, arg_0, vec4<bool>(false, false, var_0.a.c.x, var_0.a.d.x), vec2<bool>(true, true), vec3<u32>(u_input.d.x, 92794u, u_input.d.x))), vec4<f32>(642f, 525f, 1000f, 380f), var_0.a.e.x), func_6(Struct_2(var_0.a), Struct_2(var_0.a), vec4<f32>(980f, -754f, -724f, -435f), u_input.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-987f, -733f, 155f, -1000f) * vec4<f32>(-1154f, -456f, 844f, -1558f)), 1u), Struct_2(var_0.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -985f, 1000f, 115f))))), ~(~96500u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1668f, -584f, 136f, -474f) + vec4<f32>(1717f, 485f, 2419f, -1384f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, -1002f, -1215f, 1577f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-218f, 746f, 789f, 1318f))))), reverseBits(var_0.a.e.x) >> (~abs(var_0.a.e.x) % 32u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(141f, 1459f, -538f, -1000f), vec4<f32>(-245f, 232f, 654f, 2212f), var_0.a.c)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(829f, 610f, 525f, 1000f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1753f, 263f, -236f, 671f)))))))), 46566u);
    let var_1 = Struct_1(~(-2147483647i), u_input.c.x, var_0.a.c, vec2<bool>(true, !(!(arg_0 >= 2147483647i))), var_0.a.e);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(851f)) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(478f, -343f), _wgslsmith_f_op_f32(-1834f * -1720f), var_1.d.x || var_0.a.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -219f), 1f))));
    var_0 = Struct_2(Struct_1(25747i, 1i, func_2().c, vec2<bool>(any(!var_0.a.c.zyz), func_2().d.x), ~vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), func_6(Struct_2(Struct_1(-70093i, var_0.a.b, vec4<bool>(false, false, var_1.d.x, var_1.c.x), vec2<bool>(var_0.a.c.x, false), var_0.a.e)), Struct_2(var_1), vec4<f32>(858f, -272f, -1509f, 124f), var_1.e.x).a.e.x, firstTrailingBit(4294967295u))));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-140f * -1266f))))), _wgslsmith_f_op_f32(min(124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f * -732f)))), !all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(select(u_input.e.x, 41210i, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(u_input.b)), -947f)), true)) + 663f)));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2383f, -438f))), !func_6(Struct_2(Struct_1(u_input.e.x, 0i, vec4<bool>(true, true, true, false), vec2<bool>(true, true), u_input.d)), Struct_2(Struct_1(u_input.a.x, 1i, vec4<bool>(false, true, true, true), vec2<bool>(true, true), vec3<u32>(u_input.d.x, 49784u, 106312u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1947f, -629f, -1323f, -1105f) + vec4<f32>(-478f, 891f, -1424f, -331f)), 1u).a.d, Struct_2(Struct_1(1i, u_input.a.x, vec4<bool>(false, true, true, true), vec2<bool>(false, false), min(u_input.d, vec3<u32>(1458u, 1u, u_input.d.x)))), ~vec3<u32>(u_input.d.x, u_input.d.x, 26438u) ^ _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(4294967295u, 4294967295u, u_input.d.x)), _wgslsmith_mod_vec3_u32(u_input.d, u_input.d))))));
    var var_0 = Struct_1(abs(_wgslsmith_add_i32(u_input.a.x, func_2().a) & (u_input.b ^ select(-2147483647i, u_input.b, false))), -64331i, !(!func_6(Struct_2(Struct_1(1i, u_input.b, vec4<bool>(false, true, false, true), vec2<bool>(true, true), u_input.d)), func_6(Struct_2(Struct_1(u_input.c.x, 27108i, vec4<bool>(false, true, true, false), vec2<bool>(true, false), u_input.d)), Struct_2(Struct_1(-2147483647i, u_input.e.x, vec4<bool>(true, true, false, true), vec2<bool>(true, false), u_input.d)), vec4<f32>(220f, -2281f, -765f, -648f), 0u), vec4<f32>(513f, 1242f, 845f, 612f), u_input.d.x).a.c), !vec2<bool>(~u_input.d.x <= 79273u, func_6(Struct_2(Struct_1(u_input.e.x, 2147483647i, vec4<bool>(true, false, false, true), vec2<bool>(true, true), u_input.d)), Struct_2(Struct_1(2147483647i, u_input.c.x, vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1949f, -1634f, 741f, 1157f)), ~63996u).a.c.x), func_2().e);
    let var_1 = ~select(vec4<u32>(~12351u, u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, 1u), func_5(vec4<f32>(1000f, 1400f, 615f, -568f), Struct_2(Struct_1(u_input.e.x, -2147483647i, var_0.c, vec2<bool>(var_0.c.x, true), vec3<u32>(27169u, u_input.d.x, var_0.e.x))), Struct_2(Struct_1(u_input.c.x, 0i, var_0.c, vec2<bool>(true, var_0.c.x), vec3<u32>(u_input.d.x, 1u, u_input.d.x)))).e.x) >> (max(reverseBits(vec4<u32>(0u, 4294967295u, u_input.d.x, u_input.d.x)), vec4<u32>(51403u, var_0.e.x, u_input.d.x, var_0.e.x) | vec4<u32>(27736u, 1u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u)), vec4<u32>(140993u << (_wgslsmith_sub_u32(var_0.e.x, var_0.e.x) % 32u), func_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(365f, -357f, -1000f, 445f))), Struct_2(Struct_1(u_input.a.x, 1i, vec4<bool>(var_0.d.x, var_0.d.x, var_0.c.x, true), var_0.c.ww, u_input.d)), Struct_2(Struct_1(var_0.b, -1i, vec4<bool>(true, var_0.c.x, true, var_0.d.x), var_0.c.wy, u_input.d))).e.x, 0u, var_0.e.x), false);
    var_0 = Struct_1(1i, -var_0.a, func_2().c, func_6(func_6(Struct_2(func_6(Struct_2(Struct_1(39556i, var_0.a, var_0.c, vec2<bool>(var_0.d.x, var_0.d.x), u_input.d)), Struct_2(Struct_1(48773i, -6274i, vec4<bool>(var_0.c.x, false, true, var_0.c.x), vec2<bool>(var_0.c.x, false), var_1.xwz)), vec4<f32>(-1289f, -1084f, 439f, 499f), 711u).a), func_6(func_6(Struct_2(Struct_1(-30431i, var_0.b, vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x), vec2<bool>(false, true), vec3<u32>(0u, var_1.x, 45423u))), Struct_2(Struct_1(5073i, -29039i, var_0.c, vec2<bool>(true, var_0.d.x), var_0.e)), vec4<f32>(1216f, 368f, 427f, -2408f), 4294967295u), Struct_2(Struct_1(u_input.c.x, var_0.a, var_0.c, vec2<bool>(var_0.c.x, var_0.d.x), var_0.e)), vec4<f32>(-612f, 1297f, -1471f, -561f), u_input.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, -598f, 959f, 374f))), 13839u), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-15555i, -29076i), vec2<i32>(u_input.a.x, var_0.a)), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, 29921i, var_0.b)), !vec4<bool>(var_0.c.x, var_0.d.x, var_0.c.x, var_0.c.x), vec2<bool>(true, true), _wgslsmith_clamp_vec3_u32(var_0.e, vec3<u32>(var_0.e.x, 54507u, var_0.e.x), vec3<u32>(var_1.x, var_0.e.x, u_input.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, -1209f, -783f, -113f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-160f, -1184f, 1580f, 357f), vec4<f32>(-608f, -950f, -1858f, -207f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(339f, 1525f, -2666f, -823f), vec4<f32>(-484f, 725f, -953f, 731f), true)) + _wgslsmith_div_vec4_f32(vec4<f32>(1732f, 1084f, 1663f, -289f), vec4<f32>(1503f, 252f, -1467f, 1163f)))), _wgslsmith_clamp_u32(42018u, ~0u, ~(~43116u))).a.d, ~vec3<u32>(~(var_0.e.x & var_1.x), reverseBits(0u), var_1.x ^ var_1.x));
    var var_2 = Struct_2(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1, max(var_1, reverseBits(~vec4<u32>(0u, var_1.x, u_input.d.x, 58810u))), vec4<bool>(var_0.c.x, !var_0.c.x, true, true)), _wgslsmith_f_op_f32(-978f - _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(-1579f, 172f))));
}

