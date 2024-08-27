struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-738f, -375f, -1100f), 26983u, -69134i, vec3<bool>(true, false, false), 114f);

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<f32>(1000f, -623f, 1041f, 575f), -28231i, 4294967295u, vec3<i32>(26291i, 650i, 48469i), 46676u), Struct_1(vec4<f32>(380f, 168f, -2446f, 715f), -17486i, 4294967295u, vec3<i32>(-47199i, 27598i, 1i), 26283u), Struct_1(vec4<f32>(-1514f, 1152f, 2995f, -475f), i32(-2147483648), 1u, vec3<i32>(2147483647i, -74597i, 1i), 1u), Struct_1(vec4<f32>(-103f, 1036f, -1000f, 2212f), 38847i, 5052u, vec3<i32>(-44339i, -1i, 2147483647i), 0u), Struct_1(vec4<f32>(1000f, 1469f, 1235f, -125f), -7328i, 1u, vec3<i32>(0i, -1i, i32(-2147483648)), 82511u), Struct_1(vec4<f32>(-1506f, -345f, -1000f, 362f), 31835i, 0u, vec3<i32>(1i, -5137i, 0i), 48033u), Struct_1(vec4<f32>(-1232f, -970f, -319f, -1000f), -14693i, 27582u, vec3<i32>(1i, -7804i, 1i), 53089u), Struct_1(vec4<f32>(302f, 183f, -701f, -695f), -27711i, 28582u, vec3<i32>(-43451i, 0i, -1i), 1u), Struct_1(vec4<f32>(-107f, 340f, 1325f, 1697f), -8397i, 4294967295u, vec3<i32>(0i, -36863i, -9854i), 66621u), Struct_1(vec4<f32>(-1204f, 198f, 966f, -854f), -18504i, 4294967295u, vec3<i32>(48543i, 21676i, 27015i), 24640u));

var<private> global2: array<Struct_3, 20>;

var<private> global3: array<Struct_1, 32>;

var<private> global4: array<f32, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global0.b << (u_input.c % 32u), global0.b), global0.b), vec2<u32>(~94031u, min(global0.b, u_input.c)));
    var var_1 = global3[_wgslsmith_index_u32(~4294967295u, 32u)];
    return !select(!vec4<bool>(all(vec2<bool>(true, global0.d.x)), !global0.d.x, 8997u < u_input.c, !global0.d.x), select(!select(vec4<bool>(true, true, global0.d.x, false), vec4<bool>(global0.d.x, global0.d.x, true, false), false), select(!vec4<bool>(global0.d.x, true, global0.d.x, false), select(vec4<bool>(global0.d.x, global0.d.x, false, true), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), true), true), global0.d.x), vec4<bool>(all(global0.d.zz), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(14715u, global0.b)) > 1u, global0.d.x, global0.d.x));
}

