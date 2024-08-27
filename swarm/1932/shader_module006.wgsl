struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> u32 {
    let var_0 = select(-1i, 0i, (1195f == _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-arg_1.a.x))) & (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1199f)))) < 2111f));
    var var_1 = Struct_2(select(vec3<u32>(50354u, ~4294967295u, 0u), ~vec3<u32>(34738u, u_input.a.x, 10332u) >> (_wgslsmith_sub_vec3_u32(u_input.b.xzy & vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), countOneBits(u_input.a)) % vec3<u32>(32u)), false), vec4<bool>(all(select(arg_0, arg_0, true)), arg_0.x, true, true));
    let var_2 = 1000f < arg_1.a.x;
    var_1 = Struct_2(min(~(~(var_1.a ^ var_1.a)), _wgslsmith_mod_vec3_u32(abs(select(var_1.a, vec3<u32>(4294967295u, var_1.a.x, var_1.a.x), vec3<bool>(var_1.b.x, var_2, false))), abs(var_1.a))), !vec4<bool>((var_0 >= 0i) & !arg_0.x, true, arg_0.x, true));
    var var_3 = true;
    return u_input.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = vec2<i32>(arg_1.x, abs(-2147483647i ^ ~(~arg_1.x)));
    let var_1 = select(vec4<u32>(u_input.a.x | u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_clamp_vec3_u32(~u_input.b.zxz, max(vec3<u32>(0u, 5134u, 0u), u_input.b.xxx), vec3<u32>(u_input.b.x, u_input.a.x, 30579u))), 59379u, arg_0.x), vec4<u32>(0u, abs(1u & (8968u | u_input.b.x)), ~(~4294967295u), _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_sub_u32(u_input.b.x, u_input.a.x), firstTrailingBit(func_3(vec3<bool>(true, true, true), Struct_3(vec3<f32>(356f, 1021f, -309f)))))), !vec4<bool>(false, true, any(vec3<bool>(true, true, true)), true));
    var var_2 = var_0.x;
    let var_3 = !select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), any(vec3<bool>(false, true, true))), vec3<bool>(true, any(vec2<bool>(true, false)), true), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), any(vec2<bool>(false, false))), vec3<bool>(select(false, false, true), true, true), !any(vec3<bool>(false, true, false))), (u_input.a.x > ~1u) && any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(498f, 229f))), -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1328f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f * -356f))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~65346u << (countOneBits(arg_0.x) % 32u), ~(~(~u_input.a.x)), ~u_input.a.x, _wgslsmith_dot_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(true, true, true, true)), ~u_input.b)), select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 69334u, u_input.a.x, u_input.b.x) << (vec4<u32>(arg_0.x, 33651u, u_input.a.x, arg_0.x) % vec4<u32>(32u)), select(vec4<u32>(arg_0.x, 36435u, 56469u, u_input.a.x), u_input.b, true)) | reverseBits(vec4<u32>(arg_0.x, 4294967295u, 1u, arg_0.x)), u_input.b, true));
    let var_1 = vec4<i32>(firstLeadingBit(~(~(~2147483647i))), reverseBits(abs(_wgslsmith_mult_i32(i32(-1i) * -23783i, max(-2147483647i, 1i)))), ~1i, -1i);
    var var_2 = vec4<bool>(true, true, true, true);
    let var_3 = Struct_2(select(vec3<u32>(func_3(var_2.xzz, arg_1), ~firstTrailingBit(4294967295u), 1u), ~abs(vec3<u32>(4294967295u, 1u, var_0.x)) & vec3<u32>(max(arg_0.x, 46615u), firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, u_input.a.x, var_0.x, u_input.a.x))), var_2.xwz), vec4<bool>(false, var_2.x | (1u != _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 0u), var_0.wy)), true, false));
    var var_4 = _wgslsmith_clamp_vec2_u32(var_0.xx, firstLeadingBit(_wgslsmith_div_vec2_u32(reverseBits(~vec2<u32>(1u, 4294967295u)), u_input.b.zy)), min(~vec2<u32>(var_0.x, ~3251u), arg_0));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(23932i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.zy) + _wgslsmith_f_op_vec2_f32(arg_1.a.yx + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.a.x, arg_1.a.x))))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), any(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))), select(false, false, any(vec4<bool>(true, false, true, false)) | true));
    var var_1 = Struct_2(u_input.b.wzy, select(select(select(vec4<bool>(false, false, var_0.d, true), var_0.c, false), vec4<bool>(var_0.d & false, true, true, !var_0.c.x), !all(var_0.c)), select(select(select(var_0.c, var_0.c, vec4<bool>(var_0.c.x, var_0.d, var_0.c.x, false)), !vec4<bool>(true, true, false, var_0.d), vec4<bool>(true, true, true, true)), select(select(var_0.c, var_0.c, var_0.c.x), select(var_0.c, vec4<bool>(var_0.c.x, var_0.c.x, var_0.d, var_0.d), var_0.d), !var_0.c), true), var_0.c));
    var_1 = Struct_2(vec3<u32>(~(~_wgslsmith_clamp_u32(1u, var_1.a.x, var_1.a.x)), min(22850u, u_input.a.x), 1u), var_0.c);
    var_1 = Struct_2(var_1.a, vec4<bool>(!(!var_0.c.x), all(vec2<bool>(var_1.b.x, true)) & !all(vec2<bool>(var_0.c.x, var_0.c.x)), false, !(1000f > _wgslsmith_f_op_f32(-arg_0.a.x))));
    var_1 = Struct_2(max(_wgslsmith_div_vec3_u32(max(~vec3<u32>(var_1.a.x, 31860u, u_input.b.x), ~var_1.a), var_1.a), reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, var_1.a.x, var_1.a.x), var_1.a, vec3<u32>(u_input.b.x, 22555u, var_1.a.x)))), var_0.c);
    return func_2(vec2<u32>(abs(~(~15141u)), _wgslsmith_mult_u32(firstTrailingBit(45973u & u_input.a.x), var_1.a.x)), min(vec4<i32>(-(var_0.a << (0u % 32u)), _wgslsmith_mult_i32(-var_0.a, countOneBits(var_0.a)), -2147483647i, 14152i), _wgslsmith_add_vec4_i32(~vec4<i32>(11666i, 3864i, var_0.a, var_0.a) | _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, 41974i, var_0.a, 2147483647i), vec4<i32>(var_0.a, var_0.a, -1i, 1i)), firstLeadingBit(vec4<i32>(var_0.a, 1i, var_0.a, 37462i)) >> (u_input.b % vec4<u32>(32u)))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = ~select(u_input.a, ~vec3<u32>(_wgslsmith_div_u32(0u, 45282u), ~arg_2.x, u_input.a.x | 1u), 7487i >= _wgslsmith_sub_i32(abs(-35200i), arg_0));
    var var_1 = vec4<u32>(3613u, ~1u, _wgslsmith_sub_u32(u_input.a.x, (u_input.a.x ^ _wgslsmith_sub_u32(70776u, var_0.x)) | u_input.b.x), arg_1.x);
    let var_2 = func_5(func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(24643u, var_0.x) ^ ~arg_2, var_0.xy), func_2(select(abs(vec2<u32>(arg_2.x, 1u)), vec2<u32>(13106u, var_1.x) << (arg_2 % vec2<u32>(32u)), false), -(vec4<i32>(arg_0, 0i, arg_0, 2147483647i) ^ vec4<i32>(arg_0, 2147483647i, -34743i, 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1072f + -915f)) + 1f), vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-1502f, -490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1429f - -1173f)), 737f, 1046f)), Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1140f, 767f, 334f) - vec3<f32>(417f, 218f, -223f))), vec3<f32>(_wgslsmith_div_f32(-251f, 319f), _wgslsmith_f_op_f32(f32(-1f) * -1739f), 706f)))));
    let var_3 = _wgslsmith_div_vec3_i32(max(countOneBits(-vec3<i32>(arg_0, -16570i, arg_0)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(-2147483647i, 0i, -2147483647i)), ~vec3<i32>(21710i, arg_0, 4413i)), -(~vec3<i32>(36735i, arg_0, arg_0)))), max(~abs(vec3<i32>(1i, -47479i, arg_0) >> (vec3<u32>(0u, arg_2.x, 88488u) % vec3<u32>(32u))), abs(vec3<i32>(_wgslsmith_mult_i32(-1i, 29042i), arg_0, 1i))));
    let var_4 = select(!vec4<bool>(false, select(true, false, any(vec4<bool>(false, true, false, true))), var_2.a.x <= 1f, !any(vec2<bool>(false, false))), select(!vec4<bool>(any(vec3<bool>(false, false, true)), var_2.a.x <= 308f, u_input.a.x == var_1.x, true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), -countOneBits(2147483647i) < _wgslsmith_mult_i32(abs(firstLeadingBit(arg_0)), -var_3.x >> (1u % 32u)));
    return Struct_2(vec3<u32>(min(var_0.x, arg_2.x), ~(~1u), _wgslsmith_add_u32(var_1.x, u_input.b.x)), !select(!var_4, !var_4, !(!vec4<bool>(var_4.x, false, var_4.x, false))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(max(-687f, -1717f))))), !vec3<bool>(arg_0.b.x, func_1(i32(-1i) * -2147483647i, ~vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a.zy)).b.x, any(select(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.zx, vec2<bool>(true, true)))), arg_0, arg_0.a.x);
    let var_1 = Struct_1(-26585i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-func_4(arg_0.a.xx, Struct_3(vec3<f32>(-853f, var_0.a.x, -1000f)), var_0.a.x, vec4<f32>(var_0.a.x, 3009f, var_0.a.x, var_0.a.x)).a.xz))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(1020f, -599f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1110f)), var_0.a)))), !vec4<bool>(any(var_0.b), arg_0.b.x, any(arg_0.b.xy), arg_0.b.x), false);
    let var_2 = func_4(u_input.b.zx, func_4(vec2<u32>(~var_0.d, ~37799u) ^ _wgslsmith_div_vec2_u32(~u_input.a.xz, abs(vec2<u32>(1u, var_0.d))), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-709f, -1000f, var_0.a.x), vec3<f32>(2760f, 622f, -1000f)), vec3<f32>(var_1.b.x, var_0.a.x, -545f))), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-129f * func_2(vec2<u32>(22751u, 4294967295u), vec4<i32>(-37524i, -2147483647i, 5445i, 11395i)).a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1801f) - var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), 624f)), -123f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_1.b.x, -251f, var_1.b.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1652f, _wgslsmith_f_op_f32(min(var_1.b.x, -366f)), var_1.b.x, func_5(Struct_3(vec3<f32>(498f, 923f, var_0.a.x)), Struct_3(vec3<f32>(841f, var_0.a.x, -107f))).a.x) - vec4<f32>(-444f, -1962f, var_1.b.x, var_0.a.x)))).a.yx;
    let var_3 = Struct_2(vec3<u32>(29133u, var_0.c.a.x, ~(1u >> (arg_0.a.x % 32u))), !func_1(_wgslsmith_clamp_i32(var_1.a & -13150i, 1i, -58835i), vec2<u32>(firstLeadingBit(u_input.b.x), func_3(var_0.b, Struct_3(vec3<f32>(var_1.b.x, var_1.b.x, -280f)))), min(vec2<u32>(73647u, u_input.a.x), firstTrailingBit(var_0.c.a.zz))).b);
    var var_4 = var_0;
    return func_1(_wgslsmith_add_i32(var_1.a, var_1.a), u_input.b.xy, vec2<u32>(~u_input.a.x, ~u_input.a.x));
}

