struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: Struct_2;

var<private> global2: bool;

var<private> global3: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(6810u, 0u, 4294967295u, 1u), vec4<u32>(81684u, 1u, 1u, 4294967295u), vec4<u32>(4317u, 5668u, 2698u, 7285u), vec4<u32>(1u, 0u, 42335u, 49029u), vec4<u32>(93928u, 1u, 4294967295u, 29532u), vec4<u32>(93284u, 4294967295u, 14426u, 1u), vec4<u32>(10859u, 38036u, 4294967295u, 66127u), vec4<u32>(4294967295u, 32455u, 1424u, 32416u), vec4<u32>(17226u, 37580u, 4294967295u, 33190u), vec4<u32>(1u, 72538u, 29945u, 19393u), vec4<u32>(27855u, 54355u, 4294967295u, 1u), vec4<u32>(1u, 1u, 15951u, 3944u), vec4<u32>(324u, 0u, 0u, 3309u), vec4<u32>(1u, 4294967295u, 94274u, 0u), vec4<u32>(2187u, 41667u, 57313u, 1u), vec4<u32>(1u, 0u, 43977u, 4294967295u), vec4<u32>(0u, 4294967295u, 67587u, 4294967295u), vec4<u32>(0u, 4294967295u, 134707u, 1u), vec4<u32>(1u, 0u, 7691u, 4507u), vec4<u32>(57178u, 0u, 0u, 43724u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = any(global1.e);
    global1 = arg_0;
    let var_1 = ~4294967295u;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(776f + -810f), _wgslsmith_f_op_f32(f32(-1f) * -1713f))), -957f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(226f)), -477f)))))));
    var var_3 = _wgslsmith_div_i32(-10617i ^ _wgslsmith_div_i32(global1.d.a << (abs(var_1) % 32u), ~1i), 2147483647i);
    return var_2.x;
}

