struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32;

var<private> global2: array<i32, 23> = array<i32, 23>(-6630i, 1i, -8653i, -18006i, 43167i, i32(-2147483648), 2147483647i, -1i, i32(-2147483648), 13772i, 0i, -38492i, 2147483647i, 2147483647i, 2147483647i, 1i, 5003i, 49322i, 1i, -1i, 25795i, -28990i, 7179i);

var<private> global3: array<f32, 24> = array<f32, 24>(300f, 207f, 369f, 1406f, -416f, -461f, -866f, 1617f, -599f, -1512f, -1148f, 587f, 105f, -110f, 886f, 629f, 139f, -879f, -327f, 620f, 218f, 173f, 261f, 1149f);

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global3 = array<f32, 24>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(4294967295u, 24u)])))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1081f + _wgslsmith_f_op_f32(610f * -1218f)), -498f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 24u)]))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_2 {
    global3 = array<f32, 24>();
    let var_0 = Struct_2(max(arg_0.zzy, vec3<u32>(arg_0.x & 91023u, ~_wgslsmith_add_u32(arg_0.x, arg_1), ~(~4294967295u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(100850u, 24u)], -1805f), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(u_input.b, 2147483647i, -2147483647i)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1681f * global3[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 24u)] - _wgslsmith_div_f32(1418f, global3[_wgslsmith_index_u32(51807u, 24u)]))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(4294967295u, 28u)])), -575f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1842u, 24u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.x, 24u)], 558f, global3[_wgslsmith_index_u32(arg_1, 24u)]) * vec3<f32>(-300f, global3[_wgslsmith_index_u32(1u, 24u)], -982f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(11774u, 24u)], -616f, -633f) - vec3<f32>(global3[_wgslsmith_index_u32(9236u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], 1089f)))))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, countOneBits(~u_input.a)), 28u)], arg_0.wyz, !any(vec4<bool>(false, global0.x, !global0.x, global0.x)));
    global2 = array<i32, 23>();
    var var_1 = var_0.d.x;
    let var_2 = Struct_3(~_wgslsmith_div_i32(-global2[_wgslsmith_index_u32(8946u, 23u)], global2[_wgslsmith_index_u32(abs(18807u), 23u)]));
    return Struct_2(abs(var_0.d), var_0.b, Struct_1(vec3<i32>(var_2.a, ~(-var_2.a), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, global2[_wgslsmith_index_u32(1u, 23u)], var_0.c.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(24495i, 14614i, 54735i), vec3<i32>(10979i, u_input.b, global2[_wgslsmith_index_u32(0u, 23u)]))))), var_0.a, global0.x);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = func_2(reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 0u, 13987u, 48055u)) | ~vec4<u32>(4294967295u, 4294967295u, 15997u, u_input.a)), ~u_input.a);
    global1 = _wgslsmith_dot_vec3_u32(abs(min(~vec3<u32>(43128u, u_input.a, u_input.a), firstTrailingBit(var_0.a))), countOneBits(var_0.d));
    global4 = array<Struct_1, 28>();
    global2 = array<i32, 23>();
    let var_1 = ~(var_0.c.a.x << (~firstLeadingBit(_wgslsmith_mod_u32(var_0.a.x, 23739u)) % 32u));
    return Struct_1(var_0.c.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = Struct_3(-_wgslsmith_div_i32(~(-14832i << (u_input.a % 32u)), arg_3.x));
    global1 = 22657u;
    global0 = select(vec3<bool>(global0.x, global0.x, true & any(!vec4<bool>(false, global0.x, global0.x, global0.x))), !vec3<bool>(func_2(~vec4<u32>(u_input.a, u_input.a, 20671u, u_input.a), _wgslsmith_div_u32(u_input.a, 72669u)).e, all(!global0.xz), all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), true);
    let var_1 = Struct_3(arg_2.a.x);
    global2 = array<i32, 23>();
    return _wgslsmith_clamp_u32(u_input.a, ~u_input.a, u_input.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1773f, 1773f, 430f, -342f), vec4<f32>(817f, -1408f, global3[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 24u)], -1309f, 1383f, -585f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a & u_input.a, 24u)]), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), 24u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 17915u, u_input.a), 24u)] + _wgslsmith_f_op_f32(f32(-1f) * -707f)))));
    global4 = array<Struct_1, 28>();
    let var_1 = !select(select(all(vec4<bool>(true, true, arg_1.x, global0.x)), select(arg_1.x, true, true), global0.x), !(-713f <= var_0.x), false) | false;
    let var_2 = func_2(select(~(~(~vec4<u32>(4294967295u, 49588u, 4294967295u, arg_0.x))), ~(~abs(vec4<u32>(arg_0.x, 33449u, u_input.a, 55686u))), arg_1.x), abs(4294967295u));
    global2 = array<i32, 23>();
    return func_2(max(_wgslsmith_add_vec4_u32(select(vec4<u32>(arg_0.x, arg_0.x, var_2.d.x, 21233u), _wgslsmith_sub_vec4_u32(vec4<u32>(51932u, 1022u, 0u, 7388u), vec4<u32>(u_input.a, 7871u, arg_0.x, 27520u)), !vec4<bool>(false, var_2.e, var_2.e, arg_1.x)), select(vec4<u32>(1u, 920u, 1u, u_input.a), vec4<u32>(arg_0.x, 4294967295u, 1u, arg_0.x), var_1) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 29347u, 1u, u_input.a), vec4<u32>(9546u, arg_0.x, var_2.a.x, var_2.d.x)) % vec4<u32>(32u))), firstTrailingBit(abs(vec4<u32>(u_input.a, var_2.d.x, var_2.d.x, var_2.d.x)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<u32>(u_input.a, func_4(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(-42348i, -13679i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(30778u, 24u)], -948f))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)], -1378f, 1506f))), firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(23452u, 23u)], 25791i, u_input.b))), ~(~u_input.a)), vec3<bool>(any(vec3<bool>(global0.x & true, true, 301f < global3[_wgslsmith_index_u32(1u, 24u)])), global3[_wgslsmith_index_u32(abs(29519u), 24u)] < _wgslsmith_f_op_f32(-1046f + global3[_wgslsmith_index_u32(~4294967295u, 24u)]), u_input.b < ~1i));
    let var_1 = Struct_4(Struct_2(vec3<u32>(abs(~u_input.a), 4294967295u, _wgslsmith_dot_vec3_u32(~var_0.d, ~var_0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(363f, var_0.b.x, -729f), var_0.b), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.a, 23u)], -28406i, 31119i), func_2(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), u_input.a).c.a.x, 1i << (var_0.a.x % 32u))), var_0.a, false), ~(~vec4<u32>(1u, _wgslsmith_mod_u32(4294967295u, 18485u), _wgslsmith_mod_u32(16754u, u_input.a), ~u_input.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-366f, 1772f, var_0.b.x), vec3<f32>(516f, global3[_wgslsmith_index_u32(44809u, 24u)], global3[_wgslsmith_index_u32(61453u, 24u)]))) - _wgslsmith_f_op_vec3_f32(exp2(var_0.b)))))));
    let var_2 = select(vec3<bool>(540f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(25517u, 24u)]))), var_1.a.b.x <= _wgslsmith_f_op_f32(-var_1.c.x), var_0.e & global0.x), select(select(vec3<bool>(true, select(false, global0.x, var_1.a.e), any(global0.zx)), vec3<bool>(true, var_1.a.e || var_0.e, true), true), select(select(!vec3<bool>(false, var_0.e, global0.x), vec3<bool>(true, global0.x, true), vec3<bool>(false, var_1.a.e, global0.x)), vec3<bool>(var_0.c.a.x != 2147483647i, global0.x && false, true), vec3<bool>(true, all(vec3<bool>(false, global0.x, false)), all(vec3<bool>(var_0.e, global0.x, global0.x)))), !global0.x | true), global0.x | any(select(!vec3<bool>(var_0.e, var_0.e, false), select(vec3<bool>(var_0.e, var_0.e, var_1.a.e), vec3<bool>(var_1.a.e, true, true), vec3<bool>(var_1.a.e, true, false)), select(false, false, false))));
    var var_3 = var_1;
    global4 = array<Struct_1, 28>();
    let var_4 = func_5(max(var_3.b.wyy, max(max(vec3<u32>(var_3.b.x, var_0.d.x, 1u) | var_1.b.ywz, ~var_0.a), var_1.a.d)), vec3<bool>(all(!(!var_2.zy)), var_1.a.e, 0u > u_input.a)).d;
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.x, var_0.b, global3[_wgslsmith_index_u32(var_0.a.x, 24u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_3.a.b.yx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.b.x, 687f)) * _wgslsmith_f_op_vec2_f32(-var_3.c.xy))), var_3.a.b.zz), _wgslsmith_add_vec4_i32(abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.a.x, var_0.c.a.x, -15569i, global2[_wgslsmith_index_u32(1u, 23u)]), vec4<i32>(var_3.a.c.a.x, 48224i, var_1.a.c.a.x, -1i))), ~(vec4<i32>(var_3.a.c.a.x, var_1.a.c.a.x, -2147483647i, 1i) >> (var_3.b % vec4<u32>(32u)))));
}

