struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_5) -> vec4<i32> {
    let var_0 = Struct_3(-1000f);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1370f, -607f)), _wgslsmith_f_op_f32(-1227f - -1110f), _wgslsmith_f_op_f32(trunc(var_0.a)), -1763f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1490f, arg_0.x, var_0.a, var_0.a))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - var_0.a))), _wgslsmith_f_op_f32(ceil(-1434f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, arg_0.x, -337f, -562f), vec4<f32>(267f, var_0.a, arg_0.x, 1735f))))))), !vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), true, true, _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) == _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_div_vec4_i32(max(_wgslsmith_div_vec4_i32(-vec4<i32>(-4351i, -1i, u_input.a, u_input.a), vec4<i32>(u_input.b, -19204i, 2147483647i, global0.x) << (vec4<u32>(arg_2.a.x, 42667u, 9889u, arg_2.a.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(17973i, 2147483647i, 15168i, -2147483647i), vec4<i32>(2147483647i, 18109i, global0.x, u_input.b)), reverseBits(vec4<i32>(u_input.a, global0.x, -48050i, arg_1.x)))), vec4<i32>(_wgslsmith_sub_i32(1i, arg_1.x), arg_1.x, 1i, _wgslsmith_div_i32(global0.x, 2147483647i) >> (1u % 32u))), 0u);
    global0 = var_1.d;
    global0 = ~countOneBits(-vec4<i32>(~(-25283i), _wgslsmith_div_i32(14974i, 1i), _wgslsmith_add_i32(u_input.a, global0.x), ~u_input.b));
    let var_2 = !(!select(var_1.c, select(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false), select(vec4<bool>(true, true, var_1.c.x, var_1.c.x), var_1.c, var_1.c.x), var_1.e >= var_1.e), var_1.c));
    return var_1.d;
}

