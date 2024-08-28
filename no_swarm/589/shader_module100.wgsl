struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-2009f, -986f, -373f, 244f, -218f, -246f, -1226f);

var<private> global1: f32 = 330f;

var<private> global2: array<bool, 15> = array<bool, 15>(true, false, true, true, false, false, false, true, true, true, true, false, false, false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    var var_0 = !select(!(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(100562u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], false))), vec4<bool>(global2[_wgslsmith_index_u32(~61448u ^ u_input.a, 15u)], global2[_wgslsmith_index_u32(25919u, 15u)], any(vec4<bool>(true, true, true, true)), true), true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 7u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1150f)) - _wgslsmith_div_f32(-774f, -1000f)) <= global0[_wgslsmith_index_u32(~select(15341u, select(4294967295u, 0u, false), true), 7u)], vec3<bool>((!global2[_wgslsmith_index_u32(u_input.a, 15u)] && var_0.x) | true, false | all(!var_0.yzx), firstTrailingBit(~2147483647i) >= -(i32(-1i) * -28985i)), select(vec2<bool>(true, !global2[_wgslsmith_index_u32(2548u, 15u)] & true), !select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], true), vec2<bool>(var_0.x, var_0.x), !var_0.zy), all(var_0.wx)), -2147483647i);
    var var_2 = vec4<u32>(firstTrailingBit(4294967295u), countOneBits(u_input.a), ~(~(~(u_input.a | 1u))), firstLeadingBit(~_wgslsmith_clamp_u32(~27768u, u_input.a, ~45463u)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec3<bool>(!var_1.d.x, var_1.d.x, true)), !select(var_0.wyz, select(!var_1.c, select(var_0.zxz, vec3<bool>(var_1.d.x, var_0.x, true), vec3<bool>(true, var_1.d.x, var_1.d.x)), true), select(var_0.wyz, var_0.yyx, select(vec3<bool>(true, var_1.c.x, true), vec3<bool>(false, false, var_0.x), vec3<bool>(var_1.d.x, global2[_wgslsmith_index_u32(u_input.a, 15u)], var_1.c.x)))), select(vec2<bool>(true, true), var_1.c.yy, select(vec2<bool>(all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(0u, 15u)])), true), vec2<bool>(all(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(83u, 15u)], false)), -824f >= var_1.a), false)), (-1i ^ (var_1.e & 1i)) >> (u_input.a % 32u));
    var var_4 = _wgslsmith_div_f32(-1481f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)));
    return var_3.c.x;
}

