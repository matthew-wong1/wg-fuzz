struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<f32, 25>;

var<private> global2: i32;

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> Struct_1 {
    let var_0 = global3.ywx;
    var var_1 = u_input.b.wxy;
    global1 = array<f32, 25>();
    var var_2 = u_input.d;
    let var_3 = _wgslsmith_f_op_f32(351f - 326f);
    return arg_0;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(-851f, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, ~(0u >> (u_input.c % 32u))), ~vec2<u32>(max(u_input.c, u_input.a), ~23811u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-220f, 984f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1146f + 306f)))))));
    var var_2 = var_0;
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(41520u, 25u)])) * -383f))), -vec2<i32>(~(-1i), -22497i), arg_2.a);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(var_3.a - arg_1.x), firstLeadingBit(vec2<u32>(4434u, 4294967295u >> (~var_0.b.x % 32u))));
    return _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(sign(var_4.a)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> f32 {
    var var_0 = func_2(Struct_1(1000f), u_input.b.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3(vec2<bool>(~u_input.d.x <= u_input.a, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(893f, global1[_wgslsmith_index_u32(21163u, 25u)]) * vec2<f32>(-1383f, 2408f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(0u, 25u)]) - vec2<f32>(var_0.a, global1[_wgslsmith_index_u32(arg_0.x, 25u)])))), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~arg_0.x, 25u)])))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(28444u, 88808u), vec2<u32>(4127u, 1u)), _wgslsmith_clamp_u32(arg_0.x, 41417u, 0u)), ~(~vec2<u32>(4294967295u, arg_0.x))));
    var var_2 = 29162i;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(1041f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2519f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(22422u, 25u)] - global1[_wgslsmith_index_u32(var_1.b.x, 25u)])))))));
    let var_4 = !select(!(!select(vec4<bool>(arg_1.x, arg_2.x, global0[_wgslsmith_index_u32(37679u, 4u)], arg_1.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_1.x), arg_2.x)), !(!(!vec4<bool>(arg_2.x, arg_1.x, arg_1.x, true))), !vec4<bool>(!global0[_wgslsmith_index_u32(1u, 4u)], !global0[_wgslsmith_index_u32(0u, 4u)], any(vec4<bool>(arg_1.x, false, true, arg_2.x)), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(264f + 647f), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2154f), var_1.a)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = vec4<bool>(true && global0[_wgslsmith_index_u32(~0u, 4u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30966u, 36394u), ~vec3<u32>(4294967295u, 1983u, u_input.c)), 4u)], true)), global0[_wgslsmith_index_u32(~u_input.e, 4u)], global0[_wgslsmith_index_u32(u_input.d.x, 4u)]);
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 4u)], false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(993f, 904f)), arg_0))))), (max(~vec2<u32>(40164u, u_input.d.x), ~u_input.d.xz) >> (~(~vec2<u32>(u_input.a, u_input.d.x)) % vec2<u32>(32u))) >> (~reverseBits(firstTrailingBit(vec2<u32>(u_input.d.x, u_input.a))) % vec2<u32>(32u)));
    return _wgslsmith_clamp_vec4_i32(u_input.b >> (vec4<u32>(var_2.b.x, 1u | ~var_2.b.x, abs(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.b.x, 60310u, 70615u, 0u), vec4<u32>(var_2.b.x, u_input.e, 4294967295u, 3128u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(1i & (global3.x | 1i), 0i), -max(1i >> (1u % 32u), min(-2147483647i, 10455i)), -global3.x, max(arg_1, -1i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, u_input.b.x, 27280i, 0i), min(abs(u_input.b), max(vec4<i32>(-5220i, u_input.b.x, 5361i, u_input.b.x), vec4<i32>(u_input.b.x, global3.x, -1i, -34978i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 25>();
    global3 = select(func_4(Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec2_u32(u_input.d.zz, vec2<u32>(u_input.d.x, 64494u), u_input.d.zy), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 4u)], true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(12189u, 4u)]), vec3<bool>(true, true, false)), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)])))), abs(_wgslsmith_mod_i32(2425i, reverseBits(38258i)))), countOneBits(firstTrailingBit(~(-vec4<i32>(-2147483647i, 2147483647i, -1i, u_input.b.x)))), select(!vec4<bool>(global1[_wgslsmith_index_u32(15542u, 25u)] != -210f, global0[_wgslsmith_index_u32(0u, 4u)], u_input.c == u_input.d.x, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]))), vec4<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(78828u, 4u)], global0[_wgslsmith_index_u32(u_input.c, 4u)])), true, true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 13446u, _wgslsmith_clamp_u32(43658u, 30829u, 20914u)), 4u)]), vec4<bool>(all(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), global0[_wgslsmith_index_u32(25175u, 4u)])), any(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 4u)], global0[_wgslsmith_index_u32(u_input.e, 4u)])), all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)])))));
    var var_0 = u_input.d;
    var var_1 = Struct_1(-1151f);
    let var_2 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(global3.x, u_input.b.x), firstTrailingBit(u_input.b.x), global3.x), vec3<i32>(abs(global3.x), global3.x, select(71524i, abs(27728i), true)));
    var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(30337u, 25u)]))), global3.xy, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(u_input.d.x, _wgslsmith_mod_u32(1u, 4294967295u)), 25u)] - 490f));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_0.x, 25u)])))))));
    var var_4 = var_2.xx;
    global2 = _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, -u_input.b.x) << (~(var_0.x | _wgslsmith_sub_u32(30306u, 0u)) % 32u), _wgslsmith_dot_vec3_i32(firstLeadingBit(-var_2), vec3<i32>(~(-828i), max(var_4.x, u_input.b.x), global3.x) | min(max(global3.xzy, u_input.b.wzw), ~vec3<i32>(30787i, 24224i, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(4610i, -var_4.x), ~reverseBits(1u), 19807u, _wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(~vec2<u32>(53709u, 60538u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_0.x), u_input.d.zy)), vec2<u32>(u_input.c, 17950u) & _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4761u), vec2<u32>(109109u, 41330u)), -850f != _wgslsmith_f_op_f32(trunc(var_3.a))), reverseBits(~var_0.yx)));
}

