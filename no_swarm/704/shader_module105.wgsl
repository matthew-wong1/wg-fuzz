struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(79959u, 0u, 4294967295u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, select(true, false, false)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), false)), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), false, all(vec2<bool>(false, false))), vec3<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), all(vec3<bool>(true, true, true)))), vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -853f), -155f)), true, !all(vec4<bool>(true, true, true, true))), true);
    let var_1 = 0u;
    return var_0;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = arg_2;
    var var_1 = !(!vec3<bool>(var_0.c.x && true, any(func_3(vec2<i32>(1i, -2147483647i), vec4<i32>(0i, arg_3.x, arg_3.x, -24171i), vec4<u32>(arg_2.d.x, u_input.a, 52828u, 4294967295u))), any(vec2<bool>(true, true))));
    let var_2 = var_0;
    var var_3 = ~vec2<u32>(u_input.a, _wgslsmith_add_u32(~(var_2.d.x ^ 1u), _wgslsmith_div_u32(4294967295u, global0.x)));
    var var_4 = vec3<u32>(u_input.a, var_0.d.x, abs(0u) ^ var_3.x);
    return _wgslsmith_mult_vec4_u32(min(~(~vec4<u32>(var_2.d.x, arg_2.d.x, 4294967295u, arg_2.d.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 1u, 0u), ~vec4<u32>(43512u, var_2.d.x, 0u, 66456u), ~vec4<u32>(var_3.x, var_4.x, 4294967295u, var_0.d.x)) % vec4<u32>(32u)), vec4<u32>(select(var_4.x, _wgslsmith_clamp_u32(4294967295u, 0u, var_3.x), true), ~49540u, var_2.d.x << ((u_input.b.x & global0.x) % 32u), (19683u ^ u_input.a) >> (var_2.d.x % 32u))), ~_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(1u, 0u, 0u, 15198u)), vec4<u32>(_wgslsmith_div_u32(var_0.d.x, var_2.d.x), var_2.d.x, ~var_4.x, 84072u)));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 35460u, 4294967295u, 0u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 42119u, 0u, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, u_input.a, global0.x)), func_2(vec4<bool>(true, true, true, true), -1227f, Struct_1(-799f, false, vec4<bool>(true, true, true, false), vec2<u32>(1u, u_input.a), vec2<f32>(-222f, 454f)), vec4<i32>(2147483647i, -10890i, 1i, -1i))), ~(~_wgslsmith_div_u32(u_input.a, global0.x)), _wgslsmith_div_u32(~func_2(vec4<bool>(true, false, true, true), 371f, Struct_1(495f, false, vec4<bool>(false, false, true, true), vec2<u32>(73245u, 20354u), vec2<f32>(828f, 1222f)), vec4<i32>(-49268i, 0i, 51223i, 1i)).x, 6524u)), ~(~vec3<u32>(1u, global0.x ^ 75606u, _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(39531u, 1u, 94714u)), vec3<u32>(global0.x, global0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(75998u, u_input.a, 4294967295u), vec3<u32>(global0.x, 4294967295u, 1u)))));
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(min(556f, -2117f)), _wgslsmith_f_op_f32(-166f * 102f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1444f, -191f, -1583f, -2483f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-220f, -308f, 495f, -593f), vec4<f32>(-1523f, -1016f, 609f, 1000f), var_0))))))) * vec4<f32>(1198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1000f)) - _wgslsmith_f_op_f32(trunc(-646f))), 976f, -1629f));
    var var_2 = 26412u;
    var_2 = select(~0u, _wgslsmith_div_u32(3855u, global0.x), var_0);
    return Struct_1(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) >= var_1.x, !select(vec4<bool>(all(vec3<bool>(false, var_0, true)), any(vec4<bool>(var_0, var_0, var_0, var_0)), true, true), vec4<bool>(false, 0u == global0.x, true, any(vec2<bool>(true, var_0))), var_0), u_input.b, vec2<f32>(var_1.x, 215f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(79231u, 1u), 1u), 11775u << (global0.x % 32u)));
    var var_1 = func_1();
    let var_2 = Struct_1(_wgslsmith_div_f32(1585f, _wgslsmith_f_op_f32(var_1.e.x - -273f)), var_1.c.x, var_1.c, max(vec2<u32>(var_1.d.x, ~0u), firstLeadingBit(~global0.xz)), func_1().e);
    let var_3 = abs(abs(~(~(~vec3<u32>(var_1.d.x, var_2.d.x, var_1.d.x)))));
    var var_4 = true;
    var var_5 = false;
    var var_6 = Struct_1(var_1.e.x, select((var_2.e.x != var_2.e.x) & !var_1.c.x, var_2.c.x | var_1.c.x, var_1.c.x), select(var_1.c, select(vec4<bool>(any(vec4<bool>(var_2.b, var_1.b, true, true)), true, var_1.b, var_2.a > -954f), var_2.c, var_1.c), func_1().c), firstLeadingBit(_wgslsmith_sub_vec2_u32(var_3.yy, abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 56747u), vec2<u32>(1u, 1u))))), _wgslsmith_f_op_vec2_f32(select(var_2.e, vec2<f32>(var_1.e.x, _wgslsmith_div_f32(var_2.e.x, _wgslsmith_f_op_f32(var_2.e.x * var_1.e.x))), var_1.c.yy)));
    var var_7 = _wgslsmith_clamp_i32(~3079i, ~firstLeadingBit(1i), firstLeadingBit(_wgslsmith_sub_i32(59129i << (global0.x % 32u), _wgslsmith_div_i32(-2147483647i, 2147483647i))) ^ _wgslsmith_mod_i32(1i, max(i32(-1i) * -79067i, _wgslsmith_dot_vec3_i32(vec3<i32>(-100640i, 18898i, -14467i), vec3<i32>(15678i, 880i, -53524i)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1091f, var_1.d.x, ~(-(~1i)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.e.x, -878f))), -7936i);
}

