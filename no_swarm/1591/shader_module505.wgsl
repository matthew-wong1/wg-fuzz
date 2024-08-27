struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: f32,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, firstTrailingBit(~arg_0), abs(58211i)) << (vec3<u32>(u_input.e.x, 88259u, select(0u, _wgslsmith_add_u32(0u, 90255u), true)) % vec3<u32>(32u)), vec3<i32>(arg_0, -_wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(arg_0, 729i, u_input.a)), arg_0));
    let var_1 = _wgslsmith_clamp_vec2_i32(u_input.d, ~abs(_wgslsmith_div_vec2_i32(u_input.d, var_0.xx) << ((u_input.e.zz >> (vec2<u32>(54583u, 22546u) % vec2<u32>(32u))) % vec2<u32>(32u))), select(-vec2<i32>(-98478i, -1i) | abs(-vec2<i32>(arg_0, u_input.d.x)), u_input.d, !(u_input.e.x < u_input.b.x)));
    var var_2 = !select(vec3<bool>(u_input.b.x < max(u_input.b.x, 61048u), any(vec4<bool>(true, true, true, true)), false), vec3<bool>(true, (u_input.a >> (u_input.c.x % 32u)) < firstLeadingBit(var_1.x), any(vec2<bool>(true, true))), u_input.a > -1i);
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, var_0.x, arg_0, u_input.a), vec4<i32>(u_input.d.x, var_0.x, -66933i, -22781i) << (vec4<u32>(1u, u_input.c.x, u_input.e.x, u_input.b.x) % vec4<u32>(32u))), min(countOneBits(vec4<i32>(u_input.a, var_1.x, 26550i, 1i)), abs(vec4<i32>(var_0.x, 7052i, arg_0, var_0.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 9519u, 4294967295u, 64082u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 40491u, u_input.e.x, 66232u), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.c.x))) | ~(~vec4<u32>(u_input.c.x, 63148u, u_input.b.x, u_input.e.x)), var_1.x, max(max(reverseBits(vec2<u32>(u_input.c.x, 4294967295u)), firstTrailingBit(u_input.c)), vec2<u32>(firstLeadingBit(u_input.c.x), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)))), Struct_1(vec4<i32>(_wgslsmith_sub_i32(var_0.x, ~(-3787i)), -29247i, select(-46380i, -2147483647i, false), abs(~arg_0)), ~vec4<u32>(4294967295u, u_input.c.x, firstLeadingBit(u_input.b.x), ~1u), var_1.x, ~countOneBits(vec2<u32>(u_input.c.x, u_input.e.x))), vec4<u32>(u_input.c.x, u_input.e.x, _wgslsmith_div_u32(abs(u_input.c.x) << (~u_input.b.x % 32u), 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c.x << (139234u % 32u), 25227u), abs(u_input.e.x))));
    var var_4 = reverseBits(reverseBits(_wgslsmith_add_vec2_i32(var_1, -(~var_0.xx))));
    return 1u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec4_u32(min(vec4<u32>(~44709u, max(u_input.c.x, u_input.e.x), _wgslsmith_div_u32(4294967295u, 4294967295u), func_3(arg_0)) | vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, 0u, 43493u), ~u_input.e.x, _wgslsmith_mult_u32(1u, u_input.b.x), u_input.e.x ^ u_input.b.x), ~abs(vec4<u32>(37256u, 4294967295u, u_input.c.x, u_input.c.x))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(2506u, u_input.e.x, 1u, 95619u), ~vec4<u32>(u_input.c.x, 0u, u_input.e.x, 0u), select(vec4<u32>(41266u, u_input.c.x, 12765u, u_input.c.x), vec4<u32>(4294967295u, u_input.b.x, u_input.c.x, 4547u), var_0))));
    let var_2 = all(vec3<bool>(any(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(true, false, var_0, false), !vec4<bool>(false, var_0, true, true))), !any(select(vec3<bool>(false, false, var_0), vec3<bool>(true, var_0, false), vec3<bool>(true, false, var_0))), all(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, var_0)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1488f * 238f), _wgslsmith_f_op_f32(abs(617f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(873f, 2009f), vec2<f32>(104f, 127f), true)), _wgslsmith_div_vec2_f32(vec2<f32>(-1075f, 1000f), vec2<f32>(954f, -478f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, 1352f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(371f, 636f))))));
    var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 35896u, u_input.e.x, u_input.e.x), vec4<u32>(4294967295u, 67580u, 1u, 34698u)), vec4<u32>(1u, u_input.e.x, u_input.c.x, 0u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.e.x, u_input.e.x), u_input.e), ~u_input.e.x, func_3(8242i), ~0u)), 22814u);
    return Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(abs(max(2147483647i, 2147483647i)), arg_0, -1i, min(-u_input.d.x, arg_0)), reverseBits(vec4<i32>(-1i, 12116i, 2147483647i, -3122i) ^ vec4<i32>(3987i, 1i, -8445i, arg_0)) & _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-6935i, 1i, 2147483647i, arg_0)), -vec4<i32>(-39059i, 0i, arg_0, -38121i))), vec4<u32>(33656u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, 2564u, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 109895u, 0u, u_input.e.x), vec4<u32>(4294967295u, 21896u, u_input.e.x, 59613u)), u_input.e.x <= u_input.b.x), ~(vec4<u32>(13549u, u_input.e.x, 11048u, 1u) << (vec4<u32>(u_input.b.x, 68106u, 1u, 1143u) % vec4<u32>(32u)))), ~u_input.e.x), -1i, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(28872u, u_input.b.x), 1u), u_input.e.x) | u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec3<u32> {
    let var_0 = u_input.d;
    let var_1 = vec2<f32>(-681f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1041f)) + _wgslsmith_f_op_f32(min(-136f, -426f))))));
    var var_2 = arg_0.a.wyx;
    let var_3 = max(~(~vec2<u32>(0u, 10521u)) << (arg_0.d % vec2<u32>(32u)), max(select(vec2<u32>(select(arg_0.b.x, 57045u, arg_2), ~arg_0.b.x), ~arg_0.d, !(arg_0.d.x <= 99190u)), select(u_input.c ^ arg_0.b.yx, ~vec2<u32>(u_input.c.x, u_input.b.x), false) >> (countOneBits(u_input.b) % vec2<u32>(32u))));
    var_2 = ~vec3<i32>(35465i, var_2.x, var_2.x);
    return vec3<u32>(~var_3.x, arg_0.d.x, 9389u);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> vec2<u32> {
    let var_0 = func_4(func_2(~10534i), countOneBits(arg_0.x), ((i32(-1i) * -1i) > u_input.a) == false) >> (~vec3<u32>(23023u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(37707u, 0u, u_input.c.x), u_input.e), abs(select(u_input.c.x, u_input.e.x, true))) % vec3<u32>(32u));
    let var_1 = func_2(~_wgslsmith_add_i32(u_input.a, 1i));
    let var_2 = -85072i;
    var var_3 = Struct_3(vec2<i32>(~1i, firstLeadingBit(var_2)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(max(arg_1, -1203f)))), arg_1)));
    return var_0.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<i32>(0i, u_input.a), _wgslsmith_f_op_f32(-647f + 1462f));
    let var_1 = Struct_1(max(vec4<i32>(-u_input.a, u_input.a, u_input.d.x >> (u_input.e.x % 32u), u_input.a ^ u_input.d.x) << (vec4<u32>(62537u, firstTrailingBit(u_input.b.x), _wgslsmith_div_u32(0u, 4294967295u), 1u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, u_input.d.x, abs(-1i & u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.a, u_input.a) << (u_input.e % vec3<u32>(32u)), vec3<i32>(u_input.d.x, -2147483647i, u_input.a) & vec3<i32>(-1i, 1i, 1i)))), _wgslsmith_sub_vec4_u32(~func_2(1401i).b, ~vec4<u32>(u_input.c.x >> (u_input.c.x % 32u), ~4294967295u, ~4294967295u, ~83917u)), 2147483647i << (~(~u_input.e.x) % 32u), u_input.e.zy);
    let var_2 = Struct_4(Struct_3(select(reverseBits(u_input.d), firstTrailingBit(-var_1.a.yx), true)), Struct_1(firstTrailingBit(~vec4<i32>(var_1.a.x, 16298i, 0i, u_input.d.x)), min(vec4<u32>(1u << (0u % 32u), func_1(vec2<i32>(-1i, -1i), -103f).x, 4294967295u, _wgslsmith_div_u32(57671u, 32057u)), vec4<u32>(var_1.d.x, ~1240u, 45329u, ~var_0.x)), u_input.a, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(38133u, 4294967295u), var_1.d), vec2<u32>(u_input.b.x, 1u) & vec2<u32>(33750u, 1u)), vec2<u32>(var_1.b.x, 83243u))), Struct_3(u_input.d ^ _wgslsmith_mod_vec2_i32(u_input.d, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_1.a.x), vec2<i32>(2147483647i, var_1.a.x)))), vec4<i32>(~(-30594i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_1.a, var_1.a), max(var_1.a.x, var_1.c), 1i), u_input.a, min(_wgslsmith_dot_vec4_i32(var_1.a, var_1.a), 2147483647i)) ^ vec4<i32>(firstLeadingBit(var_1.c) >> (~17775u % 32u), u_input.a, var_1.a.x, var_1.a.x));
    var_0 = vec2<u32>(var_0.x, var_2.b.b.x >> (~(var_0.x | ~u_input.e.x) % 32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(166f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f + 1879f)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(246f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f - -959f))))));
    var var_5 = abs(~_wgslsmith_sub_u32(4294967295u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(vec2<u32>(firstTrailingBit(var_0.x), ~var_1.d.x), ~(u_input.e.xx | var_1.d))), func_4(func_2(firstLeadingBit(~var_1.a.x)), _wgslsmith_mult_i32(22690i, ~(-49243i)), _wgslsmith_f_op_f32(-var_4.x) < -516f).x, ~(~u_input.c.x & 105358u) | _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(4294967295u), _wgslsmith_sub_u32(54774u, 1u), 39206u, _wgslsmith_mult_u32(4294967295u, 0u)), var_1.b), _wgslsmith_f_op_f32(step(-856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1771f))))));
}

