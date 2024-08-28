struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    global0 = array<Struct_1, 23>();
    let var_0 = select(!(!vec3<bool>(arg_0.a || false, any(vec2<bool>(arg_1, arg_1)), !arg_1)), vec3<bool>(all(select(!vec4<bool>(arg_0.b.x, false, false, arg_0.c), !vec4<bool>(false, arg_1, true, arg_0.c), all(arg_0.b))), !arg_0.a, arg_0.b.x & false), 1i >= ~firstLeadingBit(25459i >> (u_input.a.x % 32u)));
    var var_1 = ~(-reverseBits(max(vec2<i32>(1i, 1i), vec2<i32>(0i, -10663i))));
    let var_2 = Struct_1(all(var_0.yx), select(select(select(arg_0.b, !var_0.yy, arg_1), vec2<bool>(!var_0.x, true), true), select(arg_0.b, select(!arg_0.b, var_0.yz, !arg_0.b.x), arg_0.b), select(arg_0.b, !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), var_0.yy), vec2<bool>(arg_1, u_input.a.x > 4294967295u))), !arg_1);
    var var_3 = var_2;
    return var_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 23>();
    var var_0 = vec2<u32>(60870u, arg_0.x);
    let var_1 = 1u;
    var var_2 = vec3<i32>(_wgslsmith_div_i32(~(-1i), ~(-2147483647i)), func_2(Struct_1(true, select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), false) << (74376u % 32u), ~(-32099i));
    var var_3 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), -abs(vec3<i32>(0i, var_2.x, var_2.x)));
    return var_0.x | _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 54811u, 946u, 0u), vec4<u32>(var_0.x, 1u, 17438u, 4294967295u))), ~(~_wgslsmith_div_u32(u_input.a.x, var_0.x)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1493f + -2013f)));
    var var_1 = _wgslsmith_f_op_f32(select(1f, var_0, true));
    var_1 = -1390f;
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_clamp_vec2_i32(~select(abs(vec2<i32>(-1i, -50258i)) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-50692i, 70370i), ~vec2<i32>(51987i, 1i), vec2<i32>(1i, 1i)), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_dot_vec2_i32(min(-vec2<i32>(2147483647i, -10433i), abs(vec2<i32>(-59093i, -44435i))), abs(~vec2<i32>(6368i, 1i))), 49574i), _wgslsmith_mod_vec2_i32(~vec2<i32>(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -2147483647i, -1i), vec4<i32>(-2147483647i, -1i, -14433i, -25364i))), countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-2147483647i, -43696i), vec2<i32>(-13229i, 15417i)), max(vec2<i32>(25802i, 19867i), vec2<i32>(-27536i, 0i))))));
    return (34189u >> (u_input.a.x % 32u)) << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, select(abs(u_input.a.x), u_input.a.x | u_input.a.x, true), _wgslsmith_mod_u32(13803u, _wgslsmith_div_u32(0u, u_input.a.x))), _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(u_input.a.x, 50533u)) & u_input.a.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 44604u, u_input.a.x), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(46839u, u_input.a.x), 32462u, func_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -2018f))) & max(select(~vec4<u32>(u_input.a.x, 54042u, 62781u, 5489u), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<bool>(false, false, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 32395u, u_input.a.x, u_input.a.x)) << (vec4<u32>(u_input.a.x, 1u, 58960u, 0u) % vec4<u32>(32u)))) << ((vec4<u32>(21486u, 4153u, u_input.a.x, u_input.a.x) >> (~vec4<u32>(func_3(), u_input.a.x, reverseBits(u_input.a.x), _wgslsmith_mod_u32(41671u, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-182f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1904f)), _wgslsmith_f_op_f32(trunc(-1000f))))));
    var var_2 = ~(max(35913i, -31569i) ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, 2147483647i), vec2<i32>(-11889i, -1i), true), vec2<i32>(1i, 1i)), abs(0i)));
    global0 = array<Struct_1, 23>();
    let var_3 = Struct_1(true, vec2<bool>(any(vec3<bool>(true, true, true)), !(!any(vec4<bool>(true, true, true, true)))), true);
    var var_4 = Struct_1(false, select(vec2<bool>(var_1 >= _wgslsmith_div_f32(var_1, -1477f), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 18933u, var_0.x)) > 2963u), vec2<bool>(true, true), all(!vec4<bool>(true, var_3.b.x, var_3.a, var_3.c))), any(select(vec4<bool>(var_3.a && false, !var_3.b.x, u_input.a.x != 123740u, var_3.c), select(!vec4<bool>(var_3.b.x, false, var_3.a, var_3.c), vec4<bool>(true, true, true, true), var_3.a), var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -600f))), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(var_1 + 1350f), true))), _wgslsmith_f_op_f32(-1189f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1)))), var_1), vec2<u32>(~var_0.x, var_0.x) | select(var_0.xy, ~var_0.wz ^ ~vec2<u32>(1u, u_input.a.x), any(var_3.b)), var_1, u_input.a.x);
}

