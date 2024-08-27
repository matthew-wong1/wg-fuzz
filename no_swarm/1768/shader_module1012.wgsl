struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1357f, vec2<i32>(14229i, -53453i)), vec4<f32>(-395f, 283f, 657f, 230f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(global0.a, global0.b);
    global0 = Struct_2(Struct_1(1f, -vec2<i32>(~global0.a.b.x, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.b, global0.b))));
    var var_0 = global0.a;
    global0 = Struct_2(global0.a, global0.b);
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)));
    return Struct_1(-526f, ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, ~(-1i)), min(u_input.b, u_input.b) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(24716u, u_input.a)) % vec2<u32>(32u))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<i32> {
    global0 = arg_1;
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(max(vec2<i32>(arg_1.a.b.x, arg_1.a.b.x), vec2<i32>(1i, 2147483647i)), min(u_input.b, arg_1.a.b)), vec2<i32>(-16397i, i32(-1i) * -56978i)), _wgslsmith_dot_vec4_i32(max(firstLeadingBit(vec4<i32>(arg_1.a.b.x, global0.a.b.x, 25289i, arg_1.a.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a.b.x, u_input.b.x, arg_1.a.b.x, u_input.b.x), vec4<i32>(-2147483647i, arg_1.a.b.x, -1i, -33909i))), vec4<i32>(arg_1.a.b.x, _wgslsmith_clamp_i32(7223i, 0i, arg_1.a.b.x), arg_1.a.b.x, _wgslsmith_dot_vec2_i32(global0.a.b, vec2<i32>(u_input.b.x, 1i)))) & ~(-48519i), global0.a.b.x, min(global0.a.b.x | -_wgslsmith_clamp_i32(arg_1.a.b.x, arg_1.a.b.x, -2147483647i), ~(~_wgslsmith_div_i32(51939i, -2147483647i))));
    var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(min(arg_1.a.b.x | 0i, abs(firstLeadingBit(-2147483647i))), var_0.x >> (84083u % 32u), 1i, global0.a.b.x), vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.x, -2147483647i, _wgslsmith_clamp_i32(-1i, u_input.b.x, global0.a.b.x), 1i), _wgslsmith_div_vec4_i32(min(vec4<i32>(-1i, 27219i, arg_1.a.b.x, var_0.x), vec4<i32>(41641i, global0.a.b.x, global0.a.b.x, u_input.b.x)), ~vec4<i32>(global0.a.b.x, -2147483647i, 33336i, 1i))), -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.yx, var_0.xy), 1i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.b.x, 10283i, u_input.b.x, global0.a.b.x), select(vec4<i32>(arg_1.a.b.x, -1396i, 4754i, global0.a.b.x), vec4<i32>(arg_1.a.b.x, arg_1.a.b.x, -1i, u_input.b.x), false)))));
    let var_1 = !select(vec4<bool>(!arg_2.x, any(!vec3<bool>(true, arg_0.x, arg_2.x)), true, true), vec4<bool>(arg_2.x && all(vec4<bool>(true, false, arg_0.x, arg_2.x)), arg_2.x, arg_2.x, false), arg_2.x);
    var var_2 = vec3<i32>(var_0.x, _wgslsmith_dot_vec3_i32(var_0.wwx, _wgslsmith_add_vec3_i32(~(-vec3<i32>(u_input.b.x, 0i, 2147483647i)), _wgslsmith_div_vec3_i32(abs(var_0.wzz), ~vec3<i32>(-2147483647i, var_0.x, 46351i)))), -global0.a.b.x);
    return func_2().b;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    global0 = Struct_2(func_2(), _wgslsmith_f_op_vec4_f32(trunc(global0.b)));
    return Struct_1(_wgslsmith_div_f32(-801f, -1000f), _wgslsmith_mod_vec2_i32(var_0.b << (_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 3034u), vec2<u32>(29625u, u_input.a), vec2<u32>(25120u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), func_3(vec3<bool>(true, true, true), Struct_2(Struct_1(global0.b.x, global0.a.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, -151f, 316f, var_0.a))), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(f32(-1f) * -1079f)), vec2<i32>(reverseBits(2147483647i), max(-20032i, -1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, -428f, -1161f, 257f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-756f, var_0.a, -282f, -1008f), global0.b, true)), global0.b)))));
    global0 = Struct_2(func_2(), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)))), 188f, global0.b.x, -331f));
    var var_2 = global0.b;
    let var_3 = min(0u, reverseBits(u_input.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(step(1180f, global0.a.a)), 673f, global0.a.a)))));
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(floor(522f)), _wgslsmith_f_op_f32(sign(var_4.x)), -1138f, 1875f);
    let var_6 = _wgslsmith_div_f32(global0.b.x, var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(global0.a.b.x, u_input.b.x, 0i) >> ((u_input.a << (var_3 % 32u)) % 32u), 5718i), _wgslsmith_mod_vec4_u32(abs(~(~vec4<u32>(u_input.a, u_input.a, var_3, 5147u))), ~vec4<u32>(var_3 | var_3, _wgslsmith_add_u32(91043u, u_input.a), var_3, 22238u)));
}

