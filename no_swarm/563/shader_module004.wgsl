struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> vec2<u32> {
    var var_0 = vec3<bool>(true, any(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    var_0 = select(vec3<bool>(4294967295u >= _wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, u_input.b))), max(1744i << (u_input.e % 32u), _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i)) >= u_input.a, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) && !any(vec2<bool>(var_0.x, true))), vec3<bool>(false, var_0.x, var_0.x), select(!vec3<bool>(-22003i == u_input.a, true, 4294967295u != u_input.d.x), !vec3<bool>(any(var_0.xz), true == var_0.x, true), vec3<bool>(true, !(u_input.a < u_input.a), true)));
    var_0 = select(select(!vec3<bool>(var_0.x, !var_0.x, !var_0.x), select(vec3<bool>(false, true, var_0.x && var_0.x), vec3<bool>(all(vec4<bool>(false, true, var_0.x, true)), true, true), any(vec3<bool>(true, true, true))), 1027f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(249f - arg_3), _wgslsmith_div_f32(arg_3, -709f)))), select(!vec3<bool>(true, any(var_0.yx), true), !vec3<bool>(true, var_0.x, true | var_0.x), !vec3<bool>(!var_0.x, true, any(vec3<bool>(true, var_0.x, false)))), all(vec2<bool>(false, var_0.x)));
    let var_1 = !(!vec3<bool>(var_0.x != all(vec3<bool>(false, var_0.x, var_0.x)), any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), all(vec2<bool>(true, true))));
    return max(abs(u_input.d.yx), reverseBits(u_input.d.wz));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1129f, -566f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-120f, 1501f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -1021f))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-113f)))), _wgslsmith_f_op_f32(-1814f * _wgslsmith_div_f32(-540f, -1993f))));
    var var_1 = arg_0.zy;
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-419f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -369f, all(vec4<bool>(arg_0.x, var_1.x, false, arg_2)) | var_1.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(1541f + 1283f))) + vec2<f32>(-1089f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)))))));
    var var_2 = vec3<bool>(any(vec3<bool>(true, !(arg_0.x && false), all(vec3<bool>(var_1.x, true, var_1.x)))), true, true);
    return ~u_input.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = arg_2.x;
    let var_1 = func_4(!vec3<bool>(false & arg_1.c.x, !(4294967295u > arg_2.x), any(vec2<bool>(false, false))), ~func_3(45982i, _wgslsmith_f_op_vec2_f32(-arg_1.a.b.b.xy), -1407f, -482f), true, 0u >> (u_input.c % 32u));
    var var_2 = Struct_2(select(~abs(arg_1.a.a), select(vec3<u32>(firstLeadingBit(u_input.b), firstLeadingBit(1u), u_input.b), ~(~vec3<u32>(u_input.d.x, 17461u, arg_2.x)), arg_1.d.c.x), !vec3<bool>(arg_1.a.b.c.x, false, false)), arg_1.a.b);
    let var_3 = Struct_3(arg_1.a, min(~_wgslsmith_clamp_vec2_u32(~arg_1.a.a.xy, u_input.d.wz << (vec2<u32>(37523u, var_2.a.x) % vec2<u32>(32u)), ~vec2<u32>(arg_2.x, 51217u)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(17742u, 0u, 0u, var_0)), 1u), vec2<u32>(max(arg_2.x, var_2.a.x), var_2.a.x))), vec4<bool>(true, false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1402f, 753f)))) < arg_1.a.b.d.x, var_2.b.c.x), Struct_1(_wgslsmith_clamp_vec3_i32(var_2.b.a, _wgslsmith_sub_vec3_i32(var_2.b.a, var_2.b.a) & _wgslsmith_add_vec3_i32(var_2.b.a, vec3<i32>(arg_1.d.a.x, 2147483647i, 695i)), vec3<i32>(-2147483647i, var_1, -1i) << (vec3<u32>(14801u, arg_2.x, 8701u) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.b.b.x, -552f)) * _wgslsmith_f_op_f32(var_2.b.d.x * var_2.b.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_2.b.b.x, var_2.b.b.x)))), _wgslsmith_f_op_f32(var_2.b.d.x * _wgslsmith_f_op_f32(ceil(569f)))), select(arg_1.c.yy, !select(vec2<bool>(arg_1.d.c.x, var_2.b.c.x), vec2<bool>(arg_1.d.c.x, arg_1.d.c.x), vec2<bool>(true, var_2.b.c.x)), false), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.b.b.x + _wgslsmith_f_op_f32(ceil(arg_1.a.b.d.x))), var_2.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1014f - arg_1.a.b.d.x) - var_2.b.b.x), arg_1.d.d.x)));
    var_2 = Struct_2(vec3<u32>(u_input.c, 0u, _wgslsmith_sub_u32(~(~31730u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, var_3.b.x, 49012u), _wgslsmith_sub_vec3_u32(arg_1.a.a, u_input.d.xzx)))), Struct_1(vec3<i32>(_wgslsmith_sub_i32(~u_input.a, func_4(vec3<bool>(true, true, true), vec2<u32>(var_2.a.x, 41658u), arg_1.c.x, 68249u)), firstLeadingBit(~14350i), 2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.b.d.x, _wgslsmith_f_op_f32(floor(-569f)), var_3.d.d.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.b.x, arg_1.a.b.d.x, -262f)), vec3<f32>(var_2.b.d.x, var_2.b.b.x, 819f))), select(!(!vec2<bool>(false, arg_1.d.c.x)), select(vec2<bool>(true, arg_1.c.x), select(vec2<bool>(var_3.a.b.c.x, true), vec2<bool>(var_3.d.c.x, var_2.b.c.x), arg_1.c.x), true), var_2.b.c.x), var_3.d.d));
    return !vec2<bool>(true, !var_2.b.c.x);
}

