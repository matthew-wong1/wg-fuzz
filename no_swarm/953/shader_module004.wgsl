struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = any(select(select(select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x), arg_0.x)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(false, true, false, arg_0.x)), select(vec4<bool>(false, true, false, arg_0.x), vec4<bool>(true, true, false, true), arg_0.x), select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x), true)), all(vec4<bool>(false, false, arg_0.x, false))), select(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true), vec4<bool>(all(select(arg_0.yy, arg_0.zz, vec2<bool>(arg_0.x, arg_0.x))), any(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x, ~u_input.a >= 1u)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-968f, -1206f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-793f, 136f, true)), _wgslsmith_div_f32(-767f, -1380f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1803f, -1000f), vec2<f32>(-1000f, -2695f))) + vec2<f32>(380f, -458f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(140f, -1058f), -1i < u_input.b))))));
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(~22987u, ~u_input.a, ~1u), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 1u, 43642u) ^ vec3<u32>(u_input.a, 4294967295u, 1378u), vec3<u32>(u_input.a, u_input.a, 121090u)), vec3<u32>(~55262u, ~_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 33941u, 56532u), false), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 18828u, 48498u, u_input.a), vec4<u32>(u_input.a, 49190u, 1u, u_input.a))))), ~abs(min(~vec3<u32>(u_input.a, 72417u, u_input.a), ~vec3<u32>(u_input.a, 0u, 0u))));
    var var_3 = Struct_1((u_input.b >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(var_2), var_2 & var_2) % 32u)) ^ u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-289f))) * _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(var_1.b.x * var_1.a))) - _wgslsmith_f_op_f32(abs(var_1.a))));
    var_3 = Struct_1(u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -370f));
    return u_input.a <= 0u;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    var var_0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-986f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_1.b) * -681f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f) - _wgslsmith_f_op_f32(arg_1.b - arg_1.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2560f - -261f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b + 1001f), arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) - _wgslsmith_f_op_f32(round(-335f))));
    let var_1 = _wgslsmith_add_vec2_i32(-(-(~vec2<i32>(28592i, -22240i)) & vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, 23674i), vec2<i32>(2147483647i, 38409i)), abs(arg_1.a))), _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(arg_2, 0i)), -vec2<i32>(-10246i, 2147483647i)), vec2<i32>(-_wgslsmith_sub_i32(-46909i, u_input.b), arg_1.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), arg_1.b, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1067f - arg_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(min(212f, -641f))), -300f)), -425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-arg_1.b))), arg_1.b)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(var_0.x, -1255f, arg_3.x))) * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-944f - var_0.x)))) - var_0.x), arg_1.b, 272f);
    let var_2 = _wgslsmith_f_op_f32(1271f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(657f - var_0.x) - -656f));
    return u_input.a;
}

