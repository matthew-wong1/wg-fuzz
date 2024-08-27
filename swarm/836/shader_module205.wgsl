struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-1109f, 1511f, 536f, 346f, -323f, 445f, 958f, -1698f, -1645f, 487f);

var<private> global1: array<i32, 27>;

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = global1[_wgslsmith_index_u32(arg_1.x, 27u)];
    var var_1 = Struct_1(~(~arg_1));
    let var_2 = -1316f;
    var var_3 = _wgslsmith_f_op_f32(-var_2);
    var var_4 = Struct_3(u_input.b, u_input.a, -_wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 27u)], -38106i, -2147483647i, -1i), vec4<i32>(-31694i, 1i, -22991i, -526i)), -abs(vec4<i32>(arg_0.x, -1i, 20585i, -6105i))), Struct_2(Struct_1(vec3<u32>(var_1.a.x, 67754u, 0u) >> (select(arg_1, vec3<u32>(0u, var_1.a.x, 1u), vec3<bool>(true, true, true)) % vec3<u32>(32u))), vec4<bool>(true, true, true, true), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(1u, 27u)])), arg_0 & vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 27u)], 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-297f, var_2, var_2))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(1u, 10u)], var_2, global0[_wgslsmith_index_u32(arg_1.x, 10u)])))) * vec3<f32>(_wgslsmith_f_op_f32(853f * 552f), _wgslsmith_f_op_f32(min(var_2, var_2)), _wgslsmith_f_op_f32(select(482f, var_2, true)))), Struct_1(_wgslsmith_sub_vec3_u32(~arg_1, abs(vec3<u32>(arg_1.x, 0u, 0u))))), arg_0);
    return select(var_4.e, select(-vec2<i32>(~(-23006i), arg_0.x << (var_4.b % 32u)), countOneBits(-arg_0 ^ var_4.e), all(select(select(vec2<bool>(true, true), var_4.d.b.xz, false), !var_4.d.b.xx, true))), !var_4.d.b.x & all(select(!var_4.d.b.yzy, var_4.d.b.xwy, true)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~select(firstTrailingBit(vec3<u32>(9081u, 98695u, 45916u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 30745u, 95071u), vec3<u32>(0u, u_input.d, u_input.d)), true)), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), !(!all(vec2<bool>(false, true))), all(vec4<bool>(true, true, true, true))), func_3(_wgslsmith_sub_vec2_i32(-abs(vec2<i32>(u_input.b, u_input.b)), ~firstLeadingBit(vec2<i32>(-19242i, 6267i))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.c), vec3<u32>(u_input.a, u_input.c, 4294967295u)), vec3<u32>(~u_input.c, u_input.d ^ u_input.c, u_input.a), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 45163u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 26872u, 4294967295u), vec3<u32>(u_input.d, u_input.a, 37016u), vec3<u32>(7201u, 68479u, u_input.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1367f, -1173f, global0[_wgslsmith_index_u32(u_input.a, 10u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1477f, global0[_wgslsmith_index_u32(54985u, 10u)], 1017f))))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 10u)] - 875f))), _wgslsmith_f_op_f32(f32(-1f) * -2889f), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, 4294967295u), 10u)])), Struct_1(vec3<u32>(13988u, max(39448u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(u_input.c, 3835u))), ~_wgslsmith_sub_u32(u_input.d, 18927u))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.e.a.x, var_0.a.a.x), 10u)];
    var var_2 = var_0.b.x;
    let var_3 = max(-1i, (i32(-1i) * -u_input.b) ^ 1i) >> (firstLeadingBit(_wgslsmith_div_u32(1u, u_input.c) & countOneBits(~75317u)) % 32u);
    global1 = array<i32, 27>();
    return Struct_1(~var_0.a.a);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<vec4<bool>, 11>();
    global0 = array<f32, 10>();
    global1 = array<i32, 27>();
    global2 = array<vec4<bool>, 11>();
    global1 = array<i32, 27>();
    return func_2(~(~64545i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(~(i32(-1i) * -1i), (4294967295u | (countOneBits(35665u) & _wgslsmith_div_u32(1u, arg_0.a.x))) >> (reverseBits(arg_2.b) % 32u), select(select(arg_2.c, vec4<i32>(-25531i, 2147483647i, u_input.b, arg_2.e.x) | vec4<i32>(35974i, u_input.b, global1[_wgslsmith_index_u32(arg_0.a.x, 27u)], -56079i), any(global2[_wgslsmith_index_u32(u_input.d, 11u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(arg_2.e, vec3<u32>(4294967295u, u_input.d, u_input.d)).x, func_3(arg_2.d.c, vec3<u32>(30490u, 4294967295u, 0u)).x, global1[_wgslsmith_index_u32(~0u, 27u)], global1[_wgslsmith_index_u32(9071u ^ arg_2.b, 27u)]), vec4<i32>(2147483647i, max(u_input.b, 31918i), -2147483647i, countOneBits(global1[_wgslsmith_index_u32(u_input.c, 27u)]))), vec4<bool>(!(false && arg_2.d.b.x), false, -1137f < _wgslsmith_f_op_f32(trunc(arg_2.d.d.x)), true && !arg_2.d.b.x)), arg_2.d, _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 27u)], u_input.b), vec2<i32>(-25779i, u_input.b)), -arg_2.d.c), arg_2.d.c));
    var var_1 = arg_2.d;
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    let var_2 = func_1(countOneBits(arg_2.e.x));
    return Struct_1(vec3<u32>(24075u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 4294967295u, arg_2.b, arg_0.a.x), vec4<u32>(var_2.a.x, var_1.a.a.x, 4294967295u, arg_2.b)), ~func_2(var_0.d.c.x).a.x) | ~vec3<u32>(_wgslsmith_mod_u32(0u, var_2.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(8343u, 8166u), vec2<u32>(var_2.a.x, arg_1.a.x)), _wgslsmith_add_u32(1u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 11>();
    global2 = array<vec4<bool>, 11>();
    var var_0 = Struct_2(func_4(func_1(-_wgslsmith_div_i32(u_input.b, global1[_wgslsmith_index_u32(u_input.d, 27u)])), Struct_1(~vec3<u32>(u_input.d, u_input.d, u_input.d)), Struct_3(countOneBits(~u_input.b), _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(74985u, u_input.c), vec2<u32>(u_input.c, u_input.d))), -abs(vec4<i32>(u_input.b, 0i, 1i, u_input.b)), Struct_2(Struct_1(vec3<u32>(u_input.d, u_input.c, 39795u)), vec4<bool>(true, true, false, false), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 27u)], -12235i), vec2<i32>(8177i, global1[_wgslsmith_index_u32(u_input.c, 27u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], -750f, -1516f)), func_1(-47506i)), -vec2<i32>(2147483647i, 68737i) >> (~vec2<u32>(u_input.d, u_input.c) % vec2<u32>(32u)))), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)] >= -1i, true, false, true), global2[_wgslsmith_index_u32(reverseBits(4294967295u), 11u)], vec4<bool>(true, true, true, true)), ~vec2<i32>(-6938i, reverseBits(-11466i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-478f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f) * _wgslsmith_f_op_f32(f32(-1f) * -1258f)), 998f))), Struct_1(abs(~vec3<u32>(69437u, 1u, 11166u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 10u)]) + var_0.d.yz)))))));
    var var_2 = var_0.a.a.yz & (_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(0u, 1u)) & ~vec2<u32>(10795u, 23516u), vec2<u32>(1u, 0u), var_0.e.a.xx) >> (firstTrailingBit(reverseBits(var_0.a.a.yz)) % vec2<u32>(32u)));
    let var_3 = var_0.d.yx;
    global2 = array<vec4<bool>, 11>();
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.xy + var_0.d.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3.x))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(max(-392f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.a.x, abs(u_input.d)), 10u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, var_0.e.a.x, var_0.a.a.x, 68175u), vec4<u32>(95481u, 4294967295u, var_2.x, var_0.a.a.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(16853u, 42848u, var_0.e.a.x, 1u), vec4<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, 4294967295u), false), ~vec4<u32>(var_0.e.a.x, 0u, 33866u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 4294967295u, u_input.a, 4294967295u), vec4<u32>(1u, var_2.x, var_2.x, u_input.c))), abs(vec4<u32>(0u, 4294967295u, u_input.d, var_0.e.a.x)), ~vec4<u32>(var_2.x, u_input.a, var_0.e.a.x, 54772u) & firstTrailingBit(vec4<u32>(var_0.e.a.x, 1u, 1u, var_2.x)))));
}

