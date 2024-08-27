struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    return ~(~arg_2.d);
}

fn func_3(arg_0: bool) -> f32 {
    global0 = Struct_1(_wgslsmith_sub_u32(max(~min(global0.a, global0.d.x), ~0u), max(1u, 1u)), _wgslsmith_f_op_f32(-1f), !select(vec2<bool>(false, true), select(select(global0.e.xx, vec2<bool>(false, global0.c.x), vec2<bool>(false, arg_0)), !global0.c, true), vec2<bool>(true, any(global0.e.ywz))), vec2<u32>(firstTrailingBit((global0.d.x >> (global0.a % 32u)) & global0.a), 4294967295u), select(global0.e, select(select(vec4<bool>(true, false, arg_0, false), vec4<bool>(true, global0.e.x, arg_0, arg_0), select(arg_0, false, global0.c.x)), !global0.e, arg_0), arg_0));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -424f, 681f, global0.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1368f, -531f, global0.b, 2415f) + vec4<f32>(global0.b, global0.b, 216f, 798f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, -1375f, global0.b))))) * vec4<f32>(1342f, global0.b, -138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(round(161f)))) * -2005f)));
    global0 = Struct_1(_wgslsmith_div_u32(u_input.c, select(u_input.c, 6589u, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - var_0.x) - -1112f)), !global0.e.zy, vec2<u32>(global0.d.x, _wgslsmith_add_u32(abs(u_input.c), _wgslsmith_div_u32(_wgslsmith_mult_u32(11372u, u_input.c), ~25293u))), select(global0.e, !vec4<bool>(!arg_0, global0.e.x, true, !global0.e.x), vec4<bool>(!arg_0, arg_0, all(select(global0.e.wx, global0.e.wx, vec2<bool>(global0.c.x, true))), global0.c.x)));
    global0 = Struct_1(u_input.c, global0.b, vec2<bool>(all(!global0.c), any(global0.e)), select(min(vec2<u32>(u_input.c, global0.d.x), func_2(Struct_1(60595u, 993f, global0.c, global0.d, vec4<bool>(false, false, false, false)), u_input.a, Struct_1(0u, -587f, global0.c, vec2<u32>(649u, global0.a), global0.e), _wgslsmith_f_op_f32(step(var_0.x, -523f)))), vec2<u32>(_wgslsmith_mod_u32(~u_input.c, _wgslsmith_sub_u32(global0.a, u_input.c)), 38256u), all(vec4<bool>(var_0.x < -1815f, !global0.c.x, global0.c.x, global0.e.x))), select(vec4<bool>(true, arg_0, all(select(vec4<bool>(global0.e.x, false, global0.e.x, arg_0), vec4<bool>(false, global0.e.x, arg_0, false), arg_0)), true), select(!select(vec4<bool>(global0.e.x, true, global0.c.x, global0.c.x), global0.e, global0.c.x), select(global0.e, !global0.e, select(global0.e, global0.e, vec4<bool>(false, arg_0, arg_0, arg_0))), global0.e), global0.e));
    global0 = Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~global0.d.x, global0.d.x, u_input.c), firstTrailingBit(12009u) ^ 1u, _wgslsmith_dot_vec2_u32(global0.d | vec2<u32>(global0.a, 50026u), global0.d)), 1344f, !global0.e.ww, firstTrailingBit(_wgslsmith_add_vec2_u32(~(global0.d >> (global0.d % vec2<u32>(32u))), abs(select(vec2<u32>(u_input.c, 29051u), vec2<u32>(0u, 4294967295u), false)))), global0.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * -736f);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = 1582f;
    let var_2 = Struct_1(58887u, var_1, !arg_3.e.xz, ~(var_0.d << (vec2<u32>(~arg_0.d.x, ~global0.d.x) % vec2<u32>(32u))), !vec4<bool>(arg_3.c.x, !(arg_0.d.x < arg_0.a), !var_0.c.x, !arg_3.c.x));
    var var_3 = Struct_1(91779u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b)) + var_0.b) - _wgslsmith_f_op_f32(1170f - _wgslsmith_f_op_f32(floor(571f)))) + global0.b), vec2<bool>(2147483647i <= _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.x, 49760i), vec2<i32>(arg_2.x, arg_2.x) >> (arg_3.d % vec2<u32>(32u))), true), global0.d, select(vec4<bool>(any(var_2.e) || all(vec2<bool>(false, false)), true, true, false), arg_3.e, var_0.d.x > var_2.a));
    var var_4 = -25466i >> (~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a, var_3.a, global0.a, 47025u), abs(vec4<u32>(var_2.d.x, 28238u, arg_3.d.x, arg_3.a))), vec4<u32>(countOneBits(arg_3.a), _wgslsmith_clamp_u32(var_3.d.x, var_0.a, 59725u), var_2.d.x & 4830u, countOneBits(var_3.d.x))) % 32u);
    return var_2;
}