fn func_1() -> Struct_2 {
    var var_0 = 19615i;
    var var_1 = Struct_1(select(~abs(abs(vec3<i32>(u_input.a, u_input.a, u_input.a))), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.a), vec3<i32>(-1i, 2147483647i, u_input.a))), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1878f, 966f, -1440f) - vec3<f32>(1049f, 421f, 642f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, 920f, 425f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-436f, 752f, 374f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(166f, -1099f, 1378f) * vec3<f32>(-644f, 926f, 927f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, -1792f, 499f)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), func_2(vec2<i32>(-2147483647i, 0i) ^ vec2<i32>(1i, u_input.a), Struct_3(Struct_2(u_input.d.zzx, Struct_1(vec3<i32>(u_input.a, 1i, 1i), vec3<f32>(-1033f, -336f, -708f), vec2<bool>(false, true), vec4<f32>(1473f, -625f, -554f, 599f))), vec2<u32>(u_input.d.x, 2929u), vec4<bool>(false, false, false, true), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<f32>(-1148f, -418f, -295f), vec2<bool>(true, false), vec4<f32>(-1290f, -1342f, 970f, 1422f))), u_input.d.xz), !all(vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), func_2(vec2<i32>(u_input.a, -40698i), Struct_3(Struct_2(u_input.d.zxy, Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<f32>(-410f, 453f, 238f), vec2<bool>(false, false), vec4<f32>(-1124f, 2706f, 560f, -394f))), vec2<u32>(25547u, u_input.c), vec4<bool>(true, false, true, false), Struct_1(vec3<i32>(-42043i, u_input.a, -2147483647i), vec3<f32>(-2068f, -1481f, 116f), vec2<bool>(false, false), vec4<f32>(-2595f, 518f, 822f, -1252f))), ~vec2<u32>(11609u, 0u)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - -2612f))), 1f, 157f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-135f, 2088f, true))))), vec4<f32>(378f, -964f, -1000f, 773f), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true))));
    let var_2 = vec4<u32>(u_input.b, 4294967295u, ~4294967295u, ~max(countOneBits(u_input.d.x), abs(u_input.b)));
    let var_3 = Struct_3(Struct_2(_wgslsmith_div_vec3_u32(~max(var_2.wyy, vec3<u32>(1683u, var_2.x, var_2.x)), abs(vec3<u32>(4294967295u, 120818u, 4294967295u) & var_2.zwz)), Struct_1((vec3<i32>(var_1.a.x, 0i, -6603i) & var_1.a) | vec3<i32>(29870i, var_1.a.x, u_input.a), var_1.d.xyx, !func_2(vec2<i32>(var_1.a.x, var_1.a.x), Struct_3(Struct_2(vec3<u32>(u_input.e, 1u, u_input.e), Struct_1(vec3<i32>(-1i, 0i, u_input.a), var_1.b, vec2<bool>(true, false), vec4<f32>(-600f, var_1.b.x, -1541f, var_1.d.x))), vec2<u32>(u_input.c, 1u), vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), Struct_1(var_1.a, vec3<f32>(506f, var_1.b.x, 683f), vec2<bool>(var_1.c.x, var_1.c.x), var_1.d)), var_2.yx), var_1.d)), _wgslsmith_div_vec2_u32(~vec2<u32>(var_2.x, u_input.c), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.wx, vec2<u32>(u_input.e, 55200u)), ~vec2<u32>(4294967295u, var_2.x)), vec2<u32>(0u, 15723u))), select(!(!select(vec4<bool>(true, var_1.c.x, var_1.c.x, true), vec4<bool>(false, true, false, true), var_1.c.x)), vec4<bool>(true, 33716u > ~u_input.b, all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, false, true))), var_1.c.x), Struct_1(var_1.a, vec3<f32>(348f, -212f, var_1.d.x), !select(func_2(var_1.a.yy, Struct_3(Struct_2(vec3<u32>(u_input.d.x, 4294967295u, var_2.x), Struct_1(var_1.a, vec3<f32>(var_1.d.x, var_1.b.x, 277f), var_1.c, vec4<f32>(1488f, var_1.b.x, var_1.b.x, var_1.d.x))), vec2<u32>(u_input.c, 1u), vec4<bool>(var_1.c.x, true, var_1.c.x, false), Struct_1(vec3<i32>(-1i, u_input.a, -28744i), var_1.b, vec2<bool>(var_1.c.x, var_1.c.x), var_1.d)), u_input.d.xw), vec2<bool>(false, true), var_1.c), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.d.x, var_1.b.x)), _wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_f_op_f32(-var_1.d.x))))));
    var_1 = Struct_1(-(~_wgslsmith_add_vec3_i32(select(var_3.d.a, vec3<i32>(-18689i, -2147483647i, 58545i), var_3.c.ywx), _wgslsmith_mult_vec3_i32(var_3.a.b.a, var_1.a))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -2080f, 461f))))), vec2<bool>(any(vec2<bool>(var_1.d.x > var_1.b.x, var_3.a.b.c.x & true)), !var_1.c.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, -495f, var_1.b.x, var_3.a.b.d.x))))), var_1.d, var_3.c)))));
    return Struct_2(~(reverseBits(vec3<u32>(0u, var_3.b.x, u_input.c)) & var_3.a.a), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 28275i, var_1.a.x, -17431i), vec4<i32>(7094i, -2147483647i, 78279i, -30139i)), select(vec4<i32>(var_3.a.b.a.x, u_input.a, var_1.a.x, 0i), vec4<i32>(u_input.a, u_input.a, -2147483647i, -19605i), var_3.c)), u_input.a & ~u_input.a, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -24813i, var_1.a.x, 26746i), vec4<i32>(19824i, -2147483647i, var_3.d.a.x, var_1.a.x)))), var_1.b, vec2<bool>(all(select(var_3.a.b.c, vec2<bool>(var_3.d.c.x, var_3.d.c.x), var_3.c.yy)), all(vec3<bool>(var_1.c.x, false, var_3.d.c.x)) && true), var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(func_1(), vec2<u32>(_wgslsmith_mod_u32(1u, ~0u), ~func_3(-1i, vec2<f32>(-348f, -1270f), -582f, 2046f).x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), func_1().b), -1123f, true, !vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_f_op_f32(select(-1766f, 604f, true)) != -1001f, all(vec2<bool>(false, true)), true), Struct_1(-reverseBits(firstLeadingBit(vec3<i32>(u_input.a, 56507i, 0i))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(262f)))), 388f, _wgslsmith_f_op_f32(-725f + _wgslsmith_div_f32(-1717f, -1000f))), select(vec2<bool>(true, true), func_1().b.c, vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(183f, -1649f, 208f, -753f))))))));
    var var_1 = Struct_4(Struct_3(func_1(), vec2<u32>(u_input.e & u_input.e, _wgslsmith_dot_vec2_u32(var_0.a.a.a.xx, u_input.d.yw)) >> (vec2<u32>(u_input.e << (32117u % 32u), 1u ^ u_input.d.x) % vec2<u32>(32u)), select(select(var_0.a.c, select(vec4<bool>(true, true, var_0.a.c.x, var_0.c), vec4<bool>(var_0.e.c.x, var_0.c, false, false), vec4<bool>(var_0.c, var_0.d.x, var_0.d.x, true)), true), !vec4<bool>(var_0.e.c.x, true, var_0.e.c.x, false), var_0.d), Struct_1(var_0.a.d.a, var_0.e.b, var_0.d.wy, var_0.a.a.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1382f, 312f), 771f, var_0.c))), !(!(~var_0.a.a.a.x > 1u)), vec4<bool>(all(vec2<bool>(false && var_0.d.x, -977f == var_0.a.a.b.d.x)), (9450i | var_0.e.a.x) != (abs(var_0.e.a.x) & ~var_0.e.a.x), false, func_2(var_0.a.d.a.zx, var_0.a, u_input.d.wz).x), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.e.a.x, ~1184i, -var_0.a.a.b.a.x), ~var_0.a.d.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(var_0.a.a.b.d.wxy, var_0.e.d.xyy)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, var_0.a.a.b.d.x, 1042f))), select(func_2(-var_0.a.d.a.xy, var_0.a, vec2<u32>(21874u, 4294967295u)), vec2<bool>(true, true), var_0.a.d.c), var_0.a.a.b.d));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1().b.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.d.d.wyz)))));
    let var_3 = var_0.e.c.x;
    var_1 = Struct_4(Struct_3(func_1(), ~(~vec2<u32>(4294967295u, 0u) & var_1.a.a.a.yz), vec4<bool>(true, false, false, var_0.c || any(var_1.d)), func_1().b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * -1481f), -427f) * 1455f)), var_0.e.c.x, select(select(vec4<bool>(func_1().b.c.x, all(var_1.d.yyx), all(vec3<bool>(true, var_1.e.c.x, true)), true), var_0.d, !vec4<bool>(false, true, var_0.a.a.b.c.x, false)), !(!var_0.a.c), var_1.c), var_1.e);
    let var_4 = Struct_4(Struct_3(var_1.a.a, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), countOneBits(var_1.a.a.a.x)), !(!vec4<bool>(true, var_0.a.d.c.x, false, var_0.e.c.x)), var_1.e), -1000f, true, select(!(!select(var_1.d, vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, var_0.d.x))), var_1.d, var_0.c), func_1().b);
    var var_5 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, ~func_1().a.zy);
}

