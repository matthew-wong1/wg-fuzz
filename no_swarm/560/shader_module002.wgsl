struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_3 = Struct_3(vec4<i32>(-22819i, 23990i, 1i, i32(-2147483648)), Struct_2(-752f, vec2<u32>(4294967295u, 1062u), false));

var<private> global2: f32 = -1279f;

var<private> global3: Struct_2 = Struct_2(559f, vec2<u32>(24675u, 46240u), true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_3;
    let var_1 = Struct_1(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(442f))))) + -830f));
    let var_2 = ~1u;
    global0 = ~(4294967295u ^ min(_wgslsmith_add_u32(4294967295u, abs(0u)), ~(~global1.b.b.x)));
    global1 = Struct_3(global1.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1140f + arg_3.b) + _wgslsmith_f_op_f32(var_0.b * -150f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_div_f32(global3.a, -764f))), _wgslsmith_div_vec2_u32(~global1.b.b & _wgslsmith_sub_vec2_u32(global3.b, vec2<u32>(var_2, 32913u)), vec2<u32>(min(0u, 3498u), ~global3.b.x)), arg_1.x));
    return !arg_1;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    global1 = Struct_3(vec4<i32>(arg_3, _wgslsmith_mult_i32(min(-1i, abs(-10519i)), _wgslsmith_mult_i32(global1.a.x & arg_2.a, 0i)), ~(_wgslsmith_add_i32(u_input.a.x, 0i) | 18772i), -arg_3), Struct_2(_wgslsmith_f_op_f32(881f * arg_0.x), global1.b.b >> (~(vec2<u32>(global3.b.x, global3.b.x) & global1.b.b) % vec2<u32>(32u)), all(func_3(arg_2, vec3<bool>(false, global3.c, global3.c), global3.a, Struct_1(-33616i, -824f)))));
    global1 = Struct_3(firstTrailingBit(vec4<i32>(-arg_2.a, firstTrailingBit(-arg_3), select(u_input.a.x, u_input.a.x, true) | arg_3, -u_input.a.x)), global1.b);
    global3 = Struct_2(439f, vec2<u32>(countOneBits(1u), global3.b.x), !(_wgslsmith_mod_i32(1i, ~(-62345i)) == arg_2.a));
    return _wgslsmith_div_vec2_u32(vec2<u32>(global1.b.b.x << (global3.b.x % 32u), global3.b.x), _wgslsmith_mult_vec2_u32(global3.b, vec2<u32>(_wgslsmith_div_u32(4294967295u, global3.b.x) << (global3.b.x % 32u), global3.b.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b, 1177f)), 297f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-696f, 421f) * -460f), -433f))), vec2<u32>(select(1u, ~global1.b.b.x, global1.b.c & true), global1.b.b.x) & ~select(func_2(vec3<f32>(global3.a, global3.a, 1452f), global1.b.c, arg_1, 1i), vec2<u32>(7891u, 7111u), all(vec4<bool>(global1.b.c, true, true, true))), global3.c);
    global3 = Struct_2(938f, ~abs(func_2(vec3<f32>(arg_1.b, -1704f, 125f), true, arg_1, global1.a.x)) | _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x) << (arg_0 % vec2<u32>(32u)), abs(vec2<u32>(arg_0.x, global3.b.x) << (vec2<u32>(global3.b.x, arg_0.x) % vec2<u32>(32u)))), (_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(step(940f, 374f))) >= _wgslsmith_f_op_f32(abs(-451f))) | var_0.c);
    var var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32((vec2<u32>(arg_0.x, var_0.b.x) | var_0.b) << (arg_0 % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~var_0.b, global1.b.b)), arg_0);
    return -603f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = arg_0;
    global0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(abs(16863u), 19513u, global3.b.x), ~((vec3<u32>(arg_1.b.b.x, global1.b.b.x, global1.b.b.x) | vec3<u32>(arg_1.b.b.x, arg_1.b.b.x, 44912u)) >> (~vec3<u32>(global3.b.x, 0u, global1.b.b.x) % vec3<u32>(32u))));
    var var_1 = select(!select(!select(vec4<bool>(arg_1.b.c, true, arg_1.b.c, global3.c), vec4<bool>(true, false, arg_1.b.c, arg_1.b.c), false), !vec4<bool>(false, arg_1.b.c, global1.b.c, global1.b.c), select(!vec4<bool>(true, true, true, arg_1.b.c), !vec4<bool>(true, global3.c, true, global3.c), any(vec4<bool>(global3.c, global3.c, arg_1.b.c, false)))), !vec4<bool>(true, global1.b.c, false, select(false, global3.c, true)), !(!(!(!vec4<bool>(arg_1.b.c, true, global3.c, false)))));
    var var_2 = 2147483647i;
    let var_3 = i32(-1i) * -arg_0.a;
    return Struct_2(_wgslsmith_f_op_f32(-arg_1.b.a), firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(abs(global1.b.b), min(global3.b, arg_1.b.b)), global1.b.b)), ~global3.b.x < arg_1.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(-abs(~u_input.a.x), _wgslsmith_f_op_f32(floor(-306f))), Struct_3(global1.a, Struct_2(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_u32(vec2<u32>(global3.b.x, 19698u), global3.b), Struct_1(u_input.a.x, global3.a))), vec2<u32>(1u, ~global3.b.x), any(select(vec2<bool>(true, true), vec2<bool>(global3.c, global3.c), vec2<bool>(false, global3.c))))));
    global0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, max(4294967295u, 27884u)), func_4(Struct_1(u_input.a.x, var_0.a), Struct_3(global1.a, global1.b)).b.x ^ 23452u, (global1.b.b.x << (4294967295u % 32u)) & var_0.b.x));
    let var_1 = var_0;
    let var_2 = u_input.a.x;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(global1.a.xw, _wgslsmith_add_vec2_i32(~(-global1.a.xy), global1.a.xx)), _wgslsmith_div_f32(1045f, -593f));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + var_0.a)))))), ~vec2<u32>(6340u | var_0.b.x, ~var_0.b.x) << (~var_1.b % vec2<u32>(32u)), !(global1.a.x <= global1.a.x));
    let var_5 = Struct_2(1686f, ~global1.b.b, !var_1.c);
    let var_6 = func_4(Struct_1(-var_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - -1375f)))), Struct_3(vec4<i32>(1i, -14543i, _wgslsmith_sub_i32(-var_3.a, ~var_2), i32(-1i) * -2147483647i), Struct_2(var_1.a, vec2<u32>(~4294967295u, _wgslsmith_sub_u32(6393u, 1u)), any(!vec2<bool>(global3.c, true)))));
    var_4 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_5.a, _wgslsmith_div_f32(var_3.b, -1187f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f - _wgslsmith_div_f32(-268f, 165f)))), var_5.b, all(select(vec3<bool>(var_1.c, var_1.c, true), !(!vec3<bool>(var_4.c, var_5.c, false)), !(!vec3<bool>(false, true, var_0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_clamp_i32(~global1.a.x, var_3.a, 1762i), _wgslsmith_dot_vec2_i32(~u_input.a | u_input.a, _wgslsmith_add_vec2_i32(countOneBits(global1.a.wx), global1.a.yz)), reverseBits(-2147483647i), reverseBits(firstTrailingBit(-30721i))));
}