fn func_1() -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_mod_u32(~((global0.a ^ 4294967295u) ^ u_input.c), 0u), _wgslsmith_f_op_f32(round(-1488f)), !global0.c, vec2<u32>(max(global0.d.x, 0u), u_input.c), vec4<bool>(false | (true || global0.c.x), global0.e.x, all(!global0.e), false));
    var var_0 = global0.c.x;
    var var_1 = func_4(Struct_1(_wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a, 0u, u_input.c), vec3<u32>(5370u, 0u, global0.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.d.x, global0.a, global0.a), vec3<u32>(global0.d.x, global0.d.x, 6315u))), ~(vec3<u32>(u_input.c, 1u, 30188u) >> (vec3<u32>(global0.a, u_input.c, 40435u) % vec3<u32>(32u)))), global0.b, vec2<bool>(global0.c.x, true), (select(global0.d, vec2<u32>(u_input.c, u_input.c), false) & func_2(Struct_1(global0.d.x, global0.b, global0.c, global0.d, global0.e), -32186i, Struct_1(global0.d.x, 281f, global0.c, global0.d, vec4<bool>(false, false, global0.c.x, false)), -1000f)) ^ global0.d, vec4<bool>(global0.e.x, true, all(global0.e.wy), global0.e.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-975f, global0.b, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-362f - _wgslsmith_div_f32(-1409f, -163f))))), vec2<i32>(u_input.a, (select(u_input.b, u_input.a, false) >> (47531u % 32u)) >> (abs(global0.a) % 32u)), Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2039f - 1380f) * _wgslsmith_f_op_f32(func_3(false)))), select(select(!global0.e.xy, !global0.e.zz, all(global0.e.yxy)), select(select(global0.e.wy, global0.e.yw, global0.e.xy), select(vec2<bool>(false, global0.e.x), global0.e.xy, true), global0.e.zy), !any(global0.c)), global0.d, vec4<bool>(any(vec2<bool>(true, true)), !(global0.c.x == false), false, all(global0.e) | true)));
    let var_2 = func_4(func_4(func_4(Struct_1(1u, global0.b, var_1.e.ww, ~vec2<u32>(72974u, global0.d.x), vec4<bool>(false, var_1.c.x, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -263f, global0.b, 251f) + vec4<f32>(global0.b, -370f, -968f, -1608f))), vec2<i32>(u_input.a, u_input.b) << (vec2<u32>(47795u, 0u) % vec2<u32>(32u)), func_4(Struct_1(13074u, global0.b, var_1.c, global0.d, vec4<bool>(false, true, global0.c.x, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.b, global0.b) * vec4<f32>(156f, global0.b, global0.b, -1102f)), -vec2<i32>(-7012i, -49949i), func_4(Struct_1(42558u, -646f, var_1.e.xw, var_1.d, vec4<bool>(false, true, var_1.c.x, global0.c.x)), vec4<f32>(global0.b, global0.b, global0.b, 259f), vec2<i32>(u_input.a, u_input.a), Struct_1(35283u, var_1.b, vec2<bool>(global0.c.x, var_1.c.x), vec2<u32>(15861u, 0u), global0.e)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b, 220f, -354f, global0.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, -1726f, 452f, -1404f), vec4<f32>(global0.b, global0.b, global0.b, global0.b), var_1.e.x))), false)), _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(2147483647i), 17222i), vec2<i32>(u_input.a, -55538i) & select(vec2<i32>(u_input.a, 9173i), vec2<i32>(2147483647i, u_input.b), true)), func_4(func_4(func_4(Struct_1(global0.a, -2244f, global0.c, global0.d, var_1.e), vec4<f32>(global0.b, global0.b, var_1.b, global0.b), vec2<i32>(2147483647i, u_input.a), Struct_1(4294967295u, -198f, global0.c, var_1.d, vec4<bool>(true, true, false, var_1.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(127f, 767f, -1000f, global0.b) * vec4<f32>(1217f, -1606f, var_1.b, -171f)), vec2<i32>(14263i, 0i) << (global0.d % vec2<u32>(32u)), Struct_1(4294967295u, var_1.b, vec2<bool>(false, var_1.e.x), global0.d, var_1.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b, -372f, 528f, global0.b), vec4<f32>(-342f, -221f, 494f, 2033f))) * vec4<f32>(-175f, global0.b, -392f, -638f)), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, u_input.a), vec2<i32>(11914i, 2147483647i)), func_4(Struct_1(54590u, var_1.b, var_1.c, global0.d, vec4<bool>(var_1.e.x, var_1.e.x, false, global0.c.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b, -335f, -1280f, -856f))), firstTrailingBit(vec2<i32>(u_input.a, -1i)), func_4(Struct_1(var_1.a, var_1.b, vec2<bool>(var_1.c.x, true), global0.d, vec4<bool>(var_1.c.x, global0.c.x, false, false)), vec4<f32>(-1752f, var_1.b, var_1.b, -690f), vec2<i32>(u_input.b, u_input.b), Struct_1(1u, 673f, global0.c, var_1.d, global0.e))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b, global0.b, var_1.b, 947f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-852f, global0.b, var_1.b, -982f)), false | global0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(900f, var_1.b, var_1.b, 492f) - vec4<f32>(208f, 576f, -1707f, var_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, var_1.b, var_1.b, var_1.b)))))), vec2<i32>(-abs(1i), u_input.a), Struct_1(~(~var_1.d.x), 1584f, !global0.c, vec2<u32>(1u, 4294967295u), global0.e));
    global0 = var_2;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-547f)) * var_2.b) - var_2.b), 1466f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, var_2.b, global0.b)), vec3<f32>(var_2.b, 889f, global0.b)))), vec3<f32>(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-866f))), -102f), true)), vec3<bool>(any(func_4(var_2, vec4<f32>(var_2.b, -417f, 1000f, var_1.b), vec2<i32>(u_input.b, u_input.a), var_2).e) || true, false, !var_2.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b, 796f, -1000f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, global0.b, 189f), vec3<f32>(1080f, 1246f, -277f), global0.c.x))))), 49859u, ~u_input.b, 135f);
}

