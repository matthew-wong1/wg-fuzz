struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4 = Struct_4(Struct_3(vec3<bool>(false, false, false)), Struct_2(vec3<i32>(2147483647i, 4803i, i32(-2147483648)), Struct_1(vec3<f32>(289f, 1248f, -2081f), vec3<f32>(-924f, -251f, 309f), vec2<u32>(91961u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), 206f), true, vec3<i32>(-41i, -40045i, -28695i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(arg_1.b.b.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -309f), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1959f, 816f, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, global0.b.x, arg_1.b.b.e), vec3<f32>(global1.b.b.e, 1000f, -462f)))), vec3<bool>(!global1.b.c, any(vec4<bool>(false, arg_1.a.a.x, arg_1.a.a.x, global1.a.a.x)), global1.b.c))))), vec2<u32>(u_input.d & 0u, abs(abs(67u) & global0.d.x)), global0.d ^ reverseBits(select(_wgslsmith_mod_vec3_u32(global1.b.b.d, vec3<u32>(global0.c.x, 51943u, global0.c.x)), _wgslsmith_add_vec3_u32(arg_1.b.b.d, vec3<u32>(arg_0.d.x, u_input.d, arg_1.b.b.c.x)), !arg_1.b.c)), -154f);
    var var_1 = ~2996u;
    var_1 = _wgslsmith_dot_vec3_u32(arg_1.b.b.d, ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.b.d.x, 33636u, arg_1.b.b.d.x >> (global1.b.b.c.x % 32u)), _wgslsmith_clamp_vec3_u32(min(arg_0.d, global0.d), vec3<u32>(1u, arg_0.c.x, arg_0.c.x), countOneBits(global0.d))));
    global0 = arg_0;
    var var_2 = any(vec2<bool>(global1.a.a.x, !global1.b.c));
    return !(!arg_1.a.a);
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_3(!select(func_3(global1.b.b, Struct_4(global1.a, Struct_2(global1.b.a, global1.b.b, true, global1.b.a)), vec4<f32>(495f, -1431f, 888f, global0.e)), select(vec3<bool>(global1.b.c, true, global1.b.c), global1.a.a, global1.b.c), false & global1.a.a.x)), Struct_2(vec3<i32>(max(abs(0i), _wgslsmith_sub_i32(20737i, u_input.c)), u_input.c >> (24654u % 32u), -1i), global1.b.b, global1.a.a.x, ~vec3<i32>(-1i, 1i, 1i)));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    global1 = func_2();
    let var_0 = arg_0;
    var var_1 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b.d, select(var_0.b.a, _wgslsmith_mod_vec3_i32(var_0.b.a, arg_0.b.a), !arg_0.a.a.x)), _wgslsmith_mult_vec3_i32(firstTrailingBit(global1.b.d), _wgslsmith_mult_vec3_i32(-global1.b.a, _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 25839i, global1.b.d.x), vec3<i32>(23589i, -66775i, -1i))))), func_2().b.b, all(select(!(!vec4<bool>(arg_0.a.a.x, global1.a.a.x, global1.b.c, true)), !vec4<bool>(true, global1.a.a.x, true, true), all(select(vec2<bool>(var_0.a.a.x, true), vec2<bool>(true, true), false)))), var_0.b.a);
    var_1 = global1.b;
    let var_2 = 29768u;
    return Struct_3(global1.a.a);
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(func_2());
    global1 = func_2();
    let var_1 = vec3<u32>(abs(_wgslsmith_mult_u32(~62340u, select(1u, global1.b.b.c.x, global1.a.a.x)) ^ 1u), firstLeadingBit(abs(firstTrailingBit(global1.b.b.d.x)) ^ (_wgslsmith_add_u32(u_input.b, 13941u) | ~0u)), ~1u);
    let var_2 = ~(-46575i);
    global1 = Struct_4(Struct_3(var_0.a), Struct_2(firstLeadingBit(_wgslsmith_add_vec3_i32(max(vec3<i32>(var_2, -3033i, u_input.c), global1.b.a), vec3<i32>(u_input.c, global1.b.a.x, global1.b.a.x) & vec3<i32>(-9698i, -1i, var_2))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b.e, global1.b.b.b.x, 408f)), vec3<f32>(-798f, 510f, 938f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.b.b.e, -338f, 510f), vec3<f32>(1494f, 1196f, -2322f))))), select(~global1.b.b.d.xy, _wgslsmith_sub_vec2_u32(global0.c, vec2<u32>(global0.c.x, u_input.a.x)), true), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.c.x, global0.d.x), global1.b.b.d), 264f), !(global0.c.x <= firstTrailingBit(global1.b.b.d.x)), global1.b.d));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_3(vec3<bool>(!(-706f < global0.a.x), true, true)), global1.b);
    global1 = Struct_4(func_1(), Struct_2(global1.b.d, func_2().b.b, false, select(abs(vec3<i32>(30972i, -1i, -1i)), -vec3<i32>(1i, u_input.c, u_input.c), !global1.a.a)));
    global1 = func_2();
    let var_0 = func_4(Struct_4(Struct_3(global1.a.a), Struct_2(_wgslsmith_div_vec3_i32(select(vec3<i32>(global1.b.d.x, 2147483647i, global1.b.a.x), vec3<i32>(u_input.c, u_input.c, 47333i), true), -vec3<i32>(-1i, u_input.c, 1116i)), func_2().b.b, !select(true, true, global1.b.c), reverseBits(-vec3<i32>(u_input.c, -1i, global1.b.d.x)))));
    let var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b.b.b.x, vec2<i32>(var_1.b.d.x, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, var_1.b.a.x, var_1.b.d.x, 6647i)), vec4<i32>(global1.b.a.x, 22511i, u_input.c, global1.b.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.b.e, global0.b.x, 401f, -1622f) - vec4<f32>(-255f, global0.b.x, -335f, 1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e, -955f, global1.b.b.a.x, -208f), vec4<f32>(global1.b.b.e, global0.e, 1365f, 690f), vec4<bool>(var_1.b.c, false, var_1.b.c, false))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, 2734f, -1000f, global0.a.x), vec4<f32>(global1.b.b.a.x, global0.b.x, -358f, 254f), global1.a.a.x)), vec4<f32>(var_1.b.b.b.x, -528f, 783f, global1.b.b.b.x))))), vec2<i32>(-_wgslsmith_mod_i32(-4565i, var_1.b.a.x), var_1.b.a.x));
}

