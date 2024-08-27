struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(56261u), Struct_1(4294967295u), Struct_1(9049u), Struct_1(27540u), Struct_1(40983u), Struct_1(1u), Struct_1(1331u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(4294967295u), Struct_1(92678u), Struct_1(89399u));

var<private> global1: array<vec3<i32>, 29>;

var<private> global2: array<vec4<bool>, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    global0 = array<Struct_1, 13>();
    var var_0 = Struct_1(4294967295u);
    let var_1 = u_input.c;
    var var_2 = -358f;
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1528f, -413f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-640f - -1486f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -364f), -489f)), -1622f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1055f * -989f))), -1000f, 1i >= _wgslsmith_div_i32(-19533i, u_input.c))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: f32) -> vec3<f32> {
    global2 = array<vec4<bool>, 3>();
    var var_0 = -_wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.c, 2147483647i, u_input.c, -3794i)), vec4<i32>(~_wgslsmith_sub_i32(u_input.c, u_input.c), -1i, -u_input.c, _wgslsmith_mult_i32(~u_input.c, u_input.c)));
    var var_1 = ~(~_wgslsmith_mod_u32(~_wgslsmith_mod_u32(arg_1.x, arg_0.x), 1u));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2 * arg_2), _wgslsmith_f_op_f32(f32(-1f) * -700f), -275f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(func_3(Struct_1(1u), vec2<i32>(-4758i, u_input.c), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1381f, -486f))), -2542f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    global1 = array<vec3<i32>, 29>();
    var var_0 = -2147483647i;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 13u)];
    var var_2 = 14799u;
    let var_3 = global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(4294967295u, var_1.a)), 13u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, u_input.b), 13u)];
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = true;
    return arg_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = func_5(global0[_wgslsmith_index_u32(arg_2.a, 13u)], _wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, arg_2.a), ~(~(~u_input.b))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(firstTrailingBit(vec4<u32>(u_input.b, arg_2.a, arg_2.a, u_input.b)), vec3<u32>(u_input.b, 4464u, arg_2.a) | vec3<u32>(arg_2.a, 14150u, 0u), _wgslsmith_f_op_f32(1154f + 1000f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(965f, 642f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-243f, 1414f, -1362f) * vec3<f32>(-1591f, 1439f, 1006f))))), !arg_3), select(select(vec3<bool>(arg_1, arg_3 & arg_3, arg_3 & true), vec3<bool>(true, true, arg_1), select(!vec3<bool>(true, arg_1, arg_3), !vec3<bool>(arg_1, false, false), select(vec3<bool>(arg_3, false, true), vec3<bool>(true, arg_3, arg_1), arg_3))), vec3<bool>(true, true, true), arg_1));
    var var_1 = Struct_1(~_wgslsmith_mod_u32(~(~0u), 13415u));
    var var_2 = Struct_1(22899u);
    let var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(3463f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-540f, 1529f, arg_3)) * _wgslsmith_f_op_f32(f32(-1f) * -861f))))));
    return var_0;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_add_vec3_i32(~global1[_wgslsmith_index_u32(func_5(Struct_1(50577u), arg_3.a, global0[_wgslsmith_index_u32(1u, 13u)], vec3<bool>(false, true, true)).a, 29u)], vec3<i32>(reverseBits(u_input.c), 37960i, abs(arg_0.x))) >> (arg_2 % vec3<u32>(32u)), all(select(vec4<bool>(true, true, false, false), global2[_wgslsmith_index_u32(21407u, 3u)], true)) || true, Struct_1(abs(49121u)), ~u_input.a > ~20125u);
    var var_1 = arg_3.a;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1171f) + -1905f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1582f)) - 884f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1284f, 934f))))), _wgslsmith_f_op_f32(func_3(arg_1, min(arg_0 | vec2<i32>(-9050i, u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, arg_0.x), arg_0)), true)), -275f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1272f, -2190f, -307f, 635f) + vec4<f32>(241f, 323f, -125f, -1077f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1968f, 936f, 1000f, 102f)))))))));
    let var_4 = ~arg_2.xz;
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(19049u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2, vec3<u32>(4294967295u, 2849u, 1u), vec3<u32>(81050u, 39287u, arg_2.x)) ^ vec3<u32>(0u, 58668u, arg_3.a), ~(vec3<u32>(1u, 70915u, 69560u) << (vec3<u32>(arg_3.a, 35757u, 27907u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(27117u, u_input.b, 4294967295u)), arg_2))), 13u)];
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(658f, -2074f, 235f, -1000f) * vec4<f32>(1988f, -459f, -442f, -769f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-924f, -803f, -116f, -1240f) * vec4<f32>(297f, -1000f, 765f, -845f))))));
    let var_1 = func_5(func_6(~(-max(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(u_input.c, 2147483647i))), func_5(arg_1, ~(~arg_1.a), Struct_1(~1u), vec3<bool>(all(vec3<bool>(true, true, true)), true, any(vec2<bool>(false, false)))), ~(firstTrailingBit(vec3<u32>(0u, u_input.b, arg_1.a)) >> (~vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u))), Struct_1(func_6(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -25160i), vec2<i32>(u_input.c, u_input.c)), Struct_1(4294967295u), ~vec3<u32>(20597u, 0u, arg_1.a), Struct_1(4294967295u)).a)), arg_1.a, arg_1, vec3<bool>(true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true))));
    global1 = array<vec3<i32>, 29>();
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(442f, 278f, -150f, var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_div_f32(1092f, -1652f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f * 1000f)), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, var_0.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, 1520f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2350f, 327f, -1000f, var_0.x) + vec4<f32>(-178f, var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -1000f, var_0.x, 1314f))) * vec4<f32>(var_0.x, var_0.x, 1922f, 229f)), vec4<f32>(-889f, _wgslsmith_f_op_f32(f32(-1f) * -433f), var_0.x, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), -984f, 619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 484f, -1126f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 107f, -749f, var_0.x)))))));
    return vec2<bool>(!(var_0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1706f * 149f) - _wgslsmith_f_op_f32(-var_0.x))), all(select(vec3<bool>(false, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, false), !all(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!func_7(~(~1u), func_6(vec2<i32>(u_input.c, 1963i) & vec2<i32>(u_input.c, -2147483647i), func_1(global1[_wgslsmith_index_u32(u_input.a, 29u)], false, global0[_wgslsmith_index_u32(u_input.a, 13u)], false), ~vec3<u32>(56053u, 10850u, 0u), global0[_wgslsmith_index_u32(u_input.a, 13u)])));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-884f))))));
    var var_2 = Struct_1(u_input.b);
    let var_3 = global0[_wgslsmith_index_u32(var_2.a, 13u)];
    var var_4 = 1i;
    let var_5 = Struct_1(~var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

