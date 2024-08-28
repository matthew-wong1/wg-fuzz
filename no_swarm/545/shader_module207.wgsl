struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_1(!select(select(vec3<bool>(true, true, arg_1.b.x), !vec3<bool>(true, true, arg_1.b.x), select(arg_1.b, arg_1.a, false)), select(select(arg_1.b, arg_1.a, arg_1.a), select(vec3<bool>(true, arg_1.a.x, arg_1.a.x), arg_1.a, true), select(vec3<bool>(true, arg_1.a.x, arg_1.b.x), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.b.x), vec3<bool>(false, true, arg_1.b.x))), arg_1.b), select(!vec3<bool>(true, any(vec3<bool>(false, arg_1.a.x, true)), !arg_1.a.x), !arg_1.b, select(select(arg_1.a, vec3<bool>(arg_1.a.x, false, arg_1.a.x), !vec3<bool>(arg_1.a.x, arg_1.a.x, true)), vec3<bool>(!arg_1.b.x, arg_1.a.x | arg_1.b.x, all(vec2<bool>(arg_1.b.x, arg_1.a.x))), arg_1.b)), ~(~57188u));
    let var_1 = 20202u;
    let var_2 = Struct_3(~abs(~u_input.a.x));
    let var_3 = arg_1.a.x;
    var var_4 = _wgslsmith_mult_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c, 0u), vec2<u32>(30165u, var_1)) & vec2<u32>(var_0.c, 1u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c, ~arg_1.c), _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_1.c, arg_1.c), vec2<u32>(0u, arg_1.c) << (vec2<u32>(24711u, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_1.c), vec2<u32>(46281u, 1u)))) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, var_0.c), vec2<u32>(var_1, u_input.b)));
    return _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: u32, arg_3: f32) -> vec3<bool> {
    let var_0 = all(vec3<bool>(!any(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(792f + _wgslsmith_f_op_f32(func_3(vec2<f32>(arg_3, arg_3), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, true, false), arg_0.x), vec3<f32>(121f, arg_3, arg_3)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3, -337f)))));
    var var_1 = Struct_3(~(-firstLeadingBit(~u_input.a.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1286f)), -287f)), vec2<f32>(arg_3, arg_3), true)), u_input.a, select(vec2<bool>(true, false), vec2<bool>(false, var_0), any(vec4<bool>(true, true, !var_0, var_0 || var_0))), Struct_1(!vec3<bool>(false || var_0, 96435u > arg_1, arg_1 == arg_0.x), !select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, var_0)), vec3<bool>(var_0, var_0, var_0), any(vec3<bool>(true, true, var_0))), arg_1 ^ ~(~4294967295u)));
    var_1 = Struct_3(_wgslsmith_dot_vec4_i32(select(vec4<i32>(~var_1.a, var_2.b.x >> (4294967295u % 32u), var_2.b.x, _wgslsmith_mod_i32(2147483647i, var_1.a)), -vec4<i32>(20237i, -1i, u_input.d, 2147483647i), vec4<bool>(false, var_0, !var_0, select(true, true, var_2.c.x))), vec4<i32>(var_1.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(12382i, -1i, 3781i), vec3<i32>(-1i, var_2.b.x, 1i)), u_input.a.x), -2147483647i, var_2.b.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, var_2.a.x, _wgslsmith_f_op_f32(select(var_2.a.x, 1000f, var_2.c.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.x, var_2.a.x, arg_3), vec3<f32>(1044f, var_2.a.x, 1665f))))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-232f, -1193f, arg_3) * vec3<f32>(1000f, -725f, var_2.a.x))))))));
    return select(vec3<bool>(var_0, var_0, false), !vec3<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, var_0, var_2.c.x, var_2.d.a.x), vec4<bool>(false, var_2.c.x, var_2.c.x, var_2.d.b.x), true)), _wgslsmith_f_op_f32(-arg_3) == var_3.x), var_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_vec2_i32(~(vec2<i32>(-1i, arg_1.a) ^ u_input.a), vec2<i32>(_wgslsmith_dot_vec3_i32(-max(vec3<i32>(arg_1.a, 22668i, arg_1.a), vec3<i32>(-30039i, 0i, arg_1.a)), vec3<i32>(1i, 1i, 1i) >> (~vec3<u32>(4294967295u, u_input.c, 10217u) % vec3<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, arg_1.a), -96014i), -1i)));
    var var_1 = !(!vec2<bool>(true, any(vec4<bool>(false, arg_3, false, false))));
    var_1 = vec2<bool>(arg_0.b.x, !select(true, !var_1.x, true) || (arg_0.c <= ~firstLeadingBit(arg_0.c)));
    let var_2 = arg_0;
    var var_3 = Struct_3(-2147483647i);
    return arg_2;
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1036f) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, -680f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -922f), vec2<f32>(1095f, -1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1163f, -2307f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(509f, -417f))), true)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec3<bool>(true, true, true), func_2(vec3<u32>(48866u, ~4294967295u, _wgslsmith_div_u32(u_input.c, u_input.c)), ~(~u_input.c), ~firstLeadingBit(u_input.b), 931f), 0u), Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, 1i, 2147483647i), vec4<i32>(0i, u_input.a.x, u_input.d, u_input.a.x)), vec4<i32>(_wgslsmith_mult_i32(u_input.d, -48051i), 2147483647i, u_input.d, firstTrailingBit(u_input.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(895f, 999f))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -875f), false)) + vec2<f32>(1027f, var_0.x))))), !(abs(u_input.a.x << (34805u % 32u)) == min(u_input.d, firstTrailingBit(u_input.d)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1385f, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -987f))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), func_2(vec3<u32>(u_input.c, 1u, 43474u), u_input.c, u_input.c, -806f), 4294967295u), Struct_3(_wgslsmith_mult_i32(u_input.a.x, 0i)), vec2<f32>(906f, _wgslsmith_div_f32(-1564f, 1000f)), all(vec2<bool>(true, true)) | true)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), ~102918u), Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(13381i, -16104i, u_input.a.x, u_input.a.x), vec4<i32>(-6337i, -38185i, -14218i, 59050i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1357f, 930f)))), (1u <= u_input.c) & true)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2240f))))));
    var var_1 = Struct_3(u_input.a.x);
    return func_2(countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(64169u, 52052u, 28719u), vec3<u32>(6908u, u_input.c, 0u)), 1u, 1u)) >> (vec3<u32>(~_wgslsmith_mod_u32(29517u, u_input.c), ~(~u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, u_input.b) >> (vec4<u32>(4294967295u, 1437u, 4294967295u, 85741u) % vec4<u32>(32u)), vec4<u32>(u_input.c, 12202u, u_input.c, 4294967295u))) % vec3<u32>(32u)), u_input.c, min(~15798u, u_input.c), -188f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, u_input.c != 0u, true)), u_input.b);
    let var_1 = any(select(vec4<bool>(all(vec3<bool>(true, true, true)), (true & var_0.a.x) | true, true, true), select(select(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(true, true, false, var_0.a.x), false), vec4<bool>(true, true, var_0.a.x, var_0.b.x), var_0.b.x), vec4<bool>(!var_0.b.x, all(vec3<bool>(true, var_0.b.x, var_0.b.x)), func_2(vec3<u32>(u_input.b, u_input.c, u_input.b), 12871u, 0u, 884f).x, !var_0.b.x), !vec4<bool>(var_0.b.x, var_0.a.x, true, false)), false));
    let var_2 = ~(~(-_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(-34674i, u_input.d, u_input.a.x)), vec3<i32>(30501i, 1i, 47523i))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2045f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(391f, -290f)))))), _wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1756f, _wgslsmith_f_op_f32(floor(394f))))));
    let var_4 = firstTrailingBit(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, -8703i, u_input.a.x, -8212i) >> (vec4<u32>(u_input.c, u_input.b, var_0.c, 0u) % vec4<u32>(32u)), ~vec4<i32>(var_2, var_2, 2147483647i, 3713i))));
    let var_5 = Struct_3(~(_wgslsmith_add_i32(_wgslsmith_mult_i32(52995i, var_4.x), ~var_4.x) | _wgslsmith_mult_i32(i32(-1i) * -30822i, ~u_input.d)));
    let var_6 = countOneBits(var_4.yzy);
    var var_7 = vec4<i32>(-2147483647i, 31778i, ~var_4.x, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec4<i32>(-1i) * -vec4<i32>(i32(-1i) * -2147483647i, ~var_4.x, ~var_4.x, -var_4.x), 56600u);
}

