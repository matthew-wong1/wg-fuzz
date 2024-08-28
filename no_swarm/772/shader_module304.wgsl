struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<bool>, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3) -> i32 {
    var var_0 = vec4<u32>(~(~u_input.a), 18568u, ~9898u, _wgslsmith_sub_u32(abs(u_input.a), abs(arg_0.x)));
    let var_1 = _wgslsmith_f_op_f32(arg_2.d.c * 800f);
    global0 = select(vec2<bool>(any(!vec2<bool>(true, arg_2.b)), true), select(select(vec2<bool>(arg_2.c.d.x, true), select(!vec2<bool>(true, global0.x), vec2<bool>(arg_2.d.a, global0.x), vec2<bool>(true, arg_2.b)), !(!arg_2.d.d.zy)), !select(arg_2.c.d.wy, select(vec2<bool>(arg_2.d.d.x, true), vec2<bool>(true, global0.x), false), true || arg_2.c.a), arg_2.a.x < 1000f), false & !global0.x);
    var var_2 = -arg_2.d.b;
    var_0 = firstTrailingBit(~vec4<u32>(arg_0.x, ~1u, 1u, var_0.x) | ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(14116u, 88718u, 29484u, 200u), vec4<u32>(4294967295u, 28252u, 1u, arg_0.x)), firstLeadingBit(vec4<u32>(u_input.a, 38551u, 0u, 77431u))));
    return ~_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, _wgslsmith_mod_i32(6411i, u_input.b), 28104i), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(46668i, var_2.x, -9999i), vec3<i32>(-2147483647i, u_input.b, 14779i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> f32 {
    global0 = arg_1.d.ww;
    let var_0 = ~94895u;
    global0 = !arg_0;
    global0 = arg_0;
    global1 = array<vec4<bool>, 13>();
    return _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c * 270f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c + arg_1.c) + _wgslsmith_f_op_f32(-arg_1.c)))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), Struct_1(true, vec2<i32>(2147483647i, func_3(vec2<u32>(1u, 1u), u_input.b, Struct_3(vec2<f32>(1081f, -1000f), global0.x, Struct_1(arg_0, vec2<i32>(2147483647i, -1i), -335f, global1[_wgslsmith_index_u32(u_input.a, 13u)]), Struct_1(arg_0, vec2<i32>(-2147483647i, u_input.b), 1000f, vec4<bool>(false, global0.x, true, false)))) & (0i >> (1u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1414f, 708f)) + _wgslsmith_f_op_f32(1070f * -916f))), vec4<bool>(true, true, !(!arg_0), true)), ~u_input.a));
    global0 = !select(!select(select(vec2<bool>(false, arg_0), vec2<bool>(global0.x, false), arg_0), select(vec2<bool>(false, global0.x), vec2<bool>(true, true), false), any(vec4<bool>(arg_0, arg_0, global0.x, arg_0))), vec2<bool>(true, false), !(!any(global1[_wgslsmith_index_u32(u_input.a, 13u)])));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))));
    global1 = array<vec4<bool>, 13>();
    let var_2 = select(!select(vec2<bool>(true, !global0.x), !select(vec2<bool>(false, arg_0), vec2<bool>(true, false), global0.x), !(!vec2<bool>(global0.x, global0.x))), select(vec2<bool>(all(vec3<bool>(global0.x, global0.x, true)), !any(vec4<bool>(global0.x, arg_0, false, false))), !select(!vec2<bool>(arg_0, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(global0.x, false)), select(vec2<bool>(false, false), vec2<bool>(arg_0, global0.x), vec2<bool>(arg_0, global0.x))), _wgslsmith_div_u32(~1u, 4294967295u) != _wgslsmith_sub_u32(21u ^ u_input.a, ~44340u)), u_input.b > u_input.b);
    return Struct_2(Struct_1(true, vec2<i32>(_wgslsmith_add_i32(min(-5999i, u_input.b), _wgslsmith_sub_i32(45873i, -1i)), 14663i), _wgslsmith_f_op_f32(round(-400f)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0, false, global0.x, false), true), select(!vec4<bool>(arg_0, false, global0.x, false), select(vec4<bool>(var_2.x, global0.x, var_2.x, global0.x), global1[_wgslsmith_index_u32(38964u, 13u)], vec4<bool>(false, true, true, true)), all(var_2)), !select(vec4<bool>(global0.x, true, false, true), global1[_wgslsmith_index_u32(4294967295u, 13u)], false))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_2(true).a.b.x;
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(select(min(1u, arg_2), _wgslsmith_sub_u32(arg_2, arg_2), true), ~42998u, ~(~(~arg_2))), ~_wgslsmith_clamp_u32(~0u, arg_2, u_input.a), (~arg_2 << (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, arg_2, arg_2, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, arg_2, u_input.a, arg_2), vec4<u32>(5208u, 4294967295u, arg_2, u_input.a))) % 32u)) << (0u % 32u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.a.c + arg_3.a.c), arg_0) + vec2<f32>(_wgslsmith_f_op_f32(785f * arg_0), _wgslsmith_f_op_f32(arg_3.a.c - arg_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.c, -1060f) + vec2<f32>(arg_3.a.c, arg_0))))), global0.x, arg_3.a, arg_3.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_2.a);
    var var_4 = _wgslsmith_div_i32(-firstTrailingBit(u_input.b), u_input.b);
    return var_2.d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1.d.xx;
    global0 = select(select(!(!func_5(arg_0.c, true, 1u, Struct_2(Struct_1(global0.x, vec2<i32>(arg_1.b.x, 2147483647i), arg_1.c, vec4<bool>(arg_0.d.x, true, arg_0.a, arg_1.d.x)))).d.ww), vec2<bool>(all(global1[_wgslsmith_index_u32(u_input.a, 13u)]), select(arg_0.d.x & arg_1.a, true, false)), all(arg_0.d.yx) | true), arg_0.d.zx, !arg_1.d.x);
    var var_0 = ~select(-((vec3<i32>(0i, -9072i, u_input.b) | vec3<i32>(arg_1.b.x, 2147483647i, -23349i)) | select(vec3<i32>(-22416i, -2147483647i, -13486i), vec3<i32>(u_input.b, -42125i, -18087i), arg_1.d.yxx)), reverseBits(vec3<i32>(-55698i, _wgslsmith_mult_i32(1i, -28635i), 2147483647i)), !(!(!arg_0.d.zxy)));
    let var_1 = arg_0.d.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1133f, -1000f), vec2<f32>(719f, arg_1.c))))), arg_1.a && arg_0.a, func_2(func_2(global0.x).a.a).a, arg_0);
    return Struct_1(false, reverseBits(-vec2<i32>(0i, _wgslsmith_div_i32(0i, -31715i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.c * _wgslsmith_f_op_f32(-629f - arg_1.c))), var_2.c.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_2 {
    global0 = arg_2;
    let var_0 = ~vec4<i32>(arg_0.x, i32(-1i) * -2147483647i, 9220i, _wgslsmith_add_i32(arg_0.x, arg_0.x ^ arg_0.x)) & vec4<i32>(2147483647i, ~(-9852i), -(_wgslsmith_mult_i32(-1i, arg_0.x) << (u_input.a % 32u)), arg_0.x);
    var var_1 = select(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(arg_1, false, arg_2.x), vec3<bool>(true, false, true), global0.x), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, true, false), false), false), true), !(!vec3<bool>(false, global0.x, arg_2.x | false)), vec3<bool>(!any(!vec3<bool>(true, arg_1, true)), all(select(vec3<bool>(arg_1, true, false), !vec3<bool>(global0.x, false, arg_1), true)), any(vec4<bool>(true, arg_2.x, true, !arg_2.x))));
    var var_2 = Struct_1(false, vec2<i32>(-1i) * -arg_0.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f) - _wgslsmith_f_op_f32(min(-744f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1569f + -1594f), 765f))))), vec4<bool>(!(!global0.x), select(all(!global1[_wgslsmith_index_u32(25399u, 13u)]), true, true), all(!global1[_wgslsmith_index_u32(u_input.a, 13u)]), true));
    var_2 = func_6(func_5(var_2.c, !(!any(vec3<bool>(true, true, var_1.x))), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 7617u), vec3<u32>(4294967295u, 0u, u_input.a))), func_2(arg_2.x)), Struct_1(true, var_2.b, -2186f, vec4<bool>(!all(vec2<bool>(arg_2.x, var_1.x)), _wgslsmith_f_op_f32(trunc(-692f)) >= _wgslsmith_f_op_f32(-var_2.c), !(!var_1.x), true)));
    return func_2(!all(var_2.d.zzz));
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_1(arg_0.a.a, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 13323i), vec2<i32>(~arg_0.a.b.x, u_input.b | arg_0.a.b.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.b.x, 1i, u_input.b), vec3<i32>(-1i, 1i, arg_0.a.b.x)), vec3<i32>(1i, -2147483647i, arg_0.a.b.x)), 2147483647i)), -2804f, vec4<bool>(func_2(!arg_0.a.a).a.d.x, arg_1, global0.x, global0.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f - _wgslsmith_f_op_f32(-arg_2.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-317f)), 976f))), _wgslsmith_f_op_f32(abs(arg_2.x))));
    var var_2 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a, 1816u, 62651u, 31353u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 1u, 1u)), vec4<u32>(u_input.a, 4294967295u, 13991u, u_input.a)), ~(~vec4<u32>(u_input.a, u_input.a, 21409u, 33688u))));
    let var_3 = arg_2.x;
    let var_4 = Struct_2(func_2(true).a);
    return var_2.x;
}

