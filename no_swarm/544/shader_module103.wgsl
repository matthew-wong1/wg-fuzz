struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: Struct_1 = Struct_1(0i, 4294967295u, 33466i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(u_input.b.yxw), ~vec3<u32>(1u, 1u, arg_0.a)), vec3<u32>(~u_input.a, global1.b, min(0u, 35058u))), 27u)];
    var var_1 = arg_0;
    let var_2 = Struct_3(1u, Struct_2(Struct_1(~arg_3.c, ~(~global1.b), global1.a | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.a.c, 968i), vec2<i32>(-58469i, arg_3.a))), Struct_1(~global1.a, ~arg_3.b, var_1.b.a.c ^ 2147483647i), Struct_1(min(i32(-1i) * -29617i, min(-2147483647i, arg_3.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 42767u, 12590u, 35323u), vec4<u32>(70321u, arg_0.b.a.b, arg_3.b, 28826u) ^ u_input.b), _wgslsmith_add_i32(arg_0.b.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.c.a, 35550i, 45861i, -15068i), vec4<i32>(var_1.b.a.a, 27237i, -2147483647i, -27982i)))), !(!arg_2.x), var_0.x), true);
    var_1 = Struct_3(_wgslsmith_dot_vec4_u32(u_input.b, min(u_input.b & vec4<u32>(1326u, global1.b, var_2.b.b.b, var_1.b.c.b), vec4<u32>(5264u, ~51593u, 1u & u_input.b.x, _wgslsmith_mult_u32(global1.b, 43516u)))), var_1.b, any(arg_2));
    let var_3 = -826f;
    return !select(arg_2, !vec3<bool>(arg_0.c, arg_2.x, true), true);
}

fn func_2() -> u32 {
    var var_0 = vec3<bool>(true, true, true);
    global0 = array<vec2<f32>, 27>();
    var var_1 = u_input.a;
    let var_2 = var_0.x;
    let var_3 = select(vec3<bool>(countOneBits(global1.a) <= global1.c, any(vec3<bool>(var_0.x, var_0.x, var_0.x & false)), select(!any(vec4<bool>(var_0.x, true, false, true)), true, any(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, false))))), !select(!select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, true, var_0.x), vec3<bool>(false, false, true)), func_3(Struct_3(1828u, Struct_2(Struct_1(global1.c, 36587u, global1.c), Struct_1(1i, 1u, global1.a), Struct_1(-9283i, u_input.a, global1.c), var_0.x, -2738f), false), vec2<bool>(var_0.x, false), !vec3<bool>(var_0.x, true, false), Struct_1(-2147483647i, 51528u, -2147483647i)), true), vec3<bool>(true, var_0.x, true));
    return _wgslsmith_sub_u32(global1.b, global1.b ^ 1u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-111f - -741f);
    var var_1 = min(u_input.b, ~vec4<u32>(55270u, global1.b, 1u, 39811u) << (vec4<u32>(func_2(), _wgslsmith_dot_vec3_u32(u_input.b.wwy, vec3<u32>(arg_0.a.b, 1u, u_input.b.x)), arg_1.a.b, 0u) % vec4<u32>(32u)));
    let var_2 = ~(~_wgslsmith_clamp_u32(u_input.a, 31802u, 34926u) >> (reverseBits(global1.b) % 32u)) >> (arg_0.b.b % 32u);
    var var_3 = true;
    var var_4 = (vec2<i32>(8510i, global1.c) | vec2<i32>(1i, 1i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(-global1.c), 1i), -_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0.a.c, -39761i), firstTrailingBit(vec2<i32>(2147483647i, global1.a))));
    return ~var_1.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(-countOneBits(2147483647i) << (abs(min(u_input.b.x, arg_2.x)) % 32u), 1u, _wgslsmith_mult_i32(arg_0, -max(arg_1.b.c, -1i))), Struct_1(1i, arg_1.c.b, max(-368i, arg_1.a.c)), arg_1.a, false, 413f);
    let var_1 = ~_wgslsmith_clamp_i32(~var_0.a.a, firstTrailingBit(global1.a), 0i);
    let var_2 = _wgslsmith_f_op_f32(-217f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-700f, _wgslsmith_f_op_f32(step(arg_1.e, var_0.e)))), 1893f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-388f, arg_1.e))) * arg_1.e)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_2)) * -2390f)), _wgslsmith_f_op_f32(303f * 1111f));
    let var_4 = Struct_1(var_1, ~4990u, -48397i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~(~reverseBits(73120u)), func_4(12081i, Struct_2(Struct_1(27831i, func_1(Struct_2(Struct_1(global1.c, u_input.a, 2057i), Struct_1(global1.a, 1u, 0i), Struct_1(4767i, global1.b, 2147483647i), false, -557f), Struct_2(Struct_1(global1.a, global1.b, -26584i), Struct_1(50252i, 1u, global1.a), Struct_1(global1.c, u_input.a, 1694i), false, -131f), vec2<bool>(true, true), vec2<bool>(true, false)), global1.c | global1.a), Struct_1(_wgslsmith_div_i32(1i, -14016i), abs(11076u), -1i), Struct_1(i32(-1i) * -27692i, 0u, _wgslsmith_add_i32(-7923i, global1.c)), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1363f, 2239f))), countOneBits(~(~vec2<u32>(u_input.b.x, u_input.b.x)))), !(!func_4(global1.a, Struct_2(Struct_1(0i, 27119u, 19664i), Struct_1(-1i, 80154u, -25788i), Struct_1(global1.c, global1.b, global1.c), false, -1577f), vec2<u32>(global1.b, 35478u)).d) == false);
    let var_1 = _wgslsmith_mult_i32(global1.c, _wgslsmith_mod_i32(var_0.b.a.a, ~(-10357i)));
    global1 = var_0.b.a;
    let var_2 = _wgslsmith_f_op_f32(var_0.b.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -524f));
    var_0 = Struct_3(_wgslsmith_mod_u32(global1.b, ~_wgslsmith_div_u32(u_input.a & global1.b, ~0u)), func_4(firstLeadingBit(-2147483647i), var_0.b, vec2<u32>(~max(24971u, 1u), 108749u)), any(vec4<bool>(!(126414u == u_input.a), var_0.b.d, var_0.c, var_0.c)));
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(var_0.b.b.a, var_0.b.a.a, var_0.b.b.a, 0i)), vec4<i32>(1i, func_4(global1.a, var_0.b, u_input.b.yz).c.c, -2147483647i, var_1 >> (0u % 32u))) << (~u_input.b % vec4<u32>(32u)), vec4<i32>(~var_0.b.b.c, 36020i, _wgslsmith_mod_i32(2147483647i, i32(-1i) * -6823i), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, var_0.b.e);
}

