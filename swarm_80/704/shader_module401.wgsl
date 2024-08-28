struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = global0.xxy;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2306f, 1f)) + -2706f);
    var var_2 = var_1;
    global0 = select(select(!select(select(vec4<bool>(false, var_0.x, global0.x, false), vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true)), select(vec4<bool>(false, true, global0.x, false), vec4<bool>(false, var_0.x, global0.x, false), var_0.x), true), select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), !select(vec4<bool>(var_0.x, false, global0.x, false), vec4<bool>(global0.x, false, true, true), vec4<bool>(false, false, false, var_0.x)), -43608i > arg_0), any(!select(vec2<bool>(var_0.x, false), vec2<bool>(false, true), var_0.zx))), select(select(select(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, true, global0.x), true), vec4<bool>(global0.x, global0.x, false, false), select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true))), vec4<bool>(!var_0.x, var_0.x, global0.x, any(vec4<bool>(global0.x, false, false, false))), false), select(vec4<bool>(any(var_0.zz), false, global0.x, global0.x | global0.x), select(select(vec4<bool>(true, true, false, false), vec4<bool>(global0.x, false, var_0.x, var_0.x), var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), false), vec4<bool>(!global0.x, any(vec4<bool>(true, false, var_0.x, var_0.x)), true, true)), true), vec4<bool>(true, true, true, true));
    var var_3 = Struct_1(true | var_0.x, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_div_f32(-204f, var_1)))), _wgslsmith_f_op_f32(-324f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 - -1258f)))), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, var_1), -1000f), false)), 854f), 1i, firstTrailingBit(reverseBits(_wgslsmith_sub_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 12633i, -2147483647i, 28655i), vec4<i32>(8679i, arg_0, -1584i, arg_0))))), arg_0);
    return var_3.b;
}

fn func_2() -> Struct_1 {
    global0 = vec4<bool>(true, true, true, 32584u >= ~u_input.a.x);
    let var_0 = Struct_1(all(!select(global0.xw, vec2<bool>(true, true), select(global0.ww, global0.ww, vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-491f, 1000f, true)), -1760f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-755f)), _wgslsmith_f_op_f32(-791f + 202f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2089f * 1000f)), _wgslsmith_f_op_f32(abs(-484f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_i32(0i, -1i, 1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, -921f, -1392f, 748f))))), firstTrailingBit(-45808i), -_wgslsmith_clamp_i32(reverseBits(-4487i), ~max(13629i, 2147483647i), _wgslsmith_sub_i32(-2147483647i << (u_input.a.x % 32u), -1i)), -43427i);
    global0 = !(!(!vec4<bool>(all(vec4<bool>(var_0.a, true, global0.x, true)), true, any(vec3<bool>(false, true, false)), select(var_0.a, var_0.a, false))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1156f)), -714f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))) + _wgslsmith_f_op_f32(var_0.b.x + 342f)));
    let var_2 = -vec4<i32>(var_0.c >> (u_input.a.x % 32u), abs(abs(countOneBits(var_0.e))), var_0.e, -23812i);
    return Struct_1(global0.x, var_0.b, abs(var_0.d), _wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(var_2.x, 7909i)), ~(~var_2.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mod_i32(-1i, arg_1.d);
    let var_2 = global0.x;
    var var_3 = func_2();
    let var_4 = !global0.xy;
    return vec3<i32>(_wgslsmith_mult_i32(-(arg_1.d ^ var_3.d), func_2().d) << (~4294967295u % 32u), min(_wgslsmith_div_i32(arg_1.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e, arg_1.c), vec2<i32>(arg_1.e, var_0.d)) ^ 1i), -77i), 0i >> (_wgslsmith_sub_u32(max(firstTrailingBit(arg_2.x), ~u_input.a.x), _wgslsmith_mult_u32(arg_0, 5262u) ^ _wgslsmith_clamp_u32(1u, 4276u, 40735u)) % 32u));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2.wz;
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_3.b.zyx);
    var_0 = arg_2.yz;
    let var_2 = arg_3;
    var var_3 = u_input.a.x;
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(abs(var_2.b)), abs(var_2.d), -var_2.c, -1i);
}

