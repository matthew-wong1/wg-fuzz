struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(726f, 1985f, -987f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1032f, -1558f, 1000f))), vec3<f32>(-289f, 227f, global0.x), select(false, false, true))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -1142f, _wgslsmith_f_op_f32(f32(-1f) * -390f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, -1865f, -322f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 310f, 455f) * vec3<f32>(1000f, 712f, -618f)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1411f, _wgslsmith_f_op_f32(301f * -235f), _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -723f, 1408f) + vec3<f32>(arg_2.b, 1676f, global0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, 444f, -864f) * vec3<f32>(arg_2.b, -794f, -2515f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 185f, global0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.b, 1000f, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, 722f, -172f))))), true || arg_2.a.d.x)));
    var var_0 = select(!(!(!select(vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_0.d.x), vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_2.c.d.x)))), select(select(select(vec4<bool>(true, true, arg_2.c.d.x, arg_0.d.x), select(vec4<bool>(arg_0.d.x, arg_1.x, false, false), vec4<bool>(arg_0.d.x, false, true, true), vec4<bool>(false, arg_2.a.d.x, arg_0.d.x, arg_0.d.x)), select(vec4<bool>(false, false, arg_1.x, true), vec4<bool>(arg_2.c.d.x, arg_0.d.x, arg_1.x, true), arg_1.x)), select(!vec4<bool>(true, arg_1.x, true, arg_2.c.d.x), select(vec4<bool>(arg_0.d.x, arg_2.a.d.x, false, arg_0.d.x), vec4<bool>(false, false, arg_1.x, false), vec4<bool>(arg_2.c.d.x, arg_1.x, false, false)), vec4<bool>(arg_2.c.d.x, true, arg_1.x, false)), all(arg_0.d)), vec4<bool>(arg_2.a.d.x, arg_1.x, true, 828f > arg_2.b), any(select(vec3<bool>(arg_2.a.d.x, true, arg_1.x), select(vec3<bool>(arg_2.a.d.x, arg_0.d.x, true), arg_1, arg_0.d.x), !vec3<bool>(false, arg_2.c.d.x, arg_2.c.d.x)))), select(!select(vec4<bool>(arg_0.d.x, false, false, false), !vec4<bool>(arg_2.a.d.x, false, arg_2.a.d.x, true), select(vec4<bool>(false, arg_2.a.d.x, arg_1.x, arg_1.x), vec4<bool>(arg_0.d.x, true, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(any(select(arg_2.a.d, vec2<bool>(true, arg_1.x), arg_2.a.d)), !arg_2.c.d.x, arg_2.a.d.x | arg_0.d.x, arg_2.c.d.x), vec4<bool>(!any(vec2<bool>(arg_2.c.d.x, true)), false, all(vec3<bool>(true, true, true)), (arg_0.d.x || false) | false)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(418f, -1516f, arg_0.d.x)) + _wgslsmith_div_f32(480f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 808f), arg_2.b))));
    let var_2 = arg_0;
    let var_3 = var_2;
    return false;
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-106f, global0.x, global0.x), vec3<f32>(309f, global0.x, global0.x))))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1000f, -720f), vec3<f32>(global0.x, -1678f, 216f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(380f, -560f, global0.x)))))));
    let var_0 = any(!vec3<bool>(!arg_0.x, true, !(true || arg_0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 889f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-171f * -1106f), -839f, func_3(Struct_1(vec4<u32>(1u, 15394u, u_input.b.x, u_input.b.x), u_input.b.x, -2147483647i, vec2<bool>(false, false)), vec3<bool>(true, true, arg_0.x), Struct_2(Struct_1(vec4<u32>(72235u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x, u_input.a.x, vec2<bool>(false, arg_0.x)), -623f, Struct_1(vec4<u32>(u_input.b.x, 31538u, u_input.b.x, 0u), 4294967295u, u_input.a.x, arg_0.yz))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, -843f)))))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 281f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 216f) - vec4<f32>(global0.x, -1000f, -1000f, -565f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135f, -784f, 2238f, 1570f))))))), abs(vec3<u32>(69302u, u_input.b.x, 63315u)), u_input.b.x, Struct_2(Struct_1(~(~vec4<u32>(u_input.b.x, u_input.b.x, 41454u, u_input.b.x)), 12221u, -(~u_input.a.x), vec2<bool>(any(vec2<bool>(false, arg_0.x)), -496f >= global0.x)), global0.x, Struct_1(select(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, 0u, 71935u, u_input.b.x), select(vec4<bool>(false, arg_0.x, true, var_0), vec4<bool>(true, var_0, var_0, true), var_0)), ~(42929u >> (u_input.b.x % 32u)), 1i, arg_0.yz)), Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.b.x & u_input.b.x, ~u_input.b.x, ~u_input.b.x), u_input.b.x, u_input.a.x >> (u_input.b.x % 32u), !(!vec2<bool>(arg_0.x, arg_0.x))), global0.x, Struct_1(~(vec4<u32>(59140u, 9899u, 4294967295u, 9871u) << (vec4<u32>(81750u, u_input.b.x, u_input.b.x, 16576u) % vec4<u32>(32u))), 4294967295u, 0i, arg_0.xy)));
    let var_2 = -u_input.a.x < _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(var_1.d.c.c, 33544i)), vec2<i32>(var_1.e.c.c, 13395i)), u_input.a.wx), min(vec2<i32>(-1i) * -u_input.a.xz, -reverseBits(vec2<i32>(0i, 2147483647i))));
    return var_1;
}

