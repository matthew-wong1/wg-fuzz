struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1043u, vec2<bool>(true, false), vec4<bool>(true, true, false, true)), Struct_1(46410u, vec2<bool>(false, false), vec4<bool>(true, true, false, false)), Struct_1(4294967295u, vec2<bool>(false, true), vec4<bool>(false, false, false, false)), Struct_1(0u, vec2<bool>(true, true), vec4<bool>(false, false, false, true)), Struct_1(43898u, vec2<bool>(true, false), vec4<bool>(false, true, true, true)), Struct_1(39708u, vec2<bool>(false, false), vec4<bool>(true, true, true, true)), Struct_1(4294967295u, vec2<bool>(true, true), vec4<bool>(true, false, true, true)), Struct_1(4294967295u, vec2<bool>(false, true), vec4<bool>(true, false, true, true)), Struct_1(43260u, vec2<bool>(true, true), vec4<bool>(false, false, true, false)), Struct_1(11194u, vec2<bool>(true, false), vec4<bool>(true, true, true, false)), Struct_1(94831u, vec2<bool>(true, true), vec4<bool>(true, false, false, false)), Struct_1(32201u, vec2<bool>(false, true), vec4<bool>(true, false, false, false)), Struct_1(34174u, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), Struct_1(44057u, vec2<bool>(true, false), vec4<bool>(false, false, false, true)), Struct_1(8315u, vec2<bool>(false, false), vec4<bool>(true, true, true, false)), Struct_1(4294967295u, vec2<bool>(false, true), vec4<bool>(false, true, true, false)), Struct_1(4294967295u, vec2<bool>(false, true), vec4<bool>(false, false, true, false)), Struct_1(1927u, vec2<bool>(false, false), vec4<bool>(false, false, false, true)), Struct_1(0u, vec2<bool>(true, true), vec4<bool>(true, false, false, true)), Struct_1(60087u, vec2<bool>(false, true), vec4<bool>(true, false, true, true)), Struct_1(1u, vec2<bool>(false, false), vec4<bool>(false, true, true, false)), Struct_1(18526u, vec2<bool>(true, false), vec4<bool>(false, false, false, true)), Struct_1(68545u, vec2<bool>(false, false), vec4<bool>(true, false, false, true)), Struct_1(4294967295u, vec2<bool>(true, false), vec4<bool>(false, false, false, true)), Struct_1(53349u, vec2<bool>(true, false), vec4<bool>(true, false, false, true)), Struct_1(4294967295u, vec2<bool>(true, true), vec4<bool>(true, true, true, false)), Struct_1(41877u, vec2<bool>(true, true), vec4<bool>(false, true, true, false)), Struct_1(48141u, vec2<bool>(false, true), vec4<bool>(false, true, false, true)), Struct_1(4294967295u, vec2<bool>(true, true), vec4<bool>(true, true, false, true)), Struct_1(4294967295u, vec2<bool>(false, true), vec4<bool>(true, true, true, false)), Struct_1(1u, vec2<bool>(false, true), vec4<bool>(false, true, true, false)));

var<private> global2: Struct_4 = Struct_4(Struct_3(vec4<f32>(-368f, -1890f, -781f, 1228f), true));

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = Struct_4(global2.a);
    let var_0 = Struct_2(global3.a);
    global1 = array<Struct_1, 31>();
    let var_1 = global2.a.a.x;
    global1 = array<Struct_1, 31>();
    return -1000f;
}

