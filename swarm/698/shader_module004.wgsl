struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-7479i, 25393i), vec2<i32>(0i, 3776i), vec2<i32>(-39435i, 1i), vec2<i32>(41110i, -72534i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, 1i), vec2<i32>(1i, -1i), vec2<i32>(2078i, 16584i), vec2<i32>(-13994i, i32(-2147483648)), vec2<i32>(8089i, 15033i), vec2<i32>(-44807i, -1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(45762i, 9474i), vec2<i32>(1i, 2147483647i), vec2<i32>(-33245i, -30704i), vec2<i32>(0i, 0i), vec2<i32>(3503i, -11800i), vec2<i32>(68785i, -36006i), vec2<i32>(i32(-2147483648), 54836i), vec2<i32>(-12590i, i32(-2147483648)), vec2<i32>(-1348i, -19602i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(6189i, 25564i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    global0 = array<vec4<bool>, 24>();
    var var_0 = Struct_2(1i, firstTrailingBit(select(-vec4<i32>(-2147483647i, arg_3.c.x, -1i, -139i), arg_2.d.c, !(!vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, true)))), _wgslsmith_div_vec4_i32(vec4<i32>(16401i, max(arg_2.d.a, u_input.b.x) << (abs(4294967295u) % 32u), _wgslsmith_add_i32(0i, arg_3.b.x) & arg_2.d.a, ~(~arg_2.d.a)), u_input.b), arg_2.e);
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(68314u), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(u_input.c.ww, vec2<u32>(u_input.c.x, var_0.d))), vec2<u32>(arg_1, ~arg_1))), arg_3.d, _wgslsmith_mod_u32(~min(_wgslsmith_div_u32(var_0.d, u_input.a.x), 1u), ~(~2750u)));
    var_0 = Struct_2(38440i, vec4<i32>(firstTrailingBit(u_input.b.x), ~_wgslsmith_div_i32(1i, 2147483647i) >> (abs(firstTrailingBit(26113u)) % 32u), -43888i, -16277i), u_input.b, 47965u);
    let var_2 = -countOneBits(_wgslsmith_dot_vec3_i32(abs(arg_3.b.wzz) << (u_input.c.wzx % vec3<u32>(32u)), vec3<i32>(abs(-19856i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.d.a, -52909i), vec2<i32>(arg_3.a, var_0.c.x)), abs(-33960i))));
    return 0i;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_5) -> f32 {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-39792i, u_input.b.x), u_input.b.x & arg_2.b) << (_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, u_input.a.x)), _wgslsmith_sub_vec2_u32(u_input.c.zz, u_input.a.xw)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_2.a.x, u_input.b.x), vec2<i32>(2147483647i, arg_2.b) >> (u_input.a.ww % vec2<u32>(32u)), vec2<i32>(arg_2.b, u_input.b.x)), (countOneBits(vec2<i32>(arg_2.c.a, 1i)) & vec2<i32>(arg_2.c.b.x, u_input.b.x)) << (min(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.c.d, u_input.a.x), vec2<u32>(u_input.a.x, arg_2.c.d), vec2<u32>(arg_2.c.d, arg_2.c.d)), ~u_input.a.xw) % vec2<u32>(32u))), abs(~u_input.b.xy));
    global0 = array<vec4<bool>, 24>();
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1472f) - 1000f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1059f * 1000f))) * _wgslsmith_f_op_f32(ceil(-139f)))));
    let var_3 = Struct_2(_wgslsmith_mod_i32(-2147483647i, func_3(Struct_1(vec4<f32>(290f, -250f, -1272f, -1467f)), _wgslsmith_dot_vec4_u32(u_input.c, u_input.a), Struct_3(Struct_1(vec4<f32>(2569f, -984f, -2134f, 924f)), Struct_1(vec4<f32>(-2944f, -507f, 306f, -1758f)), !arg_0, arg_2.c, ~u_input.a.x), arg_2.c)), firstTrailingBit(~vec4<i32>(func_3(Struct_1(vec4<f32>(1870f, -243f, -231f, 364f)), arg_2.c.d, Struct_3(Struct_1(vec4<f32>(133f, -1226f, 869f, -893f)), Struct_1(vec4<f32>(-1197f, 379f, -262f, 267f)), vec3<bool>(arg_0.x, true, arg_0.x), arg_2.c, 23902u), arg_2.c), u_input.b.x | 2147483647i, -2147483647i, var_0.x)), vec4<i32>(4476i, select(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(arg_2.c.d, 24u)], ~arg_2.a.xx), u_input.b.x, false), _wgslsmith_mod_i32(var_0.x, -(i32(-1i) * -21890i)), min(_wgslsmith_sub_i32(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_2.c.a, -2147483647i), vec3<i32>(2147483647i, -1i, var_0.x))), i32(-1i) * -arg_2.a.x)), arg_2.c.d);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1622f)))), _wgslsmith_f_op_f32(floor(1468f)), arg_1));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~u_input.c.ywz >> (u_input.a.wwx % vec3<u32>(32u))), ~vec3<u32>(arg_2.e >> (arg_2.d.d % 32u), abs(0u), abs(u_input.c.x))), 24u)];
    let var_1 = Struct_3(arg_2.a, arg_2.b, !select(vec3<bool>(var_0.x && true, !arg_2.c.x, all(vec3<bool>(true, arg_2.c.x, var_0.x))), arg_2.c, !select(vec3<bool>(false, false, var_0.x), var_0.zxw, arg_2.c.x)), arg_2.d, 6749u);
    var var_2 = arg_2.d.d;
    global1 = array<vec2<i32>, 24>();
    var var_3 = arg_3.c.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1));
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = func_4(998f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f)), _wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(false, arg_0, false), true, Struct_5(vec4<i32>(u_input.b.x, u_input.b.x, -26520i, u_input.b.x), u_input.b.x, Struct_2(12988i, vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b, u_input.c.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-210f, 559f, false)), -369f)))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(681f, 679f, -1000f, -1005f) - vec4<f32>(-1342f, -1195f, -859f, 263f))))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 962f, 188f, -985f))), vec4<f32>(1f, 1f, 1f, 1f)))), !select(!vec3<bool>(arg_0, false, false), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, arg_0)), vec3<bool>(true, arg_0, false)), Struct_2(~(~(-59025i)), countOneBits(vec4<i32>(-19269i, u_input.b.x, -6940i, -2147483647i)) | select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), vec4<i32>(u_input.b.x, u_input.b.x, -17185i, -2147483647i), global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), max(u_input.b, vec4<i32>(-26401i, u_input.b.x, 21511i, u_input.b.x)), firstTrailingBit(u_input.c.x)), u_input.c.x), Struct_2(u_input.b.x, max(u_input.b, abs(reverseBits(u_input.b))), ~_wgslsmith_add_vec4_i32(u_input.b, ~vec4<i32>(-2147483647i, 0i, 2147483647i, -2147483647i)), 51900u));
    var var_1 = Struct_2(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(select(u_input.b.zxz, u_input.b.xzw, false), -vec3<i32>(-22885i, u_input.b.x, u_input.b.x)), (reverseBits(16512i) & ~u_input.b.x) ^ 1i, min(~(-2147483647i), select(8846i, -2147483647i, any(vec2<bool>(arg_0, arg_0))))), vec4<i32>(u_input.b.x, 1i, ~max(-55213i, u_input.b.x), func_3(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, 196f, var_0.a.x)), 1u, Struct_3(Struct_1(vec4<f32>(-1553f, var_0.a.x, var_0.a.x, 1000f)), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -1441f, -1613f)), vec3<bool>(true, arg_0, arg_0), Struct_2(27633i, u_input.b, vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), u_input.c.x), u_input.a.x), Struct_2(u_input.b.x, u_input.b, vec4<i32>(u_input.b.x, 0i, u_input.b.x, -31595i), u_input.a.x)) << (u_input.a.x % 32u)) | vec4<i32>(u_input.b.x, (10063i ^ u_input.b.x) << (u_input.c.x % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-23976i, u_input.b.x, u_input.b.x), u_input.b.xxw, vec3<i32>(u_input.b.x, -19441i, 2147483647i)), u_input.b.yww ^ u_input.b.yzw), _wgslsmith_mult_i32(-1i ^ u_input.b.x, u_input.b.x)), ~(-u_input.b << (~vec4<u32>(10991u, u_input.a.x, 1u, 63134u) % vec4<u32>(32u))) & (vec4<i32>(1i, 0i, _wgslsmith_mod_i32(u_input.b.x, -7213i), -13343i) ^ min(countOneBits(u_input.b), ~u_input.b)), abs(~4294967295u));
    global1 = array<vec2<i32>, 24>();
    var_1 = Struct_2(13358i, ~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xx, select(vec2<i32>(9924i, -1i), u_input.b.wx, true)), _wgslsmith_mult_i32(u_input.b.x, -22060i), ~33574i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 28807i, var_1.c.x, u_input.b.x) & vec4<i32>(u_input.b.x, -2995i, u_input.b.x, 0i), u_input.b)), u_input.b, ~27163u | (abs(_wgslsmith_dot_vec3_u32(u_input.c.wxw, u_input.a.yxz)) << (firstTrailingBit(var_1.d) % 32u)));
    var var_2 = Struct_1(var_0.a);
    return Struct_4(select(!vec2<bool>(all(global0[_wgslsmith_index_u32(var_1.d, 24u)]), arg_0), vec2<bool>(true, true), !arg_0), Struct_2(var_1.a, countOneBits(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, -26807i), firstLeadingBit(u_input.b.x), -15131i)), u_input.b, _wgslsmith_add_u32(~53335u, _wgslsmith_clamp_u32(var_1.d, var_1.d, var_1.d))), u_input.a.xwy, Struct_2(_wgslsmith_add_i32(-_wgslsmith_clamp_i32(var_1.a, var_1.b.x, -34465i), func_3(func_4(-1152f, var_0.a, Struct_3(Struct_1(var_0.a), Struct_1(vec4<f32>(384f, var_0.a.x, 1444f, var_2.a.x)), vec3<bool>(arg_0, false, arg_0), Struct_2(u_input.b.x, vec4<i32>(35744i, 60933i, var_1.a, u_input.b.x), u_input.b, 1u), 8350u), Struct_2(41058i, var_1.b, u_input.b, var_1.d)), 846u, Struct_3(Struct_1(var_2.a), Struct_1(var_2.a), vec3<bool>(arg_0, false, arg_0), Struct_2(1i, vec4<i32>(2147483647i, u_input.b.x, var_1.b.x, u_input.b.x), vec4<i32>(var_1.c.x, -70542i, var_1.b.x, u_input.b.x), u_input.a.x), 6658u), Struct_2(1i, u_input.b, vec4<i32>(0i, -6137i, u_input.b.x, u_input.b.x), 1u))), -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 7981i, u_input.b.x, u_input.b.x), u_input.b), vec4<i32>(2147483647i, 1i, -18928i, var_1.a)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_1.c.x, 0i, 1i), var_1.b) << (_wgslsmith_mod_u32(var_1.d, var_1.d) % 32u), var_1.c.x, min(_wgslsmith_add_i32(1i, u_input.b.x), var_1.a & u_input.b.x), u_input.b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, var_1.d, var_1.d), u_input.a)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_vec3_i32(arg_1.b.c.yyx, func_1(!(all(arg_1.a) == !arg_1.a.x)).d.b.yxy, abs(vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1.d.c.x, 2147483647i), arg_2.zy, vec2<bool>(true, false)), global1[_wgslsmith_index_u32(88244u, 24u)]), ~u_input.b.x, arg_1.b.c.x)));
    global1 = array<vec2<i32>, 24>();
    var var_1 = Struct_3(func_4(1546f, vec4<f32>(-1953f, -284f, arg_3, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(round(arg_3)), arg_2.x < var_0.x))), Struct_3(func_4(_wgslsmith_f_op_f32(step(arg_3, arg_3)), vec4<f32>(arg_3, 499f, arg_3, arg_3), Struct_3(Struct_1(vec4<f32>(1543f, -1599f, 937f, arg_3)), Struct_1(vec4<f32>(arg_3, -434f, -192f, 612f)), vec3<bool>(true, true, false), Struct_2(-5423i, vec4<i32>(arg_2.x, u_input.b.x, 1i, 1i), vec4<i32>(arg_1.d.c.x, u_input.b.x, var_0.x, 47630i), 2177u), arg_0.x), arg_1.b), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1149f, -1000f, -1846f, arg_3), vec4<f32>(656f, -1000f, arg_3, arg_3))), vec3<bool>(true & arg_1.a.x, true, arg_1.a.x), func_1(any(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x))).b, 47678u & u_input.a.x), Struct_2(~1i, -vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 0i), arg_1.d.b, u_input.a.x)), func_4(arg_3, vec4<f32>(-1370f, arg_3, _wgslsmith_f_op_f32(arg_3 * arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3)) + _wgslsmith_f_op_f32(max(arg_3, -641f)))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, 1000f, 1354f))), func_4(_wgslsmith_f_op_f32(trunc(arg_3)), _wgslsmith_f_op_vec4_f32(vec4<f32>(950f, arg_3, arg_3, arg_3) - vec4<f32>(-1133f, 300f, arg_3, -275f)), Struct_3(Struct_1(vec4<f32>(1052f, 449f, arg_3, 1366f)), Struct_1(vec4<f32>(arg_3, 160f, -1320f, arg_3)), vec3<bool>(false, true, true), Struct_2(arg_2.x, vec4<i32>(30831i, 0i, -22725i, -1i), vec4<i32>(var_0.x, 1i, arg_1.b.c.x, arg_1.d.b.x), 4294967295u), u_input.c.x), Struct_2(22580i, arg_1.d.c, vec4<i32>(u_input.b.x, 0i, arg_1.b.a, u_input.b.x), arg_0.x)), vec3<bool>(true, true, arg_1.a.x), Struct_2(-1i, u_input.b << (arg_0 % vec4<u32>(32u)), ~u_input.b, arg_1.b.d), ~7702u), func_1(any(vec2<bool>(arg_1.a.x, false))).d), select(!select(vec3<bool>(arg_1.a.x, arg_1.a.x, true), !vec3<bool>(true, arg_1.a.x, arg_1.a.x), select(vec3<bool>(arg_1.a.x, true, true), vec3<bool>(false, false, false), arg_1.a.x)), select(!(!vec3<bool>(arg_1.a.x, arg_1.a.x, true)), select(select(vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), false), vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(true, true, true)), true), true), Struct_2(-(firstLeadingBit(-2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_1.b.d, u_input.c.x), vec3<u32>(1u, 89880u, arg_0.x)) % 32u)), u_input.b, arg_1.b.c >> (vec4<u32>(1u, u_input.c.x & u_input.c.x, arg_1.b.d, arg_1.c.x) % vec4<u32>(32u)), arg_0.x), func_1(false).b.d);
    let var_2 = ~(~(~vec2<u32>(29446u, 8967u)) | arg_1.c.yx);
    var var_3 = ~(~arg_0.yz) | abs(arg_0.yw);
    return var_1.b.a;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_4 {
    let var_0 = select(select(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(16591u, 24u)], _wgslsmith_f_op_f32(-1653f * _wgslsmith_div_f32(620f, -226f)) != _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.a.x, -856f)))), vec4<bool>(func_1(arg_2.a.x).a.x, any(vec3<bool>(true, all(global0[_wgslsmith_index_u32(arg_2.b.d, 24u)]), any(vec3<bool>(arg_2.a.x, false, false)))), arg_2.a.x, arg_2.a.x), !vec4<bool>(false, all(!vec3<bool>(false, true, arg_2.a.x)), true, any(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(10677u, arg_0), 24u)])));
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_mod_u32(0u, u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2.d.d, u_input.a.x), 6394u), 38109u), vec3<u32>(~(~arg_2.d.d), u_input.c.x, arg_2.b.d));
    let var_2 = func_1(any(select(var_0.wy, arg_2.a, any(vec3<bool>(var_0.x, true, false)))));
    let var_3 = ~vec3<i32>(2147483647i | -_wgslsmith_mod_i32(-4889i, arg_2.b.c.x), u_input.b.x, firstLeadingBit(6983i) ^ _wgslsmith_add_i32(_wgslsmith_div_i32(var_2.b.a, 60832i), abs(-2147483647i)));
    global0 = array<vec4<bool>, 24>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 24>();
    let var_0 = -u_input.b.x;
    global1 = array<vec2<i32>, 24>();
    global0 = array<vec4<bool>, 24>();
    let var_1 = func_6(firstTrailingBit(u_input.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(vec4<u32>(u_input.a.x, u_input.c.x, 6925u, 24138u), func_1(false), max(vec3<i32>(var_0, u_input.b.x, 11098i), vec3<i32>(35068i, var_0, 2439i)), _wgslsmith_div_f32(-120f, 842f))))), Struct_4(select(vec2<bool>(all(global0[_wgslsmith_index_u32(25667u, 24u)]), func_1(false).a.x), vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(true, true)), Struct_2(var_0 | u_input.b.x, vec4<i32>(abs(u_input.b.x), ~2147483647i, var_0 << (u_input.a.x % 32u), min(-37919i, var_0)), _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(var_0, -6107i, 0i, -6776i)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.yx), ~u_input.c.xw)), vec3<u32>(4294967295u, u_input.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.ww, vec2<u32>(u_input.c.x, u_input.c.x)), ~vec2<u32>(16849u, 1u))), Struct_2((i32(-1i) * -1i) & -u_input.b.x, vec4<i32>(u_input.b.x ^ 0i, -1i, max(2147483647i, 1i), max(-27913i, 27417i)), reverseBits(firstTrailingBit(vec4<i32>(22700i, 0i, 40974i, 1i))), firstLeadingBit(~u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(vec3<u32>(min(28u, u_input.c.x), u_input.c.x, u_input.a.x), vec3<u32>(u_input.c.x, func_1(true).b.d, var_1.b.d)), u_input.c.x, 0i, _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.c.x, var_1.c.x, ~1u & select(4294967295u, u_input.c.x, true)), u_input.c, vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(56796u, u_input.c.x), vec2<u32>(u_input.c.x, var_1.d.d)), abs(select(97814u, 85247u, false)), ~(1u << (u_input.a.x % 32u)), u_input.a.x | _wgslsmith_mod_u32(1u, var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(677f + 444f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1544f - -1163f)))) - -399f));
}

