struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-662f, 285f), vec2<f32>(_wgslsmith_f_op_f32(-1837f + 604f), _wgslsmith_f_op_f32(round(192f))), false & (2147483647i >= u_input.a.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(178f, -1698f) - vec2<f32>(-992f, -657f))))), ~vec3<u32>(u_input.b, 36977u, abs(~u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1140f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(round(-1182f)), -1000f)));
    let var_1 = -1215f;
    let var_2 = -2147483647i;
    var_0 = Struct_1(var_0.a, var_0.b, vec3<u32>(var_0.c.x, firstLeadingBit(u_input.b), countOneBits(countOneBits(0u))), _wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(var_0.d, var_0.d)), _wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(788f, -255f, -316f, 412f)))), var_0.d))));
    let var_3 = _wgslsmith_f_op_f32(-var_1);
    return all(select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !vec4<bool>(true, all(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, true, true, true)), true), ~(~var_2) == ~1i));
}

fn func_2() -> vec2<u32> {
    let var_0 = !func_3();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(498f)), _wgslsmith_f_op_f32(f32(-1f) * -857f), 2086f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var var_2 = -u_input.a.x;
    var_2 = u_input.a.x;
    let var_3 = vec4<bool>(!var_0, var_0, var_0 | var_0, any(vec4<bool>(!(!var_0), true, var_0, true)));
    return ~(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(42578u, u_input.b))));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(17496i, -7250i, -2147483647i >> (arg_0.x % 32u)), -u_input.a.x, (-2147483647i ^ u_input.a.x) ^ 1i) >> ((vec3<u32>(select(1u, arg_0.x, false), ~u_input.b, u_input.b) ^ vec3<u32>(select(u_input.b, 23515u, true), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 1u, arg_0.x), vec4<u32>(arg_0.x, 1u, 0u, arg_0.x)))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1958f, -1447f) * vec2<f32>(-525f, 626f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-906f, -251f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-411f, -763f)))) * vec2<f32>(_wgslsmith_f_op_f32(round(-1780f)), _wgslsmith_f_op_f32(max(201f, _wgslsmith_f_op_f32(-893f * -440f))))), vec3<u32>(41714u, abs(12683u), arg_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1085f, -1403f, -2044f, 1013f) * vec4<f32>(-871f, -1839f, 1513f, -764f)) - vec4<f32>(1420f, -1145f, 1000f, -1677f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, -1226f, -789f, -1133f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), select(var_0.c, ~reverseBits(_wgslsmith_clamp_vec3_u32(var_0.c, var_0.c, vec3<u32>(86476u, 35002u, 1u))), !select(true, true, all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)));
    var var_2 = Struct_1(firstTrailingBit(select(_wgslsmith_clamp_vec3_i32(var_0.a, ~vec3<i32>(u_input.a.x, 30019i, arg_1), var_0.a), vec3<i32>(abs(var_1.a.x), _wgslsmith_div_i32(var_0.a.x, u_input.a.x), reverseBits(var_1.a.x)), vec3<bool>(true, all(vec3<bool>(false, true, false)), true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.x), -689f), vec2<f32>(_wgslsmith_f_op_f32(round(var_0.d.x)), var_1.b.x))))), ~var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.d))));
    var_0 = var_1;
    var var_3 = -1281f;
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 4294967295u)), ~vec2<u32>(u_input.b, 11776u), select(vec2<u32>(1u, u_input.b), vec2<u32>(35918u, 95247u), vec2<bool>(false, true)))), firstTrailingBit(vec2<u32>(0u, u_input.b)) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(19528u, 29015u)), ~(func_2() | vec2<u32>(50252u, 15693u))), 0i);
    let var_1 = var_0;
    let var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-(vec3<i32>(u_input.a.x, 0i, u_input.a.x) ^ var_0.a), ~(vec3<i32>(u_input.a.x, 0i, var_1.a.x) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(countOneBits(var_1.a))), firstTrailingBit(vec3<i32>(var_2.a.x, u_input.a.x, 16773i) ^ ~vec3<i32>(-2147483647i, 31086i, u_input.a.x))), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -1000f)))), reverseBits(~((vec3<u32>(43764u, var_2.c.x, 16355u) ^ var_0.c) | ~vec3<u32>(var_2.c.x, 4294967295u, 28176u))), func_4(var_1.c.zx, firstTrailingBit(var_2.a.x)).d);
    return func_4(~_wgslsmith_div_vec2_u32(var_1.c.zz, var_2.c.zz | countOneBits(vec2<u32>(0u, var_0.c.x))), u_input.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    return Struct_1(abs(-arg_2.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(537f * arg_0.b.x), _wgslsmith_f_op_f32(round(arg_3.x))))), arg_2.b)), vec3<u32>(~u_input.b, reverseBits(u_input.b), 73063u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b.x, -1210f, arg_2.d.x, arg_3.x), vec4<f32>(arg_2.b.x, arg_3.x, -1578f, -380f), !arg_1)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_0.d - vec4<f32>(arg_3.x, arg_2.d.x, 1112f, -126f))))))));
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = !(!(min(max(u_input.b, arg_3.c.x), _wgslsmith_dot_vec2_u32(arg_3.c.yz, vec2<u32>(arg_3.c.x, u_input.b))) <= (_wgslsmith_clamp_u32(34859u, arg_3.c.x, 51193u) >> (u_input.b % 32u))));
    let var_1 = min(vec2<i32>(0i, 0i), vec2<i32>(~21553i, ~(-arg_3.a.x) >> (~_wgslsmith_sub_u32(u_input.b, u_input.b) % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(_wgslsmith_f_op_f32(f32(-1f) * -782f)).d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) * -904f), _wgslsmith_f_op_f32(-arg_0)));
    var var_3 = arg_3;
    let var_4 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a.x, -2147483647i << (arg_3.c.x % 32u), ~var_1.x, firstLeadingBit(-4838i)), -vec4<i32>(-4749i, arg_3.a.x, var_1.x, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, 0i, var_3.a.x, arg_3.a.x), vec4<i32>(2147483647i, arg_3.a.x, 1842i, var_1.x))), -(~(-vec4<i32>(-918i, arg_3.a.x, -69662i, 15434i)))), _wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(0i) >> (u_input.b % 32u), 0i, -1i, var_3.a.x >> ((arg_3.c.x >> (1u % 32u)) % 32u)), vec4<i32>(countOneBits(-7757i), -func_4(var_3.c.xz, -43210i).a.x, _wgslsmith_sub_i32(u_input.a.x << (0u % 32u), _wgslsmith_div_i32(-17691i, u_input.a.x)), ~_wgslsmith_div_i32(u_input.a.x, var_1.x))));
    return !vec2<bool>(false, !(any(arg_1.zzz) == arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1272f, 783f, true))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -920f), func_5(func_1(-1157f), true, func_4(vec2<u32>(u_input.b, u_input.b), u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, -421f))))), vec2<bool>(true, true), ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 35574i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) <= min(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(2147483647i, 49273i)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -849f)).a.x));
    var var_1 = func_4(vec2<u32>(71577u, 1u), u_input.a.x);
    var var_2 = func_5(func_5(func_4(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.c.x, 66978u, 1u), vec4<u32>(u_input.b, var_1.c.x, 4294967295u, 499u)), u_input.b), ~var_1.a.x), true, func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(648f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1261f, var_1.b.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2611f, var_1.d.x) + vec2<f32>(var_1.d.x, -458f)))), !func_3(), func_5(func_1(var_1.d.x), true, Struct_1(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(1082f + var_1.b.x), var_1.d.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.x, var_1.c.x, 4294967295u), var_1.c), _wgslsmith_f_op_vec4_f32(-var_1.d)), var_1.d.wz), var_1.d.xx);
    let var_3 = max(_wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, var_1.c.x, var_1.c.x), vec3<u32>(64062u, 18672u, var_2.c.x)), abs(var_1.c.x & ~var_2.c.x));
    var var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~abs(var_2.c.x), abs(~_wgslsmith_div_u32(var_2.c.x, 4483u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-929f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) * 602f)))), _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(1401f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1352f)), _wgslsmith_f_op_f32(f32(-1f) * -422f), true)))));
}

