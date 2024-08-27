struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(168f, 861f, -703f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(global0.x - arg_0.x);
    let var_1 = select(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true), !vec2<bool>(select(true, true, true), (982f == arg_0.x) | false), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(3038u, _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(48347u, 4294967295u, 32492u)), abs(4294967295u), _wgslsmith_div_u32(~48602u, 1u)), (select(vec4<u32>(1u, 1u, 53501u, 4294967295u), vec4<u32>(56813u, 1u, 42538u, 19890u), true) | max(vec4<u32>(1u, 1u, 80829u, 53657u), vec4<u32>(0u, 4294967295u, 1u, 0u))) << (vec4<u32>(1u, 4294967295u, ~1u, select(1u, 43842u, var_1.x)) % vec4<u32>(32u)));
    let var_3 = vec4<i32>(~max(~(-2147483647i), 1i), _wgslsmith_clamp_i32(2147483647i, -((u_input.a >> (4294967295u % 32u)) ^ _wgslsmith_div_i32(2147483647i, 2147483647i)), u_input.a), u_input.a, u_input.a);
    let var_4 = Struct_1(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_2.x, var_2.x) | var_2.yx), _wgslsmith_mult_vec2_u32(vec2<u32>(55376u, 1u), ~vec2<u32>(var_2.x, 0u))), true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(var_0, -371f, 1002f)))) + arg_0));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(~1u), true));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), 477f, _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(global0.x, -308f, 797f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, global0.x, -567f)))) - vec3<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(1156f, global0.x)), -1462f, _wgslsmith_f_op_f32(ceil(279f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(-816f, 1287f, -1007f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -923f))));
    let var_2 = ~0u;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(418f * -948f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(330f - -233f)))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(-1329f, -180f, global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, 757f, 563f)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -856f, -1020f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 741f, 1732f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1226f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -756f)))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_0 = Struct_5(!(!(!arg_2.b)) || arg_0, ~(-reverseBits(20940i)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, global0.x, _wgslsmith_f_op_f32(trunc(-1355f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-245f * -591f), _wgslsmith_f_op_f32(arg_1.x * global0.x), _wgslsmith_f_op_f32(-arg_1.x))))));
    let var_1 = -_wgslsmith_div_vec3_i32(countOneBits(-(~vec3<i32>(338i, u_input.a, u_input.a))), vec3<i32>(var_0.b, u_input.a, -1i));
    var var_2 = arg_2.a & arg_2.a;
    return any(!select(!vec2<bool>(false, arg_2.b), vec2<bool>(true, true), select(vec2<bool>(var_0.a, false), vec2<bool>(true, true), false))) && any(vec4<bool>(arg_2.a == _wgslsmith_div_u32(39913u, 57968u), !arg_2.b, false, !select(arg_0, arg_2.b, arg_2.b)));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -351f)))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 130f, 129f) * vec3<f32>(650f, -2071f, 575f))))))))));
    global0 = vec3<f32>(-1536f, arg_1.x, 1393f);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(sign(1235f))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(-933f, arg_1.x, -1018f))).x))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, global0.x) * vec3<f32>(global0.x, 694f, -1086f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-707f, 1039f, global0.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1016f, 1719f, 187f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, global0.x), vec3<f32>(850f, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_0)))))) - vec3<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, -954f, true)) + -400f))));
    return Struct_2(Struct_1(11762u, true));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5, arg_3: Struct_2) -> Struct_4 {
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1320f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(global0.x + -1794f));
    var var_1 = arg_0;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -229f), arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1892f)))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(829f, var_0.x, -179f))))).x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(218f, 758f, arg_1)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(130f, -1000f, 937f), vec3<f32>(var_0.x, global0.x, -210f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(834f, -1577f, global0.x) + vec3<f32>(var_0.x, -195f, -155f)))), var_1.a))));
    return Struct_4(arg_3.a.a, arg_1 >= 975f, max(reverseBits(~(~vec2<u32>(arg_3.a.a, arg_3.a.a))), abs(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, arg_3.a.a, arg_3.a.a), arg_3.a.a ^ arg_3.a.a))), _wgslsmith_div_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 103483u), vec2<u32>(49626u, arg_3.a.a))), vec2<u32>(arg_3.a.a, _wgslsmith_sub_u32(firstLeadingBit(arg_3.a.a), _wgslsmith_add_u32(arg_3.a.a, 339u)))), ~(-firstTrailingBit(countOneBits(vec4<i32>(u_input.a, u_input.a, arg_2.b, arg_2.b)))));
}

