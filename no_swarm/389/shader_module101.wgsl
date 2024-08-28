struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(0i, 2147483647i);

var<private> global1: array<vec4<f32>, 10>;

var<private> global2: array<f32, 27>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 27u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2297f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-500f + -1060f) * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(5123u, 27u)]))), u_input.a >= 46265u))), global2[_wgslsmith_index_u32(4294967295u, 27u)], -291f);
    global0 = array<i32, 2>();
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(max(4294967295u, u_input.a) >> ((u_input.c | 83658u) % 32u), 35053u, 4294967295u), vec3<u32>(72930u << (~u_input.a % 32u), 1u, u_input.a)), vec3<u32>(~firstTrailingBit(6963u), countOneBits(u_input.a) | 1u, ~(~4294967295u)));
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_add_i32(u_input.b.x, -1i)), -22881i, 0i) | vec3<i32>(max(~u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -40938i))), firstTrailingBit(-u_input.b.x), u_input.b.x), _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(var_2.x, 2u)], -24146i), vec3<i32>(-2147483647i, 0i, -2147483647i) << (vec3<u32>(1u, u_input.c, 52641u) % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(var_2.x, 2u)], global0[_wgslsmith_index_u32(54919u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]))), abs(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-2488i, 1i, 1987i)), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], -2147483647i, 2147483647i)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b.x, -2147483647i, 1i), vec3<i32>(u_input.b.x, -22076i, u_input.b.x), vec3<bool>(true, false, true)), vec3<i32>(-2147483647i, ~u_input.b.x, 2147483647i)), reverseBits(firstLeadingBit(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(var_2.x, 2u)], u_input.b.x))))));
    return countOneBits(var_2.x) & abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), ~var_2.zx));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = 2147483647i;
    global1 = array<vec4<f32>, 10>();
    global0 = array<i32, 2>();
    global1 = array<vec4<f32>, 10>();
    let var_1 = Struct_2(Struct_1(arg_0.yx, (_wgslsmith_mult_u32(3390u, u_input.a) > 31081u) == any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), u_input.c, 4294967295u ^ ~func_3(), true));
    return var_1.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global1 = array<vec4<f32>, 10>();
    global2 = array<f32, 27>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(10767u, 1u), 27u)])), global2[_wgslsmith_index_u32(arg_1.c, 27u)], 1318f), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.c, 27u)] + global2[_wgslsmith_index_u32(u_input.a, 27u)]), -302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f - global2[_wgslsmith_index_u32(15202u, 27u)]) - _wgslsmith_f_op_f32(min(-1079f, global2[_wgslsmith_index_u32(arg_1.d, 27u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.d, 27u)]) - _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(14439u, 27u)], global2[_wgslsmith_index_u32(arg_1.d, 27u)]))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-286f, 211f, 325f)))))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(674f, -760f) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_1.d, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(177f * _wgslsmith_f_op_f32(f32(-1f) * -1735f)))));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global0 = array<i32, 2>();
    var var_0 = func_4(reverseBits(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-7019i, arg_1, arg_1, -2147483647i)), vec4<i32>(~69445i, -2147483647i >> (u_input.c % 32u), global0[_wgslsmith_index_u32(~0u, 2u)], 22382i))), func_2(vec3<i32>(min(arg_1, 1i), _wgslsmith_mod_i32(u_input.b.x, arg_1), -16600i) | ~vec3<i32>(-28503i, u_input.b.x, arg_0)), true);
    let var_1 = select(!select(vec3<bool>(true, true, false), !vec3<bool>(true, arg_2.a.b, var_0.b), 781f <= global2[_wgslsmith_index_u32(0u ^ u_input.a, 27u)]), !select(vec3<bool>(select(false, arg_2.a.e, false), true, true), vec3<bool>(arg_2.a.b && arg_2.a.b, !var_0.b, true), arg_2.a.e), !(!select(vec3<bool>(arg_2.a.b, var_0.b, true), select(vec3<bool>(true, false, arg_2.a.b), vec3<bool>(false, arg_2.a.e, arg_2.a.b), vec3<bool>(var_0.b, var_0.e, var_0.b)), !vec3<bool>(arg_2.a.e, false, false))));
    global1 = array<vec4<f32>, 10>();
    var var_2 = _wgslsmith_div_i32(-reverseBits(_wgslsmith_div_i32(func_2(vec3<i32>(global0[_wgslsmith_index_u32(arg_2.a.d, 2u)], var_0.a.x, -2147483647i)).a.x, -9893i)), ~firstTrailingBit(-21569i));
    return Struct_2(arg_2.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global2 = array<f32, 27>();
    let var_0 = i32(-1i) * -2147483647i;
    global1 = array<vec4<f32>, 10>();
    var var_1 = 42607u == _wgslsmith_div_u32(_wgslsmith_div_u32(func_4(abs(vec4<i32>(var_0, var_0, u_input.b.x, -2147483647i)), arg_3, all(vec4<bool>(false, false, false, false))).d, arg_3.c), _wgslsmith_mod_u32(4294967295u, countOneBits(0u) & arg_3.c));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f)))) * -972f) >= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0, abs(countOneBits(vec2<u32>(85584u, 5558u)))), 27u)]);
    return arg_2.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 10>();
    let var_0 = vec4<i32>(~func_5(abs(vec2<u32>(u_input.c, 3656u)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), func_1(1i, 1i, Struct_2(Struct_1(u_input.b, true, 29523u, 1u, true))), func_2(-vec3<i32>(u_input.b.x, u_input.b.x, 38418i))), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(max(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 2u)]), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(14431u, 2u)], u_input.b.x), _wgslsmith_mod_i32(-34353i, 60135i)), -vec3<i32>(2147483647i, u_input.b.x, 2147483647i) & firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(0u, 2u)], 6689i, global0[_wgslsmith_index_u32(3264u, 2u)])))), ~(-_wgslsmith_mult_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 2u)], 12113i), -u_input.b.x)), u_input.b.x);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 43701u), 27u)];
    global0 = array<i32, 2>();
    var var_2 = Struct_2(Struct_1(u_input.b, true, u_input.c, u_input.a, any(vec4<bool>(false, false, false, true)) || true));
    var var_3 = func_4(var_0, func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(-30877i, var_2.a.a.x, 2147483647i ^ global0[_wgslsmith_index_u32(var_2.a.c, 2u)], var_0.x), var_0, _wgslsmith_mod_vec4_i32(var_0, var_0)), var_2.a, var_2.a.b), 4294967295u != ~var_2.a.c);
    var var_4 = vec2<bool>(!var_3.b, !(!var_3.e));
    global2 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(6235u, vec4<u32>(func_3(), 57216u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.a.c ^ u_input.c, 1u), ~u_input.c), _wgslsmith_sub_u32(u_input.c, 16699u)), 16625i);
}

