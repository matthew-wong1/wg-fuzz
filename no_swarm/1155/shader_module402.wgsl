struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: Struct_4 = Struct_4(Struct_1(vec3<bool>(false, true, false), true), vec2<f32>(-1890f, -3034f), 1i);

var<private> global2: vec3<f32>;

var<private> global3: vec4<f32> = vec4<f32>(-1461f, 703f, 300f, -1092f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool) -> vec4<f32> {
    let var_0 = u_input.a.x;
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.b.x * 572f), _wgslsmith_f_op_f32(select(-225f, _wgslsmith_f_op_f32(f32(-1f) * -714f), global1.c >= _wgslsmith_dot_vec2_i32(vec2<i32>(-2283i, 11917i), u_input.a.xx))), -688f, _wgslsmith_f_op_f32(select(534f, 697f, 1f != _wgslsmith_f_op_f32(select(global2.x, -628f, global1.a.b))))) * vec4<f32>(global2.x, _wgslsmith_f_op_f32(1f * global3.x), global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-195f, -1353f) - global1.b.x)));
    var var_1 = Struct_2(global2.yy, Struct_1(vec3<bool>(true, arg_2, any(!global1.a.a)), !(!any(vec4<bool>(true, true, global1.a.b, arg_2)))), Struct_1(select(vec3<bool>(arg_1.x, arg_2, true), vec3<bool>(!arg_2, false, select(false, true, global1.a.a.x)), vec3<bool>(arg_1.x, true, arg_2 || global1.a.a.x)), !arg_1.x || arg_1.x), global1.a, Struct_1(select(!arg_1.xxy, arg_1.yzy, arg_1.www), select(all(arg_1.xxx), !global1.a.a.x & (global0[_wgslsmith_index_u32(arg_0.x, 32u)] <= 770f), any(!vec4<bool>(arg_1.x, arg_2, true, false)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.zx, vec2<f32>(global1.b.x, 2203f)) - global1.b))), var_1.b, Struct_1(select(vec3<bool>(true, true, true), !select(global1.a.a, vec3<bool>(false, false, global1.a.b), true), var_1.b.a.x), global1.a.b), global1.a, var_1.c);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1220f, var_1.a.x, global3.x, global2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(905f, 211f, -324f, -2355f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1051f, var_2.a.x, -108f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-318f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12844u, u_input.c.x), arg_0), 32u)], _wgslsmith_f_op_f32(global1.b.x - 1755f), global3.x))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(~select(4294967295u, arg_1.x ^ u_input.c.x, true) >> (8144u % 32u), min(arg_3.x, ~arg_3.x));
    var var_1 = !global1.a.a.zz;
    var var_2 = _wgslsmith_sub_u32(~max(arg_1.x, 4294967295u), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(reverseBits(77488u), 1u), var_0));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(42607u, 15735u), vec4<bool>(arg_2.e.a.x, false, global1.a.a.x, false), arg_2.c.b)))))));
    var var_4 = Struct_4(Struct_1(!vec3<bool>(var_1.x, any(vec4<bool>(false, true, true, true)), true), arg_2.c.b), _wgslsmith_f_op_vec2_f32(floor(arg_2.a)), arg_0);
    return Struct_1(global1.a.a, all(select(var_4.a.a.zz, var_4.a.a.yy, true)));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    global2 = _wgslsmith_div_vec3_f32(global3.zzw, global3.yzy);
    var var_0 = _wgslsmith_div_vec2_u32(max(_wgslsmith_add_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 0u), u_input.d.xw)), ~min(vec2<u32>(0u, u_input.d.x), u_input.d.wx)), abs(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 72236u, 4294967295u), vec4<u32>(41u, 39103u, 2727u, 71759u))))), ~vec2<u32>(63462u, _wgslsmith_dot_vec3_u32(u_input.d.xwx, vec3<u32>(u_input.b.x, 39284u, u_input.c.x))));
    let var_1 = _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) - global1.b.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global3.yzw), _wgslsmith_f_op_vec3_f32(exp2(global3.wyx)))));
    var var_3 = Struct_4(Struct_1(func_2(-(~(-43228i)), ~(u_input.b << (u_input.d % vec4<u32>(32u))), Struct_2(vec2<f32>(352f, -393f), arg_2.a, global1.a, Struct_1(vec3<bool>(false, true, global1.a.a.x), arg_0), func_2(arg_1.c, vec4<u32>(53872u, var_0.x, 4294967295u, u_input.b.x), Struct_2(arg_2.b, Struct_1(arg_1.a.a, false), Struct_1(arg_3.a, arg_0), Struct_1(vec3<bool>(false, false, true), arg_3.b), Struct_1(arg_3.a, global1.a.a.x)), u_input.b.xz)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(35808u, 4294967295u), vec2<u32>(26835u, 1u)), u_input.c.yx)).a, true), arg_1.b, _wgslsmith_div_i32(~(9349i << (u_input.c.x % 32u)) & arg_1.c, firstTrailingBit(_wgslsmith_sub_i32(-18845i | global1.c, -39138i))));
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = vec3<u32>(~_wgslsmith_add_u32(~11292u, ~arg_0), _wgslsmith_dot_vec3_u32(~u_input.c, ~(~u_input.d.yyw)), _wgslsmith_div_u32(~(~u_input.c.x), max(min(u_input.b.x, arg_0), 11756u))) >> (~u_input.b.yyy % vec3<u32>(32u));
    var var_1 = Struct_4(Struct_1(global1.a.a, true & func_4(global1.a.a.x, func_4(false, Struct_4(Struct_1(global1.a.a, false), vec2<f32>(-593f, arg_1.b.x), -1i), arg_1, arg_1.a), Struct_4(arg_1.a, vec2<f32>(global3.x, 362f), 32542i), arg_1.a).a.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.ww) + _wgslsmith_f_op_vec2_f32(-global3.ww))))), u_input.a.x);
    var_1 = func_4(arg_1.a.b, Struct_4(func_2(-1i, ~firstLeadingBit(u_input.d), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1412f) + arg_1.b), func_2(u_input.a.x, vec4<u32>(48207u, u_input.b.x, u_input.d.x, arg_0), Struct_2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global3.x), var_1.a, global1.a, global1.a, arg_1.a), vec2<u32>(u_input.b.x, arg_0)), arg_1.a, Struct_1(arg_1.a.a, arg_1.a.a.x), func_2(-16952i, u_input.b, Struct_2(global2.xx, var_1.a, arg_1.a, Struct_1(vec3<bool>(true, false, var_1.a.a.x), false), var_1.a), vec2<u32>(4294967295u, u_input.c.x))), ~reverseBits(vec2<u32>(u_input.b.x, 0u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2406f, -1510f)) * -2081f), 664f), ~(-2147483647i) | select(23603i, -arg_1.c, false)), arg_1, Struct_1(global1.a.a, var_1.a.a.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(reverseBits(0u), min(_wgslsmith_sub_u32(53405u, 1u), 7051u)), select(!(!vec4<bool>(false, true, var_1.a.b, global1.a.b)), vec4<bool>(true, global1.a.b, false, false), select(!vec4<bool>(false, false, arg_1.a.b, arg_1.a.a.x), !vec4<bool>(arg_1.a.b, true, false, var_1.a.a.x), func_4(global1.a.b, Struct_4(var_1.a, vec2<f32>(-1132f, global2.x), 2147483647i), arg_1, var_1.a).a.a.x)), global1.a.b)).x);
    let var_3 = arg_1;
    return func_2(i32(-1i) * -func_4(all(vec2<bool>(var_1.a.b, arg_1.a.b)), var_3, var_3, Struct_1(global1.a.a, global1.a.b)).c, ~u_input.b, Struct_2(_wgslsmith_f_op_vec2_f32(-global2.xy), Struct_1(arg_1.a.a, func_4(!arg_1.a.b, func_4(arg_1.a.b, var_3, arg_1, var_3.a), var_3, var_1.a).a.a.x), arg_1.a, func_4(true, arg_1, var_3, var_3.a).a, var_3.a), vec2<u32>(0u, ~select(~var_0.x, _wgslsmith_dot_vec3_u32(u_input.b.zyy, vec3<u32>(1u, var_0.x, 0u)), func_4(global1.a.b, Struct_4(Struct_1(vec3<bool>(true, global1.a.a.x, global1.a.a.x), var_3.a.a.x), vec2<f32>(706f, -1237f), u_input.a.x), Struct_4(Struct_1(var_3.a.a, var_3.a.a.x), vec2<f32>(global1.b.x, arg_1.b.x), 44088i), Struct_1(arg_1.a.a, arg_1.a.a.x)).a.b)));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global1.b, global2.xx), vec2<f32>(global3.x, global0[_wgslsmith_index_u32(29439u, 32u)]))))))), global1.a, func_5(0u, func_4(global1.a.a.x || (global1.a.b && false), Struct_4(func_2(2147483647i, vec4<u32>(30021u, u_input.c.x, u_input.b.x, 0u), Struct_2(vec2<f32>(global2.x, global1.b.x), global1.a, global1.a, global1.a, global1.a), u_input.c.zy), vec2<f32>(arg_0, global2.x), u_input.a.x), Struct_4(Struct_1(vec3<bool>(global1.a.a.x, true, false), false), vec2<f32>(177f, -1024f), 4670i), global1.a)), Struct_1(vec3<bool>(all(!vec3<bool>(global1.a.a.x, global1.a.b, global1.a.a.x)), global1.a.b != true, 42061u < abs(u_input.b.x)), !(!(true || global1.a.a.x))), global1.a);
    var var_1 = func_4(all(vec2<bool>(false, true)), Struct_4(func_5(~u_input.c.x, Struct_4(Struct_1(global1.a.a, var_0.b.b), global2.xz, 46079i)), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 32u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1616f)) * _wgslsmith_f_op_f32(-global2.x))), select(-27197i, global1.c, !func_5(u_input.c.x, Struct_4(global1.a, var_0.a, global1.c)).a.x)), Struct_4(global1.a, var_0.a, i32(-1i) * -(~(-1i))), func_2(~(u_input.a.x >> (25933u % 32u)) | -3069i, vec4<u32>(68967u, 7830u, ~1u, 3375u), var_0, ~(max(vec2<u32>(1u, 14116u), u_input.d.wz) | _wgslsmith_mult_vec2_u32(u_input.d.xw, u_input.d.wx)))).a;
    var var_2 = global0[_wgslsmith_index_u32(14030u, 32u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_1(select(!global1.a.a, global1.a.a, !vec3<bool>(global1.a.b, global1.a.b, false)), u_input.a.x >= (~u_input.a.x & 1i)), global1.b, select(-2147483647i, global1.c, func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-393f, 1103f)))))));
    var var_0 = 1344f;
    let var_1 = !(!global1.a.a);
    let var_2 = Struct_4(Struct_1(select(func_4(true, Struct_4(Struct_1(global1.a.a, var_1.x), global1.b, global1.c), func_4(true, Struct_4(global1.a, global1.b, 1i), Struct_4(Struct_1(vec3<bool>(false, var_1.x, true), var_1.x), global1.b, global1.c), Struct_1(global1.a.a, global1.a.b)), Struct_1(global1.a.a, var_1.x)).a.a, var_1, vec3<bool>(select(false, global1.a.a.x, false), var_1.x, false)), var_1.x), vec2<f32>(1119f, 523f), _wgslsmith_sub_i32(-global1.c, -35243i));
    global0 = array<f32, 32>();
    let var_3 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~u_input.c.x), 32u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) + var_2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, u_input.a.zww);
}

