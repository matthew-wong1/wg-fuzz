struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 27>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(false, true, select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1167f, -856f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1164f, -970f, -649f))) - vec3<f32>(_wgslsmith_f_op_f32(795f + -1000f), _wgslsmith_div_f32(813f, 451f), _wgslsmith_f_op_f32(-1066f + 533f))))), 6069i < (_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, -20178i, -32598i, -2147483647i), vec4<i32>(-13057i, 47728i, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x))) | -1i), vec2<u32>(max(_wgslsmith_add_u32(select(0u, u_input.b, true), 1u), ~(~5079u)), max(~u_input.b, 1u)), 71047i);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(_wgslsmith_add_i32(var_0.e, u_input.a.x) | u_input.a.x), -2147483647i, _wgslsmith_mod_i32(u_input.a.x, var_0.e), -(~_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(var_0.e, u_input.a.x)))), _wgslsmith_add_vec4_i32(select(reverseBits(vec4<i32>(var_0.e, u_input.a.x, 68525i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.e, var_0.e), -vec4<i32>(var_0.e, -2147483647i, -1i, u_input.a.x)), var_0.d.x >= ~2848u), _wgslsmith_mult_vec4_i32(select(select(vec4<i32>(u_input.a.x, -2147483647i, 0i, u_input.a.x), vec4<i32>(var_0.e, 0i, u_input.a.x, -5307i), vec4<bool>(var_0.a.a.c.x, false, var_0.c, var_0.a.a.c.x)), vec4<i32>(u_input.a.x, -52584i, u_input.a.x, -28753i), select(var_0.a.a.c, var_0.a.a.c, var_0.a.a.c)), -select(vec4<i32>(u_input.a.x, 1i, var_0.e, -22239i), vec4<i32>(u_input.a.x, var_0.e, u_input.a.x, 0i), vec4<bool>(var_0.a.a.a, false, true, var_0.c)))));
    var var_2 = var_0.b.zx;
    var var_3 = 1u;
    let var_4 = var_0.a.a;
    return _wgslsmith_f_op_f32(ceil(-477f));
}

