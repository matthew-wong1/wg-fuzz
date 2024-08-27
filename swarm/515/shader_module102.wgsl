struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(349f, 1244f), vec2<f32>(620f, -126f), vec2<f32>(803f, -268f), vec2<f32>(808f, 248f), vec2<f32>(810f, -1441f), vec2<f32>(1729f, 434f), vec2<f32>(1000f, 463f), vec2<f32>(743f, 988f), vec2<f32>(376f, 943f), vec2<f32>(-1048f, -349f), vec2<f32>(519f, -464f), vec2<f32>(1368f, 266f), vec2<f32>(182f, 550f), vec2<f32>(832f, -1000f), vec2<f32>(-1315f, 583f), vec2<f32>(646f, 936f), vec2<f32>(-421f, -879f), vec2<f32>(797f, 1198f), vec2<f32>(-788f, -2487f), vec2<f32>(-289f, 590f), vec2<f32>(-1064f, -557f), vec2<f32>(-1004f, -928f), vec2<f32>(461f, -212f), vec2<f32>(-566f, 880f), vec2<f32>(-2787f, 1000f), vec2<f32>(760f, -827f));

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(695f, -481f, -937f), vec3<f32>(-1588f, -113f, 1444f), vec3<f32>(520f, -518f, -2546f), vec3<f32>(-668f, -131f, 116f), vec3<f32>(-895f, -1219f, 1000f), vec3<f32>(-854f, -548f, 2601f));

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global0 = array<vec2<f32>, 26>();
    var var_0 = Struct_2(Struct_1(all(select(vec3<bool>(global2.a, arg_0, global2.a), vec3<bool>(true, true, global2.a), select(vec3<bool>(global2.a, arg_0, global2.a), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, arg_0)))), min(1u << (min(21907u, u_input.d.x) % 32u), ~1u), -abs(~vec4<i32>(2147483647i, -2147483647i, -1i, global2.e)), global2.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -10954i) & (vec2<i32>(33566i, 29926i) >> (u_input.d.zx % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(0i, -1i)), vec2<i32>(global2.c.x, u_input.c)))));
    return ~countOneBits(~u_input.d);
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(true, ~60504u, -vec4<i32>(global2.e, 1i, -1i, global2.c.x) >> (_wgslsmith_div_vec4_u32(~u_input.d, func_3(arg_0)) % vec4<u32>(32u)), 858f, -global2.e));
    var var_1 = Struct_2(Struct_1(global2.a, 30012u, -vec4<i32>(reverseBits(-14509i), global2.c.x, -25669i, -global2.c.x), 394f, global2.e));
    let var_2 = select(all(select(!select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), vec2<bool>(var_0.a.a, arg_1)), vec2<bool>(true != global2.a, global2.a | arg_1), vec2<bool>(global2.d > 244f, all(vec3<bool>(var_0.a.a, false, var_1.a.a))))), all(select(vec4<bool>(any(vec4<bool>(arg_1, true, true, true)), any(vec4<bool>(global2.a, arg_0, var_1.a.a, var_1.a.a)), false, all(vec2<bool>(var_0.a.a, var_0.a.a))), vec4<bool>(false, !global2.a, true, select(var_0.a.a, arg_1, true)), vec4<bool>(all(vec2<bool>(var_0.a.a, var_1.a.a)), global2.a | global2.a, arg_1, true))), global2.a);
    let var_3 = ~(i32(-1i) * -2147483647i);
    global0 = array<vec2<f32>, 26>();
    return !vec3<bool>(any(vec4<bool>(true, var_2 && var_1.a.a, all(vec4<bool>(arg_1, false, false, true)), arg_1)), ((1u ^ global2.b) >> (func_3(false).x % 32u)) >= ~_wgslsmith_dot_vec3_u32(u_input.d.wzy, u_input.d.zyz), !(!(false && global2.a)));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_3 {
    let var_0 = global2.d;
    var var_1 = vec3<bool>(any(vec3<bool>(global2.a, (i32(-1i) * -37575i) == firstTrailingBit(u_input.c), all(vec3<bool>(false, true, false)))), global2.a, global2.a);
    let var_2 = select(select(!vec4<bool>(true, true, any(vec3<bool>(true, var_1.x, false)), all(vec3<bool>(false, false, false))), select(!select(vec4<bool>(true, global2.a, true, var_1.x), vec4<bool>(global2.a, var_1.x, false, global2.a), global2.a), vec4<bool>(any(var_1.yx), global2.a, true, global2.a), select(vec4<bool>(true, true, global2.a, global2.a), !vec4<bool>(true, false, var_1.x, global2.a), true)), _wgslsmith_f_op_f32(trunc(arg_0)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))), select(select(!vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false || var_1.x, !global2.a, all(var_1.zy), var_1.x), ~arg_1 == _wgslsmith_div_u32(global2.b, 4294967295u)), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(all(vec3<bool>(var_1.x, true, var_1.x)), true, true, var_1.x && false), !any(vec3<bool>(false, global2.a, true))), vec4<bool>(any(func_2(global2.a, false)), all(select(vec4<bool>(false, var_1.x, global2.a, global2.a), vec4<bool>(false, false, false, false), vec4<bool>(global2.a, true, true, var_1.x))), false, false)), global2.a);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, 957f, arg_0))))))), abs(vec3<i32>(-(~u_input.c), global2.e, global2.c.x)), global2.e, Struct_3(Struct_2(Struct_1(!global2.a, firstTrailingBit(global2.b), global2.c, _wgslsmith_f_op_f32(global2.d - arg_0), _wgslsmith_clamp_i32(23101i, global2.c.x, u_input.a.x))), global2.d, select(~_wgslsmith_sub_vec2_u32(u_input.d.xw, u_input.d.zz), ~_wgslsmith_add_vec2_u32(u_input.d.yx, vec2<u32>(arg_1, arg_1)), vec2<bool>(func_2(var_2.x, global2.a).x, any(vec4<bool>(global2.a, false, var_2.x, false))))));
    global2 = var_3.d.a.a;
    return Struct_3(var_3.d.a, arg_0, vec2<u32>(~max(~0u, arg_1), _wgslsmith_mod_u32(arg_1, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.d.zyz, u_input.d.yyx), 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.d, ~u_input.b | (_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, u_input.d.x, global2.b, 4294967295u), u_input.d)) & 9208u));
    var var_1 = func_3(any(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(var_0.a.a.a, var_0.a.a.a), vec2<bool>(true, global2.a)), !vec2<bool>(var_0.a.a.a, false)))).x;
    var var_2 = any(select(vec2<bool>(_wgslsmith_mult_u32(global2.b, u_input.d.x) > _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(5432u, 4294967295u, var_0.a.a.b, 1u)), true), func_2(false && all(vec2<bool>(false, global2.a)), var_0.a.a.a).yx, select(select(vec2<bool>(global2.a, var_0.a.a.a), vec2<bool>(global2.a, var_0.a.a.a), 11018u < var_0.c.x), select(select(vec2<bool>(true, false), vec2<bool>(var_0.a.a.a, var_0.a.a.a), false), func_2(true, true).xy, select(vec2<bool>(true, var_0.a.a.a), vec2<bool>(false, var_0.a.a.a), global2.a)), false)));
    global0 = array<vec2<f32>, 26>();
    var_2 = var_0.a.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.c, _wgslsmith_mod_i32(u_input.c ^ var_0.a.a.c.x, -1i)) ^ var_0.a.a.e, _wgslsmith_add_i32(0i, _wgslsmith_mult_i32(23350i, -1i) >> (global2.b % 32u)), vec3<i32>(_wgslsmith_mod_i32(global2.e, ~u_input.c ^ _wgslsmith_dot_vec4_i32(vec4<i32>(37894i, u_input.a.x, 0i, var_0.a.a.e), global2.c)), ~_wgslsmith_dot_vec2_i32(max(var_0.a.a.c.yx, vec2<i32>(global2.e, 0i)), select(global2.c.xx, u_input.a, true)), abs(i32(-1i) * -19355i)), _wgslsmith_f_op_f32(exp2(var_0.a.a.d)), func_1(-722f, 133809u).a.a.e);
}

