struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 32> = array<f32, 32>(2529f, -1000f, -528f, 1000f, 344f, -355f, -455f, -432f, -713f, 822f, 708f, 893f, -1713f, -557f, -1246f, -608f, 594f, -369f, -541f, -1419f, -315f, -1067f, 534f, 1417f, -532f, 1481f, 547f, -1487f, 1095f, -451f, 1533f, -653f);

var<private> global2: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32) -> bool {
    global0 = Struct_3(global0.b.a.x, global0.b, vec3<u32>(~4294967295u, arg_0 >> (u_input.a % 32u), global0.c.x), ~(~_wgslsmith_add_vec3_u32(global2.d | vec3<u32>(1699u, global0.d.x, 4069u), vec3<u32>(u_input.a, 71480u, u_input.a) >> (vec3<u32>(0u, u_input.a, global0.d.x) % vec3<u32>(32u)))), vec3<bool>(1i <= _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -1i, global0.b.b.x, global2.b.b.x), vec4<i32>(2147483647i, global2.b.b.x, global2.b.b.x, global2.b.b.x)), !all(select(global2.e, global2.b.a, true)), true));
    var var_0 = Struct_5(Struct_3(global2.e.x, global2.b, global0.c, vec3<u32>(24051u, 1u, ~4252u) << (global2.c % vec3<u32>(32u)), global2.e));
    var var_1 = any(select(vec4<bool>(!global2.b.a.x, !global0.e.x, all(vec4<bool>(false, var_0.a.b.a.x, var_0.a.e.x, global2.e.x)), all(vec3<bool>(false, global0.a, global2.b.a.x))), vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, true), vec4<bool>(false, true, any(global2.e.zy), true))) == (false && all(vec4<bool>(-29438i > global0.b.b.x, false, var_0.a.b.a.x, all(vec4<bool>(global0.e.x, false, false, global0.a)))));
    var var_2 = vec4<i32>(~global2.b.b.x, -1i, _wgslsmith_mod_i32(~30721i, -_wgslsmith_clamp_i32(var_0.a.b.b.x, -12764i, var_0.a.b.b.x) | -13223i), 0i);
    let var_3 = Struct_1(global2.b.a, global2.b.b);
    return global0.b.b.x < -global2.b.b.x;
}

