struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(0u, 9560u), vec2<u32>(4294967295u, 3062u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 29323u), vec2<u32>(0u, 1u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = false;
    global0 = !vec4<bool>(true, any(select(vec4<bool>(global0.x, true, false, global0.x), !vec4<bool>(global0.x, global0.x, true, global0.x), true)), all(select(!global0.zxw, vec3<bool>(false, global0.x, global0.x), true)), global0.x);
    let var_1 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -20460i, 33692i), 20561i), 24494i);
    var_0 = !global0.x;
    var_0 = _wgslsmith_add_i32(-(var_1.x << (_wgslsmith_div_u32(4294967295u, 28359u) % 32u)), firstLeadingBit(var_1.x)) > _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-42118i, -19359i, var_1.x) & vec3<i32>(29477i, -1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, 225i), vec3<i32>(var_1.x, var_1.x, var_1.x))), -1i);
    return !vec3<bool>(true, -2147483647i < var_1.x, global0.x | global0.x);
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = select(vec4<bool>(global0.x, any(func_3()), !global0.x, global0.x), vec4<bool>(!global0.x, global0.x, false, !all(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x))), all(select(vec3<bool>(all(vec4<bool>(global0.x, false, true, true)), true, global0.x), !vec3<bool>(true, global0.x, global0.x), (global0.x | true) & func_3().x)));
    let var_0 = u_input.a;
    global1 = array<vec2<u32>, 5>();
    let var_1 = select(select(global0.xyx, vec3<bool>(true, true, true), global0.x), global0.zww, select(global0.ywy, func_3(), any(vec3<bool>(true, false, var_0.x < var_0.x))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1073f, arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))) + -1000f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-995f - 506f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1370f))), ~(~(~vec3<i32>(-35972i, -17469i, -55973i))), ~u_input.a.x, vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(23822i, 24539i, 23028i, 38558i)), vec4<i32>(1i, 1i, 1i, 1i)))), var_0);
    return Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_2.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, 870f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * var_2.c.a)), ~var_2.c.d >> ((vec3<u32>(var_2.c.c, 14087u, u_input.a.x) ^ var_0) % vec3<u32>(32u)), var_0.x, vec3<i32>(var_2.c.b.x, i32(-1i) * -78336i, -17980i >> (1u % 32u))), true, Struct_1(var_2.a.zz, var_2.c.d, _wgslsmith_mod_u32(~var_0.x, 59624u), min(var_2.c.b, var_2.c.b ^ (var_2.c.d & var_2.c.b))), vec4<bool>(global0.x, true, var_2.c.b.x <= _wgslsmith_div_i32(2147483647i, 2147483647i), all(vec2<bool>(true, var_1.x))), _wgslsmith_sub_u32(var_2.c.c, var_0.x));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(651f, -627f) + arg_2.c.a.x);
    var var_1 = func_2(3569f);
    global1 = array<vec2<u32>, 5>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2024f, _wgslsmith_f_op_f32(arg_1.b * -326f), var_0)))), u_input.a.x | _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.zx), ~_wgslsmith_mod_u32(arg_2.a.c, var_1.c.c)));
    global1 = array<vec2<u32>, 5>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(any(select(global0.yxy, !vec3<bool>(global0.x, true, true), !global0.wwx)), !(!(!global0.x)));
    global1 = array<vec2<u32>, 5>();
    var var_1 = -select(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(1264i, -1i, -1i)), vec3<i32>(1i, 1i, 1i), any(vec4<bool>(global0.x | false, func_1(true, Struct_4(vec3<f32>(-720f, -598f, 1991f), -469f, Struct_1(vec2<f32>(110f, 1135f), vec3<i32>(-1i, 1i, -2147483647i), u_input.a.x, vec3<i32>(-9797i, 1i, -16850i)), vec3<u32>(u_input.a.x, 70149u, u_input.a.x)), Struct_2(Struct_1(vec2<f32>(1599f, 355f), vec3<i32>(-27789i, 61153i, -42428i), 1u, vec3<i32>(-1i, 7556i, 25376i)), global0.x, Struct_1(vec2<f32>(1125f, 1592f), vec3<i32>(2147483647i, -72729i, -2630i), 0u, vec3<i32>(2147483647i, 1i, 37074i)), vec4<bool>(global0.x, false, true, true), u_input.a.x), 1u), true, true)));
    var var_2 = -_wgslsmith_div_vec3_i32(-(~(~vec3<i32>(1i, 57241i, var_1.x))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.x, 10516i), 1i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, var_1.x), i32(-1i) * -1i), _wgslsmith_add_i32(var_1.x << (0u % 32u), var_1.x)));
    var var_3 = Struct_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(178f + 1262f))) + _wgslsmith_f_op_f32(sign(719f)))).a, vec2<f32>(func_2(_wgslsmith_f_op_f32(trunc(-269f))).c.a.x, 1653f), u_input.a.yx, vec4<i32>(-var_1.x, var_1.x, var_2.x, func_2(380f).c.b.x));
    var_2 = vec3<i32>(var_2.x ^ (0i >> (var_3.c.x % 32u)), var_3.d.x, abs(0i));
    var var_4 = min(~(-var_2.x), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