fn func_2() -> vec4<bool> {
    let var_0 = !global0.d.yz;
    global0 = Struct_2(global0.a, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c & global0.b, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, 0u, 0u, 0u)))), global0.b, global0.b), _wgslsmith_div_i32(-16547i, _wgslsmith_div_i32(-1i, u_input.b.x)), vec3<bool>(true, var_0.x, true), _wgslsmith_f_op_f32(max(1159f, -1000f)));
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    global4 = array<f32, 9>();
    return select(func_3(u_input.a.x), select(vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, global0.d.x, false)), false, select(any(vec4<bool>(global0.d.x, var_0.x, false, true)), global0.b <= u_input.c, var_0.x), (u_input.c << (81674u % 32u)) < 4294967295u), select(vec4<bool>(!global0.d.x, 4294967295u > u_input.c, global0.d.x, true), !vec4<bool>(var_0.x, var_0.x, true, global0.d.x), vec4<bool>(false, global0.d.x, var_0.x, true)), !vec4<bool>(true, true & global0.d.x, true, true)), true);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = u_input.c;
    var var_1 = func_3(~2147483647i).x;
    let var_2 = 30287u;
    global1 = array<Struct_1, 10>();
    var_1 = 1u < _wgslsmith_mod_u32(firstTrailingBit(~0u & var_2), var_2);
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1011f) - global0.a.x), 358f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global0.a, global0.a), global0.a))))), 4294967295u, ~_wgslsmith_mult_i32(~u_input.b.x, -_wgslsmith_add_i32(-2147483647i, arg_0)), !(!vec3<bool>(any(vec4<bool>(true, true, global0.d.x, true)), global0.d.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(81710u, 55209u), vec2<u32>(1u, var_2)), 9u)], global4[_wgslsmith_index_u32(var_2, 9u)]))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = -36953i;
    var var_2 = !(_wgslsmith_sub_i32(-2147483647i, (i32(-1i) * -2147483647i) >> (_wgslsmith_sub_u32(1u, global0.b) % 32u)) > var_1);
    var var_3 = global1[_wgslsmith_index_u32(0u, 10u)];
    global3 = array<Struct_1, 32>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_3.a.yxz, var_0.wxy, global0.d.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-117f, arg_1.e, -118f), arg_0.a.zyy))), vec3<f32>(_wgslsmith_f_op_f32(1914f * -1000f), _wgslsmith_f_op_f32(exp2(var_3.a.x)), _wgslsmith_f_op_f32(1000f * -264f))))), 26597u, 0i, arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(532f, arg_2.d.a.x, false)) + var_0.x));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(487f, 908f, global0.a.x, global4[_wgslsmith_index_u32(6885u, 9u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 190f, global4[_wgslsmith_index_u32(44462u, 9u)], 1000f) + vec4<f32>(global4[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(global0.b, 9u)], -700f, -349f)))) * vec4<f32>(global0.a.x, -609f, _wgslsmith_div_f32(global0.e, global0.e), global0.e)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1160f + -240f), _wgslsmith_f_op_f32(abs(global0.e)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global0.b, 9u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global0.b, 9u)] * global0.a.x))))), u_input.b.x << (0u % 32u), ~global0.b, -min(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, 94304i, u_input.a.x)), ~u_input.b), countOneBits(u_input.b)), _wgslsmith_div_u32(~abs(19055u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, global0.b, 1u, 13517u), vec4<u32>(u_input.c, global0.b, 61579u, u_input.c)) | (global0.b | 4294967295u), ~(~0u))));
    global3 = array<Struct_1, 32>();
    let var_1 = func_5(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, u_input.c, var_0.e) & vec3<u32>(u_input.c, 1u, 4294967295u), firstTrailingBit(vec3<u32>(1u, 1u, 31369u))), ~min(global0.b, 0u)), 10u)], func_4(35677i, var_0.a.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -392f), select(!select(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, true, global0.d.x, false)), vec4<bool>(false, true, global0.d.x && global0.d.x, true), func_2())), Struct_3(~vec2<u32>(u_input.c, 1u), Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-378f, -454f, global0.e), var_0.a.wwy))), u_input.c, global0.c, vec3<bool>(func_4(global0.c, var_0.a.x, global0.a.zy, vec4<bool>(true, true, global0.d.x, global0.d.x)).d.x, global0.d.x, true), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-236f, -213f)))), func_2().x, var_0), -(-vec4<i32>(var_0.d.x, u_input.b.x, var_0.b, u_input.a.x) << (abs(~vec4<u32>(global0.b, 11045u, 63390u, 109237u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1910f, _wgslsmith_f_op_f32(-func_4(global0.c, -1173f, _wgslsmith_f_op_vec2_f32(var_0.a.wx + var_0.a.zy), vec4<bool>(var_1.d.x, var_1.d.x, true, global0.d.x)).e), func_5(var_0, func_4(2147483647i, 699f, _wgslsmith_f_op_vec2_f32(floor(var_1.a.zx)), !vec4<bool>(false, global0.d.x, var_1.d.x, false)), Struct_3(~vec2<u32>(global0.b, 1u), var_1, func_2().x, Struct_1(var_0.a, global0.c, 0u, var_0.d, 89200u)), firstLeadingBit(abs(vec4<i32>(var_1.c, global0.c, -1i, u_input.b.x)))).a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(var_0.a)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 129f, global0.a.x, global4[_wgslsmith_index_u32(var_1.b, 9u)]), vec4<f32>(global0.a.x, 859f, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a)))), !(!global0.d.x)))));
    global1 = array<Struct_1, 10>();
    return global4[_wgslsmith_index_u32(var_1.b, 9u)];
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2.b.d.yy;
    var var_1 = vec3<i32>(-2147483647i, func_5(arg_1.d, Struct_2(arg_1.b.a, reverseBits(arg_1.b.b), _wgslsmith_sub_i32(abs(global0.c), ~arg_2.d.d.x), arg_1.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.a.x))), Struct_3(vec2<u32>(0u | u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), arg_1.a)), Struct_2(vec3<f32>(380f, arg_2.d.a.x, 1537f), select(global0.b, 21028u, arg_1.b.d.x), arg_1.d.d.x, vec3<bool>(var_0.x, false, arg_2.b.d.x), _wgslsmith_div_f32(-1000f, global0.a.x)), !func_5(global3[_wgslsmith_index_u32(global0.b, 32u)], Struct_2(vec3<f32>(826f, 1463f, 369f), arg_2.a.x, u_input.a.x, global0.d, global0.a.x), arg_2, vec4<i32>(global0.c, -18713i, u_input.a.x, 0i)).d.x, global1[_wgslsmith_index_u32(~max(arg_2.d.c, arg_2.d.e), 10u)]), ~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_2.b.c, -13669i, 2147483647i, global0.c)), vec4<i32>(global0.c, u_input.b.x, global0.c, 0i))).c, arg_1.b.c);
    let var_2 = u_input.c << (firstLeadingBit(0u ^ ~arg_2.b.b) % 32u);
    let var_3 = vec2<i32>(arg_1.b.c, arg_1.b.c);
    global2 = array<Struct_3, 20>();
    return Struct_3(firstTrailingBit(~arg_2.a), arg_2.b, true, arg_1.d);
}

