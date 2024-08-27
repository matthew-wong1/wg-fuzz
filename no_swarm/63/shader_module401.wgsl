struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1593f, -1000f), 4294967295u, vec4<i32>(0i, i32(-2147483648), -1i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec4<u32> {
    var var_0 = true;
    var_0 = !(!(u_input.d < 3623u));
    var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * -1000f)))));
    var var_2 = false;
    return reverseBits(_wgslsmith_mod_vec4_u32(firstTrailingBit(abs(vec4<u32>(16123u, 10195u, 55938u, u_input.d))), (~vec4<u32>(71236u, u_input.b.x, u_input.e.x, 10134u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, 0u, 41812u, u_input.b.x), vec4<u32>(global0.b, global0.b, global0.b, 58268u)) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, u_input.e.x, u_input.d), ~vec4<u32>(global0.b, u_input.b.x, 4294967295u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(7868u, u_input.b.x, global0.b, 4294967295u), vec4<u32>(u_input.b.x, u_input.e.x, 76825u, global0.b), vec4<u32>(global0.b, u_input.d, global0.b, 42013u)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = !vec2<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true)) && !any(vec2<bool>(false, false)), all(vec3<bool>(false, any(vec3<bool>(false, false, false)), 761f != global0.a.x)));
    let var_1 = arg_1;
    var var_2 = ~min(~1u | abs(select(7274u, 21909u, var_0.x)), var_1.b);
    global0 = arg_1;
    let var_3 = Struct_1(vec2<f32>(259f, var_1.a.x), reverseBits(_wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(arg_1.b, arg_1.b, u_input.d)), u_input.b.x)), var_1.c);
    return ~(-1i);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_clamp_i32(1746i, 2147483647i, -2147483647i);
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(global0.a.x * global0.a.x)))), global0.a.x), _wgslsmith_mod_u32(min(~144u, _wgslsmith_clamp_u32(global0.b, 4294967295u, global0.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u) << (vec2<u32>(u_input.e.x, global0.b) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(0u, u_input.d)))) | ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(20414u, global0.b, 65389u)), ~vec3<u32>(global0.b, global0.b, u_input.d)), ~vec4<i32>(_wgslsmith_clamp_i32(~(-43065i), -2147483647i, _wgslsmith_mult_i32(82863i, -12429i)), global0.c.x >> ((global0.b | u_input.d) % 32u), -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, 1i), global0.c.xy), 0i));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a.x)) * global0.a.x), _wgslsmith_f_op_f32(-global0.a.x)), u_input.e.x, vec4<i32>(global0.c.x, -(i32(-1i) * -3956i), -(func_3(Struct_1(global0.a, 16559u, vec4<i32>(2147483647i, var_0, 9991i, u_input.a)), Struct_1(global0.a, 0u, vec4<i32>(global0.c.x, -5165i, u_input.a, 2147483647i))) >> (u_input.b.x % 32u)), -67733i));
    var var_2 = Struct_1(var_1.a, ~4294967295u, _wgslsmith_clamp_vec4_i32(var_1.c, _wgslsmith_add_vec4_i32(min(_wgslsmith_add_vec4_i32(global0.c, vec4<i32>(var_1.c.x, -27926i, global0.c.x, global0.c.x)), vec4<i32>(var_0, var_0, 11716i, global0.c.x)), var_1.c), global0.c));
    var var_3 = global0.a.x;
    return -737f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(188f, global0.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.a.x) * global0.a))) * vec2<f32>(global0.a.x, global0.a.x)), _wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(1871f, -879f), global0.a.x == global0.a.x)))), 33090u, ~(global0.c << (func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 759f)), u_input.a) % vec4<u32>(32u))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), global0.a.x, 2224f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, _wgslsmith_div_f32(global0.a.x, global0.a.x)))), global0.b, min(min(-(vec4<i32>(global0.c.x, global0.c.x, -100549i, u_input.c.x) | vec4<i32>(-16556i, 1468i, -28858i, global0.c.x)), ~global0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.x, _wgslsmith_mult_i32(0i, -54519i), 1i, _wgslsmith_dot_vec3_i32(global0.c.zxy, vec3<i32>(u_input.c.x, u_input.a, -3245i))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global0.c.x, -58255i, -6936i), global0.c))));
    global0 = var_1;
    let var_2 = ~(~min(~vec2<u32>(var_1.b, 1u), u_input.b.zz));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x)))))));
    let var_4 = countOneBits(u_input.b);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-662f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(select(513f, var_0.x, false))))), var_0.x, global0.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1399f, 1181f, var_0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1683f, var_1.a.x) * vec3<f32>(-255f, var_3, var_3))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_3, -1093f), vec3<f32>(1264f, -1037f, -1418f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, var_3, select(true, false, false)))) - global0.a.x));
}