fn func_1() -> i32 {
    global1 = array<f32, 32>();
    var var_0 = all(select(vec4<bool>(false, global0.e.x, any(!global2.b.a.yx), false | !global2.b.a.x), vec4<bool>(false | global0.b.a.x, global2.e.x, global1[_wgslsmith_index_u32(global0.c.x << (1u % 32u), 32u)] != global1[_wgslsmith_index_u32(global0.c.x, 32u)], true), true));
    let var_1 = Struct_3(func_2(~global0.c.x), global0.b, global0.c, global0.c, global0.b.a);
    global1 = array<f32, 32>();
    var_0 = global2.a;
    return -1919i;
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(false, _wgslsmith_dot_vec3_u32(max(firstTrailingBit(global2.d), global0.c), global2.c) > 34539u, false, any(select(!(!vec4<bool>(false, false, false, global2.b.a.x)), !select(vec4<bool>(false, false, global0.a, global0.a), vec4<bool>(true, false, false, global0.b.a.x), false), 4294967295u == ~u_input.a)));
    global2 = Struct_3(!global2.e.x, Struct_1(select(vec3<bool>(any(vec4<bool>(var_0.x, true, true, var_0.x)), !global0.e.x, true), var_0.xzy, vec3<bool>(global1[_wgslsmith_index_u32(global2.c.x, 32u)] > -1396f, global2.e.x, true)), global2.b.b), ~global0.d >> (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(global0.d, vec3<u32>(4294967295u, global0.c.x, 0u)) & _wgslsmith_add_vec3_u32(vec3<u32>(6972u, global0.c.x, u_input.a), vec3<u32>(100488u, global0.c.x, global0.d.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(55717u, global2.c.x, global2.d.x), vec3<u32>(global2.c.x, 4294967295u, 82176u)) & ~vec3<u32>(1u, global2.c.x, 67010u)) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(select(global2.d, global0.d, var_0.x), ~global2.d) | vec3<u32>(firstTrailingBit(78445u), global2.d.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, global0.d.x, global0.c.x), vec4<u32>(global2.c.x, 120555u, 1u, 54785u)), ~global0.d.x)), global0.b.a);
    global2 = Struct_3(!global2.e.x == ((~global2.d.x & abs(global2.d.x)) >= (_wgslsmith_add_u32(38324u, u_input.a) ^ abs(global0.d.x))), Struct_1(select(!select(vec3<bool>(true, var_0.x, true), var_0.zxy, global0.b.a), var_0.zxx, !select(var_0.xyw, var_0.xxx, vec3<bool>(true, global0.e.x, true))), vec2<i32>(-(~2147483647i), global2.b.b.x)), ~global0.d, ~(~_wgslsmith_div_vec3_u32(vec3<u32>(16547u, u_input.a, global2.c.x), vec3<u32>(u_input.a, u_input.a, 4294967295u))), select(!vec3<bool>(true, global0.e.x, false), !select(!global2.e, select(vec3<bool>(global2.e.x, false, true), global2.e, var_0.x), !global0.e.x), vec3<bool>(true, !(!var_0.x), all(vec2<bool>(global2.a, var_0.x)))));
    let var_1 = firstTrailingBit(firstLeadingBit(-select(vec4<i32>(global0.b.b.x, 43946i, 26278i, 2147483647i), vec4<i32>(global2.b.b.x, 0i, 2147483647i, global0.b.b.x), vec4<bool>(var_0.x, true, true, global0.e.x)) & -_wgslsmith_div_vec4_i32(vec4<i32>(2540i, global0.b.b.x, global2.b.b.x, global0.b.b.x), vec4<i32>(-31445i, global2.b.b.x, -43482i, global2.b.b.x))));
    global2 = Struct_3(false, Struct_1(select(!(!global2.b.a), vec3<bool>(global2.c.x <= u_input.a, !global0.b.a.x, false != global2.b.a.x), true), vec2<i32>(global0.b.b.x, (global0.b.b.x >> (global2.c.x % 32u)) & global0.b.b.x)), countOneBits(global0.c), (min(_wgslsmith_add_vec3_u32(global2.c, global0.d), ~global2.d) & vec3<u32>(global2.d.x, 75076u, ~global0.d.x)) ^ vec3<u32>(~u_input.a, ~_wgslsmith_div_u32(58451u, u_input.a), 1u), !select(vec3<bool>(true, true, true), !global2.e, global2.b.a.x));
    return 936f;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> u32 {
    global0 = arg_1;
    var var_0 = ~(min(_wgslsmith_sub_i32(-1649i, 14960i), _wgslsmith_add_i32(-38383i, 1i)) | _wgslsmith_div_i32(-25601i, global0.b.b.x)) << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.c.x, 26959u, arg_1.d.x, 0u)) & ~_wgslsmith_div_vec4_u32(vec4<u32>(17799u, u_input.a, global0.c.x, global2.d.x), vec4<u32>(global2.d.x, global0.d.x, 0u, 52911u)), ~vec4<u32>(global2.d.x, u_input.a | 1u, _wgslsmith_dot_vec3_u32(arg_1.c, vec3<u32>(global2.c.x, u_input.a, 1u)), ~78102u)) % 32u);
    var var_1 = Struct_4(Struct_3(global0.a, Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), arg_1.e.x), vec2<i32>(0i, _wgslsmith_div_i32(arg_1.b.b.x, arg_2.x))), vec3<u32>(arg_1.d.x, 2203u, arg_1.d.x), global2.d, global0.e));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a, arg_1.d.x, 4294967295u), global2.d, vec3<bool>(false, true, global0.a)), var_1.a.d), vec3<u32>(1u, global2.d.x, ~reverseBits(var_1.a.c.x))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(450f))));
    global0 = Struct_3(true, Struct_1(select(vec3<bool>(true, true, true), global0.b.a, select(select(vec3<bool>(global0.b.a.x, false, true), vec3<bool>(true, global0.a, global2.e.x), global0.b.a), !global0.e, global0.b.a)), min(abs(max(vec2<i32>(86730i, -2147483647i), vec2<i32>(-2147483647i, global0.b.b.x))), vec2<i32>(global0.b.b.x, func_1()))), vec3<u32>(60295u, ~_wgslsmith_div_u32(u_input.a ^ 8592u, ~1u), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), global1[_wgslsmith_index_u32(global0.c.x, 32u)])), Struct_3(false, global2.b, _wgslsmith_clamp_vec3_u32(global0.c, vec3<u32>(36021u, 1u, u_input.a), global0.c), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 24506u, 108687u), vec3<u32>(global2.c.x, u_input.a, 20936u)), vec3<bool>(true, global0.b.a.x, global2.a)), min(vec3<i32>(2026i, global2.b.b.x, global0.b.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.b.x, -2147483647i, -59183i), vec3<i32>(global2.b.b.x, global0.b.b.x, global2.b.b.x))))), vec3<u32>(u_input.a, min(90765u, ~global2.c.x), min(1u, _wgslsmith_sub_u32(4294967295u, u_input.a ^ 1u))), !global0.e);
    var var_1 = global0.b;
    let var_2 = vec4<bool>(true, true, true, !(!(!all(global0.e.xz))));
    let var_3 = Struct_4(Struct_3(var_2.x, Struct_1(global2.b.a, select(global0.b.b, var_1.b, vec2<bool>(false, global0.e.x)) | _wgslsmith_sub_vec2_i32(global2.b.b, vec2<i32>(global2.b.b.x, var_1.b.x))), firstTrailingBit(_wgslsmith_div_vec3_u32(max(vec3<u32>(global2.c.x, 39536u, 69179u), global0.c), global2.c)), global2.c, select(select(global2.b.a, var_2.xzy, var_1.a), global0.b.a, global2.e.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-440f, -265f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 32u)])))), _wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_3.a.c.x, 32u)], -705f, global2.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_3.a.c.x, 32u)])) + 174f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(947f * -1464f))))));
    var_0 = -505f;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, -_wgslsmith_mod_i32(var_3.a.b.b.x, -global2.b.b.x), _wgslsmith_mod_i32(1i, 16824i), _wgslsmith_clamp_i32(func_1(), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1.b.x, 0i, 0i, global0.b.b.x)), -vec4<i32>(global2.b.b.x, var_1.b.x, 2147483647i, var_3.a.b.b.x)), 1i)), ~(~reverseBits(1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, 1605f)));
}

