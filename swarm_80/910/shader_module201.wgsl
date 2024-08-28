struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = Struct_1(~(~abs(vec2<u32>(51164u, 4294967295u))), reverseBits(vec2<i32>(44386i, _wgslsmith_mod_i32(arg_2, -arg_1.b))), min(-select(countOneBits(vec2<i32>(u_input.b, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, 24396i), vec2<i32>(0i, -1i)), vec2<bool>(true, true)), -vec2<i32>(_wgslsmith_sub_i32(arg_1.b, arg_1.b), -u_input.b)));
    return _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(20062u, ~18858u)), var_0.a) << (_wgslsmith_mod_u32(arg_1.a, var_0.a.x) % 32u);
}

fn func_2() -> vec4<i32> {
    var var_0 = !vec4<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), _wgslsmith_clamp_u32(41662u, 1u, func_3(12043i, Struct_2(57430u, -38883i), 27080i)) < 1u, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), true);
    var var_1 = Struct_1(vec2<u32>(1u, 103692u), ~(~(-vec2<i32>(2147483647i, u_input.b))) ^ (min(-vec2<i32>(u_input.b, u_input.b), firstTrailingBit(vec2<i32>(u_input.b, u_input.a))) << (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(55145u, 60676u), vec2<u32>(1u, 28033u), vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u))), -(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(4660i, u_input.b), vec2<i32>(u_input.b, 2147483647i))));
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(~((vec2<u32>(34241u, 20214u) >> (vec2<u32>(var_1.a.x, var_1.a.x) % vec2<u32>(32u))) >> (var_1.a % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(54646u, var_1.a.x), var_1.a)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1811i, ~1i), firstLeadingBit(vec2<i32>(8980i, -2147483647i))), vec2<i32>(var_1.c.x, u_input.a));
    let var_3 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_1.a.x, 21364u, 1u) | _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, var_1.a.x, 4414u), vec3<u32>(1u, var_2.a.x, 3615u))), vec3<u32>((37059u << (var_1.a.x % 32u)) | var_2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_2.a.x), var_1.a), countOneBits(var_1.a.x)));
    var var_4 = firstTrailingBit(vec2<u32>(~33010u, max(85938u, _wgslsmith_mod_u32(var_1.a.x, var_2.a.x))));
    return vec4<i32>(~1i, i32(-1i) * -2140i, -var_2.c.x >> (4294967295u % 32u), _wgslsmith_sub_i32(~(~(u_input.a & var_2.b.x)), max(abs(528i), 12279i << (var_3 % 32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> vec2<u32> {
    let var_0 = func_2();
    let var_1 = abs(-arg_0.x);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(var_0.wxx, arg_0.xww), var_1, firstTrailingBit(var_0.x), -1i), vec4<i32>(select(var_1, ~(-1i) ^ _wgslsmith_mod_i32(-7387i, arg_1), !(u_input.a != var_0.x)), 0i, ~(~arg_1 << (~1u % 32u)), -2147483647i));
    let var_3 = select(-_wgslsmith_add_vec4_i32(~firstTrailingBit(vec4<i32>(arg_1, u_input.b, var_0.x, arg_1)), reverseBits(var_0)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(66308i, u_input.a), vec2<i32>(24395i, 14760i)), ~var_0.yy), var_1, 6143i), vec4<i32>(var_2.x | -1i, -1602i, min(var_0.x, -1i), 47178i)), select(true, select(false, all(vec4<bool>(false, true, true, false)), 1172f < arg_2), true) | (_wgslsmith_add_i32(_wgslsmith_sub_i32(0i, -41046i), -u_input.a) > _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(34974i, -49857i, arg_1)), vec3<i32>(1i, 1i, 1i))));
    return vec2<u32>(1u, countOneBits(~2981u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(firstTrailingBit(~(~vec2<u32>(0u, 0u))), func_1(~vec4<i32>(u_input.b, 23022i, -1i, -66774i) << (select(vec4<u32>(4294967295u, 23477u, 0u, 1u), vec4<u32>(41081u, 11414u, 1u, 1u), false) % vec4<u32>(32u)), firstTrailingBit(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2009f)) + -300f))), vec2<i32>(u_input.b, _wgslsmith_sub_i32(abs(u_input.a), reverseBits(abs(u_input.a)))), ~vec2<i32>(u_input.b, u_input.a));
    var_0 = Struct_1(abs(~(~var_0.a)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c.x, -2147483647i | u_input.a), select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-34908i, -1i), vec2<bool>(true, true)), var_0.c), firstTrailingBit(countOneBits(max(vec2<i32>(1i, u_input.b), var_0.b)) >> (((vec2<u32>(var_0.a.x, var_0.a.x) >> (var_0.a % vec2<u32>(32u))) >> (var_0.a % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_0 = Struct_1(~vec2<u32>(var_0.a.x, ~var_0.a.x) ^ ~vec2<u32>(~1u, ~3961u), vec2<i32>(abs(_wgslsmith_mod_i32(26511i, _wgslsmith_sub_i32(20362i, -24467i))), 18360i), firstTrailingBit(var_0.b));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(327f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(728f, 1003f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1, -167f)))), var_1));
    var var_3 = Struct_3(Struct_1(countOneBits(vec2<u32>(4294967295u, var_0.a.x)), reverseBits(-vec2<i32>(-49004i, 1i)), var_0.b), true, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-745f, -324f, true)))), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x & var_0.a.x, var_0.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, 0u), ~vec4<u32>(var_0.a.x, 0u, var_0.a.x, var_0.a.x))), countOneBits(vec4<u32>(38946u, 55996u, 0u, var_0.a.x)) | select(select(vec4<u32>(var_0.a.x, var_0.a.x, 0u, 92367u), vec4<u32>(var_0.a.x, 17715u, 1u, 1u), vec4<bool>(false, true, true, false)), ~vec4<u32>(22911u, var_0.a.x, 15056u, var_0.a.x), vec4<bool>(true, true, true, true))));
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, var_3.c))), vec2<f32>(1214f, -1812f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2235f, var_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(647f, 125f))), !(!vec2<bool>(false, var_3.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, _wgslsmith_f_op_f32(var_2.x * var_1)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, var_3.c), vec2<f32>(762f, var_1))))))), func_2(), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 8464i, -2147483647i, 24095i), vec4<i32>(-2147483647i, 86606i, var_0.c.x, u_input.b) >> (var_3.d % vec4<u32>(32u))));
}

