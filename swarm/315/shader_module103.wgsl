struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = vec4<i32>(u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -20026i, firstTrailingBit(arg_1.c), u_input.a ^ arg_2.b.c.c), vec4<i32>(min(480i, -1548i), -1972i, arg_1.c, ~arg_2.b.c.c)), u_input.a ^ countOneBits(u_input.a)), 0i, i32(-1i) * -3552i);
    var var_1 = arg_2.c;
    var var_2 = u_input.a;
    var_1 = ~arg_2.c;
    let var_3 = vec2<u32>(arg_1.d.x, _wgslsmith_mult_u32(~0u, arg_2.c));
    return select(!vec2<bool>(!arg_0.x, all(!vec3<bool>(arg_1.a.x, false, arg_1.a.x))), !select(arg_2.b.c.a, arg_1.a, arg_0), !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_2.d.x, arg_2.d.x)))) < -1000f));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(!arg_0.b.c.a, ~(vec2<u32>(_wgslsmith_mod_u32(arg_0.c, arg_0.b.c.d.x), arg_0.c) | vec2<u32>(arg_0.b.c.d.x, arg_0.b.c.b.x)), ~(~arg_2.c >> ((~arg_2.b.x << (_wgslsmith_mult_u32(arg_2.b.x, 1u) % 32u)) % 32u)), _wgslsmith_add_vec3_u32(select(arg_0.b.c.d, min(vec3<u32>(62155u, 30098u, arg_2.d.x), vec3<u32>(0u, arg_2.b.x, 36350u)), _wgslsmith_mod_u32(arg_2.b.x, arg_0.b.c.b.x) >= _wgslsmith_mult_u32(25348u, 0u)), arg_2.d));
    return Struct_2(vec2<i32>(var_0.c, 0i), -657f, Struct_1(func_3(vec2<bool>(true, true), arg_0.b.c, arg_0), arg_0.b.c.d.xz & ~vec2<u32>(var_0.d.x, 0u), reverseBits(select(arg_0.b.c.c, _wgslsmith_mult_i32(-11734i, arg_2.c), !var_0.a.x)), vec3<u32>(arg_2.d.x, ~_wgslsmith_clamp_u32(arg_2.d.x, 0u, 1u), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(65674u, 44467u)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_3.b.c;
    var var_1 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(min(-397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-637f)))))), var_0);
    let var_2 = Struct_3(!(!var_1.c.a.x), Struct_2(firstLeadingBit(-vec2<i32>(arg_1.x, u_input.a)), arg_0.b, arg_0.c), _wgslsmith_mod_u32(~var_0.b.x, firstTrailingBit(min(33219u, 1u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(arg_3.d, _wgslsmith_div_vec4_f32(vec4<f32>(-440f, var_1.b, 160f, arg_3.d.x), arg_3.d))))))));
    var_1 = func_2(Struct_3(any(var_2.b.c.a), Struct_2(select(-arg_1.xy, ~var_2.b.a, 1845u >= var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.d.x))), Struct_1(vec2<bool>(var_2.b.c.a.x, true), var_2.b.c.b, -27045i, abs(vec3<u32>(8043u, var_0.b.x, var_1.c.b.x)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_2.b.c.d & vec3<u32>(var_0.b.x, 4294967295u, var_2.b.c.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.c.b.x, arg_3.c), vec3<u32>(arg_3.b.c.b.x, var_1.c.d.x, 43025u))), 49647u), arg_3.d), (i32(-1i) * -(~(-1i))) >= _wgslsmith_sub_i32(-6198i, _wgslsmith_dot_vec2_i32(vec2<i32>(-23329i, arg_1.x) << (var_1.c.b % vec2<u32>(32u)), ~var_1.a)), var_1.c);
    let var_3 = _wgslsmith_f_op_f32(-arg_0.b);
    return Struct_3(!all(func_2(var_2, true, Struct_1(vec2<bool>(false, var_0.a.x), vec2<u32>(var_0.b.x, 4294967295u), var_1.a.x, vec3<u32>(arg_3.b.c.d.x, 4294967295u, arg_3.b.c.b.x))).c.a), func_2(Struct_3(all(var_1.c.a), var_2.b, 45465u, arg_3.d), var_2.a, arg_0.c), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~(var_0.b.x & 4294967295u), 4294967295u), arg_3.c ^ ~(var_0.b.x & var_0.b.x)), arg_3.d);
}

