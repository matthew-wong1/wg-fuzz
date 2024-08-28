struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> i32 {
    global0 = !(~(countOneBits(arg_2) | arg_2) <= arg_2);
    global0 = any(!vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))));
    let var_0 = ~vec4<u32>(1u, abs(81973u), u_input.c, select(u_input.c, ~(~4294967295u), true));
    global0 = all(vec3<bool>(~(-u_input.a) < ~max(arg_1, 1i), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)) & true, any(vec3<bool>(true, true, true)) | true));
    global0 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    return u_input.e;
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_mult_i32(-301i, u_input.e);
    var var_1 = var_0;
    var_1 = countOneBits(-func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(185f, -1220f, 800f)))), _wgslsmith_sub_i32(0i, u_input.a) | var_0, var_0));
    var var_2 = Struct_4(Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(var_0, u_input.a, -1i, 6047i), max(vec4<i32>(-28561i, -1i, -1i, -2147483647i), vec4<i32>(1i, u_input.e, u_input.a, -22755i))), -(~vec4<i32>(0i, 29779i, -11993i, -2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-315f, 880f)) + _wgslsmith_f_op_f32(1000f - 2689f)))), 1u), !any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, -225f, 2682f, -447f)))), u_input.d.xz >> (vec2<u32>(~(~u_input.c), 4294967295u) % vec2<u32>(32u)));
    var_1 = _wgslsmith_sub_i32(var_0, var_2.a.a.x);
    return vec3<bool>(any(select(vec3<bool>(false, var_2.b, var_2.b), select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(false, true, var_2.b), var_2.b), all(vec4<bool>(false, var_2.b, var_2.b, var_2.b)))) || !(!any(vec2<bool>(true, false))), true, any(vec2<bool>(all(vec3<bool>(false, false, true)), true)) | var_2.b);
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2();
    var_0 = vec3<bool>(true, !var_0.x, !any(!(!vec4<bool>(var_0.x, var_0.x, false, true))));
    return reverseBits(~vec4<i32>(~_wgslsmith_mod_i32(u_input.a, u_input.e), ~u_input.e >> (_wgslsmith_mod_u32(u_input.c, u_input.d.x) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2904i, u_input.e), vec2<i32>(2147483647i, u_input.a))), 52751i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_vec4_i32(func_1(), abs(vec4<i32>(u_input.a, u_input.e, u_input.a, u_input.e) >> (vec4<u32>(0u, 0u, 4294967295u, u_input.d.x) % vec4<u32>(32u)))) >> (vec4<u32>(u_input.c, select(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.d.x)), abs(~0u), false), firstLeadingBit(~(~u_input.c)), ~15968u) % vec4<u32>(32u));
    let var_1 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), false), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(556f, -301f) + vec2<f32>(-407f, 1149f)) + vec2<f32>(183f, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(-960f + 655f), _wgslsmith_div_f32(1044f, 866f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-510f, -1632f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1667f, -2770f), vec2<f32>(-899f, -1561f), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-115f, 1000f) * vec2<f32>(-1564f, 1000f)), var_1.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(317f, 390f))))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(901f - -897f), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -477f))));
    var var_3 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-(~var_0.x), u_input.e, 0i, -22355i), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, -1i, var_0.x, 0i), max(vec4<i32>(2147483647i, var_0.x, 13766i, u_input.a), vec4<i32>(-2147483647i, 37265i, 31927i, u_input.e)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1490f + var_2.x)))), ~abs(1u));
    let var_4 = 1i;
    let var_5 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)), var_3.b))), Struct_1(~vec4<i32>(1i, i32(-1i) * -29709i, u_input.a, i32(-1i) * -11908i), _wgslsmith_f_op_f32(f32(-1f) * -199f), abs(u_input.b.x << (0u % 32u)) ^ _wgslsmith_mod_u32(u_input.c & u_input.c, ~var_3.c)), 2147483647i & (_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, -22873i, 2109i), var_0.ywx), vec3<i32>(2147483647i, 2147483647i, var_4)) << (~u_input.b.x % 32u)), u_input.d);
    var var_6 = vec3<bool>(false, any(select(select(vec2<bool>(false, var_1.x), select(vec2<bool>(false, false), vec2<bool>(true, true), var_1.x), vec2<bool>(true, true)), vec2<bool>(select(var_1.x, false, var_1.x), var_3.a.x != 0i), var_1.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1985f, var_3.b, var_3.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.b, var_5.a, -1000f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b.b, var_2.x, 883f) + vec3<f32>(var_5.a, var_3.b, 603f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, 1289f, var_2.x))))), !(_wgslsmith_f_op_f32(-var_5.a) <= _wgslsmith_f_op_f32(-var_5.a)))), var_0.xyx, u_input.d.yy);
}

