struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-1015f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1420f, -168f), 289f)))));
    let var_1 = 1000f;
    var_0 = 1544f;
    var var_2 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1234f * 886f));
    return -(arg_0.a >> (~min(vec4<u32>(u_input.a, 39128u, 4453u, u_input.c) ^ vec4<u32>(u_input.a, 66521u, u_input.a, 1u), countOneBits(vec4<u32>(u_input.c, 1u, u_input.c, u_input.a))) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(-2147483647i), firstTrailingBit(1521i), ~1i << (arg_0.x % 32u), 72046i), min(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, u_input.d, u_input.d, -1i), abs(vec4<i32>(u_input.b, -1i, -41775i, -6468i))), _wgslsmith_div_vec4_i32(func_3(Struct_1(vec4<i32>(0i, u_input.b, 12056i, 1i), vec3<i32>(u_input.d, 48187i, u_input.b), vec3<bool>(false, false, true), vec2<i32>(1i, 17982i)), vec4<f32>(1012f, -1020f, 1000f, 1000f)), select(vec4<i32>(u_input.d, -1i, u_input.d, 4859i), vec4<i32>(u_input.b, u_input.b, u_input.d, u_input.d), vec4<bool>(false, true, true, true))))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-13312i, 2147483647i, ~u_input.b), _wgslsmith_sub_vec3_i32(select(vec3<i32>(-18192i, 16689i, u_input.d) | vec3<i32>(u_input.b, -4512i, u_input.d), select(vec3<i32>(-33637i, u_input.d, u_input.d), vec3<i32>(2147483647i, 1i, 1i), vec3<bool>(false, true, false)), true), _wgslsmith_div_vec3_i32(abs(vec3<i32>(31810i, 1i, u_input.d)), -vec3<i32>(u_input.d, 1i, u_input.d))), vec3<i32>(u_input.b >> (select(u_input.c, 18335u, true) % 32u), u_input.d, -1i)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), false), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, select(false, true, true)), true), true), select(-(~(-vec2<i32>(-1i, 0i))), vec2<i32>(-(~u_input.b), u_input.b), vec2<bool>(true, true)));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(reverseBits(var_0.a), ~(var_0.a >> (vec4<u32>(arg_0.x, arg_0.x, 3560u, 76141u) % vec4<u32>(32u))) >> (vec4<u32>(32644u, ~1730u, select(u_input.a, 1u, var_0.c.x), ~u_input.c) % vec4<u32>(32u))), vec3<i32>(-1i) * -countOneBits(~vec3<i32>(u_input.d, -1i, 8569i)), select(select(vec3<bool>(true, true, all(vec4<bool>(false, var_0.c.x, var_0.c.x, false))), select(var_0.c, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x), var_0.c.x), vec3<bool>(true, all(!var_0.c.zx), all(vec2<bool>(true, true))), !all(vec4<bool>(var_0.c.x, true, var_0.c.x, true))), reverseBits(vec2<i32>(~(~(-1i)), u_input.d)));
    let var_2 = var_1.d;
    var var_3 = _wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(var_2.x, -46292i, 1i, _wgslsmith_dot_vec3_i32(~var_1.b, var_1.a.xwz))) ^ var_0.a;
    var_3 = var_1.a;
    return Struct_2(var_0.c.x, Struct_1(-var_1.a, firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(-2147483647i, var_0.b.x), _wgslsmith_mod_i32(-2147483647i, -65297i), var_3.x)), vec3<bool>(select(false, var_0.c.x | var_1.c.x, all(vec3<bool>(var_1.c.x, true, var_1.c.x))), true, true), vec2<i32>(_wgslsmith_div_i32(var_3.x, 0i), -var_0.d.x) | var_0.b.zx), Struct_1(_wgslsmith_div_vec4_i32(var_1.a >> (vec4<u32>(arg_0.x, 71097u, arg_0.x, arg_0.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, 1i, 0i, 0i), var_1.a)) | (-vec4<i32>(var_2.x, 12753i, u_input.b, 47153i) >> (~vec4<u32>(4294967295u, 12030u, 1u, u_input.c) % vec4<u32>(32u))), vec3<i32>(abs(min(1i, -6563i)), select(-var_2.x, _wgslsmith_mult_i32(var_3.x, 1i), false), u_input.d), var_0.c, var_3.xx));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> f32 {
    var var_0 = vec4<bool>(all(arg_1), arg_1.x, arg_1.x, select(false, 28175i != max(_wgslsmith_mult_i32(159i, u_input.d), u_input.d), all(!vec4<bool>(false, true, arg_1.x, arg_1.x))));
    var var_1 = func_2(~vec2<u32>(min(_wgslsmith_add_u32(arg_2.x, 11594u), 0u >> (arg_2.x % 32u)), 1u >> ((arg_2.x >> (0u % 32u)) % 32u)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.c.yx;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(sign(-291f)))), _wgslsmith_f_op_f32(func_1(-441f, arg_2.c, min(vec4<u32>(65125u, u_input.a, u_input.c, 4294967295u), vec4<u32>(u_input.a, 13182u, 11809u, 1u)) ^ vec4<u32>(u_input.a, 4294967295u, u_input.c, u_input.c))))), _wgslsmith_f_op_f32(floor(601f)));
    let var_2 = select(select(select(vec3<bool>(true, select(var_0.x, false, arg_2.c.x), true), arg_0.c, func_2(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.a, u_input.a))).b.c), vec3<bool>(arg_0.c.x, all(!arg_0.c), false), arg_2.c), arg_0.c, true);
    let var_3 = ~vec2<u32>(13775u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.c, 1u), vec3<u32>(u_input.a, u_input.c, 73035u), var_2) >> (~vec3<u32>(0u, u_input.a, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 3778u, 55275u)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)));
    return Struct_1(~vec4<i32>(-u_input.d >> (select(var_3.x, 1u, arg_2.c.x) % 32u), u_input.d, -15617i, -33795i), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -1i, -36280i), vec3<i32>(u_input.d, 0i, 34564i), vec3<i32>(arg_2.b.x, 54635i, u_input.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, arg_0.b.x, arg_2.a.x, u_input.d), arg_2.a), 1i, arg_2.a.x)), -abs(vec3<i32>(u_input.b, arg_0.d.x, arg_2.b.x)) ^ ~vec3<i32>(u_input.b, 1i, arg_0.b.x)), vec3<bool>(!var_2.x, !arg_0.c.x, !arg_2.c.x), -abs(vec2<i32>(arg_0.b.x, _wgslsmith_add_i32(u_input.d, -12404i))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(78909u, 1u, 1u, _wgslsmith_mult_u32(4294967295u, u_input.a)), ~(~vec4<u32>(0u, u_input.a, 1u, 0u)) | _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(22875u, 48605u, 4294967295u, u_input.c), vec4<bool>(false, arg_3, true, true)), ~vec4<u32>(8099u, 18990u, u_input.a, 39026u))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.c) ^ vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.c)), vec4<u32>(1u, u_input.c, u_input.c, firstTrailingBit(u_input.c))) >> (vec4<u32>((u_input.c | 33303u) << (u_input.c % 32u), u_input.a, 5397u, 1u) % vec4<u32>(32u)));
    var var_1 = Struct_1(select(~(-arg_1.b.a) ^ func_3(arg_1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1605f, -1610f, -1338f, arg_2))), ~(~vec4<i32>(u_input.d, 26277i, 0i, 1i)), arg_2 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) - -422f)), func_2(~(~var_0.xy)).b.a.zxx, func_2(vec2<u32>(var_0.x, u_input.c) | vec2<u32>(~u_input.c, 1u)).c.c, arg_1.c.d);
    var var_2 = arg_1.b.a;
    var var_3 = arg_1;
    var var_4 = arg_1;
    return func_2(vec2<u32>(var_0.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_0.x, var_0.x), abs(~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(_wgslsmith_mult_i32(u_input.b, abs(_wgslsmith_mod_i32(u_input.b, u_input.b))), u_input.b, max(u_input.b >> (u_input.a % 32u), u_input.b));
    let var_1 = func_5(func_4(Struct_1(reverseBits(vec4<i32>(var_0.x, var_0.x, u_input.b, 2892i)), _wgslsmith_add_vec3_i32(var_0, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, u_input.b, 2147483647i), var_0)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec2<i32>(~var_0.x, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1099f, select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec4<u32>(u_input.c, 4294967295u, 22639u, u_input.c) & vec4<u32>(0u, u_input.a, u_input.c, 12075u))) * _wgslsmith_f_op_f32(f32(-1f) * -1205f)), Struct_1(vec4<i32>(var_0.x, ~(-1i), firstLeadingBit(var_0.x), func_3(Struct_1(vec4<i32>(var_0.x, 0i, var_0.x, u_input.b), vec3<i32>(u_input.d, var_0.x, u_input.b), vec3<bool>(false, false, false), vec2<i32>(u_input.d, 23473i)), vec4<f32>(342f, 227f, 1652f, -249f)).x), ~var_0, vec3<bool>(true, true, false), -vec2<i32>(89865i, 1i))), Struct_2(!(!all(vec2<bool>(false, true))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(9532i, var_0.x, u_input.d, 26381i), firstLeadingBit(vec4<i32>(21065i, -1i, 34054i, var_0.x))), func_3(func_4(Struct_1(vec4<i32>(1i, var_0.x, 45383i, u_input.d), vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<bool>(true, false, false), vec2<i32>(var_0.x, -53014i)), 255f, Struct_1(vec4<i32>(2147483647i, 2147483647i, var_0.x, u_input.d), vec3<i32>(u_input.d, -22645i, 1i), vec3<bool>(true, true, false), vec2<i32>(u_input.d, 7051i))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-299f, -176f, 1891f, 1000f)))).wyz, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.b), var_0.zx)), Struct_1(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(54747i, var_0.x, var_0.x, u_input.b), vec4<i32>(-1105i, 20801i, 54871i, u_input.b))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 9986i, var_0.x), vec3<i32>(var_0.x, 0i, -2147483647i)), -28679i, -1i), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), func_4(Struct_1(vec4<i32>(var_0.x, 20991i, u_input.b, 11770i), vec3<i32>(u_input.b, -2611i, -4351i), vec3<bool>(false, false, false), vec2<i32>(var_0.x, 0i)), _wgslsmith_f_op_f32(-890f - 608f), Struct_1(vec4<i32>(-1i, var_0.x, var_0.x, u_input.d), var_0, vec3<bool>(true, false, true), vec2<i32>(-1i, -1i))).a.zx)), _wgslsmith_f_op_f32(round(-1597f)), true);
    let var_2 = select(false, select(true, all(var_1.c.c), false), !(!var_1.c.c.x));
    let var_3 = func_5(Struct_1(var_1.c.a, var_0, !func_4(Struct_1(var_1.c.a, vec3<i32>(var_1.c.a.x, var_1.b.b.x, var_1.b.b.x), vec3<bool>(var_1.a, true, false), vec2<i32>(u_input.b, 1i)), -1185f, Struct_1(var_1.c.a, vec3<i32>(-1i, 15744i, u_input.d), vec3<bool>(var_2, false, var_1.a), vec2<i32>(u_input.d, var_0.x))).c, var_1.c.a.zx), func_2(~reverseBits(~vec2<u32>(49562u, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(-373f, var_1.c.c, vec4<u32>(u_input.a, u_input.c, u_input.c, u_input.a))), 1043f, all(vec4<bool>(false, true, true, false)))) + _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(366f, _wgslsmith_div_f32(129f, -916f))), vec3<bool>(false, !var_2, var_1.a && true), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.c), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~u_input.c, 13885u, ~u_input.a)))), true);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2511f, -669f, -1096f, 365f), vec4<f32>(1078f, -302f, -833f, 331f), var_3.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(784f, 323f, 1183f, -280f), vec4<f32>(-1235f, 525f, 1103f, -657f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-187f, _wgslsmith_f_op_f32(ceil(-648f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1413f, 1201f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1228f), var_1.b.c, vec4<u32>(16956u, 4294967295u, 25203u, u_input.a) | vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f) + _wgslsmith_f_op_f32(367f * 419f))))), 35307u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-2530f, !vec3<bool>(var_1.b.c.x, var_4.b.c.x, false), vec4<u32>(max(0u, 8445u), _wgslsmith_add_u32(23009u, u_input.a), ~23213u, _wgslsmith_sub_u32(u_input.a, 0u))))), 14893u);
}

