struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1(vec2<bool>(_wgslsmith_sub_u32(65569u, u_input.a.x) <= countOneBits(40463u), any(vec3<bool>(true, true, true))), true, vec2<f32>(-360f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(811f, -956f, true))))), min(4294967295u, 29831u << (~u_input.a.x % 32u))), Struct_1(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), !(_wgslsmith_mod_i32(1i, u_input.b) <= _wgslsmith_mult_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-807f, -298f))), select(max(1u, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 28905u))), _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, 29641u), false)), vec3<bool>(all(vec4<bool>(true, true, true, false)), false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2171f, 761f)))), -532f);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = arg_0.b;
    var_0 = Struct_1(select(vec2<bool>(false | (true && var_0.a.x), any(!var_0.a)), vec2<bool>(any(select(vec2<bool>(var_0.a.x, true), arg_0.b.a, vec2<bool>(true, false))), var_0.a.x), vec2<bool>(-9684i <= _wgslsmith_sub_i32(u_input.b, -2147483647i), _wgslsmith_f_op_f32(-var_0.c.x) >= _wgslsmith_f_op_f32(step(350f, 250f)))), false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(round(arg_0.e))) + _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(round(-1096f))), 4294967295u ^ arg_0.b.d);
    var_0 = arg_0.a;
    var_0 = arg_0.a;
    var_0 = arg_0.a;
    return true & arg_0.b.a.x;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-594f - _wgslsmith_f_op_f32(-1300f * 1145f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-195f, -487f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-905f * 116f) + 1f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -292f)), _wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-491f, _wgslsmith_f_op_f32(round(-626f)))))));
    let var_1 = Struct_1(!vec2<bool>(false, func_3(func_2())), reverseBits(arg_1.x) == _wgslsmith_add_i32(u_input.b, select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), arg_1.xx), max(-1i, arg_1.x), select(false, true, true))), var_0.zz, 4294967295u);
    let var_2 = _wgslsmith_mod_u32(16593u, _wgslsmith_add_u32(arg_0, ~_wgslsmith_mod_u32(~21515u, u_input.a.x)));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, 0i > u_input.b), all(vec3<bool>(true, true, true)) & true, _wgslsmith_f_op_vec2_f32(func_1(~0u, -vec4<i32>(u_input.b, firstTrailingBit(u_input.b), -1i, -18191i))), ~(~_wgslsmith_mult_u32(27799u << (u_input.a.x % 32u), 1u)));
    let var_1 = ~(((vec2<i32>(-1i) * -vec2<i32>(u_input.b, u_input.b)) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) ^ (~(vec2<i32>(u_input.b, -10933i) << (vec2<u32>(4294967295u, var_0.d) % vec2<u32>(32u))) ^ ~vec2<i32>(u_input.b, 7584i)));
    var var_2 = vec2<bool>(!var_0.b != any(var_0.a), select((var_0.d | var_0.d) == _wgslsmith_add_u32(8295u, ~var_0.d), var_0.a.x, false));
    let var_3 = var_0;
    let var_4 = func_2();
    var_2 = vec2<bool>(true, var_4.c.x);
    var_2 = var_0.a;
    var_2 = !(!var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(var_4.b.d & var_4.a.d))), _wgslsmith_f_op_f32(1004f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1225f + 729f), var_0.c.x))));
}

