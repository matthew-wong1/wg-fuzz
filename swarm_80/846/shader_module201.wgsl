struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<bool, 6>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = ~(-select(firstTrailingBit(vec4<i32>(-1i, 1i, global0.b, u_input.b.x)), ~vec4<i32>(1i, -1828i, -36957i, -33799i), vec4<bool>(true, global0.d, false, true))) | vec4<i32>(12277i, -2147483647i, -1i, -(i32(-1i) * -21486i));
    global1 = array<Struct_1, 27>();
    let var_1 = var_0.yy;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1099f, global0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2042f, -136f)))))));
    global2 = array<bool, 6>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x)));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> Struct_3 {
    let var_0 = global0.a.yy;
    var var_1 = arg_0;
    var var_2 = arg_0;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 27u)];
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c.a.xzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, arg_0.c.a.x, var_2.c.a.x))) * vec3<f32>(687f, _wgslsmith_f_op_f32(1546f + 1565f), _wgslsmith_f_op_f32(func_3()))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.c.a.x, 210f), _wgslsmith_f_op_f32(abs(-1967f)), _wgslsmith_f_op_f32(select(var_2.c.a.x, var_2.c.a.x, var_2.a))))), 8166i, arg_0.b, 1196f);
    return Struct_3(true, 42580u >> (~(var_2.b << (~var_1.b % 32u)) % 32u), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(1341f + arg_0.c.a.x), var_3.a.x, _wgslsmith_f_op_f32(floor(-296f)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> bool {
    global0 = Struct_1(global0.a, max(~u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.c.a.x, _wgslsmith_f_op_f32(global0.c.x * global0.c.x), global0.c.x, _wgslsmith_f_op_f32(select(599f, -459f, false)))), global0.c)), any(select(vec3<bool>(global0.d, true, true), select(select(vec3<bool>(arg_1.c.a, true, false), vec3<bool>(true, true, global0.d), vec3<bool>(false, global0.d, arg_1.c.a)), vec3<bool>(false, global0.d, true), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], true, false)), true)));
    let var_0 = ~(~global0.a ^ _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1.c.b, 4294967295u, arg_1.c.b), firstLeadingBit(vec3<u32>(4294967295u, global0.a.x, 32827u))), vec3<u32>(arg_1.c.b, ~4294967295u, _wgslsmith_mod_u32(85461u, u_input.a.x))));
    global0 = Struct_1(~firstLeadingBit(abs(vec3<u32>(0u, global0.a.x, 0u))), _wgslsmith_clamp_i32(1i | u_input.b.x, global0.b, u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -820f), arg_1.c.c.a.x, -721f, _wgslsmith_f_op_f32(global0.c.x - -267f)) + global0.c)), false);
    var var_1 = vec4<bool>(!(!arg_1.a), all(!select(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_1.c.b, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], arg_1.c.a), !global0.d)), 35817u > _wgslsmith_dot_vec2_u32(select(~vec2<u32>(arg_0, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), vec2<u32>(39419u, arg_0)), select(vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 6u)]), vec2<bool>(arg_1.a, true), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 6u)]))), ~var_0.xx), true);
    var var_2 = arg_1.b.wzy;
    return 0i != arg_1.d;
}