fn func_2() -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1190f), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), _wgslsmith_f_op_f32(f32(-1f) * -1331f));
    let var_1 = global2.a;
    var var_2 = Struct_2(global3.a);
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(2336i, 0i), vec2<i32>(2147483647i, -14881i)))) >> (~vec2<u32>(_wgslsmith_mod_u32(global3.a.a, global3.a.a), ~global0[_wgslsmith_index_u32(var_2.a.a, 27u)]) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_add_i32(-785i, abs(14739i));
    return !global2.a.b;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_1, 31>();
    global3 = Struct_2(Struct_1(firstTrailingBit(17893u), vec2<bool>(abs(global0[_wgslsmith_index_u32(4294967295u, 27u)]) < ~6573u, false), select(vec4<bool>(arg_0, all(vec2<bool>(global2.a.b, true)), all(global3.a.c.wy), true), global3.a.c, all(global3.a.c.wyy))));
    var var_0 = _wgslsmith_f_op_f32(-global2.a.a.x);
    let var_1 = abs(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 1u, 1u, 85980u), abs(vec4<u32>(4294967295u, 0u, global3.a.a, 59219u)), select(vec4<bool>(global3.a.b.x, global3.a.b.x, global3.a.c.x, true), global3.a.c, global3.a.c.x)), _wgslsmith_add_vec4_u32(select(vec4<u32>(global0[_wgslsmith_index_u32(36291u, 27u)], 67036u, global3.a.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)]), vec4<u32>(global0[_wgslsmith_index_u32(2275u, 27u)], global3.a.a, 55788u, 4294967295u), vec4<bool>(true, true, true, true)), vec4<u32>(1u, 1u, 33287u, 72447u)))) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(select(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6493u, 27u)], 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), ~1u, false), 1u), ~(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(0u, 27u)], 1u, global2.a.b), 27u)] & reverseBits(69752u))) % 32u);
    global0 = array<u32, 27>();
    return global3.a;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = global3.a.c.x;
    let var_1 = func_4(global2.a.b, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) + global2.a.a.x) - global2.a.a.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-303f - _wgslsmith_f_op_f32(global2.a.a.x - -992f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)), global2.a.b || func_2()))), _wgslsmith_f_op_f32(-global2.a.a.x));
    let var_2 = Struct_1(36192u, select(var_1.c.ww, vec2<bool>(any(vec3<bool>(false, true, false)), !any(vec3<bool>(true, true, global2.a.b))), any(vec4<bool>(!global2.a.b, false, global3.a.b.x, true))), select(var_1.c, vec4<bool>(global3.a.b.x, false, 1u == global3.a.a, true == global3.a.b.x), true));
    return global2.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_0.a)))));
    var var_1 = global2.a;
    let var_2 = global3.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110f * _wgslsmith_f_op_f32(func_3(func_4(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.a.x, var_1.a.x) + arg_0.a.xx), 360f, _wgslsmith_f_op_f32(-1382f * 783f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1709f, -1000f))), arg_0.a.x))));
    var var_4 = 1886f;
    return any(vec4<bool>(any(!vec3<bool>(global3.a.b.x, false, true)), select(global2.a.b, var_1.b, true) && any(vec3<bool>(var_2.b.x, global2.a.b, false)), false, true)) || var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!select(!all(vec2<bool>(true, global2.a.b)), func_5(func_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a.a, 27u)], 27u)], global2.a.a.xz, vec3<bool>(true, true, false)), ~vec3<u32>(global3.a.a, u_input.a.x, 33212u), abs(vec4<i32>(0i, 1i, 26139i, -22486i))), any(!global3.a.b)), true, global2.a.b);
    global2 = Struct_4(Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1566f, global2.a.a.x, -284f, -700f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1170f, 162f, 1581f, global2.a.a.x) - vec4<f32>(global2.a.a.x, -155f, 1000f, 1246f)), global2.a.a)), global2.a.b));
    var var_1 = _wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(-1i, 8262i), 2147483647i, 55154i), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -10687i, -1i, 2147483647i), vec4<i32>(2147483647i, -1i, -2147483647i, -54062i))))), ~_wgslsmith_sub_i32(8644i, 2147483647i));
    var var_2 = -vec3<i32>(max(~53589i, -(i32(-1i) * -15666i)), 1i, _wgslsmith_div_i32(0i, ~(~40839i)));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.a, _wgslsmith_mult_vec2_u32(vec2<u32>(31093u, 0u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 10431u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(global2.a.a.x, global2.a.a.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global2.a.a.x) * -519f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -127f))))), global2.a.a, _wgslsmith_sub_vec3_i32(-(-vec3<i32>(-1i, var_2.x, var_2.x) >> (~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) % vec3<u32>(32u))), ~vec3<i32>(-4429i, 36197i, select(10591i, var_2.x, global2.a.b))), ~var_2.x);
}