fn func_2() -> bool {
    global0 = -vec4<i32>(_wgslsmith_sub_i32(-(~u_input.a), 8739i), 2147483647i, countOneBits(_wgslsmith_mult_i32(u_input.a, 1i) << (_wgslsmith_clamp_u32(35355u, 33061u, 0u) % 32u)), 3287i);
    global0 = vec4<i32>(0i, min(~_wgslsmith_add_i32(_wgslsmith_div_i32(0i, -44057i), reverseBits(global0.x)), ~global0.x), _wgslsmith_dot_vec4_i32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-619f, -1423f) + vec2<f32>(-2164f, 1727f))), global0.xzy, Struct_5(firstTrailingBit(vec3<u32>(46378u, 14038u, 1u)))), -(~vec4<i32>(-1i, global0.x, -13929i, u_input.b) << (abs(vec4<u32>(0u, 0u, 17373u, 17047u)) % vec4<u32>(32u)))), min(min(global0.x, -2147483647i), u_input.a));
    global0 = select(_wgslsmith_add_vec4_i32(~(-vec4<i32>(global0.x, 2946i, 0i, 1239i)), max(select(vec4<i32>(-91i, 1i, u_input.b, 1i), vec4<i32>(30022i, 5584i, u_input.b, -6541i), vec4<bool>(false, true, true, false)), vec4<i32>(global0.x, global0.x, -1i, global0.x))) & ~(-vec4<i32>(global0.x, global0.x, 5281i, u_input.b)), -(vec4<i32>(1i, countOneBits(global0.x), 13145i, 9366i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), !all(vec3<bool>(false, false, true)) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1021f * 1073f) + _wgslsmith_f_op_f32(ceil(1000f))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1153f))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f + -1000f)), _wgslsmith_f_op_f32(step(2421f, 603f)))), _wgslsmith_f_op_f32(min(410f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1336f, _wgslsmith_f_op_f32(-1425f - 1712f))))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-434f - _wgslsmith_f_op_f32(max(422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))))), _wgslsmith_f_op_f32(max(-109f, var_0.x)), true));
    return all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(41334i > u_input.a, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true == any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec4<bool>(41400u < _wgslsmith_clamp_u32(130534u, 0u, 0u), true, true, true)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_4) -> f32 {
    global0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.x, global0.x), 1i), u_input.a, u_input.a, abs(0i));
    var var_0 = any(select(vec2<bool>(true, true), select(!(!arg_3.d), select(vec2<bool>(arg_3.c, arg_1.x), !vec2<bool>(arg_1.x, arg_1.x), false), arg_2.x), arg_1.x));
    var_0 = any(vec4<bool>(!arg_3.c, select(any(arg_1), u_input.a >= 55401i, arg_1.x), true, all(arg_3.b.yz) != arg_3.a)) | (arg_0 > _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), arg_0));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f - arg_0))));
    return var_1.a;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(trunc(1f));
    var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(sign(938f)), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), !vec4<bool>(true, func_2(), all(vec4<bool>(false, false, false, true)), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true, _wgslsmith_div_i32(global0.x, 61506i) <= u_input.a)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_4(false, !vec3<bool>(true, true, any(vec3<bool>(true, false, true))), false, vec2<bool>(func_2() | all(vec3<bool>(false, false, false)), true))));
    var var_1 = reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, global0.x), -38155i), -2147483647i), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(global0.xx, vec2<i32>(global0.x, u_input.a)), -global0.zx & (global0.xw & vec2<i32>(-21003i, -50310i)))));
    var_0 = 147f;
    var var_2 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))), all(vec4<bool>(true, true, false, false))), true != all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2571f + 203f), _wgslsmith_f_op_f32(f32(-1f) * -130f), -469f, _wgslsmith_div_f32(-947f, -1608f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1262f, -159f, -1429f, -2174f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1609f - 805f), _wgslsmith_f_op_f32(504f + -632f))), -1621f, _wgslsmith_f_op_f32(f32(-1f) * -998f)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(var_2.b.x, vec4<bool>(true, true, var_2.a.x, var_2.a.x), var_2.a, Struct_4(true, vec3<bool>(true, var_2.a.x, var_2.a.x), false, var_2.a))), _wgslsmith_f_op_f32(min(811f, 2070f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(400f * -1080f) - _wgslsmith_f_op_f32(-var_2.b.x)), var_2.c.x) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) + vec4<f32>(var_2.b.x, -567f, var_2.b.x, var_2.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -606f, var_2.b.x, 2540f)) + vec4<f32>(-727f, var_2.c.x, -463f, -1210f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f + 591f))), _wgslsmith_f_op_f32(ceil(var_2.c.x)), var_2.b.x, 281f), vec4<bool>(true, !any(vec2<bool>(var_2.a.x, false)) && true, !select(false, true, !var_2.a.x), any(!select(vec2<bool>(var_2.a.x, var_2.a.x), vec2<bool>(var_2.a.x, false), var_2.a.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.x, -1i, u_input.a), vec4<i32>(global0.x, 43865i, -26389i, 0i)) & ~vec4<i32>(u_input.b, 31913i, -2147483647i, u_input.a), vec4<i32>(abs(36187i), -u_input.a, 62377i, var_1.x ^ u_input.b)) >> (select(~(~vec4<u32>(4294967295u, 0u, 154713u, 4294967295u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 1918u, 1u, 1u), vec4<u32>(18358u, 4294967295u, 41108u, 1u), true), ~vec4<u32>(4294967295u, 78793u, 48184u, 49403u), vec4<u32>(1u, 10943u, 88463u, 0u)), var_2.c.x >= -1267f) % vec4<u32>(32u)), 4294967295u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: i32) -> Struct_2 {
    var var_0 = arg_0.e;
    let var_1 = func_1().c.ywz;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.a.x)), -716f, true)));
    var var_3 = Struct_2(arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.a)))), arg_0.c, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0.d | arg_0.d, reverseBits(arg_0.d)), vec4<i32>(global0.x, global0.x, -7547i, arg_2) | (arg_0.d >> (vec4<u32>(arg_0.e, 4294967295u, arg_0.e, 17975u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(arg_2, 2147483647i), reverseBits(2147483647i), _wgslsmith_add_i32(u_input.a, -52556i), arg_0.d.x)), arg_0.d), firstTrailingBit(1u));
    var var_4 = _wgslsmith_mult_i32(-(~_wgslsmith_mod_i32(arg_2, global0.x)), 49949i ^ -var_3.d.x) != abs(~u_input.a);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_5(func_1(), Struct_5(vec3<u32>(1u, reverseBits(83631u), 1639u)), firstTrailingBit(-12515i));
    global0 = var_1.d;
    let var_2 = var_1.d.x;
    var var_3 = 1i;
    let var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 149f) * _wgslsmith_f_op_f32(f32(-1f) * -1661f)) + _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.b.x, -191f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(abs(var_1.a.x)))), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(760f * var_1.a.x), _wgslsmith_f_op_f32(-596f - 259f)) + var_1.a.x)), vec4<f32>(var_1.a.x, var_1.b.x, 566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(299f)))), vec4<bool>(true, var_1.c.x, !(var_1.c.x && var_1.c.x) & (var_1.c.x && true), -1000f == _wgslsmith_f_op_f32(-443f - var_1.a.x)), var_1.d, max(~_wgslsmith_mod_u32(12859u >> (var_1.e % 32u), ~4294967295u), _wgslsmith_sub_u32(firstLeadingBit(var_1.e), _wgslsmith_add_u32(var_1.e, min(var_1.e, var_1.e)))));
    let var_5 = Struct_4(false, var_1.c.yzz, !(!var_4.c.x), func_1().c.yy);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_2(vec4<f32>(var_4.a.x, 1332f, _wgslsmith_f_op_f32(var_4.b.x - 936f), -293f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1860f, var_1.b.x, var_1.a.x, var_1.a.x)), select(var_1.c, var_1.c, false), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -12384i, 58528i, -1i), vec4<i32>(var_4.d.x, var_4.d.x, 19639i, -13837i)), ~4294967295u), Struct_5(abs(vec3<u32>(0u, var_4.e, var_4.e))), ~var_4.d.x & _wgslsmith_sub_i32(_wgslsmith_div_i32(var_4.d.x, global0.x), _wgslsmith_dot_vec4_i32(var_4.d, vec4<i32>(global0.x, -33837i, -34408i, global0.x)))).a.zwx, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_4.e, var_4.e)) & 1u, countOneBits(~reverseBits(var_1.e))));
}