fn func_3() -> vec3<i32> {
    let var_0 = ~u_input.a;
    global1 = Struct_2(global0[_wgslsmith_index_u32(~36814u, 7u)], global1.b, ~(global1.b.yx >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(56261u, 20745u), abs(vec2<u32>(var_0.x, 33404u)), select(vec2<u32>(0u, 0u), global1.c, global1.e.x)) % vec2<u32>(32u))), Struct_1(~max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -13502i, 2147483647i, 21254i), vec4<i32>(-27632i, -2147483647i, 28372i, -3448i)), 1i)), !vec2<bool>(true, u_input.c.x >= abs(u_input.c.x)));
    global0 = array<Struct_1, 7>();
    var var_1 = vec3<u32>(abs(select(_wgslsmith_mod_u32(~8789u, global1.c.x), reverseBits(~var_0.x), all(!vec3<bool>(global1.e.x, true, global1.e.x)))), ~max(_wgslsmith_mod_u32(var_0.x | 4294967295u, 0u), _wgslsmith_div_u32(global1.b.x, min(1u, 13473u))), 0u);
    var var_2 = u_input.c.x;
    return _wgslsmith_div_vec3_i32(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(global1.d.a, -1i, u_input.c.x), vec3<i32>(2147483647i, u_input.c.x, -1i))) << (vec3<u32>(_wgslsmith_mult_u32(1u, 21794u), var_0.x, ~max(16185u, u_input.a.x)) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, _wgslsmith_div_i32(abs(min(4662i, u_input.c.x)), u_input.c.x), ~u_input.c.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = 647f;
    var var_1 = Struct_2(global1.a, ~(~vec3<u32>(u_input.a.x, 4294967295u, 1u)) ^ ~_wgslsmith_add_vec3_u32(~global1.b, _wgslsmith_div_vec3_u32(vec3<u32>(global1.c.x, global1.c.x, 1u), u_input.a.xyx)), min(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(u_input.a.x, global1.b.x)), abs(u_input.b)) >> (vec2<u32>(global1.b.x << (global1.b.x % 32u), u_input.a.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~u_input.b, ~u_input.b)), Struct_1(2147483647i), vec2<bool>(true, !all(select(vec3<bool>(global1.e.x, false, false), vec3<bool>(false, global1.e.x, global1.e.x), global1.e.x))));
    let var_2 = select(!select(!select(vec3<bool>(arg_2, false, var_1.e.x), vec3<bool>(true, arg_2, false), false), !select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, global1.e.x, false), true), vec3<bool>(select(false, global1.e.x, arg_2), false, any(vec3<bool>(false, true, false)))), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, var_1.e.x, arg_2), vec3<bool>(global1.e.x, false, false)), vec3<bool>(true, global1.e.x, global1.e.x), select(vec3<bool>(global1.e.x, arg_2, true), vec3<bool>(true, var_1.e.x, true), global1.e.x)), vec3<bool>(select(false, global1.e.x, global1.e.x), arg_2 || arg_2, true), !var_1.e.x), vec3<bool>(_wgslsmith_f_op_f32(round(1000f)) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), !global1.e.x, true)), true);
    let var_3 = !vec2<bool>(arg_2, true);
    let var_4 = Struct_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.x, 7145i, arg_1.x, u_input.c.x), vec4<i32>(-23016i, 8809i, global1.d.a, var_1.d.a), vec4<bool>(false, false, var_3.x, var_3.x)), -vec4<i32>(arg_0.x, var_1.d.a, -1i, global1.d.a)), -2147483647i), arg_1.x), Struct_1(1i));
    return ~countOneBits(_wgslsmith_div_i32(-u_input.c.x, 2147483647i));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(507f, _wgslsmith_f_op_f32(func_2(Struct_2(global0[_wgslsmith_index_u32(select(u_input.b.x, global1.c.x, false), 7u)], vec3<u32>(97381u, global1.c.x, 4294967295u), vec2<u32>(98259u, u_input.a.x), Struct_1(-2147483647i), vec2<bool>(global1.e.x, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(-738f - -411f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)));
    global2 = true;
    let var_1 = func_4(vec2<i32>(1i, global1.d.a), func_3(), global1.e.x);
    let var_2 = ~select(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, func_3().x), -1i ^ min(2147483647i, global1.d.a)), -var_1, true);
    var var_3 = arg_0.x;
    return 63680u & _wgslsmith_mult_u32(4606u, abs(4294967295u >> ((1u & u_input.b.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 223f, -434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(675f))))));
    var var_1 = !(!select(vec2<bool>(u_input.a.x >= 4294967295u, global1.e.x || false), global1.e, global1.e.x));
    global2 = all(vec2<bool>(!(var_0.x > -170f), false));
    var var_2 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global1.b, u_input.a.yyx, u_input.a.zxw), _wgslsmith_sub_vec3_u32(u_input.a.zxy, vec3<u32>(4294967295u, global1.b.x, 50870u))), _wgslsmith_sub_u32(685u ^ global1.c.x, global1.b.x)), _wgslsmith_clamp_u32(7321u, ~func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-270f, var_0.x)))), ~4294967295u));
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-494f - -1370f))))), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(global1.d.a), reverseBits(u_input.a.xxw), vec2<u32>(global1.b.x, u_input.b.x), global0[_wgslsmith_index_u32(1u, 7u)], vec2<bool>(global1.e.x, false)))), var_0.x), ~(reverseBits(reverseBits(vec4<u32>(u_input.a.x, global1.b.x, u_input.b.x, 4294967295u))) & countOneBits(abs(u_input.a))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(5829i, global1.a.a, 68043i), vec3<i32>(u_input.c.x, u_input.c.x, -50869i)), ~u_input.c.x, global1.a.a, 15032i), vec4<i32>(u_input.c.x, ~(-12416i), -2147483647i, countOneBits(0i))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.a.a, -6538i, 2147483647i, 38164i), vec4<i32>(-26941i, 0i, u_input.c.x, global1.a.a)) ^ vec4<i32>(abs(u_input.c.x), u_input.c.x, _wgslsmith_div_i32(global1.d.a, u_input.c.x), countOneBits(-2147483647i))));
}

