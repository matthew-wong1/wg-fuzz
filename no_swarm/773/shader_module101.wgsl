struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(1u, 1u, 40536u, 31664u), vec4<u32>(1u, 4294967295u, 1211u, 67172u), vec4<u32>(4294967295u, 21527u, 0u, 4294967295u), vec4<u32>(47535u, 1u, 1u, 21306u), vec4<u32>(14667u, 4294967295u, 4294967295u, 3379u), vec4<u32>(14348u, 0u, 1u, 22139u), vec4<u32>(89276u, 0u, 9294u, 45785u), vec4<u32>(39718u, 2621u, 4294967295u, 4294967295u), vec4<u32>(83349u, 90644u, 13893u, 39480u), vec4<u32>(0u, 4294967295u, 0u, 59115u), vec4<u32>(4294967295u, 68346u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 3786u, 1u, 63061u), vec4<u32>(45565u, 25404u, 1u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 85106u), vec4<u32>(1u, 4294967295u, 83856u, 0u), vec4<u32>(1u, 0u, 1u, 31577u));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    global3 = Struct_1(true, -1746f, !(!vec2<bool>(all(vec2<bool>(false, true)), all(arg_3.xx))));
    global1 = array<vec4<f32>, 22>();
    var var_0 = ~u_input.b;
    global3 = Struct_1(global3.c.x, -1153f, !(!(!vec2<bool>(arg_2.d.c.x, true))));
    return arg_2.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = !vec4<bool>(true, false, any(vec2<bool>(false, all(global3.c))), global3.c.x);
    var var_1 = Struct_2(Struct_1(func_3(_wgslsmith_add_u32(u_input.a, 4684u), _wgslsmith_f_op_f32(trunc(1458f)), Struct_2(Struct_1(true, -1463f, global3.c), vec2<i32>(-1i, -1i), u_input.c.yy, Struct_1(global3.c.x, global3.b, vec2<bool>(true, var_0.x)), Struct_1(var_0.x, -255f, vec2<bool>(global3.a, true))), var_0) != _wgslsmith_dot_vec2_i32(vec2<i32>(8171i, 2147483647i), -vec2<i32>(57100i, 1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f * -693f)))), global3.c), vec2<i32>(-1i, i32(-1i) * -2024i), vec2<u32>(u_input.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14658u, 102569u, u_input.b.x), global2[_wgslsmith_index_u32(7568u, 16u)])) >> ((vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(12499u, u_input.c.x, u_input.b.x), u_input.c), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u, 16u)], vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.b.x))) | (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(89621u, 1u)) & ~u_input.c.xx)) % vec2<u32>(32u)), Struct_1(false, global3.b, !vec2<bool>(false, var_0.x)), Struct_1(false, _wgslsmith_f_op_f32(round(global3.b)), var_0.xw));
    let var_2 = var_1.d;
    let var_3 = global3.b;
    var var_4 = _wgslsmith_div_i32(-40527i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(var_1.b), ~vec2<i32>(var_1.b.x, var_1.b.x)), var_1.b.x)) ^ _wgslsmith_mod_i32(-2147483647i, -max(_wgslsmith_clamp_i32(var_1.b.x, var_1.b.x, var_1.b.x), -4092i));
    return var_1.d;
}

fn func_1() -> Struct_1 {
    let var_0 = 1877f >= global3.b;
    global2 = array<vec4<u32>, 16>();
    let var_1 = !vec4<bool>(all(global0[_wgslsmith_index_u32(1u, 5u)]), !all(!vec3<bool>(global3.c.x, true, global3.a)), select(global3.c.x, true, var_0), global3.c.x);
    global3 = func_2();
    let var_2 = Struct_2(func_2(), ~(~_wgslsmith_mod_vec2_i32(min(vec2<i32>(4179i, 1i), vec2<i32>(24757i, -28418i)), _wgslsmith_mult_vec2_i32(vec2<i32>(24376i, -14911i), vec2<i32>(-18815i, 43244i)))), vec2<u32>(~1u >> (_wgslsmith_div_u32(1u, ~25669u) % 32u), u_input.a), func_2(), Struct_1(global3.c.x, 302f, select(vec2<bool>(var_1.x && var_0, var_0), vec2<bool>(global3.c.x, !var_1.x), func_2().c)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.b, global3.b, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1111f, global3.b, global3.b))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-global3.b), 332f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2048f, global3.b, 876f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-769f, -996f, 1001f) * vec3<f32>(global3.b, global3.b, 339f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b)) - _wgslsmith_f_op_f32(global3.b - -2052f)), global3.b, 1210f)));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(466f)))), _wgslsmith_f_op_f32(f32(-1f) * -2148f)) + var_1.b);
    global0 = array<vec3<bool>, 5>();
    let var_3 = !(!var_1.c);
    global2 = array<vec4<u32>, 16>();
    global1 = array<vec4<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(global3.b)), -1284f, u_input.a, min(u_input.c.xz, countOneBits(~(~u_input.b.yy))), _wgslsmith_mod_vec3_u32(~abs(~vec3<u32>(u_input.b.x, 5698u, u_input.b.x)), u_input.c));
}

