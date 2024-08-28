struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11>;

var<private> global1: array<i32, 3> = array<i32, 3>(-31035i, 3278i, 0i);

var<private> global2: array<Struct_1, 17>;

var<private> global3: bool;

var<private> global4: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(u_input.e.x, 17u)];
    global3 = true | global4.x;
    var_0 = Struct_1(var_0.b.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b))), vec3<f32>(840f, _wgslsmith_f_op_f32(sign(619f)), _wgslsmith_f_op_f32(1720f + -552f)))), _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), true)))), !any(!vec2<bool>(true, global4.x)));
    let var_1 = 10975u;
    global3 = !(var_0.b.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x))) + 247f));
    return !var_0.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-2148f)))), _wgslsmith_f_op_f32(step(-1201f, 1f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, -998f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -109f), true)))), true | func_3(~_wgslsmith_clamp_u32(1u, u_input.d, 44071u), arg_2.x, arg_1.xyw));
    let var_1 = var_0.c;
    global4 = vec3<bool>(true, global4.x, global4.x);
    var var_2 = Struct_1(-1494f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1563f, 955f, 216f)))), func_3(_wgslsmith_add_u32(40927u, 1u), 0i, arg_1.yxw));
    var_2 = var_0;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(min(vec4<i32>(arg_1, -1i, arg_1, -2147483647i), -vec4<i32>(60625i, 1i, arg_1, arg_1))), vec4<i32>(global1[_wgslsmith_index_u32(89391u, 3u)], max(3563i, global1[_wgslsmith_index_u32(u_input.d >> (u_input.a.x % 32u), 3u)]), ~min(-10668i, -1078i), -reverseBits(global1[_wgslsmith_index_u32(85574u, 3u)]))), _wgslsmith_mod_vec4_i32(vec4<i32>(-global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(firstTrailingBit(94798u), 3u)], firstTrailingBit(20819i), _wgslsmith_sub_i32(0i, global1[_wgslsmith_index_u32(u_input.d, 3u)])) << (~(~vec4<u32>(u_input.a.x, 4294967295u, 1u, 0u)) % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, global1[_wgslsmith_index_u32(u_input.d, 3u)], arg_1), vec3<i32>(-15837i, arg_1, global1[_wgslsmith_index_u32(u_input.d, 3u)])), 2147483647i >> (u_input.a.x % 32u), select(1i, arg_1, true), arg_1)));
    global0 = array<vec2<i32>, 11>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1461f, 225f), vec2<f32>(arg_0.b.x, arg_3), global4.xz)) * _wgslsmith_f_op_vec2_f32(-arg_0.b.yy)))) * _wgslsmith_f_op_vec2_f32(-arg_2.b.yy));
    var var_2 = func_2(max(_wgslsmith_div_vec2_u32(u_input.a.xz, _wgslsmith_div_vec2_u32(reverseBits(u_input.e), reverseBits(vec2<u32>(4294967295u, 1342u)))), ~vec2<u32>(u_input.c, _wgslsmith_sub_u32(u_input.a.x, 1u))), vec4<bool>(arg_0.c, !(arg_0.c & (u_input.b != 0u)), !(any(global4.yz) == true), arg_2.c), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -5124i, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_1) | _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -24677i, global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)]), vec4<i32>(var_0.x, 1i, var_0.x, global1[_wgslsmith_index_u32(u_input.c, 3u)])), countOneBits(vec4<i32>(var_0.x, arg_1, var_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 3u)])) | ~vec4<i32>(27772i, -48595i, global1[_wgslsmith_index_u32(4294967295u, 3u)], 2147483647i)));
    let var_3 = _wgslsmith_div_vec2_f32(arg_2.b.xy, arg_2.b.xy);
    return var_3.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<f32> {
    global1 = array<i32, 3>();
    global1 = array<i32, 3>();
    var var_0 = !arg_0.c;
    global4 = vec3<bool>(!all(!select(vec4<bool>(arg_0.c, global4.x, false, false), vec4<bool>(true, arg_0.c, global4.x, arg_0.c), vec4<bool>(false, true, arg_0.c, arg_0.c))), arg_0.c, global4.x);
    global0 = array<vec2<i32>, 11>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(func_4(Struct_1(-1165f, vec3<f32>(arg_0.a, arg_0.a, -938f), arg_0.c), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 3u)]), func_2(vec2<u32>(57175u, 45919u), vec4<bool>(true, false, false, arg_0.c), vec4<i32>(arg_1, global1[_wgslsmith_index_u32(0u, 3u)], 1i, 48288i)), _wgslsmith_f_op_f32(arg_0.a + 1642f))), 1335f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a * -959f))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 356f, arg_0.a, arg_0.b.x) - vec4<f32>(402f, -1056f, 664f, arg_0.b.x)))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    global3 = ~0u == (select(arg_0.x, min(1u, 1u), false != !global4.x) >> (22790u % 32u));
    let var_0 = func_2(~(~vec2<u32>(max(126504u, 47201u), 0u)), !vec4<bool>((global1[_wgslsmith_index_u32(33915u, 3u)] & 1i) == (global1[_wgslsmith_index_u32(arg_1, 3u)] << (u_input.b % 32u)), true, all(vec3<bool>(true, true, false)) | any(global4.xx), global4.x), _wgslsmith_clamp_vec4_i32(select(-(vec4<i32>(global1[_wgslsmith_index_u32(1u, 3u)], 9494i, -2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 3u)]) | vec4<i32>(-30254i, global1[_wgslsmith_index_u32(u_input.e.x, 3u)], 22003i, global1[_wgslsmith_index_u32(arg_1, 3u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(arg_0.x, 3u)], global1[_wgslsmith_index_u32(arg_1, 3u)]), vec4<i32>(45154i, global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(arg_1, 3u)], 1i)) << (vec4<u32>(arg_0.x, 11106u, 34866u, arg_0.x) % vec4<u32>(32u)), 77040u <= _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, arg_0.x), vec4<u32>(0u, arg_1, 66101u, 0u))), -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-54557i, global1[_wgslsmith_index_u32(arg_0.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], -18965i), vec4<i32>(-26571i, global1[_wgslsmith_index_u32(u_input.e.x, 3u)], 1i, 2147483647i)), -vec4<i32>(-17848i, 63251i, global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(1u, 3u)])), -vec4<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(0u, 3u)]), -1i, reverseBits(12123i), firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 3u)]))));
    var var_1 = global2[_wgslsmith_index_u32(countOneBits(18873u), 17u)];
    return ~_wgslsmith_mult_u32(4294967295u & _wgslsmith_mult_u32(~arg_1, countOneBits(1u)), abs(countOneBits(arg_1) & arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = func_5(vec2<u32>(~(1u >> (var_0.x % 32u)), ~var_0.x) | _wgslsmith_mult_vec2_u32(var_0.yz, var_0.xx), ~var_0.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(153f, -1402f, -769f, 1000f), vec4<f32>(241f, -159f, 952f, -869f)), _wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(var_0.x, 17u)], global1[_wgslsmith_index_u32(65700u, 3u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-590f, -1192f, 498f, -1168f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(459f, -169f, 1000f, -116f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -974f), -891f, _wgslsmith_f_op_f32(select(-155f, -534f, global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-760f - -1575f))))));
    var_1 = ~(var_0.x >> (~_wgslsmith_sub_u32(u_input.b >> (0u % 32u), 0u) % 32u));
    var_0 = select(~u_input.a, u_input.a, !select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, global4.x), vec3<bool>(false, false, global4.x)), select(vec3<bool>(true, global4.x, false), select(vec3<bool>(global4.x, true, false), vec3<bool>(global4.x, false, false), vec3<bool>(false, global4.x, true)), vec3<bool>(true, global4.x, false)), true));
    let var_2 = ~vec4<u32>(u_input.d, 1u, var_0.x, 4294967295u);
    global1 = array<i32, 3>();
    var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a.x, 10755u), 2051u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-178f, 298f, 1076f) - vec3<f32>(536f, -251f, -1314f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(567f, 400f, -1047f), vec3<f32>(455f, -1007f, -1107f)))))), vec3<f32>(-551f, 561f, 607f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1731f, 1985f, -927f, -892f)), vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(-441f, 639f, -820f, _wgslsmith_f_op_f32(f32(-1f) * -512f)))));
}

