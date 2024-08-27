struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(778f);

var<private> global1: Struct_2 = Struct_2(-5483i, vec2<i32>(-1i, -45709i));

var<private> global2: bool = false;

var<private> global3: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1365f, -1750f, -403f, -914f), vec4<f32>(-279f, -1154f, 455f, 1336f), vec4<f32>(-100f, 1148f, 235f, 432f), vec4<f32>(-682f, 1000f, -145f, 404f), vec4<f32>(945f, -116f, 1948f, -135f), vec4<f32>(1000f, -1001f, -957f, -313f), vec4<f32>(-949f, -183f, -563f, 311f), vec4<f32>(1000f, -719f, 816f, 594f), vec4<f32>(-146f, -1366f, -461f, -1427f), vec4<f32>(1000f, -1486f, 251f, 1000f), vec4<f32>(-455f, 1000f, -1314f, -342f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> i32 {
    let var_0 = vec4<bool>(!(_wgslsmith_mult_i32(10839i, arg_0) <= 8105i) && true, !any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), any(vec3<bool>(false, true, true)))), true, any(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, true, false), true)));
    let var_1 = arg_1.x;
    global0 = array<f32, 1>();
    let var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.b.x, _wgslsmith_clamp_i32(min(2147483647i, global1.a), -4299i, _wgslsmith_add_i32(global1.a, arg_0))), min(vec3<i32>(global1.a, 16463i, 2147483647i) | vec3<i32>(arg_0, u_input.b.x, arg_0), countOneBits(u_input.b >> (vec3<u32>(u_input.e.x, u_input.e.x, u_input.d) % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(arg_1.yzy, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -525f), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), var_0.x)))), vec2<bool>(true, var_0.x));
    var var_3 = select(vec2<bool>(var_2.c.x, var_2.c.x), var_0.zx, select(var_2.c, vec2<bool>(any(!vec3<bool>(var_0.x, true, var_0.x)), true), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a, arg_0), global1.b) == -1i));
    return reverseBits(u_input.b.x);
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<f32>, 11>();
    let var_0 = !vec4<bool>(true, true, u_input.d > (~31873u << (u_input.c % 32u)), true);
    global1 = Struct_2(((abs(18498i) >> (1u % 32u)) << (((u_input.a.x ^ u_input.d) >> (u_input.c % 32u)) % 32u)) & _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i) << (u_input.e % vec4<u32>(32u))), vec4<i32>(~0i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, global1.a, u_input.b.x, 1i), vec4<i32>(u_input.b.x, global1.b.x, u_input.b.x, global1.b.x)), u_input.b.x)), _wgslsmith_mult_vec2_i32(global1.b, u_input.b.zz));
    var var_1 = Struct_3(Struct_2(_wgslsmith_add_i32(-global1.b.x, ~(-global1.b.x)), global1.b));
    var var_2 = Struct_3(var_1.a);
    return Struct_1(-(~vec3<i32>(func_3(39114i, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -1287f, global0[_wgslsmith_index_u32(4294967295u, 1u)])), -2147483647i, 0i)), vec3<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~(u_input.c ^ 50268u), 1u)])), 1f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 1u)])), select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(var_0.xw, select(vec2<bool>(var_0.x, false), var_0.yx, var_0.zx), vec2<bool>(var_0.x, var_0.x)), var_0.xy), select(vec2<bool>(any(var_0), var_0.x | true), var_0.xw, u_input.d != ~53997u)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f) - arg_2.b.x), global0[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(615f * -206f)) - _wgslsmith_f_op_f32(ceil(-531f))), arg_1)));
    var var_1 = ~max(reverseBits(~u_input.e << (vec4<u32>(0u, u_input.e.x, u_input.c, u_input.e.x) % vec4<u32>(32u))), u_input.e);
    return Struct_1(vec3<i32>(0i, ~_wgslsmith_sub_i32(18862i, countOneBits(16183i)), max(u_input.b.x, -u_input.b.x) >> (_wgslsmith_add_u32(~23318u, ~u_input.a.x) % 32u)), _wgslsmith_f_op_vec3_f32(var_0.yyz - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.wzz, vec3<f32>(-1977f, -839f, arg_0.b.x)))))), select(arg_2.c, arg_0.c, vec2<bool>(all(select(arg_2.c, arg_2.c, vec2<bool>(arg_0.c.x, false))), arg_2.c.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1676f + arg_2), _wgslsmith_f_op_f32(-657f * -359f), _wgslsmith_f_op_f32(-315f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_4(Struct_1(arg_0.a, arg_1.b, vec2<bool>(false, false)), -1081f, arg_1).b.x)))));
    let var_1 = arg_1;
    global0 = array<f32, 1>();
    var var_2 = Struct_1(abs(vec3<i32>(_wgslsmith_add_i32(-global1.a, arg_0.a.x), 2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_1.a.yz, vec2<i32>(arg_3.b.x, -4133i)), select(-46496i, 58499i, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.b))), func_4(arg_1, _wgslsmith_f_op_f32(select(-226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1014f + global0[_wgslsmith_index_u32(u_input.e.x, 1u)])), all(!vec4<bool>(var_1.c.x, true, var_1.c.x, true)))), Struct_1((vec3<i32>(-1i, u_input.b.x, 9644i) >> (vec3<u32>(u_input.a.x, 54686u, u_input.e.x) % vec3<u32>(32u))) << (u_input.a.yxx % vec3<u32>(32u)), var_1.b, arg_1.c)).c);
    var var_3 = !vec2<bool>(arg_0.b.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1071f + arg_2)), all(select(vec4<bool>(arg_0.c.x, true, arg_1.c.x, var_2.c.x), select(vec4<bool>(true, false, true, var_2.c.x), vec4<bool>(false, var_1.c.x, var_1.c.x, arg_1.c.x), true), select(vec4<bool>(arg_1.c.x, arg_1.c.x, false, var_2.c.x), vec4<bool>(var_1.c.x, true, false, arg_1.c.x), vec4<bool>(false, arg_1.c.x, true, arg_1.c.x)))));
    return func_4(func_4(func_2(), -855f, Struct_1(-arg_1.a, func_2().b, func_2().c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), Struct_1(~u_input.b, _wgslsmith_div_vec3_f32(var_0.wzy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -676f, global0[_wgslsmith_index_u32(u_input.d, 1u)]) + vec3<f32>(var_1.b.x, global0[_wgslsmith_index_u32(4294967295u, 1u)], -1815f)))), arg_0.c));
}

