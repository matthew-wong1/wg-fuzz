struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = !vec2<bool>(true, !(!select(arg_1.e, arg_1.e, arg_1.e)));
    var_0 = !select(vec2<bool>(false, false), vec2<bool>(true, !any(vec2<bool>(false, false))), !(!(!var_0.x)));
    let var_1 = vec4<bool>(!arg_1.e, !arg_1.e || arg_1.e, any(vec3<bool>(var_0.x, _wgslsmith_f_op_f32(arg_1.c - -1483f) >= _wgslsmith_f_op_f32(-393f * arg_1.c), true)), !arg_1.e);
    var_0 = vec2<bool>(arg_1.e, var_1.x);
    let var_2 = arg_0;
    return -126f;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.c.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_0, Struct_1(~arg_1.c.a, vec2<i32>(41331i, -37690i), var_0, -449f, true), arg_0.a)), _wgslsmith_f_op_f32(ceil(var_0))) + vec2<f32>(1225f, _wgslsmith_f_op_f32(min(arg_1.b, 2464f))));
    var var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(~10348u, arg_3, 53083u, ~4294967295u) ^ select(~(vec4<u32>(0u, arg_3, 4294967295u, u_input.d) << (vec4<u32>(arg_0.c, arg_1.c.a, 44613u, 1u) % vec4<u32>(32u))), (vec4<u32>(arg_1.c.a, 14689u, arg_0.c, u_input.e) ^ vec4<u32>(arg_1.c.a, arg_0.c, arg_0.c, 18760u)) >> (reverseBits(vec4<u32>(arg_3, 30792u, 44238u, 0u)) % vec4<u32>(32u)), arg_2), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3 >> (arg_1.c.a % 32u), arg_1.c.a, ~0u, ~4294967295u), ~(vec4<u32>(15912u, arg_1.c.a, 4294967295u, arg_0.c) >> (vec4<u32>(arg_3, arg_3, 1u, u_input.d) % vec4<u32>(32u))), countOneBits(vec4<u32>(34041u, 104782u, 4294967295u, u_input.a)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), 630f));
    var var_3 = arg_1;
    return Struct_4(1i, -1i, 45706u ^ arg_3, -1000f, _wgslsmith_mult_u32(arg_3, 1u));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(abs(~(vec2<u32>(u_input.e, 1u) & vec2<u32>(arg_0.e, 1u))), vec2<u32>(arg_0.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, u_input.e, 1u), vec4<u32>(0u, u_input.a, u_input.e, 16206u)), ~vec4<u32>(0u, 2273u, arg_0.e, 4294967295u)))), Struct_1(arg_0.e, ~abs(_wgslsmith_clamp_vec2_i32(arg_1.zw, arg_1.xw, arg_1.zy)), _wgslsmith_f_op_f32(step(-1000f, arg_0.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(func_2(arg_0, Struct_3(false, arg_0.d, Struct_1(arg_0.e, vec2<i32>(arg_1.x, u_input.b), arg_0.d, arg_0.d, false)), vec4<bool>(false, false, true, true), 3435u), Struct_1(1u, vec2<i32>(u_input.b, 1i), arg_0.d, arg_0.d, true), countOneBits(1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * arg_0.d) + _wgslsmith_f_op_f32(-arg_0.d)))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + arg_0.d) + _wgslsmith_f_op_f32(arg_0.d - arg_0.d)) - _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-arg_0.d))) * _wgslsmith_f_op_f32(-2440f + _wgslsmith_f_op_f32(func_3(Struct_4(36539i, 3941i, u_input.d, -426f, u_input.e), Struct_1(arg_0.c, vec2<i32>(-1i, u_input.c.x), arg_0.d, arg_0.d, true), u_input.c.x)))), Struct_1(~arg_0.e, vec2<i32>(0i, ~1i), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(exp2(arg_0.d)), any(vec3<bool>(true, true, true))), arg_0.d);
    var var_1 = !vec4<bool>(false, false, var_0.b.e, true);
    var var_2 = u_input.c.zy;
    let var_3 = arg_0;
    var var_4 = 1u;
    return !select(var_1.yx, var_1.wz, !select(!vec2<bool>(var_1.x, var_1.x), !var_1.yy, select(vec2<bool>(true, var_1.x), vec2<bool>(false, false), var_1.zz)));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = false;
    var var_1 = _wgslsmith_mult_vec2_i32(abs(u_input.c.wx), vec2<i32>(_wgslsmith_mod_i32(u_input.b, 1172i), 33227i));
    let var_2 = firstTrailingBit(0i);
    var_1 = vec2<i32>(i32(-1i) * -1i, ~(-var_1.x));
    let var_3 = select(vec4<bool>(false & !arg_0, (u_input.d >= countOneBits(17438u)) && arg_0, !arg_2.x, !arg_2.x), !(!select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_2.x, true, true), !vec4<bool>(false, arg_2.x, arg_0, arg_2.x))), vec4<bool>(false, all(select(vec3<bool>(false, arg_0, true), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, false))) || func_4(func_2(Struct_4(-2147483647i, var_2, 36466u, arg_1.x, u_input.a), Struct_3(arg_2.x, -280f, Struct_1(u_input.d, vec2<i32>(u_input.b, 0i), arg_1.x, arg_1.x, false)), vec4<bool>(false, arg_2.x, false, arg_0), u_input.d), ~vec4<i32>(15630i, -13970i, u_input.c.x, var_1.x)).x, select(true || any(vec4<bool>(arg_2.x, arg_0, false, arg_2.x)), func_4(func_2(Struct_4(u_input.b, var_2, u_input.d, arg_1.x, u_input.d), Struct_3(true, 880f, Struct_1(4294967295u, vec2<i32>(-19272i, var_2), arg_1.x, 320f, true)), vec4<bool>(false, true, arg_2.x, arg_2.x), 38131u), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_2, 0i, var_1.x), u_input.c, u_input.c)).x, arg_2.x), false));
    return Struct_1(92171u, vec2<i32>(var_2, 1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(510f - arg_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1779f))))))), any(!vec4<bool>(any(var_3), arg_2.x, arg_2.x, true)));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_4(12891i, abs(_wgslsmith_mult_i32(-(i32(-1i) * -28997i), countOneBits(select(u_input.c.x, 25289i, true)))), ~u_input.e, _wgslsmith_f_op_f32(f32(-1f) * -365f), 12192u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.c, var_0.d))) * vec2<f32>(var_0.d, arg_1.d)), vec2<f32>(_wgslsmith_f_op_f32(func_3(var_0, arg_1, 46584i)), _wgslsmith_f_op_f32(-arg_1.c)), all(!vec2<bool>(arg_1.e, false)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-592f, 313f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(884f, 183f) * vec2<f32>(arg_1.d, 1407f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), -329f) * arg_1.d), -2102f, _wgslsmith_f_op_f32(f32(-1f) * -1586f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(497f)), _wgslsmith_f_op_f32(exp2(var_0.d)))))) * vec4<f32>(_wgslsmith_f_op_f32(arg_1.d - -1268f), -1032f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(-910f))), -1132f));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -413f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -134f)))))));
    var var_3 = firstTrailingBit(_wgslsmith_div_u32(var_0.c, func_2(Struct_4(_wgslsmith_div_i32(arg_1.b.x, arg_1.b.x), -var_0.b, func_2(var_0, Struct_3(arg_1.e, var_2.x, arg_1), vec4<bool>(arg_1.e, arg_1.e, false, arg_2), u_input.e).c, _wgslsmith_f_op_f32(trunc(-1057f)), u_input.a >> (4294967295u % 32u)), Struct_3(arg_2, 234f, Struct_1(13720u, vec2<i32>(-2147483647i, var_0.b), -137f, 856f, arg_1.e)), !vec4<bool>(arg_1.e, false, false, true), var_0.e).c));
    return _wgslsmith_f_op_f32(-arg_1.c);
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(-u_input.c.x, func_5(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1118f, -1611f, -698f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-322f, -362f, -847f, -1000f), vec4<f32>(-564f, 282f, 1000f, -712f)))), func_4(func_2(Struct_4(17204i, 1i, u_input.a, 1250f, u_input.d), Struct_3(true, -1255f, Struct_1(u_input.a, u_input.c.xz, -387f, -1251f, true)), vec4<bool>(true, true, false, true), u_input.e), u_input.c)), any(vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(u_input.c.x, 10897i, u_input.d, -689f, u_input.d), func_5(true, vec4<f32>(421f, -548f, -1000f, 208f), vec2<bool>(false, true)), -u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(310f + 387f), -140f)))));
    return vec2<f32>(var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2446f * -2145f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1045f)) * -2232f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(635f, _wgslsmith_div_f32(-1304f, 1352f)) - _wgslsmith_f_op_vec2_f32(func_1())), vec2<f32>(func_2(func_2(Struct_4(u_input.b, u_input.b, 13129u, 681f, 27074u), Struct_3(false, -1823f, Struct_1(u_input.a, u_input.c.xx, -1139f, -527f, true)), vec4<bool>(true, false, false, true), 1881u), Struct_3(true, -152f, Struct_1(var_0, u_input.c.zz, -1111f, -1158f, true)), vec4<bool>(true, true, false, false), 4294967295u << (var_0 % 32u)).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2054f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -877f)), reverseBits(vec3<u32>(u_input.a, ~1u, 1u)));
}

