struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<vec4<f32>, 16>;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<i32>(33089i, -1i)), Struct_2(vec2<i32>(13675i, 24979i)), Struct_2(vec2<i32>(-25969i, i32(-2147483648))), Struct_2(vec2<i32>(i32(-2147483648), 1i)), Struct_2(vec2<i32>(17793i, 0i)), Struct_2(vec2<i32>(-1i, -64048i)), Struct_2(vec2<i32>(11847i, 10869i)), Struct_2(vec2<i32>(8984i, -29687i)), Struct_2(vec2<i32>(0i, 2147483647i)), Struct_2(vec2<i32>(12594i, 1i)), Struct_2(vec2<i32>(-2452i, 1i)), Struct_2(vec2<i32>(2646i, -1i)), Struct_2(vec2<i32>(1i, 1i)), Struct_2(vec2<i32>(-1i, 16524i)), Struct_2(vec2<i32>(6344i, -26715i)), Struct_2(vec2<i32>(i32(-2147483648), 4522i)), Struct_2(vec2<i32>(i32(-2147483648), 34779i)), Struct_2(vec2<i32>(0i, 8959i)), Struct_2(vec2<i32>(37487i, -40416i)), Struct_2(vec2<i32>(-1i, 1i)), Struct_2(vec2<i32>(-28483i, 42815i)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.a, -43825i, 41599u);
    var_0 = arg_1;
    var var_1 = _wgslsmith_add_vec2_u32(min(min(countOneBits(vec2<u32>(31321u, arg_1.c)), vec2<u32>(arg_1.c, arg_1.c)), abs(vec2<u32>(18653u, arg_1.c)) << (~vec2<u32>(4294967295u, var_0.c) % vec2<u32>(32u))) << ((select(vec2<u32>(26733u, var_0.c) ^ vec2<u32>(63800u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_1.c, arg_1.c), vec2<u32>(0u, var_0.c)), !vec2<bool>(global2.x, arg_0.x)) >> ((countOneBits(vec2<u32>(109910u, arg_1.c)) & firstLeadingBit(vec2<u32>(15501u, var_0.c))) % vec2<u32>(32u))) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(~1u | var_0.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(83374u, var_0.c, 69796u), vec3<u32>(50582u, 80167u, 12526u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.a)))), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(0i, 1i, 46812i)), vec3<i32>(-1i) * -vec3<i32>(31872i, u_input.a.x, 2147483647i)), ~7747u);
    global2 = arg_0.yz;
    return select(arg_0.yy, !vec2<bool>(2147483647i >= abs(arg_1.b), any(select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(arg_0.x, global2.x, true, arg_0.x), global2.x))), any(vec4<bool>(true, global2.x, arg_0.x, !global2.x || global2.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    global2 = func_3(!arg_3.zzw, Struct_1(1f, 1i, 59129u));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(17055i, 0i, u_input.c)), vec3<i32>(-32902i, _wgslsmith_sub_i32(-34840i, u_input.d), arg_2), _wgslsmith_add_vec3_i32(vec3<i32>(-14160i, u_input.d, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, 2147483647i, arg_2), vec3<i32>(arg_2, u_input.b.x, u_input.c)))), -(~abs(vec3<i32>(u_input.d, 669i, u_input.d)))), -2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = vec2<bool>(global2.x, any(vec3<bool>(!global2.x, global2.x, any(vec4<bool>(global2.x, global2.x, global2.x, true)))) | (true == !global2.x));
    let var_1 = -u_input.b;
    let var_2 = vec4<i32>(~1i, ~arg_0.b, i32(-1i) * -1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.b, i32(-1i) * -1i), 49581i, -u_input.a.x)) ^ -abs(select(-vec4<i32>(u_input.a.x, -37759i, -63542i, arg_0.b), -vec4<i32>(u_input.b.x, var_1.x, 75652i, var_1.x), global2.x));
    var_0 = select(vec2<bool>(var_0.x, max(select(var_1.x, 16595i, global2.x), _wgslsmith_dot_vec4_i32(var_2, vec4<i32>(-37955i, 2147483647i, u_input.d, var_2.x))) >= -2147483647i), vec2<bool>(global2.x, !(4294967295u == _wgslsmith_add_u32(arg_0.c, 22732u))), select(vec2<bool>(true, true), !select(vec2<bool>(global2.x, var_0.x), vec2<bool>(global2.x, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), false));
    var_0 = !(!(!vec2<bool>(false, any(vec3<bool>(var_0.x, true, var_0.x)))));
    return Struct_2(_wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, func_2(vec4<f32>(arg_1, arg_0.a, 1095f, 141f), vec4<u32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), 2147483647i, vec4<bool>(false, var_0.x, global2.x, global2.x))), u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1923i, _wgslsmith_dot_vec2_i32(arg_1.a, arg_0.a), arg_0.a.x, -5592i)), vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-57776i, -62346i, 0i)), ~vec3<i32>(arg_1.a.x, 0i, arg_2.a.x)), i32(-1i) * -8310i, arg_2.a.x, arg_1.a.x)), ~(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 30521i, 2147483647i, 41852i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x, 17411i, arg_0.a.x, arg_1.a.x), vec4<i32>(arg_0.a.x, u_input.b.x, arg_2.a.x, arg_1.a.x)))));
    global3 = array<Struct_2, 22>();
    var var_1 = Struct_2(u_input.b);
    var var_2 = _wgslsmith_dot_vec3_u32(countOneBits(min(countOneBits(firstLeadingBit(vec3<u32>(4930u, 15264u, arg_3))), _wgslsmith_clamp_vec3_u32(vec3<u32>(7959u, arg_3, 12261u), vec3<u32>(14413u, arg_3, 0u), vec3<u32>(4294967295u, 7631u, arg_3)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(81551u, arg_3, arg_3), vec3<u32>(arg_3, arg_3, 4294967295u)))), vec3<u32>(47199u << (arg_3 % 32u), abs(~arg_3), arg_3));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -874f))), _wgslsmith_f_op_f32(f32(-1f) * -686f));
    return select(vec2<bool>(global2.x, global2.x && global2.x), vec2<bool>(true, true), func_3(select(!vec3<bool>(global2.x, false, true), select(!vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, true)), !vec3<bool>(global2.x, true, global2.x)), global2.x), Struct_1(var_3, 0i, min(~1u, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(func_4(global0[_wgslsmith_index_u32(~abs(1u), 20u)], Struct_2(~(-u_input.b)), func_1(Struct_1(1f, u_input.d, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f + -873f))), 0u), select(select(!func_4(Struct_2(u_input.b), Struct_2(u_input.b), Struct_2(vec2<i32>(u_input.d, -1i)), 0u), select(select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), global2.x), select(vec2<bool>(false, true), vec2<bool>(true, global2.x), global2.x), any(vec4<bool>(global2.x, global2.x, global2.x, true))), false), select(!vec2<bool>(global2.x, global2.x), !(!vec2<bool>(global2.x, global2.x)), true), true), true);
    global2 = !vec2<bool>(!any(vec3<bool>(global2.x, global2.x, true)), all(func_4(Struct_2(vec2<i32>(u_input.a.x, u_input.d)), Struct_2(u_input.a), Struct_2(u_input.b), 1u)));
    var var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(410f, 2014f, -405f), vec3<f32>(-1935f, -749f, 1065f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(227f, -2109f, 831f), vec3<f32>(1045f, 942f, 644f), vec3<bool>(global2.x, true, global2.x)))))))), -(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-48340i, 2147483647i, 0i, -1i), vec4<i32>(1i, -5125i, 1i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2658f, -1071f)) + _wgslsmith_f_op_f32(-3137f - -242f)), 593f, -562f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(695f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1057f + -668f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f - -182f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -191f))), 321f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1314f, -171f, 210f), vec3<f32>(115f, 354f, -1766f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(194f, 175f, 1000f)))))));
}

