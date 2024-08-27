struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(2147483647i, 1i)), ~(~2147483647i), ~(-2724i))), Struct_1(!vec3<bool>(true, true, select(false, true, false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-927f, -157f) * vec2<f32>(1636f, -551f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), true & all(vec2<bool>(true, false)))), -1312f, 4294967295u), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-413f, _wgslsmith_f_op_f32(max(388f, 767f))), vec2<f32>(_wgslsmith_f_op_f32(step(-295f, 1710f)), _wgslsmith_f_op_f32(-485f + -1487f)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(483f * -1000f)))), u_input.a));
    var_0 = Struct_2(var_0.a, Struct_1(var_0.b.a, var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-3070f)) - _wgslsmith_f_op_f32(exp2(var_0.b.b.x)))), abs(var_0.b.d)), var_0.b);
    var_0 = Struct_2(var_0.a, var_0.c, var_0.c);
    let var_1 = Struct_2(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(37150i, 40860i), vec2<i32>(var_0.a, var_0.a)), vec2<i32>(1i, 19420i) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), var_0.a), var_0.b, Struct_1(var_0.c.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.b.b, vec2<f32>(var_0.c.c, var_0.b.b.x))) * _wgslsmith_f_op_vec2_f32(select(var_0.c.b, vec2<f32>(var_0.c.c, -161f), var_0.b.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1089f, var_0.c.c))))), var_0.b.c, var_0.b.d));
    let var_2 = Struct_1(!vec3<bool>(_wgslsmith_f_op_f32(var_1.c.c + -649f) == 141f, true, !var_0.c.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.c, var_1.b.b.x), _wgslsmith_f_op_vec2_f32(-var_0.c.b), any(vec2<bool>(var_1.c.a.x, var_0.b.a.x)))))), 446f, abs(~var_1.b.d));
    return _wgslsmith_f_op_f32(var_2.b.x - var_0.b.b.x);
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c * arg_0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b.x - arg_0.c.b.x) + _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-arg_0.b.b.x)))), _wgslsmith_f_op_f32(abs(-198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c)));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~(-8214i), select(32198i, 2147483647i, arg_0.c.a.x)), -arg_0.a), vec2<i32>(-1i) * -vec2<i32>(13549i, 18722i));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_0.yx);
    var var_3 = Struct_2(-10392i, Struct_1(arg_0.b.a, arg_0.b.b, var_0.x, ~u_input.a), arg_0.c);
    let var_4 = Struct_2(arg_0.a, var_3.b, Struct_1(!var_3.c.a, _wgslsmith_f_op_vec2_f32(-arg_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), countOneBits(countOneBits(max(arg_0.c.d, arg_0.b.d)))));
    return _wgslsmith_sub_vec4_i32(min(~(~vec4<i32>(33973i, arg_0.a, 0i, -28588i)), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(-25228i, arg_0.a, 1i, var_1.x), vec4<i32>(20463i, -2147483647i, 24344i, -67424i)) << (~vec4<u32>(43044u, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.x, var_3.a, 19693i, arg_0.a), ~vec4<i32>(-10818i, -2147483647i, var_4.a, var_4.a), vec4<i32>(var_4.a, 2147483647i, -2147483647i, arg_0.a)), select(firstTrailingBit(vec4<i32>(var_3.a, var_1.x, arg_0.a, var_3.a) & vec4<i32>(var_4.a, var_3.a, 0i, arg_0.a)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a, 0i), vec2<i32>(var_3.a, var_1.x)), arg_0.a, _wgslsmith_sub_i32(7274i, var_3.a), _wgslsmith_mult_i32(0i, 12415i)), _wgslsmith_add_u32(var_3.b.d, arg_0.c.d) == max(var_4.c.d, 100158u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>) -> i32 {
    var var_0 = arg_1.c;
    let var_1 = arg_1.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(531f, -1832f, 1000f, 455f), vec4<f32>(433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.b.x, -939f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.c)))), _wgslsmith_f_op_f32(-148f + -803f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1334f)) + _wgslsmith_f_op_f32(-arg_0.b.x)), -2447f, -655f, var_0.b.x));
    var_0 = Struct_1(!vec3<bool>(false, !var_0.a.x, !any(vec4<bool>(arg_1.c.a.x, true, true, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-arg_0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(400f * -473f) - _wgslsmith_f_op_f32(703f + var_0.b.x)) + _wgslsmith_f_op_f32(func_3()))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_0.d, 4294967295u, arg_0.d) << (vec4<u32>(11278u, var_1.d, var_1.d, var_0.d) % vec4<u32>(32u))), vec4<u32>(var_1.d, ~0u, ~37739u, ~2202u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), 1f, _wgslsmith_f_op_f32(-arg_0.c)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, 765f, var_0.c, 957f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.c, var_0.b.x, -2261f, 990f)), vec4<bool>(true, arg_0.a.x, var_0.a.x, var_1.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x * var_2.x), _wgslsmith_f_op_f32(abs(476f)), _wgslsmith_f_op_f32(-arg_0.c), arg_1.b.c))));
    return -2147483647i;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~arg_1.d;
    var var_1 = arg_1;
    let var_2 = arg_0;
    var var_3 = vec4<f32>(350f, _wgslsmith_f_op_f32(sign(-149f)), _wgslsmith_f_op_f32(185f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(951f, _wgslsmith_f_op_f32(-1935f - var_1.c))))), arg_0.c.c);
    var var_4 = ~(~select(~(~vec3<u32>(38345u, arg_1.d, 18195u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(5394u, 0u, var_0), vec3<u32>(13520u, 0u, 9893u)), vec3<bool>(true, arg_1.b.x >= var_1.b.x, any(vec4<bool>(var_1.a.x, var_1.a.x, arg_0.c.a.x, var_1.a.x)))));
    return arg_0.c;
}