fn func_8(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>) -> StorageBuffer {
    let var_0 = Struct_1(func_2(false).a.a, vec2<i32>(-firstLeadingBit(-19878i), u_input.b), _wgslsmith_f_op_f32(min(145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f))))), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(80517u, u_input.a, 4294967295u) | 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(15675u, 0u, arg_0.x, 0u), vec4<u32>(arg_0.x, 1u, arg_0.x, 69000u)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), arg_0.yy))), 13u)]);
    global1 = array<vec4<bool>, 13>();
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, arg_1), -21063i)), _wgslsmith_add_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-60104i, arg_1, arg_1, u_input.b), vec4<i32>(4848i, var_0.b.x, arg_1, arg_1)), firstTrailingBit(1i)), 0i)), ~reverseBits(vec3<i32>(u_input.b, func_2(false).a.b.x, -u_input.b)));
    global1 = array<vec4<bool>, 13>();
    var_1 = select(min(vec3<i32>(~2147483647i, 0i, -1i & min(-29495i, u_input.b)), min(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, u_input.b, var_1.x), abs(vec3<i32>(-8025i, -1i, -1i))), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, arg_1, -65747i), vec3<i32>(-2147483647i, -35298i, var_1.x)))), _wgslsmith_add_vec3_i32(~(~vec3<i32>(-1i, u_input.b, arg_1) >> (arg_0 % vec3<u32>(32u))), -countOneBits(vec3<i32>(var_1.x, -17364i, -2147483647i)) | min(vec3<i32>(arg_1, -33822i, arg_1), select(vec3<i32>(var_0.b.x, u_input.b, 50863i), vec3<i32>(var_0.b.x, arg_1, var_1.x), var_0.d.zzw))), var_0.d.wwx);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<bool>(true == global0.x, false), Struct_1(var_0.d.x, var_1.xx << (arg_0.xz % vec2<u32>(32u)), var_0.c, vec4<bool>(global0.x, true, true, global0.x)), _wgslsmith_dot_vec3_u32(firstLeadingBit(arg_0), arg_0))) + arg_2.x), arg_0.yx, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(2847u, 4294967295u, 24145u), u_input.a << (arg_0.x % 32u), ~arg_0.x), ~abs(vec3<u32>(arg_0.x, 18224u, 50487u))), 15046u, _wgslsmith_sub_u32(_wgslsmith_add_u32(18503u, firstTrailingBit(arg_0.x)), ~_wgslsmith_add_u32(5956u, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 13>();
    global0 = vec2<bool>(true, true);
    let var_0 = ~(~u_input.a);
    var var_1 = 2147483647i;
    let x = u_input.a;
    s_output = func_8(vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.a, var_0, 1u), 42631u), func_7(func_1(select(vec3<i32>(u_input.b, u_input.b, -14698i), vec3<i32>(7218i, -6347i, u_input.b), vec3<bool>(global0.x, global0.x, global0.x)), all(global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec2<bool>(true, true)), select(global0.x, true, false) || true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 423f, 827f))), 89184u), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1491f, 2799f))) + vec2<f32>(_wgslsmith_f_op_f32(min(-317f, _wgslsmith_div_f32(-1359f, -282f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f + 901f)))));
}

