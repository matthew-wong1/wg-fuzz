struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(1197f, -178f, -1866f), vec3<f32>(-1000f, -1116f, 486f), vec3<f32>(1346f, -284f, -569f), vec3<f32>(-382f, -822f, 1615f), vec3<f32>(-151f, -1448f, 999f), vec3<f32>(485f, 284f, 244f), vec3<f32>(1041f, 2048f, 689f), vec3<f32>(-905f, -688f, 751f), vec3<f32>(271f, -1000f, -1000f), vec3<f32>(255f, -1007f, 342f), vec3<f32>(-1026f, 153f, -700f));

var<private> global3: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(1883f, 385f, -1000f), vec3<f32>(318f, 291f, 1073f), vec3<f32>(1184f, -463f, 2472f), vec3<f32>(1004f, 1000f, 1906f), vec3<f32>(-1398f, -700f, 451f), vec3<f32>(1241f, 374f, 493f), vec3<f32>(-355f, -1000f, -102f), vec3<f32>(1640f, -1040f, -1214f), vec3<f32>(-1205f, -400f, -1170f), vec3<f32>(-179f, 1022f, 703f), vec3<f32>(-2637f, 1518f, -236f), vec3<f32>(-763f, 128f, 711f), vec3<f32>(1020f, -1032f, -683f), vec3<f32>(180f, 471f, -668f), vec3<f32>(-774f, -120f, -536f), vec3<f32>(1000f, 446f, -936f), vec3<f32>(752f, -1161f, -1964f), vec3<f32>(1040f, -1344f, 1000f), vec3<f32>(850f, 1000f, 732f), vec3<f32>(668f, 665f, 1754f), vec3<f32>(-577f, 687f, -1178f), vec3<f32>(-459f, 512f, -1979f), vec3<f32>(-1529f, -586f, 1025f), vec3<f32>(-707f, -1227f, 226f), vec3<f32>(1399f, 526f, 631f), vec3<f32>(1000f, -518f, -777f), vec3<f32>(1229f, -195f, -1483f), vec3<f32>(-116f, 701f, -191f), vec3<f32>(1226f, -704f, 1000f));

