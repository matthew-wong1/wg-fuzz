struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(408f, 179f, -1000f, 383f), 0u, false, vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = arg_2;
    global0 = arg_1;
    var_0 = arg_2;
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(abs(-356f))), -563f)), -273f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-arg_2.a.x)), firstTrailingBit(_wgslsmith_mod_u32(u_input.a, arg_2.b | _wgslsmith_sub_u32(u_input.b.x, 1u))), !var_0.d.x, select(var_0.d, !arg_1.d, var_0.e.x), select(!select(arg_2.e, !vec2<bool>(var_0.d.x, arg_1.e.x), arg_1.e), !var_0.e, !select(!vec2<bool>(false, arg_2.e.x), !vec2<bool>(false, arg_1.e.x), select(global0.d, vec2<bool>(var_0.e.x, var_0.c), var_0.e))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(161f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1358f - -1204f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.a.x, -150f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), -257f, abs(1u) <= firstLeadingBit(u_input.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(round(-556f)), !global0.d.x))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(513f, arg_1.a.x, global0.a.x, arg_1.a.x) + vec4<f32>(var_0.a.x, arg_1.a.x, 2977f, global0.a.x)))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = !all(!(!(!vec2<bool>(arg_0.c, arg_2.e.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2953f, -676f, _wgslsmith_div_f32(-1744f, arg_0.a.x), global0.a.x)), arg_1.b, arg_2.d.x, vec2<bool>(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(select(1000f, -458f, true)))) == arg_0.a.x), arg_2.d);
    let var_2 = Struct_1(vec4<f32>(396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(!arg_2.e, Struct_1(vec4<f32>(var_1.a.x, arg_1.a.x, -194f, 1388f), var_1.b, var_1.d.x, global0.e, vec2<bool>(false, false)), Struct_1(vec4<f32>(-179f, -1263f, arg_1.a.x, -911f), arg_1.b, arg_0.d.x, vec2<bool>(arg_2.c, arg_2.d.x), arg_0.e))).x + _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), Struct_1(var_1.a, u_input.a, true, arg_1.d, vec2<bool>(arg_0.d.x, true)), Struct_1(var_1.a, 0u, false, vec2<bool>(arg_2.c, global0.c), arg_0.d))).x), global0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + arg_0.a.x)))), _wgslsmith_sub_u32(arg_1.b, ~(~0u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(select(0u, arg_1.b, true), arg_1.b, arg_0.b), ~(vec3<u32>(arg_0.b, var_1.b, 4294967295u) | vec3<u32>(global0.b, arg_0.b, 31908u))) % 32u), true, global0.e, vec2<bool>(!any(vec2<bool>(arg_1.c, true)) != (_wgslsmith_dot_vec3_i32(vec3<i32>(5694i, -51568i, 16541i), vec3<i32>(-6028i, 2147483647i, 5300i)) != ~7045i), arg_2.d.x));
    var var_3 = 10360i;
    let var_4 = reverseBits(~(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, 8551i)), vec2<i32>(1i, 1i)) ^ 1i));
    return abs(1u);
}

