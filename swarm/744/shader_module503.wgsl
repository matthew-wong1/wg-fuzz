struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(-290f, vec3<bool>(true, true, false), vec4<u32>(56868u, 95460u, 28099u, 12327u), vec4<i32>(30944i, 2147483647i, -1i, 0i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-1283f, -1244f, 1000f, 2165f), false, 2147483647i), -16007i, 971f, 1i, Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1000f, -355f, 1974f, 1266f), false, -1i))), Struct_3(663f, vec3<bool>(true, false, false), vec4<u32>(1u, 1u, 0u, 1u), vec4<i32>(1i, 2147483647i, 0i, 0i), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(945f, 249f, -1000f, 300f), true, 2147483647i), 2147483647i, 185f, 2147483647i, Struct_1(vec3<bool>(true, true, false), vec4<f32>(-536f, -3250f, -1602f, 1786f), true, -42459i))), Struct_3(1000f, vec3<bool>(true, false, false), vec4<u32>(0u, 27825u, 1u, 13466u), vec4<i32>(736i, 39558i, 1i, i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(-262f, 937f, 104f, 234f), true, 5033i), 1i, 559f, -14049i, Struct_1(vec3<bool>(false, false, false), vec4<f32>(601f, 1376f, -512f, -1567f), true, 2269i))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_4) -> vec4<f32> {
    global1 = vec2<bool>(arg_0.b.x, true);
    var var_0 = arg_0.b.x;
    let var_1 = Struct_1(select(vec3<bool>(!(global1.x & arg_2.b.a.x), global0.x, global0.x), global0.yxz, arg_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b.b)))), !(all(!vec4<bool>(true, arg_0.b.x, global1.x, global1.x)) & arg_0.e.e.c), u_input.a.x);
    global0 = select(select(select(vec4<bool>(any(arg_0.b.yy), false, true, u_input.a.x <= -2147483647i), vec4<bool>(true, var_1.a.x, var_1.c, any(vec4<bool>(true, false, arg_0.e.a.c, true))), arg_0.e.a.c), !select(!vec4<bool>(var_1.a.x, false, true, arg_2.b.c), !vec4<bool>(var_1.a.x, false, arg_2.b.a.x, global1.x), vec4<bool>(arg_0.e.e.a.x, true, true, global1.x)), false), select(vec4<bool>(false, -58838i <= firstLeadingBit(arg_2.b.d), all(vec4<bool>(arg_2.b.c, arg_2.b.a.x, global0.x, false)), arg_0.b.x), !vec4<bool>(global1.x | false, u_input.a.x > var_1.d, true, any(vec2<bool>(true, false))), !(1000f != _wgslsmith_f_op_f32(-arg_0.a))), false);
    var var_2 = select(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~arg_0.d.zx, ~u_input.a.yz), -_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -60491i), arg_0.d.yy)) << (countOneBits(arg_0.c.xy) % vec2<u32>(32u)), u_input.a.wx, all(select(select(vec4<bool>(true, false, true, true), !vec4<bool>(global0.x, true, false, true), true), vec4<bool>(arg_0.e.c == -841f, var_1.c | global1.x, true, arg_0.e.a.d >= 34011i), all(arg_2.b.a))));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(max(-450f, _wgslsmith_f_op_f32(-arg_0.a))), -2144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(324f)), 1000f)), vec4<f32>(-744f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1237f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, arg_2.b.b.x) + var_1.b.x))), 251f));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_2(Struct_1(global0.zwz, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(~4294967295u, 3u)], ~vec3<u32>(13184u, 1u, 4294967295u), Struct_4(-234f, Struct_1(vec3<bool>(arg_1.x, false, true), vec4<f32>(1000f, 327f, 787f, -195f), true, arg_0.x)))))), true, 1i), 0i, _wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 1208u), vec4<u32>(14645u, 28208u, 156u, 1u))), vec4<u32>(~1u, 1u, ~85069u, 1u)), 3u)], select(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, reverseBits(4294967295u)), global1.x), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-523f)), 1f), Struct_1(global0.zyx, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(701f, -1130f, -1049f, -1000f), vec4<f32>(-325f, -528f, -887f, 1192f))), true, -u_input.a.x)))).x, arg_0.x, Struct_1(!vec3<bool>(true, any(vec4<bool>(true, global0.x, global1.x, global1.x)), global1.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_f_op_f32(round(589f)), _wgslsmith_div_f32(868f, -211f), _wgslsmith_f_op_f32(f32(-1f) * -904f)))), all(!vec4<bool>(arg_1.x, true, true, global0.x)), -2147483647i | arg_0.x));
    global2 = array<Struct_3, 3>();
    var var_1 = global2[_wgslsmith_index_u32(4294967295u >> (1u % 32u), 3u)];
    var var_2 = var_1.e.a;
    global2 = array<Struct_3, 3>();
    return !var_2.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec4<bool>) -> Struct_5 {
    global2 = array<Struct_3, 3>();
    var var_0 = ~_wgslsmith_sub_vec2_u32(arg_1.xy, vec2<u32>(~1u, arg_1.x));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1361f) >= _wgslsmith_f_op_f32(482f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-724f, 948f)))), true);
    var_0 = vec2<u32>(61996u, 1u);
    global2 = array<Struct_3, 3>();
    return Struct_5(76244u);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = func_4(vec4<u32>(~1u, ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(15054u, 0u, 4294967295u), vec3<u32>(0u, 723u, 31231u))), 4294967295u, ~1u), vec3<u32>(~1u << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 26378u, 4294967295u)), reverseBits(vec3<u32>(4294967295u, 0u, 1u))) % 32u), 1771u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 52973u, 4294967295u), vec3<u32>(4294967295u, 59835u, 58584u)) >> (74758u % 32u)), select(arg_1.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(19173i, arg_1.x) >> (vec2<u32>(47957u, 15939u) % vec2<u32>(32u)))), !(!global1.x)), !vec4<bool>(!all(vec2<bool>(true, true)), func_2(vec3<i32>(u_input.a.x, 1i, -29162i), vec2<bool>(global0.x, false)) || (arg_0 != arg_0), true, global1.x));
    global1 = select(!(!global0.xx), select(vec2<bool>(_wgslsmith_mod_i32(arg_1.x, 56120i) <= 11605i, firstTrailingBit(36355u) != var_0.a), select(vec2<bool>(true, true), vec2<bool>(true, true), select(global0.zy, select(global0.wz, vec2<bool>(global0.x, global1.x), global1.x), true)), global1.x), !select(global0.xw, !select(vec2<bool>(false, global0.x), global0.xz, global0.x), !vec2<bool>(true, global0.x)));
    global1 = vec2<bool>(!((_wgslsmith_dot_vec4_u32(vec4<u32>(6637u, 28669u, 2952u, var_0.a), vec4<u32>(4294967295u, var_0.a, var_0.a, var_0.a)) <= 0u) && false), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(global1.x, global0.x, global0.x, false))));
    let var_1 = Struct_1(vec3<bool>(true, all(vec4<bool>(global0.x, global0.x, global0.x, all(global0.zyw))), select(global1.x, (global1.x | global1.x) && false, !global1.x)), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(_wgslsmith_f_op_f32(floor(-577f)), !vec3<bool>(global1.x, global1.x, global0.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(17716u, 4294967295u, 29722u, 1418u), vec4<u32>(1u, 4294967295u, var_0.a, var_0.a)), vec4<i32>(-12795i, 0i, -1i, u_input.a.x) | vec4<i32>(-2147483647i, u_input.a.x, -1i, arg_1.x), Struct_2(Struct_1(vec3<bool>(global0.x, global1.x, false), vec4<f32>(arg_0, -219f, 780f, -1035f), global0.x, u_input.a.x), ~(-30612i), _wgslsmith_f_op_f32(-arg_0), u_input.a.x << (var_0.a % 32u), Struct_1(global0.wwy, vec4<f32>(arg_0, -1441f, arg_0, 653f), global1.x, -24335i))), vec3<u32>(~475u ^ ~var_0.a, ~var_0.a, _wgslsmith_clamp_u32(4294967295u, var_0.a, ~var_0.a)), Struct_4(1f, Struct_1(vec3<bool>(global0.x, true, global1.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -1031f, -460f, 1050f), vec4<f32>(335f, arg_0, arg_0, arg_0))), all(vec3<bool>(true, false, global1.x)), firstLeadingBit(2147483647i))))), true, -(~(-1i)) ^ min(u_input.a.x, -_wgslsmith_mult_i32(-2147483647i, u_input.a.x)));
    global2 = array<Struct_3, 3>();
    return Struct_1(!global0.wxw, _wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(~(~48548u), 3u)], _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a, var_0.a), vec3<u32>(var_0.a, 20866u, var_0.a)), ~0u, ~var_0.a), select(vec3<u32>(var_0.a, 9625u, var_0.a), vec3<u32>(127100u, var_0.a, var_0.a), false) ^ vec3<u32>(var_0.a, 59747u, var_0.a)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + -408f)), var_1))), false, _wgslsmith_sub_i32(-904i, u_input.a.x) ^ -41094i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(!(!select(true, u_input.a.x != 1i, true)), true);
    global1 = select(global0.yz, vec2<bool>(any(global0.zxz), global0.x && true), global0.zx);
    let var_0 = func_1(_wgslsmith_f_op_f32(-1f), countOneBits(vec3<i32>(-18015i, u_input.a.x << (13113u % 32u), u_input.a.x) ^ abs(~vec3<i32>(-1i, u_input.a.x, -70265i))));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 56394u), 1u)), 23461u), vec2<u32>(1u, 1u) >> (vec2<u32>(11429u, abs(_wgslsmith_clamp_u32(46395u, 0u, 4294967295u))) % vec2<u32>(32u)));
    let var_2 = !func_1(639f, _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.ywz), -vec3<i32>(-9870i, var_0.d, var_0.d) & _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.d, 5309i, -11289i), u_input.a.xxx, vec3<i32>(var_0.d, -60781i, -2147483647i)))).a.yx;
    global1 = vec2<bool>(var_2.x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(436f, var_0.d);
}

