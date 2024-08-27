struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-1000f, 322f, -2764f, -1379f, 924f, 2301f, 1000f, 149f, -2115f, -614f, -1533f, 769f, 377f, 686f, 661f, -1122f, -536f, 738f, 252f, 207f, -1551f, -374f, -1065f, 1000f, -1656f, 488f, -1040f, -433f, -1000f, -2720f);

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), -8950i, 2147483647i, 0i));

var<private> global3: Struct_4 = Struct_4(39583u, Struct_2(-11470i, Struct_1(vec4<i32>(-21809i, 5986i, i32(-2147483648), i32(-2147483648))), -59760i), vec2<i32>(-11558i, 0i));

var<private> global4: array<vec3<bool>, 3>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = any(!global4[_wgslsmith_index_u32(u_input.c.x ^ _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_clamp_u32(global3.a, global3.a, 51825u), min(4294967295u, u_input.c.x)), 3u)]);
    global4 = array<vec3<bool>, 3>();
    global2 = Struct_1(u_input.a);
    let var_1 = u_input.a | ~global2.a;
    let var_2 = true && (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, firstLeadingBit(~0u)), 30u)] >= global0[_wgslsmith_index_u32(1u, 30u)]);
    return abs(~0u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(firstTrailingBit(-u_input.a)), 3631i, all(global4[_wgslsmith_index_u32(global3.a, 3u)]), _wgslsmith_add_vec4_i32(~(~firstLeadingBit(global2.a)), global2.a ^ _wgslsmith_mod_vec4_i32(global3.b.b.a, -global2.a)), 16306u);
    var var_1 = global0[_wgslsmith_index_u32(global3.a, 30u)];
    let var_2 = ~16280i;
    let var_3 = Struct_3(var_0.a, var_0.b, select(arg_1, false, !(!any(vec4<bool>(true, arg_1, false, false)))), global2.a, abs(min(_wgslsmith_add_u32(~u_input.c.x, func_3(vec2<bool>(arg_1, true))), u_input.c.x)));
    global4 = array<vec3<bool>, 3>();
    return global3.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_5 {
    let var_0 = Struct_3(func_2(true, true, Struct_5(firstTrailingBit(select(arg_1.b.a.xy, arg_1.b.a.wy, false)), -(global2.a.x | global2.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(48413i, arg_1.b.a.x, 40484i, arg_1.c) & vec4<i32>(-16351i, global2.a.x, global3.b.b.a.x, -1i), ~vec4<i32>(global3.b.b.a.x, global2.a.x, 0i, -21554i)), global0[_wgslsmith_index_u32(~u_input.c.x, 30u)]), global0[_wgslsmith_index_u32(~(~(~u_input.c.x)), 30u)]).b, i32(-1i) * -firstLeadingBit(-84371i), arg_0, firstTrailingBit(global3.b.b.a), select(firstLeadingBit(~37110u), global3.a >> (~min(global3.a, u_input.c.x) % 32u), !arg_0));
    var var_1 = i32(-1i) * -global3.c.x;
    var var_2 = !select(!(!select(vec3<bool>(var_0.c, false, false), global4[_wgslsmith_index_u32(0u, 3u)], true)), !(!global4[_wgslsmith_index_u32(var_0.e, 3u)]), any(vec2<bool>(true, var_0.c)));
    let var_3 = var_2.zy;
    return Struct_5(_wgslsmith_sub_vec2_i32(arg_1.b.a.zx, vec2<i32>(firstLeadingBit(73119i) >> (~u_input.c.x % 32u), ~_wgslsmith_dot_vec2_i32(global2.a.xw, arg_1.b.a.yy))), _wgslsmith_mod_i32(13836i, min(-8800i, global2.a.x)), (var_0.b >> (firstTrailingBit(_wgslsmith_mod_u32(var_0.e, 0u)) % 32u)) | u_input.a.x, _wgslsmith_f_op_f32(abs(-1894f)));
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> bool {
    global4 = array<vec3<bool>, 3>();
    var var_0 = Struct_1(-(-vec4<i32>(global3.c.x, 1i, arg_1.b, -1i) ^ ~vec4<i32>(global2.a.x, 0i, 43659i, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(19658u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 967f) - vec4<f32>(-2078f, -866f, -460f, arg_1.d)) * vec4<f32>(-115f, 461f, 746f, global0[_wgslsmith_index_u32(40236u, 30u)])))));
    var var_2 = vec3<bool>(true || !arg_0, any(vec3<bool>(any(vec3<bool>(arg_0, false, arg_0)), any(global4[_wgslsmith_index_u32(~global3.a, 3u)]), true)), u_input.c.x <= (abs(firstTrailingBit(global3.a)) >> (1u % 32u)));
    global1 = any(vec2<bool>(true, arg_1.d < global0[_wgslsmith_index_u32(4294967295u, 30u)]));
    return all(vec4<bool>(arg_0, var_2.x & true, all(!global4[_wgslsmith_index_u32(28901u, 3u)]), true)) & true;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(Struct_1(max(arg_0.b.b.a, u_input.a)), 2147483647i, func_5(arg_3.c & all(!global4[_wgslsmith_index_u32(global3.a, 3u)]), func_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a, 30u)]) >= global0[_wgslsmith_index_u32(~19440u, 30u)], func_2(any(vec2<bool>(arg_3.c, false)), false, Struct_5(vec2<i32>(arg_3.b, global3.b.a), -1i, global2.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), global0[_wgslsmith_index_u32(arg_1.a, 30u)]))), _wgslsmith_add_vec4_i32(arg_3.a.a, vec4<i32>(~(-1i), u_input.a.x, firstLeadingBit(1i), ~arg_3.b)), ~(~arg_2));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1138f, -1530f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(31081u, 0u), 30u)], _wgslsmith_f_op_f32(f32(-1f) * -728f)))) + vec4<f32>(189f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(~u_input.c.x, 30u)]))), -838f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14667u, 30u)])));
    global1 = -5667i < func_4(var_0.c | true, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, -23406i, arg_0.b.c) << (u_input.c % vec3<u32>(32u)), vec3<i32>(26824i, u_input.b, 1i)), Struct_1(-vec4<i32>(1i, -66668i, var_0.a.a.x, 70814i)), firstLeadingBit(_wgslsmith_mod_i32(58684i, var_0.a.a.x)))).a.x;
    let var_2 = func_2(true, (_wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(-1i, global3.b.c)) > 2147483647i) || true, Struct_5(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 1i), arg_0.c) & (var_0.a.a.yx << (~u_input.c.zy % vec2<u32>(32u))), _wgslsmith_mult_i32(1i, 1i & arg_1.c.x), -66346i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.a, 30u)] * var_1.x)))), _wgslsmith_f_op_f32(round(1273f)));
    let var_3 = 1u >> (min(1u, countOneBits(~(~global3.a))) % 32u);
    return 20579u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~func_1(Struct_4(1u, global3.b, vec2<i32>(global3.b.b.a.x, -48295i)), Struct_4(4294967295u, Struct_2(global2.a.x, global3.b.b, global3.b.b.a.x), global3.b.b.a.wx), u_input.c.x, Struct_3(Struct_1(vec4<i32>(u_input.a.x, -1i, 0i, u_input.a.x)), -46490i, false, global3.b.b.a, 4294967295u))));
    var var_1 = Struct_3(func_2(true, abs(-global3.b.c) != -5432i, func_4(all(global4[_wgslsmith_index_u32(1u, 3u)]), Struct_2(i32(-1i) * -25224i, func_2(false, true, Struct_5(global3.c, 1i, -1i, 1429f), global0[_wgslsmith_index_u32(u_input.c.x, 30u)]).b, 0i)), -179f).b, u_input.b | (func_4(all(vec4<bool>(true, true, false, false)), Struct_2(global2.a.x, global3.b.b, 0i)).b | ((i32(-1i) * -5665i) & (global3.c.x | 6212i))), true, _wgslsmith_sub_vec4_i32(global2.a, vec4<i32>(-u_input.a.x, _wgslsmith_mod_i32(0i, countOneBits(u_input.b)), global2.a.x, global2.a.x)), u_input.c.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, global0[_wgslsmith_index_u32(var_1.e, 30u)], global0[_wgslsmith_index_u32(var_1.e, 30u)], 454f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global3.a, 30u)], 475f, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0, 30u)], 474f, -111f, global0[_wgslsmith_index_u32(1u, 30u)]) - vec4<f32>(-267f, global0[_wgslsmith_index_u32(60930u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 575f, 938f, -1316f)))) + vec4<f32>(-168f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-311f - -651f))), global0[_wgslsmith_index_u32(max(var_0, var_0) << (1u % 32u), 30u)], _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(1025f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(var_1.c, Struct_2(global3.b.a, Struct_1(vec4<i32>(global2.a.x, -1i, u_input.a.x, var_1.a.a.x)), 37451i)).d, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(3493u, 4294967295u), 30u)], _wgslsmith_f_op_f32(sign(-437f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2134f + global0[_wgslsmith_index_u32(0u, 30u)])))));
    let var_3 = Struct_5(_wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.a.zw), select(vec2<i32>(u_input.a.x, func_4(false, global3.b).b), u_input.a.wy, !(!vec2<bool>(var_1.c, true)))), _wgslsmith_div_i32(~(-global2.a.x), _wgslsmith_div_i32(~global3.c.x, global2.a.x)), 113553i, var_2.x);
    var var_4 = 48413u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(~(var_1.e ^ u_input.c.x)), global3.a, var_0, _wgslsmith_add_u32(u_input.c.x, min(16441u, _wgslsmith_mult_u32(4294967295u, global3.a)))), vec4<i32>(_wgslsmith_dot_vec2_i32(func_2(true, any(vec3<bool>(false, var_1.c, var_1.c)), func_4(false, global3.b), var_3.d).b.a.yy, _wgslsmith_mod_vec2_i32(vec2<i32>(global2.a.x, global2.a.x), var_3.a) & vec2<i32>(u_input.a.x, -34070i)), -41461i, max(_wgslsmith_clamp_i32(u_input.a.x, global3.b.a >> (0u % 32u), 0i), _wgslsmith_mult_i32(global3.c.x & -20774i, select(-1i, 40623i, true))), -48561i));
}

