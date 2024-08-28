struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(732f, 1000f)) * -1306f), 678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(154f)), -469f))), _wgslsmith_f_op_f32(select(-1058f, _wgslsmith_f_op_f32(f32(-1f) * -761f), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)))));
    let var_1 = Struct_1(min(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.d, -10816i), u_input.d), u_input.d, -(~15580i)), u_input.d));
    var var_2 = u_input.a;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(min(~vec3<i32>(1i, -35708i, var_1.a), vec3<i32>(var_1.a, 1i, 1i)), vec3<i32>(~(var_1.a & var_1.a), ~u_input.d, -var_1.a)));
    var_2 = ~(~vec2<u32>(~(104685u << (0u % 32u)), _wgslsmith_mod_u32(30983u, 4294967295u)));
    return vec3<bool>(!all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), all(vec4<bool>(false, false, false, true)))), true, true);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f)) + _wgslsmith_f_op_f32(-650f + _wgslsmith_f_op_f32(-1000f * 274f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) - _wgslsmith_f_op_f32(-992f - -369f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-663f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-118f)) - -1000f)), _wgslsmith_f_op_f32(520f * -1493f))));
    var var_1 = vec4<i32>(u_input.d, -u_input.d, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-13487i, -639i, -6535i), select(vec3<i32>(arg_1, -26010i, -2147483647i), vec3<i32>(32791i, 0i, arg_0.a), arg_2))), -select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, arg_1, -1i), vec3<i32>(arg_1, u_input.d, u_input.d)), vec3<i32>(4893i, 2147483647i, arg_1), true)), u_input.d);
    var var_2 = select(!vec3<bool>(true, all(!arg_2), func_3().x), vec3<bool>(any(!(!arg_2)), true, false), !arg_2.x);
    var var_3 = ~firstTrailingBit(4294967295u) ^ ~reverseBits(43947u);
    var var_4 = !(!func_3().zz);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1780f * var_0.x))))), true)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: u32) -> bool {
    let var_0 = any(select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))), all(vec3<bool>(true, true, true)), false), !(any(vec3<bool>(true, true, false)) | true)));
    var var_1 = max(5172i, u_input.d);
    var_1 = 1i;
    var_1 = ~(-arg_0.a);
    let var_2 = arg_1;
    return !(!(_wgslsmith_f_op_f32(var_2 * var_2) != var_2) & all(!vec4<bool>(var_0, var_0, var_0, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1062f, 934f, 287f, 779f)))))));
    var var_1 = Struct_1(firstLeadingBit(u_input.d));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(133f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -530f))))) * _wgslsmith_f_op_f32(-var_0.x));
    let var_3 = func_5(Struct_1(-1i), _wgslsmith_f_op_f32(func_4(Struct_1(select(var_1.a, -2147483647i, false) << (_wgslsmith_add_u32(u_input.a.x, 16688u) % 32u)), ~1i, select(vec3<bool>(true, true, false), select(func_3(), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true))), ~u_input.c.zxx, firstTrailingBit(u_input.c.x));
    var var_4 = !(!vec4<bool>(false, var_3, var_3, var_3));
    return Struct_1(u_input.d);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = -1386f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1056f);
    var var_1 = Struct_1(arg_0.a);
    var_0 = 863f;
    let var_2 = select(arg_2, !arg_1.xx, true);
    return Struct_1(~(-arg_0.a));
}

fn func_7(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(min(firstLeadingBit(2787i) | -max(arg_0.x, arg_2.a), _wgslsmith_mult_i32(-arg_0.x, arg_0.x)));
    var_0 = func_6(func_6(func_2(), vec3<bool>(any(vec3<bool>(false, true, false)) | true, true, false), func_3().yx, !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true))), select(func_3(), vec3<bool>(false, false, true), select(!func_3(), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), all(vec4<bool>(true, true, true, true)))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true), vec2<bool>(true, true), true), vec4<bool>(!func_5(arg_2, -716f, vec3<u32>(63057u, u_input.b.x, 44336u), u_input.c.x) || any(vec3<bool>(true, true, true)), (func_3().x | true) & (any(vec3<bool>(true, false, false)) && true), 21037u != _wgslsmith_clamp_u32(countOneBits(28588u), _wgslsmith_mult_u32(0u, 10685u), 6587u), true));
    var_0 = func_6(func_6(Struct_1(2147483647i), vec3<bool>(true, (arg_2.a > var_0.a) || select(false, false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), !(u_input.a.x == 29904u)), vec4<bool>(true, true, true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)))), !(!func_3()), select(vec2<bool>(true, func_5(func_6(arg_2, vec3<bool>(false, true, false), vec2<bool>(false, false), vec4<bool>(true, false, false, false)), -507f, vec3<u32>(u_input.b.x, 1u, u_input.a.x), ~667u)), select(vec2<bool>(true, false), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), func_3().xz), vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)) & any(vec3<bool>(true, true, false)), true, false));
    var_0 = func_2();
    var_0 = arg_2;
    return func_6(Struct_1(-_wgslsmith_mod_i32(arg_2.a, -1i)), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), func_3())), vec2<bool>(true, !(!select(false, true, true))), select(select(vec4<bool>(-328f >= arg_1, select(true, true, false), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true), all(vec3<bool>(true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(!func_5(Struct_1(arg_0.x), arg_1, vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), u_input.b.x), all(vec2<bool>(true, true)), all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)))));
}