fn func_6(arg_0: Struct_4, arg_1: bool) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) + global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2()).x, -320f))))));
    var var_0 = 27724i;
    var var_1 = select(select(!(!vec2<bool>(false, arg_1)), !select(select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_0.b), vec2<bool>(arg_1, true)), select(vec2<bool>(arg_1, arg_0.b), vec2<bool>(arg_1, true), true), vec2<bool>(false, arg_1)), arg_1), vec2<bool>(select(arg_1, !arg_0.b, all(vec2<bool>(arg_0.b, true))), arg_1 | arg_0.b), vec2<bool>(true, arg_1));
    var_1 = !(!vec2<bool>(arg_1, -arg_0.e.x >= abs(u_input.a)));
    let var_2 = Struct_3(any(!select(!vec3<bool>(false, arg_1, false), select(vec3<bool>(arg_0.b, arg_1, var_1.x), vec3<bool>(false, arg_0.b, false), arg_1), !vec3<bool>(var_1.x, false, true))));
    return Struct_4(arg_0.d.x, true, vec2<u32>(firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(arg_0.a, 4294967295u))), arg_0.c.x), ~arg_0.d, vec4<i32>(u_input.a, ~arg_0.e.x, _wgslsmith_mult_i32(~2147483647i, firstLeadingBit(arg_0.e.x)), arg_0.e.x));
}

fn func_7(arg_0: Struct_4) -> Struct_5 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(708f)), global0.x, global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1713f, global0.x)) + 919f), _wgslsmith_f_op_f32(trunc(1290f)), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.x, global0.x)))))));
    let var_0 = select(select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, any(vec2<bool>(arg_0.b, true))), !(!select(vec2<bool>(true, arg_0.b), vec2<bool>(false, false), vec2<bool>(true, arg_0.b)))), !(!(!select(vec2<bool>(false, false), vec2<bool>(arg_0.b, false), vec2<bool>(false, false)))), func_4(true && (-19187i >= u_input.a), global0.zy, select(vec3<i32>(16809i, u_input.a, 28227i), vec3<i32>(0i, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, arg_0.a, 2877u) % vec3<u32>(32u)), !arg_0.b), arg_0.a).a.b | arg_0.b);
    let var_1 = Struct_5(arg_0.b, arg_0.e.x);
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x + 1f), 1459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-271f)) + _wgslsmith_f_op_f32(global0.x - global0.x))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1000f, -1375f))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(Struct_3(select(false, true, true)), global0.x, Struct_5(false, 0i), func_4(func_1(true, global0.xy, Struct_1(42134u, false)), vec2<f32>(-1265f, global0.x), vec3<i32>(u_input.a, u_input.a, -26630i) | vec3<i32>(11072i, u_input.a, 2147483647i), ~4294967295u)), any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, false)))));
    var var_1 = countOneBits(vec4<i32>(-2147483647i, ~(var_0.b & u_input.a) | (~0i ^ u_input.a), -(i32(-1i) * -30146i), countOneBits(u_input.a & _wgslsmith_sub_i32(var_0.b, u_input.a))));
    global0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(126f, 1023f)), _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(-2670f * _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f * global0.x)) + _wgslsmith_f_op_f32(floor(-978f))), _wgslsmith_f_op_vec3_f32(func_2()).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-439f, -1187f, -1131f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1149f, 915f, 2330f)), true))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(global0.x, -802f), global0.x, _wgslsmith_f_op_f32(global0.x + -1030f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-243f, global0.x, global0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(257f, global0.x, global0.x), vec3<f32>(-938f, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1611f, global0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, 481f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(500f, global0.x, -1000f), vec3<f32>(global0.x, 506f, -861f))), func_5(Struct_3(true), -486f, Struct_5(false, -33563i), Struct_2(Struct_1(19391u, var_0.a))).b)))), false)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1f), global0.x, -380f, global0.x);
    var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-2384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2()).x - 1193f), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -575f)), global0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-652f, var_2.x, -485f, 284f) * vec4<f32>(var_2.x, global0.x, -766f, global0.x)) * vec4<f32>(global0.x, -687f, -952f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, var_2.x, global0.x, global0.x)) + vec4<f32>(410f, var_2.x, -824f, -1684f)))));
    var var_3 = select(vec3<bool>(select(var_0.a, !(var_0.a & var_0.a), all(vec4<bool>(var_0.a, var_0.a, false, false))), true, !(var_2.x >= -950f)), !select(select(select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(false, false, var_0.a), vec3<bool>(false, true, var_0.a)), !vec3<bool>(true, false, var_0.a), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(var_0.a, var_0.a, false)), var_0.a), true), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, var_0.b & 45419i), var_0.b) <= u_input.a);
    let var_4 = Struct_1(1u, true);
    var var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(global0.x, -1963f, !(any(vec2<bool>(var_0.a, var_0.a)) | (false | var_3.x)))), (~_wgslsmith_div_vec3_u32(vec3<u32>(var_4.a, var_4.a, 8582u), vec3<u32>(4294967295u, var_4.a, 7839u)) ^ ~(~vec3<u32>(var_4.a, 4294967295u, var_4.a))) | min(vec3<u32>(max(11707u, var_4.a), ~var_4.a, firstTrailingBit(var_4.a)), ~select(vec3<u32>(var_4.a, var_4.a, 0u), vec3<u32>(1448u, 0u, 1u), var_3.x)));
}