fn func_5(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = func_2(func_4(arg_0.b, firstLeadingBit(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(0i, arg_0.b.a.x, arg_0.b.a.x)), vec3<i32>(arg_0.b.c.c, arg_0.b.a.x, arg_0.b.a.x))), -24360i, func_4(func_2(arg_0, !arg_0.a, func_2(arg_0, false, Struct_1(arg_0.b.c.a, vec2<u32>(arg_0.c, 0u), 0i, vec3<u32>(arg_0.c, 0u, 1u))).c), abs(vec3<i32>(0i, 2147483647i, 915i)) ^ -vec3<i32>(arg_0.b.a.x, arg_0.b.c.c, 10332i), firstTrailingBit(1i), arg_0)), arg_0.b.c.a.x, arg_0.b.c);
    var var_1 = arg_0.d.wwx;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.d)));
    var_0 = func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x + 1102f) - _wgslsmith_f_op_f32(f32(-1f) * -754f)) != var_1.x, func_2(arg_0, var_0.c.a.x, Struct_1(arg_0.b.c.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(17959u, 44770u), vec2<u32>(var_0.c.b.x, 697u), var_0.c.d.zy), -var_0.a.x, vec3<u32>(82709u, 1u, 42033u))), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.b.c.b.x, 44059u), 10351u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(297f, -384f, var_2.x, -661f))))), func_2(arg_0, all(vec4<bool>(all(vec4<bool>(false, true, false, var_0.c.a.x)), var_0.c.a.x, arg_0.b.c.a.x, all(vec3<bool>(false, arg_0.b.c.a.x, true)))), arg_0.b.c).c.a.x, Struct_1(var_0.c.a, abs(var_0.c.b), arg_0.b.c.c << ((1u >> (~arg_0.c % 32u)) % 32u), vec3<u32>(arg_0.b.c.b.x, arg_0.b.c.d.x, 10866u)));
    var_2 = _wgslsmith_f_op_vec4_f32(round(arg_0.d));
    return ~arg_0.b.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_2(_wgslsmith_mod_vec2_i32(func_5(func_4(func_2(Struct_3(false, arg_2.b, arg_2.c, vec4<f32>(-2022f, 275f, arg_1.d.x, arg_1.d.x)), arg_1.a, Struct_1(vec2<bool>(false, true), vec2<u32>(arg_1.b.c.d.x, arg_2.c), 1i, arg_2.b.c.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, 0i, 0i), arg_0, vec3<i32>(-2147483647i, u_input.a, -4012i)), abs(u_input.a), Struct_3(arg_1.b.c.a.x, Struct_2(vec2<i32>(u_input.a, arg_0.x), arg_1.b.b, Struct_1(arg_1.b.c.a, vec2<u32>(0u, arg_1.c), -50358i, arg_1.b.c.d)), arg_2.c, vec4<f32>(-2021f, arg_1.b.b, 137f, arg_2.b.b)))), vec2<i32>(~(~arg_0.x), ~(~(-2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f + func_4(func_2(arg_1, true, arg_1.b.c), arg_0, arg_2.b.c.c, arg_2).b.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.b.b, _wgslsmith_f_op_f32(arg_1.b.b * -203f))) + _wgslsmith_f_op_f32(-arg_1.d.x))), arg_1.b.c);
    var var_1 = true;
    var var_2 = -((~vec3<i32>(0i, var_0.a.x, -2568i) | arg_0) & (arg_0 >> (abs(countOneBits(vec3<u32>(arg_1.b.c.d.x, 4294967295u, arg_1.b.c.d.x))) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_div_i32(-abs(1i), arg_0.x ^ _wgslsmith_mod_i32(0i, -_wgslsmith_dot_vec2_i32(arg_0.zx, vec2<i32>(-21187i, -31902i))));
    var var_4 = ~max(_wgslsmith_sub_vec3_u32(select(~var_0.c.d, ~arg_1.b.c.d, 1484f < arg_1.d.x), arg_1.b.c.d ^ select(vec3<u32>(52298u, 0u, arg_2.b.c.b.x), var_0.c.d, arg_2.a)), ~(_wgslsmith_div_vec3_u32(vec3<u32>(16927u, 1u, var_0.c.b.x), arg_2.b.c.d) & vec3<u32>(16431u, var_0.c.d.x, var_0.c.d.x)));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(1i, 0i, max(-2147483647i, u_input.a & u_input.a));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_div_u32(4294967295u | (select(~48879u, 0u, false) ^ _wgslsmith_sub_u32(35378u, _wgslsmith_mult_u32(1u, 1u))), 136015u);
    var var_3 = ~(-(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(-12521i, 1i), var_0.yy))));
    let var_4 = ~_wgslsmith_sub_vec4_u32(~firstTrailingBit(~vec4<u32>(var_2, 4294967295u, var_2, 90808u)), vec4<u32>((var_2 | 8088u) >> (var_2 % 32u), select(0u << (0u % 32u), func_1(vec3<i32>(1i, var_0.x, var_3.x), Struct_3(false, Struct_2(vec2<i32>(28112i, -1i), -775f, Struct_1(vec2<bool>(true, true), vec2<u32>(var_2, 21451u), 19553i, vec3<u32>(1u, 4294967295u, 4294967295u))), 23726u, vec4<f32>(1000f, 574f, 111f, 134f)), Struct_3(true, Struct_2(vec2<i32>(2147483647i, u_input.a), 835f, Struct_1(vec2<bool>(false, true), vec2<u32>(var_2, 1u), -11899i, vec3<u32>(1u, 35199u, 44082u))), var_2, vec4<f32>(1011f, 1000f, -1151f, 1611f))), all(vec2<bool>(false, true))), _wgslsmith_sub_u32(10148u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2), vec2<u32>(0u, 347u))), var_2));
    var var_5 = func_4(func_2(Struct_3(true, Struct_2(var_0.xy, _wgslsmith_f_op_f32(max(-904f, 1615f)), Struct_1(vec2<bool>(false, true), var_4.xz, var_3.x, vec3<u32>(var_2, 2042u, var_2))), _wgslsmith_mod_u32(151211u, var_2) << (var_2 % 32u), vec4<f32>(_wgslsmith_f_op_f32(min(-499f, -250f)), -556f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -994f)), false, Struct_1(vec2<bool>(true, true), ~min(var_4.wz, vec2<u32>(0u, var_4.x)), u_input.a, _wgslsmith_mult_vec3_u32(var_4.wwx << (vec3<u32>(var_2, var_4.x, var_4.x) % vec3<u32>(32u)), var_4.wzw))), min(vec3<i32>(max(u_input.a, -2147483647i), u_input.a, var_3.x) >> ((~vec3<u32>(var_2, 0u, var_2) << (~vec3<u32>(0u, var_2, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(-reverseBits(vec3<i32>(-42470i, u_input.a, var_0.x)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_3.x), var_0.xz), var_0.xz ^ var_0.xx), ~(-52692i)) & -2147483647i, Struct_3(func_2(Struct_3(true, Struct_2(var_0.zy, 446f, Struct_1(vec2<bool>(true, true), vec2<u32>(90541u, var_4.x), 26884i, vec3<u32>(43335u, 62789u, var_4.x))), var_4.x, vec4<f32>(-1272f, 719f, -403f, 2170f)), all(vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), vec2<u32>(2340u, 0u), -2147483647i, var_4.wxy)).c.a.x | false, Struct_2(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 58140i), u_input.a | 1i), 790f, Struct_1(func_3(vec2<bool>(false, false), Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 38190u), var_3.x, var_4.zyw), Struct_3(false, Struct_2(vec2<i32>(u_input.a, -20470i), 493f, Struct_1(vec2<bool>(false, true), vec2<u32>(var_4.x, var_2), var_0.x, vec3<u32>(var_4.x, 62649u, var_2))), var_4.x, vec4<f32>(710f, 372f, -1386f, -1000f))), vec2<u32>(20215u, 0u), 0i, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_2, var_2), var_4.wwx, vec3<u32>(6658u, var_4.x, var_2)))), 4294967295u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + 361f), -1000f, -244f, func_4(Struct_2(var_0.yx, -211f, Struct_1(vec2<bool>(true, false), vec2<u32>(var_4.x, var_2), u_input.a, var_4.zxz)), vec3<i32>(-1i, 0i, 1i), var_3.x, Struct_3(false, Struct_2(vec2<i32>(2147483647i, -2147483647i), -395f, Struct_1(vec2<bool>(false, false), var_4.xy, -1i, vec3<u32>(15489u, 0u, var_4.x))), 96361u, vec4<f32>(-1000f, 1027f, 1833f, 509f))).b.b) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(413f, 2054f, -147f, -1211f) * vec4<f32>(-829f, 1000f, -549f, -1638f)), vec4<f32>(-1263f, 1886f, 1067f, 865f))))).b.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, -278f, ~(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(18031i, 0i, var_5.c), vec3<i32>(241i, -2147483647i, 0i))), vec3<i32>(firstLeadingBit(-(~var_3.x)), func_2(func_4(func_2(Struct_3(var_5.a.x, Struct_2(vec2<i32>(0i, 21965i), -279f, Struct_1(var_5.a, vec2<u32>(27219u, var_5.b.x), var_3.x, vec3<u32>(var_5.d.x, 68677u, 0u))), var_5.b.x, vec4<f32>(-405f, 248f, 1539f, 488f)), true, Struct_1(var_5.a, vec2<u32>(28767u, var_5.d.x), var_3.x, var_5.d)), vec3<i32>(var_0.x, -2147483647i, u_input.a) >> (var_4.wyx % vec3<u32>(32u)), ~2147483647i, Struct_3(true, Struct_2(vec2<i32>(10773i, 27581i), -283f, Struct_1(var_5.a, vec2<u32>(2954u, var_4.x), var_3.x, vec3<u32>(0u, var_2, var_2))), var_2, vec4<f32>(-1033f, -2274f, 1013f, 499f))), true, Struct_1(vec2<bool>(true, true), ~vec2<u32>(var_2, 66569u), var_3.x, ~vec3<u32>(4294967295u, 54040u, 0u))).a.x, func_5(func_4(Struct_2(var_0.xy, -1000f, Struct_1(vec2<bool>(var_5.a.x, true), vec2<u32>(1u, var_2), var_0.x, var_5.d)), ~vec3<i32>(u_input.a, 25596i, var_3.x), min(32493i, var_0.x), func_4(Struct_2(vec2<i32>(var_3.x, var_3.x), -1191f, Struct_1(vec2<bool>(var_5.a.x, var_5.a.x), var_4.xx, -9388i, var_5.d)), vec3<i32>(0i, 32789i, u_input.a), u_input.a, Struct_3(var_5.a.x, Struct_2(vec2<i32>(-9978i, -2147483647i), 1145f, Struct_1(var_5.a, var_5.d.zz, var_5.c, var_5.d)), var_5.d.x, vec4<f32>(-1000f, -1000f, -829f, -133f))))).x), _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_5.c, var_5.c, u_input.a), vec3<i32>(var_5.c, 13620i, var_0.x)) ^ vec3<i32>(42594i, -45569i, 0i)), vec3<i32>(_wgslsmith_sub_i32(var_5.c, var_3.x), -1i, ~17551i) | _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-12755i, var_3.x, -26838i)), vec3<i32>(var_0.x, var_0.x, -2147483647i)), ~firstTrailingBit(vec3<i32>(1i, u_input.a, var_0.x))));
}

