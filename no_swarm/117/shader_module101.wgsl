struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<bool>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(340f, -1156f, -1020f, -495f, -735f);

var<private> global1: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = select(false, false, any(vec3<bool>(true, true, true)));
    let var_1 = Struct_5(Struct_3(Struct_1(vec2<bool>(true, var_0 & false)), select(vec2<bool>(41762i >= u_input.c.x, any(vec3<bool>(true, true, var_0))), !select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), var_0), var_0), Struct_2(Struct_1(select(vec2<bool>(false, var_0), vec2<bool>(false, false), var_0)), vec3<bool>(all(vec2<bool>(true, false)), var_0, true), vec2<bool>(false, false), true, -(~vec4<i32>(u_input.b.x, -64906i, 8027i, u_input.b.x))), true, vec3<bool>(~u_input.a.x == _wgslsmith_dot_vec4_u32(vec4<u32>(51461u, u_input.a.x, 39424u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), var_0, false)), Struct_1(!select(vec2<bool>(true, var_0), select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), true), !vec2<bool>(var_0, false))), any(vec4<bool>(var_0, false, all(vec3<bool>(false, false, false)), select(true, true, true & var_0))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -5175i, _wgslsmith_clamp_i32(u_input.c.x, u_input.b.x, arg_0.x)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0, vec2<i32>(-2147483647i, 11606i), vec2<i32>(u_input.c.x, -2147483647i)), arg_0)), _wgslsmith_clamp_i32(firstTrailingBit(arg_0.x | arg_0.x), 54372i, arg_0.x)), select(select(!select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, false, var_0, var_0), var_0), select(vec4<bool>(true, false, true, var_0), select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(true, var_0, false, var_0), false), !vec4<bool>(var_0, true, false, true)), !select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, false, true, var_0), vec4<bool>(false, var_0, true, false))), select(vec4<bool>(true, -402f == global0[_wgslsmith_index_u32(42560u, 5u)], var_0, !var_0), !(!vec4<bool>(var_0, true, var_0, true)), var_0 | var_0), all(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), vec2<bool>(true, var_0)))));
    global1 = reverseBits(u_input.a.x);
    global0 = array<f32, 5>();
    var var_2 = Struct_2(Struct_1(vec2<bool>(var_0, true)), !select(select(select(var_1.a.c.b, vec3<bool>(var_1.e.x, true, false), vec3<bool>(false, var_1.c, true)), select(var_1.e.ywy, var_1.a.c.b, true), var_1.c & false), !vec3<bool>(var_1.b.a.x, true, var_1.b.a.x), _wgslsmith_div_f32(-408f, global0[_wgslsmith_index_u32(4294967295u, 5u)]) < _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)] - global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), select(var_1.a.c.b.yz, !var_1.a.b, var_1.c), ((~(-46861i) != select(arg_0.x, 0i, var_1.e.x)) && var_0) && all(var_1.e.xww), (~vec4<i32>(u_input.b.x, arg_0.x, 1i, -2147483647i) | abs(var_1.a.c.e)) << (vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) & u_input.a.x, select(0u, u_input.a.x, true), u_input.a.x, ~89662u) % vec4<u32>(32u)));
    return -266f;
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = -681f;
    var var_1 = Struct_4(Struct_3(arg_0.a, vec2<bool>(arg_0.c.a.a.x, arg_0.a.a.x), arg_0.c, abs(firstTrailingBit(2904u)) == _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13329u, 4294967295u, 68404u, 23760u), u_input.a), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), vec3<bool>(_wgslsmith_f_op_f32(round(-329f)) <= _wgslsmith_f_op_f32(func_3(u_input.b)), false && all(arg_0.c.b.xy), any(arg_0.c.b))), _wgslsmith_add_vec4_u32(select(vec4<u32>(14829u, 55956u, 12191u, 515u), vec4<u32>(u_input.a.x, 24707u, 15172u, u_input.a.x), arg_0.c.d | false), _wgslsmith_mult_vec4_u32(u_input.a, firstLeadingBit(vec4<u32>(5060u, 94320u, u_input.a.x, 500u)))) | vec4<u32>(119369u, u_input.a.x, 58213u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 56706u, u_input.a.x, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)))), !(!vec4<bool>(arg_0.b.x && true, all(vec2<bool>(arg_0.e.x, arg_0.e.x)), arg_0.b.x, arg_0.c.e.x >= 1i)), select(all(vec3<bool>(true, true, true)), true, false), ~reverseBits(arg_0.c.e.x));
    global1 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, abs(~16411u)), ~countOneBits(select(vec2<u32>(21161u, var_1.b.x), vec2<u32>(u_input.a.x, 49038u), vec2<bool>(false, var_1.a.b.x))), vec2<bool>(true, any(!var_1.a.b))), reverseBits(_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.ww), vec2<u32>(4294967295u, var_1.b.x))));
    global1 = var_1.b.x;
    global0 = array<f32, 5>();
    return vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(~vec3<i32>(50707i, var_1.e, -39704i), vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.a.c.e.zyy, vec3<i32>(var_1.e, u_input.b.x, var_1.a.c.e.x)), -17745i, -2147483647i));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>) -> bool {
    var var_0 = select(vec2<bool>(false, _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(721f, global0[_wgslsmith_index_u32(41953u, 5u)])) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec2<bool>(!(false & all(vec3<bool>(true, true, true))), true), vec2<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true)), !(u_input.b.x >= u_input.c.x) & true));
    global1 = ~u_input.a.x;
    global1 = ~0u;
    global0 = array<f32, 5>();
    var var_1 = Struct_4(Struct_3(Struct_1(!vec2<bool>(var_0.x, false)), select(vec2<bool>(all(vec4<bool>(true, var_0.x, false, false)), var_0.x), select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), true), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), var_0.x)), !vec2<bool>(false, var_0.x)), Struct_2(Struct_1(vec2<bool>(true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x)), !vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, true)), !vec2<bool>(var_0.x, var_0.x), true, -vec4<i32>(arg_0.x, -41485i, 1i, u_input.b.x)), false, !select(vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(true, true, var_0.x), var_0.x)), vec4<u32>(u_input.a.x, ~(~0u), ~u_input.a.x, 0u << (abs(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)) % 32u)), vec4<bool>(var_0.x, var_0.x, false, any(vec2<bool>(all(vec2<bool>(true, var_0.x)), true))), true, u_input.c.x);
    return var_1.d;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<f32, 5>();
    let var_0 = ~0u;
    var var_1 = ~(-1i) & u_input.c.x;
    var var_2 = u_input.c.x;
    let var_3 = arg_1;
    return vec3<bool>(!(true || arg_1.a.x) != func_4(abs(func_2(Struct_3(Struct_1(vec2<bool>(arg_0, arg_0)), vec2<bool>(true, arg_1.a.x), Struct_2(Struct_1(vec2<bool>(true, arg_0)), vec3<bool>(arg_1.a.x, false, true), vec2<bool>(false, arg_0), false, vec4<i32>(2147483647i, 0i, -2147483647i, u_input.c.x)), var_3.a.x, vec3<bool>(true, true, var_3.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 5u)]))), arg_1.a.x, false);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global0 = array<f32, 5>();
    let var_0 = arg_0;
    global1 = 57490u;
    var var_1 = Struct_3(Struct_1(var_0.a.a), vec2<bool>(var_0.e.x, true), var_0.c, var_0.d, var_0.c.b);
    global1 = ~reverseBits(~124765u ^ u_input.a.x);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_3(func_5(Struct_3(Struct_1(vec2<bool>(true, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec2<bool>(false, false)), vec3<bool>(false, false, false), vec2<bool>(false, true), false, vec4<i32>(2147483647i, -1i, u_input.c.x, 13183i)), true, func_1(true, Struct_1(vec2<bool>(true, true))))), select(func_1(true, func_5(Struct_3(Struct_1(vec2<bool>(true, false)), vec2<bool>(true, true), Struct_2(Struct_1(vec2<bool>(true, false)), vec3<bool>(true, true, true), vec2<bool>(true, true), false, vec4<i32>(-42420i, 0i, -1i, u_input.b.x)), true, vec3<bool>(true, true, false)))).zy, !select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(true, false)), vec3<bool>(all(vec4<bool>(true, true, false, true)), false, any(vec4<bool>(true, false, false, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), true), 730f <= _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 5u)])), ~vec4<i32>(u_input.b.x, u_input.c.x, -26190i, u_input.b.x) & vec4<i32>(-2147483647i, 2147483647i, 25384i, 0i)), any(vec4<bool>(all(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, false, true, false)), true, true)), func_1(true, func_5(Struct_3(Struct_1(vec2<bool>(true, true)), vec2<bool>(true, true), Struct_2(Struct_1(vec2<bool>(true, false)), vec3<bool>(false, true, true), vec2<bool>(false, false), false, vec4<i32>(0i, u_input.c.x, 24671i, 1i)), false, vec3<bool>(false, true, true))))), func_5(Struct_3(func_5(Struct_3(Struct_1(vec2<bool>(false, true)), vec2<bool>(false, true), Struct_2(Struct_1(vec2<bool>(false, true)), vec3<bool>(false, true, true), vec2<bool>(false, true), true, vec4<i32>(-1i, -32325i, 15439i, 1876i)), true, vec3<bool>(false, false, false))), func_1(func_4(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), vec2<f32>(global0[_wgslsmith_index_u32(0u, 5u)], 1000f)), func_5(Struct_3(Struct_1(vec2<bool>(false, true)), vec2<bool>(false, true), Struct_2(Struct_1(vec2<bool>(false, true)), vec3<bool>(true, true, true), vec2<bool>(true, true), true, vec4<i32>(-2147483647i, -14644i, u_input.c.x, -2147483647i)), false, vec3<bool>(false, false, false)))).xx, Struct_2(func_5(Struct_3(Struct_1(vec2<bool>(true, false)), vec2<bool>(true, true), Struct_2(Struct_1(vec2<bool>(true, false)), vec3<bool>(false, true, true), vec2<bool>(false, true), false, vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.c.x)), false, vec3<bool>(false, true, false))), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec2<bool>(false, true), true, -vec4<i32>(-2147483647i, 24555i, -1i, -1i)), func_5(Struct_3(Struct_1(vec2<bool>(false, false)), vec2<bool>(true, false), Struct_2(Struct_1(vec2<bool>(true, true)), vec3<bool>(true, false, true), vec2<bool>(true, false), true, vec4<i32>(65433i, -22764i, -144i, u_input.b.x)), false, vec3<bool>(true, false, true))).a.x, vec3<bool>(true, true, all(vec2<bool>(true, false))))), true, 2147483647i, select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, false, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, any(vec3<bool>(true, false, true))), func_4(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(949f, 433f))))), vec4<bool>(u_input.a.x > ~1u, any(vec2<bool>(true, true)), true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true)))));
    global0 = array<f32, 5>();
    var var_1 = vec2<f32>(330f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) - global0[_wgslsmith_index_u32(20059u, 5u)]));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 5u)], 484f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1128f, global0[_wgslsmith_index_u32(29490u, 5u)]))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1000f * 156f)))));
    let var_2 = var_0.a.c.e;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1083f, global0[_wgslsmith_index_u32(14833u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], var_1.x)) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0[_wgslsmith_index_u32(19261u, 5u)], global0[_wgslsmith_index_u32(50589u, 5u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(43036u, 5u)], global0[_wgslsmith_index_u32(35038u, 5u)], 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -523f), true)), _wgslsmith_f_op_f32(-598f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)] * var_1.x))), true))));
    let var_4 = ((reverseBits(u_input.a) | (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ _wgslsmith_div_vec4_u32(u_input.a, u_input.a))) >> (~(~(~vec4<u32>(u_input.a.x, 1u, 1u, 4294967295u))) % vec4<u32>(32u))) & vec4<u32>(0u, u_input.a.x, u_input.a.x, select(countOneBits(1u), ~57966u << (~u_input.a.x % 32u), false));
    let var_5 = true;
    var_1 = var_3.xy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(~_wgslsmith_mult_u32(var_4.x, 10889u), var_4.x)));
}

