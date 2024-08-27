struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    let var_0 = Struct_2(arg_0.x, Struct_1(arg_1, 0u), Struct_1(-u_input.b.x, select(max(10817u, ~53406u), _wgslsmith_mod_u32(25260u, _wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(0u, u_input.a.x, 57059u))), !(arg_0.x == arg_0.x))), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(select(true, arg_0.x != -1425f, false), all(vec3<bool>(false, true, true)) || true), vec2<bool>(true, any(vec3<bool>(true, true, false)))), Struct_1(-65126i, u_input.a.x & ~u_input.a.x));
    let var_1 = ~(~select(u_input.a.xwx, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 11465u, arg_2.x), u_input.a.xzw), true && var_0.d.x)) ^ select(~vec3<u32>(_wgslsmith_clamp_u32(10740u, u_input.a.x, 4294967295u), u_input.a.x, 4294967295u), _wgslsmith_add_vec3_u32(u_input.a.xxw, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.e.b, 0u), u_input.a.zyz, ~vec3<u32>(86324u, 19213u, 78857u))), !vec3<bool>(any(vec2<bool>(true, true)), var_0.d.x && true, false));
    var var_2 = var_1.x;
    var_2 = 115063u;
    var_2 = select(u_input.a.x, _wgslsmith_dot_vec3_u32(var_1, reverseBits(var_1)), !(var_0.d.x || (_wgslsmith_mult_i32(-26579i, 23347i) < select(-3773i, 18303i, true))));
    return ~22992i;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = abs(-63423i);
    var var_1 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -458f), arg_0, 153f);
    let var_2 = u_input.b;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), Struct_1(min(arg_3.a, u_input.b.x), abs(~arg_2) & ~arg_3.b), Struct_1(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 122f, 1749f, -290f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-591f, arg_1, 462f, arg_0)))), _wgslsmith_mod_i32(36915i, -18397i), ~(vec4<u32>(0u, arg_2, arg_2, 1u) & vec4<u32>(arg_2, arg_3.b, 0u, 1u))), u_input.a.x), vec2<bool>(all(vec2<bool>(all(vec3<bool>(false, true, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1528f + 810f), _wgslsmith_f_op_f32(max(arg_0, var_1.x))))), Struct_1(39634i, arg_2 << (u_input.a.x % 32u)));
    var var_4 = ~vec4<i32>(arg_3.a, abs(35305i), var_2.x, -2147483647i >> (arg_2 % 32u));
    return var_3.c;
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(218f + -506f), _wgslsmith_div_f32(-965f, -1000f), _wgslsmith_f_op_f32(-951f - 1143f), _wgslsmith_div_f32(1042f, 1702f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1452f), -2054f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1792f))), 483f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1222f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(383f * -1224f), _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(-1704f * 1220f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(390f - -968f) - _wgslsmith_f_op_f32(-1474f * 1000f)) * _wgslsmith_div_f32(-127f, _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-752f * 1000f))) * -532f)), vec4<bool>(all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), false)), true, true, (true & all(vec2<bool>(false, true))) | any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))))));
    let var_1 = _wgslsmith_mod_i32(firstTrailingBit(firstTrailingBit(-32474i)), min(firstLeadingBit(~u_input.b.x), -52274i));
    let var_2 = Struct_2(_wgslsmith_div_f32(var_0.x, var_0.x), Struct_1(u_input.b.x, u_input.a.x), func_2(_wgslsmith_f_op_f32(-734f - _wgslsmith_f_op_f32(sign(634f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), ~u_input.a.x, Struct_1(select(u_input.b.x, -1i, any(vec4<bool>(true, true, true, false))), 23831u)), select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -730f)) >= -2080f), func_2(var_0.x, -1038f, 8140u, Struct_1(2147483647i, u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a)));
    var var_4 = Struct_3(!vec2<bool>(!any(vec2<bool>(var_2.d.x, true)), (var_2.e.a >> (u_input.a.x % 32u)) != var_2.b.a), select(select(vec4<bool>(all(vec4<bool>(true, var_2.d.x, false, false)), true, any(vec4<bool>(true, var_2.d.x, true, var_2.d.x)), 271f >= var_0.x), vec4<bool>(false, var_2.d.x & false, var_2.d.x, !var_2.d.x), vec4<bool>(all(vec3<bool>(var_2.d.x, var_2.d.x, var_2.d.x)), false || var_2.d.x, true && var_2.d.x, true)), !(!(!vec4<bool>(false, true, var_2.d.x, true))), select(vec4<bool>(var_2.d.x, false, false, true), select(select(vec4<bool>(var_2.d.x, true, false, true), vec4<bool>(false, var_2.d.x, true, true), vec4<bool>(var_2.d.x, true, true, false)), select(vec4<bool>(false, var_2.d.x, true, var_2.d.x), vec4<bool>(false, false, true, true), vec4<bool>(false, var_2.d.x, false, true)), !vec4<bool>(false, true, var_2.d.x, var_2.d.x)), vec4<bool>(false, all(vec3<bool>(var_2.d.x, var_2.d.x, true)), true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, 277f, 286f, var_0.x), vec4<f32>(var_2.a, var_2.a, -756f, -164f))) - _wgslsmith_f_op_vec4_f32(-var_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-912f, -1000f, _wgslsmith_f_op_f32(436f * var_2.a), var_0.x), vec4<f32>(-2218f, _wgslsmith_f_op_f32(sign(-536f)), -242f, 229f))), select(select(!vec4<bool>(true, false, var_2.d.x, var_2.d.x), select(vec4<bool>(false, false, var_2.d.x, var_2.d.x), vec4<bool>(var_2.d.x, false, var_2.d.x, var_2.d.x), vec4<bool>(var_2.d.x, false, true, var_2.d.x)), select(vec4<bool>(false, var_2.d.x, true, var_2.d.x), vec4<bool>(true, var_2.d.x, true, true), vec4<bool>(var_2.d.x, false, true, true))), !(!vec4<bool>(false, var_2.d.x, var_2.d.x, var_2.d.x)), any(vec3<bool>(var_2.d.x, var_2.d.x, false))))), var_2.d.x);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_4.c.x - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f * var_4.c.x))) + var_0.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-868f, 672f)) - vec2<f32>(187f, -2027f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(282f, 910f), vec2<f32>(-204f, 1434f))))), !(!all(vec4<bool>(true, true, false, true))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1581f + -990f), _wgslsmith_f_op_f32(-467f - -682f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-289f, 518f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(632f, -1060f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2723f, var_0.x))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x)), vec2<bool>(false, false))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-145f + 865f) * -441f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 885f)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 961f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * -2552f), -693f))))), Struct_1(0i, u_input.a.x), Struct_1(1i, abs(26018u)), select(vec2<bool>(all(vec3<bool>(true, true, true)), false), !vec2<bool>(true, 109f >= var_0.x), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), false)), func_2(825f, 1365f, u_input.a.x, func_2(_wgslsmith_f_op_f32(abs(-1391f)), _wgslsmith_f_op_f32(f32(-1f) * -1421f), _wgslsmith_mult_u32(u_input.a.x, 4294967295u), func_2(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 0u | u_input.a.x, Struct_1(u_input.b.x, 21094u)))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a, -806f))), var_1.b, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -612f)) - 908f), var_0.x, ~_wgslsmith_clamp_u32(1u, ~81125u, _wgslsmith_add_u32(var_1.e.b, u_input.a.x)), var_1.c), select(vec2<bool>(true, var_1.d.x & all(vec4<bool>(false, false, false, var_1.d.x))), var_1.d, select(vec2<bool>(true, var_1.d.x), vec2<bool>(true, select(var_1.d.x, false, true)), var_1.d.x)), var_1.b);
    let var_2 = var_1.d;
    var var_3 = firstLeadingBit(var_1.e.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f) * _wgslsmith_div_f32(var_1.a, 680f))), ~21998u, var_1.e).a);
}

