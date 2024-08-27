struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1169f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1748f + 1f))), -998f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2446f), 1f)));
    let var_1 = vec4<i32>(62877i, _wgslsmith_div_i32(_wgslsmith_div_i32(-1i, ~24094i), _wgslsmith_sub_i32(-min(u_input.b.x, u_input.b.x), -arg_0)), ~(-16413i << (_wgslsmith_div_u32(u_input.d, ~67635u) % 32u)), 2147483647i);
    let var_2 = Struct_3(Struct_2(select(var_1, select(firstTrailingBit(vec4<i32>(-18153i, u_input.a, -1i, -20080i)), vec4<i32>(u_input.a, 27742i, var_1.x, 2147483647i) & var_1, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true)), true || any(vec4<bool>(true, false, true, true)))), Struct_2(vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, ~u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, var_1.x), min(vec2<i32>(-1i, var_1.x), vec2<i32>(var_1.x, arg_0))), ~arg_0 | _wgslsmith_add_i32(-1i, var_1.x), _wgslsmith_mod_i32(arg_0, 44073i) ^ ~(-1i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + var_0.x), -380f, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))))), -760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f * _wgslsmith_f_op_f32(max(253f, 1000f)))), 1222f), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, 365f, false)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1505f - 954f) - _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -917f)))));
    var var_4 = Struct_1(true, ~u_input.c);
    return !(!select(!(!vec2<bool>(var_4.a, var_4.a)), !(!vec2<bool>(var_4.a, false)), any(vec2<bool>(var_4.a, var_4.a)) || true));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(~32386u, select(u_input.d, u_input.d, arg_0.x), 4294967295u, firstTrailingBit(u_input.c.x))), _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(47603u), reverseBits(u_input.c.x), ~87378u, _wgslsmith_mod_u32(u_input.c.x, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(60211u, 1u, u_input.c.x, 4294967295u), vec4<u32>(0u, u_input.d, 40336u, u_input.c.x), vec4<u32>(4294967295u, 1u, u_input.c.x, 0u))), any(func_3(6368i))), ~vec4<u32>(u_input.d, ~u_input.d, min(28837u, u_input.c.x), _wgslsmith_mult_u32(~u_input.d, ~u_input.d)));
    let var_1 = ~vec3<i32>(_wgslsmith_div_i32(1i << ((29677u << (var_0 % 32u)) % 32u), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), 2147483647i, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(0i, u_input.a)), _wgslsmith_mult_i32(u_input.a, u_input.a), ~u_input.b.x));
    global0 = _wgslsmith_div_f32(-541f, -620f);
    var var_2 = Struct_3(Struct_2(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_1.x), var_1.xx), (var_1.x >> (4294967295u % 32u)) | _wgslsmith_mod_i32(var_1.x, 19732i), 0i, ~(1i << (var_0 % 32u)))), Struct_2(_wgslsmith_div_vec4_i32(select(vec4<i32>(20613i, var_1.x, var_1.x, 16270i), vec4<i32>(var_1.x, u_input.a, -2147483647i, u_input.b.x) | vec4<i32>(u_input.a, -44661i, -11024i, 19223i), arg_0.x), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-790i, var_1.x, -1i, -41445i), vec4<i32>(-40571i, 79392i, 62874i, var_1.x)), -vec4<i32>(2147483647i, var_1.x, u_input.a, -66241i)))));
    let var_3 = Struct_3(Struct_2(var_2.a.a ^ ~(-vec4<i32>(0i, -56977i, var_2.b.a.x, -23757i))), var_2.a);
    return Struct_1(all(arg_0), ~(~(~u_input.c)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<u32>) -> bool {
    let var_0 = arg_1.x && (max(min(~4294967295u, u_input.c.x), arg_3.x) <= _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, 41962u), _wgslsmith_dot_vec2_u32(vec2<u32>(12730u, arg_3.x), vec2<u32>(arg_3.x, arg_2))), ~(~arg_2)));
    let var_1 = func_2(!vec2<bool>(arg_0.x && (var_0 | false), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f + -1858f)), 1f, -1246f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1181f, 180f, 1584f), vec3<f32>(-716f, 540f, 1509f), vec3<bool>(false, var_0, var_1.a)))))));
    let var_3 = Struct_1(arg_0.x | all(vec2<bool>(true, true)), u_input.c | vec2<u32>(~(~arg_2), 1u));
    global0 = -444f;
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -193f))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1190f, _wgslsmith_f_op_f32(min(-1202f, 2121f)), -604f, -439f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2335f, -1253f, 134f, 611f), vec4<f32>(1000f, -940f, 235f, -1115f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -722f, 410f, -920f))))));
    var var_1 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) + 1377f) < var_0.x) == all(!vec3<bool>(func_1(vec4<bool>(true, true, false, true), vec3<bool>(false, true, true), u_input.c.x, vec2<u32>(u_input.c.x, 23846u)), true, false));
    var_1 = all(select(!vec4<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, false)), -180f < var_0.x, select(false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, 0u < u_input.c.x, any(vec4<bool>(true, true, false, true)), true), true), true));
    var var_2 = _wgslsmith_div_f32(341f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1626f)))));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(1i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) >> (1u % 32u), u_input.b.x), u_input.a);
}

