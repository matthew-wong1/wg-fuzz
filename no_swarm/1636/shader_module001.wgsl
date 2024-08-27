struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = arg_0.e.a.x;
    var var_3 = 100f;
    var var_4 = -1000f;
    return var_0.d.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = 336f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) * _wgslsmith_f_op_f32(-arg_1.c));
    var var_1 = !(!(!select(select(vec4<bool>(arg_1.b, var_0, arg_0.x, arg_0.x), vec4<bool>(var_0, true, true, false), vec4<bool>(true, true, var_0, true)), !vec4<bool>(true, arg_0.x, false, false), vec4<bool>(true, true, true, false))));
    let var_2 = vec4<bool>(true, var_1.x, !all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_0, false)), vec2<bool>(var_1.x, false), arg_0.yx)), true);
    let var_3 = arg_1;
    let var_4 = Struct_4(Struct_2(~arg_2, all(!arg_0.yz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c)))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.c)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, arg_1.c) + vec2<f32>(arg_1.c, arg_1.c)))), !(!vec3<bool>(var_2.x, false, false)), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_2.x, 2147483647i, arg_1.a.x), vec4<i32>(u_input.a.x, -1568i, u_input.a.x, u_input.a.x))), vec3<f32>(-518f, _wgslsmith_f_op_f32(floor(arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(arg_1.c, 712f), vec3<bool>(arg_0.x, false, var_2.x), vec4<i32>(var_3.a.x, -16867i, 2147483647i, 12609i), vec3<f32>(arg_1.c, 271f, -785f), Struct_2(vec3<i32>(29458i, -2147483647i, 42521i), true, 727f)), arg_1.c, -788f)))), Struct_2(_wgslsmith_div_vec3_i32(arg_2, -vec3<i32>(11810i, -39120i, arg_1.a.x)), false, arg_1.c)), ~var_3.a);
    return !vec4<bool>(true, var_2.x, var_3.b, !all(select(var_2, var_2, false)));
}

fn func_1() -> Struct_3 {
    var var_0 = all(select(func_2(vec3<bool>(true, true, true), Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 21057i), vec3<i32>(u_input.a.x, 0i, -2147483647i)), true, 1719f), -(vec3<i32>(1i, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))), vec4<bool>(false, -1344f <= _wgslsmith_f_op_f32(round(-1824f)), true, true | all(vec3<bool>(true, true, false))), all(vec2<bool>(true, true)) & true));
    var_0 = false;
    return Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2197f, 1725f)), vec2<f32>(1f, 1f), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec2<f32>(483f, 694f), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), vec2<f32>(1f, 1f), !(!(u_input.a.x < 30108i)))), vec3<bool>(false, (-u_input.a.x < -u_input.a.x) & true, _wgslsmith_dot_vec3_i32(vec3<i32>(-80444i, u_input.a.x, u_input.a.x) & vec3<i32>(u_input.a.x, 17731i, u_input.a.x), countOneBits(vec3<i32>(2147483647i, u_input.a.x, 13078i))) <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-24872i, u_input.a.x, u_input.a.x, -46914i), vec4<i32>(8793i, u_input.a.x, u_input.a.x, 1i)))), max(vec4<i32>(u_input.a.x, u_input.a.x, -3830i, u_input.a.x) >> (vec4<u32>(select(u_input.b.x, 4294967295u, false), ~u_input.b.x, 77583u, _wgslsmith_dot_vec4_u32(vec4<u32>(2507u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(69486u, u_input.b.x, u_input.b.x, 0u))) % vec4<u32>(32u)), ~(-vec4<i32>(-8651i, u_input.a.x, 18105i, 1i)) ^ _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, -13160i, 19820i, u_input.a.x)), vec4<i32>(u_input.a.x, 10223i, 4153i, -39767i) & vec4<i32>(u_input.a.x, 1i, 36383i, 32228i))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(853f, 2275f, -413f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-328f, 380f, 334f), vec3<f32>(-825f, 641f, -505f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, 581f, -301f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1754f, 436f, -170f) * vec3<f32>(-675f, 217f, 964f))))))), Struct_2(firstTrailingBit(vec3<i32>(~34653i, -1i, u_input.a.x)), true, _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(957f, -300f))), vec3<bool>(true, true, true), vec4<i32>(-12217i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-493f, -815f, -513f)), Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), true, -1222f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1429f * -2108f), _wgslsmith_f_op_f32(min(1534f, -807f)))), 1127f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1();
    let var_2 = Struct_1(vec2<bool>(!(true && func_2(var_1.b, var_1.e, var_1.c.wzy).x), any(var_1.b.zy) | all(vec3<bool>(var_1.e.b, var_1.b.x, false))), var_1.d.x, u_input.b, ~(u_input.b.x >> (57364u % 32u)), -217f);
    var var_3 = var_1.e;
    var_3 = Struct_2(vec3<i32>(0i, 1i, ~max(-var_3.a.x, i32(-1i) * -59045i)), _wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.e.c), _wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(-441f, var_1.d.x), var_1.b, var_1.c, vec3<f32>(1000f, -239f, -495f), Struct_2(vec3<i32>(0i, u_input.a.x, 18771i), false, 193f)), var_3.c, -543f)), select(var_2.a.x, true, false)))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(trunc(-655f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)));
    var var_4 = Struct_4(func_1().e, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-297f, 580f))))), func_1().b, firstLeadingBit(select(var_1.c, vec4<i32>(var_1.e.a.x, var_1.e.a.x, -1i, 0i), !var_1.b.x)), _wgslsmith_f_op_vec3_f32(var_1.d * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(668f, var_1.e.c, var_2.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, -214f, -2027f) * var_1.d)))), Struct_2(abs(firstLeadingBit(vec3<i32>(var_1.c.x, 0i, 17294i))), all(!vec4<bool>(false, true, var_3.b, false)), var_2.b)), var_1.c.yzz);
    let var_5 = func_1().e;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>((62421u >> (_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(1u, u_input.b.x)) % 32u)) & _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x & 6948u), ~4294967295u), var_3.a.x, ~min(vec4<i32>(var_3.a.x, var_3.a.x, 1i, 37426i), countOneBits(vec4<i32>(0i, -9905i, u_input.a.x, var_3.a.x))) ^ var_4.b.c, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(21880u, var_2.d), vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(u_input.b.x, u_input.b.x)), var_2.c.xy), var_2.c.xx), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2363f, var_2.e, var_2.e, var_3.c), vec4<f32>(var_4.b.e.c, 282f, 454f, var_4.a.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(230f, var_1.e.c, var_2.b, 1773f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, 518f, var_5.c, -705f))) * vec4<f32>(_wgslsmith_f_op_f32(-1031f * var_2.e), _wgslsmith_f_op_f32(func_3(var_4.b, 1094f, 1119f)), _wgslsmith_f_op_f32(var_5.c + var_4.b.e.c), _wgslsmith_f_op_f32(var_3.c * var_2.b)))));
}