fn func_1() -> vec4<f32> {
    var var_0 = u_input.a.x;
    let var_1 = func_5(func_4(~1u, func_2(), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(63632u, u_input.a.x), u_input.a, u_input.a))), global0.zz, _wgslsmith_div_vec4_i32(min(-firstTrailingBit(vec4<i32>(-34022i, -5054i, -2147483647i, 6448i)), reverseBits(-vec4<i32>(1i, 3387i, 11007i, 1i))), ~_wgslsmith_add_vec4_i32(-vec4<i32>(21052i, -25734i, 8033i, 2147483647i), select(vec4<i32>(37633i, -36340i, 1i, 41990i), vec4<i32>(-23713i, -12103i, -23573i, 13980i), vec4<bool>(false, false, false, false)))), func_2());
    var var_2 = true;
    var var_3 = func_2();
    var var_4 = 1i;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.b.x, -618f, var_1.b.x, var_1.b.x), vec4<f32>(2264f, -829f, 733f, var_3.b.x), vec4<bool>(false, var_1.a, false, var_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 882f, -171f, -554f))) + vec4<f32>(863f, var_3.b.x, var_3.b.x, _wgslsmith_div_f32(-859f, 160f))), var_3.b), vec4<f32>(_wgslsmith_f_op_f32(trunc(-198f)), -742f, var_1.b.x, 1141f), func_2().a));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 1637f)));
    var_0 = Struct_1(true == (select(u_input.a.x, ~u_input.a.x, false) <= u_input.a.x), func_5(-firstLeadingBit(firstTrailingBit(vec3<i32>(arg_2.c, arg_1.x, -10743i))), vec2<bool>(u_input.a.x >= select(u_input.a.x, 1u, var_0.a), true), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(arg_1, arg_1)), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, arg_2.d, -30679i, var_0.c), vec4<i32>(2147483647i, arg_1.x, 1i, 0i) << (vec4<u32>(1u, u_input.a.x, 42569u, 0u) % vec4<u32>(32u)))), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2218f), func_5(arg_1.zyx, vec2<bool>(true, arg_0.a), arg_1, Struct_1(arg_2.a, arg_0.b, -16985i, arg_1.x, var_0.c)).b.x, -1040f, 437f), _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, arg_1.x), var_0.e), _wgslsmith_mod_i32(-arg_1.x, -var_0.d), _wgslsmith_sub_i32(var_0.c, -2147483647i))).b, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-34029i), 16733i, func_5(vec3<i32>(arg_1.x, var_0.d, var_0.e), global0.zz, arg_1, arg_0).d), select(-arg_1.ywz, arg_1.yxz, vec3<bool>(false, global0.x, true))), _wgslsmith_dot_vec4_i32(-reverseBits(arg_1), vec4<i32>(-8776i, func_2().e, _wgslsmith_div_i32(arg_1.x, -2147483647i), min(arg_2.c, 0i)))), _wgslsmith_clamp_i32(arg_2.d, 19379i ^ arg_2.d, ~arg_2.d), firstTrailingBit(arg_2.e));
    global0 = select(!vec4<bool>(any(!vec4<bool>(var_0.a, var_0.a, true, false)), (false | global0.x) || !arg_2.a, (u_input.a.x <= u_input.a.x) && (40962u != u_input.a.x), !any(global0.yz)), vec4<bool>(true, false, true, arg_2.a), !func_5(-vec3<i32>(arg_0.c, var_0.e, 68708i) | arg_1.yxy, vec2<bool>(4294967295u > u_input.a.x, any(vec2<bool>(global0.x, false))), firstTrailingBit(~vec4<i32>(arg_2.d, arg_1.x, 22849i, var_0.c)), func_5(max(arg_1.wzz, arg_1.yxw), global0.yx, arg_1, Struct_1(var_0.a, arg_2.b, arg_2.d, 49513i, var_0.e))).a);
    let var_2 = 99448u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, !(global0.x & ((u_input.a.x >= 8859u) && false)), global0.x, func_6(Struct_1(true, vec4<f32>(-1050f, 823f, 689f, -1503f), 27091i << (u_input.a.x % 32u), i32(-1i) * -1i, 0i), -reverseBits(vec4<i32>(44128i, 31502i, -1i, 0i)), Struct_1(true, _wgslsmith_f_op_vec4_f32(func_1()), ~45583i, _wgslsmith_div_i32(1i, -25102i), i32(-1i) * -2147483647i)) && ((u_input.a.x ^ 31156u) > 0u));
    let var_0 = ~u_input.a.x;
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(!select(true, global0.x, all(vec2<bool>(global0.x, false))), _wgslsmith_f_op_vec4_f32(func_1()), 1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, ~39167i, 1i)), func_4(max(4294967295u, 58892u), func_2(), ~(u_input.a | u_input.a)).x), -23757i);
    let var_3 = var_2.a;
    global0 = select(select(vec4<bool>(global0.x, !global0.x, true, true), !select(select(vec4<bool>(var_2.a, true, true, var_2.a), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(var_2.a, true, global0.x, false)), !vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true)), !(!(!vec4<bool>(true, global0.x, false, global0.x)))), vec4<bool>(true, true, var_2.a, true), !(!select(!vec4<bool>(global0.x, var_2.a, var_2.a, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, global0.x), vec4<bool>(true, global0.x, global0.x, var_2.a)), !vec4<bool>(true, true, var_2.a, global0.x))));
    global0 = !vec4<bool>(func_2().a, var_2.a, !global0.x, !select(true, global0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~func_4(var_1, Struct_1(var_2.a, var_2.b, 6612i, 0i, var_2.d), u_input.a).xx)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1297f)), 170f, _wgslsmith_f_op_f32(sign(355f))), vec3<i32>(-1i) * -(min(vec3<i32>(-2147483647i, var_2.c, var_2.d), vec3<i32>(var_2.e, var_2.d, -2147483647i)) & vec3<i32>(var_2.c, var_2.c, 1i)));
}