fn func_4(arg_0: Struct_4) -> vec4<i32> {
    global0 = arg_0.a.zxx;
    global0 = _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.yyy));
    var var_0 = ~countOneBits(~(~vec4<u32>(14609u, 4619u, arg_0.b.x, 18294u)));
    return ~u_input.a;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_3 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x);
    let var_0 = reverseBits(~_wgslsmith_mult_vec4_i32(u_input.a, -u_input.a)) & _wgslsmith_mod_vec4_i32(u_input.a, func_4(func_2(vec3<bool>(arg_0, true, arg_0))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-372f, global0.x, global0.x))) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(1792f)), _wgslsmith_f_op_f32(floor(-1056f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1000f, 174f), vec3<f32>(560f, -1506f, -364f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -124f), vec3<f32>(global0.x, 763f, global0.x), vec3<bool>(arg_0, false, arg_0)))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1013f * 667f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1125f - -851f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(ceil(-384f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -1446f)))))), 158f, func_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, true), arg_0), arg_0 | false)).d.b);
    global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1189f))));
    return Struct_3(select(vec4<bool>(func_3(func_2(vec3<bool>(true, false, arg_0)).e.a, vec3<bool>(true, true, arg_0), func_2(vec3<bool>(arg_0, arg_0, true)).e), arg_0, arg_0, true), vec4<bool>(global0.x <= 1330f, arg_0, (-705f != global0.x) | arg_0, !arg_0 & func_2(vec3<bool>(arg_0, arg_0, false)).e.c.d.x), vec4<bool>(arg_0, any(select(vec3<bool>(arg_0, true, false), vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_0, true))), !select(arg_0, arg_0, false), func_3(func_2(vec3<bool>(arg_0, false, arg_0)).e.a, !vec3<bool>(arg_0, arg_0, arg_0), Struct_2(Struct_1(vec4<u32>(23852u, u_input.b.x, u_input.b.x, 45480u), 1u, u_input.a.x, vec2<bool>(arg_0, true)), 221f, Struct_1(vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x), 4294967295u, 2147483647i, vec2<bool>(false, arg_0)))))), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-u_input.a.x, _wgslsmith_div_i32(var_0.x, 32896i))), _wgslsmith_mod_vec2_i32(~u_input.a.xx, u_input.a.xy)), abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_1, -1009i, var_0.x, -11564i)), select(0i, arg_1, true)) | arg_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x), ~vec4<u32>(20361u, 45059u, u_input.b.x, 4294967295u)), ~(~u_input.b.x)), vec3<u32>(func_2(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, false))).d.a.b, ~(~38880u), u_input.b.x), countOneBits(vec3<u32>(max(u_input.b.x, u_input.b.x), 34383u, ~4294967295u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = u_input.a;
    global0 = func_2(vec3<bool>(false, true, true)).a.xwx;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b, 634f, arg_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.b + -400f), _wgslsmith_f_op_f32(-global0.x), arg_3.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, 1005f))))), !arg_2.a.d.x)));
    var var_1 = select(func_1(false, ~_wgslsmith_mult_i32(1i, -8749i)).a, func_1(!any(func_1(false, -16372i).a.wyy), -func_2(!vec3<bool>(false, arg_0.a.x, arg_0.a.x)).d.a.c).a, arg_0.a);
    var var_2 = func_2(var_1.yxx);
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1817f, 661f))))) * func_2(select(var_1.yyx, !var_1.zyx, var_1.x)).d.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1780f * _wgslsmith_f_op_f32(max(-869f, 1386f))) - 1442f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(324f, -1237f, true)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(max(-812f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(select(749f, -1575f, u_input.b.x >= 4294967295u))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_1(false, 0i), func_2(vec3<bool>(true, true, false)).d.c, func_2(vec3<bool>(false, true, true)).d, _wgslsmith_f_op_vec2_f32(-global0.yx))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(382f, global0.x, 397f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1378f, -765f, 1259f)), u_input.b.x != 1u)))));
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_3(vec4<bool>(false, true, true, true), u_input.a.wz, u_input.a.x, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(vec4<u32>(u_input.b.x, 40228u, 40122u, u_input.b.x), 4294967295u, u_input.a.x, vec2<bool>(false, true)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 0u, 73450u), u_input.b.x, 7394i, vec2<bool>(true, true)), global0.x, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x, u_input.a.x, vec2<bool>(false, true))), global0.xz)).x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-196f, _wgslsmith_f_op_f32(global0.x * global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) * _wgslsmith_f_op_f32(-1543f + -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f - global0.x) + -187f) * _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1041f + global0.x)))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(_wgslsmith_div_f32(787f, global0.x), -1960f)), _wgslsmith_f_op_f32(-global0.x)), all(func_1(select(select(false, true, true), select(true, false, false), -868f > global0.x), max(37462i, -12772i)).a.yyx)));
    var var_0 = -579f;
    var_0 = global0.x;
    var var_1 = global0.xx;
    let var_2 = ~(~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 22025u, 4294967295u, 589u)), u_input.b.x, ~44256u) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 9742u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 47027u)), _wgslsmith_add_u32(1u, u_input.b.x), firstLeadingBit(0u)) % vec3<u32>(32u))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.xx)));
    let var_3 = func_2(vec3<bool>(true, true, true)).d;
    let var_4 = func_2(!vec3<bool>(true, var_3.a.d.x, true)).d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - var_1.x))), -489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_3.b))));
}

