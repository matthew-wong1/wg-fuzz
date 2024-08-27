struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
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

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = true;
    var var_1 = 2147483647i;
    let var_2 = vec2<f32>(arg_2.x, _wgslsmith_div_f32(-326f, arg_3.x));
    let var_3 = u_input.b;
    var var_4 = Struct_1(vec2<u32>(4719u, ~_wgslsmith_mod_u32(select(30057u, arg_0, false), min(u_input.c, 1u))), vec4<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), true, -1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -719f))), select(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_3, 2147483647i, u_input.b) & vec3<i32>(0i, 19488i, -1i), vec3<i32>(1i, 1i, u_input.b) & vec3<i32>(var_3, u_input.b, 1i)), abs(~min(vec3<i32>(-12396i, 8570i, 0i), vec3<i32>(u_input.b, var_3, -2147483647i))), vec3<bool>(true, true, true)));
    return ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 1u, 70574u), vec3<u32>(arg_0, var_4.a.x, 23187u), vec3<u32>(global0.x, 0u, 18260u)))) & vec3<u32>(1u, ~(~select(4294967295u, 0u, var_4.b.x)), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    global0 = vec2<u32>(~1u, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(global0.x, arg_0.a.x) ^ (34723u >> (1u % 32u)), ~_wgslsmith_sub_u32(33208u, arg_2.a.x)));
    let var_0 = arg_0;
    global0 = abs(firstTrailingBit(vec2<u32>(select(4294967295u, _wgslsmith_clamp_u32(u_input.a, 12108u, global0.x), false), 4294967295u >> (abs(global0.x) % 32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-704f * _wgslsmith_f_op_f32(f32(-1f) * -921f)), _wgslsmith_f_op_f32(f32(-1f) * -300f), -456f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(3244f)), 1076f, 514f), vec3<f32>(462f, _wgslsmith_f_op_f32(1080f - 1504f), -1000f))))));
    var var_2 = arg_2.b.x;
    return 4294967295u;
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = firstLeadingBit(u_input.b);
    let var_1 = ~vec4<u32>(~(~u_input.a) >> (_wgslsmith_div_u32(global0.x, 4294967295u) % 32u), 4294967295u, func_4(Struct_1(vec2<u32>(102231u, global0.x), vec4<bool>(true, true, true, false), vec3<i32>(0i, 24434i, var_0)), func_3(u_input.a << (4294967295u % 32u), 4294967295u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(791f, -1000f, 799f, 905f))), vec4<f32>(arg_0.x, arg_0.x, -851f, arg_0.x)), Struct_1(vec2<u32>(u_input.c, 4294967295u), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0, -2147483647i), vec3<i32>(var_0, 29726i, 10873i)))), 1u);
    global0 = ~var_1.yw;
    global0 = var_1.wx;
    var var_2 = ~var_1.x;
    return vec2<bool>(false, false);
}

fn func_1(arg_0: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 531f, any(vec2<bool>(true, true)))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-459f * -577f), _wgslsmith_div_f32(-463f, -100f), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-110f, -673f)) * 724f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-812f, -783f))))));
    let var_1 = max(vec2<i32>(0i, ~reverseBits(min(-12048i, arg_0))), _wgslsmith_add_vec2_i32(-select(vec2<i32>(arg_0, arg_0), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -82013i), vec2<i32>(-18696i, -2147483647i)), func_2(vec4<f32>(-183f, 272f, -1492f, 894f))), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, 28109i), vec2<i32>(-14453i, arg_0)), select(vec2<i32>(arg_0, arg_0), vec2<i32>(-2147483647i, u_input.b), false)), arg_0)));
    let var_2 = Struct_1(vec2<u32>(global0.x, min(~u_input.c, 97810u)), !select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), ~vec3<i32>(~0i, 1i, u_input.b & var_1.x));
    var var_3 = Struct_1(~(~countOneBits(abs(var_2.a))), var_2.b, vec3<i32>(19541i, var_2.c.x, u_input.b));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(max(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 89318u), vec2<u32>(global0.x, u_input.a)), ~vec2<u32>(85031u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(80967u, 0u), vec2<u32>(u_input.c, global0.x)))) & (vec2<u32>(19804u, global0.x) & select(func_1(u_input.b), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.c, u_input.a), vec2<u32>(75707u, 4294967295u), vec2<bool>(false, false)), ~vec2<u32>(u_input.c, 16305u), func_1(u_input.b)), vec2<bool>(true, true)));
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_sub_u32(1u, 0u);
    global0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.a, countOneBits(var_1)), ~(~u_input.c)), vec2<u32>(~abs(global0.x), _wgslsmith_mult_u32(~var_1, global0.x)));
    var var_2 = abs(2147483647i);
    var_2 = 20368i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~countOneBits(var_1), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(57652u, u_input.a, 4294967295u, u_input.c)), min(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 81501u, 0u), vec4<u32>(u_input.c, 4294967295u, 9912u, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(28247u, 4294967295u, global0.x, global0.x), vec4<u32>(59978u, 40137u, u_input.c, 4294967295u))))));
}

