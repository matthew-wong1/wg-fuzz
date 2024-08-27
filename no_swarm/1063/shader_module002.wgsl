struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec2<u32> {
    let var_0 = countOneBits(vec2<u32>(0u, 4294967295u));
    var var_1 = Struct_4(~(~1u) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), ~vec4<u32>(0u, 1u, u_input.a, 21316u)) % 32u), Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -59420i), vec2<i32>(_wgslsmith_mod_i32(-7244i, arg_0.x), countOneBits(arg_0.x))), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_0.x, 13557u))), 1u), arg_0.x, Struct_1(vec3<bool>(arg_1, false, true), select(vec2<bool>(true, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), false), select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), arg_1)))), Struct_2(arg_0.zz, var_0.x, ~68508i, Struct_1(select(select(vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, true, false), arg_1), select(vec3<bool>(true, true, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, arg_1)), select(false, arg_1, arg_1)), vec2<bool>(arg_1, arg_1))), Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, 32076i), arg_0.zz) << ((var_0 | vec2<u32>(0u, 0u)) % vec2<u32>(32u)), arg_0.xz), ~(~(~48637u)), arg_0.x, Struct_1(vec3<bool>(arg_1, true, all(vec4<bool>(true, arg_1, arg_1, true))), select(!vec2<bool>(true, arg_1), select(vec2<bool>(false, false), vec2<bool>(true, arg_1), arg_1), false))), 1358f);
    var_1 = Struct_4(0u, Struct_2(abs(var_1.c.a), select(54346u, 48520u, false), ~(-14339i), var_1.c.d), Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(var_1.b.c), _wgslsmith_sub_i32(-2147483647i, arg_0.x)), _wgslsmith_mod_vec2_i32(arg_0.zy, vec2<i32>(arg_0.x, 2147483647i)) & abs(arg_0.zx), var_1.c.a), ~(~(~var_0.x)), _wgslsmith_dot_vec2_i32(var_1.d.a, -(vec2<i32>(-12725i, 22672i) >> (var_0 % vec2<u32>(32u)))), Struct_1(select(var_1.d.d.a, var_1.d.d.a, false), select(!vec2<bool>(var_1.b.d.a.x, var_1.c.d.a.x), select(var_1.c.d.b, var_1.c.d.b, var_1.c.d.a.x), false))), var_1.b, _wgslsmith_f_op_f32(max(-1414f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.e)) * _wgslsmith_f_op_f32(422f + -1390f)), var_1.e)))));
    var var_2 = Struct_3(Struct_2(vec2<i32>(2147483647i, var_1.c.c), ~u_input.a, -6817i, Struct_1(var_1.b.d.a, !(!vec2<bool>(false, arg_1)))), var_1.b);
    var_1 = Struct_4(var_0.x, Struct_2(~arg_0.xx, ~(~u_input.a) & 75166u, _wgslsmith_clamp_i32(-2147483647i, 8877i, -1i), Struct_1(!(!vec3<bool>(arg_1, false, var_2.a.d.b.x)), select(var_1.b.d.b, !vec2<bool>(var_1.d.d.b.x, var_1.d.d.b.x), var_1.d.d.b.x))), Struct_2(~firstTrailingBit(-var_1.b.a), var_0.x, _wgslsmith_mult_i32(var_1.b.a.x, -1i), Struct_1(vec3<bool>(var_2.b.d.b.x, var_2.a.d.a.x, var_1.d.b < var_1.b.b), var_2.b.d.a.zz)), Struct_2(~(-var_2.b.a | (vec2<i32>(var_2.a.c, 2147483647i) ^ var_1.c.a)), _wgslsmith_clamp_u32(~(~81092u), abs(u_input.a), reverseBits(var_2.a.b & var_1.b.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(var_2.b.c, 0i, var_1.c.a.x), arg_0), arg_0), vec3<i32>(var_2.b.a.x, i32(-1i) * -1i, var_2.b.a.x & arg_0.x)), Struct_1(var_2.a.d.a, !var_1.c.d.b)), -1000f);
    return vec2<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(47510u, 40639u, 1415u, 0u), vec4<u32>(var_1.a, var_0.x, var_2.a.b, u_input.a)), u_input.a | var_1.b.b, abs(27297u)), vec4<u32>(_wgslsmith_div_u32(var_0.x, 4294967295u), countOneBits(1u), 1u & u_input.a, 1u)), 50178u, !(~var_2.a.b > ~1u)), firstTrailingBit(~_wgslsmith_div_u32(var_2.a.b & 1u, u_input.a)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> Struct_5 {
    var var_0 = 1u;
    let var_1 = Struct_2(~(((vec2<i32>(1i, -2147483647i) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) | vec2<i32>(53410i, 1i)) ^ -vec2<i32>(2147483647i, 2147483647i)), 82586u, 2147483647i, Struct_1(select(vec3<bool>(true, arg_0, u_input.a <= 48588u), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), false), true), !select(vec2<bool>(arg_1, true), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_1)), !arg_1)));
    var var_2 = ~min(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(52372u, u_input.a), vec2<u32>(var_1.b, 6358u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1.b), vec2<u32>(4294967295u, var_1.b), vec2<u32>(u_input.a, var_1.b))), min(vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, var_1.b)) ^ func_3(vec3<i32>(var_1.a.x, var_1.c, var_1.c), true)) | abs(~reverseBits(vec2<u32>(19498u, 6000u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(arg_2.yw));
    var_2 = vec2<u32>(0u, abs(select(var_2.x, 59267u, true)));
    return Struct_5(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yz * _wgslsmith_f_op_vec2_f32(step(arg_2.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, var_3.x))))) - arg_2.xy), ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(9189u, var_2.x, 14660u), firstTrailingBit(vec3<u32>(var_2.x, var_2.x, var_1.b)))), Struct_3(var_1, Struct_2(_wgslsmith_mod_vec2_i32(select(var_1.a, var_1.a, var_1.d.a.xz), ~var_1.a), var_2.x, firstTrailingBit(var_1.a.x), Struct_1(select(var_1.d.a, var_1.d.a, false), select(var_1.d.a.zy, vec2<bool>(var_1.d.a.x, true), arg_0)))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_5) -> u32 {
    var var_0 = arg_3.d.b.d.a.xz;
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(min(arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.a)))) < _wgslsmith_f_op_f32(trunc(-1181f)), 21989i >= (-6391i | (~arg_3.d.a.c ^ ~arg_3.d.a.c)), var_0.x);
    var_0 = vec2<bool>(var_0.x, true);
    let var_2 = Struct_4(arg_3.c.x, Struct_2(arg_3.d.b.a, _wgslsmith_mod_u32(arg_1, 1u), arg_3.d.b.c ^ _wgslsmith_add_i32(~1i, -arg_3.d.b.c), arg_3.d.b.d), Struct_2(func_2(true, select(arg_3.d.a.a.x <= 0i, any(vec2<bool>(false, false)), var_1.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, -235f, arg_3.b.x, arg_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_3.a, -2668f, -561f), vec4<f32>(880f, arg_3.a, arg_0, 193f)))))).d.a.a, 52074u, _wgslsmith_add_i32(26583i, arg_3.d.a.a.x), Struct_1(arg_3.d.b.d.a, select(vec2<bool>(false, true), select(var_1.zz, vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)), true))), Struct_2(vec2<i32>(-1i) * -arg_3.d.b.a, _wgslsmith_add_u32(abs(75705u), _wgslsmith_mult_u32(min(0u, 21917u), 4294967295u)), _wgslsmith_sub_i32(32625i, 1i), func_2(select(var_0.x, any(vec4<bool>(false, false, true, false)), all(vec4<bool>(var_0.x, true, var_0.x, false))), !any(vec3<bool>(var_1.x, true, arg_3.d.b.d.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_0, arg_3.a, 182f)))).d.b.d), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1606f + -929f)), arg_3.a))));
    var_0 = var_2.c.d.a.yz;
    return ~var_2.c.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<u32>(~1u, u_input.a, arg_1.x, ~func_4(_wgslsmith_f_op_f32(round(-229f)), 78380u, vec3<u32>(abs(1u), 33683u, arg_2.x), func_2(arg_0.x, any(vec2<bool>(false, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2011f, -2347f, 124f, -1465f) * vec4<f32>(-3094f, -171f, -738f, -469f)))));
    let var_1 = vec3<u32>(~u_input.a << (u_input.a % 32u), 4294967295u, _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(firstLeadingBit(arg_1.x), var_0.x)) | 1u);
    let var_2 = ~(-vec3<i32>(_wgslsmith_clamp_i32(1i, 0i, 0i), ~(i32(-1i) * -54235i), 1i));
    let var_3 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-577f)))) - _wgslsmith_f_op_f32(max(-765f, _wgslsmith_div_f32(795f, -652f)))), -171f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1244f, 1475f) - vec2<f32>(640f, 339f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1931f, -357f) * vec2<f32>(732f, -279f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(382f, 1782f) * _wgslsmith_f_op_f32(abs(-1086f))), 789f)), arg_1, func_2(true, ((arg_1.x | var_0.x) | (0u ^ var_1.x)) == u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(382f, -1211f, -238f, 1382f) - vec4<f32>(400f, 394f, -1856f, -1140f))))).d);
    let var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, countOneBits(var_3.d.a.a.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(max(var_2, var_2), var_2 & vec3<i32>(-15113i, -5826i, 0i)), ~var_3.d.a.a.x << (firstLeadingBit(var_1.x) % 32u)) ^ vec2<i32>(select(var_2.x, var_2.x | var_3.d.b.a.x, any(vec2<bool>(arg_0.x, true))), 2147483647i));
    return var_3.d.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(false, false, all(vec3<bool>(true, false, false))), select(vec2<bool>(false, true), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), !all(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = func_1(vec2<bool>(any(!vec4<bool>(var_0.b.x, var_0.a.x, var_0.a.x, var_0.b.x)) || !(!var_0.b.x), var_0.a.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(~4294967295u, _wgslsmith_mult_u32(1u, 4294967295u), 34264u), ~vec3<u32>(~4294967295u, min(u_input.a, 0u), abs(30647u))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~u_input.a, 18339u), u_input.a), select(select(firstLeadingBit(vec2<u32>(1441u, u_input.a)), min(vec2<u32>(33015u, u_input.a), vec2<u32>(4294967295u, u_input.a)), true), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), var_0.b.x)));
    let var_2 = Struct_4(_wgslsmith_sub_u32(~69706u, _wgslsmith_add_u32(min(countOneBits(23579u), 4294967295u), abs(u_input.a))), Struct_2(_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 1i), firstTrailingBit(abs(vec2<i32>(2147483647i, 41915i)))), ~(~(31539u ^ u_input.a)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), var_0), Struct_2(_wgslsmith_div_vec2_i32(max(vec2<i32>(2147483647i, 1i), vec2<i32>(11257i, -9232i)), max(vec2<i32>(2147483647i, 5208i), vec2<i32>(-63826i, -29347i))) << (firstTrailingBit(select(vec2<u32>(0u, 124207u), vec2<u32>(4294967295u, u_input.a), var_0.a.xy)) % vec2<u32>(32u)), _wgslsmith_mod_u32(4294967295u, 26599u), abs(~1i), var_0), func_2(true, all(select(vec2<bool>(true, true), var_0.b, true)) | (!var_0.b.x && !var_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1680f * -791f) + _wgslsmith_f_op_f32(sign(-617f))), 2096f, -510f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f), -1498f))).d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-684f))));
    var_1 = var_2.c.d;
    var_1 = func_1(select(var_0.a.zx, vec2<bool>(false, !var_1.b.x), true), ~abs(firstLeadingBit(vec3<u32>(68330u, 7531u, 6035u) << (vec3<u32>(57549u, 11560u, u_input.a) % vec3<u32>(32u)))), ~(~vec2<u32>(firstTrailingBit(67022u), 0u)));
    let var_3 = var_2.d.d;
    var_1 = Struct_1(var_2.b.d.a, !func_2(var_1.b.x, func_2(any(vec4<bool>(false, true, var_3.b.x, var_3.a.x)), true, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.e, 133f, 1742f, var_2.e), vec4<f32>(-258f, 660f, 1416f, var_2.e)))).d.b.d.a.x, vec4<f32>(_wgslsmith_div_f32(1163f, var_2.e), -902f, _wgslsmith_f_op_f32(-var_2.e), -745f)).d.b.d.a.yx);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec4_u32(~max(vec4<u32>(43534u, 1u, var_2.a, var_2.b.b), vec4<u32>(var_2.d.b, var_2.c.b, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 28262u, 2663u, 1u), abs(vec4<u32>(38044u, 4294967295u, var_2.d.b, 4294967295u))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_2.e)))))), max(var_2.d.a.x, 59459i));
}

