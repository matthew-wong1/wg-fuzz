struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(2147483647i, 1i), 155i, vec2<i32>(40254i, 11207i), -83548i, vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(-32952i, -32935i), 2147483647i, vec2<i32>(2147483647i, -1i), 43502i, vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(i32(-2147483648), -21987i), 0i, vec2<i32>(7504i, 671i), 1i, vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(2147483647i, 46809i), -1i, vec2<i32>(-30281i, 2450i), 0i, vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(0i, 2147483647i), -1i, vec2<i32>(-47274i, 0i), -7765i, vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(22482i, 41106i), 1i, vec2<i32>(2147483647i, 1i), i32(-2147483648), vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(2147483647i, 22007i), -1i, vec2<i32>(2147483647i, 1i), -47784i, vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(24790i, -64562i), -47236i, vec2<i32>(-1i, -27361i), 0i, vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(-1i, 40992i), -27246i, vec2<i32>(1i, -1i), 0i, vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(48478i, -4389i), -17433i, vec2<i32>(-1i, 1i), -24643i, vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(2235i, i32(-2147483648)), 0i, vec2<i32>(1i, -30402i), i32(-2147483648), vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(0i, 6235i), -1i, vec2<i32>(2147483647i, 0i), 9644i, vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(5607i, -1i), -32760i, vec2<i32>(2147483647i, 2147483647i), 0i, vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(-1i, 0i), i32(-2147483648), vec2<i32>(2147483647i, 2147483647i), -34605i, vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(-42332i, 0i), -82315i, vec2<i32>(-1i, 1i), 19641i, vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(-24357i, -21384i), -774i, vec2<i32>(33828i, i32(-2147483648)), 1i, vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(1i, 46491i), 26508i, vec2<i32>(-50886i, 1980i), -3776i, vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(i32(-2147483648), 1i), -30439i, vec2<i32>(1i, -1i), -60796i, vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(-1i, -1i), 0i, vec2<i32>(-12390i, 0i), 17933i, vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(-1i, -13884i), 2147483647i, vec2<i32>(-1237i, 0i), 42941i, vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(-23167i, 60394i), 0i, vec2<i32>(27336i, -61098i), 0i, vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(42088i, 0i), -61956i, vec2<i32>(1i, -2916i), -4974i, vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(-31563i, -44030i), 1i, vec2<i32>(i32(-2147483648), 16922i), 0i, vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 23406i, vec2<i32>(0i, 18120i), -13854i, vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(31002i, 0i), 2147483647i, vec2<i32>(2147483647i, 1812i), 16099i, vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(2147483647i, -22447i), 55105i, vec2<i32>(2768i, 33859i), -1i, vec4<bool>(false, false, false, true)));

var<private> global1: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> i32 {
    var var_0 = global1.c.c.x <= u_input.a;
    var var_1 = u_input.b;
    let var_2 = vec2<bool>((-656f != _wgslsmith_f_op_f32(-global1.a.x)) & global1.b, !(!all(select(global1.c.e.zy, global1.c.e.xw, global1.c.e.x))));
    var var_3 = Struct_2(global1.a, var_2.x, global1.c, firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(global1.d.x), ~u_input.b, u_input.b), firstLeadingBit(firstTrailingBit(global1.d)))));
    var var_4 = ~_wgslsmith_clamp_vec4_i32(u_input.c, firstLeadingBit(vec4<i32>(8118i, _wgslsmith_mod_i32(2147483647i, 67121i), 28831i, var_3.c.d ^ global1.c.c.x)), abs(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c)));
    return -var_3.c.c.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(-(i32(-1i) * -global1.c.b), i32(-1i) * -(~arg_3.d)), _wgslsmith_add_i32(-2147483647i, -2147483647i & global1.c.a.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(-4521i, u_input.a), reverseBits(firstLeadingBit(_wgslsmith_mod_i32(5212i, -38669i)))), arg_3.a.x);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.x, arg_2, -1016f), global1.a), global1.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 1450f, 712f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(967f, 1016f, global1.a.x))))), any(!select(vec3<bool>(arg_1.e.x, true, true), select(vec3<bool>(true, false, true), vec3<bool>(global1.b, arg_3.e.x, arg_3.e.x), vec3<bool>(arg_1.e.x, global1.c.e.x, arg_3.e.x)), global1.c.e.wyw)), arg_3, max(~vec3<u32>(global1.d.x, _wgslsmith_mod_u32(global1.d.x, global1.d.x), 1u), firstLeadingBit(select(abs(vec3<u32>(0u, u_input.b, 1u)), ~global1.d, global1.b & false))));
    let var_1 = abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.xzx, u_input.c.xxx), var_0.x | -1i, global1.c.b, _wgslsmith_clamp_i32(arg_1.b, 0i, 45967i))), abs(abs(u_input.c))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, arg_2, 1499f))))), false, arg_3, vec3<u32>(~15427u & _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 0u, 13748u, 1u)), select(vec4<u32>(u_input.b, global1.d.x, 74690u, 33417u), vec4<u32>(u_input.b, 1u, global1.d.x, 56495u), vec4<bool>(global1.c.e.x, arg_1.e.x, arg_3.e.x, arg_3.e.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 51283u), ~u_input.b, ~0u, abs(4294967295u)), vec4<u32>(u_input.b, 0u, global1.d.x, global1.d.x) << (vec4<u32>(7086u, global1.d.x, 4294967295u, u_input.b) % vec4<u32>(32u))), ~select(4294967295u, _wgslsmith_sub_u32(u_input.b, 0u), !global1.c.e.x)));
    let var_3 = !global1.c.e;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-678f, 1000f), _wgslsmith_f_op_f32(1934f * -341f), _wgslsmith_f_op_f32(1060f * arg_2)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_2.a, global1.a)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.x))), var_2.a.x, _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-arg_2))))), true, arg_3, countOneBits(vec3<u32>(25342u, ~global1.d.x, 92915u) >> (~vec3<u32>(global1.d.x, global1.d.x, 0u) % vec3<u32>(32u))));
}

fn func_1() -> vec3<i32> {
    let var_0 = firstLeadingBit(-global1.c.c.x) & ~0i;
    var var_1 = global1.c;
    global0 = array<Struct_1, 26>();
    var var_2 = func_3(func_2(), global1.c, -1583f, global1.c);
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c ^ ~(~u_input.c), select(vec4<i32>(var_2.c.a.x << (45578u % 32u), ~44610i, var_1.a.x, _wgslsmith_sub_i32(u_input.c.x, 1i)), ~abs(u_input.c), true)), ~(~107743i));
    return -(u_input.c.xxy << (_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.x, 9737u, global1.d.x), vec3<u32>(u_input.b, 1u, var_2.d.x)) % vec3<u32>(32u))) << ((global1.d | vec3<u32>(41271u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.d, vec3<u32>(18576u, global1.d.x, var_2.d.x)), vec3<u32>(global1.d.x, 404u, 42387u)), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.b, var_2.d.x)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global1.c.e, global1.c.e, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(718f, global1.a.x, _wgslsmith_f_op_f32(round(1486f))), _wgslsmith_f_op_vec3_f32(sign(global1.a)), func_1());
}