fn func_7(arg_0: Struct_2) -> Struct_4 {
    let var_0 = -244f;
    var var_1 = arg_0;
    var_1 = func_1(~(~(~min(-980i, 2147483647i))), _wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u ^ ~arg_0.a.x, u_input.a.x), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(28895u, 0u), var_1.a.yz, vec2<u32>(u_input.b.x, arg_0.a.x)))), ~vec2<u32>(1u, 10457u));
    return Struct_4(func_5(func_4(~(~vec2<u32>(1u, 4294967295u)), Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(136f, var_0, 832f), vec3<f32>(-555f, var_0, var_0)))), var_0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2314f, 470f, 1406f, -801f))), vec4<f32>(var_0, 107f, 247f, var_0)))), Struct_3(vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(-var_0)))).a.zy, var_1.b.ywy, Struct_2(var_1.a, !select(!vec4<bool>(arg_0.b.x, true, var_1.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, false, var_1.b.x), false)), func_6(arg_0, arg_0.b.xw).a.x & ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6732u, 52183u), u_input.a.xz), max(1u, var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 13378u;
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(~u_input.b.x, 4294967295u)) ^ ~u_input.a.zz, ~(~u_input.b.zy));
    let var_2 = func_7(func_6(func_1(_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, 26959i, 2147483647i), vec3<i32>(-2147483647i, -2147483647i, 30517i)), -vec3<i32>(-1i, 17605i, -11936i)), u_input.b.yx, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), ~u_input.b.yx, vec2<u32>(u_input.b.x, u_input.a.x))), vec2<bool>(true, true)));
    var var_3 = abs(reverseBits(~(~vec3<u32>(var_2.c.a.x, 4294967295u, u_input.a.x))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_7(func_6(var_2.c, vec2<bool>(var_2.b.x, var_2.b.x))).a.x, _wgslsmith_f_op_f32(-736f * -230f)))));
    var_3 = _wgslsmith_sub_vec3_u32(~func_7(Struct_2(vec3<u32>(var_3.x, 0u, 13200u), !vec4<bool>(var_2.c.b.x, false, false, false))).c.a, u_input.a);
    var var_5 = func_7(func_6(var_2.c, vec2<bool>(true, true)));
    var_4 = 1704f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(u_input.b | (u_input.b >> (u_input.b % vec4<u32>(32u)))), u_input.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-417f)))));
}

