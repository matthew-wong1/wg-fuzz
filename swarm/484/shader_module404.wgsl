struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<f32> {
    let var_0 = Struct_3(all(vec3<bool>(!(!arg_0), any(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, false, false, false), arg_0)), all(vec3<bool>(arg_0, arg_0, false)) && false)), vec3<i32>(-2147483647i, -27063i, -19374i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1303f, 977f, 410f)))))));
    let var_1 = var_0.b.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-arg_1)), 424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(166f)) * _wgslsmith_f_op_f32(330f + var_0.c.x)))));
    let var_3 = select(vec4<bool>(true, select(false, true, !all(vec3<bool>(true, true, false))), !all(!vec4<bool>(arg_0, true, var_0.a, false)), (-894f > _wgslsmith_f_op_f32(-var_0.c.x)) && (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(0u, u_input.a.x, u_input.b.x)) >= (5848u | u_input.b.x))), select(!(!vec4<bool>(false, arg_0, false, arg_0)), select(!select(vec4<bool>(arg_0, var_0.a, arg_0, var_0.a), vec4<bool>(true, false, true, true), true), vec4<bool>(true, !var_0.a, true, true), select(false, var_0.a, true)), false), any(vec2<bool>(!arg_0, true)) || var_0.a);
    var var_4 = !var_3.zz;
    return vec3<f32>(1555f, -2052f, _wgslsmith_f_op_f32(var_0.c.x * -888f));
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = vec3<u32>(16516u >> ((49350u << (u_input.b.x % 32u)) % 32u), ~(~(~(~u_input.a.x))), u_input.b.x);
    let var_1 = Struct_3(!(!(_wgslsmith_div_f32(829f, 3198f) < arg_0.x)), vec3<i32>(-2147483647i, -31770i, 1i), _wgslsmith_f_op_vec3_f32(arg_0.wzy * vec3<f32>(-957f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -746f)));
    let var_2 = var_1.c.x;
    let var_3 = var_1.a;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), -1000f, 436f), _wgslsmith_f_op_vec3_f32(func_3(var_3, arg_0.x))))));
    return select(!select(select(vec2<bool>(true, var_1.a), !vec2<bool>(true, var_1.a), select(vec2<bool>(var_3, var_3), vec2<bool>(var_3, true), false)), !(!vec2<bool>(var_1.a, var_3)), vec2<bool>(true, !var_1.a)), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(var_3, var_1.a), vec2<bool>(true, var_1.a), true)), !vec2<bool>(var_1.a, var_1.a), !var_1.a), any(vec3<bool>(select(var_3, arg_0.x < -1000f, any(vec2<bool>(var_1.a, false))), true, !var_1.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-59772i, 0i), 2147483647i, abs(0i)), arg_1);
    var var_1 = abs(vec2<u32>(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 130589u, 0u)), vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x)), 0u));
    var_1 = ~u_input.a;
    var var_2 = any(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(544f, arg_1.a.x, 1199f, -958f), vec4<f32>(arg_1.a.x, arg_1.a.x, 1740f, var_0.b.a.x)))))));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.x, 287f, arg_1.a.x, 2364f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-963f, -1021f, 1000f, arg_1.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2030f, var_0.b.a.x, 1755f, 1823f) + vec4<f32>(-604f, -435f, -266f, var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, -2634f, 679f, -1006f))))))).x;
    return var_0;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -495f);
    let var_1 = func_4(select(!(!func_2(vec4<f32>(1194f, arg_3.b.a.x, 599f, -292f))), vec2<bool>(false, all(!vec3<bool>(arg_0, arg_0, arg_1))), all(!(!vec2<bool>(arg_1, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.b.a)) * vec3<f32>(_wgslsmith_f_op_f32(1000f - 473f), arg_3.b.a.x, arg_3.b.a.x)))).b;
    var var_2 = vec2<i32>(_wgslsmith_add_i32((arg_3.a | -30241i) >> (88314u % 32u), 12596i), max(-33700i, arg_3.a)) << (u_input.b % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -103f);
    var var_4 = u_input.a.x;
    return 8983u;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = func_5(true, !arg_0, 1i, func_4(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -298f, arg_1, 1895f) + vec4<f32>(arg_1, arg_1, 897f, -2402f))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(460f, -283f, arg_1) + vec3<f32>(-447f, arg_1, arg_1))))) < ~4294967295u;
    var var_1 = Struct_2(_wgslsmith_sub_i32(-(~(~(-83609i))), 1i), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, _wgslsmith_f_op_f32(1422f * arg_1), _wgslsmith_f_op_vec3_f32(func_3(arg_0, arg_1)).x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, -1375f, arg_1)), _wgslsmith_div_vec3_f32(vec3<f32>(-577f, 2550f, arg_1), vec3<f32>(arg_1, -122f, 930f))))))));
    var_1 = func_4(vec2<bool>(countOneBits(reverseBits(u_input.b.x)) >= 58019u, any(!select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false)))), func_4(!vec2<bool>(any(vec3<bool>(false, arg_0, arg_0)), all(vec3<bool>(false, arg_0, true))), Struct_1(var_1.b.a)).b);
    let var_2 = max(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-41783i, ~var_1.a, i32(-1i) * -4793i), ~vec3<i32>(-2147483647i, 54237i, 0i), arg_0), vec3<i32>(firstLeadingBit(var_1.a), var_1.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, 12912i), reverseBits(var_1.a)))), vec3<i32>(firstLeadingBit(~(-var_1.a)), _wgslsmith_sub_i32(~(~1i), -43498i), firstTrailingBit((var_1.a ^ var_1.a) | -11943i)));
    var_1 = func_4(select(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a.x, var_1.b.a.x, 537f, 239f) * vec4<f32>(412f, var_1.b.a.x, var_1.b.a.x, -401f)))), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, false))), select(select(arg_0, arg_0, false), all(vec3<bool>(true, arg_0, arg_0)), true)), true), func_4(vec2<bool>(!any(vec4<bool>(true, arg_0, false, true)), !(!arg_0)), var_1.b).b);
    return func_4(vec2<bool>(any(vec2<bool>(true, select(false, arg_0, true))), arg_0), Struct_1(var_1.b.a)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = vec2<u32>(_wgslsmith_div_u32(57802u, 709u) ^ ~firstTrailingBit(_wgslsmith_div_u32(1u, 39159u)), 1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1141f, 511f), _wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(1000f + -2045f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1246f, -575f, -1000f) + vec3<f32>(-248f, 1443f, 791f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f)), -137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-310f)))))));
    var var_3 = func_1((~0u <= (var_1.x & ~var_1.x)) && false, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x))))));
    var var_4 = func_4(select(vec2<bool>(true, true), vec2<bool>(true, !any(vec4<bool>(false, true, true, true))), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(335f, -498f, 285f, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 1122f, 597f, var_3.a.x)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false))))), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_3.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_3.a, var_3.a) - _wgslsmith_f_op_vec3_f32(trunc(var_3.a)))))));
    var var_5 = max(var_4.a << ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, var_1.x), vec3<u32>(955u, 3872u, 13997u) << (vec3<u32>(1u, var_1.x, 2137u) % vec3<u32>(32u))) & var_1.x) % 32u), min(2147483647i, -(_wgslsmith_add_i32(var_4.a, var_4.a) << (0u % 32u))));
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, vec3<i32>(_wgslsmith_clamp_i32(~(-33556i), max(-11453i, var_4.a) ^ _wgslsmith_mult_i32(5053i, -1844i), -select(var_4.a, -24393i, false)), firstTrailingBit(var_4.a), -(-2147483647i & var_4.a) ^ (var_4.a << (~11492u % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) + var_2.x), _wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(f32(-1f) * -337f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(930f - var_2.x) * _wgslsmith_f_op_f32(ceil(244f))), var_3.a.x)));
}

