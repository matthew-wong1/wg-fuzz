struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 1u, vec4<u32>(0u, 1u, 0u, 49593u), vec4<bool>(false, false, false, false));

var<private> global1: array<Struct_1, 32>;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    return 4294967295u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = countOneBits(vec3<u32>(func_3(global2.xz, vec4<f32>(_wgslsmith_f_op_f32(select(1000f, arg_1.x, false)), -1151f, _wgslsmith_f_op_f32(min(1167f, arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.x))))), abs(71161u), firstTrailingBit(arg_0.x)));
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    return global1[_wgslsmith_index_u32(~1u, 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = global2.yy;
    global1 = array<Struct_1, 32>();
    var var_1 = -countOneBits(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)));
    let var_2 = !select(global0.d.xz, global2.zz, arg_0.d.yx);
    global1 = array<Struct_1, 32>();
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 32>();
    let var_0 = global2.x;
    let var_1 = vec3<f32>(arg_0, arg_0, 1114f);
    global2 = !vec3<bool>(global2.x, true, false);
    var var_2 = Struct_1(true, 1u, _wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(func_2(global0.c.xy, vec4<f32>(-674f, var_1.x, arg_0, -891f), arg_1.c, -32087i).c, func_4(global1[_wgslsmith_index_u32(21686u, 32u)], Struct_1(true, arg_1.b, arg_1.c, global0.d), true, vec4<u32>(global0.b, arg_1.b, 29163u, arg_1.c.x)).c, global0.c), ~(vec4<u32>(arg_1.b, arg_1.c.x, 4294967295u, 4294967295u) | arg_1.c), 961f >= _wgslsmith_f_op_f32(583f - arg_0)), ~vec4<u32>(global0.c.x | 56098u, abs(34159u), global0.c.x, global0.c.x)), global0.d);
    return func_4(Struct_1(true, arg_1.c.x, global0.c, vec4<bool>(global2.x, all(!vec3<bool>(global0.a, true, false)), arg_0 != arg_0, !(arg_0 < arg_0))), Struct_1(!all(global0.d.xz), arg_1.c.x, reverseBits(var_2.c & _wgslsmith_mod_vec4_u32(arg_1.c, global0.c)), select(!(!vec4<bool>(false, true, global2.x, global2.x)), global0.d, true)), arg_0 >= _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 * var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * arg_0))))), countOneBits(arg_1.c));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(true, reverseBits(arg_1.b >> (4294967295u % 32u)), arg_1.c, func_2(vec2<u32>(~_wgslsmith_add_u32(631u, arg_1.b), arg_2.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-150f, -1294f, 475f, -336f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), true)), vec4<u32>(arg_2.x, ~arg_0.b, _wgslsmith_mult_u32(arg_0.c.x >> (64906u % 32u), func_5(-2267f, Struct_1(global2.x, arg_2.x, arg_1.c, vec4<bool>(false, true, global2.x, false))).c.x), func_2(vec2<u32>(78422u, 17083u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, 1341f, -1000f, 774f)), vec4<u32>(16633u, arg_2.x, 1u, 1u), u_input.a).b), -u_input.a).d);
    var var_0 = u_input.a;
    global2 = !global0.d.xxz;
    return Struct_1(true, 98970u, ~(~_wgslsmith_add_vec4_u32(arg_1.c << (vec4<u32>(arg_1.c.x, 20369u, arg_0.b, 42368u) % vec4<u32>(32u)), ~vec4<u32>(arg_1.b, arg_0.b, global0.c.x, global0.c.x))), select(!select(vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, global2.x, true, arg_0.d.x), true), select(vec4<bool>(any(global0.d.zwy), false, func_5(1084f, Struct_1(false, 73905u, vec4<u32>(global0.c.x, 0u, 0u, arg_0.c.x), global0.d)).d.x, global0.d.x == arg_0.a), !select(arg_1.d, vec4<bool>(true, global2.x, true, false), vec4<bool>(global0.a, true, false, false)), true), vec4<bool>(!all(arg_1.d), true, true, global0.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(~abs(global0.c.x)), 32u)];
    global0 = func_6(func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(259f - 585f) + _wgslsmith_f_op_f32(sign(-999f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-321f - -144f), _wgslsmith_div_f32(-398f, 288f)), false)), func_4(func_2(var_0.c.xz, _wgslsmith_f_op_vec4_f32(vec4<f32>(-777f, 112f, 865f, 1581f) * vec4<f32>(-385f, -171f, 278f, 1149f)), vec4<u32>(12965u, 43304u, global0.b, var_0.b) | global0.c, -2147483647i), func_2(global0.c.yy ^ global0.c.yz, vec4<f32>(-1000f, 1306f, 581f, -231f), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, 0u, 1u, 0u), var_0.c, global0.c), u_input.a), !any(vec3<bool>(global0.a, false, true)), _wgslsmith_clamp_vec4_u32(abs(global0.c), var_0.c, ~var_0.c))), global1[_wgslsmith_index_u32(0u, 32u)], select(vec4<u32>(var_0.b, global0.b >> (_wgslsmith_sub_u32(global0.c.x, global0.c.x) % 32u), global0.b, _wgslsmith_mod_u32(global0.b << (4294967295u % 32u), 1u)), global0.c, !global0.d));
    var var_1 = _wgslsmith_mod_vec4_i32(~firstLeadingBit(-vec4<i32>(u_input.a, u_input.a, -23285i, 43829i)) | (~(~vec4<i32>(30577i, -2147483647i, 86326i, -15357i)) & select(-vec4<i32>(133i, 2147483647i, u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(54369i, 1i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, -2768i)), true)), vec4<i32>(min(firstLeadingBit(-2147483647i), 0i), u_input.a, u_input.a, u_input.a) & _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(10105i, 14234i, u_input.a, -1i), vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a))), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -25754i, u_input.a, 15956i)))));
    var_1 = abs(_wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-1046i, -1i, var_1.x, -1i), vec4<i32>(u_input.a, u_input.a, 6785i, -1441i))), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -31223i, var_1.x), vec3<i32>(u_input.a, u_input.a, 58846i)), abs(var_1.x), firstLeadingBit(u_input.a))) & (_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-50079i, u_input.a, -26902i, -2147483647i), vec4<i32>(u_input.a, 2147483647i, var_1.x, var_1.x)), abs(vec4<i32>(2147483647i, var_1.x, u_input.a, -1i))) | _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, var_1.x, 14415i, -2147483647i), vec4<i32>(u_input.a, 2147483647i, var_1.x, var_1.x))));
    let var_2 = func_2(vec2<u32>(4294967295u, _wgslsmith_sub_u32(var_0.b, var_0.b)) | _wgslsmith_mod_vec2_u32(global0.c.zw, global0.c.ww), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(597f, 694f, -180f, -527f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1356f, -370f, 450f, -274f)))), global0.c, select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a ^ u_input.a, reverseBits(-1i), min(-2147483647i, 1i)), vec3<i32>(reverseBits(1i), -2147483647i, reverseBits(var_1.x))), min(u_input.a, var_1.x) | 0i, func_2(global0.c.ww, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-571f, 730f, -1419f, 1337f), vec4<f32>(1019f, 1024f, -434f, 442f)))), vec4<u32>(~var_0.c.x, ~70395u, 0u, global0.c.x << (4294967295u % 32u)), 1i).d.x));
    return func_4(Struct_1(all(!(!global0.d)), 12246u, min(~global0.c, select(global0.c, firstTrailingBit(vec4<u32>(1u, 7914u, var_0.b, 87610u)), func_4(global1[_wgslsmith_index_u32(20242u, 32u)], var_2, false, vec4<u32>(65811u, 4294967295u, 4294967295u, 1u)).d)), select(var_0.d, func_5(-1338f, Struct_1(global0.a, 18106u, vec4<u32>(4294967295u, var_0.c.x, var_0.b, 68321u), vec4<bool>(global0.a, true, var_0.d.x, global2.x))).d, func_2(vec2<u32>(var_2.b, var_0.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1083f, 595f, 1718f, 809f))), vec4<u32>(var_2.b, var_0.c.x, 4294967295u, 29530u), max(u_input.a, u_input.a)).d)), var_2, true, ~var_0.c);
}

