struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_div_i32((0i << (u_input.b.x % 32u)) << (_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.xy) % 32u), _wgslsmith_add_i32(~(-5682i), -8526i)), 1i));
    var var_1 = Struct_4(Struct_2(var_0, ~select(vec3<i32>(var_0, var_0, var_0), vec3<i32>(1141i, -2147483647i, var_0), true)), Struct_1(_wgslsmith_mult_vec2_i32(~countOneBits(vec2<i32>(-29798i, var_0)), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(2147483647i, 9711i)))), _wgslsmith_div_vec4_i32(reverseBits(min(vec4<i32>(var_0, var_0, var_0, 2147483647i), vec4<i32>(var_0, 2881i, 71053i, 28883i))), countOneBits(vec4<i32>(-20015i, 0i, 2147483647i, var_0))), -vec4<i32>(select(var_0, -2147483647i, true), reverseBits(-1i), 0i, min(var_0, var_0))));
    let var_2 = _wgslsmith_dot_vec4_i32(~var_1.b.b, -(~(vec4<i32>(-1i) * -var_1.b.b)));
    var_1 = Struct_4(var_1.a, var_1.b);
    var_1 = Struct_4(Struct_2(0i, -var_1.b.c.xyx), var_1.b);
    return false;
}

fn func_2() -> Struct_5 {
    var var_0 = ~u_input.d;
    let var_1 = !func_3();
    var_0 = u_input.d;
    let var_2 = true;
    let var_3 = min(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), -(~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 19879i), vec2<i32>(-36974i, -8186i)))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-1i, 1i)) >> (~u_input.b % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(-1i, 2147483647i)), reverseBits(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-37699i, -59412i), vec2<i32>(1i, 2147483647i), var_1), _wgslsmith_div_vec2_i32(vec2<i32>(-15705i, 2147483647i), vec2<i32>(6799i, -34065i))))));
    return Struct_5(Struct_1(~(~var_3), -(~(~vec4<i32>(-11028i, 1i, var_3.x, -1i))), vec4<i32>(var_3.x, -7749i, -1i, ~(-41073i)) | _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_3.x, var_3.x, 15357i, var_3.x), vec4<i32>(4642i, -38579i, var_3.x, 8752i), vec4<bool>(true, true, true, var_1)), firstLeadingBit(vec4<i32>(var_3.x, -2147483647i, var_3.x, 2147483647i)))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_5) -> Struct_1 {
    return arg_2.a;
}

fn func_1() -> vec3<i32> {
    var var_0 = func_4(true, ~select(reverseBits(-2147483647i), 1i, true | (u_input.d >= u_input.d)), func_2());
    var_0 = Struct_1(_wgslsmith_mult_vec2_i32(~var_0.c.yx, var_0.a), var_0.c << ((~(~vec4<u32>(16421u, u_input.b.x, u_input.c.x, u_input.d)) ^ min(countOneBits(vec4<u32>(4294967295u, u_input.c.x, 12309u, u_input.d)), vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x) ^ vec4<u32>(u_input.d, u_input.a, 0u, 22049u))) % vec4<u32>(32u)), vec4<i32>(abs((var_0.a.x & 2147483647i) >> (~4294967295u % 32u)), -countOneBits(0i), -12846i, _wgslsmith_mult_i32(i32(-1i) * -var_0.b.x, _wgslsmith_sub_i32(var_0.b.x, countOneBits(var_0.c.x)))));
    var_0 = func_2().a;
    var_0 = Struct_1(vec2<i32>(35999i, _wgslsmith_mod_i32(-var_0.b.x, -1i)), var_0.c, firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(var_0.c.x, -27191i >> (1u % 32u)), firstLeadingBit(var_0.b.x), i32(-1i) * -var_0.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.c.x, -50044i, var_0.c.x), var_0.b))));
    let var_1 = Struct_1(var_0.c.xy & vec2<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, var_0.b.x, var_0.c.x, -1i), vec4<i32>(-1i, -28451i, 40144i, 0i)), ~vec4<i32>(var_0.c.x, -21714i, -17279i, var_0.b.x)), -32463i), ~var_0.c, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x | var_0.b.x, 2147483647i, _wgslsmith_mult_i32(0i, 0i), -var_0.b.x), var_0.b) ^ var_0.c);
    return var_1.c.xxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(min(min(vec3<i32>(29614i, 2147483647i, 2147483647i) >> (u_input.c % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(-38048i, ~(-2147483647i), firstLeadingBit(2147483647i))), select(~(-vec3<i32>(-2147483647i, -16046i, -2147483647i)), func_1() ^ -vec3<i32>(-28625i, 33364i, 21879i), vec3<bool>(any(vec4<bool>(true, true, true, true)), u_input.a <= 0u, true))), vec3<i32>(-1i, -(~1659i) ^ (~(-1i) << (u_input.b.x % 32u)), ~(~(i32(-1i) * -24177i))));
    let var_1 = ~4294967295u;
    let var_2 = abs(7054u);
    let var_3 = !select(vec2<bool>(true, true), vec2<bool>(true, !all(vec4<bool>(true, false, true, false))), select(vec2<bool>(false, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), !any(vec2<bool>(false, true))));
    var var_4 = func_3();
    var_4 = select(true, true, true & all(vec2<bool>(true, true)));
    let var_5 = Struct_3(Struct_1(var_0.xz << (~u_input.c.xy % vec2<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(func_1().x, ~var_0.x), _wgslsmith_mult_i32(abs(var_0.x), func_4(false, var_0.x, Struct_5(Struct_1(var_0.yz, vec4<i32>(var_0.x, 1i, -1i, var_0.x), vec4<i32>(var_0.x, 1i, var_0.x, 0i)))).c.x), -57758i, i32(-1i) * -2147483647i), vec4<i32>(var_0.x, abs(1i), max(1i, 1i), -1i)), Struct_2(var_0.x, ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -17142i, var_0.x), reverseBits(var_0))), !select(vec4<bool>(any(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, var_3.x)), !var_3.x, var_3.x), vec4<bool>(true, true, true, true), !select(vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(var_3.x, true, true, var_3.x), var_3.x)), vec2<i32>(select(0i, 20326i, false || (var_0.x >= var_0.x)), (0i | (var_0.x >> (var_2 % 32u))) ^ var_0.x), select(abs(vec4<i32>(var_0.x, var_0.x, 4979i, -2147483647i)), vec4<i32>(2147483647i << (var_2 % 32u), var_0.x, ~var_0.x, _wgslsmith_mod_i32(-2147483647i, -12105i)), vec4<bool>(true, func_3(), func_3(), true)) | vec4<i32>(-7667i ^ _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(var_0.x, -1i, var_0.x)), 1i, 1i, var_0.x));
    var var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1204f + 334f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_div_f32(1000f, 1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, -452f), 2006f)), 340f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, -244f, 258f, 1000f) * vec4<f32>(-1000f, -813f, 701f, 207f))))))), vec2<u32>(reverseBits(~70866u) & _wgslsmith_div_u32(~u_input.c.x, 12755u), ~abs(~var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-195f, 1000f, -2446f, -332f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-410f, -828f, -808f, -1137f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, 3027f, 489f, -387f) - vec4<f32>(-525f, 627f, -232f, -566f)) * vec4<f32>(333f, -298f, -1000f, -791f))))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1, 4782u, 78523u) & u_input.c, reverseBits(u_input.c))));
}

