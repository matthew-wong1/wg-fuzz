struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-62287i, 29256u, 722f, -403f, vec4<f32>(783f, -206f, -829f, -1000f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = -2147483647i;
    return Struct_1(global0.a, ~(~(~_wgslsmith_div_u32(global0.b, 27502u))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-388f, arg_2.d))), -912f, global0.e);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec3<i32> {
    global0 = func_2(u_input.e, vec4<f32>(_wgslsmith_f_op_f32(-314f + arg_0.x), arg_0.x, global0.c, -127f), Struct_1((~arg_1.x & 0i) ^ _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.e.x, 2147483647i), u_input.e.x), 19468u, -449f, arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_div_f32(global0.d, -1036f), _wgslsmith_f_op_f32(-1448f * _wgslsmith_f_op_f32(max(global0.c, arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x))), vec3<i32>(-(~_wgslsmith_sub_i32(-1i, arg_1.x)), 1i, 0i));
    global0 = func_2((-vec4<i32>(-25569i, -1i, global0.a, -6585i) | u_input.e) ^ u_input.e, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), func_2(u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.e, vec4<f32>(183f, arg_0.x, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, arg_0.x, global0.e.x, arg_0.x)))), Struct_1(_wgslsmith_clamp_i32(-arg_1.x, ~u_input.e.x, -5109i), 18053u, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), 227f, global0.e), vec3<i32>(_wgslsmith_div_i32(global0.a, global0.a), func_2(u_input.e, vec4<f32>(-1000f, 440f, 1096f, global0.e.x), Struct_1(13906i, global0.b, -531f, global0.c, global0.e), arg_1).a, u_input.c.x) | vec3<i32>(-43004i, global0.a, u_input.c.x)), ~vec3<i32>(arg_1.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-45561i, 1i, 1i), u_input.c), select(0i, _wgslsmith_mult_i32(-12441i, global0.a), false)));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yw + arg_0.zw)) - _wgslsmith_f_op_vec2_f32(select(global0.e.zz, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-297f, arg_0.x)) - _wgslsmith_f_op_f32(min(1252f, global0.d))), global0.e.x), true)));
    var var_1 = select(vec2<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - 916f))) > _wgslsmith_f_op_f32(sign(2322f)), false), select(vec2<bool>(true, true), select(vec2<bool>(false, all(vec4<bool>(true, true, true, true))), vec2<bool>(true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))), select(select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false))), !vec2<bool>(1780u == u_input.d, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), global0.a <= 14489i), firstTrailingBit(0u) > _wgslsmith_dot_vec3_u32(u_input.a.wxx, u_input.a.wyz))));
    global0 = func_2(vec4<i32>(1i, u_input.c.x, global0.a, 72255i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + 327f), 946f, var_0.x, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1772f, -563f, 293f, -205f)))) - global0.e), Struct_1(arg_1.x, reverseBits(1u), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0.e)))), select(firstLeadingBit(reverseBits(abs(vec3<i32>(u_input.c.x, -2147483647i, global0.a)))), abs(vec3<i32>(2147483647i, 0i, ~arg_1.x)), vec3<bool>(!select(true, false, true), all(vec3<bool>(false, true, false)), !all(vec3<bool>(true, var_1.x, var_1.x)))));
    return u_input.e.zzw >> (u_input.a.wxw % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = select(select(!vec2<bool>(true, select(false, false, false)), select(vec2<bool>(false, select(true, false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), arg_0.c == global0.c)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), 32211u != global0.b))), vec2<bool>(all(vec2<bool>(global0.a < arg_0.a, true)), !(!all(vec2<bool>(false, false)))), any(!vec4<bool>(true, true, arg_1.d < -446f, false)));
    var var_1 = ~4294967295u;
    let var_2 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(arg_0.b, global0.b, 22047u))) | ~(~(vec3<u32>(44079u, 0u, u_input.a.x) >> (u_input.a.zxz % vec3<u32>(32u)))), vec3<u32>(~1u, abs(0u), u_input.b) >> (min(min(u_input.a.yyx, countOneBits(u_input.a.zzx)), u_input.a.yxz) % vec3<u32>(32u)));
    var_1 = _wgslsmith_sub_u32(u_input.b, global0.b);
    var var_3 = arg_0;
    return u_input.e;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(1i, 60226u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-global0.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.e.x)))), 427f, _wgslsmith_f_op_vec4_f32(trunc(global0.e)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.e, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-200f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.c - var_0.c), 407f), _wgslsmith_f_op_vec4_f32(vec4<f32>(588f, 835f, var_0.e.x, -844f) * _wgslsmith_f_op_vec4_f32(global0.e * vec4<f32>(-811f, global0.c, global0.c, 787f))))))));
    var var_2 = func_2(vec4<i32>(abs(-global0.a), global0.a, -42848i, firstTrailingBit(-55828i) ^ reverseBits(2147483647i)), var_1, Struct_1(max(_wgslsmith_add_i32(~arg_1, max(94956i, arg_1)), firstLeadingBit(_wgslsmith_div_i32(-10461i, u_input.e.x))), countOneBits(~u_input.d), var_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1287f, _wgslsmith_f_op_f32(1150f - global0.e.x)))), var_0.e), u_input.e.yzw);
    let var_3 = vec3<i32>(52208i, i32(-1i) * -(~(-2147483647i)), -2147483647i);
    var var_4 = ~var_3.x;
    return func_2(vec4<i32>(~(-arg_1), 6038i, 2147483647i, _wgslsmith_div_i32(var_0.a, ~_wgslsmith_sub_i32(1i, 40218i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.e * vec4<f32>(-656f, _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(round(var_2.d)), _wgslsmith_f_op_f32(f32(-1f) * -832f)))), func_2(func_4(func_2(_wgslsmith_div_vec4_i32(u_input.e, u_input.e), vec4<f32>(-773f, 322f, 868f, var_2.d), func_2(vec4<i32>(u_input.c.x, 0i, 2147483647i, var_0.a), var_2.e, Struct_1(arg_1, 0u, var_2.d, var_1.x, vec4<f32>(-861f, var_2.d, var_1.x, var_1.x)), vec3<i32>(1i, 1i, global0.a)), func_3(global0.e, var_3)), func_2(~vec4<i32>(var_2.a, arg_1, global0.a, var_2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, 443f, -201f, 253f)), func_2(vec4<i32>(var_2.a, u_input.e.x, -28624i, -19975i), global0.e, Struct_1(arg_1, 0u, var_1.x, var_1.x, vec4<f32>(-1118f, var_2.c, -941f, -1610f)), u_input.e.zyy), vec3<i32>(1i, global0.a, 2147483647i))), vec4<f32>(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.d)) + var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - var_0.e.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.d, var_0.d)))), func_2(u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)), Struct_1(0i, 45534u, _wgslsmith_div_f32(738f, 2546f), -143f, global0.e), min(var_3, var_3)), u_input.e.yxw), ~(vec3<i32>(-1i) * -(~vec3<i32>(arg_1, var_0.a, var_0.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = !(!vec3<bool>(!(global0.a <= u_input.c.x), true, true));
    global0 = Struct_1(func_2(vec4<i32>(-global0.a, 2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(global0.a, global0.a), func_3(vec4<f32>(-2367f, arg_1.x, 575f, arg_1.x), vec3<i32>(-9298i, arg_0.a, global0.a)).x), 1i), global0.e, arg_0, vec3<i32>(func_4(func_2(vec4<i32>(u_input.c.x, global0.a, -4344i, 3118i), arg_0.e, arg_0, u_input.c), Struct_1(38808i, 0u, arg_0.e.x, global0.c, arg_0.e)).x, ~_wgslsmith_sub_i32(global0.a, arg_0.a), 0i)).a, global0.b, arg_1.x, 1f, _wgslsmith_f_op_vec4_f32(exp2(global0.e)));
    global0 = arg_0;
    let var_1 = select(!(!vec3<bool>(var_0.x, true, u_input.b == 0u)), var_0, !var_0);
    global0 = Struct_1(reverseBits(min(_wgslsmith_div_i32(1i, u_input.e.x), arg_0.a & (i32(-1i) * -2147483647i))), select(17566u, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.d, 1u, 73689u), _wgslsmith_dot_vec3_u32(~u_input.a.zxy, u_input.a.wyx)), true != var_1.x), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-109f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_div_vec4_f32(arg_0.e, global0.e));
    return Struct_1(arg_0.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u | arg_0.b, 35478u, 4294967295u), _wgslsmith_mod_u32(1u, firstTrailingBit(7363u) << (~0u % 32u))), _wgslsmith_f_op_f32(floor(global0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(arg_0.e.x, 2064f)) * 332f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(408f, -1000f)), -781f, 141f, arg_0.e.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, -1414f, arg_0.d, -659f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, arg_1.x, -587f, -543f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, reverseBits(_wgslsmith_clamp_u32(~1u, reverseBits(~u_input.b), abs(56010u) << (global0.b % 32u))), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(min(1129f, _wgslsmith_f_op_f32(-global0.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))) - _wgslsmith_f_op_f32(685f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d + -986f) + 1252f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e - vec4<f32>(1509f, global0.e.x, -1205f, -795f)), _wgslsmith_f_op_vec4_f32(-global0.e)) * global0.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e + vec4<f32>(-177f, global0.c, global0.e.x, global0.e.x)) * global0.e))));
    global0 = func_5(func_1(_wgslsmith_mod_u32(~min(18416u, 18149u), u_input.a.x), u_input.e.x), global0.e.zx);
    global0 = func_1(u_input.b, min(_wgslsmith_add_i32(func_5(Struct_1(-23278i, global0.b, global0.d, -1160f, global0.e), global0.e.xw).a << ((global0.b << (u_input.d % 32u)) % 32u), u_input.e.x), global0.a));
    let var_0 = ~u_input.e.xy;
    var var_1 = Struct_1(global0.a, _wgslsmith_div_u32(~global0.b, u_input.b), global0.d, _wgslsmith_f_op_f32(-1231f * global0.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1242f, var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_5(Struct_1(-24939i, var_1.b, 584f, var_1.c, vec4<f32>(var_1.c, 873f, var_1.d, -626f)), vec2<f32>(228f, 1276f)).d, _wgslsmith_f_op_f32(abs(755f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.c)))), var_1.e.x))), vec4<i32>(~func_3(var_1.e, vec3<i32>(var_1.a, 2147483647i, var_0.x)).x, var_0.x, u_input.c.x, _wgslsmith_mult_i32(-15313i << (_wgslsmith_clamp_u32(u_input.b, 15707u, 150308u) % 32u), 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2022f, -333f, var_1.d, 1688f)))));
}

