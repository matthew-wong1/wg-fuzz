struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1021f)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = Struct_2(arg_3.a, select(!select(arg_3.b, vec3<bool>(true, false, arg_1.x), vec3<bool>(true, false, true)), arg_3.b, true), ~(~_wgslsmith_add_u32(44717u, _wgslsmith_sub_u32(arg_3.a.c.x, arg_3.c))), true, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(arg_0.x, -2147483647i, arg_3.e, 2147483647i)), vec4<i32>(select(arg_3.e, -19824i, true), countOneBits(u_input.a), arg_3.a.a, abs(-4922i))), ~vec4<i32>(-1i, arg_3.a.a, -8735i, max(arg_0.x, u_input.b))));
    var var_1 = Struct_3(vec2<bool>(var_0.b.x, false), arg_3.a, arg_3.a);
    var var_2 = arg_3;
    var_2 = Struct_2(var_0.a, select(var_0.b, var_2.b, 1u < var_2.c), _wgslsmith_div_u32(~((var_2.a.c.x >> (77962u % 32u)) & max(var_0.c, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(35700u, reverseBits(var_2.c)), firstLeadingBit(19770u))), all(vec4<bool>(select(false, arg_1.x, any(var_0.b.yy)), all(vec4<bool>(var_0.b.x, true, var_0.d, var_2.a.d)), arg_2, any(arg_3.b))), ~_wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, var_0.e, 37548i, var_1.c.a), vec4<i32>(0i, u_input.c, var_0.a.a, arg_0.x)), vec4<i32>(-1i, arg_3.a.a, -2147483647i, var_1.b.a), select(vec4<bool>(true, true, arg_1.x, arg_3.b.x), vec4<bool>(true, true, false, var_0.d), false)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, -13419i), vec3<i32>(-2147483647i, -7876i, 41770i)), countOneBits(arg_3.a.a), arg_0.x >> (arg_3.a.c.x % 32u), ~(-1i))));
    var var_3 = 2532f;
    return arg_2;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f)), _wgslsmith_f_op_f32(-1285f - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-167f))), _wgslsmith_f_op_f32(-768f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f))));
    var_0 = vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(select(-1096f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(-1282f, -1873f), func_3(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, -1i)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true, Struct_2(Struct_1(-7909i, false, vec3<u32>(73861u, 40706u, 1u), false, vec2<f32>(-191f, -1000f)), vec3<bool>(true, true, true), 51728u, true, u_input.c)))), true)));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1458f + 208f), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f * -221f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))));
    let var_1 = Struct_3(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, 1i), 27595i), ((u_input.a ^ u_input.a) < select(u_input.a, 6262i, true)) | true, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 20096u, 12912u), ~vec3<u32>(43501u, 1u, 50077u), vec3<u32>(1u, 1u, 1u)) | ~vec3<u32>(1u, 17940u, 77803u), true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.yz * var_0.xx), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-514f, var_0.x), var_0.ww)))), var_0.yz))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(select(7664i, u_input.b, true), -11922i), select(vec2<i32>(-7355i, 11989i), firstTrailingBit(vec2<i32>(u_input.b, u_input.c)), vec2<bool>(true, true))), true, firstLeadingBit(vec3<u32>(1u, 1u, 1u)), true, _wgslsmith_f_op_vec2_f32(select(var_0.zy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-618f, -692f) + var_0.zw), var_0.xy, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-2014f - 1162f) <= var_0.x))));
    var_0 = vec4<f32>(var_0.x, 979f, _wgslsmith_f_op_f32(floor(-1028f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1077f)))));
    return var_1.c;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = arg_0.c;
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(0u, var_0.x), ~4294967295u), 0u, ~var_0.x), _wgslsmith_mult_vec3_u32(arg_0.c, min(countOneBits(arg_0.c), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 36254u, 0u), vec3<u32>(4294967295u, arg_0.c.x, 1311u))))));
    let var_1 = Struct_3(vec2<bool>(!all(select(vec3<bool>(arg_0.d, true, arg_0.d), vec3<bool>(true, arg_0.d, true), vec3<bool>(arg_0.d, arg_0.b, arg_0.b))), !any(!vec4<bool>(arg_0.d, arg_0.b, arg_0.d, arg_0.d))), Struct_1(0i, any(!vec4<bool>(false, true, arg_0.b, arg_0.d)), vec3<u32>(_wgslsmith_mod_u32(arg_0.c.x, min(102094u, var_0.x)), arg_0.c.x, _wgslsmith_div_u32(arg_0.c.x, arg_0.c.x) | var_0.x), !(!arg_0.b), _wgslsmith_f_op_vec2_f32(max(arg_0.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.e * vec2<f32>(1000f, arg_0.e.x)))))), arg_0);
    var_0 = ~(~vec3<u32>(43770u, _wgslsmith_sub_u32(firstLeadingBit(var_0.x), ~arg_0.c.x), ~(~var_0.x)));
    let var_2 = Struct_3(select(select(!(!var_1.a), select(!vec2<bool>(arg_0.d, true), vec2<bool>(true, arg_0.d), select(var_1.a, vec2<bool>(arg_0.d, arg_0.b), var_1.a)), !all(var_1.a)), var_1.a, vec2<bool>(select(!arg_0.b, arg_0.b, any(vec4<bool>(false, var_1.a.x, arg_0.b, false))), !var_1.b.d)), arg_0, Struct_1(var_1.c.a, true, var_1.c.c, any(!select(vec4<bool>(arg_0.b, true, false, false), vec4<bool>(true, var_1.b.d, var_1.c.d, true), vec4<bool>(false, var_1.c.d, false, var_1.b.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.e)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(110f, -1428f), var_1.c.e, var_1.a))))));
    return var_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_sub_vec4_i32(select((_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, arg_0.c.a, u_input.a), vec4<i32>(-20601i, arg_1.e, var_0.c.a, var_0.c.a)) << (vec4<u32>(arg_1.c, 0u, arg_1.a.c.x, 0u) % vec4<u32>(32u))) ^ (-vec4<i32>(arg_1.e, -4590i, arg_1.e, -2147483647i) & (vec4<i32>(var_0.b.a, -119i, arg_1.e, var_0.b.a) >> (vec4<u32>(arg_0.c.c.x, var_0.b.c.x, arg_0.b.c.x, 80427u) % vec4<u32>(32u)))), vec4<i32>(arg_1.e, i32(-1i) * -var_0.c.a, min(-1i, abs(arg_0.c.a)), 0i), vec4<bool>(any(vec3<bool>(arg_0.a.x, arg_0.b.b, false)), arg_1.b.x, !var_0.b.d, true)), vec4<i32>(arg_0.c.a, ~max(1704i, var_0.c.a), 10214i, u_input.b));
    var_1 = min(min(_wgslsmith_div_vec4_i32(-firstLeadingBit(vec4<i32>(arg_0.b.a, 1i, 2147483647i, arg_0.b.a)), ~(-vec4<i32>(4577i, -2147483647i, -3168i, 0i))), min(vec4<i32>(arg_0.b.a, 3197i, arg_1.a.a, -arg_1.e), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.a, -31267i, arg_0.b.a, -2147483647i), vec4<i32>(u_input.c, var_0.c.a, arg_1.a.a, u_input.c)))), -((countOneBits(vec4<i32>(1i, var_0.b.a, 2147483647i, -56519i)) | vec4<i32>(1i, -17843i, -65661i, var_1.x)) << ((vec4<u32>(arg_1.c, 4294967295u, 22955u, arg_1.c) ^ min(vec4<u32>(3127u, 33937u, 28390u, var_0.b.c.x), vec4<u32>(arg_0.b.c.x, arg_0.c.c.x, 9847u, 121322u))) % vec4<u32>(32u))));
    var_1 = firstTrailingBit(vec4<i32>(~firstLeadingBit(reverseBits(var_0.c.a)), firstLeadingBit(firstTrailingBit(1i)), max(-(i32(-1i) * -23295i), arg_0.b.a), countOneBits(var_0.c.a)));
    var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(24844i, arg_1.a.a), min(11055i, var_1.x), u_input.a, _wgslsmith_add_i32(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, var_0.c.a), var_1.yzy))), vec4<i32>(~(var_1.x ^ u_input.c), _wgslsmith_sub_i32(_wgslsmith_sub_i32(2147483647i, 38187i), firstTrailingBit(arg_1.e)), 19825i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-23050i, arg_0.b.a, var_1.x, u_input.a), vec4<i32>(var_1.x, -2147483647i, arg_0.b.a, arg_0.b.a)), _wgslsmith_dot_vec2_i32(var_1.yz, var_1.zx))), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(func_4(arg_0.b).b.a, var_1.x, reverseBits(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -28420i, var_1.x), var_1.zzx))), vec4<i32>(_wgslsmith_clamp_i32(var_0.b.a << (arg_1.a.c.x % 32u), firstLeadingBit(arg_0.b.a), var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.a, -21968i, arg_1.a.a), -var_1.zyx), 28816i, var_1.x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1()), Struct_2(func_4(func_4(Struct_1(u_input.c, true, vec3<u32>(0u, 32617u, 9514u), true, vec2<f32>(-1000f, 259f))).c).b, vec3<bool>(true, true, true), 1u, true, u_input.b));
    var var_1 = vec3<i32>(u_input.c, u_input.b, ~(u_input.b | -61777i));
    var_1 = min(max(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(var_0.e, -49901i, -82982i)), vec3<i32>(u_input.a, -24792i, func_4(var_0.a).b.a)), select(vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.a, 24233i), vec3<i32>(0i, -2147483647i, u_input.a)), _wgslsmith_add_i32(u_input.c, var_0.e)), vec3<i32>(-16129i, 2147483647i, u_input.c), (var_0.a.a ^ 36025i) == (var_1.x >> (var_0.c % 32u)))), -vec3<i32>(-2147483647i, _wgslsmith_mod_i32(var_0.a.a, u_input.c) << ((var_0.c >> (21417u % 32u)) % 32u), var_0.a.a));
    var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(-var_1.yz, countOneBits(vec2<i32>(var_0.e, 43078i))), -1i), ~select(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, -35760i, var_0.a.a), vec3<i32>(var_1.x, var_0.a.a, var_1.x), false), ~vec3<i32>(u_input.a, var_0.e, -2147483647i), vec3<i32>(var_1.x, var_1.x, var_1.x)), vec3<i32>(42081i ^ var_1.x, _wgslsmith_sub_i32(u_input.b, -2147483647i), 2147483647i | var_1.x), true));
    let var_2 = -var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.c.xz, (_wgslsmith_dot_vec2_i32(var_1.yz, -var_1.zy) ^ -5235i) ^ (1i << (var_0.a.c.x % 32u)), 44656i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-933f, 1412f, -1000f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.e.x, var_0.a.e.x, 1153f), vec3<f32>(var_0.a.e.x, -1000f, -144f), vec3<bool>(var_0.d, true, false))))));
}