fn func_2() -> bool {
    var var_0 = 29537i;
    var var_1 = _wgslsmith_sub_vec3_i32(-(u_input.a & firstLeadingBit(vec3<i32>(u_input.a.x, 36472i, 2147483647i))), vec3<i32>(u_input.a.x, ~(~(-1658i)), u_input.a.x)) ^ ~u_input.a;
    global0 = 1u;
    var_0 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1170f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(884f, 123f, true)), -1000f)))));
    return !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f - var_2.x) * _wgslsmith_f_op_f32(sign(var_2.x))) >= -444f) || false);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_3 {
    global0 = ~u_input.b;
    global0 = 60067u;
    var var_0 = (-(~countOneBits(-1i)) > ~u_input.a.x) | (arg_3.x || all(vec3<bool>(arg_2.b, arg_2.a.x, all(arg_3.zy))));
    let var_1 = u_input.a.x;
    let var_2 = vec4<bool>(!arg_0.a.b, any(vec4<bool>(false, arg_3.x && arg_0.a.b, arg_2.b, arg_0.a.c.x)) || true, func_2(), true);
    return Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(563f, -179f, 1000f), arg_2.c.yzy), _wgslsmith_f_op_vec3_f32(exp2(arg_2.c.zwx)))))), all(select(select(vec4<bool>(true, arg_3.x, arg_3.x, true), var_2, !arg_0.a.c), arg_2.a, vec4<bool>(!arg_2.a.x, arg_3.x, true, arg_0.a.a))), select(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(96056u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 27u)], 27u)]), vec2<u32>(0u, u_input.b)), ~vec2<u32>(u_input.b, 1u)), _wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], 34326u)), select(vec2<u32>(global1[_wgslsmith_index_u32(87012u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec2<u32>(u_input.b, u_input.b), arg_3.x), !arg_0.a.c.xz), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)] & 28584u, 27u)], u_input.b)), !(_wgslsmith_f_op_f32(sign(arg_0.a.d)) == _wgslsmith_f_op_f32(arg_0.a.d * arg_2.c.x))), var_1);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32) -> vec4<bool> {
    let var_0 = true;
    global0 = 42966u;
    let var_1 = false;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-368f)))), arg_1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x));
    global0 = _wgslsmith_clamp_u32(1486u, ~firstTrailingBit(_wgslsmith_clamp_u32(arg_2, 4294967295u, arg_2)) | select(global1[_wgslsmith_index_u32(~1u, 27u)], _wgslsmith_dot_vec2_u32(~arg_0.d, arg_0.d | arg_0.d), true & arg_0.c), u_input.b);
    return func_1(Struct_2(Struct_1(arg_0.c, true & (u_input.b > 1u), func_1(arg_0.a, _wgslsmith_f_op_vec2_f32(select(var_2.zx, arg_0.b.yx, arg_1.b)), arg_1, vec3<bool>(var_1, arg_0.a.a.b, var_1)).a.a.c, _wgslsmith_f_op_f32(f32(-1f) * -164f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), -687f), _wgslsmith_f_op_f32(sign(arg_1.c.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -977f), 117f))), Struct_4(!arg_0.a.a.c, var_1, vec4<f32>(var_2.x, arg_1.c.x, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-457f + arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - arg_0.a.a.d)))), select(!(!select(arg_1.a.zww, arg_0.a.a.c.yyy, arg_0.a.a.c.zzz)), select(func_1(arg_0.a, vec2<f32>(var_2.x, arg_1.c.x), arg_1, vec3<bool>(true, arg_1.b, var_1)).a.a.c.xxx, select(arg_0.a.a.c.xxw, !arg_0.a.a.c.yzz, vec3<bool>(false, arg_1.a.x, var_1)), func_1(func_1(Struct_2(Struct_1(arg_1.b, true, vec4<bool>(arg_0.c, false, false, true), 677f)), arg_0.b.zz, arg_1, arg_0.a.a.c.xww).a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-786f, 792f))), arg_1, arg_1.a.zwz).c), any(func_1(Struct_2(Struct_1(true, arg_1.b, arg_0.a.a.c, var_2.x)), _wgslsmith_f_op_vec2_f32(-arg_1.c.zy), Struct_4(vec4<bool>(false, arg_0.a.a.c.x, false, arg_0.a.a.a), var_0, vec4<f32>(-1697f, 2022f, -330f, 605f)), vec3<bool>(false, false, true)).a.a.c.wyx))).a.a.c;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_1(func_1(Struct_2(func_1(func_1(Struct_2(Struct_1(false, true, arg_0.c, arg_0.d)), vec2<f32>(arg_0.d, 1059f), Struct_4(vec4<bool>(false, arg_0.c.x, arg_0.a, arg_0.a), arg_0.c.x, vec4<f32>(arg_0.d, arg_0.d, 489f, 1590f)), arg_0.c.zww).a, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, 294f), vec2<f32>(arg_0.d, arg_0.d)), Struct_4(arg_0.c, arg_0.c.x, vec4<f32>(-926f, arg_0.d, arg_0.d, -1052f)), !vec3<bool>(arg_0.a, arg_0.c.x, arg_0.a)).a.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.d, arg_0.d))), vec2<f32>(arg_0.d, arg_0.d), vec2<bool>(true, arg_0.c.x))), Struct_4(!select(vec4<bool>(arg_0.c.x, true, arg_0.b, false), vec4<bool>(true, arg_0.b, arg_0.a, arg_0.b), arg_0.c), arg_0.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, arg_0.d, arg_0.d, arg_0.d) + vec4<f32>(arg_0.d, 1534f, 1345f, -1782f)))), arg_0.c.wyw).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.d - -214f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-354f)) - _wgslsmith_f_op_f32(-254f - arg_0.d)))), Struct_4(!select(select(vec4<bool>(true, arg_0.a, arg_0.b, arg_0.b), vec4<bool>(arg_0.a, arg_0.b, arg_0.a, true), arg_0.c), !arg_0.c, select(vec4<bool>(arg_0.a, true, false, arg_0.a), arg_0.c, false)), (u_input.a.x ^ select(u_input.a.x, u_input.a.x, true)) < -47746i, vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d + 226f))), 1411f, -579f)), func_4(func_1(func_1(func_1(Struct_2(Struct_1(false, true, arg_0.c, arg_0.d)), vec2<f32>(arg_0.d, arg_0.d), Struct_4(arg_0.c, arg_0.a, vec4<f32>(197f, 621f, arg_0.d, 440f)), vec3<bool>(true, true, arg_0.c.x)).a, vec2<f32>(1760f, arg_0.d), Struct_4(vec4<bool>(true, arg_0.c.x, false, false), true, vec4<f32>(777f, arg_0.d, -740f, arg_0.d)), !vec3<bool>(arg_0.b, arg_0.b, false)).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.d, arg_0.d)))), Struct_4(select(arg_0.c, vec4<bool>(arg_0.a, arg_0.a, true, true), arg_0.a), arg_0.a, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d, 434f, arg_0.d, 1453f), vec4<f32>(arg_0.d, arg_0.d, 1613f, -1090f))), arg_0.c.zyx), Struct_4(select(select(arg_0.c, vec4<bool>(false, true, arg_0.c.x, arg_0.a), arg_0.c), vec4<bool>(true, true, false, true), arg_0.a), arg_0.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, arg_0.d, arg_0.d, -1294f)), _wgslsmith_div_vec4_f32(vec4<f32>(1069f, arg_0.d, -154f, arg_0.d), vec4<f32>(521f, arg_0.d, arg_0.d, arg_0.d))))), u_input.b).xww).a;
    var var_1 = Struct_4(vec4<bool>(~max(u_input.a.x, 12949i) < 1i, all(vec3<bool>(select(var_0.a.c.x, false, false), arg_0.c.x, var_0.a.d >= 736f)), any(!select(vec2<bool>(true, arg_0.a), vec2<bool>(var_0.a.a, true), arg_0.b)), func_1(Struct_2(Struct_1(arg_0.c.x, false, var_0.a.c, var_0.a.d)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.d, 265f))), Struct_4(vec4<bool>(arg_0.b, var_0.a.a, arg_0.b, true), func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d, arg_0.d, 1190f, arg_0.d))), func_4(func_1(var_0, vec2<f32>(arg_0.d, -652f), Struct_4(var_0.a.c, var_0.a.c.x, vec4<f32>(var_0.a.d, arg_0.d, 277f, var_0.a.d)), arg_0.c.wzz), Struct_4(vec4<bool>(false, var_0.a.a, arg_0.a, false), false, vec4<f32>(var_0.a.d, var_0.a.d, var_0.a.d, arg_0.d)), firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32949u, 27u)], 27u)])).xxx).c), var_0.a.c.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))), arg_0.d, var_0.a.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.d))))));
    let var_2 = u_input.a.xx;
    let var_3 = vec2<bool>(all(vec3<bool>(any(vec2<bool>(false, false)), true, false)), all(vec2<bool>(var_0.a.b, var_1.b)));
    var_1 = Struct_4(!func_1(Struct_2(Struct_1(var_3.x, var_3.x, vec4<bool>(arg_0.c.x, true, var_1.b, var_1.b), -1397f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.xy + vec2<f32>(819f, var_1.c.x))), Struct_4(arg_0.c, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, var_0.a.d, -921f, arg_0.d))), func_4(Struct_3(Struct_2(var_0.a), vec3<f32>(-636f, arg_0.d, var_0.a.d), var_0.a.b, vec2<u32>(global1[_wgslsmith_index_u32(98939u, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)]), var_2.x), Struct_4(vec4<bool>(true, var_0.a.b, arg_0.c.x, true), true, vec4<f32>(807f, 154f, var_0.a.d, 648f)), _wgslsmith_mult_u32(41395u, 11320u)).xzy).a.a.c, arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c - var_1.c)))));
    return func_1(func_1(func_1(Struct_2(var_0.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-480f, 564f))), Struct_4(func_4(Struct_3(var_0, var_1.c.xzy, var_0.a.a, vec2<u32>(global1[_wgslsmith_index_u32(23536u, 27u)], 47749u), u_input.a.x), Struct_4(vec4<bool>(true, arg_0.b, var_3.x, arg_0.b), true, vec4<f32>(-1000f, var_0.a.d, arg_0.d, arg_0.d)), global1[_wgslsmith_index_u32(1u, 27u)]), arg_0.c.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1355f, 998f, var_0.a.d, 1444f), vec4<f32>(925f, -2047f, 2473f, 616f), vec4<bool>(var_0.a.c.x, true, var_0.a.c.x, false)))), !vec3<bool>(var_3.x, var_1.b, var_0.a.b)).a, var_1.c.wy, Struct_4(select(vec4<bool>(false, var_1.b, false, arg_0.b), select(var_0.a.c, var_1.a, true), func_1(Struct_2(var_0.a), var_1.c.ww, Struct_4(vec4<bool>(true, true, false, var_1.b), true, vec4<f32>(arg_0.d, 219f, -1564f, var_0.a.d)), vec3<bool>(true, true, var_1.b)).a.a.c), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, var_0.a.d, 249f, arg_0.d) + vec4<f32>(892f, arg_0.d, 1017f, -585f)))), !(!var_1.a.wzw)).a, vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.d)), _wgslsmith_f_op_f32(1244f + -1584f)), -1251f))), Struct_4(vec4<bool>(true, var_0.a.a, !var_0.a.a || var_0.a.c.x, true), any(var_0.a.c.xz), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-179f, arg_0.d, 385f, -688f) + var_1.c)), var_1.c)), func_4(func_1(Struct_2(arg_0), vec2<f32>(var_0.a.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_4(var_1.a, true, vec4<f32>(-438f, var_0.a.d, var_1.c.x, -383f)), func_1(var_0, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(480f, var_1.c.x))), Struct_4(vec4<bool>(false, var_3.x, false, false), var_1.b, var_1.c), var_0.a.c.zww).a.a.c.yxx), Struct_4(vec4<bool>(var_0.a.a, true, arg_0.a, all(vec4<bool>(var_0.a.b, var_3.x, true, false))), (global1[_wgslsmith_index_u32(u_input.b, 27u)] ^ u_input.b) > _wgslsmith_clamp_u32(9479u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15905u, 27u)], 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)]), vec4<f32>(_wgslsmith_f_op_f32(arg_0.d * -1525f), -603f, var_1.c.x, _wgslsmith_div_f32(var_1.c.x, -702f))), u_input.b).wxy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(true, u_input.a.x < (i32(-1i) * -16692i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), func_4(func_1(Struct_2(Struct_1(true, false, vec4<bool>(true, true, false, true), -1689f)), vec2<f32>(1000f, -720f), Struct_4(vec4<bool>(true, false, true, false), true, vec4<f32>(789f, -702f, 475f, 322f)), vec3<bool>(false, false, true)), Struct_4(vec4<bool>(false, false, true, false), true, vec4<f32>(-2276f, -212f, -1705f, 206f)), ~55136u)), _wgslsmith_f_op_f32(-1f)));
    let var_1 = Struct_4(!func_1(Struct_2(var_0.a.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -808f), var_0.b.xy)), _wgslsmith_f_op_vec2_f32(-var_0.b.yy)), Struct_4(select(var_0.a.a.c, var_0.a.a.c, vec4<bool>(true, true, true, false)), any(var_0.a.a.c.zwx), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.d, 447f, var_0.a.a.d, 1173f) - vec4<f32>(var_0.a.a.d, 477f, var_0.a.a.d, 1434f))), !(!var_0.a.a.c.yyy)).a.a.c, any(vec2<bool>(var_0.c, var_0.a.a.a)), vec4<f32>(var_0.a.a.d, func_5(Struct_1(any(var_0.a.a.c.zz), -9918i <= var_0.e, var_0.a.a.c, -767f)).a.a.d, _wgslsmith_f_op_f32(f32(-1f) * -2107f), _wgslsmith_f_op_f32(func_3())));
    var var_2 = ~vec2<u32>(~(~_wgslsmith_mod_u32(var_0.d.x, var_0.d.x)), 31659u);
    global1 = array<u32, 27>();
    let var_3 = var_0.a.a.d;
    var var_4 = Struct_4(!var_0.a.a.c, any(vec2<bool>(true, func_4(func_1(Struct_2(var_0.a.a), vec2<f32>(-323f, 1539f), Struct_4(var_1.a, true, var_1.c), vec3<bool>(var_1.a.x, false, var_0.c)), var_1, var_2.x ^ global1[_wgslsmith_index_u32(u_input.b, 27u)]).x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, 2012f, var_0.b.x, -1064f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, 1311f, var_1.c.x, 925f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.d, var_0.a.a.d, 1042f, var_1.c.x) + _wgslsmith_f_op_vec4_f32(-var_1.c))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_0.a.a.d, 1527f, var_0.b.x), _wgslsmith_f_op_vec4_f32(max(var_1.c, vec4<f32>(var_1.c.x, -110f, 521f, 599f))), !var_1.a)))));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(reverseBits(var_0.e), 1i));
}