fn func_2() -> vec3<i32> {
    let var_0 = -u_input.c;
    var var_1 = Struct_2(Struct_1(var_0, -581f));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)), 252f)));
    var_1 = Struct_2(Struct_1(1i, var_1.a.b));
    let var_3 = _wgslsmith_mod_u32(func_4(28430i, Struct_1(-u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + var_1.a.b))), select(var_1.a.a, var_1.a.a, false), !vec3<bool>(false, false, func_3(vec3<bool>(true, true, true)))), _wgslsmith_div_u32(17646u, u_input.a));
    return vec3<i32>(~abs(1i), var_1.a.a, 1i) & ~select(vec3<i32>(abs(var_1.a.a), countOneBits(u_input.c), 61861i), reverseBits(vec3<i32>(15676i, -22969i, 2147483647i)), true | any(vec2<bool>(true, false)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec4<f32>) -> bool {
    var var_0 = -(~vec4<i32>(_wgslsmith_clamp_i32(-72220i, _wgslsmith_div_i32(arg_0.x, -1i), u_input.c), -arg_0.x, u_input.b, -21186i));
    var var_1 = !select(arg_1.xww, select(!vec3<bool>(true, arg_1.x, arg_1.x), arg_1.xyw, vec3<bool>(true, false, -392f != arg_3.x)), func_3(vec3<bool>(any(vec4<bool>(false, true, true, false)), !arg_1.x, true)));
    var_1 = select(select(arg_1.wxx, !vec3<bool>(func_3(vec3<bool>(false, var_1.x, false)), true, true), any(select(select(vec2<bool>(var_1.x, false), var_1.zz, var_1.zy), select(arg_1.xy, arg_1.zx, arg_1.xx), arg_1.yw))), vec3<bool>(true, ~(~56146u) > ~u_input.a, false), arg_1.yyy);
    return (false | !(all(vec4<bool>(var_1.x, false, var_1.x, true)) & var_1.x)) || (any(!(!vec4<bool>(false, arg_1.x, false, false))) | false);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(1u, u_input.a);
    var var_1 = vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f - -526f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(370f + -619f))) < _wgslsmith_f_op_f32(step(-475f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(333f - -299f), _wgslsmith_f_op_f32(-694f - -2023f), !arg_2)))), func_5(select(-func_2(), vec3<i32>(~30063i, abs(arg_1.x), arg_1.x), vec3<bool>(arg_2, u_input.b >= u_input.b, arg_2)), !vec4<bool>(true, false, !arg_2, true), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -747f), vec2<f32>(492f, _wgslsmith_f_op_f32(742f + 120f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-531f, 467f, -568f, 837f) - vec4<f32>(912f, 1223f, -911f, 150f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1661f, 1001f, -1011f, 773f) + vec4<f32>(804f, -780f, 656f, -680f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -808f, -266f, 151f)))))));
    var var_2 = Struct_1(2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1339f))), -284f)));
    var_1 = select(vec3<bool>(!var_1.x, true, false), select(select(vec3<bool>(false, true, var_1.x), select(!vec3<bool>(arg_2, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, arg_2), vec3<bool>(arg_2, arg_2, true), false), any(vec2<bool>(true, arg_2))), !var_1.x), !vec3<bool>(arg_1.x >= -934i, true, true), any(!(!var_1.zy))), vec3<bool>(all(vec3<bool>(select(arg_2, arg_2, true), all(vec2<bool>(arg_2, var_1.x)), arg_2)), var_1.x && var_1.x, !select(func_3(vec3<bool>(arg_2, arg_2, arg_2)), true, var_1.x)));
    var var_3 = -1936f;
    return Struct_2(Struct_1(0i, -2537f));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_i32(u_input.b, -1i);
    let var_1 = func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, firstLeadingBit(51586u), arg_3, firstLeadingBit(~arg_3)), vec4<u32>(~(~3285u), arg_3, ~4294967295u, max(0u, arg_3 & arg_3))), min((vec3<i32>(-1i) * -vec3<i32>(arg_0.a.a, u_input.b, 7976i)) | -(~vec3<i32>(arg_0.a.a, arg_0.a.a, arg_0.a.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(48750i, arg_0.a.a, arg_0.a.a), ~vec3<i32>(arg_0.a.a, arg_0.a.a, 1i))), false);
    var var_2 = Struct_3(func_1(0u, vec3<i32>(i32(-1i) * -9073i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(1i, 1i)), 21687i), true).a.b, _wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, 779f), _wgslsmith_f_op_vec2_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(113f, arg_2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, var_1.a.b)), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, true)))), func_5(vec3<i32>(2147483647i, -28019i, 16722i) << (~vec3<u32>(arg_3, 4294967295u, arg_3) % vec3<u32>(32u)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))), Struct_3(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-413f, -617f) - arg_2)), vec4<f32>(-845f, var_1.a.b, _wgslsmith_f_op_f32(var_1.a.b * 816f), 1f)))));
    var_0 = _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_1.a.a, -1i, 10632i), firstLeadingBit(vec4<i32>(0i, 22196i, arg_0.a.a, 2681i))) ^ -firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, var_1.a.a, -7774i, arg_0.a.a), vec4<i32>(var_1.a.a, 9402i, 1i, 2147483647i))), vec4<i32>(1i, -30654i, var_1.a.a, _wgslsmith_mod_i32(u_input.b, 8874i)));
    var_2 = Struct_3(_wgslsmith_f_op_f32(arg_2.x * -366f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(arg_1)))))) - vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.b), arg_0.a.b)))));
    return firstLeadingBit(countOneBits(~(~abs(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 15190u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(func_6(func_1(u_input.a, -vec3<i32>(u_input.b, 2147483647i, u_input.c), true), vec2<f32>(-873f, _wgslsmith_f_op_f32(round(-984f))), vec2<f32>(_wgslsmith_f_op_f32(577f * 763f), _wgslsmith_f_op_f32(484f * -529f)), ~_wgslsmith_mult_u32(u_input.a, u_input.a)), vec4<u32>(~u_input.a, u_input.a >> (70596u % 32u), _wgslsmith_clamp_u32(3324u, 16901u, u_input.a), 1u) & _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, u_input.a, u_input.a, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 3395u, 41616u, 2201u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)))) | ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(24041u, u_input.a, u_input.a, 0u), vec4<u32>(41285u, u_input.a, 4294967295u, u_input.a)), u_input.a | 4294967295u, u_input.a, ~521u));
    var var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-164f * 1000f));
    var var_2 = true;
    let var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_div_u32(1u, 948u), ~var_0.x, u_input.a), select(countOneBits(_wgslsmith_clamp_vec4_u32(var_0, vec4<u32>(4294967295u, 92981u, var_0.x, 24587u), vec4<u32>(var_0.x, 6254u, 1u, u_input.a))), firstTrailingBit(var_0), func_2().x == -37080i)), vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(1u, 1u)), _wgslsmith_dot_vec3_u32(var_0.zww, vec3<u32>(u_input.a, ~0u, 1u << (var_0.x % 32u))), var_0.x, (_wgslsmith_sub_u32(5047u, var_0.x) ^ reverseBits(78945u)) ^ u_input.a), select(vec4<u32>(~4294967295u, _wgslsmith_add_u32(u_input.a, 0u), 1u, func_6(Struct_2(Struct_1(u_input.c, -1780f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1087f, 698f)), vec2<f32>(var_1.b, 471f), _wgslsmith_div_u32(var_0.x, u_input.a)).x), vec4<u32>(1u, ~var_0.x << (_wgslsmith_sub_u32(u_input.a, var_0.x) % 32u), ~(700u >> (u_input.a % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(39767u, 4294967295u, 0u, 72303u), var_0)), false));
    let var_4 = _wgslsmith_clamp_u32(~(10781u >> (u_input.a % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(reverseBits(109726u)), 37802u, ~var_0.x, ~u_input.a & u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a, var_0.x), _wgslsmith_add_u32(u_input.a, var_3.x), 42573u, var_0.x), var_3)), 1u);
    var_1 = Struct_1(~(1i & _wgslsmith_add_i32(u_input.b, -19208i | var_1.a)), 1000f);
    let var_5 = Struct_2(func_1(_wgslsmith_mod_u32(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 2147483647i, -1i), vec3<i32>(var_1.a, -2147483647i, var_1.a)), func_1(1u, vec3<i32>(u_input.b, u_input.b, var_1.a), true).a, 18439i, vec3<bool>(true, true, true)), ~(43109u | var_3.x)), max(-vec3<i32>(var_1.a, 2147483647i, u_input.b) >> (vec3<u32>(var_3.x, 26703u, 1u) % vec3<u32>(32u)), vec3<i32>(-u_input.b, max(var_1.a, 0i), select(var_1.a, -17967i, false))), true).a);
    let var_6 = Struct_3(_wgslsmith_f_op_f32(-345f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f - -2143f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_5.a.b, var_5.a.b)) + _wgslsmith_f_op_f32(f32(-1f) * -866f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b, -939f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -2091f) * vec2<f32>(var_5.a.b, var_1.b)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -323f))), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(exp2(var_1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(var_1.a, -var_1.a, var_1.a, -70466i)));
}

