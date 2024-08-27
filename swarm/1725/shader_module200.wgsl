struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    let var_0 = min(vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, arg_0, arg_0)), ~vec3<u32>(141982u, arg_0, arg_0)), ~(max(0u, 1u) ^ ~u_input.c.x), _wgslsmith_div_u32(1u, ~u_input.c.x), reverseBits(119044u)), vec4<u32>(arg_0, 1u, arg_0, arg_0) << (reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, arg_0, 0u), vec4<u32>(u_input.c.x, 67960u, arg_0, 39487u))) % vec4<u32>(32u)));
    global0 = max(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_1, abs(0i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1, 1i), vec3<i32>(1i, arg_1, -10947i))), select(vec2<i32>(39314i, arg_1), -(~vec2<i32>(global0.x, u_input.a)), !arg_3.yx)), vec2<i32>(abs(0i << (var_0.x % 32u)) | (arg_1 << (_wgslsmith_mult_u32(var_0.x, u_input.c.x) % 32u)), abs(firstTrailingBit(_wgslsmith_sub_i32(-67467i, 0i)))));
    global0 = firstLeadingBit(-(~((vec2<i32>(-1i, global0.x) | vec2<i32>(arg_1, u_input.a)) | -vec2<i32>(0i, 11723i))));
    global0 = vec2<i32>(global0.x, global0.x);
    let var_1 = Struct_1(select(select(vec4<bool>(any(vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), arg_3.x, any(vec2<bool>(arg_3.x, false)), all(arg_3.zz)), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), true), vec4<bool>(any(select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(true, true, true, false), true)), !arg_3.x, all(arg_3), true), !(!(!vec4<bool>(arg_3.x, arg_3.x, false, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -324f));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-_wgslsmith_mult_i32(2147483647i, global0.x), -36718i), ~vec2<i32>(u_input.a, ~countOneBits(u_input.a)));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(342f))) - arg_2))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f - -180f)), -949f)), _wgslsmith_f_op_f32(max(1000f, var_0))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_3.x), vec2<f32>(arg_2, arg_3.x)), arg_3.xw)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-243f, -177f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-363f + var_0), var_0)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_3.zz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, 1027f)))))));
    var var_2 = Struct_3(Struct_1(vec4<bool>(true, all(!arg_0.a.xwz), true, arg_0.a.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(8537u, u_input.a, 1317f, vec3<bool>(arg_0.a.x, false, arg_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0)))), -452f), arg_0, arg_0, arg_0);
    return Struct_3(var_2.e, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.ww), _wgslsmith_f_op_vec2_f32(trunc(var_2.b))), var_2.b))), Struct_1(select(var_2.e.a, vec4<bool>(true, !arg_0.a.x, false, arg_0.a.x == false), vec4<bool>(true, arg_0.a.x | true, any(vec4<bool>(var_2.e.a.x, false, true, arg_0.a.x)), arg_0.a.x))), var_2.c, Struct_1(vec4<bool>(true && all(vec4<bool>(false, false, var_2.e.a.x, arg_0.a.x)), arg_0.a.x, true, var_2.e.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> f32 {
    global0 = _wgslsmith_mult_vec2_i32(~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, -2147483647i), abs(vec2<i32>(global0.x, 0i))), vec2<i32>(16987i, _wgslsmith_clamp_i32(u_input.a, global0.x, 0i))), -select(-(vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(global0.x, global0.x)), (vec2<i32>(-14067i, u_input.a) | vec2<i32>(u_input.a, -1i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(u_input.a, 46750i), vec2<i32>(u_input.a, u_input.a)), arg_0.b.x >= _wgslsmith_f_op_f32(-665f + 141f)));
    var var_0 = Struct_2(u_input.c.x, _wgslsmith_clamp_i32(u_input.a >> (_wgslsmith_clamp_u32(u_input.c.x, ~u_input.c.x, 19239u) % 32u), -(~(u_input.a >> (u_input.b % 32u))), min(~u_input.a | firstTrailingBit(2147483647i), min(global0.x, select(-1i, 2147483647i, arg_1.x)))), _wgslsmith_add_vec2_i32(-(vec2<i32>(u_input.a, -1i) >> (u_input.c.xz % vec2<u32>(32u))), vec2<i32>(firstLeadingBit(u_input.a), -42962i >> (0u % 32u))) >> (firstLeadingBit(~_wgslsmith_clamp_vec2_u32(u_input.c.xx, vec2<u32>(u_input.b, 1u), vec2<u32>(1u, 75989u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 737f, arg_0.b.x, 1496f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 560f, arg_0.b.x, 529f) + vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), -778f, _wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x)))))), func_2(func_2(Struct_1(!arg_1), vec2<u32>(_wgslsmith_add_u32(0u, 62892u), ~34062u), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, -147f, arg_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 1581f, 312f, 334f)))).a, ~(~u_input.c.xy), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1082f, _wgslsmith_f_op_f32(f32(-1f) * -421f)) + 2589f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b.x, -1485f, -1240f, arg_0.b.x))), vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -122f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1007f, 2055f, arg_0.b.x, 881f), vec4<f32>(-1253f, -250f, arg_0.b.x, arg_0.b.x))) - vec4<f32>(1000f, arg_0.b.x, -1893f, arg_0.b.x)))).d);
    let var_1 = ~u_input.b;
    return var_0.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(true, true, _wgslsmith_f_op_f32(-758f - -1260f) > _wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<bool>(true, true, false, false)), vec2<u32>(4294967295u, 8582u), -1118f, vec4<f32>(-768f, -1538f, -954f, 1804f)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true))), true));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-550f, _wgslsmith_f_op_f32(ceil(-467f)))) - 619f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-994f))))) - -571f));
    var var_2 = Struct_2(1u, -_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-11385i, u_input.a, 12033i), vec3<i32>(global0.x, global0.x, global0.x)), ~max(u_input.a, 0i)), select(-_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, 1i), vec2<i32>(-10675i, u_input.a)), -(~vec2<i32>(u_input.a, global0.x) | firstLeadingBit(vec2<i32>(-31597i, 25327i))), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1180f, -634f, var_1.x, 590f) + vec4<f32>(647f, -1275f, var_1.x, -457f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1129f, var_1.x, 559f, 1265f)))), vec4<f32>(-1000f, var_1.x, _wgslsmith_f_op_f32(func_3(u_input.b, -39853i, var_1.x, !vec3<bool>(var_0.a.x, false, true))), 1290f), var_0.a)), func_2(Struct_1(var_0.a), u_input.c.xy, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1020f, var_1.x, -434f), vec4<f32>(-1000f, 1211f, 2412f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1349f, 374f, var_1.x, var_1.x)))))).c);
    let var_3 = global0.x;
    var var_4 = select(var_0.a.wxy, !vec3<bool>(var_0.a.x, any(vec2<bool>(true, var_0.a.x)), true), false && any(select(var_0.a.yyy, vec3<bool>(var_2.e.a.x, var_2.e.a.x, var_0.a.x), vec3<bool>(var_2.e.a.x, false, var_2.e.a.x))));
    return Struct_2(var_2.a, _wgslsmith_add_i32(55207i, 1i), -vec2<i32>(-min(2147483647i, global0.x), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.d + var_2.d) * _wgslsmith_f_op_vec4_f32(-var_2.d)))), Struct_1(func_2(Struct_1(select(var_2.e.a, vec4<bool>(false, var_2.e.a.x, var_4.x, var_0.a.x), vec4<bool>(false, true, false, false))), vec2<u32>(1u, 1u), var_2.d.x, var_2.d).c.a));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_3 {
    global0 = -reverseBits(vec2<i32>(-52934i, arg_0.c.x) >> (max(u_input.c.yz, u_input.c.xx) % vec2<u32>(32u))) << (~u_input.c.zx % vec2<u32>(32u));
    return func_2(Struct_1(!func_2(Struct_1(arg_3.a.a), countOneBits(u_input.c.xy), arg_3.b.x, _wgslsmith_f_op_vec4_f32(abs(arg_0.d))).c.a), vec2<u32>(arg_0.a, ~(u_input.b >> (0u % 32u))), -924f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d - vec4<f32>(arg_3.b.x, arg_0.d.x, -604f, -742f)) * vec4<f32>(_wgslsmith_div_f32(arg_3.b.x, -1680f), _wgslsmith_f_op_f32(-1412f - arg_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(-arg_0.d.x)))));
}

