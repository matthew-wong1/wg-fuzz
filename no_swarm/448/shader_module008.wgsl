struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = !select(vec4<bool>(false, !(79815u > u_input.a), all(vec2<bool>(false, true)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, true), arg_0.x == 10345u, any(vec4<bool>(false, false, false, false)), true), vec4<bool>(false, true, any(vec3<bool>(true, true, false)), false)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(true, true, false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1062f, -587f))), _wgslsmith_f_op_f32(floor(867f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(333f - -216f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(675f, 596f))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, -1945f), _wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(f32(-1f) * -548f), -1000f), vec4<f32>(_wgslsmith_div_f32(-1018f, 1813f), _wgslsmith_f_op_f32(trunc(-191f)), -506f, -338f))), var_0.x, select(select(var_0, select(var_0, select(var_0, vec4<bool>(false, false, false, false), false), true), var_0), var_0, ~1u <= (~14448u << (~u_input.a % 32u))));
    let var_2 = -_wgslsmith_add_vec2_i32(~arg_1.zy, arg_1.xy ^ arg_1.xz);
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-264f, var_1.a.x) * var_1.a.x), var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(-1209f + var_1.a.x)), var_1.c.x, var_1.c);
    var var_4 = ~firstLeadingBit(arg_0.zz);
    return ~var_2.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1084f, -1000f, 221f, 599f) + vec4<f32>(1016f, -627f, 1119f, -425f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(362f, -2374f, 1234f, 737f), vec4<f32>(762f, -1993f, 856f, 286f), false)), select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(false, arg_0.x, arg_0.x, false))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1035f, 527f, 1000f, -1226f))))), true, !vec4<bool>(arg_0.x && !arg_0.x, true, !(arg_0.x | arg_0.x), !(!arg_0.x)));
    var var_1 = Struct_1(var_0.a, var_0.b, !vec4<bool>(var_0.a.x <= _wgslsmith_f_op_f32(min(-728f, var_0.a.x)), arg_0.x, true, false));
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(-5653i, func_3(~_wgslsmith_clamp_vec3_u32(arg_2, arg_2, arg_2), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(arg_1.x, -7643i, arg_1.x)), vec3<i32>(0i, arg_1.x, 27742i))), firstLeadingBit(48514i)), ~firstLeadingBit(0i), arg_1.x, ~_wgslsmith_sub_i32(arg_1.x, 13889i));
    var var_3 = _wgslsmith_mult_u32(~(~arg_2.x), u_input.a);
    var_3 = ~64123u;
    return Struct_1(var_1.a, select(true, false, !any(vec2<bool>(true, var_0.b))) | !any(select(vec3<bool>(true, false, var_0.b), var_0.c.zyz, arg_0.x)), select(vec4<bool>(!var_0.b, var_0.c.x, var_1.b, true), vec4<bool>(any(!vec2<bool>(arg_0.x, false)), any(arg_0.yx), true, false), vec4<bool>(false, true, var_1.b, var_1.b)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(select(vec4<bool>(any(arg_0.c.xw), arg_0.c.x, arg_0.a.x <= _wgslsmith_f_op_f32(step(-183f, arg_0.a.x)), false), select(vec4<bool>(arg_0.c.x, true, true, true), !select(arg_0.c, vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.b), arg_0.c), vec4<bool>(all(vec3<bool>(false, arg_0.b, true)), u_input.a > u_input.a, arg_0.c.x, !arg_0.b)), select(vec4<bool>(select(false, false, arg_0.c.x), select(arg_0.c.x, arg_0.b, arg_0.b), true, true), !arg_0.c, select(arg_0.c, vec4<bool>(arg_0.b, true, false, false), !arg_0.b))), ~(~firstTrailingBit(vec2<i32>(-35091i, -70880i) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), ~_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), max(vec3<u32>(124547u, 4556u, 3406u) ^ vec3<u32>(u_input.a, 0u, u_input.a), ~vec3<u32>(30859u, 1u, u_input.a))));
    let var_1 = arg_0.a.zw;
    let var_2 = ~abs(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a), 10671u)) >> (_wgslsmith_clamp_vec3_u32(countOneBits(countOneBits(~vec3<u32>(u_input.a, u_input.a, 75315u))), abs(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 29663u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 46294u, 4294967295u) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(84246u, u_input.a, u_input.a), vec3<u32>(28434u, 1u, u_input.a), vec3<u32>(u_input.a, 35273u, 20761u))), vec3<u32>(u_input.a, ~u_input.a, ~u_input.a)) % vec3<u32>(32u));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_0.a.x + 579f), _wgslsmith_f_op_f32(-var_0.a.x), -1000f))), true, !vec4<bool>(false, var_0.c.x, var_2.x >= 35742u, all(vec3<bool>(false, var_0.b, var_0.b))));
    let var_3 = 4294967295u;
    return func_2(!var_0.c, vec2<i32>(-2394i, 16525i), ~vec3<u32>(1u, _wgslsmith_div_u32(firstTrailingBit(0u), 1u), ~24729u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = func_1(Struct_1(arg_1.a, arg_1.c.x & (arg_1.c.x || !arg_1.b), arg_1.c));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a), var_0.a))), true, arg_1.c);
    var_0 = Struct_1(var_0.a, false, select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.c.x, var_0.c.x, var_0.b, arg_1.b), vec4<bool>(arg_1.c.x, var_0.c.x, var_0.c.x, arg_1.b))), arg_1.c, arg_1.c));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(arg_0, arg_0)) | _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0, u_input.a), ~vec2<u32>(1u, 4294967295u)), ~vec2<u32>(19841u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0, u_input.a, u_input.a), vec4<u32>(u_input.a, arg_0, u_input.a, 1u)))), reverseBits(firstTrailingBit(~(~vec2<u32>(0u, arg_0)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_1.a)), arg_1.c.x, select(!(!var_0.c), vec4<bool>(arg_1.b, arg_0 <= _wgslsmith_dot_vec3_u32(vec3<u32>(68018u, u_input.a, 4294967295u), vec3<u32>(22798u, arg_0, u_input.a)), all(!var_0.c.ww), arg_1.b), func_1(func_1(func_2(vec4<bool>(false, true, true, var_0.c.x), vec2<i32>(arg_2, arg_2), vec3<u32>(90461u, arg_0, 0u)))).c));
    return _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(-var_0.a.x), arg_2 != _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-4054i, arg_2, 1i, arg_2) >> (vec4<u32>(arg_0, 4294967295u, 4294967295u, 20043u) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(arg_2, arg_2, arg_2, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(-(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(43737i, 1i, -1i, 22537i), vec4<i32>(-1i, 1i, 2147483647i, -35460i), vec4<i32>(49690i, -2147483647i, -7677i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-5170i, 25178i, -10195i, -26425i), vec4<i32>(-1i, -7538i, -8380i, 22059i)), -vec4<i32>(-2147483647i, 0i, -5486i, 1i)) << (vec4<u32>(0u, 4294967295u << (u_input.a % 32u), ~u_input.a, ~13810u) % vec4<u32>(32u))));
    var var_1 = Struct_1(vec4<f32>(301f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_u32(0u, u_input.a), func_1(Struct_1(vec4<f32>(260f, -174f, 506f, -110f), false, vec4<bool>(true, true, true, true))), var_0.x)))), _wgslsmith_f_op_f32(abs(func_1(func_2(vec4<bool>(false, true, true, false), vec2<i32>(0i, 17466i), vec3<u32>(4294967295u, 2355u, u_input.a))).a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-555f, _wgslsmith_f_op_f32(f32(-1f) * -711f)))))), true, vec4<bool>(any(vec3<bool>(true, true, true)), func_2(vec4<bool>(var_0.x <= 9534i, true, true, true), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(var_0.zy, var_0.wz)), ~(~vec3<u32>(34404u, u_input.a, u_input.a))).c.x, false, (~u_input.a & 49171u) < 4294967295u));
    var var_2 = !(!(var_1.a.x <= var_1.a.x));
    var var_3 = func_1(func_1(func_2(!(!var_1.c), vec2<i32>(var_0.x, var_0.x | var_0.x), ~vec3<u32>(u_input.a, u_input.a, 0u))));
    let var_4 = select(all(select(vec4<bool>(func_1(Struct_1(var_3.a, var_1.c.x, vec4<bool>(var_1.b, true, var_3.b, true))).c.x, u_input.a >= u_input.a, any(var_3.c), var_1.b | var_3.c.x), func_1(Struct_1(vec4<f32>(723f, var_1.a.x, -858f, 802f), var_1.c.x, vec4<bool>(var_3.b, var_1.b, false, var_3.c.x))).c, func_2(var_3.c, var_0.zw, min(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u))).c.x)), !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.a.x + var_1.a.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a.x)))), any(var_1.c.yw));
    let var_5 = abs(vec2<i32>(-firstTrailingBit(1i), abs(func_3(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 57611u), var_3.c.yww), _wgslsmith_mult_vec3_i32(var_0.zzy, vec3<i32>(var_0.x, var_0.x, 1i))))));
    var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(449f)), func_1(Struct_1(var_3.a, true, var_1.c)).a.x), -442f, var_1.a.x, _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(-var_3.a.x), true))), var_3.c.x, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(1423f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(607f, var_1.a.x, var_3.b))), -1000f) - var_3.a.yy), firstLeadingBit(~(~(~149711u))));
}

