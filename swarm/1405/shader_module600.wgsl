struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: vec2<f32> = vec2<f32>(-1260f, -1446f);

var<private> global2: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: u32) -> vec3<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.b + arg_1.a.b));
    global0 = array<vec4<u32>, 21>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1483f, global1.x, 1006f, arg_0.c.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b.x, arg_1.c, 541f, 1590f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(159f, -355f, -1000f, 490f) * vec4<f32>(811f, arg_0.c.b.x, arg_0.a.b.x, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(519f, 377f, -819f, arg_1.c) + vec4<f32>(arg_0.b.b.x, -410f, global1.x, -1263f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-444f, arg_0.c.b.x), arg_1.c, 403f, _wgslsmith_f_op_f32(global1.x - arg_1.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.b.x, 1000f, arg_0.b.b.x, -1256f), vec4<f32>(1419f, arg_0.b.b.x, arg_0.c.b.x, arg_0.b.b.x))))))));
    let var_1 = !(!arg_2);
    let var_2 = !(!(false != select(false, true, u_input.a <= 2147483647i)));
    return _wgslsmith_f_op_vec3_f32(var_0.www * _wgslsmith_f_op_vec3_f32(min(var_0.zzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.yzx + var_0.zzy) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 161f, 782f)))))));
}

fn func_2(arg_0: Struct_5) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-644f, global1.x, global1.x), vec3<f32>(global1.x, 1909f, arg_0.a.b.x), vec3<bool>(true, arg_0.b.b, true))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec2<bool>(arg_0.a.a.x, arg_0.a.a.x), arg_0.d), Struct_2(vec2<bool>(true, arg_0.b.d.x), arg_0.a.b), Struct_2(arg_0.b.d, vec2<f32>(arg_0.d.x, 1010f)), vec2<bool>(false, arg_0.b.c)), arg_0, arg_0.b.d.x, arg_0.b.a.x)))))), arg_0.b);
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(arg_0.a, arg_0.a, Struct_2(vec2<bool>(true, var_0.b.d.x), arg_0.a.b), var_0.b.d), arg_0, false, var_0.b.a.x)))))), var_0.b);
    global1 = _wgslsmith_f_op_vec2_f32(-var_0.a.yz);
    var var_1 = arg_0.a;
    let var_2 = Struct_3(Struct_2(!(!(!vec2<bool>(true, arg_0.a.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec2<bool>(var_0.b.c, true), vec2<f32>(-220f, 349f)), Struct_2(vec2<bool>(true, true), var_0.a.yz), Struct_2(vec2<bool>(var_1.a.x, false), var_1.b), var_1.a), Struct_5(Struct_2(var_1.a, arg_0.a.b), var_0.b, -384f, vec2<f32>(arg_0.c, -983f)), var_1.a.x || var_1.a.x, ~11484u)).xx)), Struct_2(arg_0.a.a, vec2<f32>(_wgslsmith_f_op_f32(min(-290f, _wgslsmith_f_op_f32(var_0.a.x * arg_0.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.a.b.x)))))), arg_0.a, !select(!(!arg_0.a.a), !select(var_0.b.d, arg_0.b.d, false), var_1.a));
    return all(select(var_2.a.a, !vec2<bool>(all(var_0.b.d), -530f != var_1.b.x), !(~var_0.b.a.x < (0u >> (arg_0.b.a.x % 32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(round(arg_2.a.yx));
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_2.a.yx + arg_2.a.yx), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + _wgslsmith_f_op_f32(round(global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    global2 = global1.x;
    let var_0 = _wgslsmith_add_i32(u_input.a, select(_wgslsmith_mod_i32(u_input.a, 2147483647i) & _wgslsmith_mod_i32(u_input.a, -40416i), 46234i, true) | arg_1.x);
    let var_1 = !vec3<bool>(arg_2.b.c, arg_0.c, arg_0.d.x);
    return -1194f;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> bool {
    global1 = vec2<f32>(-1383f, -859f);
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec2<bool>(arg_1, arg_1), vec2<f32>(arg_0, -109f)), Struct_2(vec2<bool>(arg_1, arg_1), vec2<f32>(1068f, global1.x)), Struct_2(vec2<bool>(arg_1, true), vec2<f32>(global1.x, -1183f)), vec2<bool>(true, arg_1)), Struct_5(Struct_2(vec2<bool>(arg_1, arg_1), vec2<f32>(-896f, global1.x)), Struct_1(vec4<u32>(0u, arg_2.x, arg_2.x, 4294967295u), arg_1, true, vec2<bool>(arg_1, arg_1)), global1.x, vec2<f32>(arg_0, -346f)), true, ~arg_2.x)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -1558f) - global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, global1.x), vec2<f32>(arg_0, arg_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(-650f, global1.x), vec2<f32>(-1079f, -829f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1056f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))))));
    var var_1 = vec2<i32>(13199i, u_input.a);
    var var_2 = _wgslsmith_clamp_u32(arg_2.x, ~arg_2.x, ~57724u);
    var var_3 = Struct_5(Struct_2(!select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), !vec2<bool>(false, arg_1)), var_0), Struct_1(min(global0[_wgslsmith_index_u32(3662u >> (countOneBits(28421u) % 32u), 21u)], firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(21521u, 13347u, 0u, arg_2.x), global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(arg_2.x, 21u)]))), true | all(!vec4<bool>(arg_1, false, arg_1, false)), select(_wgslsmith_f_op_f32(-global1.x) != _wgslsmith_div_f32(arg_0, -165f), false, true), vec2<bool>(true && (u_input.a > -4532i), arg_1)), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), vec2<bool>(true, true)), var_0), Struct_2(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1167f, -412f))), Struct_2(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(379f, -1097f))), select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1)), !vec2<bool>(arg_1, true), global1.x > global1.x)), Struct_5(Struct_2(select(vec2<bool>(true, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, false)), vec2<f32>(-401f, arg_0)), Struct_1(min(global0[_wgslsmith_index_u32(arg_2.x, 21u)], vec4<u32>(arg_2.x, 9417u, 4294967295u, 0u)), var_0.x >= 1430f, 47576u < arg_2.x, vec2<bool>(arg_1, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(127f)), arg_0)), arg_1, arg_2.x)).x, var_0);
    return true && any(select(select(vec3<bool>(var_3.b.d.x, arg_1, true), vec3<bool>(false, var_3.a.a.x, true), !vec3<bool>(arg_1, var_3.b.c, false)), vec3<bool>(true, !var_3.b.b, false), !select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(var_3.a.a.x, false, var_3.a.a.x), arg_1)));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_4(Struct_1(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 21u)]), true, any(vec4<bool>(false, true, true, false)) || func_2(Struct_5(Struct_2(vec2<bool>(false, true), vec2<f32>(global1.x, global1.x)), Struct_1(vec4<u32>(0u, 1u, 1u, 26552u), false, false, vec2<bool>(true, false)), global1.x, vec2<f32>(-923f, global1.x))), vec2<bool>(true, 0i != arg_0)), _wgslsmith_div_vec2_i32(min(vec2<i32>(-2147483647i, -25737i), max(vec2<i32>(arg_0, 2147483647i), vec2<i32>(u_input.a, arg_0))), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, arg_0), vec2<i32>(u_input.a, arg_0))), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 732f, global1.x)), Struct_1(global0[_wgslsmith_index_u32(0u, 21u)], true, true, vec2<bool>(false, true))))), 52125u > ~(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 21u)], vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)) | ~2954u), ~_wgslsmith_add_vec2_u32(select(max(vec2<u32>(4294967295u, 8178u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u), vec2<bool>(false, true)), vec2<u32>(max(4294967295u, 4294967295u), 1u)));
    global0 = array<vec4<u32>, 21>();
    global0 = array<vec4<u32>, 21>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x);
    var var_2 = !(!select(vec3<bool>(func_5(-909f, true, vec2<u32>(9018u, 9871u)), func_2(Struct_5(Struct_2(vec2<bool>(true, var_0), vec2<f32>(1000f, global1.x)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 21u)], false, var_0, vec2<bool>(var_0, true)), var_1, vec2<f32>(-807f, var_1))), true), select(select(vec3<bool>(true, true, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, false)), vec3<bool>(var_0, false, false), vec3<bool>(var_0, true, var_0)), var_0));
    return select(countOneBits(_wgslsmith_div_vec2_i32(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, u_input.a), vec2<i32>(u_input.a, 0i), vec2<i32>(-2147483647i, arg_0)), select(vec2<i32>(u_input.a, -27872i), vec2<i32>(-14834i, arg_0), var_2.x)), ~min(vec2<i32>(arg_0, 32827i), vec2<i32>(32025i, arg_0)))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-11310i, reverseBits(71645i)), _wgslsmith_add_vec2_i32(min(vec2<i32>(30986i, -2147483647i), vec2<i32>(u_input.a, arg_0)), firstLeadingBit(vec2<i32>(arg_0, -12873i)))), select(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-3129i, 7528i), vec2<i32>(arg_0, -1i)), max(vec2<i32>(arg_0, u_input.a), vec2<i32>(1i, 34299i))), ~(-2147483647i), var_0)), var_2.zy);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1376f))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-global1.x), 649f) - vec3<f32>(-1383f, _wgslsmith_div_f32(-258f, 889f), _wgslsmith_f_op_f32(-arg_0.b.x)))), Struct_1(~firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(28666u, 5474u), 21u)]), !(!any(vec3<bool>(arg_0.a.x, arg_0.a.x, true))), arg_0.a.x && (-1435i != arg_2.x), !(!arg_0.a)));
    var var_2 = var_0;
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(0u, 1u)), 21u)], true, false, vec2<bool>(arg_0.a.x, true));
    let var_4 = vec2<u32>(74786u, 47372u) & (~(~vec2<u32>(var_3.a.x, var_1.b.a.x)) | abs(var_3.a.zz));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1476f, 679f) * var_1.a.zy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.zy * vec2<f32>(657f, -108f)) * _wgslsmith_f_op_vec2_f32(-arg_0.b)) - arg_0.b)) + vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(1505f - _wgslsmith_f_op_f32(func_4(var_1.b, arg_2.xx, Struct_4(vec3<f32>(global1.x, var_1.a.x, -248f), Struct_1(var_1.b.a, var_3.c, false, vec2<bool>(false, var_1.b.d.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(func_6(Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(global1.x, global1.x))), func_1(-30909i), reverseBits(vec3<i32>(u_input.a, -1i, abs(u_input.a))))));
    var var_1 = -u_input.a;
    let var_2 = vec4<i32>(_wgslsmith_add_i32(1i, u_input.a), -2147483647i, u_input.a, _wgslsmith_dot_vec2_i32(abs(countOneBits(vec2<i32>(u_input.a, 1i))), ~min(-vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, -1i))));
    let var_3 = Struct_3(Struct_2(vec2<bool>(any(select(var_0.a, var_0.a, vec2<bool>(false, false))), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(select(global1.x, 2234f, true))))), Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.b)))), Struct_2(select(var_0.a, select(select(vec2<bool>(false, var_0.a.x), var_0.a, var_0.a), vec2<bool>(var_0.a.x, var_0.a.x), select(vec2<bool>(false, true), var_0.a, false)), var_0.a), var_0.b), vec2<bool>(select(!var_0.a.x, true, var_0.b.x > -1398f), !(_wgslsmith_f_op_f32(f32(-1f) * -1262f) <= var_0.b.x)));
    let var_4 = vec3<bool>(!any(!select(vec2<bool>(var_3.d.x, var_3.a.a.x), var_3.c.a, var_3.c.a)), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(643f);
}

