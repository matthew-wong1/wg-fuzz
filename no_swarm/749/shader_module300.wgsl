struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = Struct_1(~_wgslsmith_add_vec4_i32(abs(arg_0.a.c.a), arg_1.a.d.a), arg_0.a.a.x | arg_0.a.c.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.c * 587f) - -185f), _wgslsmith_f_op_f32(378f * arg_0.a.d.c), arg_0.a.c.d && (arg_1.a.c.d && arg_1.a.d.d))), true);
    let var_1 = arg_0;
    let var_2 = vec2<bool>(all(vec2<bool>(true, abs(var_0.b) < 71555u)), !(!var_1.a.d.d));
    var var_3 = min(max(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_0.b, 4294967295u, 4294967295u), vec4<u32>(var_0.b, 0u, 1u ^ arg_1.a.d.b, ~var_1.a.c.b)), ~select(~vec4<u32>(44849u, arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x), ~vec4<u32>(arg_0.a.c.b, 4294967295u, var_0.b, 0u), var_0.d)), ~vec4<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a.c.b, 46059u, arg_1.a.c.b), vec4<u32>(arg_0.a.d.b, var_1.a.c.b, 0u, 0u)), min(reverseBits(4294967295u), 0u), reverseBits(arg_0.a.c.b) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.a.a.x, arg_1.a.c.b), vec4<u32>(var_1.a.d.b, 0u, 0u, arg_0.a.c.b))));
    let var_4 = -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.c.a.x, arg_1.a.d.a.x), -vec2<i32>(-28937i, var_1.a.d.a.x), -vec2<i32>(u_input.a, 2147483647i)), u_input.b, countOneBits(arg_0.a.c.a.xz >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), vec2<i32>(12896i, ~793i));
    return select(!select(select(var_2, var_2, var_2.x & var_0.d), var_2, true), select(select(select(vec2<bool>(var_1.a.d.d, true), var_2, vec2<bool>(true, true)), select(vec2<bool>(false, var_1.a.d.d), vec2<bool>(true, var_1.a.c.d), true), !(arg_1.a.d.c >= 687f)), vec2<bool>(all(select(vec3<bool>(var_2.x, true, var_1.a.d.d), vec3<bool>(arg_0.a.d.d, true, false), false)), var_2.x), vec2<bool>(true, true)), false);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    let var_0 = Struct_3(Struct_2(vec2<u32>(1u, 1u), vec3<u32>(1u, 1u, 1u), Struct_1((vec4<i32>(arg_1, arg_1, 69783i, 34303i) << (vec4<u32>(1u, 0u, 0u, 1u) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -5174i, u_input.a), vec4<i32>(12889i, arg_1, 2147483647i, -2147483647i)), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(312f + 465f) - _wgslsmith_f_op_f32(select(1000f, -1954f, false))), true), Struct_1(vec4<i32>(~25310i, u_input.a, ~(-1i), ~arg_1), 15343u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2802f, -402f, false)), _wgslsmith_f_op_f32(f32(-1f) * -827f)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)))));
    let var_1 = !func_3(Struct_3(Struct_2(~vec2<u32>(var_0.a.b.x, var_0.a.b.x), firstTrailingBit(vec3<u32>(4294967295u, var_0.a.c.b, 0u)), Struct_1(vec4<i32>(-18921i, arg_1, u_input.b.x, 7147i), 47921u, var_0.a.c.c, false), Struct_1(vec4<i32>(2147483647i, u_input.a, u_input.b.x, arg_0.x), var_0.a.d.b, var_0.a.c.c, var_0.a.c.d))), var_0);
    var var_2 = reverseBits(vec3<i32>(30912i, ~(-reverseBits(1i)), var_0.a.d.a.x));
    var_2 = vec3<i32>(var_2.x, 2147483647i, _wgslsmith_mod_i32(abs(arg_0.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b << (vec2<u32>(var_0.a.b.x, 4294967295u) % vec2<u32>(32u)), min(var_2.xx, u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 19601i), vec2<i32>(arg_1, arg_0.x)))));
    var_2 = firstTrailingBit(var_0.a.c.a.zzw);
    return 27656u;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    return Struct_3(Struct_2(select(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(arg_1.x, 4294967295u)), arg_1), ~arg_1, true), arg_3, Struct_1((vec4<i32>(arg_2, arg_2, 35319i, -2147483647i) << (vec4<u32>(0u, 28592u, 0u, arg_3.x) % vec4<u32>(32u))) ^ (vec4<i32>(-1i, arg_2, u_input.b.x, u_input.b.x) ^ vec4<i32>(1i, 1i, 0i, u_input.a)), ~(~1u), _wgslsmith_f_op_f32(f32(-1f) * -1478f), any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-17204i, arg_2, arg_2, -2147483647i), vec4<i32>(arg_2, u_input.a, u_input.a, -25978i), true), ~vec4<i32>(-2147483647i, 1i, arg_2, 2147483647i), ~vec4<i32>(arg_2, arg_2, arg_2, arg_2)), ~71495u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(step(-366f, arg_0)), true)), true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = func_4(_wgslsmith_f_op_f32(step(-1502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1149f, 511f, false)), _wgslsmith_f_op_f32(f32(-1f) * -481f)))))), ~vec2<u32>(select(62089u, 24725u, false) >> (1u % 32u), ~abs(0u)), ~arg_0.x, _wgslsmith_mult_vec3_u32(vec3<u32>(abs(4294967295u), ~1u, func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-41261i, 2147483647i), arg_1), 1i)), firstLeadingBit(~select(vec3<u32>(5768u, 4294967295u, 101249u), vec3<u32>(21059u, 27844u, 6592u), true))));
    return vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(47340u, 66503u), vec2<u32>(var_0.a.b.x, ~var_0.a.d.b))), _wgslsmith_mod_u32(~var_0.a.b.x, abs(min(~9326u, 0u))), var_0.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(u_input.a >= ~u_input.a, false, all(vec2<bool>(false, false)) & (2147483647i == u_input.b.x)) != (true && (-67624i <= select(37657i, 2147483647i, true)));
    let var_1 = Struct_2(~vec2<u32>(select(9934u, 4294967295u, false) & 1u, 1u), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(87399u, 0u), vec2<u32>(4836u, 1024u))), ~(~vec3<u32>(4294967295u, 49379u, 1u)), ~vec3<u32>(1u, 1u, 1u)), ~func_1(vec3<i32>(69018i, -2147483647i, u_input.b.x), u_input.b) << (select(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 0u, 49361u)), ~vec3<u32>(26606u, 58810u, 26236u), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))) % vec3<u32>(32u))), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2033f, -1650f)), -1000f))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(27545u, 63403u), vec2<u32>(14050u, 7226u))), -3150i, ~(~vec3<u32>(4294967295u, 11602u, 32207u) & select(vec3<u32>(14495u, 36389u, 1u), vec3<u32>(4294967295u, 4911u, 46886u), true))).a.c, Struct_1(abs(func_4(_wgslsmith_f_op_f32(542f - -496f), ~vec2<u32>(0u, 8817u), u_input.b.x, vec3<u32>(0u, 0u, 0u)).a.d.a), countOneBits(func_2(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(35278i, -12060i)), _wgslsmith_clamp_i32(1i, u_input.a, u_input.a))), 763f, false));
    var var_2 = ~func_1(vec3<i32>(_wgslsmith_mult_i32(var_1.c.a.x, -37431i), 8591i, abs(-12130i)), -var_1.c.a.zw & (select(vec2<i32>(u_input.a, 8183i), var_1.c.a.wy, var_1.c.d) & (vec2<i32>(-1i, var_1.d.a.x) & vec2<i32>(u_input.b.x, var_1.c.a.x)))).x;
    var var_3 = vec2<bool>(any(select(vec4<bool>(false, true, true, var_1.c.d), select(!vec4<bool>(true, false, var_1.d.d, false), !vec4<bool>(false, true, var_1.d.d, true), var_1.d.d), var_1.d.d)), false);
    var var_4 = u_input.b.x;
    let var_5 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(669f, var_1.c.c))) * vec2<f32>(-1001f, var_1.c.c)))) - vec2<f32>(var_1.d.c, _wgslsmith_f_op_f32(floor(var_1.c.c))))));
    let var_6 = var_1;
    var var_7 = ~abs(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_1.a, ~(~vec2<u32>(var_6.c.b, var_1.b.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -479f), -1000f), _wgslsmith_f_op_f32(var_5.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f) * _wgslsmith_f_op_f32(var_1.d.c * -596f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.d.c) - -1769f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-242f)) - _wgslsmith_f_op_f32(var_6.c.c * var_5.x))))));
}

