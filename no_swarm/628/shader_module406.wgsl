struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(-1i, i32(-2147483648), 44614i, 4297i), vec4<i32>(-27i, -1i, 16173i, 0i), vec4<i32>(0i, 2147483647i, 8355i, -1i), vec4<i32>(7759i, -70671i, 61805i, 47264i), vec4<i32>(-1i, 1i, 0i, 1101i), vec4<i32>(-45652i, 68944i, -1i, 9574i), vec4<i32>(2147483647i, 24305i, -28373i, -60121i), vec4<i32>(24506i, 16171i, 1i, -12687i), vec4<i32>(46132i, 30584i, 0i, -17374i));

var<private> global2: u32 = 8212u;

var<private> global3: Struct_2;

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> vec4<i32> {
    global4 = select(select(!(!(!vec2<bool>(true, global4.x))), !(!select(vec2<bool>(false, false), vec2<bool>(true, global4.x), global4.x)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c, -30997i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2173i, -2147483647i), vec3<i32>(u_input.c, 41556i, -1i))) > -2147483647i), !select(vec2<bool>(true, !global4.x), vec2<bool>(-2147483647i != u_input.c, global4.x), (true && global4.x) != (4294967295u <= arg_2)), select(select(vec2<bool>(any(vec4<bool>(global4.x, false, global4.x, true)), !global4.x), select(select(vec2<bool>(global4.x, true), vec2<bool>(global4.x, global4.x), false), !vec2<bool>(global4.x, global4.x), any(vec2<bool>(false, false))), false), !select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, false), vec2<bool>(global4.x, global4.x)), vec2<bool>(global4.x, global4.x)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-global3.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - -1000f)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(floor(global0.a)));
    global4 = select(vec2<bool>(false, true), select(vec2<bool>(any(!vec3<bool>(global4.x, true, global4.x)), !any(vec2<bool>(global4.x, false))), select(vec2<bool>(all(vec3<bool>(false, global4.x, false)), all(vec4<bool>(global4.x, false, global4.x, false))), vec2<bool>(false || global4.x, 1u > u_input.b.x), !select(vec2<bool>(global4.x, false), vec2<bool>(false, true), vec2<bool>(global4.x, global4.x))), !(!vec2<bool>(global4.x, false))), false);
    return -vec4<i32>(-38039i, 1i, firstTrailingBit(~(~u_input.a)), 1i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = min(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1053f)), vec2<f32>(_wgslsmith_f_op_f32(abs(1204f)), -1171f))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1528f, arg_2.a, 1000f), global3.a)), arg_0.a), 35839u), global1[_wgslsmith_index_u32(u_input.d.x, 9u)]);
    var var_1 = all(select(select(!(!vec3<bool>(global4.x, true, false)), !vec3<bool>(global4.x, global4.x, false), (global4.x & false) && false), !select(!vec3<bool>(true, global4.x, false), !vec3<bool>(false, global4.x, false), true), false | all(!vec4<bool>(global4.x, false, true, global4.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a - vec3<f32>(1201f, arg_1.a, 1000f))) - vec3<f32>(-429f, arg_1.a, _wgslsmith_f_op_f32(floor(786f))))), -853f);
    let var_3 = var_0.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = func_2(Struct_1(global3.b), Struct_1(global3.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(392f)) * global3.a.x) + -1400f)));
    global4 = !(!select(!vec2<bool>(global4.x, global4.x), select(vec2<bool>(global4.x, true), vec2<bool>(false, false), global4.x), vec2<bool>(select(false, true, global4.x), !global4.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, -1722f, -1414f) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(791f)), _wgslsmith_div_f32(var_0.a, -109f))), -991f, var_0.a)), _wgslsmith_f_op_f32(-global0.a));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -930f)))));
    var var_2 = vec4<bool>(true, false, ~(~u_input.b.x) >= u_input.b.x, global4.x);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a - var_0.a), -1946f)) + 403f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(var_0.a - global0.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_2 {
    global3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), 540f))), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_div_f32(arg_0.a, global0.a)))), -733f), 140f);
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_f_op_vec3_f32(exp2(global3.a)))) - vec3<f32>(global0.a, arg_0.a, -724f)), arg_3);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_0;
    global1 = array<vec4<i32>, 9>();
    global1 = array<vec4<i32>, 9>();
    let var_1 = arg_1;
    global0 = func_2(Struct_1(var_0.a.x), func_1(-vec2<i32>(abs(-6661i), u_input.c)), func_1(abs(vec2<i32>(-1i, u_input.c) >> (_wgslsmith_mult_vec2_u32(arg_3.yz, vec2<u32>(18300u, var_1)) % vec2<u32>(32u)))));
    return func_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f + 1232f)), _wgslsmith_f_op_f32(min(638f, global0.a))))), func_1(max(vec2<i32>(u_input.c, 25209i) & vec2<i32>(u_input.c, u_input.c), firstLeadingBit(vec2<i32>(-38955i, 9242i))) << (vec2<u32>(~arg_3.x, _wgslsmith_mod_u32(arg_1, u_input.b.x)) % vec2<u32>(32u))), func_1(-_wgslsmith_mod_vec2_i32(~vec2<i32>(-74449i, u_input.a), func_3(arg_0.a.yz, Struct_2(vec3<f32>(-446f, -1535f, var_0.a.x), -758f), 0u).zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-154f);
    var var_1 = false;
    var var_2 = func_5(func_4(func_1(_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, u_input.c), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 22871i), vec2<i32>(u_input.a, 1i)))), global4.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.c, -398i)), -vec4<i32>(u_input.a, -4823i, -38513i, u_input.a)), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(~0u, 9u)], _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.d.x, 9u)]))), 1f), u_input.b.x, func_4(func_2(func_2(func_2(Struct_1(var_0.a), Struct_1(global3.a.x), Struct_1(318f)), func_1(vec2<i32>(-2147483647i, 2147483647i)), func_1(vec2<i32>(u_input.a, -1i))), Struct_1(global0.a), func_2(func_1(vec2<i32>(-1442i, -9314i)), Struct_1(376f), func_1(vec2<i32>(u_input.c, 22939i)))), true != select(select(global4.x, false, global4.x), all(vec3<bool>(global4.x, true, global4.x)), global4.x), _wgslsmith_div_i32(u_input.c, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.c), -u_input.c)), 1139f), ~vec4<u32>(u_input.e, ~u_input.b.x << (~0u % 32u), _wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_mod_u32(u_input.d.x, 0u)), 40259u));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_1(-1745f), Struct_1(global3.b), Struct_1(1000f)).a)));
    let var_3 = ~abs(~u_input.b);
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -478f, _wgslsmith_f_op_f32(round(func_5(Struct_2(vec3<f32>(global0.a, var_2.a, var_2.a), 912f), 9395u, Struct_2(vec3<f32>(-1465f, 115f, var_0.a), -792f), vec4<u32>(var_3.x, 1u, u_input.d.x, 4294967295u)).a))) * vec3<f32>(global3.a.x, func_4(Struct_1(-235f), all(vec4<bool>(global4.x, global4.x, global4.x, true)), max(14635i, u_input.c), _wgslsmith_f_op_f32(var_2.a + global3.a.x)).a.x, _wgslsmith_div_f32(-908f, var_0.a)))));
    let var_5 = abs(min(_wgslsmith_clamp_vec3_i32(func_3(vec2<f32>(-803f, global3.a.x), Struct_2(global3.a, -2174f), 8857u & u_input.d.x).wyy, vec3<i32>(-23527i, u_input.a, u_input.a), vec3<i32>(u_input.c & 0i, 0i, func_3(vec2<f32>(1318f, 1000f), Struct_2(vec3<f32>(-1023f, var_2.a, var_4.x), var_4.x), 5917u).x)), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(735f, global3.b), vec2<f32>(var_0.a, global3.b))), Struct_2(vec3<f32>(820f, -1822f, -339f), _wgslsmith_f_op_f32(-686f - global3.b)), var_3.x).wwz));
    let var_6 = vec3<i32>(_wgslsmith_mult_i32(~abs(var_5.x), countOneBits(func_3(var_4.zz, Struct_2(vec3<f32>(var_0.a, 1031f, global0.a), global0.a), u_input.d.x).x) << (17191u % 32u)), var_5.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + var_2.a)), u_input.b >> (abs(vec3<u32>(var_3.x, _wgslsmith_div_u32(7632u, 4294967295u), var_3.x << (var_3.x % 32u))) % vec3<u32>(32u)), min(vec3<u32>(countOneBits(var_3.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 0u, 0u), u_input.b), 1u), ~(~var_3)));
}