var<private> global4: vec2<f32> = vec2<f32>(1000f, -588f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = u_input.a.x;
    global1 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_add_u32(5487u, 1u) & _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(16752u, ~4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 63055u), u_input.a)));
    var_0 = 29859u;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1793f)))) + -1096f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1034f, var_2, -745f, 1000f))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_2.b, arg_2.b, true)))), arg_0.a.x, 286f) * arg_2.a));
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(-974f, 534f, 592f, global4.x), -940f, select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_div_u32(~u_input.a.x, 1u), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-657f, arg_0.x, arg_0.x, 1315f), vec4<f32>(205f, 1189f, arg_0.x, 118f)), -795f, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1212f, arg_0.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(1410f, 706f, -1000f, arg_0.x), vec4<f32>(571f, arg_0.x, global4.x, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(global4.x)))))), vec2<bool>(_wgslsmith_clamp_i32(1i << (u_input.a.x % 32u), min(0i, -16070i), 36692i) != ~20325i, _wgslsmith_sub_i32(firstTrailingBit(2147483647i), -8573i) < ~min(-2147483647i, -58128i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(554f, _wgslsmith_f_op_f32(step(599f, global4.x))))) - var_0.b);
    let var_2 = vec3<u32>(reverseBits(~u_input.a.x), 63970u, ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 3266u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), _wgslsmith_mod_u32(~2726u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(3422u, 11u)], 73973u))));
    var var_3 = var_2.x;
    let var_4 = _wgslsmith_f_op_f32(-var_0.a.x);
    return !(!vec2<bool>(var_0.c.x, all(select(vec4<bool>(true, var_0.c.x, var_0.c.x, false), vec4<bool>(false, true, var_0.c.x, false), var_0.c.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2967f + global4.x) + _wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, -1251f) + -1000f))), arg_2.a.x);
    global1 = array<Struct_1, 27>();
    global4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(807f, 1f), vec2<f32>(-126f, _wgslsmith_f_op_f32(-arg_1.b))));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1337f, arg_1.a.x) + vec2<f32>(_wgslsmith_f_op_f32(max(-290f, arg_2.a.x)), 1f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_2.a.yw))));
    let var_0 = _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, -1i, 54849i)), ~vec3<i32>(-11542i, 0i, -1i)) | reverseBits(~(-31758i))) & 20076i;
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(false, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, 358f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.x + global4.x), _wgslsmith_f_op_f32(global4.x - 965f))))), func_2(vec2<f32>(581f, -1000f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(543f)), -1000f, global4.x, _wgslsmith_f_op_f32(f32(-1f) * -324f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x - -415f), _wgslsmith_f_op_f32(sign(global4.x))), -1000f)), vec2<bool>(true, true)));
    global2 = array<vec3<f32>, 11>();
    return func_4(var_0.c.x, Struct_1(_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -1303f, 607f, var_0.a.x)))), global4.x, var_0.c), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-798f, global4.x, 713f, -1594f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.x)) - 320f), var_0.a.x)), vec2<bool>(true, true)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = ~abs(~select(~4294967295u, 4294967295u, arg_0.c.x & arg_0.c.x));
    let var_1 = func_4(!(!arg_2.x), func_4(func_1().c.x, Struct_1(vec4<f32>(1036f, -631f, arg_0.b, 1202f), _wgslsmith_f_op_f32(floor(arg_0.a.x)), vec2<bool>(false, arg_2.x & arg_0.c.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), global4.x, _wgslsmith_div_f32(1711f, global4.x), _wgslsmith_f_op_f32(max(159f, 1313f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-941f, -1314f), -1000f, func_1().c.x)), !arg_0.c)), arg_0);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(907f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), -601f), var_1.b))));
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-357f, -1036f)), _wgslsmith_f_op_f32(f32(-1f) * -1302f)), 755f, _wgslsmith_div_f32(arg_0.b, global4.x), 820f)), global4.x, vec2<bool>(true, arg_2.x));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<u32> {
    global3 = array<vec3<f32>, 29>();
    var var_0 = func_4(any(!(!(!vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, true)))), Struct_1(func_5(func_5(func_4(false, Struct_1(vec4<f32>(arg_1.a.x, arg_1.a.x, -1287f, arg_1.a.x), 1141f, vec2<bool>(arg_1.c.x, arg_1.c.x)), Struct_1(arg_1.a, -1484f, arg_1.c)), 5301i, select(vec4<bool>(arg_1.c.x, false, true, true), vec4<bool>(arg_1.c.x, true, true, arg_1.c.x), arg_0.x)), 1i, select(vec4<bool>(true, arg_0.x, false, arg_0.x), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_0.x)).a, _wgslsmith_f_op_f32(arg_1.a.x * global4.x), func_1().c), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(func_1().a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.a.x, 987f, 438f) + arg_1.a)), arg_1.b, arg_0.yx));
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_0.a, -638f, arg_0.xx), 30476u, global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27207u, 11u)], 11u)]), 27u)])).xy, vec2<f32>(_wgslsmith_f_op_f32(step(func_5(Struct_1(var_0.a, -690f, var_0.c), -56529i, !vec4<bool>(arg_0.x, false, arg_0.x, false)).a.x, 236f)), _wgslsmith_f_op_f32(-193f * _wgslsmith_f_op_f32(func_4(true, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]).a.x * 1f))));
    global2 = array<vec3<f32>, 11>();
    global2 = array<vec3<f32>, 11>();
    return reverseBits(abs(vec4<u32>(53023u, 45108u, 3766u, _wgslsmith_add_u32(max(37761u, u_input.a.x), ~global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_sub_vec4_u32(~vec4<u32>(~global0[_wgslsmith_index_u32(20999u, 11u)], min(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), _wgslsmith_sub_u32(1u, u_input.a.x), max(u_input.a.x, u_input.a.x)), func_6(vec3<bool>(true, true, true), func_5(func_1(), -2147483647i, vec4<bool>(true, false, true, true)))), vec4<u32>(14654u, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), 34342u | _wgslsmith_sub_u32(5436u & u_input.a.x, global0[_wgslsmith_index_u32(~u_input.a.x, 11u)]), select(firstLeadingBit(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), u_input.a.x, true)), ~29847i == (-_wgslsmith_dot_vec4_i32(vec4<i32>(8816i, 1i, 45666i, -45i), vec4<i32>(-57836i, -14327i, -18641i, 46483i)) ^ firstLeadingBit(~(-1177i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1350i, 2147483647i, 10773i, -18657i), vec4<i32>(13419i, 2147483647i, -15162i, 43384i)) << (vec4<u32>(var_0.x, 0u, u_input.a.x, var_0.x) % vec4<u32>(32u))) >> (~var_0 % vec4<u32>(32u)), vec4<i32>(countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 46600i, 28728i, -776i), vec4<i32>(-1i, 1i, -1i, -12845i))), -1i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-6784i, -1i, 14230i) << (_wgslsmith_dot_vec2_u32(var_0.zw, u_input.a) % 32u), 15703i), _wgslsmith_clamp_i32(-firstTrailingBit(16457i), select(0i, -23603i, true), -1810i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(f32(-1f) * -729f))), ~0i);
}

