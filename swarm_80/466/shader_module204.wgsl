struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_4 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(22315i, vec4<i32>(-2147483647i, -u_input.a.x, 1i, u_input.a.x));
    return Struct_4(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, arg_0), all(vec4<bool>(arg_0, arg_0, true, arg_0)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(214f - 1853f)), _wgslsmith_f_op_f32(step(-675f, -1194f)), !any(vec4<bool>(false, true, arg_0.x, arg_0.x)))) != -961f, true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-526f, _wgslsmith_f_op_f32(max(312f, _wgslsmith_f_op_f32(trunc(-812f))))) * -301f), 503f, 1f);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(min(countOneBits(firstLeadingBit(vec3<u32>(33439u, 1u, 0u))), vec3<u32>(_wgslsmith_sub_u32(0u, 0u), 0u, reverseBits(42620u))), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(26368u, 21591u, 1u), vec3<u32>(1u, 1u, 1u)))), 4294967295u);
    let var_3 = true;
    let var_4 = Struct_2(firstTrailingBit(4017u), var_1, Struct_1(select(1i, -_wgslsmith_add_i32(21425i, u_input.a.x), false), ~select(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -4534i, u_input.a.x)), firstTrailingBit(vec4<i32>(u_input.a.x, -20793i, 44227i, u_input.a.x)), !vec4<bool>(arg_0.x, var_3, var_3, var_3))), Struct_1(u_input.a.x, vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(select(u_input.a, u_input.a, arg_0.yx), ~vec2<i32>(-1i, u_input.a.x)), u_input.a.x, -u_input.a.x >> (_wgslsmith_mult_u32(var_2.x, var_2.x) % 32u))), Struct_1(-11523i, vec4<i32>(u_input.a.x, (-44907i >> (var_2.x % 32u)) ^ (u_input.a.x | -29083i), 0i, -9710i)));
    return Struct_3(Struct_1(0i, vec4<i32>(var_4.e.a, 45564i, _wgslsmith_sub_i32(-29996i, var_4.c.a), i32(-1i) * -var_4.d.a)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: i32) -> Struct_3 {
    var var_0 = false;
    var var_1 = func_3(vec3<bool>(true, true, true), Struct_4(!func_2(false, -arg_0.a.a).a)).a;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -arg_0.a.a, -firstTrailingBit(arg_0.a.a), _wgslsmith_add_i32(u_input.a.x, 2147483647i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, arg_0.a.a), _wgslsmith_div_i32(arg_1.x, 38826i), u_input.a.x), -(~vec3<i32>(arg_3, 2147483647i, u_input.a.x))), select(func_3(vec3<bool>(true, true, all(vec3<bool>(true, true, false))), Struct_4(vec3<bool>(true, true, true))).a.b.yyy, vec3<i32>(1i, _wgslsmith_mult_i32(1i, arg_3) ^ ~1i, _wgslsmith_dot_vec3_i32(var_1.b.xww, vec3<i32>(2147483647i, arg_3, arg_1.x)) | reverseBits(u_input.a.x)), vec3<bool>(true, true, true)));
    var var_3 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, firstTrailingBit(arg_2.x), firstTrailingBit(firstLeadingBit(1u)), arg_2.x), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(14698u, arg_2.x, arg_2.x, arg_2.x)), abs(vec4<u32>(37559u, 0u, 50538u, arg_2.x)) & vec4<u32>(0u, 1u, arg_2.x, arg_2.x)));
    let var_4 = func_3(!vec3<bool>(true, countOneBits(4294967295u) < _wgslsmith_mod_u32(arg_2.x, arg_2.x), !all(vec3<bool>(false, false, false))), Struct_4(vec3<bool>(true, 0u > var_3.x, true))).a;
    return Struct_3(func_3(!func_2(true, 1i).a, Struct_4(select(func_2(false, var_1.b.x).a, vec3<bool>(false, false, true), true))).a);
}