fn func_2() -> vec4<f32> {
    global2 = array<bool, 15>();
    var var_0 = -(_wgslsmith_div_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -18713i, 0i), vec3<i32>(19426i, 39927i, -1i)), vec3<i32>(32364i, 2147483647i, 19075i) << (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(4504i, 19033i), 17416i, 2147483647i)) >> (_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 30987u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)) | vec3<u32>(58731u, u_input.a, 4294967295u), ~reverseBits(vec3<u32>(u_input.a, 0u, u_input.a))) % vec3<u32>(32u)));
    var var_1 = select(vec4<bool>(false, !global2[_wgslsmith_index_u32(~(~u_input.a), 15u)], func_3(), _wgslsmith_mult_i32(var_0.x, -17015i) != var_0.x), vec4<bool>(true, global2[_wgslsmith_index_u32(26009u, 15u)], false, -32179i != countOneBits(~var_0.x)), !select(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 15u)], false, true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(804u, 15u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(80805u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], false)), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(true, false, false, true), global2[_wgslsmith_index_u32(20993u, 15u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(0u, 15u)])), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(~4294967295u, 15u)]), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], true), vec4<bool>(global2[_wgslsmith_index_u32(23489u, 15u)], global2[_wgslsmith_index_u32(44917u, 15u)], false, global2[_wgslsmith_index_u32(34521u, 15u)]), true), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(u_input.a, 15u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 15u)])));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a, all(select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(global2[_wgslsmith_index_u32(28369u, 15u)], false, global2[_wgslsmith_index_u32(53743u, 15u)], true), true))), 7u)]), true, var_1.xxy, var_1.zz, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 1i), var_0.yx));
    var var_3 = vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~var_2.e, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, -54589i), vec3<i32>(-1i, 0i, 0i)), _wgslsmith_div_i32(20008i, var_0.x), var_2.e)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, var_0.x, var_0.x), vec4<i32>(7213i, var_0.x, var_0.x, -15653i)), vec4<i32>(var_0.x, 2147483647i, var_2.e, var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.e, -33138i, var_0.x, var_2.e), firstTrailingBit(vec4<i32>(var_2.e, var_0.x, -33948i, var_0.x))))), -2147483647i);
    return vec4<f32>(global0[_wgslsmith_index_u32(~5709u, 7u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 7u)] + _wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)) - var_2.a), global0[_wgslsmith_index_u32(~(~reverseBits(u_input.a)), 7u)]), _wgslsmith_div_f32(-220f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u & u_input.a, 7u)], var_2.a) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a - -234f), -232f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) + _wgslsmith_f_op_f32(325f * 1607f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-807f)) * arg_0.x), true));
    var var_1 = u_input.a << ((min(abs(4294967295u), 1u) << (countOneBits(3637u) % 32u)) % 32u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f * _wgslsmith_f_op_f32(f32(-1f) * -177f))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) * 591f));
    let var_3 = arg_2;
    return Struct_1(_wgslsmith_div_f32(arg_1, -1008f), any(!vec3<bool>(arg_3.d.x, all(vec4<bool>(false, arg_3.b, false, global2[_wgslsmith_index_u32(u_input.a, 15u)])), true)), select(arg_3.c, !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(1u, 15u)], arg_3.b), arg_3.c, u_input.a >= 33371u), arg_3.c), select(select(arg_3.c.xx, vec2<bool>(true, true), select(select(vec2<bool>(false, false), arg_3.c.xy, false), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 15u)], false), !arg_3.c.yz)), !(!(!arg_3.d)), false), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-4189i, var_3, -1i, arg_3.e), vec4<i32>(var_3, 30546i, 0i, -1i)), vec4<i32>(-2147483647i, 1i, arg_3.e, -2147483647i)), arg_3.e) << (u_input.a % 32u));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, -1179f), vec2<f32>(-1135f, arg_0))) * vec2<f32>(-1653f, arg_3))))));
    let var_1 = -80667i;
    global0 = array<f32, 7>();
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2()))), -377f, arg_2.e, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-262f)) + _wgslsmith_f_op_f32(arg_0 - arg_2.a))), arg_2.b, !vec3<bool>(true, 2934f <= arg_3, all(arg_2.d)), !vec2<bool>(select(true, true, arg_2.d.x), -1i < arg_2.e), _wgslsmith_dot_vec2_i32(select(abs(vec2<i32>(arg_1.x, -2147483647i)), ~vec2<i32>(arg_1.x, arg_1.x), !arg_2.d), vec2<i32>(arg_1.x, firstLeadingBit(arg_1.x)))));
    var var_3 = reverseBits(vec2<u32>(u_input.a, u_input.a)) & ~vec2<u32>(u_input.a, u_input.a);
    return func_4(vec4<f32>(_wgslsmith_div_f32(1694f, global0[_wgslsmith_index_u32(~u_input.a & u_input.a, 7u)]), 677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)), _wgslsmith_f_op_f32(round(542f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1616f, arg_0)), var_1, arg_2);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = -arg_1.e;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-652f, 2359f, global2[_wgslsmith_index_u32(4294967295u, 15u)]))))));
    global2 = array<bool, 15>();
    var var_1 = false;
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, arg_1.a, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(18833u, 7u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-285f, arg_1.a, -2023f, -1014f), vec4<f32>(1463f, global0[_wgslsmith_index_u32(arg_0.x, 7u)], arg_1.a, global0[_wgslsmith_index_u32(0u, 7u)]), true)))))), arg_1.a, ~_wgslsmith_dot_vec4_i32(min(countOneBits(vec4<i32>(2147483647i, 1i, arg_1.e, -2147483647i)), vec4<i32>(var_0, arg_1.e, var_0, var_0)), -vec4<i32>(2147483647i, 41661i, -12790i, var_0)), arg_1);
    return -(~select(_wgslsmith_add_i32(abs(-12606i), -16389i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, var_2.e, 9052i), vec4<i32>(-1i, var_0, var_0, var_0)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a >> ((u_input.a << (530u % 32u)) % 32u), 7u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 7u)])), false, vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a, u_input.a), 15u)], !(!(!global2[_wgslsmith_index_u32(u_input.a, 15u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(38448i, -36035i)) < func_5(vec2<u32>(u_input.a, 1u), func_1(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec4<i32>(-44765i, -2147483647i, 15079i, -1i), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], true, true), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 15u)]), 45939i), 798f))), !(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)] & global2[_wgslsmith_index_u32(0u, 15u)], 0u <= u_input.a)), _wgslsmith_mod_i32(-2147483647i, abs(-25458i)));
    var var_1 = 2147483647i | _wgslsmith_clamp_i32(var_0.e ^ abs(var_0.e), 47039i, abs(reverseBits(_wgslsmith_mult_i32(var_0.e, 2147483647i))));
    let var_2 = countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-(var_0.e << (u_input.a % 32u)), 15798i, _wgslsmith_add_i32(1i, 1i)), (-vec3<i32>(var_0.e, var_0.e, -1i) << (vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u))) | vec3<i32>(reverseBits(var_0.e), i32(-1i) * -20165i, abs(var_0.e))));
    let var_3 = global2[_wgslsmith_index_u32(u_input.a, 15u)];
    var var_4 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-558f, -1222f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(637f * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 7u)]), var_0.b)) + func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, var_0.a, 268f, var_0.a)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a, 7u)])), var_2.x, var_0).a), 1919f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 7u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f))), var_0.a)), func_5(vec2<u32>(1937u, u_input.a), Struct_1(-549f, !func_3(), !func_1(var_0.a, vec4<i32>(var_2.x, -45472i, var_0.e, var_2.x), var_0, var_0.a).c, vec2<bool>(var_0.d.x || true, var_0.c.x && false), _wgslsmith_mult_i32(reverseBits(-7544i), firstLeadingBit(0i)))), Struct_1(_wgslsmith_f_op_f32(select(403f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a, 7u)]), global2[_wgslsmith_index_u32(1u, 15u)])), true, !var_0.c, vec2<bool>(true, any(var_0.c) || select(global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(37162u, 15u)], var_0.d.x)), _wgslsmith_mod_i32(var_2.x, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec3<u32>(u_input.a, u_input.a, 4294967295u), countOneBits(vec3<u32>(9319u, u_input.a, u_input.a))) >> (abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)))) % vec3<u32>(32u)));
}

