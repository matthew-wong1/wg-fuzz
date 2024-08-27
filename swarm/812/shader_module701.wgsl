struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> i32 {
    var var_0 = max(_wgslsmith_add_u32(abs(select(1u, ~0u, true)), firstTrailingBit(~_wgslsmith_sub_u32(35051u, 10545u))), firstLeadingBit(reverseBits(1u)));
    var_0 = 4294967295u;
    var var_1 = Struct_2(1u);
    let var_2 = ~_wgslsmith_mod_u32(var_1.a, 0u);
    let var_3 = all(select(vec3<bool>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(3737i, u_input.a.x, -26713i)) >= ~42768i, true, true), vec3<bool>(any(vec3<bool>(false, false, true)) == (var_1.a > var_2), true, all(vec2<bool>(true, true))), true));
    return ~(-37753i);
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_1(u_input.a.x, !select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), 1899f, _wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(14758u, arg_0.x, arg_0.x, 1u)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.x, 17632u, arg_0.x, arg_0.x), vec4<u32>(88657u, 4294967295u, 4294967295u, arg_0.x)), ~vec4<u32>(48224u, 4294967295u, 4294967295u, arg_0.x))), ~(~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2105i, u_input.a.x, -138i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(arg_0.x, arg_0.x, 78354u, 4294967295u) % vec4<u32>(32u)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, var_0.c, var_0.c), vec3<f32>(1217f, 821f, 130f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, -789f))))))), var_0);
    let var_2 = any(select(!(!select(vec3<bool>(var_1.b.b.x, var_1.b.b.x, true), vec3<bool>(var_1.b.b.x, var_0.b.x, false), var_1.b.b)), var_1.b.b, vec3<bool>(var_1.a.x < _wgslsmith_div_f32(854f, var_1.b.c), true, all(vec4<bool>(var_1.b.b.x, true, false, var_1.b.b.x)) == false)));
    var var_3 = var_0.c;
    let var_4 = Struct_3(vec3<f32>(-528f, 1595f, _wgslsmith_f_op_f32(-var_0.c)), Struct_1(_wgslsmith_mod_i32(17316i, -_wgslsmith_dot_vec2_i32(var_0.e.zx, vec2<i32>(u_input.a.x, -39692i))), !var_1.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.c * var_1.b.c)))), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, var_1.b.d.x, 7351u), ~(var_1.b.d | vec4<u32>(1u, 26676u, 4294967295u, 59824u))), abs(-var_1.b.e)));
    return vec3<bool>(!(!select(select(var_0.b.x, false, false), false && var_1.b.b.x, var_0.c < 1328f)), var_4.a.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f - var_0.c) + _wgslsmith_f_op_f32(ceil(340f))), _wgslsmith_div_f32(var_1.b.c, _wgslsmith_f_op_f32(-697f - -848f))), select(!var_1.b.b.x, select(_wgslsmith_f_op_f32(step(var_4.a.x, var_0.c)) <= _wgslsmith_f_op_f32(var_1.b.c + var_4.b.c), var_4.b.b.x, max(var_1.b.e.x, 1827i) <= var_0.a), !(!any(vec3<bool>(var_1.b.b.x, true, var_1.b.b.x)))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_1(u_input.a.x, !select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true), select(true, select(false, false, false), true)), arg_0, vec4<u32>(0u, 31586u, 0u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, 1u), 1u)), countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zz) << (~34665u % 32u), ~(~(-1i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 38378i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i)), ~min(u_input.a.x, -7277i))));
    var_0 = Struct_1(u_input.a.x, func_3(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(21615u, 1u), var_0.d.yw))), 1037f, ~var_0.d, vec4<i32>(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_0.a, var_0.e.x), var_0.e.www), _wgslsmith_mod_i32(u_input.a.x, var_0.a & u_input.a.x), -max(-1i, u_input.a.x)) >> (~(~vec4<u32>(0u, 1u, 4294967295u, var_0.d.x)) % vec4<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_sub_i32(abs(-u_input.a.x) & ~(-37460i), _wgslsmith_add_i32(-44874i, select(u_input.a.x & var_0.a, countOneBits(-41633i), any(vec3<bool>(false, false, true))))), var_0.b, arg_0, abs(vec4<u32>(var_0.d.x, var_0.d.x, ~abs(var_0.d.x), var_0.d.x)), ~(-var_0.e));
    var_0 = Struct_1(_wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(~u_input.a.x, -1i)), select(select(vec3<bool>(!var_0.b.x, var_1.b.x, all(vec3<bool>(true, var_0.b.x, true))), select(func_3(vec2<u32>(var_1.d.x, var_1.d.x)), !var_0.b, vec3<bool>(true, true, false)), var_1.b.x), var_0.b, true), var_0.c, _wgslsmith_sub_vec4_u32(var_0.d & _wgslsmith_mod_vec4_u32(vec4<u32>(7400u, var_1.d.x, var_1.d.x, var_0.d.x), var_1.d), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.d.x, var_1.d.x, 27858u, var_0.d.x), var_0.d)) & var_1.d, -(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-38746i, 2147483647i, 13426i, u_input.a.x), vec4<i32>(35174i, -1i, 0i, -56155i)), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 31784i), vec2<i32>(var_1.e.x, var_1.e.x)), 878i)));
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(min(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(26929i, u_input.a.x, u_input.a.x), u_input.a), vec3<i32>(var_1.e.x, var_1.a, u_input.a.x)), min(~var_0.e.xyz, u_input.a)), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(var_0.e.x, var_1.a, var_0.a)), ~abs(vec3<i32>(-39152i, -32938i, var_1.e.x)))), vec3<bool>(var_1.b.x, any(var_1.b) | var_0.b.x, all(vec2<bool>(func_3(var_0.d.xy).x, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - var_0.c) * _wgslsmith_f_op_f32(step(2322f, -739f)))), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))))), vec4<u32>(~var_0.d.x, 1u, _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(1u & var_0.d.x, _wgslsmith_sub_u32(116959u, 17737u), var_0.d.x)), _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(8689u, var_1.d.x << (1u % 32u)))), min(min(~vec4<i32>(u_input.a.x, 25772i, var_0.e.x, 50159i), vec4<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), 1i, _wgslsmith_sub_i32(var_0.e.x, var_0.a), _wgslsmith_add_i32(-1i, var_1.e.x))), var_0.e));
    return Struct_2(var_0.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-479f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))), arg_2.x, _wgslsmith_f_op_f32(arg_2.x + arg_2.x) <= _wgslsmith_f_op_f32(floor(arg_2.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)) * 193f), arg_2.x));
    let var_1 = select(vec4<bool>(select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), ~arg_0.a < 0u, true), !(any(vec4<bool>(true, true, false, false)) & false), (22601u == _wgslsmith_div_u32(0u, arg_0.a)) | (func_3(vec2<u32>(arg_0.a, arg_0.a)).x && any(vec2<bool>(false, false))), true), !(!vec4<bool>(true, true, func_3(vec2<u32>(arg_1, 1u)).x, any(vec3<bool>(true, true, false)))), all(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)))));
    return countOneBits(firstTrailingBit(~(vec4<u32>(arg_0.a, 3907u, arg_0.a, arg_0.a) & reverseBits(vec4<u32>(1u, 1u, 1u, 18078u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1586f * 1682f))))), -734f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-219f - _wgslsmith_f_op_f32(f32(-1f) * -147f)))));
    var var_1 = ~_wgslsmith_dot_vec2_i32(abs(u_input.a.yy), vec2<i32>(0i, countOneBits(99885i)));
    var var_2 = func_1();
    let var_3 = true;
    var var_4 = Struct_2(4294967295u);
    var var_5 = func_4(func_2(var_0.x), var_4.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, var_0.x, 478f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_sub_i32(u_input.a.x & 1i, u_input.a.x ^ 0i)));
}