fn func_1(arg_0: i32) -> Struct_3 {
    global2 = array<bool, 6>();
    var var_0 = !(!func_4(global0.a.x, Struct_4(!global0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, 376f, 132f, global0.c.x)), func_2(Struct_3(global2[_wgslsmith_index_u32(48524u, 6u)], 21724u, Struct_2(vec4<f32>(global0.c.x, 444f, global0.c.x, global0.c.x))), global0.a.x, global0.a.x), u_input.b.x)));
    let var_1 = Struct_3(false, u_input.a.x, func_2(Struct_3(func_2(func_2(Struct_3(global2[_wgslsmith_index_u32(global0.a.x, 6u)], 0u, Struct_2(vec4<f32>(global0.c.x, global0.c.x, 165f, global0.c.x))), global0.a.x, u_input.c.x), global0.a.x, u_input.a.x).a, 13129u, func_2(func_2(Struct_3(true, 126880u, Struct_2(global0.c)), global0.a.x, 70844u), u_input.c.x, 64498u).c), 55083u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 8231u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, 1u, global0.a.x))))).c);
    return Struct_3(select(global2[_wgslsmith_index_u32(var_1.b, 6u)], func_4(1u, Struct_4(false, global0.c, func_2(Struct_3(true, 0u, Struct_2(global0.c)), 1u, global0.a.x), 1i)), func_4(var_1.b, Struct_4(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 761f, -844f, 295f)), var_1, i32(-1i) * -6422i))), u_input.a.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, 15374u, global0.a.x), vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, 5730u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 15076u, u_input.c.x, 22261u), vec4<u32>(4294967295u, 4294967295u, var_1.b, global0.a.x)), firstTrailingBit(vec4<u32>(global0.a.x, var_1.b, 0u, 1u) | vec4<u32>(1993u, var_1.b, u_input.c.x, u_input.c.x))) % 32u), Struct_2(global0.c));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = all(!select(!select(vec2<bool>(global0.d, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], true), vec2<bool>(false, arg_1.a)), !select(vec2<bool>(global0.d, global0.d), vec2<bool>(true, false), global2[_wgslsmith_index_u32(47732u, 6u)]), !select(vec2<bool>(global0.d, true), vec2<bool>(arg_2.c.a, true), vec2<bool>(false, true))));
    global2 = array<bool, 6>();
    var var_1 = vec4<u32>(~1u, u_input.c.x, global0.a.x, _wgslsmith_mod_u32(arg_2.c.b, _wgslsmith_clamp_u32(1u, ~20095u, 46034u)) & ~(~_wgslsmith_mult_u32(4294967295u, 1u)));
    let var_2 = Struct_3(!(!func_4(~arg_1.b, arg_2)), ~96206u, Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.c.a.x, arg_2.b.x, arg_1.c.a.x, 809f), vec4<f32>(1794f, arg_3.x, 1565f, 1422f))), global0.c))));
    var var_3 = abs(~vec3<i32>(arg_2.d, 4202i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, u_input.b.x, arg_0.x), vec3<i32>(-8158i, -1975i, -2147483647i)))) | -vec3<i32>(-_wgslsmith_mod_i32(-5845i, u_input.b.x), 0i >> (_wgslsmith_clamp_u32(global0.a.x, 0u, 23057u) % 32u), arg_2.d);
    return vec3<bool>(var_0, false, all(select(select(vec2<bool>(false, false), !vec2<bool>(global0.d, false), var_2.a), vec2<bool>(global0.d, !var_0), 0u < max(arg_2.c.b, 1u))));
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_2;
    global1 = array<Struct_1, 27>();
    global2 = array<bool, 6>();
    var var_1 = Struct_4(any(arg_0.yy), _wgslsmith_f_op_vec4_f32(-global0.c), func_2(Struct_3(all(arg_3), var_0.a.x >> (global0.a.x % 32u), Struct_2(global0.c)), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a.x, var_0.a.x), var_0.a)), 4775u), _wgslsmith_add_i32(arg_2.b, -u_input.b.x));
    var var_2 = Struct_4(true, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(620f, arg_2.c.x, 1159f, var_0.c.x), _wgslsmith_f_op_vec4_f32(-var_1.b)))))), Struct_3(func_5(countOneBits(vec4<i32>(-2682i, 29809i, -58554i, 10431i)), Struct_3(true, 4294967295u, func_2(Struct_3(false, 1u, var_1.c.c), var_0.a.x, arg_2.a.x).c), Struct_4(var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.c), var_1.c, i32(-1i) * -27667i), vec3<f32>(-348f, arg_2.c.x, func_2(var_1.c, arg_2.a.x, 21938u).c.a.x)).x, ~u_input.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(select(var_0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1128f, 1164f, 359f) - global0.c), arg_3)))), var_0.b);
    return _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.b, max(abs(vec2<i32>(-18212i, 13149i)), countOneBits(vec2<i32>(var_2.d, -1i) ^ u_input.b))), vec2<i32>(countOneBits(~var_2.d), i32(-1i) * -2147483647i) | ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 6>();
    let var_0 = func_6(select(!func_5(firstTrailingBit(vec4<i32>(-11374i, -9333i, global0.b, u_input.b.x)), func_1(u_input.b.x), Struct_4(false, global0.c, Struct_3(true, global0.a.x, Struct_2(global0.c)), u_input.b.x), _wgslsmith_f_op_vec3_f32(select(global0.c.yzw, global0.c.yww, vec3<bool>(true, true, true)))), vec3<bool>(!func_4(33437u, Struct_4(global2[_wgslsmith_index_u32(global0.a.x, 6u)], vec4<f32>(555f, 834f, global0.c.x, -406f), Struct_3(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], 1u, Struct_2(global0.c)), u_input.b.x)), global2[_wgslsmith_index_u32(~global0.a.x, 6u)], !global2[_wgslsmith_index_u32(403u, 6u)]), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c.x, -836f)))), global1[_wgslsmith_index_u32(0u, 27u)], vec4<bool>(global0.d, global2[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_dot_vec2_i32(u_input.b ^ u_input.b, vec2<i32>(u_input.b.x, -38339i)) < ~(~global0.b), true));
    let var_1 = !func_5(~(vec4<i32>(1i, global0.b, 78784i, -2147483647i) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 0u), vec4<u32>(4294967295u, u_input.c.x, global0.a.x, 4294967295u)) % vec4<u32>(32u))), Struct_3(global0.d || true, 0u, Struct_2(global0.c)), Struct_4(all(!vec4<bool>(global0.d, global0.d, global2[_wgslsmith_index_u32(43608u, 6u)], global0.d)), vec4<f32>(-445f, func_2(Struct_3(global0.d, 0u, Struct_2(global0.c)), global0.a.x, 4294967295u).c.a.x, global0.c.x, 1464f), func_1(~u_input.b.x), firstLeadingBit(var_0.x) << (12787u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.yyy))).xz;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1072f, 1060f)), 550f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * global0.c.x) - global0.c.x), global0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -622f))))));
    var var_3 = -countOneBits(~firstLeadingBit(var_0.x << (u_input.c.x % 32u)));
    var var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1627f)))), 736f, ~(abs(firstLeadingBit(u_input.c.x)) >> (0u % 32u)), -461f);
}

