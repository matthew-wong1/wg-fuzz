struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(42555i, -23386i), vec2<i32>(66677i, 0i), vec2<i32>(1i, 1i), vec2<i32>(60242i, 2147483647i), vec2<i32>(86627i, 0i), vec2<i32>(39137i, -41420i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(5331i, 3086i), vec2<i32>(2147483647i, -34303i), vec2<i32>(-1i, 33895i), vec2<i32>(-2044i, 2147483647i), vec2<i32>(33443i, -5013i));

var<private> global1: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>) -> f32 {
    global0 = array<vec2<i32>, 12>();
    global1 = all(select(vec2<bool>((u_input.d != -4343i) | false, true), vec2<bool>(true, true), true));
    global1 = (false | !all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))) && (any(vec2<bool>(11871u == u_input.a.x, true)) || !all(vec3<bool>(true, true, true)));
    global1 = true;
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.d << (69273u % 32u), 1i, ~(-11900i)), -17485i, u_input.d, reverseBits(~1i)), max(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.d, u_input.d, u_input.c, u_input.d), vec4<i32>(u_input.c, 10852i, u_input.d, u_input.d)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-2147483647i, -11530i, -6839i, u_input.c), vec4<i32>(u_input.c, -2147483647i, -15271i, 17096i), vec4<bool>(true, false, false, false)), abs(vec4<i32>(u_input.c, 0i, 82026i, -1i))))), vec4<i32>(u_input.c, i32(-1i) * -(~u_input.d), (_wgslsmith_mod_i32(1i, -2147483647i) | (u_input.d ^ 21565i)) << (_wgslsmith_div_u32(1402u, arg_0.x) % 32u), max(_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 43766i, -4552i, u_input.d), vec4<i32>(-34261i, u_input.c, u_input.d, 1i))), -_wgslsmith_div_i32(2147483647i, u_input.d))));
    return -465f;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_i32(~(~19759i), 1i);
    var var_1 = u_input.c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -1305f))), vec4<f32>(-758f, _wgslsmith_f_op_f32(max(-228f, arg_0)), arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -820f, -506f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, 997f, arg_0, 742f)))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -745f)), _wgslsmith_f_op_f32(641f + 1062f))), true, !vec4<bool>(select(true, true, true), any(vec3<bool>(true, true, false)), !all(vec4<bool>(true, true, true, true)), true));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.c, 1108f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(618f, 753f) * vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(var_2.b - _wgslsmith_f_op_vec2_f32(var_2.a.yz * var_2.a.wx))) + _wgslsmith_div_vec2_f32(var_2.b, vec2<f32>(417f, _wgslsmith_f_op_f32(-var_2.b.x)))), 1000f, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 498f))) <= 436f) & any(vec3<bool>(false, u_input.e > 8028u, true)), !select(var_2.e, !vec4<bool>(var_2.e.x, true, false, var_2.e.x), select(var_2.e, vec4<bool>(true, true, true, true), var_2.e)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(138f, _wgslsmith_div_f32(182f, arg_0)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, var_2.c), vec2<f32>(-2130f, arg_0)), var_2.b)))), arg_0, !(!any(vec4<bool>(var_2.e.x, false, true, true))), !(!vec4<bool>(false, var_2.e.x, var_2.e.x, var_2.b.x > 386f)));
    return var_2.e.zw;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = select(!(!select(vec2<bool>(false, true), func_3(arg_2.x, u_input.a.yx, -1598i, vec3<u32>(u_input.e, 4874u, u_input.e)), vec2<bool>(true, false))), select(vec2<bool>(func_3(_wgslsmith_f_op_f32(exp2(arg_2.x)), firstLeadingBit(vec2<u32>(u_input.a.x, u_input.b)), -22136i, abs(u_input.a)).x, arg_0.x == 1i), vec2<bool>(true, true), vec2<bool>(true, false)), true);
    global1 = all(vec3<bool>(false, all(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, var_0.x, true, true))), var_0.x));
    let var_1 = max(vec4<u32>(~(~(0u & u_input.a.x)), min(_wgslsmith_clamp_u32(u_input.b, u_input.e, 1u), 52257u) << (abs(min(0u, u_input.b)) % 32u), _wgslsmith_add_u32(u_input.a.x, 0u), ~0u), _wgslsmith_sub_vec4_u32(max(~vec4<u32>(4294967295u, 4294967295u, 2771u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 69331u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) | vec4<u32>(u_input.e, u_input.e, 62730u, 62211u))), countOneBits(~(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.b)))));
    var var_2 = ~4294967295u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_2.x, arg_2.x, arg_2.x) - vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -1039f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 681f, arg_2.x, 273f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1067f, -445f, arg_2.x, -1140f)))))), _wgslsmith_f_op_vec2_f32(-arg_2.zz), _wgslsmith_f_op_f32(f32(-1f) * -403f), any(select(!(!vec3<bool>(var_0.x, true, false)), !vec3<bool>(var_0.x, true, true), true)), select(select(vec4<bool>(var_0.x && false, true | var_0.x, var_0.x, var_0.x), !(!vec4<bool>(true, true, var_0.x, true)), false), vec4<bool>(any(vec2<bool>(false, var_0.x)), func_3(_wgslsmith_f_op_f32(arg_2.x * 230f), vec2<u32>(var_1.x, u_input.e), ~2147483647i, var_1.wzy & vec3<u32>(9673u, 0u, 1u)).x, false, var_0.x), vec4<bool>(!(var_0.x != false), select(true, 2147483647i <= arg_1, var_0.x), -764f >= _wgslsmith_f_op_f32(floor(-1346f)), var_0.x)));
    return var_3;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~(~(~_wgslsmith_mod_u32(u_input.e, ~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)));
    let var_2 = vec2<i32>(-45459i, select(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c), -10391i), ~11278i, arg_0.d));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(-401f, arg_0.b.x)), arg_0.b.x);
    let var_4 = 0u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1188f, var_3.x, -132f, -607f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-493f, var_3.x, -674f, -1129f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3.x) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(var_3.x * arg_0.b.x), 3057f), arg_0.a.yx))), 227f, arg_0.e.x, vec4<bool>(true, true, arg_0.e.x, u_input.b == (countOneBits(u_input.b) >> ((u_input.e << (var_4 % 32u)) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-306f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-211f, 1014f)) - _wgslsmith_f_op_f32(f32(-1f) * -1043f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b, u_input.e, 0u, u_input.b), u_input.a))))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-152f * -2274f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-550f)))), _wgslsmith_f_op_f32(-633f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(382f)))))), 1000f);
    var var_1 = func_4(func_2(vec2<i32>(-1i, u_input.c), -_wgslsmith_clamp_i32(u_input.d, u_input.c, u_input.d) ^ abs(u_input.c), var_0.xyy, firstLeadingBit(~vec2<i32>(u_input.d, 2147483647i) >> (~u_input.a.xx % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-529f, var_0.x)), var_0.x, vec3<i32>(-1i | ((i32(-1i) * -20071i) << (~u_input.b % 32u)), _wgslsmith_add_i32(firstTrailingBit(-18872i) >> ((4430u << (u_input.b % 32u)) % 32u), u_input.d), -14716i));
}

