struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = select(~u_input.c.zz, _wgslsmith_mod_vec2_u32(~u_input.d, _wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 7248u, 0u, 77467u), vec4<u32>(0u, u_input.c.x, u_input.c.x, 37607u))), u_input.c.yx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1094f, 244f, false)))) <= -633f);
    let var_1 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1989f))), -921f, 220f)), 1i, -2147483647i, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(519f, -195f, 229f), vec3<f32>(1598f, -452f, -342f))) - vec3<f32>(-2034f, 703f, -1185f))), -403f, (all(vec4<bool>(true, true, true, true)) | true) && true, -1000f == _wgslsmith_f_op_f32(select(-1074f, _wgslsmith_f_op_f32(f32(-1f) * -1469f), false)), vec3<i32>(1i, _wgslsmith_add_i32(u_input.b, -1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, u_input.b, u_input.b), max(vec3<i32>(u_input.b, 0i, u_input.e), vec3<i32>(u_input.e, u_input.b, u_input.b))))));
    var var_2 = (select(true, !all(vec2<bool>(var_1.d.d, var_1.d.c)), var_1.d.d) | any(select(select(vec2<bool>(false, true), vec2<bool>(false, var_1.d.d), var_1.d.d), select(vec2<bool>(var_1.d.c, true), vec2<bool>(false, var_1.d.c), var_1.d.d), any(vec3<bool>(var_1.d.d, true, false))))) && var_1.d.c;
    var var_3 = reverseBits(select(vec3<i32>(0i & var_1.d.e.x, u_input.e, ~(-49404i)) << (u_input.c % vec3<u32>(32u)), vec3<i32>(~var_1.c, _wgslsmith_div_i32(u_input.e, var_1.d.e.x), var_1.d.e.x) ^ (abs(var_1.d.e) | vec3<i32>(-1i, u_input.e, var_1.c)), true));
    var_0 = vec2<u32>(19518u, ~4294967295u);
    return var_1.a.a;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3())))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -2147483647i) >> (vec2<u32>(u_input.a, u_input.d.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-2147483647i, -28691i), true), abs(vec2<i32>(u_input.b, 59708i)))), u_input.e), ~u_input.e, Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2521f), _wgslsmith_f_op_f32(max(1189f, -499f)), _wgslsmith_f_op_f32(abs(-739f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-797f, _wgslsmith_f_op_f32(-1524f - 1000f), false)) * 124f), u_input.a != 1u, true, -(vec3<i32>(u_input.b, -44428i, -2147483647i) | vec3<i32>(82121i, 1i, 2147483647i))));
    var var_1 = vec4<bool>(true, !any(select(select(vec2<bool>(true, false), vec2<bool>(false, var_0.d.c), false), !vec2<bool>(true, var_0.d.c), !vec2<bool>(var_0.d.c, true))), !all(!vec2<bool>(var_0.d.c, var_0.d.d)), select(var_0.d.c, all(!vec3<bool>(var_0.d.c, var_0.d.d, true)), !any(!vec3<bool>(var_0.d.c, false, true))));
    var var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(858f, 433f), var_0.a.a.x, var_0.a.a.x)), _wgslsmith_f_op_f32(round(var_0.d.b)), any(!select(vec4<bool>(false, true, var_0.d.d, true), !vec4<bool>(var_1.x, var_0.d.c, false, true), vec4<bool>(var_1.x, var_0.d.c, var_0.d.c, true))), (~(i32(-1i) * -37199i) < min(_wgslsmith_div_i32(-14309i, -1i), abs(var_0.b))) && var_1.x, -abs(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.b), _wgslsmith_sub_i32(2147483647i, var_0.b), _wgslsmith_mult_i32(var_0.b, -40350i))));
    var var_3 = var_0.a.a.x;
    var_3 = var_2.b;
    return Struct_3(Struct_1(var_0.a.a), 0i, 0i, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a.a, vec3<f32>(var_2.a.a.x, 1630f, var_0.a.a.x)))), var_0.a.a.x, !(all(vec2<bool>(var_1.x, false)) & true), _wgslsmith_f_op_f32(-var_2.b) == 148f, vec3<i32>(-33356i, ~_wgslsmith_dot_vec3_i32(var_2.e, var_2.e), 1i)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, arg_2.a.a.x, -806f))))));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_3(func_4(func_2(), vec2<bool>(true, u_input.e > u_input.b), func_2()), -15464i, u_input.b, func_2().d);
    var var_1 = firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 13066u) | _wgslsmith_clamp_vec2_u32(u_input.d, u_input.d, u_input.d), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, u_input.c.x), vec2<bool>(false, var_0.d.d)), u_input.d, vec2<u32>(u_input.d.x, u_input.d.x)))) >> (~vec2<u32>(_wgslsmith_sub_u32(25974u | u_input.d.x, _wgslsmith_sub_u32(u_input.a, 5728u)), 1u) % vec2<u32>(32u));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1483f, -524f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.a.yy + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, var_0.d.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-653f, var_0.d.a.a.x) * var_0.a.a.yy))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a.yz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.a.xx), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.d.b, 1616f)))))));
    var_1 = ~vec2<u32>(_wgslsmith_mult_u32(34294u, 0u), select(~_wgslsmith_div_u32(u_input.c.x, var_1.x), u_input.d.x, false));
    var_1 = min(u_input.d, vec2<u32>(_wgslsmith_mult_u32(~(~30188u), _wgslsmith_mult_u32(60357u, u_input.d.x) & ~0u), abs(min(u_input.c.x, 66174u))));
    return select(vec2<u32>(var_1.x, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u & var_1.x, ~select(u_input.a, 0u, var_0.d.d)), abs(select(vec2<u32>(u_input.a, var_1.x), select(u_input.d, vec2<u32>(u_input.d.x, 71421u), false), !var_0.d.d))), vec2<bool>(true, true));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    var var_0 = Struct_3(func_4(func_2(), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), func_2()), u_input.e, _wgslsmith_add_i32(~(-2147483647i), -reverseBits(90894i)), Struct_2(func_4(Struct_3(func_2().a, ~u_input.e, _wgslsmith_mult_i32(8718i, -10413i), func_2().d), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1693f, -158f)))), _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(-1i, u_input.e, u_input.b)) <= max(~u_input.b, i32(-1i) * -2147483647i), false, -(~vec3<i32>(u_input.b, u_input.e, -16989i) >> (u_input.c % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(var_0.a.a.x * _wgslsmith_div_f32(515f, 858f));
    var_0 = func_2();
    var var_2 = select(select(!select(select(vec3<bool>(true, var_0.d.c, var_0.d.d), vec3<bool>(false, true, var_0.d.c), true), vec3<bool>(var_0.d.d, false, var_0.d.d), !var_0.d.d), !(!vec3<bool>(false, var_0.d.c, true)), select(!select(vec3<bool>(false, var_0.d.c, false), vec3<bool>(false, var_0.d.c, var_0.d.d), vec3<bool>(var_0.d.c, var_0.d.d, true)), select(vec3<bool>(false, false, var_0.d.c), vec3<bool>(var_0.d.d, var_0.d.d, var_0.d.c), vec3<bool>(true, false, var_0.d.c)), vec3<bool>(all(vec3<bool>(var_0.d.c, var_0.d.c, false)), !var_0.d.c, all(vec4<bool>(true, var_0.d.d, false, true))))), vec3<bool>(any(vec2<bool>(true, true)), all(select(vec3<bool>(var_0.d.c, true, var_0.d.c), vec3<bool>(true, var_0.d.d, true), false)) & func_2().d.d, !any(select(vec2<bool>(true, false), vec2<bool>(true, var_0.d.c), false))), select(!vec3<bool>(var_0.d.b != -907f, true, var_0.d.c), !select(vec3<bool>(true, var_0.d.c, var_0.d.c), select(vec3<bool>(var_0.d.c, false, true), vec3<bool>(var_0.d.c, var_0.d.d, var_0.d.d), var_0.d.d), !vec3<bool>(true, var_0.d.c, var_0.d.c)), all(!vec4<bool>(false, var_0.d.d, false, var_0.d.c)) || (true | !var_0.d.d)));
    var var_3 = _wgslsmith_clamp_vec4_u32(~(~max(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 10323u), min(vec4<u32>(0u, arg_1, 29492u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 16153u)))), (~vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_1) & abs(~vec4<u32>(u_input.a, 4294967295u, 1u, 13611u))) & ((~vec4<u32>(1u, 0u, 52522u, arg_1) ^ (vec4<u32>(4294967295u, 12171u, u_input.d.x, arg_0.x) | vec4<u32>(7190u, arg_1, arg_0.x, 1u))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(3759u, 94141u, u_input.a, arg_1), vec4<u32>(arg_0.x, 4294967295u, 59644u, 4294967295u) | vec4<u32>(u_input.a, 4294967295u, arg_0.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.a, 1u, u_input.d.x))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1335u, u_input.a, 0u, arg_0.x) | ~vec4<u32>(arg_0.x, arg_1, 20902u, arg_0.x), _wgslsmith_add_vec4_u32(~vec4<u32>(140345u, arg_1, u_input.d.x, arg_1), ~vec4<u32>(arg_1, arg_1, u_input.c.x, 1u))));
    return _wgslsmith_clamp_i32(-(_wgslsmith_mod_i32(u_input.b, u_input.e) ^ -13747i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, var_0.b, u_input.e, 44721i), firstLeadingBit(vec4<i32>(var_0.d.e.x, u_input.b, u_input.b, -1i))), ~abs(vec4<i32>(u_input.e, u_input.e, 35202i, u_input.e))), var_0.c) & u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(vec3<f32>(119f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(2514f, -383f, false)))), 1f)), func_5(func_1(), ~u_input.c.x), max(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.e, ~u_input.e), -2147483647i << (~u_input.a % 32u)), max(_wgslsmith_clamp_i32(u_input.e, u_input.b, 2147483647i) | ~2147483647i, ~41412i)), func_2().d);
    var var_1 = func_2();
    var var_2 = Struct_2(func_2().a, var_0.d.a.a.x, var_1.d.c, any(select(vec4<bool>(var_1.d.e.x <= var_0.c, true, false, var_0.d.d), vec4<bool>(all(vec4<bool>(var_0.d.d, false, var_1.d.c, var_1.d.c)), true, select(true, var_1.d.c, var_1.d.d), !var_1.d.d), select(!vec4<bool>(var_0.d.d, false, var_1.d.d, var_0.d.c), vec4<bool>(var_1.d.c, var_0.d.d, false, false), select(vec4<bool>(true, var_0.d.d, false, true), vec4<bool>(var_1.d.d, var_1.d.d, var_1.d.d, false), true)))), _wgslsmith_mod_vec3_i32(var_1.d.e, vec3<i32>(41016i, _wgslsmith_add_i32(~u_input.e, var_1.d.e.x), max(~u_input.e, min(-1i, 0i)))));
    let var_3 = !var_1.d.d && (any(!(!vec3<bool>(var_1.d.d, false, var_0.d.c))) || (false | !var_1.d.c));
    var_2 = var_1.d;
    var var_4 = ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(9985u, 13240u, u_input.a, 1u)), abs(vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.d.x)) ^ ~firstTrailingBit(vec4<u32>(u_input.d.x, 894u, u_input.c.x, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_0.d.e, ~_wgslsmith_sub_vec2_i32(vec2<i32>(-var_1.c, ~var_0.c), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, 0i), var_2.e.yx ^ vec2<i32>(4039i, 68222i))));
}

