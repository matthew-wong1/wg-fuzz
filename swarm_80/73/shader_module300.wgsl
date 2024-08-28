struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    var var_0 = !(((arg_0.x <= reverseBits(arg_2.x)) | true) && false);
    var var_1 = Struct_3(Struct_2(vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a.b.d, 15u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), any(vec2<bool>(false, arg_1.d))), Struct_1(select(!global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true, true), vec3<i32>(firstLeadingBit(arg_1.a.b.c.x), arg_1.a.b.c.x, 0i), arg_2, firstLeadingBit(arg_1.b))), _wgslsmith_mod_u32(~((u_input.a.x | arg_1.b) >> (~u_input.a.x % 32u)), countOneBits(u_input.a.x >> ((u_input.a.x ^ 97710u) % 32u))), -34812i, any(vec4<bool>(1261f < _wgslsmith_f_op_f32(floor(-2095f)), !(!arg_1.d), true, !all(vec4<bool>(false, false, false, false)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-213f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2758f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(168f * 928f), _wgslsmith_f_op_f32(f32(-1f) * -1110f)))))), 463f);
    return false;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global0 = array<bool, 15>();
    var var_0 = vec2<u32>(reverseBits(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.b.d, u_input.a.x, 1u, 117419u), vec4<u32>(u_input.a.x, 30004u, u_input.a.x, arg_0.b)), ~vec4<u32>(u_input.a.x, 0u, arg_0.b, arg_0.b))), 27491u);
    var_0 = _wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.a))));
    let var_1 = Struct_1(all(select(vec4<bool>(func_3(arg_0.a.b.b, arg_0, vec4<i32>(arg_0.c, 1i, 43222i, 2147483647i)), arg_0.a.a.x, global0[_wgslsmith_index_u32(1u, 15u)], true), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)], arg_0.d), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], false, arg_0.d, arg_0.d), vec4<bool>(false, false, false, arg_0.a.b.a)), !vec4<bool>(false, arg_0.a.b.a, false, true), select(vec4<bool>(false, arg_0.d, true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 15u)], false, false, arg_0.a.b.a), false)), vec4<bool>(func_3(arg_0.a.b.c.zwy, Struct_3(arg_0.a, u_input.a.x, 0i, true), vec4<i32>(arg_0.a.b.b.x, -19687i, arg_0.c, arg_0.a.b.b.x)), arg_0.a.b.d >= 4294967295u, func_3(arg_0.a.b.c.xxw, Struct_3(arg_0.a, 64062u, arg_0.c, false), arg_0.a.b.c), false))), arg_0.a.b.c.zyx, vec4<i32>(906i, ~firstLeadingBit(arg_0.c), 2147483647i, min(arg_0.c, ~6420i)), 1u);
    global0 = array<bool, 15>();
    return Struct_3(Struct_2(arg_0.a.a, Struct_1(false, ~arg_0.a.b.b | ~vec3<i32>(arg_0.c, 0i, -1i), abs(vec4<i32>(arg_0.a.b.c.x, arg_0.c, 25143i, arg_0.c)), ~_wgslsmith_sub_u32(var_1.d, 0u))), u_input.a.x, arg_0.c, !(!all(select(vec3<bool>(arg_0.d, arg_0.d, arg_0.a.b.a), vec3<bool>(var_1.a, false, false), true))));
}

