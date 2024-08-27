struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(46783i, i32(-2147483648), 2147483647i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    global0 = u_input.a;
    var var_1 = u_input.c;
    global0 = firstLeadingBit(~(~u_input.a));
    let var_2 = vec3<bool>(all(!(!vec4<bool>(true, false, false, arg_0.a))) | var_0.d, var_0.d, true);
    return var_2.zz;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(755f, 1000f)) - 2228f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-463f))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(~(~25100i & _wgslsmith_mod_i32(13119i, u_input.a.x)), i32(-1i) * -5024i), global0.x);
    let var_1 = Struct_1(!(!all(vec2<bool>(true, false)) | false), -1i, global0.x, true);
    var var_2 = ~(~vec4<u32>(u_input.c, u_input.c, u_input.c, ~u_input.c | ~119557u));
    let var_3 = ~_wgslsmith_mult_u32(~_wgslsmith_add_u32(abs(32696u), _wgslsmith_add_u32(8795u, u_input.c)), 16752u);
    let var_4 = !(!(!(!var_1.d)) || ((func_3(var_1, Struct_1(var_1.a, 74403i, 9038i, false)) || all(vec3<bool>(true, false, var_1.a))) & false));
    return var_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = u_input.a;
    global0 = vec3<i32>(1i, ~func_2().c, arg_0.b);
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(384f, -2131f))), -1323f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(151f)), _wgslsmith_f_op_f32(-383f - 463f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, 1000f, -1000f)), vec3<f32>(-862f, 2030f, 1418f), true)))))));
    var var_1 = func_2();
    global0 = -_wgslsmith_div_vec3_i32(~(-_wgslsmith_clamp_vec3_i32(u_input.a, u_input.e.yyx, u_input.e.yww)), select(reverseBits(_wgslsmith_mod_vec3_i32(u_input.a, u_input.e.yxy)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 38130i, -1i), u_input.a, -u_input.e.xzy), !all(vec3<bool>(true, var_1.d, false))));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1((firstLeadingBit(-11503i) == (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, arg_1.b, u_input.d), vec3<i32>(global0.x, arg_0.c, arg_0.c)) | _wgslsmith_clamp_i32(39482i, 87554i, arg_0.c))) && arg_1.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, ~vec3<i32>(0i, arg_1.c, 87538i), vec3<i32>(1i, arg_1.b, global0.x))), ~max(u_input.a, ~u_input.e.xzy)), arg_1.c, !any(!select(vec4<bool>(arg_0.d, true, arg_1.a, false), vec4<bool>(arg_2.x, true, arg_1.a, false), vec4<bool>(true, true, arg_1.d, true))));
    global0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, var_0.c, 2147483647i) ^ min(u_input.e.yxx, u_input.e.yxx), u_input.e.xxx, vec3<i32>(25638i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 30430i, global0.x, global0.x), u_input.e), _wgslsmith_mod_i32(2147483647i, global0.x))), vec3<i32>(0i, -69743i, abs(-1i))), vec3<i32>(func_4(Struct_1(arg_0.d, arg_1.c, select(64298i, var_0.b, false), true)).b, 1336i, -(~27133i) ^ ~(~var_0.b)), _wgslsmith_clamp_vec3_i32(u_input.a, min(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.e.wxw, u_input.e.wyy, vec3<i32>(0i, 1i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a.x, var_0.c), u_input.e.xzz, u_input.e.zww), -u_input.a), -_wgslsmith_mod_vec3_i32(u_input.e.yzy, u_input.e.wwy)), u_input.e.yyx));
    let var_1 = func_4(Struct_1(all(func_1(Struct_1(arg_2.x, 14030i, arg_1.c, arg_2.x))), arg_0.b, func_2().c, true));
    global0 = (vec3<i32>(max(2147483647i, var_1.b), _wgslsmith_mult_i32(select(-1239i, var_1.b, var_0.a), ~arg_0.c), arg_1.c) ^ (firstLeadingBit(vec3<i32>(arg_1.b, arg_1.b, var_0.b)) | _wgslsmith_sub_vec3_i32(u_input.e.xxy, u_input.e.ywz))) << ((select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, 43927u), vec3<u32>(1u, u_input.c, 72589u) << (vec3<u32>(u_input.c, u_input.c, 4294967295u) % vec3<u32>(32u))), ~firstLeadingBit(vec3<u32>(u_input.c, u_input.c, 8932u)), !vec3<bool>(true, var_0.d, true)) & _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(21093u, u_input.c, 0u), vec3<u32>(37491u, u_input.c, u_input.c), arg_0.d), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 1u, 0u))), vec3<u32>(1986u, _wgslsmith_mult_u32(u_input.c, u_input.c), min(92031u, 38017u)))) % vec3<u32>(32u));
    var var_2 = func_4(Struct_1(true, u_input.e.x, _wgslsmith_add_i32(-92397i, _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(arg_1.b, 0i))), arg_0.d));
    return Struct_1(!func_3(Struct_1(var_0.d, 2147483647i, _wgslsmith_div_i32(arg_0.b, arg_1.c), arg_1.d), arg_1), arg_1.c, 2147483647i, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(true, global0.x, u_input.d, any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), func_1(Struct_1(true, -1405i, 2299i, true)), u_input.e.x > 0i))), func_4(func_2()), !select(vec3<bool>(true, any(vec3<bool>(false, true, true)), false), vec3<bool>(select(true, false, false), select(false, false, true), select(false, false, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))));
    var var_1 = func_2();
    global0 = firstLeadingBit(u_input.a);
    let var_2 = 1000f;
    var_1 = func_5(Struct_1(var_1.d, -51453i, _wgslsmith_div_i32(~2147483647i, func_4(Struct_1(true, global0.x, var_0.b, true)).b >> (23262u % 32u)), true), func_5(func_2(), Struct_1(true, -1i, 0i, func_1(func_2()).x), vec3<bool>(_wgslsmith_f_op_f32(-190f * 1218f) == _wgslsmith_f_op_f32(-var_2), false, !any(vec2<bool>(var_0.a, false)))), select(vec3<bool>(true || !var_1.a, false, any(func_1(Struct_1(var_1.d, var_0.b, -1i, var_1.a)))), select(select(!vec3<bool>(var_1.d, true, false), vec3<bool>(var_1.d, var_1.d, var_0.d), true), !vec3<bool>(true, var_1.a, var_0.d), !select(vec3<bool>(true, false, var_1.d), vec3<bool>(var_0.d, true, true), vec3<bool>(var_0.d, true, false))), vec3<bool>(true, true, true)));
    global0 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-select(u_input.a, vec3<i32>(2147483647i, -64373i, -32390i), !vec3<bool>(var_0.d, true, var_1.a)), u_input.a), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.e, ~vec4<i32>(u_input.a.x, global0.x, -13453i, u_input.e.x)), u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(-18850i, var_0.c), ~var_1.c)) ^ reverseBits(reverseBits(vec3<i32>(44994i, 69505i, -25313i))));
    let var_3 = Struct_1(true, 1i, _wgslsmith_mult_i32(var_0.c, func_4(Struct_1(false, var_1.b, u_input.a.x, true)).b) ^ 1i, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, -895f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))));
}