fn func_6(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global0 = abs(select(vec2<i32>(-2147483647i, global0.x), ~(vec2<i32>(-1i) * -vec2<i32>(global0.x, u_input.a)), true));
    var var_0 = Struct_2(u_input.b >> (_wgslsmith_clamp_u32(8823u, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, u_input.b), arg_0), ~countOneBits(19000u)) % 32u), ~0i, ~vec2<i32>(31203i, global0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1093f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_1.b.x)), arg_1.b.x, false)), arg_1.b.x, _wgslsmith_f_op_f32(-func_5(Struct_2(11351u, u_input.a, vec2<i32>(global0.x, global0.x), vec4<f32>(arg_1.b.x, 185f, -751f, arg_1.b.x), arg_1.e), arg_1.d.a, vec3<i32>(u_input.a, -2147483647i, 11279i), Struct_3(arg_1.c, vec2<f32>(313f, 328f), arg_1.e, arg_1.d, arg_1.a)).b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-745f, arg_1.b.x, arg_1.b.x, 1330f) - vec4<f32>(-1304f, arg_1.b.x, arg_1.b.x, arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(794f, -2305f, arg_1.b.x, arg_1.b.x), vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, false, arg_1.e.a.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 425f, -414f, -697f)), !vec4<bool>(arg_1.d.a.x, false, arg_1.d.a.x, false))))), func_1().e);
    global0 = -vec2<i32>(min(global0.x, var_0.b), u_input.a) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(func_1().c, ~_wgslsmith_div_vec2_i32(var_0.c, var_0.c)), vec2<i32>(abs(select(u_input.a, -2147483647i, false)), -2942i));
    global0 = ~var_0.c;
    var var_1 = var_0.d.wyy;
    return func_1().e;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(!arg_0.a.a);
    var var_1 = Struct_1(!vec4<bool>(arg_2.a.x, (2147483647i & arg_1.b) == -1i, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, arg_1.a, 51580u), vec4<u32>(arg_1.a, 0u, 1u, u_input.b)) > arg_1.a, arg_0.d.a.x));
    global0 = arg_1.c;
    var var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(firstTrailingBit(countOneBits(vec2<u32>(u_input.c.x, 29278u))), ~u_input.c.yz), _wgslsmith_mult_i32(abs(~(-49329i)), reverseBits((arg_1.b | arg_1.b) >> (select(116229u, 66824u, var_1.a.x) % 32u))), arg_1.c, arg_1.d, arg_1.e);
    var_2 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(~_wgslsmith_mult_vec2_i32(vec2<i32>(31064i, global0.x) << (vec2<u32>(u_input.b, 79707u) % vec2<u32>(32u)), select(vec2<i32>(11013i, 34586i), vec2<i32>(32268i, global0.x), vec2<bool>(true, false))), -_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, u_input.a), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-26069i, u_input.a))), !vec2<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(false, true)))) & vec2<i32>(reverseBits(global0.x), global0.x);
    var var_0 = func_7(Struct_3(Struct_1(vec4<bool>(u_input.a <= global0.x, false, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-373f, -1308f), vec2<f32>(278f, -695f)))), Struct_1(vec4<bool>(true, true, false, any(vec3<bool>(false, true, true)))), func_6(u_input.c.x, func_5(func_1(), vec4<bool>(true, true, true, true), -vec3<i32>(1i, global0.x, -17463i), func_2(Struct_1(vec4<bool>(false, false, false, false)), vec2<u32>(4294967295u, 87237u), -416f, vec4<f32>(-350f, 1000f, 677f, -852f)))), func_6(43195u, Struct_3(func_6(u_input.c.x, Struct_3(Struct_1(vec4<bool>(true, true, true, true)), vec2<f32>(-323f, -1998f), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, -600f)), Struct_1(vec4<bool>(true, true, false, true)), func_2(Struct_1(vec4<bool>(false, false, true, true)), vec2<u32>(u_input.c.x, u_input.b), 333f, vec4<f32>(1135f, -745f, -831f, -635f)).a, func_2(Struct_1(vec4<bool>(true, true, false, true)), vec2<u32>(4294967295u, u_input.b), -250f, vec4<f32>(-1910f, -244f, 813f, 1000f)).a))), Struct_2(0u, global0.x, _wgslsmith_mod_vec2_i32(select(~vec2<i32>(-28509i, global0.x), vec2<i32>(global0.x, u_input.a), vec2<bool>(true, true)), ~firstTrailingBit(vec2<i32>(u_input.a, -19948i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1211f, 134f, -917f, 1294f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, -1293f, 992f, 878f)), all(vec3<bool>(true, true, true))))), func_6(69261u, func_2(Struct_1(vec4<bool>(true, false, false, true)), _wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(4294967295u, u_input.b)), _wgslsmith_f_op_f32(floor(373f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(512f, 415f, 213f, 548f)))))), func_2(func_2(func_6(abs(51508u), func_2(Struct_1(vec4<bool>(true, true, false, true)), vec2<u32>(u_input.b, u_input.b), -1001f, vec4<f32>(1018f, 368f, -774f, -374f))), abs(vec2<u32>(u_input.c.x, 40835u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) * _wgslsmith_f_op_f32(floor(865f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -995f), _wgslsmith_f_op_f32(f32(-1f) * -1800f), -2155f, _wgslsmith_f_op_f32(ceil(-560f)))).a, u_input.c.xy, _wgslsmith_f_op_f32(1760f + 207f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-377f, -381f, _wgslsmith_f_op_f32(f32(-1f) * -2489f), _wgslsmith_f_op_f32(715f * -2525f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1223f, 1605f, -260f, 237f)))))).a, Struct_3(Struct_1(vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-680f, _wgslsmith_f_op_f32(trunc(-1184f)))), func_2(func_1().e, reverseBits(u_input.c.xz) >> (~vec2<u32>(1u, 72096u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2362f)) - _wgslsmith_f_op_f32(abs(536f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(231f, 656f, -714f, -273f), vec4<f32>(287f, -1659f, 1000f, -1064f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1703f, 559f, 1032f, -828f) - vec4<f32>(-2749f, 496f, -207f, -262f))))).a, func_6(56848u, Struct_3(func_6(u_input.c.x, Struct_3(Struct_1(vec4<bool>(false, false, true, true)), vec2<f32>(746f, 1000f), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1573f, -794f)), func_5(Struct_2(4666u, 2147483647i, vec2<i32>(-28312i, u_input.a), vec4<f32>(2684f, 1780f, -1723f, -206f), Struct_1(vec4<bool>(false, true, true, false))), vec4<bool>(false, false, true, true), vec3<i32>(1i, -1i, 9968i), Struct_3(Struct_1(vec4<bool>(true, true, true, true)), vec2<f32>(-974f, -460f), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)))).e, Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)))), Struct_1(vec4<bool>(true, true, true, true))));
    var_0 = Struct_2(var_0.a >> ((abs(u_input.b) & ~(~37806u)) % 32u), u_input.a, var_0.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-func_7(Struct_3(var_0.e, vec2<f32>(-1000f, -503f), var_0.e, Struct_1(vec4<bool>(var_0.e.a.x, true, true, false)), var_0.e), Struct_2(28300u, global0.x, vec2<i32>(u_input.a, u_input.a), vec4<f32>(554f, var_0.d.x, var_0.d.x, 1431f), var_0.e), var_0.e, Struct_3(Struct_1(var_0.e.a), var_0.d.zy, Struct_1(var_0.e.a), var_0.e, var_0.e)).d.x), _wgslsmith_div_f32(-1511f, _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1827f, var_0.d.x)) * _wgslsmith_f_op_f32(-var_0.d.x)), 1165f))), Struct_1(func_5(Struct_2(~32185u, 1i, vec2<i32>(var_0.c.x, var_0.c.x), vec4<f32>(var_0.d.x, var_0.d.x, -1612f, 1133f), Struct_1(vec4<bool>(var_0.e.a.x, var_0.e.a.x, var_0.e.a.x, false))), vec4<bool>(true, false, false, !var_0.e.a.x), ~max(vec3<i32>(1i, 2147483647i, global0.x), vec3<i32>(36174i, u_input.a, var_0.b)), Struct_3(Struct_1(vec4<bool>(var_0.e.a.x, var_0.e.a.x, false, var_0.e.a.x)), vec2<f32>(-349f, -430f), func_2(var_0.e, vec2<u32>(4294967295u, var_0.a), var_0.d.x, vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)).d, var_0.e, Struct_1(var_0.e.a))).a.a));
    var var_1 = true;
    global0 = vec2<i32>(_wgslsmith_add_i32(~(~var_0.b) ^ 17139i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-66844i, 37530i, var_0.c.x, 29934i), vec4<i32>(-16529i, global0.x, var_0.c.x, u_input.a)), vec4<i32>(-45950i, 0i, var_0.b, global0.x) >> (vec4<u32>(45657u, u_input.b, var_0.a, u_input.b) % vec4<u32>(32u))) | (u_input.a << (15867u % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(u_input.a << (10778u % 32u)), u_input.a), firstLeadingBit(vec2<i32>(-var_0.c.x, min(u_input.a, 2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.zyz);
}

