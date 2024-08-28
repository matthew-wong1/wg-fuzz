struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 14>;

var<private> global2: vec3<f32>;

var<private> global3: vec3<f32>;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = arg_2.x;
    let var_1 = vec4<i32>(-(_wgslsmith_dot_vec2_i32(-vec2<i32>(-46109i, 0i), ~vec2<i32>(global0.a, arg_0.a)) >> ((~u_input.a << (u_input.c % 32u)) % 32u)), arg_1.a, firstLeadingBit(~(reverseBits(-2147483647i) & global0.a)), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 74916i, arg_1.a, u_input.b) | vec4<i32>(-1312i, 30680i, 1i, u_input.b), select(vec4<i32>(arg_0.a, global0.a, -1i, 1i), vec4<i32>(arg_0.a, -2001i, arg_1.a, -2147483647i), vec4<bool>(false, arg_2.x, true, arg_2.x)))));
    let var_2 = firstTrailingBit(_wgslsmith_mult_i32(-_wgslsmith_mult_i32(-2147483647i, global0.a) >> (u_input.c % 32u), _wgslsmith_mod_i32(-37436i << (countOneBits(u_input.a) % 32u), ~global0.a | (u_input.b >> (u_input.c % 32u)))));
    var var_3 = arg_0;
    var var_4 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) - global2.x));
    return var_1.wx >> (_wgslsmith_clamp_vec2_u32(~abs(max(vec2<u32>(u_input.c, 50810u), vec2<u32>(20058u, u_input.a))), vec2<u32>(30594u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 15519u), vec2<u32>(u_input.c, 4294967295u)), ~u_input.a)), ~(~vec2<u32>(1u, 1u))) % vec2<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = ~(-select(vec2<i32>(u_input.e, u_input.e) ^ vec2<i32>(-23534i, u_input.d), -func_3(Struct_2(0i, 1576f), Struct_2(global0.a, -608f), vec3<bool>(arg_1.c, true, arg_1.c)), all(!vec3<bool>(arg_1.c, true, arg_1.c))));
    var var_1 = !(!select(vec3<bool>(select(true, false, arg_1.c), any(vec4<bool>(arg_1.c, true, arg_1.c, true)), true), vec3<bool>(true, true, all(vec4<bool>(arg_1.c, arg_1.c, true, arg_1.c))), !vec3<bool>(true, arg_1.c, arg_1.c)));
    return !select(vec3<bool>(false, !(var_1.x == arg_1.c), true), vec3<bool>(select(true, false, false) | arg_1.c, var_1.x, arg_1.c), false);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-global0.b)));
    let var_1 = !vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), func_2(697f, global1[_wgslsmith_index_u32(53056u, 14u)]))), all(func_2(global0.b, Struct_1(-347f, vec4<u32>(37315u, u_input.a, u_input.c, 37987u), false)).yx), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    var var_2 = min((_wgslsmith_div_vec3_i32(-vec3<i32>(29301i, 12143i, u_input.b), abs(vec3<i32>(1i, -29903i, 54931i))) ^ firstTrailingBit(~vec3<i32>(u_input.e, global0.a, u_input.d))) & select(~select(vec3<i32>(0i, global0.a, 0i), vec3<i32>(1i, u_input.b, -1i), var_1.x), _wgslsmith_mod_vec3_i32(vec3<i32>(10295i, u_input.b, 2147483647i), ~vec3<i32>(-20191i, -3672i, u_input.d)), var_1), select(select(firstLeadingBit(abs(vec3<i32>(global0.a, u_input.d, u_input.d))), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -40929i, global0.a), vec3<i32>(global0.a, u_input.d, -14864i)), abs(vec3<i32>(50894i, 1i, 0i)), !vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(var_1.x, false, 18780u <= u_input.c)), vec3<i32>(u_input.d << (u_input.a % 32u), _wgslsmith_clamp_i32(countOneBits(6151i), ~u_input.b, ~global0.a), -_wgslsmith_add_i32(-29220i, global0.a)), 481f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1393f)), global2.x)));
    global0 = Struct_2(u_input.e, global2.x);
    global2 = vec3<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) + -329f), 1000f);
    return Struct_2(~(-_wgslsmith_div_i32(_wgslsmith_div_i32(var_2.x, 11937i), min(u_input.e, 52775i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, 126f, all(var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, global0.b, global2.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -215f, global3.x)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, global0.b, global0.b)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 225f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global0.b, 412f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, -962f, -880f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1094f), _wgslsmith_f_op_f32(round(306f)), _wgslsmith_f_op_f32(global3.x + -619f))) - vec3<f32>(_wgslsmith_f_op_f32(step(global0.b, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1636f), 1595f)));
    global1 = array<Struct_1, 14>();
    global0 = Struct_2(-_wgslsmith_add_i32(u_input.e, ~(58538i | global0.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + -922f))))));
    global3 = vec3<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f) + global2.x))), 127f);
    global1 = array<Struct_1, 14>();
    global0 = func_1();
    var var_0 = select(reverseBits(vec4<i32>(_wgslsmith_div_i32(global0.a, u_input.b ^ global0.a), u_input.b, u_input.d >> (30373u % 32u), global0.a)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.e, -10932i, 4575i, global0.a)) << (~vec4<u32>(u_input.c, u_input.c, 1u, u_input.a) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, u_input.e, u_input.e, global0.a), vec4<i32>(u_input.b, global0.a, 61682i, 1i))) | vec4<i32>(~_wgslsmith_div_i32(1i, 29197i), u_input.b, 1i & -global0.a, _wgslsmith_mult_i32(global0.a, 51357i)), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, global2.x > 1766f, any(vec4<bool>(true, true, false, false)), true), vec4<bool>(u_input.e != global0.a, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), vec4<bool>(false, all(vec3<bool>(false, false, true)) & true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), u_input.a != (u_input.c >> (1u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 1u), 1u >> (u_input.a % 32u)) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(47326u, 4294967295u, 31995u, 11659u), vec4<u32>(u_input.c, 22913u, 1u, 49281u))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, 0u), u_input.a, u_input.c) << (~_wgslsmith_sub_u32(1u, u_input.c) % 32u)));
}

