struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))) - _wgslsmith_div_f32(arg_1.x, -1721f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(129f, 108f)), -512f))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1733f + _wgslsmith_f_op_f32(exp2(var_0)))), -697f);
    var var_2 = ~_wgslsmith_div_u32(~0u & u_input.d.x, countOneBits(1u) ^ arg_0.x) ^ 4294967295u;
    var_2 = _wgslsmith_mod_u32(arg_0.x, 1960u);
    var var_3 = false;
    return arg_2.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 83900i, arg_2.c.x, max(-_wgslsmith_add_i32(u_input.a.x, 1i), ~arg_2.c.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(-38279i, u_input.a.x, 0i, 2147483647i) | vec4<i32>(-34742i, u_input.a.x, 8547i, 0i), vec4<i32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 2147483647i)), vec4<i32>(_wgslsmith_mult_i32(0i, u_input.a.x), u_input.b, 2147483647i, firstTrailingBit(arg_2.c.x))), min(-vec4<i32>(-46851i, -89526i, 23251i, arg_2.c.x), firstTrailingBit(vec4<i32>(arg_2.c.x, -1i, -12211i, -28406i)))));
    let var_1 = max(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(var_0, arg_2.c.x), _wgslsmith_add_vec2_i32(arg_2.c, arg_2.c)), arg_2.c), ~max(-u_input.a.zx, _wgslsmith_add_vec2_i32(vec2<i32>(var_0, u_input.a.x), u_input.a.xx))), firstLeadingBit(vec2<i32>(-(~(-10371i)), 20039i)));
    let var_2 = Struct_3(~u_input.c, _wgslsmith_mult_u32(1u, arg_3.x) >> (arg_2.b.x % 32u));
    var var_3 = ~(~vec2<i32>(20677i, func_3(~vec3<u32>(0u, u_input.c.x, 74084u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 137f, 182f, -1324f) - vec4<f32>(arg_1, 976f, -1885f, arg_0)), u_input.a)));
    var_3 = reverseBits(abs(abs(var_1)));
    return ~arg_3.yx;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(func_2(-261f, -114f, Struct_2(false, vec2<u32>(4294967295u, 0u), u_input.a.zx, true), vec4<u32>(32673u, 0u, u_input.c.x, 0u)), ~u_input.d.zy), _wgslsmith_div_u32(1u, 41024u), abs(firstTrailingBit(42148u)), firstLeadingBit(u_input.c.x) >> (_wgslsmith_sub_u32(u_input.d.x, u_input.c.x) % 32u)) & ~vec4<u32>(90359u, ~u_input.d.x, ~9388u, ~4294967295u), ~abs(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 1u, u_input.d.x, u_input.c.x)), vec4<u32>(u_input.c.x, 7908u, 4294967295u, u_input.c.x) & vec4<u32>(4294967295u, 77381u, u_input.c.x, 23581u))));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.x, 1u), _wgslsmith_sub_u32(~1u, 63224u), 29728u), ~(~52262u), firstLeadingBit(abs(~0u)) >> (select(4294967295u, _wgslsmith_mult_u32(var_0.x, u_input.d.x), true) % 32u));
    var var_2 = Struct_1(-28949i, reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.c.x), vec4<u32>(70189u, u_input.d.x, 1343u, u_input.c.x)), reverseBits(vec4<u32>(var_0.x, u_input.c.x, 13017u, u_input.c.x))), ~vec4<u32>(1u, u_input.d.x, 6056u, u_input.d.x))), u_input.c.zy, _wgslsmith_f_op_f32(sign(-351f)), vec3<u32>(u_input.d.x, 39489u ^ u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 5296u, 1u)), ~u_input.c.x, ~var_0.x) << (firstLeadingBit(1u) % 32u)));
    var_2 = Struct_1(abs(select(-2147483647i, _wgslsmith_mult_i32(22954i, 5833i), true)) & _wgslsmith_mult_i32(_wgslsmith_sub_i32(countOneBits(-2147483647i), -48441i >> (u_input.d.x % 32u)), _wgslsmith_sub_i32(-u_input.a.x, 2147483647i)), ~var_2.b, vec2<u32>(9642u & ~var_0.x, var_0.x) << (_wgslsmith_mod_vec2_u32(var_0.zy, var_2.b.wz & (var_0.zz | var_0.zw)) % vec2<u32>(32u)), var_2.d, firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(var_2.b, _wgslsmith_mult_vec4_u32(var_2.b, vec4<u32>(u_input.c.x, 2739u, 1u, var_0.x))), min(abs(u_input.d.x), reverseBits(u_input.d.x)), var_2.c.x)));
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(var_2.b.x, var_2.b.x, (var_2.c.x | 44840u) | var_2.e.x), max(4294967295u, u_input.c.x), ~(_wgslsmith_sub_u32(reverseBits(u_input.d.x), select(u_input.d.x, var_0.x, false)) & ~(~22005u)), ~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, ~43506u, 80592u)));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, !any(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(false, false, true))), !any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), false);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(floor(-732f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(1354f)))), 1f);
    var var_2 = Struct_2(any(vec3<bool>(false, true, any(var_0.xxz))) && var_0.x, ~select(firstLeadingBit(~u_input.d.yz), min(u_input.d.xy, vec2<u32>(21643u, 14075u) & u_input.c.yx), (u_input.d.x & 42583u) <= u_input.c.x), ~(-abs(_wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.zx))), false);
    let var_3 = _wgslsmith_f_op_f32(step(-1475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1314f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(175f, var_1))) * _wgslsmith_f_op_f32(-var_1))));
    var_0 = !vec4<bool>(true, true, !var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1319f * var_1)) < var_1);
    var var_4 = ~(_wgslsmith_mod_vec2_u32(u_input.c.xy, var_2.b) << (~(~vec2<u32>(u_input.c.x, 11765u)) % vec2<u32>(32u))) & var_2.b;
    var var_5 = select(!vec3<bool>(false, false, !any(vec3<bool>(false, true, false))), vec3<bool>(select(false, true, true), false, var_2.a), var_2.a);
    var_5 = vec3<bool>(true, false, true);
    var var_6 = !var_0.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -1817f, -1019f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-145f, var_3, var_3, -772f), vec4<f32>(1339f, var_1, var_3, -1000f))))), reverseBits(~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(18271u, 4294967295u), vec2<u32>(var_2.b.x, var_4.x)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -803f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))));
}

