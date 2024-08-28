struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<u32> {
    var var_0 = -(countOneBits(countOneBits(-vec4<i32>(u_input.b, u_input.b, 1i, u_input.b))) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 1i << (u_input.a % 32u), u_input.b, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -10083i, u_input.b, -6897i), vec4<i32>(u_input.b, u_input.b, 0i, 39258i))));
    var_0 = vec4<i32>(~(u_input.b ^ _wgslsmith_dot_vec3_i32(var_0.yxx, var_0.zzy >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_sub_i32(abs(var_0.x), _wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, 0i), u_input.b))), -_wgslsmith_mod_i32(36344i, abs(1i)), -_wgslsmith_clamp_i32(-var_0.x ^ -1i, 1i, -19380i));
    let var_1 = any(select(vec3<bool>(all(vec4<bool>(false, arg_0, arg_0, arg_0)), false, !select(false, arg_0, false)), !vec3<bool>(true, any(vec3<bool>(true, arg_0, arg_0)), true), !(_wgslsmith_f_op_f32(-1120f - arg_1) != 1792f)));
    var var_2 = _wgslsmith_add_vec4_u32(min(vec4<u32>(46187u, 25804u, 12362u, u_input.a ^ u_input.a), select(vec4<u32>(40215u, u_input.a, 0u, 27943u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 16619u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 1u, 4294967295u, 24250u)), !vec4<bool>(true, false, var_1, var_1)) & _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 34997u, 23555u, 1u)), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))), vec4<u32>(~u_input.a, 4294967295u, ~_wgslsmith_div_u32(firstTrailingBit(u_input.a), u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1836u)))));
    let var_3 = vec4<i32>(select(var_0.x, 3835i, true), ~(~(~u_input.b)), var_0.x, ~2147483647i);
    return vec4<u32>(countOneBits(_wgslsmith_div_u32(var_2.x, ~1u)), reverseBits(6414u), abs(0u), _wgslsmith_clamp_u32(~(~13545u), ~(~u_input.a), u_input.a)) & ~min(vec4<u32>(_wgslsmith_div_u32(4294967295u, 25929u), var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 49655u), var_2.wwz), abs(1u)), vec4<u32>(var_2.x, var_2.x, u_input.a, 4294967295u) << (max(vec4<u32>(4090u, var_2.x, var_2.x, 5950u), vec4<u32>(var_2.x, u_input.a, 1u, var_2.x)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: vec3<f32>) -> u32 {
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(arg_0.c.a.x, arg_0.a, 4294967295u, 34000u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 31751u, arg_0.c.b, u_input.a) & vec4<u32>(1u, u_input.a, u_input.a, u_input.a), func_3(arg_2, 1184f))), u_input.a);
    let var_1 = -2147483647i;
    let var_2 = ~vec2<u32>(~select(2441u, arg_0.c.b, !arg_0.c.d.x), 1u);
    var var_3 = arg_2;
    var var_4 = Struct_1(vec3<f32>(arg_3.x, arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-769f * arg_1))))), arg_0.c.e, vec2<i32>(-var_1, -30402i), arg_0.d);
    return _wgslsmith_clamp_u32(func_3(arg_0.d.x, var_4.a.x).x, min(func_3(all(!var_4.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f * 1432f))).x, countOneBits(min(57970u, abs(var_0.x)))), 0u);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - arg_3)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(475f, arg_3) + _wgslsmith_f_op_f32(floor(-847f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(754f * 938f), _wgslsmith_f_op_f32(max(-555f, -266f)), arg_3), vec3<f32>(arg_3, _wgslsmith_f_op_f32(-arg_3), arg_3))), vec3<u32>(arg_2, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, 31848u, 29538u, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, arg_2), select(~vec4<u32>(0u, arg_2, 23433u, arg_2), vec4<u32>(59916u, arg_2, 1u, 5010u), true)), abs(1u)), ~(~vec2<i32>(-16977i, _wgslsmith_clamp_i32(-2147483647i, -24011i, 0i))), !vec2<bool>(all(vec3<bool>(false, false, arg_0)), true));
    let var_1 = Struct_4(4294967295u, _wgslsmith_mod_i32(-38303i, -4196i), Struct_2(~vec3<u32>(_wgslsmith_mult_u32(u_input.a, arg_2), ~39223u, var_0.b.x), abs(func_2(Struct_4(20805u, var_0.c.x, Struct_2(vec3<u32>(arg_2, 4294967295u, 12512u), 1u, vec4<i32>(arg_1.x, arg_1.x, u_input.b, arg_1.x), vec3<bool>(false, var_0.d.x, arg_0), var_0.b), vec2<bool>(arg_0, arg_0)), 1092f, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-625f, 368f, arg_3) * vec3<f32>(var_0.a.x, arg_3, -887f)))), (vec4<i32>(-1i) * -vec4<i32>(-5007i, -29306i, var_0.c.x, -15009i)) | -vec4<i32>(0i, -28642i, 0i, -73619i), !select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0, var_0.d.x, arg_0), vec3<bool>(arg_0, true, var_0.d.x)), vec3<bool>(false, true, arg_0), -13020i > var_0.c.x), abs(~vec3<u32>(arg_2, arg_2, 4294967295u))), !vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -2015f) != arg_3, any(vec4<bool>(arg_0, arg_0, false, var_0.d.x))));
    var_0 = Struct_1(var_0.a, (_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.c.a, var_0.b, var_1.c.e), vec3<u32>(var_0.b.x, arg_2, var_1.c.e.x) | var_0.b) << (vec3<u32>(u_input.a, 91478u, ~19494u) % vec3<u32>(32u))) & _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 25431u, u_input.a) >> (var_1.c.a % vec3<u32>(32u))), max(var_1.c.e, var_0.b ^ var_0.b)), min(-countOneBits(-var_1.c.c.wz), -vec2<i32>(firstLeadingBit(var_0.c.x), -15452i)), vec2<bool>(true, true));
    var var_2 = Struct_3(_wgslsmith_clamp_u32(20445u << (arg_2 % 32u), u_input.a, ~var_0.b.x), Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2, 46982u) >> (~var_1.c.a % vec3<u32>(32u)), vec3<u32>(u_input.a, _wgslsmith_div_u32(4294967295u, 67499u), arg_2)), arg_2, -min(select(var_1.c.c, var_1.c.c, vec4<bool>(true, var_1.d.x, var_0.d.x, var_1.d.x)), var_1.c.c), select(select(vec3<bool>(var_1.d.x, arg_0, var_0.d.x), !var_1.c.d, select(vec3<bool>(arg_0, arg_0, var_0.d.x), var_1.c.d, false)), var_1.c.d, vec3<bool>(var_1.c.d.x, true, any(var_1.c.d))), ~vec3<u32>(var_1.c.e.x, func_3(var_0.d.x, var_0.a.x).x, _wgslsmith_add_u32(var_0.b.x, 4294967295u))));
    let var_3 = _wgslsmith_clamp_vec4_i32(var_1.c.c, var_1.c.c ^ ~vec4<i32>(abs(2147483647i), var_0.c.x, var_1.c.c.x, -39636i), ~(-(~var_2.b.c >> (vec4<u32>(25552u, 11239u, arg_2, 1u) % vec4<u32>(32u)))));
    return Struct_4(~(~(~(~86004u))), u_input.b, var_1.c, var_2.b.d.zy);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = all(select(!select(!vec4<bool>(arg_2.c.d.x, arg_2.c.d.x, true, true), select(vec4<bool>(arg_2.d.x, true, arg_2.c.d.x, true), vec4<bool>(arg_2.c.d.x, false, arg_2.d.x, arg_2.c.d.x), arg_2.d.x), true), !vec4<bool>(false, true, all(vec4<bool>(arg_2.c.d.x, false, arg_2.d.x, true)), 2147483647i > arg_2.b), !select(select(vec4<bool>(arg_2.d.x, false, true, true), vec4<bool>(true, arg_2.c.d.x, false, arg_2.c.d.x), arg_2.d.x), vec4<bool>(arg_2.c.d.x, false, true, true), false)));
    var var_1 = arg_2.b != u_input.b;
    var_1 = arg_2.d.x;
    var var_2 = vec4<bool>(false, !select(all(arg_2.c.d), arg_2.c.d.x, any(select(vec4<bool>(arg_2.c.d.x, arg_2.c.d.x, false, true), vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.c.d.x, arg_2.d.x), vec4<bool>(false, true, true, false)))), any(!func_4(true, vec3<i32>(-9171i, u_input.b, arg_2.c.c.x), _wgslsmith_div_u32(arg_3.x, 14488u), arg_0.x).d), !(!any(vec4<bool>(arg_2.c.d.x, true, false, false))));
    var_0 = _wgslsmith_f_op_f32(-1152f - -1523f) == arg_1.c.x;
    return func_4(!arg_2.c.d.x, -vec3<i32>(-51950i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, 1i, arg_2.c.c.x), _wgslsmith_dot_vec2_i32(arg_2.c.c.wy, vec2<i32>(arg_2.c.c.x, u_input.b))), 2147483647i), arg_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, arg_0.x, arg_2.d.x)) - arg_1.b) - 334f), _wgslsmith_f_op_f32(round(arg_1.b)), !any(func_4(arg_2.d.x, arg_2.c.c.zyz, arg_2.c.b, -1282f).d)))).c;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    let var_0 = ~countOneBits((reverseBits(69462u) << (~arg_2.c.b % 32u)) ^ ~(~arg_2.c.a.x));
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1326f, 2466f))), Struct_5(arg_3.b.e.zy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(83352u, var_0), countOneBits(vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2499f, -310f)), 292f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-402f, 126f, arg_1)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 864f))))), func_4(any(vec3<bool>(false, arg_3.b.d.x, true)), arg_3.b.c.wxw, func_2(arg_2, -511f, false, _wgslsmith_div_vec3_f32(vec3<f32>(637f, 541f, -753f), vec3<f32>(-284f, 124f, 484f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(472f))))), ~(~firstLeadingBit(arg_3.b.e)) & arg_2.c.a);
    var var_2 = ~(~arg_3.b.c.yy);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(213f)), _wgslsmith_f_op_f32(min(286f, 1208f)), _wgslsmith_f_op_f32(floor(-1494f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, -1000f, -2006f) * vec3<f32>(-1421f, 1067f, 732f))))), arg_2.c.d.x)), _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(arg_2.c.e.x, arg_2.a, var_0))), _wgslsmith_div_vec3_u32(~arg_3.b.e, select(select(var_1.e, vec3<u32>(1u, 4294967295u, arg_3.a), arg_3.b.d), arg_2.c.a, !arg_2.d.x))), -vec2<i32>(reverseBits(arg_2.b << (4294967295u % 32u)), arg_2.b), vec2<bool>(false, true));
    var var_4 = false;
    return true;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_3(74141u & arg_1.b.x, Struct_2(vec3<u32>(func_5(_wgslsmith_f_op_vec2_f32(-arg_1.a.zx), Struct_5(arg_2.b.zx, 1161f, arg_1.a.zy), Struct_4(arg_1.b.x, arg_2.c.x, Struct_2(vec3<u32>(u_input.a, u_input.a, 37632u), u_input.a, vec4<i32>(arg_1.c.x, u_input.b, u_input.b, arg_1.c.x), vec3<bool>(arg_1.d.x, arg_2.d.x, false), vec3<u32>(arg_2.b.x, arg_2.b.x, u_input.a)), arg_1.d), _wgslsmith_sub_vec3_u32(arg_2.b, vec3<u32>(u_input.a, 56090u, u_input.a))).a.x, ~abs(arg_2.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(12537u, 26245u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 0u, arg_1.b.x, arg_2.b.x), vec4<u32>(arg_2.b.x, 4294967295u, arg_2.b.x, arg_1.b.x)) % 32u)), firstLeadingBit(~u_input.a), -vec4<i32>(_wgslsmith_mod_i32(u_input.b, 27833i), _wgslsmith_add_i32(-52261i, 1i), arg_1.c.x, _wgslsmith_div_i32(13538i, -22613i)), vec3<bool>(arg_1.b.x <= ~4294967295u, true, !arg_0), vec3<u32>(arg_1.b.x, ~0u, firstLeadingBit(1u))));
    var var_1 = var_0.b.d.zz;
    let var_2 = arg_2.a.yy;
    var_1 = vec2<bool>(all(select(select(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(arg_2.d.x, false, arg_1.d.x, false), vec4<bool>(false, true, false, var_1.x)), vec4<bool>(false, var_1.x, false, arg_0), select(vec4<bool>(var_0.b.d.x, false, false, true), vec4<bool>(false, var_0.b.d.x, arg_2.d.x, false), vec4<bool>(arg_0, var_1.x, arg_0, arg_1.d.x))), !select(vec4<bool>(arg_2.d.x, false, false, arg_1.d.x), vec4<bool>(false, false, arg_1.d.x, true), vec4<bool>(arg_1.d.x, arg_1.d.x, true, arg_1.d.x)), !select(vec4<bool>(var_1.x, false, arg_0, arg_2.d.x), vec4<bool>(true, arg_2.d.x, false, true), var_0.b.d.x))), true);
    let var_3 = Struct_5(arg_2.b.yx, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-1000f - var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1248f - 476f), _wgslsmith_f_op_f32(round(arg_2.a.x)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(var_2, var_2)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -1061f, arg_2.a.x)) - _wgslsmith_f_op_vec3_f32(select(arg_2.a, arg_1.a, vec3<bool>(true, arg_2.d.x, false)))) * arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-u_input.b) ^ 0i;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(func_1(-257i, false, Struct_4(33740u, u_input.b, Struct_2(vec3<u32>(1u, 41424u, u_input.a), 11591u, vec4<i32>(69063i, u_input.b, 76021i, u_input.b), vec3<bool>(false, false, false), vec3<u32>(1432u, 48462u, u_input.a)), vec2<bool>(false, true)), Struct_3(u_input.a, Struct_2(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.a, vec4<i32>(3833i, 48495i, u_input.b, u_input.b), vec3<bool>(true, true, false), vec3<u32>(16858u, u_input.a, 25744u)))), Struct_1(vec3<f32>(694f, 1953f, -2522f), vec3<u32>(u_input.a, u_input.a, 5940u), vec2<i32>(-15492i, u_input.b), vec2<bool>(false, false)), Struct_1(vec3<f32>(-329f, 809f, -559f), vec3<u32>(20231u, u_input.a, 1976u), vec2<i32>(-1i, 0i), vec2<bool>(false, true)))) + vec3<f32>(-1297f, _wgslsmith_div_f32(209f, 264f), -808f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, -436f, -1210f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, -376f, 201f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2337f, 1416f, -312f)) - vec3<f32>(-1000f, -682f, 1024f))))));
    let var_2 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(var_1.x, var_1.x));
    var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1148f, var_1.x, -586f) + vec3<f32>(var_2, var_1.x, 189f)), vec3<f32>(-1579f, -937f, var_1.x)) - vec3<f32>(var_1.x, var_1.x, -218f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-443f, var_2, var_2)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1383f, var_2, var_1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-462f, 172f, var_1.x) * vec3<f32>(763f, -1703f, -291f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1266f, -191f, 1739f)), true))))));
    let var_3 = u_input.a;
    var var_4 = func_4(true, firstTrailingBit(_wgslsmith_div_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(2147483647i, u_input.b, 2147483647i))), abs(vec3<i32>(24019i, 89949i, 0i)))), _wgslsmith_mod_u32(var_3, _wgslsmith_mod_u32(0u, ~var_3)), _wgslsmith_f_op_f32(sign(-1317f))).c.d;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, _wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, -588f, -2617f), vec3<f32>(var_2, var_1.x, var_1.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_2, 787f), vec3<f32>(var_1.x, 345f, 2566f), vec3<bool>(var_4.x, var_4.x, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1048f, var_1.x, var_1.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1536f, var_2), 391f)), var_1.x, var_2)), ~countOneBits(vec3<i32>(1i, u_input.b >> (1u % 32u), _wgslsmith_sub_i32(u_input.b, u_input.b))), 4294967295u);
}