fn func_1() -> Struct_1 {
    return func_5(Struct_2(func_4(Struct_1(vec3<bool>(true, false, true), vec2<f32>(783f, -980f), 2390f, u_input.a), Struct_2(0i, Struct_1(vec3<bool>(true, false, false), vec2<f32>(-2579f, 187f), 1000f, u_input.a), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-1013f, 1042f), 552f, u_input.a)), func_2(Struct_2(-15384i, Struct_1(vec3<bool>(true, false, false), vec2<f32>(171f, 388f), 931f, u_input.a), Struct_1(vec3<bool>(true, false, true), vec2<f32>(1295f, -371f), -385f, 2825u)))) | _wgslsmith_clamp_i32(abs(28898i), -45757i, -1i), Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec2<f32>(_wgslsmith_div_f32(-304f, 665f), -281f), _wgslsmith_f_op_f32(f32(-1f) * -811f), ~(~u_input.a)), Struct_1(vec3<bool>(true, true, any(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1792f, -1651f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1233f, 658f), vec2<f32>(1713f, -1066f))), _wgslsmith_f_op_f32(ceil(-259f)), 36184u)), Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(any(vec2<bool>(true, false)), true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), 2150f, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1066f + _wgslsmith_f_op_f32(ceil(-1646f)));
    let var_1 = func_1();
    let var_2 = Struct_1(!vec3<bool>(true, any(!vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)), var_1.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-529f + -560f))))), -3819f, func_1().d ^ reverseBits(var_1.d));
    let var_3 = _wgslsmith_f_op_f32(-var_2.c);
    var var_4 = Struct_2(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(-1i, func_4(var_1, Struct_2(4013i, var_1, Struct_1(vec3<bool>(false, true, var_2.a.x), vec2<f32>(var_2.b.x, var_3), -1923f, u_input.a)), vec4<i32>(0i, 2147483647i, 13400i, 35173i)) ^ ~(-1i)), max(abs(~(-2147483647i)), 11984i)), var_2, func_5(Struct_2(2147483647i, var_1, func_1()), var_2));
    var var_5 = var_1.d;
    var_0 = 1310f;
    var var_6 = var_1;
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.c, 816f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_4.a, 10045i), vec2<i32>(var_4.a, 7764i), vec2<i32>(-54324i, var_4.a)), -vec2<i32>(var_4.a, -19304i)), _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_4.a, 17234i), vec2<i32>(59218i, -1402i)), -vec2<i32>(var_4.a, var_4.a) & countOneBits(vec2<i32>(-1i, 61079i)))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_4.a, ~reverseBits(var_4.a)), min(~(-vec2<i32>(2147483647i, 2816i)), vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-43384i, var_4.a, var_4.a, var_4.a), vec4<i32>(var_4.a, var_4.a, 3941i, -14829i))))), vec3<f32>(-606f, -1010f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), var_6.b.x))), vec2<i32>(-4300i, _wgslsmith_add_i32(var_4.a, var_4.a)));
}