fn func_2() -> i32 {
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(395f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(146f))))), -241f, global0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.a.x)))), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x))))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1000f, 1000f, -366f))), 1u, global0.d.x, !(!vec2<bool>(global0.e.x, global0.c)), !(!global0.e)), Struct_1(_wgslsmith_f_op_vec4_f32(max(global0.a, global0.a)), 26571u, any(vec4<bool>(global0.d.x, true, true, global0.e.x)), select(!global0.e, vec2<bool>(true, global0.e.x), true), select(!global0.e, global0.e, global0.d.x && false)), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(!vec2<bool>(global0.c, global0.e.x), Struct_1(vec4<f32>(global0.a.x, global0.a.x, 1421f, global0.a.x), 46854u, true, global0.d, global0.d), Struct_1(global0.a, 67240u, global0.c, global0.e, global0.e))), 1u, true, select(!vec2<bool>(global0.d.x, global0.e.x), global0.e, !global0.e), !select(vec2<bool>(global0.e.x, global0.c), vec2<bool>(global0.c, true), global0.e))), !((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 0u)) > 0u) || true), vec2<bool>(!(!global0.e.x), true), select(!vec2<bool>(!global0.e.x, true), vec2<bool>(false, !select(true, true, global0.c)), global0.e.x));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))), vec4<f32>(1502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2094f + global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.x - -748f), _wgslsmith_f_op_f32(-global0.a.x), global0.d.x))))), u_input.a | u_input.a, false, !vec2<bool>(global0.d.x, global0.c), global0.e);
    global0 = Struct_1(global0.a, abs(1u), false, vec2<bool>(!(!(!global0.c)), firstTrailingBit(u_input.a) <= u_input.b.x), select(vec2<bool>(global0.c, true), global0.e, select(select(!vec2<bool>(false, global0.e.x), !global0.d, true), vec2<bool>(false, true), any(vec3<bool>(false, true, global0.c)))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(global0.a)), ~reverseBits(0u), _wgslsmith_f_op_f32(sign(-726f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1467f, _wgslsmith_f_op_f32(f32(-1f) * -1466f), false)), _wgslsmith_f_op_f32(trunc(-492f))), vec2<bool>(global0.d.x, false), global0.e);
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    return ~_wgslsmith_sub_i32(1i, 15217i);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x - arg_3.a.x), arg_3.a.x, -623f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, 823f, -718f, 865f) - vec4<f32>(-1292f, 1182f, -439f, -1148f)), global0.a)))), 81842u, countOneBits(_wgslsmith_sub_i32(~1i, arg_2)) <= firstLeadingBit(0i), select(arg_0.d, arg_0.e, false || select(all(vec4<bool>(true, true, true, arg_3.c)), true, any(arg_0.d))), vec2<bool>(any(vec3<bool>(-998f < global0.a.x, false, select(false, arg_0.e.x, arg_3.e.x))), any(vec3<bool>(true, true, arg_0.d.x))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.x, global0.a.x, -1214f, 711f), global0.a)) - global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1473f, 226f, 157f, 1000f)))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(u_input.b), firstLeadingBit(vec2<u32>(0u, arg_1.x))), ~select(arg_1.xz, arg_1.xw, arg_0)), true, select(!global0.d, vec2<bool>(true, true), any(!vec4<bool>(false, arg_0, global0.d.x, false))), !select(global0.d, global0.d, select(global0.e, vec2<bool>(true, arg_0), vec2<bool>(global0.e.x, global0.c)))), ~vec3<u32>(1u, abs(4678u), global0.b) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, 18115u, 1u), ~vec3<u32>(arg_1.x, 30575u, global0.b)) ^ ~vec3<u32>(u_input.b.x, 0u, 0u)) % vec3<u32>(32u)), firstTrailingBit(func_2()), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(592f, 586f)), _wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1037f), _wgslsmith_f_op_f32(-global0.a.x)))), u_input.a, all(!select(vec4<bool>(true, global0.e.x, arg_0, global0.d.x), vec4<bool>(true, false, true, true), vec4<bool>(false, true, global0.e.x, true))), vec2<bool>(global0.c, any(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, false, global0.d.x, false), vec4<bool>(global0.c, arg_0, true, global0.c)))), select(global0.e, select(global0.e, vec2<bool>(true, arg_0), select(vec2<bool>(false, true), global0.d, global0.e)), global0.e.x)));
    let var_1 = !var_0.e.x;
    let var_2 = -6236i << (firstLeadingBit(~select(~global0.b, global0.b << (1u % 32u), var_0.d.x)) % 32u);
    let var_3 = func_5(func_5(Struct_1(func_5(func_5(Struct_1(var_0.a, 1u, var_1, global0.e, var_0.d), arg_1.wwx, 0i, Struct_1(vec4<f32>(var_0.a.x, global0.a.x, 1000f, -1012f), 12157u, global0.c, vec2<bool>(var_0.d.x, true), global0.e)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), var_2, func_5(Struct_1(global0.a, var_0.b, false, global0.e, global0.e), arg_1.wxx, 19774i, Struct_1(vec4<f32>(var_0.a.x, 602f, -1286f, global0.a.x), u_input.a, arg_0, vec2<bool>(var_0.e.x, false), global0.d))).a, global0.b, !(arg_1.x <= 60047u), vec2<bool>(true, func_5(Struct_1(vec4<f32>(global0.a.x, global0.a.x, var_0.a.x, 506f), 3824u, global0.c, vec2<bool>(arg_0, false), var_0.e), arg_1.xwx, -24067i, Struct_1(vec4<f32>(-2032f, global0.a.x, 1363f, 1238f), 1u, var_0.c, global0.d, global0.d)).c), var_0.e), vec3<u32>(var_0.b, firstLeadingBit(global0.b), 0u) & vec3<u32>(var_0.b >> (44499u % 32u), _wgslsmith_div_u32(var_0.b, 64715u), ~var_0.b), ~(~(~var_2)), func_5(Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), 37845u, var_0.c, vec2<bool>(true, false), func_5(Struct_1(var_0.a, 114160u, arg_0, vec2<bool>(true, true), global0.d), arg_1.ywx, -18990i, Struct_1(var_0.a, 4294967295u, var_1, global0.d, var_0.e)).e), min(~vec3<u32>(4199u, 39057u, 38602u), vec3<u32>(33821u, arg_1.x, 24991u)), var_2, Struct_1(_wgslsmith_f_op_vec4_f32(step(var_0.a, vec4<f32>(254f, var_0.a.x, global0.a.x, var_0.a.x))), reverseBits(global0.b), !arg_0, vec2<bool>(var_1, var_1), func_5(Struct_1(vec4<f32>(1000f, 795f, -793f, -777f), u_input.b.x, var_1, var_0.e, vec2<bool>(true, var_0.d.x)), vec3<u32>(1u, 1u, 67443u), var_2, Struct_1(vec4<f32>(424f, var_0.a.x, global0.a.x, -695f), u_input.a, false, var_0.d, vec2<bool>(true, var_1))).d))), firstLeadingBit(arg_1.xxz), 1i, func_5(Struct_1(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(var_0.a.x, -225f, -2044f, global0.a.x))), global0.b, false, vec2<bool>(var_1 | var_1, true), var_0.d), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.b, var_0.b), arg_1.xzw), vec3<u32>(select(4294967295u, 16497u, arg_0), 4294967295u, countOneBits(1u)), firstTrailingBit(arg_1.yyy)), -20568i, func_5(func_5(Struct_1(global0.a, u_input.a, false, global0.d, var_0.e), vec3<u32>(16399u, 26906u, u_input.a), -var_2, func_5(Struct_1(global0.a, global0.b, var_1, vec2<bool>(arg_0, false), var_0.e), arg_1.yww, 1i, Struct_1(global0.a, u_input.b.x, true, var_0.d, var_0.d))), arg_1.zww, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_2, var_2, -2875i), vec4<i32>(var_2, -1i, var_2, -1i)), -2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(164f, -157f, var_0.a.x, -2608f))), global0.b & 52375u, true, global0.d, !var_0.d))));
    return firstLeadingBit(~max(48281u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, arg_1.x), ~vec2<u32>(arg_1.x, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1352f);
    let var_1 = u_input.b;
    var var_2 = Struct_1(global0.a, func_1(true, _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, 0u, global0.b, 3574u), abs(vec4<u32>(0u, 1u, 4294967295u, 6672u))) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(global0.b, var_1.x, 17076u, global0.b))), !global0.e.x, global0.e, !select(!func_5(Struct_1(vec4<f32>(981f, global0.a.x, 319f, 1000f), global0.b, false, vec2<bool>(true, false), global0.e), vec3<u32>(global0.b, var_1.x, u_input.b.x), 28744i, Struct_1(global0.a, 54935u, true, global0.e, global0.d)).d, global0.e, func_5(func_5(Struct_1(global0.a, u_input.b.x, global0.e.x, global0.d, global0.e), vec3<u32>(global0.b, 4294967295u, var_1.x), 0i, Struct_1(global0.a, 95383u, global0.e.x, vec2<bool>(false, global0.c), global0.d)), vec3<u32>(u_input.a, 15196u, 44564u), min(-2147483647i, 36904i), Struct_1(vec4<f32>(-159f, global0.a.x, 1620f, 944f), 54731u, true, global0.e, global0.d)).d));
    var_2 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(var_2.a, var_2.a)), global0.a)), _wgslsmith_f_op_vec4_f32(-global0.a))), var_1.x, !global0.e.x, !(!var_2.e), vec2<bool>(any(vec3<bool>(true, var_2.d.x, var_2.d.x)), true)), _wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(16864u, 11592u, 10874u) >> (vec3<u32>(45025u, 47506u, global0.b) % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 42883u), reverseBits(vec3<u32>(1u, global0.b, 1u)), vec3<u32>(global0.b, var_2.b, 12092u)), vec3<u32>(var_1.x, 1273u, 0u) & (vec3<u32>(u_input.a, 77064u, var_1.x) << (vec3<u32>(u_input.a, global0.b, var_1.x) % vec3<u32>(32u)))), max(vec3<u32>(45147u, var_2.b, var_1.x), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(11033u, global0.b, 8383u), vec3<u32>(0u, u_input.a, var_1.x))))), -1i, Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), 1u, global0.c, func_5(func_5(Struct_1(vec4<f32>(865f, -594f, -539f, 312f), 13619u, var_2.e.x, global0.e, global0.d), vec3<u32>(0u, 4294967295u, var_2.b) ^ vec3<u32>(var_1.x, var_2.b, u_input.b.x), ~46052i, Struct_1(global0.a, u_input.a, var_2.c, global0.e, vec2<bool>(true, true))), countOneBits(countOneBits(vec3<u32>(36560u, 0u, global0.b))), -34994i, Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.a, vec4<f32>(713f, var_2.a.x, -1285f, global0.a.x), vec4<bool>(var_2.c, true, global0.e.x, false))), var_2.b, true, global0.d, !global0.e)).e, var_2.e));
    let var_3 = Struct_1(global0.a, 53175u & u_input.a, true, global0.e, global0.e);
    var var_4 = reverseBits(vec3<u32>(1u, ~_wgslsmith_mult_u32(0u, var_1.x), var_3.b));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(func_5(Struct_1(global0.a, global0.b, false, vec2<bool>(true, global0.d.x), var_2.e), vec3<u32>(var_2.b, u_input.a, var_1.x), 49883i, Struct_1(global0.a, var_1.x, var_3.c, global0.e, vec2<bool>(global0.e.x, var_3.c))).d.x, all(var_3.e)), Struct_1(var_3.a, _wgslsmith_mod_u32(u_input.a, 80566u), true, func_5(Struct_1(global0.a, 4294967295u, var_3.e.x, var_2.d, var_3.d), vec3<u32>(25489u, var_2.b, global0.b), 1i, var_3).d, !var_3.e), var_3)).x)));
}

