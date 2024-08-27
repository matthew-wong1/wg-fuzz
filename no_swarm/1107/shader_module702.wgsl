struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(-30381i, 2147483647i), vec2<i32>(1i, 1i)), vec2<i32>(reverseBits(firstLeadingBit(-68117i)), ~(~1i)), firstTrailingBit(vec2<i32>(-12236i, firstTrailingBit(40617i)))), vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -12582i, 42758i, 12927i), vec4<i32>(1032i, -1i, -12372i, 2147483647i)), 0i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(i32(-1i) * -5167i, abs(65183i)), -23840i), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1383f + _wgslsmith_f_op_f32(-124f * _wgslsmith_f_op_f32(f32(-1f) * -853f)))));
    let var_1 = vec4<i32>(var_0.a.x, _wgslsmith_dot_vec3_i32(max(vec3<i32>(abs(var_0.b.x), -1i << (0u % 32u), var_0.b.x), var_0.b), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 39344i, var_0.a.x, 28484i), ~vec4<i32>(var_0.b.x, -2147483647i, 46218i, var_0.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, var_0.b.x, -2147483647i), abs(vec4<i32>(var_0.a.x, 2147483647i, -33505i, 2147483647i))), var_0.b.x)), ~var_0.a.x, -1i);
    let var_2 = ~((vec3<u32>(u_input.a, ~u_input.a, 4294967295u) & _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 76222u), ~vec3<u32>(u_input.a, 1u, 28788u))) >> ((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26461u, u_input.a, u_input.a), vec4<u32>(38612u, 19840u, 0u, u_input.a)), u_input.a | u_input.a, _wgslsmith_div_u32(1u, 29772u)) | select(vec3<u32>(4294967295u, u_input.a, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(9151u, 4294967295u, u_input.a), vec3<u32>(0u, u_input.a, 0u)), vec3<bool>(true, true, true))) % vec3<u32>(32u)));
    var var_3 = !(!all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), u_input.a <= u_input.a)));
    var var_4 = !select(vec4<bool>(true, 223f > _wgslsmith_f_op_f32(-var_0.c), true, 60313u != var_2.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, false, true, true))), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false)));
    return -(~_wgslsmith_dot_vec3_i32(var_0.b, var_0.b) >> ((46473u << (firstLeadingBit(var_2.x) % 32u)) % 32u)) <= _wgslsmith_mult_i32(-1i, abs(reverseBits(var_0.b.x | var_1.x)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-101f, arg_1.c, -102f, 220f), vec4<f32>(arg_0, arg_1.c, 122f, 414f)))), vec4<f32>(-1245f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(arg_1.c)), _wgslsmith_f_op_f32(-1428f * arg_0)), func_3()))), arg_1, -_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-61479i, -2147483647i, arg_1.b.x, -37796i)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.a.x, 5829i, 2147483647i, arg_1.a.x)), vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.b.x, -6017i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.b.x, arg_1.a.x, 1i), vec4<i32>(arg_1.a.x, -1i, arg_1.b.x, arg_1.a.x))), arg_1.c);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, arg_1.c, -1000f, -2005f)))), Struct_1(-_wgslsmith_add_vec2_i32(vec2<i32>(-35891i, 398i), var_0.c.zy), reverseBits(countOneBits(vec3<i32>(var_0.c.x, arg_1.b.x, -18084i)) & vec3<i32>(1i, -23647i, 2534i)), -1096f), ~min(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.x, -2147483647i, -11817i, 2147483647i), vec4<i32>(var_0.b.b.x, arg_1.b.x, -23027i, var_0.c.x), vec4<i32>(var_0.b.a.x, 1i, var_0.c.x, var_0.c.x)) & -vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, -16518i), vec4<i32>(_wgslsmith_mult_i32(40718i, var_0.c.x), _wgslsmith_dot_vec2_i32(arg_1.a, vec2<i32>(var_0.c.x, var_0.c.x)), -2147483647i, var_0.b.a.x)), -277f);
    let var_1 = var_0.b;
    var var_2 = i32(-1i) * -19788i;
    return (vec2<u32>(98179u >> (min(0u, 1u) % 32u), firstLeadingBit(u_input.a)) ^ ~(~vec2<u32>(u_input.a, 1u))) ^ vec2<u32>((1u ^ _wgslsmith_clamp_u32(u_input.a, 28082u, 0u)) >> (~_wgslsmith_mod_u32(57082u, u_input.a) % 32u), _wgslsmith_mod_u32(~u_input.a & _wgslsmith_mod_u32(u_input.a, 39094u), countOneBits(1u)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec2<i32>(~min(-37290i, 0i), 1i) << (~(~func_2(1345f, Struct_1(vec2<i32>(-11087i, -2147483647i), vec3<i32>(1i, 12396i, -2147483647i), -875f))) % vec2<u32>(32u)), max(select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-12240i, 2147483647i, -40751i), vec3<i32>(2147483647i, -40277i, -16151i), -vec3<i32>(24287i, 43940i, -57487i)), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -7341i, 55593i)), vec3<i32>(1i, 1i, 1i)), true), vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_f32(ceil(-1297f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -2075f, -229f, _wgslsmith_div_f32(-1281f, _wgslsmith_f_op_f32(min(var_0.c, var_0.c))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 1177f, var_0.c, var_0.c) * vec4<f32>(-489f, 813f, 503f, var_0.c))), vec4<f32>(291f, _wgslsmith_f_op_f32(min(1000f, 615f)), _wgslsmith_f_op_f32(1809f * 1283f), _wgslsmith_f_op_f32(select(var_0.c, var_0.c, true))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1372f)), var_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f), var_0.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(184f)))))));
    var var_2 = Struct_1(var_0.b.yz, var_0.b, _wgslsmith_f_op_f32(sign(1254f)));
    var_2 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-(~0i), var_2.b.x), vec2<i32>(-1i) * -vec2<i32>(-77549i, 17183i)), _wgslsmith_div_vec3_i32(var_2.b, ~vec3<i32>(21718i, i32(-1i) * -49389i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var_2 = Struct_1(var_0.a, vec3<i32>(-17342i, 1i, var_0.a.x), var_2.c);
    return Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_2.b.x, var_0.a.x), firstTrailingBit(var_0.b.yx)), vec3<i32>(1i, ~((var_0.a.x | var_2.b.x) & 74067i), -58884i), _wgslsmith_f_op_f32(f32(-1f) * -182f));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<u32>(~(~(~_wgslsmith_div_u32(50487u, 2941u))), ~func_2(func_1().c, Struct_1(abs(arg_0.b.yz), arg_0.b & arg_0.b, _wgslsmith_div_f32(arg_0.c, arg_0.c))).x, 0u);
    return Struct_1(vec2<i32>(-5014i, select(-1i, ~(24246i | arg_0.b.x), true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-arg_0.a.x, arg_0.b.x), -45581i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-5285i, 1i, arg_0.a.x, 2147483647i), vec4<i32>(74310i, arg_0.b.x, arg_0.a.x, arg_0.b.x)), _wgslsmith_sub_i32(-1i, arg_0.b.x))), -vec3<i32>(1i, firstLeadingBit(arg_0.b.x), arg_0.b.x), _wgslsmith_clamp_vec3_i32(~arg_0.b, abs(arg_0.b), -arg_0.b) ^ countOneBits(vec3<i32>(-27165i, arg_0.b.x, -2147483647i))), _wgslsmith_div_f32(arg_0.c, arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var var_1 = var_0.c;
    let var_2 = ~max(1u, abs(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(0u, u_input.a))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.c)), _wgslsmith_f_op_f32(ceil(-1039f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1718f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, var_0.c))))), func_1(), ~firstLeadingBit(~(~vec4<i32>(var_0.a.x, 0i, -25460i, -2147483647i))), -431f);
    var var_4 = var_3.b;
    var var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_3.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-565f, var_4.c, -290f, var_0.c) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, var_3.b.c, var_3.a.x, -527f), var_3.a))))), var_3.b, select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c.x, var_3.b.a.x, var_4.b.x), vec3<i32>(var_3.c.x, var_0.b.x, var_3.c.x)), -(~2147483647i), ~abs(var_4.a.x), var_4.a.x | 51829i), _wgslsmith_add_vec4_i32(countOneBits(var_3.c | vec4<i32>(var_4.b.x, 32174i, var_0.b.x, -2147483647i)), -(~var_3.c)), true), -762f);
    var var_6 = true;
    let var_7 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_3.a), func_4(func_1()), vec4<i32>(1i, -((-2147483647i | var_5.c.x) << (var_2 % 32u)), var_3.b.a.x | var_3.b.b.x, _wgslsmith_div_i32(abs(var_4.b.x), var_5.c.x)), var_4.c);
    let var_8 = (abs(0u | min(var_2, var_2)) ^ 4294967295u) >= 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, var_3.a.x)));
}

