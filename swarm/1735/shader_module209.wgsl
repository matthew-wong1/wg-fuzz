struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = all(arg_1);
    global0 = array<vec4<f32>, 18>();
    let var_1 = any(select(arg_1, arg_1, select(arg_1, select(vec4<bool>(arg_1.x, false, var_0, var_0), arg_1, false), any(vec2<bool>(arg_1.x, var_0))))) & any(!vec3<bool>(true, true, !var_0));
    let var_2 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(any(vec2<bool>(var_1, true)) | var_1, all(!arg_1.wx), var_1, !any(arg_1.wzx)), !(!arg_1), var_0), select(arg_1, arg_1, !arg_1));
    var var_3 = arg_2;
    return max(~(vec3<i32>(~3013i, -38877i, u_input.d) ^ ~(~vec3<i32>(var_3.a.a.x, 27076i, var_3.a.c))), ~(vec3<i32>(43186i, arg_0.c, reverseBits(arg_0.a.x)) >> (vec3<u32>(countOneBits(var_3.b.x), var_3.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.b, var_3.a.b), arg_2.b.xx)) % vec3<u32>(32u))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = array<vec4<f32>, 18>();
    var var_0 = u_input.b;
    let var_1 = select(46947u, firstLeadingBit(27618u), false);
    var var_2 = Struct_3(Struct_1(func_3(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, u_input.c.x, 2147483647i), u_input.c), 4294967295u, -1i), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, false, false), true), Struct_3(Struct_1(u_input.c, 4294967295u, arg_0), countOneBits(vec3<u32>(0u, u_input.b, var_1)), 1i)), ~31932u, firstTrailingBit(abs(u_input.c.x))), vec3<u32>(_wgslsmith_sub_u32(18324u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 0u, 1u), vec4<u32>(65111u, var_1, u_input.e, u_input.a)), 1u, true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_1, u_input.e), vec4<u32>(61491u, u_input.b, 1u, 21921u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), ~vec2<u32>(62699u, 34912u)), 0u), _wgslsmith_add_i32(firstTrailingBit(-func_3(Struct_1(u_input.c, var_1, -23448i), vec4<bool>(false, false, true, false), Struct_3(Struct_1(vec3<i32>(0i, 2147483647i, arg_0), 26233u, 3920i), vec3<u32>(var_1, var_1, u_input.a), 32016i)).x), firstLeadingBit(_wgslsmith_div_i32(0i, -2147483647i))));
    let var_3 = select(vec2<bool>(true, true), select(vec2<bool>(~var_2.c >= abs(-14340i), any(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !any(vec3<bool>(true, true, true))), true);
    return Struct_3(Struct_1(var_2.a.a, var_2.b.x, 1i), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.b, vec3<u32>(45491u, 24177u, 59405u)) | ~(~vec3<u32>(4294967295u, var_2.a.b, u_input.e)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(31780u, u_input.a, 1u)), var_2.b)), u_input.c.x);
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<f32>, 18>();
    let var_0 = Struct_1(vec3<i32>(~firstLeadingBit(u_input.c.x), ~(-(~11692i)), -(~1i)), 0u ^ ~_wgslsmith_div_u32(~40149u, u_input.b), firstLeadingBit(48256i));
    var var_1 = func_2(u_input.d);
    global0 = array<vec4<f32>, 18>();
    var var_2 = false;
    return func_2(-1i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    global0 = array<vec4<f32>, 18>();
    let var_0 = ~_wgslsmith_sub_i32(-(~func_1().a.c), arg_0.c);
    global0 = array<vec4<f32>, 18>();
    global0 = array<vec4<f32>, 18>();
    let var_1 = vec2<i32>(u_input.d, arg_2);
    return abs(_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(0u, 1u, u_input.a, 8938u) ^ vec4<u32>(64877u, u_input.e, 4294967295u, arg_0.b.x)), reverseBits(min(vec4<u32>(u_input.e, 1u, 0u, 1u), ~vec4<u32>(0u, 4294967295u, arg_0.a.b, arg_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(all(vec3<bool>(true, true, true)), true, !any(vec2<bool>(true, false)), (2147483647i >> (~u_input.b % 32u)) >= 1i);
    var var_1 = ~(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.a), _wgslsmith_div_u32(u_input.a, u_input.b), u_input.b), ~vec3<u32>(u_input.a, 4294967295u, 1u)) ^ ~vec3<u32>(abs(46973u), u_input.a, _wgslsmith_sub_u32(4294967295u, 37564u)));
    let var_2 = _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(308u, u_input.e, 14017u, 1u) ^ vec4<u32>(u_input.a, 1u, 62248u, 0u))), min(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4402u, var_1.x, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 8998u, u_input.b, u_input.e), vec4<u32>(var_1.x, var_1.x, u_input.b, var_1.x))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 1u), vec4<u32>(1u, 23115u, 83915u, 24568u)))));
    let var_3 = !(-402f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1190f, 598f))));
    global0 = array<vec4<f32>, 18>();
    var var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(~var_2), var_1.x, var_1.x, 1u), _wgslsmith_add_vec4_u32(select(~vec4<u32>(var_1.x, 27335u, u_input.a, u_input.b), vec4<u32>(17676u, 79530u, var_2, var_1.x) << (vec4<u32>(var_1.x, u_input.e, 18571u, var_1.x) % vec4<u32>(32u)), !vec4<bool>(false, var_3, var_3, var_3)), func_4(func_1(), Struct_1(vec3<i32>(-20084i, 0i, u_input.d), 15869u, u_input.d), u_input.c.x)) ^ countOneBits(vec4<u32>(0u, 45122u, var_1.x, 1u) ^ reverseBits(vec4<u32>(u_input.b, u_input.e, u_input.e, 0u))));
    var var_5 = u_input.e;
    var var_6 = Struct_2(func_1().b.x, func_1().a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(828f, _wgslsmith_f_op_f32(961f + 388f), -135f) + vec3<f32>(-202f, _wgslsmith_f_op_f32(603f - 1731f), _wgslsmith_div_f32(250f, -715f))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3251f), _wgslsmith_div_f32(1187f, -515f), _wgslsmith_f_op_f32(max(889f, -888f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1262f, -1453f, -1735f) * vec3<f32>(344f, 180f, -264f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-624f, 689f, 955f))), vec3<bool>(false, var_3, false))))), 24016i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_6.c.x)))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_6.c.x + 1f), var_6.c.x))), _wgslsmith_f_op_vec2_f32(-var_6.c.xy), -874f);
}

