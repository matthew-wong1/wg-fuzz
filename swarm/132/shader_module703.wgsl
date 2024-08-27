struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(0u, 0u, 29728u, 0u, 0u, 4294967295u, 13595u, 72457u, 38485u, 1u, 446u, 4294967295u, 0u, 72556u, 19186u, 50451u, 0u, 76630u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(~_wgslsmith_mod_i32(-16348i, u_input.b.x)), _wgslsmith_mod_i32(-(u_input.b.x & 1i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-44870i, u_input.b.x, 2147483647i, 11947i), vec4<i32>(u_input.b.x, arg_0, 0i, u_input.b.x)), vec4<i32>(1i, u_input.b.x, u_input.b.x, -1i))), -(~90335i), 10076i), min(vec4<i32>(-(~(-20529i)), ~arg_0, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, arg_0), -vec2<i32>(-2147483647i, u_input.b.x)), ~u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(1833i, -1i, ~16032i, countOneBits(arg_0)), vec4<i32>(abs(arg_0), u_input.b.x, select(u_input.b.x, u_input.b.x, false), 0i & arg_0))));
    var var_1 = arg_1.b;
    var var_2 = arg_1;
    var var_3 = _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, 0i, var_0.x, u_input.b.x), -vec4<i32>(var_0.x, 2147483647i, -58874i, -2147483647i)), vec4<i32>(-17650i, 1i, _wgslsmith_sub_i32(u_input.b.x, 1i >> (u_input.a.x % 32u)), firstTrailingBit(~0i))) | abs(_wgslsmith_dot_vec3_i32(~(~var_0.xyx), vec3<i32>(abs(u_input.b.x), -35912i, u_input.b.x & var_0.x)));
    var var_4 = u_input.a.ww;
    return var_1.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> bool {
    global0 = array<u32, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d.a, _wgslsmith_f_op_f32(floor(arg_0.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * -889f), -212f))))), select(arg_2.a, !(!(!arg_2.d.c.zy)), any(arg_2.d.c.wzy)), !(!(!vec4<bool>(arg_1, arg_2.a.x, arg_2.a.x, true))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(404f, arg_0.x), -464f) + arg_2.c)), var_0.c.wz, vec4<bool>(all(!var_0.c.xyy), !var_0.c.x, any(select(!arg_2.d.c, vec4<bool>(true, arg_1, arg_2.a.x, arg_1), !arg_2.d.c)), false));
    global0 = array<u32, 18>();
    var var_2 = Struct_2(!arg_2.d.b, _wgslsmith_f_op_vec2_f32(arg_0.zy - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(718f, var_1.a))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0.zx - arg_0.zz), _wgslsmith_f_op_vec2_f32(-arg_0.yz))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a, -1354f), arg_0.x)))), Struct_1(1316f, select(select(!arg_2.d.b, vec2<bool>(var_1.c.x, arg_2.d.b.x), !var_1.b), vec2<bool>(true, false), !var_0.b), select(var_1.c, var_1.c, var_1.c)));
    return any(vec4<bool>(all(!vec2<bool>(false, arg_2.d.c.x)), var_1.c.x & select(true, true, !var_1.b.x), any(vec3<bool>(var_0.c.x, true, var_1.a <= var_2.b.x)), true));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.b.x, ~max(-2147483647i, 2147483647i), ~_wgslsmith_sub_i32(1i, u_input.b.x));
    var var_1 = Struct_1(arg_2, vec2<bool>(all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false)), !(u_input.b.x < max(var_0.x, 2147483647i))), select(vec4<bool>(true, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1389f, -463f)), func_3(2147483647i, Struct_1(-2486f, vec2<bool>(true, false), vec4<bool>(false, true, true, true))), Struct_2(vec2<bool>(true, true), vec2<f32>(arg_2, 1941f), 1104f, Struct_1(arg_2, vec2<bool>(false, true), vec4<bool>(false, true, true, true)))), true, true), vec4<bool>(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-531f, -1027f, -152f)), true, Struct_2(vec2<bool>(true, true), vec2<f32>(arg_2, arg_2), -523f, Struct_1(358f, vec2<bool>(false, true), vec4<bool>(true, false, true, true)))), true, true, true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(arg_2 + arg_2) >= _wgslsmith_f_op_f32(arg_2 - 419f))));
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-53262i, ~(-min(var_0.x, -17307i)), _wgslsmith_mod_i32(1i, var_0.x)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, -2563i), 1i, -2147483647i), vec3<i32>(0i, _wgslsmith_mult_i32(40157i, var_0.x), -u_input.b.x)) ^ ~min(abs(vec3<i32>(var_0.x, -58530i, u_input.b.x)), -vec3<i32>(-24010i, 1i, 37211i)));
    let var_2 = Struct_2(vec2<bool>(var_1.c.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1000f) - vec2<f32>(1333f, arg_2)))) - vec2<f32>(_wgslsmith_f_op_f32(var_1.a + var_1.a), _wgslsmith_f_op_f32(exp2(arg_2))))), var_1.a, Struct_1(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1641f)))), !(!var_1.c.zz), select(select(vec4<bool>(true, false, var_1.c.x, false), select(var_1.c, vec4<bool>(var_1.b.x, false, true, false), vec4<bool>(false, var_1.c.x, var_1.b.x, true)), u_input.a.x >= arg_0), !select(var_1.c, vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), vec4<bool>(true, true, false, var_1.c.x)), !var_1.b.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, 904f, var_2.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, arg_2, arg_2)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_1.a, 1005f)), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x * 1307f), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(f32(-1f) * -331f)), false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), arg_2, var_2.c), false & var_2.d.b.x));
    return var_2.d;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(!arg_1.c.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(361f, arg_1.a) * vec2<f32>(arg_1.a, 695f))) * vec2<f32>(-943f, arg_1.a)) - vec2<f32>(1f, 1f)), arg_1.a, Struct_1(arg_1.a, arg_1.c.wz, vec4<bool>(arg_1.c.x, true, all(vec4<bool>(arg_1.c.x, arg_1.b.x, true, arg_1.c.x)), arg_1.c.x)));
    var_0 = Struct_2(var_0.d.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - var_0.b), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - func_2(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 1u), abs(59417u), _wgslsmith_div_f32(-350f, -221f)).a), all(arg_1.b))), Struct_1(var_0.b.x, !vec2<bool>(arg_1.c.x, true), func_2(39536u, u_input.a.x, -2817f).c));
    global0 = array<u32, 18>();
    var_0 = Struct_2(vec2<bool>(!(!(4294967295u <= u_input.a.x)), var_0.a.x && !(true && arg_1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -418f))), func_2(arg_0, global0[_wgslsmith_index_u32(arg_0, 18u)], _wgslsmith_f_op_f32(-arg_1.a)));
    var var_1 = Struct_1(-1119f, !select(arg_1.c.yz, !var_0.a, true), select(vec4<bool>(all(!vec4<bool>(var_0.d.b.x, true, var_0.a.x, arg_1.c.x)), all(vec3<bool>(false, arg_1.b.x, var_0.a.x)), false, firstTrailingBit(u_input.b.x) < u_input.b.x), !select(!vec4<bool>(true, false, false, var_0.a.x), func_2(0u, arg_0, arg_1.a).c, arg_1.b.x), select(select(!vec4<bool>(arg_1.b.x, true, arg_1.c.x, false), vec4<bool>(var_0.d.b.x, true, true, arg_1.b.x), var_0.a.x), !arg_1.c, arg_1.c.x)));
    return Struct_2(!arg_1.c.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.a - 904f)), _wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(arg_1.a, var_1.a)), !select(vec2<bool>(true, var_1.c.x), vec2<bool>(false, var_0.a.x), var_0.a.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(max(var_0.b.x, var_1.a))) - _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-var_0.b)))), _wgslsmith_f_op_f32(select(-900f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1184f, var_1.a)))), !arg_1.b.x)), func_2(~70184u, 5377u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -730f)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(vec2<bool>(arg_0.d.b.x, arg_0.a.x), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.c)), arg_0.d.a)) * _wgslsmith_f_op_f32(floor(-295f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(226f - arg_0.d.a) - _wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1074f)))), func_5(u_input.a.x, arg_0.d).d);
    let var_1 = Struct_2(vec2<bool>(!((arg_0.b.x <= -1558f) & any(vec4<bool>(false, arg_0.d.c.x, arg_0.a.x, var_0.d.c.x))), !all(func_2(4294967295u, u_input.a.x, var_0.c).b)), vec2<f32>(arg_1.x, -1611f), -1593f, Struct_1(var_0.d.a, vec2<bool>(true, true), !(!vec4<bool>(arg_0.a.x, arg_0.d.c.x, arg_0.a.x, false))));
    let var_2 = 7284u;
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.b.x, -441f)), func_2(10177u, ~global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(48248u, u_input.a.x), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a - var_0.c)))).b.x, Struct_2(var_1.d.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_0.b.x))) * arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -783f)), var_1.d));
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(-1100f, -268f, arg_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.a, var_1.b.x, 890f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-292f, 1867f, arg_1.x)))))))));
    return func_5(_wgslsmith_dot_vec2_u32(u_input.a.yy, ~firstTrailingBit(u_input.a.ww) << (u_input.a.zx % vec2<u32>(32u))), arg_0.d).d;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = func_6(func_5(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xy >> (u_input.a.yw % vec2<u32>(32u))) & 9748u, func_2(~(5161u << (u_input.a.x % 32u)), ~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33512u, 18u)], 18u)], 18u)]), _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-569f, 512f, arg_0.a), vec3<f32>(arg_0.a, 1850f, arg_0.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(889f, 450f, arg_0.a)) + vec3<f32>(arg_0.a, 869f, arg_0.a)) - vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(arg_0.a - -280f)))));
    let var_1 = (_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2802i, 1i, u_input.b.x), vec3<i32>(-2147483647i, 27446i, 1i)), -47695i, -14768i), reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i))) < u_input.b.x) || arg_0.c.x;
    var var_2 = abs(_wgslsmith_div_i32(u_input.b.x, ~_wgslsmith_clamp_i32(~0i, 2147483647i, ~(-2147483647i))));
    var var_3 = u_input.b.x;
    var_3 = u_input.b.x;
    return vec3<i32>(u_input.b.x, 1i, -reverseBits(-40477i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    let var_0 = max(-abs(vec3<i32>(-1i, 29272i, u_input.b.x)), ~_wgslsmith_clamp_vec3_i32(func_1(Struct_1(-1000f, vec2<bool>(true, false), vec4<bool>(false, false, true, true))), ~vec3<i32>(u_input.b.x, -5811i, u_input.b.x), vec3<i32>(_wgslsmith_sub_i32(17615i, u_input.b.x), u_input.b.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -40671i, u_input.b.x), vec4<i32>(34496i, u_input.b.x, 29577i, -9343i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-381f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_5(63562u, Struct_1(1591f, vec2<bool>(true, true), vec4<bool>(true, false, false, false))).d.a, func_5(u_input.a.x, Struct_1(1223f, vec2<bool>(true, false), vec4<bool>(false, true, true, true))).c)) - 1569f)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -154f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2489f, -227f))), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-910f, -327f) + vec2<f32>(-1265f, -553f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1216f)))))));
    let var_2 = func_6(func_5(_wgslsmith_mod_u32(~(~u_input.a.x), 4294967295u), Struct_1(var_1.x, func_2(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(14392u, 0u, global0[_wgslsmith_index_u32(106465u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)])), _wgslsmith_f_op_f32(round(-682f))).b, vec4<bool>(func_6(Struct_2(vec2<bool>(true, false), var_1, var_1.x, Struct_1(1000f, vec2<bool>(false, true), vec4<bool>(false, true, false, false))), vec3<f32>(var_1.x, -1418f, var_1.x)).b.x, false, any(vec2<bool>(false, false)), false))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), var_1.x, var_1.x)).c.x;
    global0 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(var_0, vec3<i32>(~(u_input.b.x ^ 33892i), u_input.b.x, 2147483647i)), _wgslsmith_f_op_f32(1000f - var_1.x));
}

