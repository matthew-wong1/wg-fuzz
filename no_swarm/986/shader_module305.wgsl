struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, Struct_1(vec4<i32>(36319i, -1i, 15326i, 9202i), vec4<i32>(-1i, 7527i, 0i, 2147483647i), vec3<i32>(-20222i, i32(-2147483648), 0i), true), 1187f, Struct_1(vec4<i32>(i32(-2147483648), -18455i, -1i, 2147483647i), vec4<i32>(-1i, 34079i, 44171i, 10876i), vec3<i32>(33175i, 1i, 1735i), true), 2147483647i);

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(82994u, 95438u, 13108u, 27875u), vec4<u32>(0u, 57127u, 30567u, 0u), vec4<u32>(14645u, 0u, 0u, 31463u), vec4<u32>(0u, 1u, 13022u, 10731u), vec4<u32>(1u, 32056u, 0u, 1u), vec4<u32>(73005u, 1u, 1u, 8555u));

var<private> global3: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_sub_u32(u_input.c, abs(_wgslsmith_add_u32(u_input.c, firstLeadingBit(~u_input.c))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1577f * 1466f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c), arg_0.c)));
    let var_2 = Struct_3(min(~abs(vec3<u32>(3384u, 1u, 2386u)), vec3<u32>(_wgslsmith_sub_u32(67568u, u_input.c), 4294967295u, u_input.c) & ((vec3<u32>(u_input.c, 83100u, u_input.c) << (vec3<u32>(0u, u_input.c, u_input.c) % vec3<u32>(32u))) ^ (vec3<u32>(u_input.c, u_input.c, u_input.c) ^ vec3<u32>(10810u, u_input.c, u_input.c)))), arg_0, select(~max(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.c, 6u)], vec4<u32>(u_input.c, u_input.c, 79210u, 138318u)), u_input.c), u_input.c, any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global3.b.d, false)), !vec3<bool>(global1.x, global3.d.d, global3.d.d), !vec3<bool>(false, false, global1.x)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), 1000f, var_2.b.c);
    var var_4 = -1000f;
    return global1.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c, global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c, global0.c)))))));
    let var_1 = u_input.c >> (u_input.c % 32u);
    let var_2 = Struct_3(vec3<u32>(37379u, 78585u, ~1u), Struct_2(!func_3(Struct_2(global1.x, global3.d, var_0.x, Struct_1(vec4<i32>(arg_1, 1i, arg_1, 28849i), vec4<i32>(2147483647i, global0.d.b.x, -1i, global3.e), global0.d.a.xzw, global0.a), -6917i), 5476i & u_input.a.x), Struct_1(global0.d.a, firstTrailingBit(vec4<i32>(global0.d.b.x, u_input.a.x, arg_1, global0.e)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(18460i, 2147483647i, global0.b.b.x, 2147483647i), global3.d.b), global3.d.b.yzz, global3.a), 1f, global3.d, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-9938i, u_input.b), vec2<i32>(1i, global0.b.b.x)))), countOneBits(~1u));
    let var_3 = var_0.xy;
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.b.c, _wgslsmith_f_op_f32(-var_0.x)) + -326f)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_2 {
    global2 = array<vec4<u32>, 6>();
    let var_0 = Struct_2(all(select(vec3<bool>(arg_1.x, true, false), select(!vec3<bool>(true, true, arg_1.x), arg_1, arg_1), global0.d.d)), Struct_1(global3.b.a, -global0.d.a, vec3<i32>(-1i) * -vec3<i32>(-346i, -2147483647i, 1i), global0.b.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(global1.x || global3.d.d, global3.b.b.x <= -2147483647i, global0.a, arg_1.x), -global0.e, !select(arg_1.xy, arg_1.zx, arg_1.xy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c, global3.c)) - global0.c)), Struct_1(global3.b.a, vec4<i32>(0i, firstTrailingBit(global3.e), -18263i, 23591i), global0.d.a.yxy, arg_2.x < 16086u), _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(-1i, u_input.a.x)) ^ (u_input.b | u_input.a.x)), ~abs(1i)));
    var var_1 = !(!select(arg_1.yz, vec2<bool>(u_input.a.x <= -2147483647i, true), arg_1.yz));
    global0 = var_0;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1286f + var_0.c))), _wgslsmith_f_op_f32(round(-1805f)))));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, arg_0.b.c, 1000f, 907f));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.c * _wgslsmith_div_f32(284f, _wgslsmith_f_op_f32(f32(-1f) * -2172f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(ceil(1722f))))), global3.c, any(!select(vec3<bool>(arg_1.b.b.d.d, arg_0.b.d.d, true), vec3<bool>(false, true, arg_0.b.d.d), arg_0.b.a)))));
    global1 = select(arg_3, select(arg_3, vec2<bool>(true, global0.a), any(!(!vec4<bool>(global0.d.d, true, false, true)))), all(!select(vec3<bool>(true, true, global3.b.d), vec3<bool>(true, arg_1.c, arg_3.x), vec3<bool>(true, arg_1.d.d, global0.b.d))));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(~func_1(-1000f, vec3<bool>(arg_3.x, global3.a, global3.d.d), global2[_wgslsmith_index_u32(arg_1.a.c, 6u)]).b.b.x, -(~arg_2.b.c.x)) >> (select(arg_1.b.a.yz, arg_1.a.a.yx, !arg_3) % vec2<u32>(32u)), vec2<i32>(1i, u_input.a.x));
    let var_3 = min(_wgslsmith_clamp_vec3_u32(select(~(vec3<u32>(arg_1.b.a.x, 1u, arg_0.a.x) | vec3<u32>(u_input.c, u_input.c, arg_0.a.x)), vec3<u32>(arg_0.a.x, 8297u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.c), arg_1.a.a.xz)), !(!vec3<bool>(arg_0.b.a, false, false))), ~arg_0.a ^ (firstLeadingBit(vec3<u32>(arg_0.a.x, 4294967295u, 1u)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c, u_input.c, arg_0.c), arg_1.b.a) % vec3<u32>(32u))), vec3<u32>(arg_1.b.c, (u_input.c & 4294967295u) << (39582u % 32u), _wgslsmith_add_u32(arg_1.b.c, 1u))), ~(arg_1.b.a << (~reverseBits(vec3<u32>(56580u, arg_0.a.x, u_input.c)) % vec3<u32>(32u))));
    return ~_wgslsmith_add_vec4_i32(func_1(arg_2.c, vec3<bool>(false, arg_2.a, arg_3.x), vec4<u32>(var_3.x, var_3.x, 82089u, arg_1.b.a.x)).d.a, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.d.b.x, 2147483647i, var_2.x, -12877i), vec4<i32>(-34621i, 58004i, 2147483647i, u_input.b)), arg_1.a.b.b.a)) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(var_3.x, 6u)], vec4<u32>(0u, 56824u, var_3.x, u_input.c)), global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.c), 6u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_1.a.c, u_input.c, arg_1.b.a.x)), (arg_1.a.a & arg_1.b.a) | vec3<u32>(22836u, arg_1.a.a.x, 0u)), 6u)]) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~_wgslsmith_div_u32(~u_input.c, u_input.c), _wgslsmith_mod_u32(u_input.c, u_input.c));
    global3 = Struct_2(true, Struct_1(-func_4(Struct_3(vec3<u32>(var_0.x, var_0.x, u_input.c), Struct_2(global3.a, global0.d, global3.c, global0.d, global3.e), u_input.c), Struct_4(Struct_3(vec3<u32>(var_0.x, var_0.x, 80156u), Struct_2(global3.b.d, Struct_1(vec4<i32>(0i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(global0.b.a.x, global3.d.c.x, global0.d.c.x, u_input.a.x), vec3<i32>(13825i, u_input.b, global3.d.b.x), true), 328f, global3.d, 0i), var_0.x), Struct_3(vec3<u32>(4294967295u, var_0.x, 4294967295u), Struct_2(true, Struct_1(global3.b.b, global0.d.b, global0.b.b.yzx, global3.d.d), global3.c, global0.d, u_input.b), u_input.c), true, global3.d), func_1(-1920f, vec3<bool>(false, global1.x, global0.b.d), vec4<u32>(u_input.c, var_0.x, 1u, u_input.c)), vec2<bool>(true, global3.d.d)), firstTrailingBit(select(global3.b.b, global0.b.b, !vec4<bool>(global0.b.d, true, global1.x, global0.d.d))), -u_input.a << (~vec3<u32>(8281u, 1u, 4294967295u) % vec3<u32>(32u)), true), _wgslsmith_f_op_f32(-global0.c), global0.b, 0i);
    global0 = func_1(550f, select(select(select(vec3<bool>(true, global0.b.d, global3.b.d), vec3<bool>(true, global0.b.d, global1.x), global1.x), !(!vec3<bool>(global3.b.d, false, global1.x)), !vec3<bool>(global1.x, false, global3.b.d)), vec3<bool>(any(select(vec2<bool>(global0.d.d, false), vec2<bool>(false, global1.x), global0.b.d)), !(global0.a || true), !global0.d.d), vec3<bool>(true, true, global3.c != -1111f)), _wgslsmith_mult_vec4_u32(~(~reverseBits(vec4<u32>(var_0.x, 4294967295u, 8599u, var_0.x))), vec4<u32>(abs(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(21277u, 6u)], vec4<u32>(u_input.c, 52731u, 1u, u_input.c))), 4294967295u, 4294967295u, var_0.x)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1814f)), global3.c);
    let var_2 = Struct_4(Struct_3(~min(vec3<u32>(var_0.x, u_input.c, u_input.c) & vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(18158u, 13578u, var_0.x) << (vec3<u32>(u_input.c, 1u, 3172u) % vec3<u32>(32u))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1102f), select(select(vec3<bool>(true, false, false), vec3<bool>(true, global0.b.d, false), false), vec3<bool>(global3.b.d, false, false), true), global2[_wgslsmith_index_u32(28248u, 6u)]), 2395u), Struct_3(max(~(~vec3<u32>(34269u, 11838u, var_0.x)), ~(~vec3<u32>(var_0.x, 14330u, 0u))), func_1(_wgslsmith_f_op_f32(427f - _wgslsmith_f_op_f32(f32(-1f) * -544f)), vec3<bool>(false, true, select(true, true, global1.x)), _wgslsmith_clamp_vec4_u32(~global2[_wgslsmith_index_u32(var_0.x, 6u)], ~vec4<u32>(var_0.x, 4531u, 0u, 4294967295u), _wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(u_input.c, 6u)], vec4<u32>(var_0.x, 1u, u_input.c, 1u)))), var_0.x), any(select(vec3<bool>(!global1.x, true, global1.x), select(select(vec3<bool>(global1.x, global1.x, global3.a), vec3<bool>(global3.b.d, global0.d.d, true), vec3<bool>(false, true, global0.a)), vec3<bool>(true, false, global3.b.d), true), global3.b.d)), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x);
}

