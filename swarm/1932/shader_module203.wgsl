struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-356f, -518f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(u_input.a, select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, all(vec4<bool>(false, false, false, true)), true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(1481f + 163f) >= _wgslsmith_f_op_f32(-1000f - global0.x)));
    var var_1 = var_0.a;
    var var_2 = Struct_1(841u, var_0.c, vec4<bool>(var_0.c.x, ((u_input.a >> (67480u % 32u)) == var_0.a) & true, all(vec4<bool>(false, true, select(var_0.c.x, var_0.b.x, false), all(vec4<bool>(var_0.c.x, var_0.c.x, var_0.b.x, true)))), true && (-412f < _wgslsmith_f_op_f32(-177f * global0.x))));
    var var_3 = 1i;
    let var_4 = Struct_3(_wgslsmith_div_vec3_u32(max(vec3<u32>(26811u, 65402u | u_input.a, ~1u), abs(select(vec3<u32>(var_0.a, 4294967295u, 0u), vec3<u32>(var_2.a, var_2.a, 0u), true))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(119242u, 43562u, u_input.a), vec3<u32>(u_input.a, 28149u, 0u)), vec3<u32>(~u_input.a, _wgslsmith_div_u32(13268u, 4294967295u), var_0.a >> (1u % 32u)))));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1575f, -680f), vec2<f32>(global0.x, global0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -459f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1000f), vec2<f32>(global0.x, 1267f), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f + 570f) * -1373f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.x))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-2237f, global0.x), vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2388f, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1370f, -513f)))), true))));
    var var_0 = 1i;
    var var_1 = select(vec4<bool>(select(true, global0.x > _wgslsmith_f_op_f32(ceil(-256f)), global0.x > -549f), false, !any(vec4<bool>(true, true, arg_0, arg_0)) && arg_0, arg_0 == (!arg_0 | true)), !select(vec4<bool>(true, arg_0 || false, global0.x >= global0.x, any(vec2<bool>(arg_0, false))), !vec4<bool>(true, false, arg_0, arg_0), arg_0 & arg_0), select(vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(arg_0, arg_0, false | arg_0, all(vec3<bool>(false, arg_0, arg_0))), select(vec4<bool>(false, select(arg_0, false, arg_0), arg_0 || false, !arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0), true), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, true, true, arg_0), true))));
    var_1 = !vec4<bool>(arg_0 && any(select(vec4<bool>(arg_0, var_1.x, arg_0, var_1.x), vec4<bool>(var_1.x, false, true, false), true)), false, arg_0 == (true & all(vec2<bool>(arg_0, var_1.x))), any(var_1.wz));
    var_0 = -_wgslsmith_mod_i32(u_input.b.x, 0i) ^ ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.b.x, 16422i) ^ vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(475i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(19709i, -22083i, 10819i, -35908i)), select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, -2147483647i, -1205i, u_input.b.x), arg_0), !vec4<bool>(arg_0, false, true, arg_0)));
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.a, 1u | reverseBits(u_input.a)) & u_input.a, abs(~(reverseBits(u_input.a) << (select(u_input.a, 1u, arg_0) % 32u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(~(~4294967295u)), ~19044u, firstTrailingBit(1u), func_2(true) & 114121u), vec4<u32>(u_input.a, 40727u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, 0u), 65467u, func_2(true), 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_1.a.x, arg_1.a.x), vec4<u32>(u_input.a, u_input.a, arg_1.a.x, 16150u))), func_2(arg_0.x)));
    let var_1 = vec2<u32>(93005u, firstTrailingBit(var_0));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(exp2(global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2308f, var_3))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, 341f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1349f, arg_3))))), vec2<bool>(all(vec2<bool>(arg_2.x, arg_0.x)), select(true, arg_2.x, true)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -945f), 1f));
    return arg_0.wyw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + global0.x));
    var var_0 = Struct_3(select(~(~(vec3<u32>(4294967295u, u_input.a, 37788u) | vec3<u32>(u_input.a, 0u, u_input.a))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, abs(38141u), firstLeadingBit(21067u)), _wgslsmith_mult_vec3_u32(vec3<u32>(45418u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 4294967295u, 0u) % vec3<u32>(32u)), min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 21910u))), vec3<u32>(firstLeadingBit(u_input.a), 34189u, max(u_input.a, u_input.a))), select(func_1(vec4<bool>(true, true, false, false), Struct_3(vec3<u32>(0u, u_input.a, 28962u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -484f)), vec3<bool>(true, true, true), !(u_input.b.x > u_input.b.x))));
    global0 = vec2<f32>(-629f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1466f, global0.x) + _wgslsmith_f_op_f32(sign(-702f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_1 = Struct_2(Struct_1(0u, vec4<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false)), !(380f != global0.x), (var_0.a.x <= 49494u) | false, 377f >= _wgslsmith_f_op_f32(-global0.x)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))))), u_input.a >> (min(select(_wgslsmith_mod_u32(1u, var_0.a.x), 11782u, func_1(vec4<bool>(true, true, true, false), Struct_3(vec3<u32>(4294967295u, 4294967295u, var_0.a.x)), vec3<bool>(true, false, true), -497f).x), ~abs(u_input.a)) % 32u), vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true)), true));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(global0.x)), 1349f);
    let var_2 = _wgslsmith_div_u32(func_2(var_1.a.b.x), select(52014u, var_0.a.x, false));
    let var_3 = _wgslsmith_mult_i32(-u_input.b.x, min(u_input.b.x, 0i));
    var var_4 = 8625i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_i32(-u_input.b.x, 30493i)), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-779f * 937f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.x)))) - global0.x)), ~vec3<i32>(var_3, firstTrailingBit(~(-36320i)), 9593i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, var_3, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))), global0.x);
}

