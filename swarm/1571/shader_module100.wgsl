struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<bool>(false, false, true), vec2<f32>(1379f, -602f), vec3<u32>(116978u, 4294967295u, 89442u), 9872i, Struct_1(112873i)), Struct_2(vec3<bool>(true, true, false), vec2<f32>(1147f, 514f), vec3<u32>(13663u, 1u, 1u), -13339i, Struct_1(32269i)), Struct_2(vec3<bool>(false, false, false), vec2<f32>(117f, -608f), vec3<u32>(1u, 58243u, 4294967295u), 1i, Struct_1(1i)));

var<private> global2: array<vec3<u32>, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<i32> {
    let var_0 = 200f;
    global2 = array<vec3<u32>, 16>();
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(554f - 1389f) * -1000f), _wgslsmith_f_op_f32(var_0 + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(320f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-global0.x), false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(868f, var_0, var_0, var_0), vec4<f32>(global0.x, -307f, -849f, -1075f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1248f, 1189f, global0.x) - vec4<f32>(1574f, 1388f, var_0, global0.x))))))));
    global1 = array<Struct_2, 3>();
    return max(u_input.b, vec2<i32>(u_input.c.x, u_input.d));
}

fn func_2(arg_0: Struct_2) -> i32 {
    global2 = array<vec3<u32>, 16>();
    var var_0 = _wgslsmith_div_vec2_i32(func_3(arg_0.a.yy), vec2<i32>(-1i) * -vec2<i32>(u_input.d & u_input.b.x, -arg_0.e.a));
    var_0 = u_input.b;
    var var_1 = select((any(!arg_0.a.xx) | !(!arg_0.a.x)) & arg_0.a.x, !arg_0.a.x, true);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(853f, -1097f, -312f, 1212f), vec4<f32>(1922f, -1000f, -937f, arg_0.b.x))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(193f, _wgslsmith_f_op_f32(arg_0.b.x - -111f), -284f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 2358f, global0.x, 1057f))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-324f, arg_0.b.x)) * _wgslsmith_f_op_f32(-global0.x)), 1241f, arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1099f, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, 1705f, -1060f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1708f, global0.x, global0.x, global0.x) - vec4<f32>(-548f, -1789f, 319f, -353f)))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-522f - 1707f), _wgslsmith_f_op_f32(219f - arg_0.b.x), _wgslsmith_f_op_f32(min(-1000f, arg_0.b.x))))))));
    return -(~abs(~firstTrailingBit(-2147483647i)));
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(~arg_1, arg_1);
    var var_1 = firstTrailingBit(~abs(30184u));
    let var_2 = u_input.a.x;
    let var_3 = any(select(vec3<bool>(!(var_2 <= u_input.a.x), true, true), vec3<bool>(true, true, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c.x, arg_1), vec4<i32>(arg_1, u_input.d, arg_1, -1i)) != ~arg_1), any(vec2<bool>(true, true))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), 1f));
    return Struct_1(-48962i);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 3u)];
    var var_1 = u_input.a.zy ^ firstTrailingBit(~min(firstTrailingBit(u_input.a.xy), ~arg_0.c.xx));
    global1 = array<Struct_2, 3>();
    return _wgslsmith_f_op_f32(var_0.b.x + -502f);
}

fn func_1(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = max(-23211i, u_input.c.x);
    let var_1 = 560f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(select(select(arg_0.yzy, arg_0.zzw, vec3<bool>(true, true, true)), select(arg_0.zwz, arg_0.wyy, arg_0.x), vec3<bool>(arg_0.x, false, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.zz))), vec3<u32>(71599u, _wgslsmith_clamp_u32(66539u, u_input.a.x, u_input.a.x), u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0, u_input.b.x, 46086i), ~vec3<i32>(49084i, var_0, var_0)), func_4(-558f, func_2(Struct_2(vec3<bool>(arg_0.x, true, arg_0.x), vec2<f32>(273f, 1000f), u_input.a, -25471i, Struct_1(1i))))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~16901u, u_input.a.x), 3u)], -5265i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(sign(var_1))), 1585f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_3 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-719f)))), firstLeadingBit(-_wgslsmith_mult_i32(-79039i, -10155i)));
    var var_4 = !any(!select(!vec3<bool>(arg_0.x, false, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.xyw, vec3<bool>(false, arg_0.x, false)), select(arg_0.zxw, arg_0.xxx, vec3<bool>(arg_0.x, arg_0.x, true))));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(_wgslsmith_add_u32(max(u_input.a.x, 40870u), ~u_input.a.x)), u_input.a.x, u_input.a.x, 0u), ~(countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)) | ~vec4<u32>(u_input.a.x, 98701u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x | ~4294967295u, u_input.a.x, 4294967295u, select(~4294967295u, reverseBits(_wgslsmith_sub_u32(12110u, 1u)), select(arg_0.x, arg_0.x, arg_0.x | false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-464f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(880f - 1249f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1041f), 853f);
    var var_1 = u_input.a;
    var_1 = min(vec3<u32>(~(~4294967295u), ~var_1.x, _wgslsmith_div_u32(countOneBits(var_1.x), u_input.a.x)), u_input.a);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, 0u, _wgslsmith_div_u32(81589u, var_1.x), ~var_1.x), (func_1(vec4<bool>(false, true, false, false)) & _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 1u, var_1.x), vec4<u32>(8281u, u_input.a.x, 1175u, 35616u))) >> (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 5619u)), ~vec4<u32>(var_1.x, u_input.a.x, u_input.a.x, 96920u)) % vec4<u32>(32u))), countOneBits(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, var_1.x, 2426u, u_input.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 0u, 11953u), vec4<u32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x))))), 3u)];
    global2 = array<vec3<u32>, 16>();
    var var_3 = Struct_2(select(vec3<bool>((true & var_2.a.x) || var_2.a.x, any(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x)) | false, true), !var_2.a, var_2.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_2.a.x && false))), vec3<u32>(4294967295u, var_1.x, ~(_wgslsmith_div_u32(43861u, var_1.x) & ~u_input.a.x)), -max(_wgslsmith_mod_i32(~u_input.b.x, u_input.c.x | -1i), func_3(vec2<bool>(false, var_2.a.x)).x), func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), var_2.e.a));
    let var_4 = firstTrailingBit(vec4<u32>(35494u, 61442u, _wgslsmith_sub_u32(~0u, var_1.x) & (_wgslsmith_add_u32(1u, 85798u) << (var_3.c.x % 32u)), u_input.a.x | ~(~4294967295u)));
    var_1 = u_input.a;
    var_1 = select(_wgslsmith_div_vec3_u32(reverseBits(countOneBits(var_2.c)) ^ func_1(select(vec4<bool>(var_2.a.x, var_2.a.x, false, var_3.a.x), vec4<bool>(true, var_2.a.x, var_3.a.x, var_3.a.x), true)).www, _wgslsmith_mod_vec3_u32(vec3<u32>(86803u, ~107185u, 0u), vec3<u32>(~var_3.c.x, ~1u, abs(var_2.c.x)))), var_3.c, false);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(reverseBits(min(0u, var_2.c.x)), reverseBits(~u_input.a.x)));
}

