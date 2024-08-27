struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_1.a.b.a));
    let var_1 = false;
    var_0 = arg_1.e.a;
    return -1000f;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_5) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.b.a);
    var var_2 = var_0.a;
    var var_3 = arg_2.d.x;
    var var_4 = ~arg_1.a.b.b.x;
    return ~(firstTrailingBit(-arg_0) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.a.b.b.x, arg_2.a.b.b.x, arg_2.a.b.b.x), var_0.e.b) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: bool) -> f32 {
    let var_0 = Struct_4(arg_0, ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, arg_1.a.b.b.x), arg_1.a.b.b), ~(~arg_1.a.b.b.x), _wgslsmith_div_u32(1u, countOneBits(15716u))));
    let var_1 = func_4(vec3<i32>(arg_1.e.x, firstTrailingBit(-(~u_input.d.x)), ~26757i), Struct_3(Struct_2(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-arg_1.a.b.a)), Struct_1(_wgslsmith_f_op_f32(func_3(var_0.a, Struct_3(arg_1.a, vec4<i32>(-13337i, 1i, 21407i, 2147483647i), var_0.b.x, u_input.d, Struct_1(arg_0.x, vec3<u32>(120280u, arg_1.a.b.b.x, 35214u))), Struct_1(arg_1.b, vec3<u32>(arg_1.a.b.b.x, 4294967295u, 10694u)))), vec3<u32>(72127u, 85146u, arg_1.a.b.b.x) ^ vec3<u32>(28902u, arg_1.a.b.b.x, arg_1.a.b.b.x))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c.x, 31751i, -3936i, u_input.c.x), reverseBits(vec4<i32>(-40910i, 1i, -2147483647i, arg_1.e.x))) ^ ~(~u_input.c), ~(~u_input.a.x), vec4<i32>(~(-arg_1.e.x), -arg_1.e.x, u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, u_input.c.x, -88755i), vec3<i32>(arg_1.c.x, -33512i, -26329i), vec3<i32>(0i, arg_1.e.x, arg_1.e.x)), countOneBits(vec3<i32>(18806i, 19267i, u_input.c.x)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x - arg_0.x), _wgslsmith_f_op_f32(-var_0.a.x))), arg_1.a.b.b)), Struct_5(arg_1.a, _wgslsmith_f_op_f32(119f * 869f), _wgslsmith_mod_vec3_i32(reverseBits(u_input.c.zwx), _wgslsmith_add_vec3_i32(-arg_1.c, vec3<i32>(2147483647i, 0i, 2854i) << (vec3<u32>(u_input.e.x, 1u, arg_1.a.b.b.x) % vec3<u32>(32u)))), vec3<bool>(false, arg_1.d.x | (arg_0.x <= 492f), true), vec3<i32>(u_input.c.x, ~19743i, select(abs(1i), i32(-1i) * -1i, arg_1.d.x))));
    let var_2 = arg_1.a.b.b.x;
    var var_3 = arg_1.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 2158f, 136f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1676f, var_0.a.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -1082f), vec3<bool>(false, arg_1.d.x, arg_2))))))))));
    return -718f;
}

