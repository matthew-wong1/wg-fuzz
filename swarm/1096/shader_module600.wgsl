struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec3<bool>(all(vec2<bool>(true, true)), false & (abs(~1u) == ~(~u_input.a)), false != any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))));
    var var_1 = Struct_1(1189f, ~select(vec4<u32>(u_input.d << (u_input.d % 32u), 1u, 1u, ~1u), vec4<u32>(1u, abs(u_input.d), reverseBits(u_input.a), 52989u), false), u_input.c.zy);
    return select(!var_0.zy, select(select(!var_0.zz, select(vec2<bool>(true, false), select(var_0.zy, vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false)), var_1.a <= var_1.a), false), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), !(!var_0.zy), var_0.xz), !var_0.yx), !(any(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, false, true, false), false)) & var_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(118f)))), 613f), ~vec4<u32>(u_input.a, 1u, ~4294967295u, firstLeadingBit(abs(u_input.d))), countOneBits(-arg_2.zx));
    var var_1 = var_0;
    let var_2 = select(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), select(!vec2<bool>(select(true, false, true), true), vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(false, true)), select(func_3(), vec2<bool>(true, true), select(vec2<bool>(true, any(vec4<bool>(false, false, false, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true))));
    let var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, _wgslsmith_mod_i32(-7059i, ~(u_input.c.x >> (arg_0.b.x % 32u))), 92131i), u_input.c, abs(u_input.c));
    var var_4 = var_0;
    return var_2.x;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-215f, -1000f)) + -1713f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(231f + 273f), -1415f)), 1f, select(func_2(Struct_1(1762f, vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x), vec2<i32>(u_input.c.x, u_input.c.x)), u_input.d, vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x)), false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(419f)) + -977f)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, 1194f, 520f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1699f, var_0)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1915f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 269f, var_0)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(2375f, var_0, 1027f) - vec3<f32>(var_0, 748f, -615f))))) + vec3<f32>(var_0, -370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -1281f) - _wgslsmith_f_op_f32(var_0 * var_0)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(-var_1.x))));
    var var_3 = 63541u;
    var var_4 = vec3<i32>(17866i, _wgslsmith_sub_i32(u_input.c.x, abs(41893i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-5812i, -900i) & select(vec2<i32>(u_input.c.x, u_input.b.x), u_input.c.zx, true), select(vec2<i32>(2147483647i, -2147483647i), -u_input.b, false)));
    return u_input.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = min(vec3<i32>(~20654i, -11463i, _wgslsmith_clamp_i32(-(arg_1.c.x | -2147483647i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.c.x, arg_1.c.x, -29809i, -18283i)), ~vec4<i32>(arg_1.c.x, 2147483647i, u_input.b.x, 169i)), _wgslsmith_div_i32(reverseBits(u_input.b.x), 0i))), abs(~vec3<i32>(290i, u_input.c.x, u_input.b.x) | -u_input.c));
    var_0 = 1u;
    let var_2 = !(!select(all(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true)), arg_1.c.x != var_1.x)) == true;
    return Struct_1(arg_2.x, vec4<u32>(u_input.a, ~_wgslsmith_mod_u32(37584u, arg_1.b.x), ~39391u | u_input.a, reverseBits(4294967295u >> (arg_1.b.x % 32u))) << (vec4<u32>(0u, ~_wgslsmith_mod_u32(u_input.a, 0u), select(u_input.d, 74365u, true) << (48288u % 32u), 49712u) % vec4<u32>(32u)), -vec2<i32>(_wgslsmith_mult_i32(var_1.x, _wgslsmith_mult_i32(-1i, 31382i)), 10352i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(975f + _wgslsmith_div_f32(473f, -1108f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-227f, -1616f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(222f))))), Struct_1(_wgslsmith_f_op_f32(round(-584f)), vec4<u32>(firstTrailingBit(func_1(vec2<u32>(1u, u_input.d))), 6156u, 0u, u_input.a), abs(u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(128f, -1328f, 2629f, 404f) + vec4<f32>(429f, -688f, 2393f, -279f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2934f, -173f, -353f, 758f), vec4<f32>(-1279f, 2882f, -778f, 1413f))), vec4<f32>(224f, -883f, 930f, -269f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-660f - var_0.a), ~abs(~countOneBits(var_0.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(select(u_input.c.x, u_input.b.x, true), _wgslsmith_div_i32(-1837i, u_input.b.x))), vec2<i32>(_wgslsmith_add_i32(u_input.c.x, ~2972i), 1i)));
    var var_2 = u_input.a > u_input.a;
    var var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, var_0.a))), func_4(var_1.a, Struct_1(-1085f, _wgslsmith_mult_vec4_u32(vec4<u32>(34819u, var_0.b.x, u_input.d, u_input.d), ~vec4<u32>(1u, 113807u, u_input.d, 4294967295u)), ~vec2<i32>(1i, 1i)), vec4<f32>(-839f, var_0.a, var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-993f, -1126f, 734f, var_0.a))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -525f, -1584f)))))));
    var var_4 = any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(770f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1549f - var_0.a) + _wgslsmith_f_op_f32(-881f + -114f))))), reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(26880i, 0i, -1i, 39079i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.c.x, -1i, u_input.c.x, 26813i), vec4<i32>(var_0.c.x, var_0.c.x, var_1.c.x, var_3.c.x))), u_input.c.x, u_input.c.x, 0i)));
}