fn func_6(arg_0: Struct_1) -> u32 {
    return u_input.d;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    global3 = array<vec4<f32>, 11>();
    let var_0 = Struct_2(-12261i, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(global1.b ^ vec2<i32>(u_input.b.x, global1.b.x), -vec2<i32>(global1.a, 61405i)), _wgslsmith_sub_vec2_i32(max(global1.b, vec2<i32>(global1.b.x, 130690i)), vec2<i32>(0i, u_input.b.x) & vec2<i32>(global1.a, global1.a)), -vec2<i32>(u_input.b.x, u_input.b.x) >> (u_input.e.zx % vec2<u32>(32u))) & ~(-vec2<i32>(-12609i, global1.a) << (min(vec2<u32>(arg_0, 23393u), vec2<u32>(0u, 0u)) % vec2<u32>(32u))));
    var var_1 = arg_1.x;
    var var_2 = global3[_wgslsmith_index_u32(~func_6(func_5(func_4(func_2(), _wgslsmith_f_op_f32(max(504f, arg_1.x)), Struct_1(u_input.b, vec3<f32>(arg_1.x, global0[_wgslsmith_index_u32(arg_0, 1u)], global0[_wgslsmith_index_u32(arg_0, 1u)]), vec2<bool>(false, false))), Struct_1(select(vec3<i32>(-1041i, 19939i, -1i), vec3<i32>(-45848i, global1.b.x, u_input.b.x), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-726f, global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), func_2().c), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0)), 11u)];
    var var_3 = Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -286f) + vec3<f32>(global0[_wgslsmith_index_u32(93720u, 1u)], var_2.x, global0[_wgslsmith_index_u32(u_input.d, 1u)])), vec3<f32>(494f, -632f, -809f), true))) * _wgslsmith_f_op_vec3_f32(-var_2.xzw)), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -307f)) == _wgslsmith_f_op_f32(select(var_2.x, global0[_wgslsmith_index_u32(72301u, 1u)], true)), true));
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(func_4(func_4(Struct_1(vec3<i32>(u_input.b.x, 0i, var_0.a), vec3<f32>(207f, arg_1.x, -488f), vec2<bool>(var_3.c.x, var_3.c.x)), var_2.x, Struct_1(u_input.b, var_3.b, vec2<bool>(var_3.c.x, false))), _wgslsmith_div_f32(-220f, -546f), func_4(Struct_1(vec3<i32>(var_3.a.x, u_input.b.x, 28649i), arg_1, var_3.c), var_3.b.x, Struct_1(vec3<i32>(global1.a, global1.b.x, var_3.a.x), var_3.b, vec2<bool>(false, true)))).a.x & ~abs(global1.a), ~43017i), select(func_5(Struct_1(func_5(Struct_1(u_input.b, vec3<f32>(var_3.b.x, global0[_wgslsmith_index_u32(44668u, 1u)], global0[_wgslsmith_index_u32(u_input.e.x, 1u)]), var_3.c), Struct_1(var_3.a, vec3<f32>(var_2.x, -1620f, -196f), var_3.c), arg_1.x, Struct_2(-20261i, var_0.b)).a, _wgslsmith_f_op_vec3_f32(exp2(var_2.zzy)), select(var_3.c, var_3.c, var_3.c.x)), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(max(var_3.b, vec3<f32>(-1914f, var_3.b.x, -1134f))), var_3.c), -917f, var_0).a.x, -(~func_2().a.x), true));
}

