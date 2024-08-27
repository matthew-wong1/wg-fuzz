struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(666f, 638f, -400f, -1533f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    let var_0 = -1i;
    let var_1 = Struct_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wyz, vec3<u32>(28308u, u_input.d.x, u_input.b.x)), ~1u, u_input.d.x), u_input.b.yxw), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-804f)))), select(vec2<bool>(-24274i != var_0, false), vec2<bool>(any(vec4<bool>(arg_2.x, arg_0.x, true, arg_2.x)), false), !(!arg_2)), arg_1, ~abs(select(vec4<u32>(25754u, 0u, u_input.b.x, u_input.d.x), u_input.b, vec4<bool>(true, false, arg_0.x, arg_2.x))), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.b.x, 26842u, 26497u)), ~(u_input.b.x | 4294967295u))));
    let var_2 = Struct_3(u_input.b.x, var_1.b);
    global0 = vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1403f), -505f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1085f - -169f))), var_2.b.c))));
    var var_3 = var_2.b.d.zyw;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(901f + -216f));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_2(global0.x, vec2<bool>(_wgslsmith_f_op_f32(-1f) == global0.x, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, false)))), _wgslsmith_f_op_f32(func_3(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(any(vec2<bool>(false, true)), false, true), true), _wgslsmith_f_op_f32(-global0.x), vec2<bool>(true, true && any(vec2<bool>(false, false))))), ~reverseBits(vec4<u32>(0u, ~15261u, ~arg_0, arg_0 ^ 35841u)), vec2<u32>(~(~(~53219u)), abs(reverseBits(reverseBits(50569u)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-422f - -236f), global0.x, -632f, var_0.a)));
    var_0 = Struct_2(474f, var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(global0.x + -2173f))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(51463u), var_0.e.x, u_input.b.x, _wgslsmith_mod_u32(0u, 1u)), ~var_0.d), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 87808u, 4294967295u, 1u), ~abs(var_0.d)), _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(0u), _wgslsmith_add_u32(u_input.b.x, 20726u), ~u_input.d.x, countOneBits(u_input.b.x)), vec4<u32>(u_input.d.x << (0u % 32u), ~4294967295u, 53671u, u_input.d.x))), ~_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(~arg_0, 4294967295u)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * -1000f))), _wgslsmith_f_op_f32(trunc(global0.x)))), var_0.b, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(2053f - var_0.a)), firstTrailingBit(u_input.b), var_0.d.wy);
    let var_1 = Struct_3(u_input.d.x << (~_wgslsmith_mult_u32(var_0.e.x, ~0u) % 32u), Struct_2(_wgslsmith_f_op_f32(func_3(!vec3<bool>(var_0.b.x, false, var_0.b.x), 433f, select(var_0.b, var_0.b, var_0.b.x & true))), vec2<bool>(var_0.b.x, ~1i > _wgslsmith_dot_vec2_i32(vec2<i32>(-77534i, 7537i), vec2<i32>(-10858i, -1i))), 797f, select(vec4<u32>(67386u, u_input.b.x, 5461u, 0u) | (var_0.d & u_input.b), abs(u_input.b ^ u_input.b), !var_0.b.x), vec2<u32>(abs(30155u), 1670u)));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xzz))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_u32(~firstTrailingBit(arg_1), arg_1))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 946f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-961f - arg_3))), 272f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -853f, 584f, 303f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-536f, 489f, 656f, arg_3))))))) * vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, -702f)), var_0.x, -1246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1980f * _wgslsmith_f_op_f32(ceil(arg_3))))));
    let var_1 = _wgslsmith_f_op_f32(trunc(2663f));
    let var_2 = Struct_3(arg_1, Struct_2(-1459f, !select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), vec2<bool>(arg_2, false)), vec2<bool>(false, false), all(vec2<bool>(false, true))), arg_3, _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b | u_input.b) ^ ~vec4<u32>(49645u, u_input.d.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, abs(1u))));
    let var_3 = u_input.d;
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-192f, arg_1, _wgslsmith_f_op_f32(-578f - _wgslsmith_f_op_f32(-1f)), 503f)));
    let var_0 = Struct_3(1u, func_1(u_input.e, ~firstLeadingBit(u_input.b.x), func_1(arg_2.x, 124763u, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) + arg_0.c)).b.x, 2899f));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, var_0.b.a, global0.x, arg_1)) - vec4<f32>(global0.x, -1000f, arg_1, global0.x)))))));
    let var_1 = var_0.b.b.x;
    var var_2 = var_0.b.d.ywz;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -527f, -1000f, 1042f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, global0.x, arg_0.a, -198f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-166f, -314f, var_0.b.c, -2919f), vec4<f32>(-856f, arg_0.a, 165f, -347f), vec4<bool>(false, false, false, arg_0.b.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(var_0.b.a - arg_1), global0.x, -1487f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0.x, -837f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), var_0.b.a, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(func_4(func_1(2147483647i, 4294967295u, all(vec3<bool>(true, any(vec2<bool>(true, true)), 1907f <= global0.x)), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), firstTrailingBit(vec2<i32>(12699i, -1i)) ^ vec2<i32>(-abs(-2147483647i), reverseBits(1i))));
    var var_0 = Struct_3(4294967295u, Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x + 1962f)), _wgslsmith_div_f32(835f, _wgslsmith_f_op_f32(2015f - 327f))), vec2<bool>(1i == ~u_input.e, all(vec3<bool>(false, true, false))), 1035f, min(_wgslsmith_mod_vec4_u32(u_input.b ^ vec4<u32>(0u, u_input.d.x, 1u, 1u), u_input.b), u_input.b), vec2<u32>(87099u, firstLeadingBit(~u_input.b.x))));
    var var_1 = func_1(12284i, 1u, var_0.b.b.x, _wgslsmith_f_op_f32(-func_1(~(1i | u_input.c), ~var_0.a & var_0.b.e.x, true, _wgslsmith_f_op_f32(ceil(-234f))).c));
    var_0 = Struct_3(_wgslsmith_mod_u32(firstTrailingBit(u_input.d.x), 29231u), Struct_2(var_1.c, var_0.b.b, _wgslsmith_div_f32(1048f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1440f + var_1.c))), ~(~(~vec4<u32>(1u, var_1.d.x, 0u, var_0.b.d.x))), var_0.b.e));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 484f, 246f, 1642f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -200f, global0.x, 757f), vec4<f32>(global0.x, var_0.b.c, -678f, 622f))))))) * vec4<f32>(var_1.a, _wgslsmith_div_f32(global0.x, 1f), 1501f, -762f));
    var var_3 = ~vec2<i32>(~(-2147483647i), -1881i);
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(~u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(5443u, 1u, 12797u, 36064u), u_input.b, vec4<u32>(1u, 50025u, var_1.d.x, 47111u)), var_0.b.a < var_2.x), vec4<u32>(27099u | _wgslsmith_div_u32(4294967295u, var_0.a), var_0.a, firstTrailingBit(abs(u_input.d.x)), u_input.b.x), func_1(~var_3.x ^ (u_input.a.x & u_input.a.x), u_input.d.x, func_1(var_3.x << (84519u % 32u), _wgslsmith_mod_u32(u_input.b.x, 137u), var_1.b.x, 998f).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))).b.x));
}

