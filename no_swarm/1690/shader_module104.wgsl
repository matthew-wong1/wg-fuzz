struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    global0 = arg_3.zyy;
    let var_0 = Struct_1(697f);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_3, arg_3) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -443f, _wgslsmith_f_op_f32(arg_1 * -1037f), _wgslsmith_f_op_f32(f32(-1f) * -277f)))), arg_3));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -352f))))) - 1619f));
    var var_1 = Struct_3(Struct_2(true, 1i), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(24569u, u_input.b), -1000f, 0i, vec4<f32>(global0.x, 1936f, var_0.a, var_0.a))) + _wgslsmith_f_op_f32(sign(-1215f)))), _wgslsmith_f_op_f32(-global0.x)), Struct_2((true | select(false, false, false)) || true, abs(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_add_i32(0i, -3182i), max(19910i, -15835i)))));
    let var_2 = false;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(var_0.a)));
    var var_4 = vec3<bool>(any(vec4<bool>(!(!var_2), false, false, select(var_2, !var_2, var_1.c.a))), !(var_2 & any(select(vec3<bool>(var_1.a.a, var_1.a.a, var_1.a.a), vec3<bool>(var_1.a.a, var_1.c.a, var_1.a.a), var_2))), var_1.c.a);
    return vec4<i32>(11776i, ~var_1.a.b, abs(var_1.c.b), var_1.c.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(true, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.yy, arg_0.xw), countOneBits(arg_1), _wgslsmith_mod_i32(arg_1, 16297i)), _wgslsmith_sub_vec3_i32(arg_0.wwz, min(vec3<i32>(arg_1, arg_1, 8039i), vec3<i32>(arg_1, -42669i, arg_1)))), arg_0.zzy));
    let var_1 = var_0;
    let var_2 = vec3<u32>(u_input.a, 27751u, max(_wgslsmith_div_u32(~1u, u_input.a), _wgslsmith_sub_u32(u_input.a, ~0u))) ^ vec3<u32>(62453u ^ min(u_input.a, 1u), 4790u, u_input.a);
    var var_3 = var_1;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 901f, 351f)) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 581f, -900f), vec3<f32>(-1709f, global0.x, 1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -724f, global0.x) + vec3<f32>(-464f, global0.x, global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -941f), 525f, _wgslsmith_f_op_f32(ceil(global0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 114f)) * vec3<f32>(1f, 1f, 1f)))));
    return Struct_1(694f);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = select(vec3<i32>(-47936i, select(arg_0.b, ~(arg_2 << (1751u % 32u)), arg_0.a), arg_0.b), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(-2147483647i), _wgslsmith_div_i32(18707i, 28110i), 1i), vec3<i32>(arg_0.b, -16241i, i32(-1i) * -41883i)) ^ ~abs(-vec3<i32>(-309i, 0i, arg_0.b)), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), false));
    let var_1 = any(select(vec4<bool>(true, (true || arg_0.a) & all(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), true || arg_0.a, !any(vec3<bool>(arg_0.a, true, false))), vec4<bool>(all(!vec4<bool>(true, false, arg_0.a, false)), any(select(vec3<bool>(arg_0.a, false, false), vec3<bool>(arg_0.a, arg_0.a, false), arg_0.a)), -var_0.x < -var_0.x, false), arg_0.a));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(arg_3.a, 1000f, 354f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -668f) - vec3<f32>(-584f, arg_3.a, 137f))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1008f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a - arg_3.a), -193f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-840f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a * global0.x)))));
    var var_2 = select(arg_0.b <= _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, arg_0.b), var_0), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 1i, 0i), var_0)), vec3<i32>(~(-2147483647i), -15965i, _wgslsmith_sub_i32(var_0.x, arg_0.b))), true, false);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1433f, -1870f, global0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2534f, arg_3.a, 437f), vec3<f32>(global0.x, arg_3.a, global0.x), vec3<bool>(arg_0.a, arg_0.a, var_1))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, -1000f, arg_3.a))))), _wgslsmith_div_vec3_f32(vec3<f32>(180f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -138f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1050f, -102f, 1134f) * vec3<f32>(-1609f, -1211f, 187f)) - vec3<f32>(arg_3.a, -485f, global0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 3486f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(130f, arg_3.a, 943f))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2.a.a;
    global0 = _wgslsmith_f_op_vec3_f32(func_5(Struct_2(!(arg_2.b.x <= _wgslsmith_f_op_f32(round(arg_2.b.x))), countOneBits(-1i)), arg_1, countOneBits(-10433i), func_4(-func_2(), 2147483647i)));
    var_0 = true;
    let var_1 = func_4(vec4<i32>(max(reverseBits(arg_2.a.b), arg_2.a.b), -1i, select(~arg_2.a.b, _wgslsmith_sub_i32(arg_2.a.b, -1i), true), -8752i), -_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.b, arg_2.c.b, 2147483647i, arg_2.a.b), vec4<i32>(0i, arg_2.a.b, arg_2.c.b, 0i)), -(arg_2.a.b | 75994i)));
    var var_2 = select(!select(vec2<bool>(true, false), !select(vec2<bool>(arg_2.a.a, true), vec2<bool>(arg_2.c.a, false), false), vec2<bool>(!arg_2.a.a, all(vec2<bool>(arg_2.c.a, arg_2.c.a)))), select(!select(!vec2<bool>(arg_2.a.a, false), select(vec2<bool>(arg_2.c.a, false), vec2<bool>(true, arg_2.a.a), false), false & arg_2.c.a), select(select(select(vec2<bool>(true, arg_2.c.a), vec2<bool>(arg_2.a.a, true), vec2<bool>(false, false)), select(vec2<bool>(arg_2.a.a, true), vec2<bool>(arg_2.c.a, arg_2.a.a), vec2<bool>(false, arg_2.c.a)), all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(arg_2.c.a, false), true), !vec2<bool>(true, arg_2.a.a)), !select(select(vec2<bool>(arg_2.c.a, arg_2.c.a), vec2<bool>(arg_2.a.a, false), vec2<bool>(arg_2.a.a, true)), vec2<bool>(true, true), !vec2<bool>(false, arg_2.c.a))), true | !arg_2.a.a);
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1069f, global0.x, 710f)));
    let var_0 = max(~arg_1.b, -(func_2().x << (u_input.b % 32u)));
    return select(!vec3<bool>(false, !(arg_1.a | arg_1.a), false), vec3<bool>(true, -arg_1.b >= _wgslsmith_sub_i32(0i, ~(-9430i)), any(vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a))), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(884f * _wgslsmith_f_op_f32(global0.x - 187f)));
    let var_0 = global0.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -451f), global0.x, global0.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, 476f), 150f), global0.x, -839f)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -164f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(1735f, -1654f, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(515f, 442f)), -870f, global0.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(select(false, true, true), true, true), func_6(func_1(vec3<u32>(0u, u_input.a, 37062u), vec3<u32>(u_input.b, 9193u, 1u), Struct_3(Struct_2(false, 30261i), vec4<f32>(global0.x, -787f, -1000f, 866f), Struct_2(true, -2147483647i))), Struct_2(true, -35773i))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(378f, global0.x, 1078f), vec3<f32>(679f, -677f, 447f), vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(356f, 175f, -910f), vec3<f32>(-321f, global0.x, 1000f))), vec3<f32>(-801f, -2348f, -1226f), true)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1946f, global0.x)))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 559f, 979f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -314f), vec3<f32>(global0.x, -2470f, global0.x), vec3<bool>(true, true, true)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(u_input.b, 72165u, u_input.a), vec3<u32>(max(4149u, 47645u), ~22715u << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 0u), firstTrailingBit(vec3<u32>(u_input.b, 4294967295u, u_input.b))))), _wgslsmith_f_op_f32(-271f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-685f * _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -475f)), global0.x, global0.x);
}

