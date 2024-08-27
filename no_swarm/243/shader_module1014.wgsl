struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, -9041i, i32(-2147483648));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(818f)) + -1128f), 766f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(-arg_3.x), arg_2.b.a & true)))), true, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a ^ 1i, ~u_input.a, ~global2.x), min(global2.x, ~global2.x)), 1f, ~firstTrailingBit(global1[_wgslsmith_index_u32(9784u, 22u)]));
    var var_1 = 4294967295u;
    var var_2 = Struct_2(arg_2.b.d.x, vec4<bool>(any(arg_2.b.b.xw), true, all(select(arg_2.b.d.yxw, arg_2.b.b.wyw, -2147483647i >= u_input.a)), (all(arg_2.b.b.yy) && !global0.x) | var_0.b), arg_3.x, select(vec4<bool>(true, all(vec2<bool>(true, true)), any(select(vec3<bool>(global0.x, var_0.b, false), vec3<bool>(false, false, arg_2.b.b.x), true)), var_0.b), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(arg_2.b.a, false, true, true), true), !arg_2.b.d, var_0.b), arg_2.b.d.x), ~vec2<u32>(4294967295u, 4294967295u));
    let var_3 = Struct_2(false, !select(arg_2.b.b, var_2.b, vec4<bool>(false, var_2.d.x, any(vec3<bool>(true, var_2.d.x, false)), any(arg_2.b.b.wx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - arg_2.a) + 285f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -418f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x - -823f), _wgslsmith_f_op_f32(f32(-1f) * -516f), arg_2.b.b.x)))), vec4<bool>(any(vec4<bool>(var_0.b, true, var_0.c > u_input.a, false)), true, !(!any(vec3<bool>(false, false, arg_2.b.a))), true), arg_2.b.e);
    var var_4 = vec4<i32>(i32(-1i) * -22734i, 2147483647i, min(~firstTrailingBit(u_input.a), _wgslsmith_mult_i32(-2147483647i, u_input.a)), i32(-1i) * -_wgslsmith_mod_i32(2147483647i, var_0.c));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-257f, arg_2.b.c, -1453f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, arg_2.b.c, var_2.c) * var_0.a), _wgslsmith_f_op_vec3_f32(max(var_0.a, vec3<f32>(-1000f, -984f, 644f)))) + vec3<f32>(var_2.c, 468f, arg_3.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, vec3<bool>(false, global0.x, true))), var_0.a), _wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, 410f, arg_3.x) * vec3<f32>(var_3.c, -267f, 1684f))))))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-258f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f + -208f) + -250f), -468f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(298f, -688f)) - _wgslsmith_f_op_f32(round(-948f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) - _wgslsmith_f_op_f32(min(-831f, 977f))), 387f), vec3<bool>(any(!vec4<bool>(global0.x, global0.x, false, global0.x)), true, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-216f, _wgslsmith_f_op_f32(-367f * -402f), _wgslsmith_f_op_f32(-657f - -2437f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(u_input.d.x, u_input.c.x, arg_1, u_input.b), 16150u, Struct_3(1046f, Struct_2(false, vec4<bool>(global0.x, global0.x, false, true), -370f, vec4<bool>(global0.x, global0.x, false, global0.x), u_input.d.yx)), vec2<f32>(-1414f, -1812f))), _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(arg_1, 22u)], 53212u, Struct_3(1502f, Struct_2(global0.x, vec4<bool>(global0.x, false, global0.x, true), 1000f, vec4<bool>(global0.x, global0.x, global0.x, false), u_input.c.xx)), vec2<f32>(-1000f, 1000f))))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(77011u, u_input.c.x, 37032u, 72791u), 55628u, Struct_3(-248f, Struct_2(global0.x, vec4<bool>(false, global0.x, global0.x, global0.x), -1606f, vec4<bool>(true, false, global0.x, global0.x), u_input.c.xz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1532f, 108f) - vec2<f32>(953f, 1449f)))).x, _wgslsmith_f_op_f32(1270f - _wgslsmith_f_op_f32(sign(169f))), _wgslsmith_f_op_f32(f32(-1f) * -1222f)))));
    var var_1 = ~countOneBits(~u_input.d.x & ~(~64763u));
    var_1 = arg_1 << (~40696u % 32u);
    global2 = vec3<i32>(2147483647i, arg_0, u_input.a);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_div_f32(594f, _wgslsmith_f_op_f32(f32(-1f) * -833f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-905f, var_0.x))), var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x))), global0.x, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-558f)), -170f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), vec4<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.d.x, max(arg_1, ~arg_1)), arg_1, reverseBits(4294967295u)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(641f, var_0.x), var_2.a.xz))), _wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(var_2.a.x, -610f))) - var_2.a.xy));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - 1620f)), -1063f)))), Struct_2(global0.x && global0.x, select(!select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, true, false, global0.x)), !select(vec4<bool>(false, false, true, false), vec4<bool>(global0.x, global0.x, true, true), false), all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -1147f)) * _wgslsmith_div_f32(-1818f, _wgslsmith_f_op_f32(-arg_1.a.x))), select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, global0.x, false, true), false), !vec4<bool>(global0.x, false, true, global0.x), global0.x), global0.x), _wgslsmith_mod_vec2_u32(~u_input.c.zx, countOneBits(vec2<u32>(43333u, u_input.d.x)))));
    let var_1 = var_0.b.b;
    global2 = countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, -(arg_0 >> (57930u % 32u))), vec3<i32>(countOneBits(abs(-30298i)), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 29664i, -16980i), vec3<i32>(40608i, 0i, 1i)))));
    global2 = vec3<i32>(-28219i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(arg_0, 0i, arg_0)), countOneBits(-vec3<i32>(arg_0, arg_0, u_input.a))), vec3<i32>(global2.x, reverseBits(1i), countOneBits(-1i))), 14029i);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1188f, var_0.a, arg_1.a.x), vec3<f32>(var_0.b.c, 1038f, var_0.b.c)))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1118f, 184f) - vec3<f32>(arg_1.a.x, -731f, 327f))))));
    return all(select(vec2<bool>(true, any(var_1)), select(var_1.wy, var_0.b.b.xw, !select(vec2<bool>(var_0.b.b.x, false), var_0.b.b.xy, var_0.b.d.zw)), vec2<bool>(true, all(!vec4<bool>(true, true, var_1.x, true)))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    return Struct_2(true, vec4<bool>(!arg_0, func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(3308i, u_input.a, u_input.a, -46001i), reverseBits(vec4<i32>(-28081i, global2.x, u_input.a, -2147483647i))), func_2(global2.x, u_input.d.x)), !arg_0, func_4(firstLeadingBit(34509i) >> (_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(9227u, 22u)], vec4<u32>(u_input.c.x, arg_2.x, 1u, 1u)) % 32u), Struct_4(vec2<f32>(772f, 874f)))), arg_1, arg_3.b, arg_2.xy);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-arg_2));
    let var_1 = arg_0;
    global1 = array<vec4<u32>, 22>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -808f, arg_2.x)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c, 435f, arg_2.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.x, var_1.c, arg_2.x))), arg_0.b.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(496f, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(424f, var_1.c, arg_0.c))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, arg_0.c, arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-888f, 1145f, -635f)))))), !(!any(vec3<bool>(var_1.d.x, var_1.d.x, arg_0.b.x)) | !all(vec3<bool>(var_1.d.x, true, global0.x))), -1i, _wgslsmith_f_op_f32(abs(840f)), vec4<u32>(~10225u, ~var_1.e.x, arg_1, arg_1));
    let var_3 = select(vec3<bool>(!func_1(true & var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1062f), vec3<u32>(116632u, arg_0.e.x, 1u), arg_0).b.x, !(!any(vec4<bool>(false, false, true, true))), true), !arg_0.d.zxx, var_1.d.zyy);
    return func_1(func_4(-29508i, Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, var_0.a.x) * vec2<f32>(248f, -456f))))), -1547f, firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2.e.x, var_1.e.x), var_1.e.x), ~_wgslsmith_dot_vec2_u32(var_2.e.zw, vec2<u32>(52060u, 4294967295u)), (1u << (0u % 32u)) << (_wgslsmith_mod_u32(0u, 61548u) % 32u))), func_1(max(countOneBits(1i), var_2.c | u_input.a) <= var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), vec3<u32>(1u, ~38961u, max(arg_1, 24717u) << (select(var_2.e.x, 0u, false) % 32u)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1362f, -1337f, -1261f), vec3<f32>(-1498f, 109f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, 580f, 1478f))))));
    let var_1 = !all(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, true), vec3<bool>(false, true, global0.x))) && true;
    let var_2 = Struct_3(1000f, func_5(func_1(true, _wgslsmith_f_op_f32(ceil(var_0.x)), firstLeadingBit(vec3<u32>(42669u, u_input.d.x, 8331u)) ^ u_input.c, Struct_2(!var_1, vec4<bool>(global0.x, var_1, global0.x, var_1), _wgslsmith_f_op_f32(ceil(var_0.x)), !vec4<bool>(false, var_1, true, var_1), u_input.d.yy)), 53879u, vec2<f32>(-970f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x)))));
    global2 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(-2147483647i, 2147483647i, -28165i), vec3<i32>(u_input.a, u_input.a, global2.x)), min(vec3<i32>(1i, u_input.a, 1i), vec3<i32>(14404i, 0i, global2.x))), vec3<i32>(global2.x, -38380i, select(u_input.a, -4608i, false))) << (_wgslsmith_mod_vec3_u32(u_input.d & _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.d.x), vec3<u32>(10509u, 0u, var_2.b.e.x)), max(u_input.c, vec3<u32>(u_input.c.x, u_input.b, 1u))) % vec3<u32>(32u)), vec3<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(10588i, 1i), 0i, ~u_input.a)), _wgslsmith_mult_i32(u_input.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -44767i, -43997i, 3119i), vec4<i32>(global2.x, u_input.a, global2.x, -2147483647i))), 1i));
    global2 = select(vec3<i32>(-_wgslsmith_sub_i32(-9719i, 1i), -u_input.a, countOneBits(_wgslsmith_div_i32(-1i, global2.x) | 1i)), ~vec3<i32>(global2.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i), vec4<i32>(u_input.a, global2.x, u_input.a, global2.x)), 2147483647i), true);
    global2 = ~_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-23568i, global2.x), vec2<i32>(2147483647i, 1i)), _wgslsmith_mod_i32(0i, global2.x)), max(vec3<i32>(1i, -2147483647i, ~38022i), ~(vec3<i32>(global2.x, -45606i, u_input.a) ^ vec3<i32>(2147483647i, u_input.a, 2147483647i))));
    var var_3 = Struct_2(select(_wgslsmith_f_op_f32(-var_2.a) > func_1(var_0.x == var_2.b.c, _wgslsmith_f_op_f32(1524f + -864f), u_input.c, func_5(Struct_2(var_1, vec4<bool>(var_2.b.b.x, global0.x, global0.x, global0.x), -246f, var_2.b.b, vec2<u32>(89362u, 105450u)), 33374u, vec2<f32>(182f, var_2.b.c))).c, select(true, global0.x, !var_2.b.a), !(firstTrailingBit(4294967295u) <= var_2.b.e.x)), var_2.b.b, _wgslsmith_f_op_f32(1267f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_2.a, var_2.b.c)))), vec4<bool>(all(var_2.b.b), false, false, u_input.a > _wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(global2.x, u_input.a))), ~u_input.d.yx);
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1682f, var_2.b.c, var_2.a)))))), vec4<f32>(331f, 792f, _wgslsmith_f_op_f32(-1316f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.c), _wgslsmith_f_op_f32(ceil(var_2.b.c)))), func_2(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-14482i, u_input.a, u_input.a, u_input.a)), vec4<i32>(48043i, 7395i, 13483i, -2147483647i) >> (global1[_wgslsmith_index_u32(1u, 22u)] % vec4<u32>(32u))), ~(~99069u)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1471f), min(global2.zy, (vec2<i32>(global2.x, 1i) ^ vec2<i32>(u_input.a, u_input.a)) ^ countOneBits(-vec2<i32>(-26731i, -19752i))), -min(global2.x, (u_input.a << (1213u % 32u)) << (abs(var_3.e.x) % 32u)), countOneBits(~(firstTrailingBit(vec3<i32>(1i, u_input.a, global2.x)) & firstTrailingBit(vec3<i32>(1i, -17678i, global2.x)))));
}

