struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_3(select(vec3<bool>(false, any(vec4<bool>(true, global0.a.x, true, true)), global0.a.x), select(select(!vec3<bool>(global0.a.x, global0.a.x, true), select(vec3<bool>(true, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), false), vec3<bool>(false, global0.a.x, global0.a.x)), !(!global0.a), select(!global0.a, global0.a, !vec3<bool>(global0.a.x, global0.a.x, global0.a.x))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), -203f);
    global0 = Struct_3(var_0.a, -542f, -670f);
    var var_1 = select(vec3<u32>(_wgslsmith_div_u32(4294967295u, 2826u), 6948u, _wgslsmith_div_u32(u_input.e.x, 42487u)), min(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(85100u, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), u_input.e.xxy)), firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.e.xwx, u_input.e.wxx))), vec3<u32>(abs(u_input.a.x), u_input.a.x, _wgslsmith_dot_vec4_u32(max(u_input.e, vec4<u32>(4294967295u, 0u, u_input.a.x, 4294967295u)), ~u_input.e))), all(vec4<bool>(var_0.a.x, true, !global0.a.x, !all(vec4<bool>(global0.a.x, true, global0.a.x, false)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), 717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b), -341f)) + -1464f), _wgslsmith_f_op_f32(-global0.c));
    var_0 = Struct_3(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2231f), _wgslsmith_f_op_f32(-global0.b))) * 285f), -647f);
    return -_wgslsmith_clamp_i32(u_input.c, u_input.d.x, _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.d.x, u_input.d.x), u_input.d), -u_input.d));
}

fn func_2() -> vec4<bool> {
    global0 = Struct_3(select(select(select(select(global0.a, global0.a, global0.a.x), !global0.a, global0.a), global0.a, select(vec3<bool>(false, true, true), global0.a, true)), vec3<bool>(!global0.a.x, true, global0.a.x), 0i != u_input.d.x), global0.b, _wgslsmith_f_op_f32(step(global0.b, -728f)));
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(floor(-2250f)), _wgslsmith_f_op_f32(-450f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(abs(global0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global0.c)))));
    let var_0 = u_input.e.x;
    var var_1 = -_wgslsmith_mult_i32(reverseBits(28429i), ~func_3());
    var var_2 = !(!global0.a.yx);
    return !(!vec4<bool>(true, false, false, var_2.x));
}

fn func_1() -> Struct_2 {
    var var_0 = all(select(select(vec4<bool>(global0.a.x || global0.a.x, false, all(global0.a), true), !(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false)), func_2()), !vec4<bool>(true, u_input.b != u_input.d.x, all(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), any(global0.a)), !(!select(vec4<bool>(global0.a.x, false, global0.a.x, true), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), global0.a.x))));
    let var_1 = u_input.a.x;
    var var_2 = ~(-(-countOneBits(vec4<i32>(-55470i, -17421i, -2147483647i, 0i)) >> (u_input.e % vec4<u32>(32u))));
    var var_3 = Struct_3(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1111f, global0.c))), _wgslsmith_f_op_f32(-global0.b));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(525f, -782f, false)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.c, -259f), var_3.c), 448f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-374f)), 985f, var_3.b)), all(var_3.a.zz)));
    return Struct_2(!all(vec3<bool>(false, true, u_input.e.x == var_1)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-655f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1753f, arg_2.b, true)))), _wgslsmith_div_f32(-330f, _wgslsmith_div_f32(global0.b, -547f)), _wgslsmith_f_op_f32(f32(-1f) * -1834f)), vec4<f32>(148f, _wgslsmith_f_op_f32(268f * 628f), -1127f, _wgslsmith_f_op_f32(sign(global0.c)))));
    var var_1 = Struct_3(select(global0.a, !(!(!global0.a)), false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - -1684f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-900f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.b, -1028f, arg_0.a)), _wgslsmith_f_op_f32(floor(global0.b)))))), 1000f);
    let var_2 = arg_2;
    var var_3 = select(vec4<u32>(arg_1, abs(reverseBits(~var_2.a.x)), var_2.a.x, 4294967295u), vec4<u32>(0u, reverseBits(u_input.a.x), _wgslsmith_add_u32(0u, u_input.a.x), abs(_wgslsmith_add_u32(0u, u_input.e.x))), select(!select(!vec4<bool>(false, global0.a.x, true, var_2.c), !vec4<bool>(arg_3.a, false, var_2.c, arg_3.a), select(vec4<bool>(false, global0.a.x, false, true), vec4<bool>(arg_2.c, var_2.c, arg_0.a, false), vec4<bool>(var_1.a.x, true, true, arg_0.a))), !(!vec4<bool>(true, false, var_2.c, var_2.c)), vec4<bool>(_wgslsmith_f_op_f32(var_2.b + arg_2.b) >= _wgslsmith_f_op_f32(step(284f, -1001f)), global0.a.x, arg_2.a.x < ~u_input.a.x, _wgslsmith_f_op_f32(-var_2.b) >= 185f)));
    let var_4 = 950f;
    return Struct_3(vec3<bool>(true, any(var_1.a.xy), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c, -511f)))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 17197i;
    global0 = func_4(func_1(), ~(20712u << (u_input.a.x % 32u)), Struct_1(vec3<u32>(4294967295u, u_input.a.x, u_input.e.x), _wgslsmith_f_op_f32(trunc(global0.c)), any(vec2<bool>(global0.a.x, global0.a.x | false)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -41221i, u_input.d.x, -41627i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.c, 2147483647i), vec4<i32>(var_0, 0i, var_0, -2147483647i))), vec4<i32>(_wgslsmith_mult_i32(0i, u_input.b), -4643i, -37509i, firstTrailingBit(0i)))), Struct_2(global0.a.x));
    global0 = Struct_3(!vec3<bool>(all(global0.a), global0.a.x, global0.a.x), 1047f, global0.c);
    var var_1 = max(_wgslsmith_mod_u32(~(_wgslsmith_mult_u32(41300u, u_input.a.x) | ~u_input.a.x), u_input.e.x), 34454u & _wgslsmith_clamp_u32(0u, 82691u, ~1u));
    var var_2 = u_input.e.x;
    let var_3 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-1i), select(vec4<u32>(u_input.a.x, ~(~u_input.a.x), ~9085u, firstLeadingBit(u_input.e.x | u_input.a.x)), u_input.e >> (select(u_input.e, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 94855u, u_input.a.x, u_input.a.x), vec4<u32>(37504u, u_input.e.x, 4745u, u_input.a.x)), func_1().a) % vec4<u32>(32u)), !(global0.c < global0.b) != true), _wgslsmith_mod_vec2_u32(~u_input.e.yx, ~(~vec2<u32>(u_input.e.x, 58599u) ^ ~vec2<u32>(29343u, u_input.a.x))));
}