fn func_4(arg_0: Struct_3) -> u32 {
    return u_input.a.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = vec4<u32>(firstTrailingBit(~(u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_clamp_u32(u_input.a.x, ~(u_input.a.x << (u_input.a.x % 32u)), func_4(func_2(Struct_3(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(95930u, 15u)], false), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<i32>(29878i, 0i, arg_2.x), vec4<i32>(2147483647i, -1i, 2147483647i, arg_1), u_input.a.x)), u_input.a.x, 15186i, true)))), u_input.a.x, ~min(abs(2500u), u_input.a.x)) | vec4<u32>(u_input.a.x, u_input.a.x, 1u, ~min(~u_input.a.x, u_input.a.x));
    global0 = array<bool, 15>();
    let var_2 = func_2(func_2(Struct_3(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 15u)], global0[_wgslsmith_index_u32(78578u, 15u)]), func_2(Struct_3(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<i32>(arg_3.x, arg_3.x, -11641i), vec4<i32>(5579i, -10609i, arg_1, arg_1), 51915u)), 4294967295u, 0i, global0[_wgslsmith_index_u32(28415u, 15u)])).a.b), ~47589u, -reverseBits(1i), true))).a.b;
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 15u)] | global0[_wgslsmith_index_u32(func_4(Struct_3(func_2(Struct_3(Struct_2(vec2<bool>(true, var_2.a), var_2), 1u, -5470i, false)).a, _wgslsmith_div_u32(39776u | var_1.x, min(1u, u_input.a.x)), -max(var_2.c.x, arg_1), global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), 15u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-691f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 1662f, 1961f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 935f, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1790f, -1692f, -143f), vec3<f32>(-393f, -1058f, -1299f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-465f, arg_0, var_0), vec3<f32>(-764f, var_0, var_0)))))));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = array<bool, 15>();
    var var_0 = func_2(func_2(func_2(func_2(func_2(Struct_3(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(4786u, 15u)], true), Struct_1(global0[_wgslsmith_index_u32(38746u, 15u)], vec3<i32>(arg_0, arg_0, arg_0), vec4<i32>(-2147483647i, 2147483647i, arg_0, 0i), 6482u)), arg_2.x, arg_0, true))))));
    var var_1 = Struct_3(Struct_2(vec2<bool>(false, var_0.a.a.x && global0[_wgslsmith_index_u32(1u, 15u)]), Struct_1(~2147483647i <= _wgslsmith_dot_vec3_i32(var_0.a.b.c.xww, vec3<i32>(17221i, -1i, var_0.a.b.b.x)), var_0.a.b.c.zzy, select(countOneBits(vec4<i32>(-2147483647i, var_0.c, arg_0, arg_0)), vec4<i32>(46038i, arg_0, 0i, arg_0), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 15u)]), ~_wgslsmith_mult_u32(arg_2.x, arg_2.x))), 31699u, ~var_0.c, var_0.d);
    var_1 = func_2(func_2(Struct_3(Struct_2(select(var_0.a.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], var_1.d), var_1.a.a), func_2(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<i32>(arg_0, -11110i, -5202i), var_1.a.b.c, u_input.a.x)), var_1.b, var_0.c, true)).a.b), reverseBits(25579u), var_0.a.b.b.x << (abs(var_0.b) % 32u), !(arg_1.x < -963f))));
    var_1 = Struct_3(func_2(Struct_3(func_2(Struct_3(var_1.a, var_1.a.b.d, var_1.c, false)).a, 20787u, arg_0 >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, var_1.b, 1u)) % 32u), var_1.d)).a, arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, firstTrailingBit(arg_0) >> (~var_1.b % 32u)), -vec2<i32>(arg_0, arg_0)), all(func_2(Struct_3(Struct_2(var_1.a.a, Struct_1(var_0.a.b.a, var_1.a.b.c.zyy, vec4<i32>(arg_0, arg_0, 1i, arg_0), 4294967295u)), ~u_input.a.x, var_1.a.b.c.x, true)).a.a));
    return func_2(func_2(Struct_3(var_0.a, _wgslsmith_add_u32(~4294967295u, arg_2.x), _wgslsmith_dot_vec2_i32(var_0.a.b.b.yz, _wgslsmith_clamp_vec2_i32(vec2<i32>(-9204i, var_0.c), var_0.a.b.c.zx, var_0.a.b.b.zz)), all(select(var_1.a.a, var_0.a.a, var_0.a.a))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, min(abs(vec3<i32>(19634i, -1i, 1i)), -max(select(vec3<i32>(-2147483647i, -52967i, 7745i), vec3<i32>(1i, -13385i, 2147483647i), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], true)), vec3<i32>(0i, -30206i, -23994i))), vec4<i32>(_wgslsmith_add_i32(~firstTrailingBit(9523i), -2147483647i), 1i, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, ~(-2147483647i)), 22766i & _wgslsmith_clamp_i32(-1i, 4289i, 0i)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(45862i, 1i, -35014i), vec3<i32>(-35549i, -114343i, 1i)), firstLeadingBit(-2147483647i))), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 37255u, 29607u), _wgslsmith_sub_vec3_u32(u_input.a, u_input.a))));
    var var_1 = func_5(1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-326f, -764f, -1269f)), vec3<f32>(-796f, 1171f, 1004f), true & var_0.a)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(782f, var_0.c.x, vec4<i32>(var_0.c.x, var_0.b.x, 0i, var_0.c.x), var_0.b)), vec3<f32>(865f, 646f, -200f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1346f, 591f, 1000f)), vec3<f32>(-2426f, -1634f, -175f), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0.d, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false, false), vec3<bool>(var_0.a, var_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))))))), vec2<u32>(~u_input.a.x, reverseBits(5284u)));
    var var_2 = var_1.b;
    var_2 = Struct_1(true, _wgslsmith_div_vec3_i32(-vec3<i32>(~22492i, 55140i, abs(1i)), reverseBits(_wgslsmith_clamp_vec3_i32(var_0.b, _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(-2147483647i, var_2.b.x, 12609i)), var_0.c.wwz))), vec4<i32>(-2147483647i, select(1i, var_1.b.c.x, var_1.b.a), _wgslsmith_mult_i32(-48263i, var_1.b.b.x), 431i) & var_2.c, _wgslsmith_mod_u32(74587u, var_1.b.d << (u_input.a.x % 32u)));
    var_1 = func_2(func_2(func_2(Struct_3(Struct_2(var_1.a, Struct_1(global0[_wgslsmith_index_u32(1u, 15u)], vec3<i32>(-1i, 1i, var_2.b.x), var_1.b.c, 1841u)), ~u_input.a.x, var_1.b.c.x, var_1.a.x)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
}

