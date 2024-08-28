struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(exp2(arg_0.a))))));
    return arg_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_add_i32(-1i, select(-1i >> (0u % 32u), firstLeadingBit(0i), all(!vec3<bool>(false, arg_1.c, false)))) & 177i;
    let var_2 = Struct_1(all(vec3<bool>(false, true, arg_1.c || var_0.c)), _wgslsmith_add_vec3_i32(max(select(reverseBits(vec3<i32>(1i, 23506i, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 17132i, 2147483647i), vec3<i32>(2147483647i, -32069i, -1i)), true), vec3<i32>(-1i) * -vec3<i32>(6684i, 2147483647i, 75792i)), select(~vec3<i32>(2147483647i, -10904i, -2147483647i) >> ((vec3<u32>(u_input.c, var_0.b, 0u) >> (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-27130i >> (arg_1.b % 32u), _wgslsmith_add_i32(2147483647i, 0i), 56287i), arg_1.c)), -1i, _wgslsmith_mult_i32(~min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -23820i, 1i), vec3<i32>(-28351i, -13261i, 2147483647i)), 1i), 2012i));
    var var_3 = false;
    let var_4 = var_2;
    return _wgslsmith_dot_vec4_i32(firstLeadingBit((min(vec4<i32>(var_4.c, -1i, -2147483647i, -1i), vec4<i32>(-2147483647i, 463i, var_4.b.x, 0i)) >> ((vec4<u32>(var_0.b, arg_1.b, 1u, 0u) >> (vec4<u32>(1u, arg_1.b, u_input.c, 94793u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ abs(-vec4<i32>(var_4.b.x, -1i, 7997i, var_2.c))), _wgslsmith_sub_vec4_i32(~vec4<i32>(23094i & var_4.b.x, ~var_2.c, var_4.c, -1i), -_wgslsmith_add_vec4_i32(vec4<i32>(var_2.c, var_2.d, -2147483647i, -2147483647i), vec4<i32>(var_2.c, 18098i, 2147483647i, var_2.d))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = ~vec2<i32>(~min(2147483647i, 28624i) & func_3(vec2<f32>(-1276f, 139f), func_2(Struct_2(-324f, arg_1, false), Struct_1(false, vec3<i32>(-6898i, -23169i, -1133i), -1i, 9240i), vec4<bool>(false, false, true, false))), -40605i);
    var var_1 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), var_0.x != 1i), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))), any(vec2<bool>(true, true)) || func_2(Struct_2(1273f, 1u, true), Struct_1(true, vec3<i32>(var_0.x, var_0.x, 0i), -10708i, var_0.x), vec4<bool>(false, false, false, true)).c), vec4<bool>(any(vec2<bool>(true, false)), true, true, true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, any(vec4<bool>(true, false, true, false)), false), true));
    var_1 = !(!(!select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, false, var_1.x), !vec4<bool>(var_1.x, true, false, var_1.x))));
    var_1 = select(vec4<bool>(any(select(var_1.xzw, var_1.wxx, all(vec2<bool>(var_1.x, false)))), var_1.x, firstTrailingBit(var_0.x) < 2147483647i, false), !vec4<bool>(all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x))), var_1.x, var_1.x, true), select(select(!vec4<bool>(true, var_1.x, false, true), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), any(var_1.zz)), vec4<bool>(func_2(Struct_2(-743f, 0u, false), Struct_1(false, vec3<i32>(2147483647i, -2147483647i, -22048i), var_0.x, var_0.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true)).b < 54937u, true, !var_1.x, true), !(!(!vec4<bool>(true, var_1.x, var_1.x, true)))));
    var var_2 = u_input.b;
    return Struct_1(!(!(!(!var_1.x))), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x & (3228i << (arg_1 % 32u)), var_0.x, 38802i), vec3<i32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(59568i, 2147483647i, 34173i, var_0.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.x, -43569i, 10063i), vec4<i32>(-6297i, -42747i, var_0.x, var_0.x))), var_0.x), var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1856f)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x), -653f)) - arg_2), -220f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(f32(-1f) * -1477f))))), _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(arg_0.d, min(30608i, 2147483647i))), ~min(~(-2147483647i), -1i)), u_input.c);
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(f32(-1f) * -1386f), arg_1.a | (true | arg_1.a))), 143f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(485f)))), arg_2.x, arg_0.c, 23866u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(~abs(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(u_input.c, 1u, 69374u))), firstTrailingBit(firstTrailingBit(~u_input.c))), Struct_1(false, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(-48524i, -1i, -6014i, -2147483647i))), max(_wgslsmith_dot_vec3_i32(vec3<i32>(8776i, -36930i, -4439i), vec3<i32>(-4754i, 22738i, -2147483647i)), ~(-1i)), -29023i), ~(_wgslsmith_mult_i32(-17387i, 50252i) >> (u_input.c % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(63208i, 18875i, 22990i)) >> (~(u_input.b.x ^ 1u) % 32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1088f, 960f, 940f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1072f, 114f, -501f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(103f)), -573f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3330f + var_0.c) - _wgslsmith_f_op_f32(-var_0.b)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1058f, _wgslsmith_f_op_f32(-func_2(Struct_2(-1229f, 19899u, false), Struct_1(true, vec3<i32>(0i, var_0.d, 2147483647i), var_0.d, var_0.d), vec4<bool>(true, false, true, true)).a)), vec2<f32>(var_0.c, func_2(func_2(Struct_2(472f, 99657u, true), Struct_1(true, vec3<i32>(var_0.d, -8959i, var_0.d), -3868i, var_0.d), vec4<bool>(false, true, true, false)), func_1(u_input.b, 15791u), vec4<bool>(true, true, true, true)).a))));
    let var_2 = _wgslsmith_div_u32(~var_0.e & var_0.e, 1u);
    var_1 = vec2<f32>(-1195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1678f - 149f)))));
    let var_3 = vec3<bool>(true, true, true);
    var_1 = var_0.a.zx;
    var var_4 = Struct_2(-436f, var_2, _wgslsmith_dot_vec3_u32(abs(u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.e, var_0.e), vec3<u32>(1u, var_2, 1u) | u_input.b)) == var_2);
    let var_5 = u_input.a;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1878f, var_0.c))))))), min(abs(_wgslsmith_sub_i32(~var_0.d, ~(-8102i))), abs(func_1(countOneBits(u_input.b), var_4.b).d)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-508f, var_4.a, var_0.c, var_1.x), vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1050f, var_4.a, var_4.a, var_1.x), vec4<f32>(-1451f, 779f, 735f, var_0.c))))))));
}