fn func_1() -> f32 {
    let var_0 = u_input.b.xy;
    var var_1 = (_wgslsmith_f_op_f32(350f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-466f, -198f), Struct_5(Struct_2(-2020f, Struct_1(-901f, u_input.e)), -329f, vec3<i32>(u_input.c.x, 2147483647i, u_input.d.x), vec3<bool>(true, false, true), vec3<i32>(u_input.c.x, u_input.d.x, -1i)), false)) + _wgslsmith_f_op_f32(trunc(-1463f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) + -639f)) && ((-538f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-998f, 1263f)), _wgslsmith_div_f32(833f, -1404f), true))) && !(true && all(vec2<bool>(false, true))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-910f + 1092f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(637f))))))));
    let var_3 = -u_input.d;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(389f * _wgslsmith_div_f32(2505f, 848f))) - 2680f) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-788f))))));
    return 1901f;
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_f_op_f32(-162f * arg_2.x), Struct_1(_wgslsmith_div_f32(arg_1, -142f), ~vec3<u32>(u_input.b.x, 28274u, 15099u))), arg_3.a.x, u_input.d.wxx, !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, false)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false))), _wgslsmith_mult_vec3_i32(u_input.c.ywy, u_input.c.zyw));
    let var_1 = min(~0i, _wgslsmith_sub_i32(u_input.d.x | -u_input.c.x, ~(2147483647i | u_input.c.x)) << ((firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b.b.x, u_input.a.x, var_0.a.b.b.x), vec3<u32>(arg_3.b.x, 1u, u_input.e.x))) << (u_input.e.x % 32u)) % 32u));
    let var_2 = countOneBits(firstLeadingBit(select(abs(arg_3.b), ~vec3<u32>(0u, arg_3.b.x, 1u), false) >> (vec3<u32>(1u, arg_3.b.x >> (u_input.b.x % 32u), _wgslsmith_clamp_u32(var_0.a.b.b.x, u_input.b.x, var_0.a.b.b.x)) % vec3<u32>(32u))));
    var var_3 = 1i;
    let var_4 = ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(26817u, 36312u, 65420u, var_0.a.b.b.x), ~vec4<u32>(0u, 36862u, 30721u, var_2.x), vec4<u32>(u_input.e.x, var_2.x, var_2.x, u_input.b.x))) | ~countOneBits(countOneBits(countOneBits(vec4<u32>(4294967295u, u_input.e.x, 0u, arg_3.b.x))));
    return Struct_1(-577f, ~(~(~var_2)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec3<u32>(arg_1.b.x, 3183u, func_5(vec3<f32>(-219f, _wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(round(arg_1.a))), _wgslsmith_f_op_f32(arg_0.a.x + 1672f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1239f, -1000f, arg_1.a, arg_0.a.x))))), arg_0).b.x);
    let var_1 = u_input.c.xzy;
    var var_2 = 873f;
    let var_3 = true;
    var_2 = arg_0.a.x;
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1216f, arg_1.a)), arg_0.a.x), func_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, 896f, -1236f), vec3<f32>(2433f, arg_1.a, 917f), var_3)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1432f), arg_1.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, arg_0.a.x, arg_1.a))))), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-510f, _wgslsmith_f_op_f32(-272f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1059f - -205f) - -664f))));
    let var_1 = false;
    let var_2 = func_6(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(731f, var_0) - _wgslsmith_f_op_f32(step(655f, -579f)))), ~u_input.e), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 285f, var_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -299f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f), -365f)), vec4<f32>(_wgslsmith_f_op_f32(var_0 - 284f), var_0, 1287f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1())))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-118f, var_0) - vec2<f32>(398f, var_0))), select(~vec3<u32>(u_input.e.x, u_input.a.x, u_input.a.x), max(u_input.b, u_input.b), any(vec3<bool>(true, var_1, var_1))))));
    var var_3 = _wgslsmith_clamp_vec3_i32(u_input.c.zzz, -vec3<i32>(_wgslsmith_sub_i32(u_input.d.x << (var_2.b.b.x % 32u), min(15733i, u_input.c.x)), 34364i ^ -u_input.c.x, u_input.c.x), vec3<i32>(-2147483647i, u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.d.x), vec2<i32>(-11068i, u_input.c.x))) | max(u_input.d.zzz, u_input.d.zwx));
    let var_4 = ~(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_2.b.b.x, var_2.b.b.x), vec3<u32>(45076u, var_2.b.b.x, 16655u)), var_2.b.b) ^ ~1u);
    var var_5 = Struct_3(Struct_2(470f, Struct_1(_wgslsmith_f_op_f32(-1271f + _wgslsmith_f_op_f32(func_2(vec2<f32>(-1911f, var_2.a), Struct_5(var_2, 1000f, u_input.d.xwz, vec3<bool>(false, var_1, var_1), u_input.c.yzy), var_1))), reverseBits(vec3<u32>(var_4, 33347u, var_2.b.b.x)) & min(vec3<u32>(10416u, 20699u, u_input.a.x), vec3<u32>(var_4, var_2.b.b.x, 4294967295u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(61200i, 1i, u_input.d.x), vec3<i32>(-1i, 32214i, u_input.c.x)), Struct_3(Struct_2(327f, var_2.b), u_input.d, u_input.e.x, vec4<i32>(var_3.x, -9733i, var_3.x, var_3.x), Struct_1(var_2.a, vec3<u32>(var_2.b.b.x, 21764u, 17481u))), Struct_5(var_2, var_0, u_input.d.xyw, vec3<bool>(true, true, false), vec3<i32>(var_3.x, -52235i, var_3.x))).x, firstTrailingBit(countOneBits(u_input.c.x)), -1i, u_input.d.x), ~vec4<i32>(var_3.x, abs(0i), 59798i, u_input.c.x << (4294967295u % 32u))), u_input.e.x, vec4<i32>(~_wgslsmith_mod_i32(reverseBits(-53111i), u_input.d.x), _wgslsmith_div_i32(-u_input.c.x, u_input.d.x) >> (~(1u >> (var_4 % 32u)) % 32u), -_wgslsmith_add_i32(u_input.d.x, -1i), u_input.c.x), var_2.b);
    var_5 = Struct_3(Struct_2(-742f, var_5.a.b), -firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.d.x, 8086i, u_input.c.x, 33096i), vec4<i32>(var_5.b.x, -12402i, 3314i, 1i))), ~1u, ~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, ~vec4<i32>(u_input.d.x, -2147483647i, -22018i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-25680i, -29927i, 0i, u_input.d.x), u_input.c) << (~vec4<u32>(var_5.c, u_input.a.x, 4294967295u, u_input.e.x) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_2.a * var_2.b.a)), vec3<u32>(var_4, ~var_5.e.b.x, _wgslsmith_sub_u32(var_4, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4, var_4, 0u, 0u), vec4<u32>(var_2.b.b.x, var_5.a.b.b.x, var_4, 4294967295u))))));
    let var_6 = select(!(!vec2<bool>(var_1 && var_1, false)), vec2<bool>(any(select(!vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, false, true, var_1), select(vec4<bool>(false, var_1, true, true), vec4<bool>(false, true, var_1, var_1), var_1))), select(!(!var_1), 781u > _wgslsmith_clamp_u32(var_2.b.b.x, 4294967295u, var_2.b.b.x), all(!vec2<bool>(var_1, var_1)))), false);
    var var_7 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_div_f32(var_5.a.b.a, var_5.e.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a)))), func_6(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1183f, 1405f)))), vec3<u32>(~var_2.b.b.x, _wgslsmith_clamp_u32(17302u, var_5.c, 93136u), ~118569u)), Struct_1(-458f, ~var_5.a.b.b)).b.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec3<i32>(max(-u_input.d.x, 1i << (var_4 % 32u)), var_3.x, -11912i), Struct_3(func_6(Struct_4(vec2<f32>(var_0, var_5.e.a), var_7.b), var_5.a.b), abs(vec4<i32>(var_3.x, var_5.d.x, 3294i, -13428i)) & vec4<i32>(var_5.b.x, -1i, -1i, -23210i), reverseBits(var_7.b.x), var_5.b & vec4<i32>(16785i, 16344i, var_3.x, -2147483647i), var_2.b), Struct_5(Struct_2(_wgslsmith_f_op_f32(var_0 + 640f), var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -688f), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.zz), ~1i, 2147483647i), !(!vec3<bool>(var_6.x, var_1, var_1)), vec3<i32>(~0i, -30582i, _wgslsmith_sub_i32(var_5.b.x, var_3.x)))).x);
}