fn func_7(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    global2 = (_wgslsmith_f_op_f32(min(-1000f, -363f)) != global0[_wgslsmith_index_u32(1u ^ u_input.d, 1u)]) && true;
    var var_0 = Struct_2(global1.a, vec2<i32>(func_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 1u)], -677f, global0[_wgslsmith_index_u32(13242u, 1u)], 1135f)))), func_4(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 1u)], -1072f, global0[_wgslsmith_index_u32(0u, 1u)])), vec2<bool>(false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 1u)] * global0[_wgslsmith_index_u32(u_input.e.x, 1u)])), Struct_1(-vec3<i32>(21883i, -42970i, 2147483647i), vec3<f32>(287f, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)]), vec2<bool>(true, false))).a.x));
    var var_1 = arg_1;
    var_1 = arg_1;
    var_0 = Struct_2(countOneBits(abs(-select(-2147483647i, arg_0, false))), var_1.b | ~arg_1.b);
    return Struct_3(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 11>();
    global3 = array<vec4<f32>, 11>();
    let var_0 = u_input.e;
    var var_1 = func_7(-global1.b.x, Struct_2(func_1(_wgslsmith_mod_u32(~u_input.c, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(855f, global0[_wgslsmith_index_u32(var_0.x, 1u)], 2155f))), -_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), func_2().a.yz)));
    let var_2 = var_1.a;
    let var_3 = func_2();
    let var_4 = func_7(var_2.a, func_7(-(~_wgslsmith_add_i32(global1.b.x, 8511i)), func_7(firstTrailingBit(-52217i), Struct_2(var_1.a.b.x, -vec2<i32>(1i, var_2.a))).a).a).a;
    var var_5 = global0[_wgslsmith_index_u32(u_input.d, 1u)] <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2453f + -1181f) - var_3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_u32(var_0.x, var_0.x) << (func_6(Struct_1(var_3.a, vec3<f32>(var_3.b.x, var_3.b.x, var_3.b.x), vec2<bool>(var_3.c.x, var_3.c.x))) % 32u)), 4294967295u);
}

