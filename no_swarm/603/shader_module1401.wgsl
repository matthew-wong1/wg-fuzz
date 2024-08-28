struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec2<bool>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = u_input.a;
    global0 = arg_2;
    var var_1 = arg_2;
    let var_2 = 2147483647i;
    var var_3 = Struct_2(true);
    return Struct_2(var_3.a | var_3.a);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(201f - 1367f)))));
    var var_1 = vec4<u32>(18442u, _wgslsmith_add_u32(_wgslsmith_div_u32(select(u_input.a, u_input.a, any(vec3<bool>(global2.x, global2.x, global2.x))), abs(~0u)), ~countOneBits(u_input.c)), 1u, max(46003u, countOneBits(~u_input.a)));
    let var_2 = vec3<bool>(global2.x, true, true);
    let var_3 = (var_1.x | firstTrailingBit(~var_1.x)) ^ ~0u;
    global1 = global0.b;
    return var_1.x;
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = -2147483647i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.a, _wgslsmith_div_vec2_f32(global0.a, vec2<f32>(-1834f, global0.a.x)))))), global0.b);
    var var_2 = func_1(-2937i != (var_1.b >> ((~u_input.a >> (func_3() % 32u)) % 32u)), vec4<f32>(var_1.a.x, 623f, var_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x - global0.a.x)))), var_1);
    return firstLeadingBit(abs(-50182i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(func_2(func_1(all(!vec2<bool>(global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 720f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, 136f, -430f, global0.a.x), vec4<f32>(global0.a.x, -293f, global0.a.x, global0.a.x), global2.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1308f)), 1i & u_input.b))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, firstLeadingBit(~51782i)), ~vec2<i32>(~global0.b, ~(-2147483647i))), u_input.b);
    global2 = !select(!vec2<bool>(select(global2.x, false, global2.x), !global2.x), !select(select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)), select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), true), !global2.x), global2.x);
    let var_1 = select(vec4<i32>(-3032i, i32(-1i) * -38123i, var_0.x ^ (firstLeadingBit(u_input.b) | var_0.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 4544i | global0.b), abs(countOneBits(u_input.b)))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -43705i, var_0.x, -2147483647i), vec4<i32>(global0.b, 57773i, -38893i, global0.b)), vec4<i32>(global0.b, -global0.b, 1i, max(-1i, 36138i))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b, var_0.x, -1i, u_input.b), vec4<i32>(-2147483647i, 2147483647i, -44239i, 2147483647i), vec4<bool>(global2.x, true, global2.x, global2.x)) ^ reverseBits(vec4<i32>(1i, 0i, 2147483647i, global0.b)), vec4<i32>(abs(u_input.b), _wgslsmith_mod_i32(-23454i, -36643i), var_0.x, _wgslsmith_sub_i32(var_0.x, global0.b)), select(vec4<i32>(u_input.b, -22492i, -32843i, 2939i) | vec4<i32>(20817i, u_input.b, u_input.b, 0i), abs(vec4<i32>(u_input.b, global0.b, 63305i, u_input.b)), select(vec4<bool>(true, false, true, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, global2.x, true, false))))), !(!global2.x) || all(!vec4<bool>(global2.x, global2.x, false, false)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-198f, global0.a.x) * _wgslsmith_div_vec2_f32(global0.a, vec2<f32>(-1240f, -406f))) * _wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(1907f, _wgslsmith_div_f32(-1717f, global0.a.x)), select(!vec2<bool>(global2.x, false), select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)), true)))), _wgslsmith_mod_i32(var_0.x, ~(var_0.x & _wgslsmith_clamp_i32(-1i, var_0.x, 0i))));
    global1 = ~var_0.x;
    let var_2 = vec4<bool>(false, true, any(!(!vec4<bool>(global2.x, global2.x, true, true))), any(!vec3<bool>(!global2.x, global2.x, all(vec3<bool>(false, global2.x, true)))));
    let var_3 = vec3<f32>(global0.a.x, global0.a.x, -876f);
    var var_4 = 1642f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u >> (_wgslsmith_clamp_u32(1u, u_input.c, firstLeadingBit(u_input.c)) % 32u), 1u));
}