fn func_7(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-565f * 819f), _wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), arg_1)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(411f, _wgslsmith_f_op_f32(round(arg_1)), arg_1)));
    var var_1 = -43119i;
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~6739u, func_2(~global0.c.wx, vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 812f, -610f, _wgslsmith_f_op_f32(ceil(259f))), func_5(1102f, func_1()).c, ~u_input.a).c.x), ~(~min(global0.c.xz, func_6(arg_2, Struct_1(arg_2.d.x, arg_0.x, arg_0, global0.d), arg_0).c.xz)));
    return _wgslsmith_f_op_f32(301f * _wgslsmith_f_op_f32(min(336f, -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(0u, 32u)];
    var var_1 = -52922i;
    var var_2 = vec3<bool>(false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(vec4<u32>(5574u, 1u, 1u, 1u), _wgslsmith_f_op_f32(-1000f + -351f), func_1()))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f * -1740f)))));
    global1 = array<Struct_1, 32>();
    let var_3 = vec4<u32>(22872u, 16975u, func_2(global0.c.yy ^ (vec2<u32>(20844u, global0.b) >> (vec2<u32>(0u, var_0.c.x) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_7(global0.c, 1000f, Struct_1(var_2.x, 10298u, vec4<u32>(var_0.c.x, global0.b, 0u, 1u), vec4<bool>(global2.x, true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1268f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(2187f)), -304f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(655f, -136f) * _wgslsmith_f_op_f32(min(1951f, 807f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1245f * 1120f))), ~func_1().c, select(u_input.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a)), countOneBits(u_input.a) | u_input.a, var_0.a)).c.x, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, -1185f, 145f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-781f)) * _wgslsmith_f_op_f32(f32(-1f) * -2298f)), _wgslsmith_f_op_f32(-2522f - _wgslsmith_f_op_f32(min(838f, -1600f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(681f)) * _wgslsmith_f_op_f32(abs(1440f))))));
}

