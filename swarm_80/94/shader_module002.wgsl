struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<bool> {
    var var_0 = -_wgslsmith_sub_i32(min(~1i, u_input.d.x & u_input.d.x), u_input.d.x) ^ (_wgslsmith_mod_i32(-_wgslsmith_div_i32(2147483647i, u_input.d.x), -2147483647i) | u_input.d.x);
    var_0 = -u_input.d.x;
    var var_1 = ~u_input.d.wyy;
    let var_2 = i32(-1i) * -u_input.d.x;
    var_1 = -vec3<i32>(var_1.x, var_1.x, -27304i & select(u_input.d.x, var_1.x, true)) << (~(~_wgslsmith_clamp_vec3_u32(~u_input.a, countOneBits(u_input.a), ~vec3<u32>(u_input.c.x, 0u, u_input.b.x))) % vec3<u32>(32u));
    return vec3<bool>(true, true, all(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), true)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = all(func_3());
    var var_1 = false;
    let var_2 = true;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-646f)) - _wgslsmith_f_op_f32(step(arg_1.a, arg_1.a)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 266f, var_2))), ~_wgslsmith_mult_u32(70621u, 27784u) > ~u_input.b.x, var_2, ((i32(-1i) * -1i) | (arg_1.d & arg_1.d)) >> (~71321u % 32u)), vec3<bool>(arg_0, arg_1.c, var_2), u_input.c.x);
    var var_4 = var_3.d << (var_3.d % 32u);
    return _wgslsmith_f_op_f32(1164f * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.b.a, -732f, false)) * _wgslsmith_f_op_f32(ceil(-593f))), _wgslsmith_f_op_f32(exp2(var_3.b.a))))));
}

fn func_4(arg_0: f32) -> Struct_2 {
    var var_0 = 17758u;
    var var_1 = any(func_3().yz);
    var var_2 = !(!all(vec4<bool>(true, u_input.a.x == u_input.a.x, any(vec4<bool>(false, true, true, false)), 4294967295u <= u_input.b.x)));
    var var_3 = Struct_1(-1087f, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, reverseBits(_wgslsmith_dot_vec3_i32(u_input.d.wzy, u_input.d.zzw)));
    let var_4 = true;
    return Struct_2(1f, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(-1000f + 451f)), _wgslsmith_f_op_f32(max(467f, _wgslsmith_f_op_f32(var_3.a * 2114f)))), !(firstTrailingBit(-2147483647i) > 1i), all(vec3<bool>(var_4, var_3.b, true)), _wgslsmith_add_i32(var_3.d, var_3.d)), vec3<bool>(all(!vec3<bool>(true, true, var_3.c)) | (true | var_3.b), any(vec3<bool>(false, true, !var_4)), true), ~u_input.b.x);
}

fn func_1() -> Struct_2 {
    return func_4(_wgslsmith_f_op_f32(840f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696f * _wgslsmith_f_op_f32(func_2(true, Struct_1(1261f, true, true, 2147483647i)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = true;
    var var_2 = vec3<bool>(func_3().x, false, ~(~u_input.b.x) <= 1u);
    let var_3 = var_0.b;
    let var_4 = 1000f;
    var var_5 = ~u_input.e.x;
    var var_6 = var_0.c.x && var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(select(vec4<i32>(1i, var_0.b.d, var_0.b.d, -1i), vec4<i32>(-1i, -2147483647i, u_input.d.x, 76612i), false))) >> (~firstTrailingBit(vec4<u32>(var_0.d, u_input.b.x, 0u, 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-var_3.a), true)), _wgslsmith_f_op_f32(trunc(func_1().b.a)), _wgslsmith_f_op_f32(func_2(false, var_3)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-775f)), _wgslsmith_f_op_f32(-var_0.a), any(vec4<bool>(true, var_3.b, var_0.b.b, var_2.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-585f, -1466f, var_3.a, var_0.b.a))))));
}

