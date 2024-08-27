struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<f32, 14> = array<f32, 14>(1002f, 1526f, 648f, -816f, 879f, 1593f, -332f, 361f, -894f, 631f, 611f, 889f, 278f, 124f);

var<private> global2: bool;

var<private> global3: f32;

var<private> global4: f32 = 557f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(18159u, 14u)]), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(48861u, 14u)], arg_0.b))), true)))))));
    global2 = !all(vec3<bool>(true, true, true)) && false;
    var var_1 = arg_0;
    global2 = false;
    let var_2 = Struct_1(-vec4<i32>(-1i, var_1.a.x, _wgslsmith_mod_i32(-10692i, arg_0.a.x), reverseBits(-2147483647i)) & -arg_0.a, 1294f);
    return arg_0.a;
}

fn func_2() -> Struct_1 {
    let var_0 = false;
    global2 = !(all(!select(vec4<bool>(false, false, true, false), vec4<bool>(var_0, var_0, var_0, true), var_0)) & all(vec3<bool>(false, false, var_0)));
    global4 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 15u)] & 0u, 14u)];
    global1 = array<f32, 14>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(176f + -752f))))), global1[_wgslsmith_index_u32(60200u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)]);
    return Struct_1(-_wgslsmith_div_vec4_i32(func_3(Struct_1(vec4<i32>(u_input.d, u_input.c.x, 2147483647i, u_input.c.x), -403f)), vec4<i32>(u_input.c.x, abs(48973i), u_input.d << (u_input.a.x % 32u), abs(u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, global0[_wgslsmith_index_u32(11934u, 15u)]) | _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b, 18762u, u_input.b)), 15u)], 14u)]) - var_1.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = var_0;
    var var_2 = select(!select(vec2<bool>(any(vec3<bool>(false, false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), !select(true, false, false)), select(vec2<bool>(all(vec3<bool>(true, true, true)), -arg_0.a.x == func_3(Struct_1(vec4<i32>(-17183i, -1i, -24389i, arg_1.a.x), 321f)).x), vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(true, true)), true);
    global2 = select(52336i <= arg_2.a.x, (~countOneBits(-8305i) >> (abs(~u_input.a.x) % 32u)) == u_input.d, all(vec3<bool>(all(vec4<bool>(var_2.x, true, false, var_2.x)), all(!vec4<bool>(var_2.x, true, var_2.x, var_2.x)), select(var_2.x, true, any(vec3<bool>(true, true, true))))));
    global2 = !var_2.x;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = 20717u;
    let var_1 = !any(!select(select(arg_1, arg_1, true), arg_1, select(vec2<bool>(arg_1.x, true), vec2<bool>(true, true), arg_1.x)));
    var var_2 = 737f;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, max(40371u, 0u)), 14u)], _wgslsmith_f_op_f32(abs(-1130f)), -872f, -1197f) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_3, -896f))), 355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1303f, global1[_wgslsmith_index_u32(40176u, 14u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_2.b)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, -236f, -758f, arg_2.b)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.b, arg_2.b, global1[_wgslsmith_index_u32(1u, 14u)], -1000f), vec4<f32>(314f, -1514f, arg_2.b, global1[_wgslsmith_index_u32(15732u, 14u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, -845f, -746f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(401f, arg_3, arg_0.b, -237f), vec4<f32>(1139f, 135f, 776f, arg_0.b), arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 14u)], -561f, -1699f, arg_0.b) * vec4<f32>(arg_0.b, arg_3, 2089f, 501f)), vec4<bool>(false, true, true, false)))))));
    global1 = array<f32, 14>();
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(u_input.c.x, ~_wgslsmith_dot_vec3_i32(u_input.c.xzz, -u_input.c.yyy), -arg_0.a.x, u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(23447u, 14u)] - -667f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f), _wgslsmith_f_op_f32(arg_0.b + arg_0.b))) + arg_0.b));
    var var_1 = func_1(arg_0, arg_0, func_2());
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(arg_1))))), arg_1));
    global4 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(~(~4294967295u << (~4294967295u % 32u))), 14u)] + -325f);
    return Struct_1(select(vec4<i32>(-_wgslsmith_mod_i32(10364i, -35185i), _wgslsmith_mod_i32(-1i, u_input.d) ^ ~var_2.a.x, arg_0.a.x, 1i >> (~global0[_wgslsmith_index_u32(0u, 15u)] % 32u)), ~func_3(var_2), !(!all(vec2<bool>(arg_2, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-371f + 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -453f;
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(reverseBits(0u)), 15u)];
    let var_1 = ~(vec4<i32>(u_input.d, u_input.d, -30338i, _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, -10111i), firstLeadingBit(-29016i))) | u_input.c);
    global4 = -1134f;
    var var_2 = func_5(Struct_1(vec4<i32>(-2147483647i, ~(-var_1.x), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c, var_1), reverseBits(u_input.d)), ~0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(vec4<i32>(0i, 1i, 0i, -1i), 747f), vec2<bool>(true, true), func_1(Struct_1(u_input.c, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 14u)]), Struct_1(vec4<i32>(79006i, -2147483647i, -43669i, -2514i), -134f), Struct_1(var_1, -1589f)), -519f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-763f, 596f, -610f), vec3<f32>(1000f, -530f, -657f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], -1020f, -966f) * vec3<f32>(-316f, global1[_wgslsmith_index_u32(u_input.b, 14u)], 586f))))))), !(func_3(Struct_1(vec4<i32>(0i, 2147483647i, var_1.x, 26895i), -682f)).x == u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, -1019f), vec2<f32>(-1287f, -1074f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(651f, 187f) - vec2<f32>(var_2.b, var_2.b))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f - -1600f) * _wgslsmith_f_op_f32(floor(1192f))) + _wgslsmith_f_op_f32(func_4(Struct_1(vec4<i32>(-1i, 24649i, var_2.a.x, u_input.d), -618f), vec2<bool>(false, false), Struct_1(vec4<i32>(var_2.a.x, -23777i, var_1.x, -1i), -661f), -1726f))), 1096f, _wgslsmith_f_op_f32(func_4(Struct_1(var_1 << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 0u, 43927u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1642f)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), func_5(Struct_1(vec4<i32>(-1i, -24997i, 1i, -1i), -2049f), vec3<f32>(1290f, var_2.b, global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), false), 252f)), func_1(func_5(Struct_1(vec4<i32>(0i, var_1.x, var_1.x, -6550i), 765f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-667f, -1453f, var_2.b)), true), Struct_1(max(u_input.c, vec4<i32>(var_2.a.x, u_input.d, var_1.x, var_2.a.x)), 270f), func_2()).b));
}

