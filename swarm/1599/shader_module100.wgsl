struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, true));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: bool) -> Struct_1 {
    return Struct_1(!global1.a);
}

fn func_3(arg_0: i32) -> u32 {
    global0 = ~countOneBits(4294967295u);
    let var_0 = Struct_3(Struct_2(_wgslsmith_clamp_u32(firstTrailingBit(firstLeadingBit(u_input.d.x)), firstTrailingBit(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 4294967295u)), ~reverseBits(100593u))));
    global0 = _wgslsmith_sub_u32(select(53175u, ~var_0.a.a, any(global1.a.xx)), 0u) ^ _wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.d.yw);
    let var_1 = _wgslsmith_dot_vec2_u32(~abs(_wgslsmith_mod_vec2_u32(u_input.d.ww, vec2<u32>(41382u, var_0.a.a)) & vec2<u32>(17285u, 11017u)), ~u_input.d.wz);
    let var_2 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(select(4419i, arg_0, false), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 39835i), vec2<i32>(1i, -13652i)), _wgslsmith_mod_i32(arg_0, 17234i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 15463i), vec2<i32>(-4233i, -51275i))), ~(vec4<i32>(1i, -47245i, -2147483647i, -2147483647i) << (vec4<u32>(1u, var_1, var_0.a.a, 27148u) % vec4<u32>(32u)))) << (select(u_input.d, u_input.d, false) % vec4<u32>(32u)));
    return var_1 | 63322u;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    let var_0 = select(false, true, all(global1.a.zxz));
    global1 = func_2(~vec3<i32>(_wgslsmith_mult_i32(-u_input.a.x, ~2147483647i), -28260i, ~u_input.a.x), var_0, true);
    let var_1 = ~(~vec4<u32>(arg_1.a.a, u_input.d.x, min(arg_1.a.a, abs(4294967295u)), countOneBits(func_3(-28722i))));
    var var_2 = arg_0;
    let var_3 = -10750i >= (~6952i & (arg_2 << (~(~0u) % 32u)));
    return Struct_2(min(u_input.d.x, _wgslsmith_mult_u32(~(arg_1.a.a | 0u), var_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> vec4<bool> {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1274f), -1591f, global1.a.x)))) - -2340f));
    var var_2 = func_2(vec3<i32>(~min(_wgslsmith_add_i32(u_input.b, u_input.c.x), arg_3), -60872i, ~arg_3 >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, var_0.x), vec2<u32>(u_input.d.x, var_0.x)), _wgslsmith_mod_u32(17186u, arg_1.x)) % 32u)), global1.a.x, arg_2).a.x;
    let var_3 = countOneBits((arg_1.x << (4294967295u % 32u)) ^ ~_wgslsmith_mod_u32(~63179u, 76119u | arg_1.x));
    let var_4 = u_input.c.x;
    return vec4<bool>(select(any(!(!global1.a.xx)), func_2(firstLeadingBit(u_input.a), global1.a.x, all(global1.a)).a.x | all(vec2<bool>(global1.a.x, false)), arg_2 != !arg_2), !(_wgslsmith_f_op_f32(-2136f * _wgslsmith_f_op_f32(trunc(-968f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f), -264f)), arg_2, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(global1.a, global1.a, !(!(!vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x)))));
    let var_0 = u_input.d.x;
    global1 = Struct_1(global1.a);
    global0 = firstTrailingBit(firstTrailingBit(var_0));
    var var_1 = abs(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, ~u_input.d.x, max(var_0, 1710u)), max(~101241u, ~var_0))));
    let var_2 = !vec2<bool>(false & all(vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x)), all(func_4(func_1(2004f, Struct_3(Struct_2(20142u)), u_input.b), ~u_input.d.wwx, true, u_input.b)));
    var_1 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(21426u, u_input.d.x, abs(1u) >> (1u % 32u), _wgslsmith_sub_u32(var_0, 5518u)), u_input.d), countOneBits(43897u));
    global0 = ~abs(~u_input.d.x) << ((~(11658u ^ ~u_input.d.x) >> (13176u % 32u)) % 32u);
    global1 = Struct_1(vec4<bool>(true, !global1.a.x, any(vec3<bool>(select(var_2.x, global1.a.x, true), true, var_2.x)), any(select(vec2<bool>(false, false), vec2<bool>(var_2.x, false), var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 247f), _wgslsmith_f_op_f32(abs(1054f)), _wgslsmith_f_op_f32(min(-1249f, -867f)), _wgslsmith_div_f32(-1282f, -948f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(640f, -451f, 1785f, -798f), vec4<f32>(1051f, -1374f, 180f, 1051f), true)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1198f, 1070f, 2107f, -127f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1485f, -1000f, 909f, 1647f) - vec4<f32>(2720f, 629f, 1230f, -2472f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, -1179f, -1388f, -741f))))), countOneBits(firstTrailingBit(~u_input.d.x & var_0)));
}

