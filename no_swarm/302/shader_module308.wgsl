struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = max(i32(-1i) * -4967i, u_input.b.x);
    var var_1 = reverseBits(arg_0.x);
    var_0 = u_input.b.x;
    var var_2 = abs(~_wgslsmith_mult_vec2_u32(abs(arg_0.zx & vec2<u32>(arg_0.x, arg_0.x)), arg_0.xx));
    let var_3 = Struct_3(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), Struct_2(true, u_input.b.x, Struct_1(vec2<bool>(true, true), ~(~4294967295u), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), !vec4<bool>(true, any(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false))), u_input.b.xy << ((vec2<u32>(arg_0.x, 4294967295u) ^ arg_0.yz) % vec2<u32>(32u))), Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, arg_0.x, var_2.x) | vec4<u32>(arg_0.x, 7037u, 67428u, 2966u), abs(vec4<u32>(var_2.x, 25616u, 7594u, 1u))), !(!any(vec4<bool>(true, true, false, true)))), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    return _wgslsmith_f_op_f32(777f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1345f, 1028f, var_3.c.c)))))));
}

fn func_2() -> u32 {
    var var_0 = any(select(vec2<bool>(true, true), vec2<bool>(true, -16661i <= u_input.a.x), 60497i != u_input.b.x)) & false;
    var var_1 = select(select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true)), true), vec4<bool>(select(!all(vec3<bool>(false, true, false)), _wgslsmith_sub_i32(0i, 46873i) > _wgslsmith_add_i32(u_input.b.x, u_input.a.x), true), any(vec4<bool>(false, true, true, false)) && (534f < _wgslsmith_f_op_f32(func_3(vec3<u32>(22375u, 0u, 24358u)))), true, false), false);
    let var_2 = ~vec2<u32>(~(~1u), _wgslsmith_clamp_u32(select(~21604u, 1u, var_1.x), ~(~1u), 1u));
    return ~(~1u);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = reverseBits(vec3<u32>(47429u, arg_0.b.c.b, func_2()));
    let var_2 = ~max(-1i, -1i);
    let var_3 = _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(15933i, min(arg_0.b.b, -select(u_input.b.x, 10175i, true)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 2147483647i, 33978i, -2147483647i) & vec4<i32>(2147483647i, var_2, var_2, -45765i), ~u_input.a, vec4<bool>(false, arg_0.c.c, arg_0.c.c, arg_0.c.c)), u_input.a), u_input.b.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(353f + arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, arg_3) + 261f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(step(-1000f, arg_2.x))))))) * 1267f);
    return Struct_1(select(arg_0.c.a, vec2<bool>((0i < var_3.x) || all(arg_0.b.c.a), arg_0.a.x), select(select(select(arg_1.yz, arg_0.d, false), select(vec2<bool>(false, arg_1.x), vec2<bool>(false, false), arg_1.x), true), !vec2<bool>(true, arg_1.x), all(arg_0.b.d))), ~1u, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    let var_0 = u_input.a;
    var var_1 = Struct_3(!arg_0.a, Struct_2(all(select(select(vec4<bool>(arg_0.c, false, false, true), vec4<bool>(false, false, true, arg_0.c), vec4<bool>(arg_0.a.x, arg_0.c, false, true)), !vec4<bool>(arg_0.c, false, true, true), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wx, arg_1.yx), select(23714i, 1i, true)), ~(-var_0.yz)), Struct_1(vec2<bool>(arg_0.a.x, arg_0.c), 1u, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, arg_0.a.x), false))), select(select(!vec4<bool>(true, true, arg_0.a.x, false), !vec4<bool>(arg_0.c, true, arg_0.a.x, arg_0.a.x), vec4<bool>(true, true, true, true)), vec4<bool>(arg_0.a.x, arg_0.a.x, false, false), arg_0.c), vec2<i32>(select(var_0.x << (arg_0.b % 32u), u_input.b.x, arg_0.c), -7506i & arg_1.x)), func_1(Struct_3(arg_0.a, Struct_2(arg_0.c && arg_0.a.x, 11523i & var_0.x, Struct_1(vec2<bool>(arg_0.a.x, true), 29509u, arg_0.c), select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.c), vec4<bool>(false, arg_0.c, false, arg_0.a.x), vec4<bool>(true, true, false, false)), vec2<i32>(-26804i, var_0.x)), arg_0, vec2<bool>(arg_0.c, arg_0.c)), !(!(!vec3<bool>(arg_0.c, arg_0.c, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-887f, -689f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-642f, -1000f) * vec2<f32>(-2517f, 922f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-395f, 640f))), !(!select(arg_0.a, !arg_0.a, u_input.a.x >= var_0.x)));
    var_1 = Struct_3(vec2<bool>(func_1(Struct_3(select(vec2<bool>(false, var_1.b.c.a.x), vec2<bool>(arg_0.c, arg_0.c), true), Struct_2(arg_0.c, 1i, arg_0, var_1.b.d, u_input.b.xx), func_1(Struct_3(vec2<bool>(true, true), Struct_2(false, var_1.b.e.x, arg_0, var_1.b.d, var_1.b.e), arg_0, vec2<bool>(var_1.b.c.a.x, var_1.a.x)), var_1.b.d.yxw, vec2<f32>(-135f, -502f), -1082f), func_1(Struct_3(var_1.a, Struct_2(arg_0.c, 2147483647i, Struct_1(vec2<bool>(arg_0.c, var_1.b.d.x), var_1.c.b, arg_0.c), var_1.b.d, vec2<i32>(-2147483647i, arg_1.x)), arg_0, var_1.d), vec3<bool>(arg_0.a.x, false, false), vec2<f32>(2108f, 979f), 1506f).a), !select(var_1.b.d.zwy, vec3<bool>(false, true, false), vec3<bool>(false, true, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-157f, 1299f) - vec2<f32>(-1272f, 1444f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-196f, -240f), vec2<f32>(824f, 567f), arg_0.c)))), 626f).c, true), var_1.b, func_1(Struct_3(vec2<bool>(true, true), Struct_2(true, -1i, func_1(Struct_3(vec2<bool>(false, true), var_1.b, var_1.c, var_1.b.c.a), var_1.b.d.xwy, vec2<f32>(996f, -1886f), 1000f), vec4<bool>(var_1.b.d.x, false, true, arg_0.a.x), -vec2<i32>(2147483647i, -51186i)), arg_0, var_1.c.a), var_1.b.d.xzy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(706f + 2177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), -502f), !(!vec2<bool>(var_1.d.x, any(vec4<bool>(arg_0.a.x, true, false, var_1.b.d.x)))));
    var_1 = Struct_3(!func_1(Struct_3(vec2<bool>(arg_0.c, var_1.a.x), var_1.b, arg_0, select(vec2<bool>(arg_0.c, var_1.c.a.x), arg_0.a, arg_0.c)), var_1.b.d.yww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2728f, 203f)))), _wgslsmith_f_op_f32(f32(-1f) * -146f)).a, Struct_2(any(!var_1.b.d), _wgslsmith_div_i32(~firstTrailingBit(u_input.b.x), var_0.x), func_1(Struct_3(select(vec2<bool>(false, false), vec2<bool>(arg_0.c, var_1.d.x), var_1.a), Struct_2(var_1.b.c.c, -16968i, arg_0, var_1.b.d, vec2<i32>(u_input.a.x, 22908i)), func_1(Struct_3(vec2<bool>(var_1.c.c, false), Struct_2(var_1.d.x, 1i, var_1.c, var_1.b.d, vec2<i32>(-1i, arg_1.x)), var_1.c, vec2<bool>(false, arg_0.a.x)), var_1.b.d.yyy, vec2<f32>(1634f, -193f), 477f), arg_0.a), select(select(var_1.b.d.zxx, vec3<bool>(var_1.b.d.x, arg_0.c, true), false), select(var_1.b.d.xwz, vec3<bool>(true, true, arg_0.a.x), var_1.a.x), var_1.b.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1001f, -605f)) + vec2<f32>(704f, 1319f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(451f, -1000f))), select(var_1.b.d, vec4<bool>(true, true, all(vec4<bool>(var_1.a.x, arg_0.a.x, var_1.b.a, var_1.a.x)), select(true, false, arg_0.a.x)), all(var_1.c.a)), (-u_input.b.yz << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c.b, var_1.b.c.b), vec2<u32>(arg_0.b, var_1.c.b), vec2<u32>(34586u, var_1.b.c.b)) % vec2<u32>(32u))) | vec2<i32>(~(-30583i), arg_1.x)), func_1(Struct_3(!select(vec2<bool>(arg_0.a.x, var_1.d.x), arg_0.a, arg_0.a), var_1.b, Struct_1(vec2<bool>(true, true), 1u, true), vec2<bool>(false & var_1.a.x, all(vec3<bool>(var_1.a.x, var_1.c.c, arg_0.a.x)))), !vec3<bool>(!var_1.a.x, var_0.x < arg_1.x, var_1.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(961f, 333f) * vec2<f32>(-542f, -1824f))), 1f), vec2<bool>(select(all(func_1(Struct_3(vec2<bool>(false, arg_0.a.x), Struct_2(var_1.c.a.x, u_input.b.x, var_1.c, var_1.b.d, u_input.b.zx), Struct_1(arg_0.a, 1u, var_1.d.x), vec2<bool>(true, false)), var_1.b.d.zzw, vec2<f32>(1108f, -606f), 1971f).a), true, any(var_1.b.d.xwz)), true));
    var_1 = Struct_3(select(vec2<bool>(true, true), var_1.a, select(var_1.d, vec2<bool>(true, true), select(!vec2<bool>(false, arg_0.c), select(arg_0.a, var_1.b.c.a, true), all(vec2<bool>(true, true))))), Struct_2(all(vec3<bool>(false, arg_0.c, true)), _wgslsmith_mult_i32(26846i, ~abs(1i)), var_1.b.c, vec4<bool>(!(!arg_0.a.x), true, !(!arg_0.c), !select(var_1.b.d.x, true, false)), firstLeadingBit(var_1.b.e)), Struct_1(var_1.d, abs(var_1.c.b), false), !var_1.d);
    return 2343f;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_3(!vec2<bool>(4294967295u >= ~arg_0.b, !arg_0.a.x), Struct_2(arg_0.a.x, 1i, arg_0, !(!vec4<bool>(false, true, arg_0.c, false)), -u_input.b.xx), arg_0, select(select(arg_0.a, !(!vec2<bool>(arg_0.a.x, arg_0.a.x)), !func_1(Struct_3(arg_0.a, Struct_2(false, 1i, Struct_1(vec2<bool>(arg_0.c, arg_0.a.x), arg_0.b, true), vec4<bool>(true, arg_0.c, true, true), vec2<i32>(-2147483647i, 2147483647i)), arg_0, vec2<bool>(arg_0.c, arg_0.c)), vec3<bool>(true, true, true), arg_1.xx, arg_1.x).a), vec2<bool>(!any(vec3<bool>(arg_0.a.x, arg_0.c, false)), arg_0.c), !vec2<bool>(false, arg_0.a.x)));
    let var_1 = ~arg_0.b;
    var var_2 = false;
    let var_3 = Struct_4(func_1(Struct_3(select(!var_0.b.c.a, select(vec2<bool>(var_0.c.a.x, true), arg_0.a, vec2<bool>(true, arg_0.c)), true), Struct_2(true, _wgslsmith_mod_i32(15487i, 15529i), func_1(Struct_3(var_0.a, var_0.b, Struct_1(arg_0.a, 31004u, false), arg_0.a), vec3<bool>(arg_0.c, true, true), vec2<f32>(arg_3.x, arg_3.x), -315f), !vec4<bool>(false, arg_0.c, arg_0.c, false), vec2<i32>(arg_2, var_0.b.e.x)), func_1(Struct_3(arg_0.a, Struct_2(true, -2513i, Struct_1(vec2<bool>(true, true), 25152u, true), var_0.b.d, vec2<i32>(-1i, u_input.b.x)), Struct_1(var_0.d, 0u, arg_0.c), vec2<bool>(arg_0.c, false)), var_0.b.d.yyy, arg_3.zy, 810f), !select(vec2<bool>(true, false), var_0.d, arg_0.c)), var_0.b.d.yyz, vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(select(-1672f, _wgslsmith_div_f32(-555f, arg_3.x), var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(floor(arg_3.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f) * 870f))));
    let var_4 = Struct_4(func_1(Struct_3(select(vec2<bool>(false, true), select(vec2<bool>(true, var_3.a.a.x), var_3.a.a, vec2<bool>(true, var_0.c.c)), arg_0.b > var_3.a.b), var_0.b, func_1(Struct_3(vec2<bool>(arg_0.a.x, arg_0.a.x), Struct_2(false, -2147483647i, arg_0, var_0.b.d, vec2<i32>(2136i, 48208i)), Struct_1(vec2<bool>(true, var_3.a.a.x), 0u, var_3.a.a.x), var_3.a.a), !var_0.b.d.xwx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_1.x)), _wgslsmith_f_op_f32(-600f + arg_1.x)), select(var_3.a.a, var_3.a.a, all(vec3<bool>(false, false, true)))), !(!vec3<bool>(false, var_3.a.c, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0.c, vec3<i32>(1i, 16927i, arg_2)))), arg_1.x), arg_3.x));
    return func_1(Struct_3(!vec2<bool>(!var_0.d.x, true), Struct_2(all(select(vec3<bool>(false, var_0.a.x, var_4.a.a.x), vec3<bool>(var_3.a.c, true, var_0.c.a.x), var_3.a.c)), i32(-1i) * -37737i, func_1(Struct_3(vec2<bool>(var_4.a.c, true), Struct_2(var_3.a.c, -1i, var_3.a, var_0.b.d, u_input.b.zy), Struct_1(vec2<bool>(var_4.a.a.x, true), var_1, var_3.a.a.x), var_3.a.a), !vec3<bool>(false, true, arg_0.a.x), arg_1.xz, -2038f), !select(var_0.b.d, var_0.b.d, var_0.b.d), ~vec2<i32>(25171i, 2147483647i)), arg_0, !vec2<bool>(all(vec3<bool>(arg_0.c, var_3.a.a.x, false)), var_0.d.x)), !vec3<bool>(var_0.b.a, true, var_3.a.c), arg_1.yz, _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0.b, 28653u, arg_0.b))) * _wgslsmith_f_op_f32(arg_3.x - -580f)), arg_3.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -154f;
    let var_1 = Struct_4(func_5(Struct_1(vec2<bool>(true, true), firstLeadingBit(0u), any(vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(724f, 1000f, 1857f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(143f, 654f, -1906f)))))), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-890f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_4(func_1(Struct_3(vec2<bool>(false, false), Struct_2(false, u_input.a.x, Struct_1(vec2<bool>(true, true), 1u, false), vec4<bool>(true, true, false, true), u_input.b.zx), Struct_1(vec2<bool>(true, true), 0u, true), vec2<bool>(false, true)), vec3<bool>(true, true, true), vec2<f32>(-432f, 557f), 2013f), vec3<i32>(-10654i, -1i, 0i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1045f))), _wgslsmith_f_op_f32(251f + _wgslsmith_f_op_f32(trunc(1000f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1987f, 182f)), _wgslsmith_f_op_f32(ceil(-572f))))) + _wgslsmith_f_op_f32(select(-123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(881f - _wgslsmith_f_op_f32(abs(-286f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * 487f)), false)));
    var var_2 = Struct_3(func_1(Struct_3(select(vec2<bool>(true, false), vec2<bool>(var_1.a.a.x, false), any(vec4<bool>(var_1.a.c, var_1.a.a.x, var_1.a.a.x, var_1.a.a.x))), Struct_2(false != var_1.a.c, -48584i, func_1(Struct_3(vec2<bool>(var_1.a.c, true), Struct_2(false, 2147483647i, var_1.a, vec4<bool>(true, var_1.a.a.x, false, false), vec2<i32>(-2147483647i, u_input.a.x)), Struct_1(vec2<bool>(true, false), var_1.a.b, var_1.a.c), vec2<bool>(var_1.a.c, var_1.a.c)), vec3<bool>(var_1.a.a.x, false, true), vec2<f32>(-1801f, 1417f), 2384f), select(vec4<bool>(var_1.a.c, var_1.a.a.x, true, true), vec4<bool>(false, var_1.a.a.x, false, false), var_1.a.a.x), u_input.b.xz), func_5(Struct_1(var_1.a.a, 0u, true), vec3<f32>(1f, 1f, 1f), u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, -1049f, -779f, 2068f))), !(!vec2<bool>(var_1.a.c, var_1.a.c))), !select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.a.a.x, true), var_1.a.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1130f, -1112f) + vec2<f32>(-1245f, -1189f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).a, Struct_2(u_input.b.x >= min(-u_input.a.x, i32(-1i) * -62221i), _wgslsmith_sub_i32(abs(14132i), -21852i) ^ -(-2147483647i | u_input.a.x), Struct_1(vec2<bool>(true, var_1.a.b >= 0u), var_1.a.b, any(vec2<bool>(true, true))), vec4<bool>(true, true, var_1.a.b >= _wgslsmith_mod_u32(var_1.a.b, var_1.a.b), true), ~vec2<i32>(~(-2147483647i), u_input.b.x)), Struct_1(!vec2<bool>(var_1.a.c, all(vec3<bool>(false, var_1.a.a.x, true))), _wgslsmith_clamp_u32((var_1.a.b << (48301u % 32u)) << (_wgslsmith_div_u32(19380u, 26790u) % 32u), 48261u ^ (4294967295u & var_1.a.b), func_5(var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, -516f, 210f) + vec3<f32>(495f, 178f, 751f)), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1663f, -147f, -724f, 120f) * vec4<f32>(2008f, -805f, 1000f, 357f))).b), _wgslsmith_mult_u32(~var_1.a.b, 1u) > 4294967295u), vec2<bool>(func_5(func_1(Struct_3(var_1.a.a, Struct_2(var_1.a.c, 2147483647i, var_1.a, vec4<bool>(true, var_1.a.c, var_1.a.c, var_1.a.a.x), u_input.b.xy), var_1.a, var_1.a.a), select(vec3<bool>(var_1.a.c, true, var_1.a.c), vec3<bool>(false, true, false), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(250f, 345f)), _wgslsmith_f_op_f32(1279f + -842f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-453f, 234f, -1000f)), firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(-1i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-798f, -275f, -1000f, -357f)))).c, var_1.a.c));
    var var_3 = firstLeadingBit(func_1(Struct_3(vec2<bool>(var_1.a.b >= var_1.a.b, false), var_2.b, Struct_1(vec2<bool>(var_2.d.x, false), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.c.b, var_1.a.b, var_2.c.b, 13001u), vec4<u32>(var_1.a.b, 1u, 0u, 3215u)), func_1(Struct_3(vec2<bool>(var_2.b.c.c, var_1.a.c), var_2.b, Struct_1(vec2<bool>(false, var_1.a.a.x), 24989u, var_1.a.a.x), vec2<bool>(var_2.d.x, false)), vec3<bool>(var_2.d.x, var_1.a.c, var_1.a.a.x), vec2<f32>(1494f, 784f), 583f).c), select(var_1.a.a, !var_2.c.a, func_5(var_2.b.c, vec3<f32>(235f, 393f, -373f), 26938i, vec4<f32>(1492f, -1074f, -438f, 502f)).a)), select(var_2.b.d.xxy, var_2.b.d.yzx, var_2.b.d.xyw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(-960f, _wgslsmith_f_op_f32(func_3(~vec3<u32>(28225u, 4294967295u, 4079u)))))).b);
    var var_4 = 17564i < ~(~var_2.b.b);
    let var_5 = -var_2.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f - 646f)))));
}