fn func_5(arg_0: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_div_f32(499f, -736f), true))) + _wgslsmith_f_op_f32(-1f)));
    let var_1 = Struct_4(vec3<bool>(16684i > arg_0.a.a, true, true));
    var var_2 = var_1;
    let var_3 = ~1u;
    var var_4 = ~vec3<u32>((var_3 ^ ~var_3) >> (~(~var_3) % 32u), 43072u, min(var_3, _wgslsmith_add_u32(44797u, 31287u)) & (~40958u >> ((var_3 & var_3) % 32u)));
    return _wgslsmith_add_i32(func_4(func_3(vec3<bool>(var_1.a.x, var_2.a.x, var_2.a.x), func_2(false, u_input.a.x)), -arg_0.a.b, ~var_4.yy, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a)).a.b.x, u_input.a.x) << (_wgslsmith_add_u32(26351u, 1u) % 32u);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> vec4<bool> {
    let var_0 = func_5(func_4(func_3(select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, true, arg_1), false), func_2(arg_1, u_input.a.x)), max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(1i, -2147483647i, u_input.a.x, -19453i)) << (min(vec4<u32>(1u, 1u, 30953u, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) % vec4<u32>(32u)), arg_0, 1i)) << (~select(~arg_0.x, _wgslsmith_div_u32(~arg_0.x, ~136698u), arg_1) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(976f * arg_2)), arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2, -121f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(724f + -596f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f)), _wgslsmith_f_op_f32(f32(-1f) * -338f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2)))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-977f)) - -995f))));
    let var_2 = func_4(func_4(Struct_3(func_4(Struct_3(Struct_1(-46968i, vec4<i32>(-18682i, -2147483647i, 2147483647i, var_0))), vec4<i32>(u_input.a.x, 1i, 1i, var_0), vec2<u32>(arg_0.x, 25887u), var_0 ^ var_0).a), select(vec4<i32>(var_0, _wgslsmith_mod_i32(0i, var_0), ~var_0, -9694i), abs(max(vec4<i32>(-1i, u_input.a.x, var_0, u_input.a.x), vec4<i32>(1201i, u_input.a.x, var_0, 13763i))), any(vec2<bool>(arg_1, true))), arg_0, u_input.a.x), -(max(-vec4<i32>(u_input.a.x, 2147483647i, -21551i, 10052i), reverseBits(vec4<i32>(2548i, var_0, -1i, u_input.a.x))) << (abs(min(vec4<u32>(14790u, 1u, arg_0.x, 0u), vec4<u32>(20327u, arg_0.x, 62770u, arg_0.x))) % vec4<u32>(32u))), ~(~_wgslsmith_div_vec2_u32(min(vec2<u32>(arg_0.x, 0u), vec2<u32>(arg_0.x, 25822u)), arg_0 ^ arg_0)), -(_wgslsmith_mult_i32(2120i, u_input.a.x) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, arg_0.x, 1u), ~vec3<u32>(arg_0.x, 25923u, 1u)) % 32u))).a;
    var var_3 = max(-_wgslsmith_sub_vec2_i32(-abs(vec2<i32>(24383i, var_0)), vec2<i32>(var_2.b.x, u_input.a.x)), var_2.b.wz);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(-389f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(ceil(1605f))), var_1.x, arg_2);
    return !select(vec4<bool>(arg_1, !arg_1, arg_1, false), !select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(false, arg_1, true, false), false), select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, true, true, arg_1)), arg_1), select(select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, arg_1, false, true), false), !select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, arg_1, true, arg_1), arg_1), true | (var_1.x == arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, u_input.a.x, 1i), vec3<i32>(-31264i, u_input.a.x, -14697i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, -22461i), vec3<i32>(-4086i, u_input.a.x, 0i))));
    let var_1 = vec3<u32>(82979u, firstLeadingBit(1u), ~(~1u));
    var_0 = select(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, 35500i), vec3<i32>(var_0.x, u_input.a.x, -1i))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.a.x, var_0.x, 24413i), vec3<i32>(1i, 6891i, var_0.x), true) ^ ~vec3<i32>(0i, -201i, -1i), vec3<i32>(countOneBits(-2147483647i), var_0.x, countOneBits(u_input.a.x))), any(func_1(var_1.xy & vec2<u32>(var_1.x, var_1.x), true, _wgslsmith_f_op_f32(520f + 209f)))) ^ ~vec3<i32>(-60708i, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(1i, -12800i, var_0.x)), u_input.a.x);
    var_0 = vec3<i32>(~select(_wgslsmith_div_i32(~var_0.x, ~u_input.a.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(41598i, 0i, var_0.x)), vec3<i32>(-41363i, -2147483647i, 74139i) >> (vec3<u32>(0u, 22778u, var_1.x) % vec3<u32>(32u))), false), u_input.a.x, -30281i);
    var var_2 = Struct_5(countOneBits(~_wgslsmith_sub_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1373u, 4294967295u, 1u), vec4<u32>(0u, var_1.x, 34433u, 1u)))), 710f, -1i);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1456f, -234f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-778f - var_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -1188f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.b), 932f, -491f))));
    let var_4 = var_3.x;
    let var_5 = func_2(-abs(var_0.x) <= _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(u_input.a.x, var_0.x, var_2.c, u_input.a.x)), vec4<i32>(-7679i, 4502i, _wgslsmith_mod_i32(-18393i, 2147483647i), -var_0.x)), abs(_wgslsmith_mult_i32(func_3(vec3<bool>(false, true, true), Struct_4(vec3<bool>(true, false, false))).a.b.x, func_4(Struct_3(Struct_1(u_input.a.x, vec4<i32>(59852i, u_input.a.x, -55719i, 33483i))), vec4<i32>(-2147483647i, var_2.c, -36223i, var_2.c), var_1.yx, var_0.x).a.a)) & u_input.a.x);
    var_2 = Struct_5(var_1.x, _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(sign(-175f))), func_3(var_5.a, func_2(var_5.a.x, u_input.a.x)).a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1231f, -_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.a.x, 47805i, 0i, var_0.x)), -vec4<i32>(var_0.x, -2147483647i, var_0.x, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x - var_4), _wgslsmith_f_op_f32(abs(var_3.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_5.a.x)) + _wgslsmith_f_op_f32(2351f * var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(315f + _wgslsmith_f_op_f32(select(var_4, var_3.x, var_5.a.x)))), var_4));
}