fn func_7(arg_0: Struct_3) -> Struct_2 {
    var var_0 = u_input.b.x;
    var var_1 = 26027u;
    let var_2 = arg_0.b;
    var var_3 = func_6(var_2.e, func_6(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a.x), 1707f)), Struct_3(arg_0.a, func_5(Struct_1(arg_0.d.a, u_input.b.x, 1u, arg_0.d.d, 4294967295u), arg_0.b, Struct_3(arg_0.a, var_2, true, Struct_1(vec4<f32>(-328f, 563f, 721f, 602f), 23611i, 0u, vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), 24157u)), abs(vec4<i32>(var_2.c, global0.c, var_2.c, var_2.c))), global0.d.x, arg_0.d), func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(986f, global0.e, false)) * -561f), func_6(_wgslsmith_f_op_f32(-var_2.e), arg_0, Struct_3(vec2<u32>(u_input.c, arg_0.d.c), Struct_2(vec3<f32>(-894f, var_2.a.x, 428f), 0u, var_2.c, arg_0.b.d, -1854f), true, arg_0.d)), func_6(1202f, Struct_3(arg_0.a, Struct_2(arg_0.b.a, global0.b, u_input.b.x, vec3<bool>(false, var_2.d.x, true), global0.e), false, global3[_wgslsmith_index_u32(var_2.b, 32u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.d.e, global0.b), 20u)]))), Struct_3(vec2<u32>(firstLeadingBit(~10547u), ~_wgslsmith_div_u32(4294967295u, 51085u)), func_4(1i, 1107f, _wgslsmith_f_op_vec2_f32(var_2.a.yx * _wgslsmith_f_op_vec2_f32(-arg_0.b.a.zz)), vec4<bool>(all(vec3<bool>(true, global0.d.x, true)), global0.d.x & arg_0.c, arg_0.c, global0.d.x)), ~arg_0.a.x > firstTrailingBit(arg_0.d.c), Struct_1(arg_0.d.a, firstLeadingBit(countOneBits(arg_0.b.c)), _wgslsmith_sub_u32(func_5(global3[_wgslsmith_index_u32(var_2.b, 32u)], Struct_2(vec3<f32>(global0.e, 1912f, arg_0.d.a.x), var_2.b, -54724i, vec3<bool>(true, var_2.d.x, false), arg_0.d.a.x), Struct_3(arg_0.a, Struct_2(global0.a, var_2.b, 2147483647i, var_2.d, global4[_wgslsmith_index_u32(u_input.c, 9u)]), global0.d.x, Struct_1(vec4<f32>(var_2.a.x, global4[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)], 903f), global0.c, u_input.c, arg_0.d.d, 17257u)), vec4<i32>(arg_0.b.c, var_2.c, var_2.c, 78241i)).b, ~60441u), arg_0.d.d, var_2.b << (5330u % 32u))));
    let var_4 = 81i;
    return Struct_2(vec3<f32>(func_5(func_6(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(var_2.b, 9u)], 123f)), Struct_3(vec2<u32>(var_2.b, 63349u), Struct_2(vec3<f32>(var_3.d.a.x, global0.a.x, -1310f), 4294967295u, var_3.b.c, vec3<bool>(global0.d.x, true, arg_0.c), 216f), false, arg_0.d), global2[_wgslsmith_index_u32(arg_0.d.c & var_3.d.e, 20u)]).d, Struct_2(global0.a, max(var_3.b.b, var_3.a.x), 1i, !vec3<bool>(arg_0.b.d.x, true, false), global4[_wgslsmith_index_u32(1u, 9u)]), func_6(var_3.b.a.x, Struct_3(vec2<u32>(u_input.c, 1u), Struct_2(vec3<f32>(arg_0.b.e, var_2.a.x, var_3.b.e), 4294967295u, arg_0.d.b, var_2.d, arg_0.d.a.x), true, Struct_1(var_3.d.a, global0.c, global0.b, vec3<i32>(0i, global0.c, 1i), 1u)), Struct_3(arg_0.a, arg_0.b, arg_0.c, Struct_1(vec4<f32>(global0.a.x, -1000f, -128f, global0.e), var_3.b.c, var_2.b, vec3<i32>(-2147483647i, 0i, 1i), 8978u))), select(~vec4<i32>(-619i, 2147483647i, -64283i, 18789i), firstLeadingBit(vec4<i32>(1153i, -1i, 0i, var_4)), func_3(arg_0.b.c))).e, global0.a.x, _wgslsmith_f_op_f32(floor(func_5(var_3.d, var_3.b, func_6(-1532f, global2[_wgslsmith_index_u32(arg_0.b.b, 20u)], global2[_wgslsmith_index_u32(61230u, 20u)]), -vec4<i32>(var_4, u_input.a.x, -18874i, 0i)).a.x))), var_2.b, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(max(arg_0.d.d.zx, arg_0.d.d.zz) & vec2<i32>(var_2.c, -2147483647i), arg_0.d.d.yy), -1i), global0.d, -970f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 9>();
    var var_0 = func_7(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 1u), 9u)]) - global4[_wgslsmith_index_u32(~1u, 9u)]), Struct_3(vec2<u32>(global0.b, u_input.c) | countOneBits(vec2<u32>(1u, 0u)), Struct_2(_wgslsmith_f_op_vec3_f32(global0.a - global0.a), ~global0.b, u_input.a.x, !global0.d, _wgslsmith_f_op_f32(trunc(1277f))), u_input.b.x == countOneBits(u_input.b.x), global3[_wgslsmith_index_u32(global0.b, 32u)]), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, 4294967295u) ^ ~(~u_input.c), 20u)]));
    let var_1 = ~firstLeadingBit(-46813i);
    var var_2 = var_0.d.x;
    global0 = func_4(func_6(253f, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.b, ~var_0.b ^ ~1u, u_input.c), 20u)], func_6(global0.a.x, Struct_3(~vec2<u32>(44041u, 17382u), Struct_2(var_0.a, u_input.c, 1i, vec3<bool>(global0.d.x, true, var_0.d.x), 446f), func_4(var_0.c, var_0.e, vec2<f32>(2100f, 410f), vec4<bool>(global0.d.x, true, false, false)).d.x, func_6(var_0.a.x, Struct_3(vec2<u32>(1u, u_input.c), Struct_2(global0.a, 3203u, global0.c, vec3<bool>(var_0.d.x, true, var_0.d.x), 870f), global0.d.x, Struct_1(vec4<f32>(-391f, var_0.e, global0.e, var_0.a.x), 0i, var_0.b, u_input.b, var_0.b)), Struct_3(vec2<u32>(4294967295u, u_input.c), Struct_2(vec3<f32>(global4[_wgslsmith_index_u32(var_0.b, 9u)], var_0.e, -566f), global0.b, u_input.a.x, vec3<bool>(true, global0.d.x, var_0.d.x), 1000f), global0.d.x, Struct_1(vec4<f32>(510f, global0.a.x, global4[_wgslsmith_index_u32(global0.b, 9u)], -847f), -2147483647i, 1u, vec3<i32>(var_1, -22266i, -2147483647i), var_0.b))).d), global2[_wgslsmith_index_u32(~(var_0.b << (21529u % 32u)), 20u)])).b.c, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~41990u, 1u, abs(29105u), func_4(-2147483647i, 921f, vec2<f32>(global0.a.x, -1835f), vec4<bool>(true, true, true, var_0.d.x)).b), ~(~(~vec4<u32>(var_0.b, 19089u, 4294967295u, 37429u)))), 9u)], var_0.a.yy, !vec4<bool>(all(vec3<bool>(var_0.d.x, var_0.d.x, global0.d.x)), true, true || (var_0.a.x == global0.a.x), any(vec2<bool>(global0.d.x, var_0.d.x)) & false));
    global4 = array<f32, 9>();
    let var_3 = global0.b;
    let var_4 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, min(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_1, 20870i, global0.c), firstTrailingBit(vec4<i32>(global0.c, 0i, 34325i, var_1))), vec4<i32>(var_0.c, var_0.c, -50671i, -2147483647i) | select(vec4<i32>(-43443i, u_input.a.x, global0.c, var_1), vec4<i32>(u_input.b.x, var_0.c, 0i, -11443i), vec4<bool>(true, global0.d.x, false, global0.d.x))) >> (vec4<u32>(~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(84207u, u_input.c), vec2<u32>(u_input.c, global0.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.b, 4294967295u, 1u), vec3<u32>(global0.b, var_0.b, 1163u)), ~vec3<u32>(global0.b, 80127u, u_input.c)), ~u_input.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-global0.a.zx), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * func_5(global3[_wgslsmith_index_u32(1u, 32u)], Struct_2(vec3<f32>(global4[_wgslsmith_index_u32(0u, 9u)], -1986f, global0.a.x), global0.b, var_0.c, vec3<bool>(false, var_0.d.x, false), -337f), global2[_wgslsmith_index_u32(46439u, 20u)], vec4<i32>(-2147483647i, -17974i, 2147483647i, -9961i)).a)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global0.a, vec3<f32>(-739f, 172f, -288f)))))))));
}

