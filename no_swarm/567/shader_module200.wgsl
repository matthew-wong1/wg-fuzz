struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, true, true, true, true, true, false, true, true, true, true, true, false, true, false, false, false, false, true, false, false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_mod_u32(~firstLeadingBit(21569u), arg_0.a.x), arg_0.a.x);
    global0 = array<bool, 22>();
    var var_1 = Struct_1(select(_wgslsmith_clamp_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 0u, arg_0.a.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(11961u, u_input.c, u_input.c, 4294967295u), vec4<u32>(30202u, 3664u, 0u, arg_0.a.x)), reverseBits(vec4<u32>(u_input.b, 77771u, 1u, u_input.c)) ^ reverseBits(vec4<u32>(u_input.b, u_input.c, u_input.b, 0u))), (_wgslsmith_mult_vec4_u32(vec4<u32>(13846u, u_input.b, 0u, u_input.c), vec4<u32>(0u, arg_0.a.x, arg_0.a.x, 0u)) << (~vec4<u32>(0u, 1u, 1u, u_input.c) % vec4<u32>(32u))) & countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.c, 0u)), global0[_wgslsmith_index_u32(u_input.b, 22u)]), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(0i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), -(~_wgslsmith_clamp_i32(14807i, u_input.a.x, 0i))), -883f, ~(~u_input.c));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(358f * 183f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.c, 2097f))))))));
    var var_3 = !select(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 22u)], arg_0.c, false, false), vec4<bool>(false, arg_0.c, global0[_wgslsmith_index_u32(34823u, 22u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 22u)], true, false, true)), vec4<bool>(arg_0.b | global0[_wgslsmith_index_u32(var_1.d, 22u)], arg_0.b, true, !arg_0.c), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 22u)], true), vec4<bool>(false, false, arg_0.c, global0[_wgslsmith_index_u32(4294967295u, 22u)]), !global0[_wgslsmith_index_u32(1u, 22u)])), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.c, 22u)], true, global0[_wgslsmith_index_u32(arg_0.a.x, 22u)], any(vec3<bool>(arg_0.c, false, true))), arg_0.b);
    return !global0[_wgslsmith_index_u32(88892u, 22u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_3(arg_2.a.wy, !(!func_3(Struct_3(arg_0.a.xw, true, global0[_wgslsmith_index_u32(arg_2.d, 22u)]))), !(!(true & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(50412u, 1581u, 22315u, arg_0.d), arg_2.a), 22u)])));
    var var_1 = !select(all(vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.d, 22u)], false)), all(vec2<bool>(true, true)))), global0[_wgslsmith_index_u32(1u, 22u)], select(any(vec4<bool>(var_0.c, var_0.c, var_0.c, false)), 948f >= arg_1.x, true) | true);
    let var_2 = vec2<bool>(false, false);
    var var_3 = Struct_1(~arg_0.a, _wgslsmith_sub_i32(arg_2.b | arg_0.b, _wgslsmith_sub_i32(abs(14342i), firstTrailingBit(u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(436f, _wgslsmith_f_op_f32(-482f + arg_0.c)), -1000f), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(29634u, ~1u, _wgslsmith_div_u32(countOneBits(var_0.a.x), ~arg_0.d)), arg_2.d, ~16872u));
    var_1 = false && ((-u_input.a.x << (~(~24189u) % 32u)) > _wgslsmith_add_i32(arg_0.b, max(var_3.b, 57453i)));
    return arg_2.b;
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_div_u32(3618u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.c), 1u, 5585u, u_input.c), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.c, 46058u), vec4<u32>(0u, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.c)), vec4<u32>(27023u, u_input.b, 30116u, u_input.b))), ~u_input.c, ~u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(-abs(u_input.a.x), func_2(Struct_1(vec4<u32>(4294967295u, u_input.c, u_input.c, 18692u), u_input.a.x, -1384f, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1882f, -392f, -1196f, -168f) + vec4<f32>(-1176f, -1495f, 657f, 1185f)), Struct_1(vec4<u32>(35899u, 0u, u_input.b, u_input.b), u_input.a.x, 2201f, u_input.c))), ~vec2<i32>(~u_input.a.x, ~u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) - _wgslsmith_f_op_f32(f32(-1f) * -1191f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f), _wgslsmith_f_op_f32(538f + -629f)))), _wgslsmith_clamp_u32(u_input.c, max(select(1u, firstLeadingBit(4294967295u), global0[_wgslsmith_index_u32(1u, 22u)]), ~u_input.b), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(4294967295u, 0u, 7172u, 4294967295u)), ~vec4<u32>(u_input.b, u_input.b, u_input.c, 4294967295u)))));
    let var_1 = 22274u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u ^ var_0.d), ~((vec3<u32>(u_input.b, u_input.c, 1u) & vec3<u32>(1u, 4294967295u, 1u)) & select(var_0.a.xzx, vec3<u32>(u_input.b, var_0.d, 4294967295u), true)));
    global0 = array<bool, 22>();
    return Struct_2(vec4<u32>(_wgslsmith_mod_u32(1u, 1u), firstTrailingBit(var_0.a.x), var_1 ^ ~(~76996u), select(_wgslsmith_sub_u32(~0u, firstLeadingBit(var_1)), 1u >> (1u % 32u), 1u > abs(var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)))), global0[_wgslsmith_index_u32(select(min(firstLeadingBit(27966u), abs(24125u)), min(max(u_input.b, ~0u), var_0.d), !any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 22u)], true))), 22u)], Struct_1(vec4<u32>(abs(var_1) | reverseBits(var_0.d), ~var_1, 31532u, ~(var_1 | 11844u)), min(1i << (1u % 32u), var_0.b) ^ max(var_0.b, i32(-1i) * -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(606f)), var_0.c))), ~5870u), u_input.a);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> bool {
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    let var_0 = 14015i;
    let var_1 = _wgslsmith_add_u32(~(~arg_1.d.d), _wgslsmith_mult_u32(1u, 0u | u_input.b));
    global0 = array<bool, 22>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<u32>(1u, 4294967295u, _wgslsmith_mod_u32(~u_input.b, ~4294967295u ^ _wgslsmith_div_u32(u_input.b, u_input.c)), min(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c, u_input.b), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(221f, -1727f))) + vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(411f, -969f) * _wgslsmith_div_vec2_f32(vec2<f32>(211f, 495f), vec2<f32>(-155f, -1000f)))))), func_4(all(select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 22u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(44212u, 22u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 22u)]), global0[_wgslsmith_index_u32(24386u, 22u)]), vec2<bool>(true, false))), func_1(), true, ~1i), func_1().d, ~firstLeadingBit(reverseBits(~u_input.a)));
    let var_1 = 1u;
    global0 = array<bool, 22>();
    var var_2 = select(!select(vec2<bool>(var_0.c, global0[_wgslsmith_index_u32(~19540u, 22u)]), select(vec2<bool>(false, true), !vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 22u)]), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 22u)], true)), select(vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 22u)], true), vec2<bool>(global0[_wgslsmith_index_u32(33568u, 22u)], var_0.c), vec2<bool>(false, var_0.c)), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1, 22u)]))), vec2<bool>(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.c), 22u)], var_0.c), vec2<bool>(abs(var_0.a.x ^ 4294967295u) != func_1().d.a.x, !all(select(vec4<bool>(global0[_wgslsmith_index_u32(25800u, 22u)], true, global0[_wgslsmith_index_u32(84679u, 22u)], false), vec4<bool>(var_0.c, true, true, global0[_wgslsmith_index_u32(44341u, 22u)]), true))));
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    let var_3 = Struct_2(_wgslsmith_add_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.c, 1u, var_0.a.x, 4294967295u))) << (var_0.a % vec4<u32>(32u)), ~(~var_0.a) << ((var_0.a << (countOneBits(var_0.d.a) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-var_0.b), global0[_wgslsmith_index_u32(var_0.a.x, 22u)], func_1().d, var_0.e);
    let var_4 = Struct_1(vec4<u32>(4294967295u, max(u_input.b, _wgslsmith_mod_u32(~var_3.a.x, 0u)), var_0.d.d, ~_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(u_input.b, 53009u))), -2147483647i, 154f, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_4.c)), countOneBits(var_3.a.yyx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b) - var_3.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-309f, 1085f))), _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, var_4.a.x), _wgslsmith_sub_vec2_u32(var_4.a.yx, var_3.a.yw)), var_4.a.zw));
}