fn func_8(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.yz, ~_wgslsmith_add_vec2_u32(~u_input.b.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), u_input.b.yy)), vec2<u32>(reverseBits(15693u), _wgslsmith_mod_u32(~u_input.a.x, u_input.b.x))), vec2<u32>(_wgslsmith_div_u32(35186u, (u_input.b.x | 4294967295u) >> (min(3935u, u_input.c.x) % 32u)), _wgslsmith_add_u32(~reverseBits(u_input.b.x), 63186u)));
    let var_1 = reverseBits(_wgslsmith_mult_vec4_i32(min(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 2147483647i, -1i, arg_0.a), vec4<i32>(u_input.d, u_input.d, 4779i, arg_0.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -18882i, -1575i, arg_0.a), reverseBits(vec4<i32>(1i, 2147483647i, 21777i, arg_0.a)))), ~(-(~vec4<i32>(-1i, u_input.d, u_input.d, 0i)))));
    let var_2 = -arg_0.a;
    let var_3 = vec3<bool>(true, true, func_3().x);
    var var_4 = var_3.x;
    return arg_0;
}

fn func_1() -> vec2<bool> {
    var var_0 = func_8(func_7(~_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 37475i, u_input.d, -69095i), vec4<i32>(-1i, -2147483647i, u_input.d, -39585i)), 2294f, func_6(func_2(), vec3<bool>(true, true, true), vec2<bool>(true, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1401f, 2113f) * vec2<f32>(-494f, -1478f)))))));
    let var_2 = select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)))), !vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), false, all(vec4<bool>(true, true, true, true)), true), false);
    let var_3 = Struct_1(u_input.d);
    let var_4 = Struct_1(~(-(var_0.a ^ func_6(Struct_1(71303i), var_2.xzz, var_2.ww, var_2).a)));
    return var_2.yy;
}

fn func_9(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_5(func_7(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.d, arg_0, 0i, arg_0), vec4<i32>(arg_0, arg_2.a, u_input.d, -25786i)), vec4<i32>(u_input.d, arg_2.a, u_input.d, -9520i) << (vec4<u32>(u_input.a.x, 37386u, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(-58482i, u_input.d, u_input.d, arg_2.a)) ^ (vec4<i32>(arg_2.a, arg_2.a, arg_2.a, -1i) | _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_2.a, arg_0, -7225i), vec4<i32>(2214i, arg_0, arg_0, -1i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-264f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1736f)))), func_2()), -180f, ~u_input.b.xwy, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.c.x, 4294967295u) ^ u_input.b.xx), u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(323f, -2369f), _wgslsmith_f_op_f32(716f * 448f), -2676f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, 160f, -1720f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(184f, 2758f, -928f) - vec3<f32>(-464f, 1000f, -1563f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-663f, -1749f, 1215f))), vec3<bool>(arg_1.x, arg_1.x, var_0))))), vec3<f32>(1000f, 271f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_4(func_2(), i32(-1i) * -38171i, vec3<bool>(arg_1.x, var_0, var_0)))))));
    var var_2 = -3486i;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zz * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xz + var_1.zy), vec2<f32>(var_1.x, var_1.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1045f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zz * var_1.zx)), _wgslsmith_f_op_vec2_f32(-var_1.xz))));
    var_3 = var_1.xy;
    return Struct_1(arg_0);
}

fn func_10(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), func_1())));
    let var_1 = true;
    let var_2 = Struct_1(arg_2.a);
    return arg_1;
}

fn func_11(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_10(Struct_1(arg_1.a), func_10(func_9(~6792i ^ (29340i << (u_input.b.x % 32u)), vec2<bool>(true, true), Struct_1(-1i)), arg_0, arg_1), func_8(Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.d), vec2<i32>(2147483647i, -73456i)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -622f);
    let var_2 = firstTrailingBit(~vec4<u32>(~(~u_input.a.x), min(u_input.a.x, u_input.b.x) | 40350u, 0u, u_input.a.x));
    var_0 = func_8(arg_0);
    var var_3 = Struct_1(-1i);
    return Struct_1(~_wgslsmith_add_i32(~(-63045i), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = u_input.d;
    var var_2 = u_input.c.x;
    var var_3 = func_11(func_10(Struct_1(~u_input.d), func_9(-1i, func_1(), func_6(Struct_1(u_input.d), vec3<bool>(true, true, false), vec2<bool>(false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)))), Struct_1(var_1)), func_2());
    var_3 = Struct_1(var_3.a);
    var_2 = 95113u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(firstLeadingBit(abs(vec4<i32>(u_input.d, -12763i, var_1, var_3.a))))), ~abs(firstTrailingBit(~vec4<u32>(u_input.b.x, 0u, var_0, 82570u))), countOneBits(abs(var_1)), u_input.b.www, countOneBits(_wgslsmith_div_i32(~(var_3.a << (var_0 % 32u)), ~func_6(Struct_1(var_1), vec3<bool>(true, true, true), vec2<bool>(true, true), vec4<bool>(false, true, false, true)).a)));
}

