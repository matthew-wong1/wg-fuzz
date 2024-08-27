struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = Struct_1(-min(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -23070i, -44309i, global0.a), vec4<i32>(u_input.b.x, global0.a, -2147483647i, -1i))), 22570i), _wgslsmith_add_i32(-u_input.a, _wgslsmith_mod_i32(global0.a, 1i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.c), global0.c)));
    return (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(~u_input.c, 0u, 70100u)) & u_input.c) & abs(_wgslsmith_mod_u32(u_input.c, countOneBits(~39155u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<u32>) -> vec4<bool> {
    var var_0 = false;
    var var_1 = any(vec3<bool>(all(!(!vec4<bool>(arg_1, arg_1, false, arg_1))), !all(vec2<bool>(false, true)), true));
    var var_2 = max(5799u, countOneBits(~abs(~13604u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(667f, _wgslsmith_f_op_f32(global0.c.x - global0.c.x))))));
    var var_4 = -global0.b;
    return !(!vec4<bool>(true | arg_1, arg_1 & false, true, !(34118u <= arg_2.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b.x, -32519i, _wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.xx), ~(-58310i)), ~(vec4<i32>(0i, 2147483647i, 1i, global0.a) ^ vec4<i32>(-2147483647i, -44085i, global0.b, 52201i))), _wgslsmith_add_i32(-(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(1i, global0.a)) << (~u_input.c % 32u)), 1i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-708f * 921f), _wgslsmith_f_op_f32(abs(global0.c.x)), _wgslsmith_f_op_f32(-137f * 887f)))))));
    var var_0 = global0.c.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - global0.c.x) * _wgslsmith_f_op_f32(-global0.c.x)))));
    var var_1 = Struct_1(-12046i, ~abs(firstTrailingBit(0i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.x, 396f))) + 892f), 620f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.c.x, global0.c.x))))))));
    var var_2 = !arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-global0.c.yz);
    return Struct_1(-(~6408i), i32(-1i) * -14209i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(global0.c)))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c;
    global0 = Struct_1(13671i, -2147483647i | max(global0.b, global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, -165f, global0.c.x), global0.c, vec3<bool>(false, false, false))) - vec3<f32>(global0.c.x, 1443f, -1229f)))));
    global0 = func_4(~max(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(16576u, 45438u), vec2<u32>(var_0, u_input.c)), ~vec2<u32>(1u, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(60713u, var_0))), vec2<u32>(_wgslsmith_mod_u32(var_0, 0u), func_2(true))), false, select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), !func_3(~83664u, all(vec4<bool>(false, true, false, false)), ~vec3<u32>(71410u, var_0, 37958u)), vec4<bool>((0u << (var_0 % 32u)) <= var_0, any(vec4<bool>(true, true, true, true)), 1392f < global0.c.x, false)), _wgslsmith_f_op_f32(-294f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -260f)))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1389f * global0.c.x) + _wgslsmith_f_op_f32(select(global0.c.x, -439f, true))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c + global0.c) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, 1253f, -2756f), vec3<f32>(-877f, global0.c.x, 1624f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global0.c.x, -2704f) * func_4(vec2<u32>(16162u, 1u), true, vec4<bool>(true, true, false, true), true).c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c.x, global0.c.x, global0.c.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, 637f, -1018f))))));
    var_1 = global0.c;
    return func_4(vec2<u32>(~u_input.c, _wgslsmith_mult_u32(u_input.c >> ((var_0 ^ u_input.c) % 32u), 25292u)), true, vec4<bool>(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_0, u_input.c), vec3<u32>(u_input.c, 51096u, 0u)) | 72170u, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 114601u, 2228u), vec3<u32>(var_0, 0u, var_0)), 16641u)).x, !(!(global0.a <= global0.a)), -331f < global0.c.x, func_3(~(~52452u), true, firstTrailingBit(vec3<u32>(4852u, var_0, 51300u))).x), all(func_3(firstLeadingBit(var_0 << (8630u % 32u)), true, ~(~vec3<u32>(660u, 67256u, u_input.c)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = Struct_1(arg_3, arg_2.a, arg_2.c);
    global0 = func_4(arg_0.ww, true, vec4<bool>(true, true, select(false, false, all(vec4<bool>(true, true, true, true))), all(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true))), _wgslsmith_div_i32(-15961i, 16948i) < -(arg_2.a | 0i));
    let var_0 = ~arg_0.x;
    let var_1 = func_3(min(arg_1.x, 42481u), false || all(vec3<bool>(true, true, true)), ~arg_0.xwy).xxw;
    global0 = arg_2;
    return arg_2;
}

fn func_6(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -2147483647i), 2147483647i), _wgslsmith_mod_i32(-select(-6347i, firstLeadingBit(u_input.b.x), true), -14886i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-654f, -532f)), _wgslsmith_f_op_f32(f32(-1f) * -1934f)), -572f, _wgslsmith_f_op_f32(trunc(func_1().c.x))))));
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(select(func_5(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_1, 4294967295u, u_input.c, arg_1)) >> (~vec4<u32>(arg_1, 4294967295u, 0u, u_input.c) % vec4<u32>(32u)), vec4<u32>(205u, firstTrailingBit(arg_1), u_input.c | 33787u, 6974u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 52370u, u_input.c, 81718u), select(vec4<u32>(48506u, u_input.c, u_input.c, 0u), vec4<u32>(1u, 23157u, arg_1, arg_1), false))), func_1(), _wgslsmith_div_i32(1i, u_input.b.x) ^ -_wgslsmith_mult_i32(var_0.a, 40856i)).c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(611f, 396f)))))), var_0.c.x, select(false, ~u_input.c >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 49723u), vec2<u32>(0u, 12684u)), true))), true));
    global0 = func_1();
    var var_2 = arg_2;
    return Struct_1(arg_2.a, arg_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * -1051f), _wgslsmith_f_op_f32(f32(-1f) * -1193f)), var_1, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-846f - 231f), any(vec3<bool>(true, false, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-428f, -1000f, -2239f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, global0.c.x)))))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, false), any(vec2<bool>(true, true))))), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c, ~u_input.c & u_input.c), 32088u), func_5(~vec4<u32>(1u, abs(18776u), ~u_input.c, _wgslsmith_sub_u32(u_input.c, 37644u)), firstTrailingBit(vec4<u32>(u_input.c ^ 71884u, u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)), 1u)), func_1(), u_input.b.x));
    global0 = Struct_1(global0.a >> (u_input.c % 32u), firstLeadingBit(18666i), _wgslsmith_f_op_vec3_f32(select(var_0.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(var_0.c)))), _wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(81709u, 1315u), false, vec4<bool>(true, true, true, false), false).c - _wgslsmith_f_op_vec3_f32(round(global0.c))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), _wgslsmith_sub_u32(~u_input.c, u_input.c | 25285u) != (1u ^ u_input.c))));
    global0 = Struct_1(~(i32(-1i) * -u_input.b.x) ^ _wgslsmith_dot_vec2_i32(u_input.b.yy, _wgslsmith_mult_vec2_i32(reverseBits(u_input.b.zy), vec2<i32>(u_input.b.x, var_0.b))), 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(vec2<u32>(u_input.c, u_input.c), true, select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), true).c.x, _wgslsmith_f_op_f32(411f + var_0.c.x), -318f) - global0.c));
    global0 = var_0;
    let var_1 = !(!func_3(~4294967295u, true, select(vec3<u32>(36354u, u_input.c, 4294967295u), vec3<u32>(10731u, u_input.c, u_input.c), true)).x != true);
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-2293f);
}

