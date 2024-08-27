struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-507f, -1000f, -1486f, 365f), vec4<f32>(-388f, 1298f, 1000f, 332f), vec4<f32>(-884f, -1000f, 287f, 1511f), vec4<f32>(-1216f, -1457f, -1355f, 1273f), vec4<f32>(799f, 1474f, 1034f, -245f), vec4<f32>(1000f, -670f, -1442f, 719f), vec4<f32>(2546f, -709f, -2255f, 1766f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(select(select(vec4<bool>(true, true, false, false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false)))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, false)), true & all(vec4<bool>(true, false, false, true)), true, false)), true, u_input.e);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1338f, 1574f)) * vec2<f32>(478f, -114f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-600f - 1688f), 855f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, 697f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(235f, 1096f))))));
    var var_2 = var_0.a.x;
    var var_3 = var_0.a.yxz;
    var_3 = select(!select(var_0.a.wxy, !vec3<bool>(var_3.x, true, true), !select(var_0.a.wwy, var_0.a.zwx, false)), select(vec3<bool>(true, true, all(var_0.a.wyy)), !select(var_0.a.xwx, var_0.a.wyw, var_3.x), all(var_0.a) | (min(-2147483647i, 2147483647i) > -u_input.e)), any(!(!select(var_3.xz, var_3.zz, false))));
    return _wgslsmith_f_op_f32(abs(-242f));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> vec2<i32> {
    var var_0 = vec4<u32>(~(u_input.d | u_input.c), (_wgslsmith_mod_u32(u_input.c >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.a.x, 4294967295u, u_input.d))) & u_input.d) | u_input.d, u_input.a.x, 4294967295u);
    var_0 = reverseBits(u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~var_0.x, 7u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(304f, _wgslsmith_f_op_f32(sign(-486f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1766f + 559f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.b, 7u)] + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(arg_3, global0[_wgslsmith_index_u32(u_input.c, 7u)], true | arg_1.a.x))))));
    let var_2 = vec2<u32>(firstLeadingBit(u_input.a.x), select(select(var_0.x, var_0.x, arg_2), ~(~u_input.c), true));
    return -vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(~arg_1.c, 0i), arg_1.c), 12894i);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_1(vec4<bool>(true, true, true, true), select(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(-arg_0.x == -arg_3.x)), -(~(~(-arg_0.x))));
    var var_1 = -2147483647i;
    global0 = array<vec4<f32>, 7>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -921f);
    var_1 = u_input.e;
    return true;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> f32 {
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    let var_0 = 82575u;
    global0 = array<vec4<f32>, 7>();
    let var_1 = Struct_1(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(69288i, 50306i, 2147483647i), ~vec3<i32>(arg_1, -25469i, arg_1)), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.e, u_input.e), vec3<i32>(6228i, arg_1, arg_1)))), 637f, ~vec3<u32>(var_0, 15241u, 2210u) & firstTrailingBit(arg_0.zyz), (func_2(arg_2, Struct_1(vec4<bool>(false, true, false, true), true, -14297i), true, vec4<f32>(arg_2, 209f, -878f, arg_2)) | _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, u_input.e), vec2<i32>(u_input.e, u_input.e))) >> (~vec2<u32>(0u, var_0) % vec2<u32>(32u))), ~u_input.e);
    return arg_2;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: f32) -> f32 {
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    var var_0 = ~vec4<u32>(4294967295u, ~(~(u_input.a.x & 1u)), reverseBits(16362u), ~_wgslsmith_add_u32(u_input.b, u_input.b));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1022f + arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-579f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 877f)))))));
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = reverseBits(vec3<i32>(-arg_3.c, -min(-2147483647i, 1i), u_input.e)) & countOneBits(vec3<i32>(firstTrailingBit(arg_3.c), arg_3.c, u_input.e));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -775f));
    var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(-1i), arg_3.c & 5870i), u_input.e, 32013i), ~vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-31464i, u_input.e, -2147483647i, var_0.x)), vec4<i32>(49747i, var_0.x, u_input.e, arg_3.c)), arg_3.c, var_0.x));
    var_1 = _wgslsmith_f_op_f32(round(arg_1.x));
    var_0 = ~abs(vec3<i32>(1i, _wgslsmith_mult_i32(arg_3.c, u_input.e << (u_input.b % 32u)), ~reverseBits(u_input.e)));
    return !vec4<bool>(all(!arg_3.a), arg_2, true, any(vec4<bool>(arg_2, true, arg_2, select(true, arg_3.b, arg_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_6(-658f, vec2<f32>(_wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(func_1(u_input.a, u_input.e, 590f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1359f, -680f)))), false, Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_clamp_i32(u_input.e | -13812i, u_input.e, u_input.e >> (u_input.c % 32u)))), 2147483647i != u_input.e, ~(~min(u_input.e, 0i)));
    global0 = array<vec4<f32>, 7>();
    var var_1 = Struct_1(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1429f, 918f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(961f, -2175f), _wgslsmith_f_op_f32(f32(-1f) * -1171f)), vec2<f32>(-356f, _wgslsmith_f_op_f32(ceil(-561f)))), var_0.b, Struct_1(!vec4<bool>(var_0.a.x, false, false, var_0.b), false, 6239i)), var_0.b, u_input.e);
    var var_2 = Struct_1(func_6(_wgslsmith_div_f32(-191f, 294f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -854f), -101f))), (var_1.c | u_input.e) < 1i, Struct_1(select(!vec4<bool>(true, var_0.a.x, true, var_1.a.x), vec4<bool>(true, true, true, var_0.a.x), var_0.a), false, var_1.c)), 743f < _wgslsmith_f_op_f32(func_5(select(!vec2<bool>(var_0.b, true), var_1.a.wz, true), func_6(126f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1988f, -1157f))), true || var_1.b, Struct_1(vec4<bool>(true, true, true, var_0.a.x), false, -1i)).wz, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(min(-406f, -673f)), true)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-950f * -2383f))), Struct_1(var_1.a, true, -1i), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(501f, -510f, -1439f, 1336f))) + _wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(0u, 7u)]))))).x);
    var var_3 = Struct_1(var_2.a, !var_2.b, 37497i);
    var var_4 = ~u_input.b < 1034u;
    var_4 = true && !var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c, ~(~(~0u)), all(vec2<bool>(true, false)) | func_4(vec3<i32>(var_0.c, var_2.c, var_0.c), _wgslsmith_f_op_f32(func_3()), vec3<u32>(u_input.a.x, 82535u, 1u), ~vec2<i32>(var_3.c, var_0.c))));
}

