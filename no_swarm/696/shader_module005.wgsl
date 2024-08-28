struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = vec2<bool>(u_input.c <= _wgslsmith_dot_vec2_i32(u_input.b >> ((u_input.a.xz & vec2<u32>(1u, arg_0.b)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_0.d, arg_0.d), vec2<i32>(2147483647i, arg_0.d), vec2<bool>(arg_0.a, arg_0.a)), vec2<i32>(u_input.b.x, arg_0.d))), true);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.x))), arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x))))), arg_0, _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.x + -1220f)))))), arg_0.c.x);
    let var_3 = -(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.d, var_1.b.d) << (vec2<u32>(var_1.b.b, arg_0.b) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(-38221i, var_1.b.d))), u_input.c) << (_wgslsmith_sub_u32(98797u, arg_0.b) % 32u));
    let var_4 = reverseBits(-_wgslsmith_add_i32(max(arg_0.d, 0i) & var_3, u_input.b.x));
    return !(!select(select(vec4<bool>(false, true, false, arg_0.a), vec4<bool>(true, true, true, true), !var_1.b.a), select(!vec4<bool>(var_0.x, arg_0.a, false, false), !vec4<bool>(true, var_0.x, var_1.b.a, false), !arg_0.a), vec4<bool>(var_1.b.a, arg_0.d < u_input.b.x, true, false)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_4 {
    var var_0 = -vec4<i32>(6448i, arg_3 >> ((4294967295u | arg_2.x) % 32u), arg_1.x, arg_3);
    var var_1 = vec2<bool>(true, true);
    var_1 = !vec2<bool>(all(func_3(Struct_2(true, u_input.a.x, vec3<f32>(arg_0.x, arg_0.x, -161f), arg_3))), all(vec2<bool>(func_3(Struct_2(var_1.x, arg_2.x, vec3<f32>(arg_0.x, arg_0.x, -827f), var_0.x)).x, true)));
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, _wgslsmith_clamp_i32(min(1i, _wgslsmith_mult_i32(arg_3, arg_3)), -25778i, -1i), ~(-7204i), ~_wgslsmith_dot_vec2_i32(reverseBits(var_0.xz), vec2<i32>(var_0.x, -52605i))), vec4<i32>(arg_1.x, arg_3, ~(-2147483647i), (4313i ^ firstLeadingBit(arg_1.x)) << (1u % 32u)));
    let var_2 = Struct_1(~(-firstLeadingBit(firstLeadingBit(u_input.b))), vec2<i32>(arg_3, 0i), _wgslsmith_mod_i32(50008i, max(arg_1.x, _wgslsmith_div_i32(~var_0.x, _wgslsmith_mod_i32(2147483647i, arg_1.x)))), 629f, !(func_3(Struct_2(true, u_input.a.x, vec3<f32>(821f, 208f, 1000f), -2147483647i)).x | true));
    return Struct_4(Struct_1(vec2<i32>(-4924i, arg_3), vec2<i32>(2358i, countOneBits(-9059i)), u_input.c, _wgslsmith_f_op_f32(ceil(var_2.d)), -2147483647i != ~max(1i, u_input.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(77885u, countOneBits(31129u)), ~u_input.a.x << (u_input.a.x % 32u)), ~reverseBits(vec2<u32>(arg_2.x, arg_2.x) << (arg_2.xx % vec2<u32>(32u)))), _wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1635f - 164f))) > -626f, all(vec4<bool>(_wgslsmith_f_op_f32(-var_2.d) < _wgslsmith_f_op_f32(trunc(2355f)), true, var_2.e, true)));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> vec3<f32> {
    let var_0 = Struct_1(u_input.b, -(~u_input.b), select(1i, arg_1.a.c, false || arg_3), arg_1.a.d, true);
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_1.b, u_input.a.x, 37976u, arg_2.b.b) << (vec4<u32>(23142u, arg_1.b, arg_1.b, arg_1.b) % vec4<u32>(32u)), vec4<u32>(46474u, u_input.a.x, arg_2.b.b, 4294967295u), func_3(arg_2.b)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, arg_2.b.b, arg_2.b.b), vec4<u32>(52165u, 95353u, 38798u, 4294967295u)), ~vec4<u32>(1u, arg_1.b, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_1.b, 0u), u_input.a.yx, vec2<bool>(arg_2.b.a, false)) | abs(u_input.a.xx), u_input.a.yx) ^ arg_2.b.b);
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(-382f)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1303f + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d))))) - 679f));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c.x, -1000f, 816f, arg_1.c.x))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(sign(arg_1.c.x)), _wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x), arg_1.c.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2631f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-655f, var_0.x)), 1770f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, 744f)) * vec2<f32>(-663f, arg_1.c.x)))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_0.x, var_1.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-1722f, var_0.x), _wgslsmith_f_op_f32(max(arg_1.c.x, -1820f)), 1000f, -1091f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c.x, -1282f, var_0.x, arg_1.c.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_0.x, 394f, arg_1.c.x), vec4<f32>(-300f, -274f, -621f, var_1.x)), any(vec3<bool>(false, false, true))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-169f, arg_1.c.x), _wgslsmith_f_op_f32(-var_0.x), 737f, _wgslsmith_div_f32(var_1.x, arg_1.c.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1676f, -375f, -474f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-759f, var_1.x, var_1.x, -335f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(565f, arg_1.c.x, var_0.x, 347f) - vec4<f32>(-1600f, -1000f, var_0.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1888f, var_1.x, var_0.x, -2509f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -428f, -1709f, -602f))), !select(vec4<bool>(false, false, arg_3, arg_2), vec4<bool>(arg_3, arg_2, false, arg_2), arg_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(step(var_1.x, -1668f)), var_1.x)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-665f, 2702f, var_0.x, 2160f) + _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 2191f, 606f, var_0.x), vec4<f32>(2692f, -337f, 784f, -1000f))))))));
    return Struct_4(Struct_1(~(-abs(vec2<i32>(2147483647i, 1i))), min(~vec2<i32>(u_input.c, -11869i) | firstLeadingBit(vec2<i32>(1i, -2147483647i)), vec2<i32>(arg_1.d, _wgslsmith_mod_i32(u_input.c, -47073i))), ~u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.x, var_1.x)))) - 569f), all(!func_3(Struct_2(arg_2, 29305u, arg_1.c, u_input.d)).yzx)), ~arg_1.b | arg_0, true || any(vec2<bool>(true, true)), all(!vec4<bool>(1i != arg_1.d, true, any(vec3<bool>(arg_3, arg_3, false)), true)));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = func_5(u_input.a.x, Struct_2(true, u_input.a.x >> (max(~1u, 0u) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(sign(1603f)), func_2(vec3<f32>(621f, 1055f, -1783f), u_input.b, vec4<u32>(0u, u_input.a.x, 20802u, u_input.a.x), u_input.c), Struct_3(vec4<f32>(-1129f, -1579f, 980f, -1149f), Struct_2(false, 21996u, vec3<f32>(512f, -633f, -169f), u_input.c), 200f), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, -219f, 1169f)) - vec3<f32>(1f, 1f, 1f))), -18272i), any(!func_3(Struct_2(true, 0u, vec3<f32>(-1000f, -289f, -428f), arg_0))) && all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2055f * -1307f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1735f, -538f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(424f))))));
    let var_1 = ~countOneBits(~(~vec4<u32>(28688u, var_0.b, u_input.a.x, 0u) >> (vec4<u32>(0u, 4294967295u, 1u, u_input.a.x) % vec4<u32>(32u))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, _wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-648f, var_0.a.d)), _wgslsmith_f_op_f32(var_0.a.d - _wgslsmith_div_f32(664f, 575f))) - vec4<f32>(187f, var_0.a.d, var_0.a.d, _wgslsmith_f_op_f32(1000f - var_0.a.d))), Struct_2(~_wgslsmith_add_u32(1u, var_1.x) <= ~_wgslsmith_div_u32(var_1.x, var_1.x), 1u, vec3<f32>(var_0.a.d, func_5(4294967295u, Struct_2(var_0.a.e, u_input.a.x, vec3<f32>(var_0.a.d, 1000f, -677f), var_0.a.b.x), true, any(vec4<bool>(true, true, false, var_0.a.e))).a.d, _wgslsmith_f_op_f32(329f - _wgslsmith_f_op_f32(step(354f, var_0.a.d)))), ~(_wgslsmith_mod_i32(var_0.a.c, var_0.a.c) << (~1u % 32u))), 1560f);
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(-var_2.b.c), var_0.a.b, firstTrailingBit(vec4<u32>(~77942u, _wgslsmith_mod_u32(func_2(vec3<f32>(var_0.a.d, 2011f, var_0.a.d), vec2<i32>(var_0.a.a.x, 2147483647i), vec4<u32>(1u, u_input.a.x, 0u, var_2.b.b), 13651i).b, 1u), 22903u, select(~var_0.b, abs(var_2.b.b), select(true, true, var_0.a.e)))), 10727i);
    var var_3 = vec2<i32>(1i, 39377i);
    return !all(func_3(Struct_2(!var_2.b.a, max(var_2.b.b, 44711u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(313f, var_2.a.x, var_2.b.c.x), vec3<f32>(var_0.a.d, -2077f, var_0.a.d), var_0.c)), _wgslsmith_add_i32(var_3.x, -1i))).zxw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(-1i > _wgslsmith_add_i32(u_input.c, u_input.c), func_1(-53164i), func_2(vec3<f32>(1788f, -335f, -1708f), max(u_input.b, vec2<i32>(u_input.b.x, -37221i)), abs(vec4<u32>(u_input.a.x, 55273u, 4294967295u, u_input.a.x)), 65439i).c, false));
    var_0 = !vec4<bool>((var_0.x && !var_0.x) | any(!vec4<bool>(true, false, var_0.x, var_0.x)), true, true, !var_0.x);
    var_0 = vec4<bool>(true, true & func_5(~u_input.a.x, Struct_2(any(var_0.yww), u_input.a.x << (27316u % 32u), vec3<f32>(1000f, -577f, -241f), u_input.d), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(465f, -1000f, 383f) + vec3<f32>(-799f, -663f, 1280f)), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(1i, 26548i)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -9371i).d, !(var_0.x || true)).d, false, all(func_3(Struct_2(!var_0.x, u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-216f, 311f, -381f)), u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec4<i32>(u_input.c, -17284i, u_input.d, u_input.b.x) | firstLeadingBit(vec4<i32>(-47854i, 1i, u_input.c, u_input.b.x))), ~u_input.c);
}

