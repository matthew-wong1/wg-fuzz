struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 27> = array<bool, 27>(false, true, true, false, false, true, true, false, true, false, false, false, true, true, false, true, true, false, false, true, false, true, true, true, true, true, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    global0 = Struct_4(global0.a, global0.b, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f), global0.a) <= _wgslsmith_f_op_f32(-global0.a));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, 158f), vec2<f32>(1196f, -1638f), vec2<bool>(true, global1[_wgslsmith_index_u32(46955u, 27u)])))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, global0.a) - vec2<f32>(483f, global0.a)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a, 494f), vec2<f32>(1167f, global0.a))))))));
    global1 = array<bool, 27>();
    return ~(max(~_wgslsmith_div_u32(u_input.c, 0u), 1u >> (_wgslsmith_clamp_u32(global0.b, arg_1, global0.b) % 32u)) | select(9963u, 1u ^ u_input.c, global1[_wgslsmith_index_u32(u_input.a, 27u)]));
}

fn func_2() -> u32 {
    return ~(28725u & max(func_3(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, -1i), u_input.b), 0u), global0.b));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: i32) -> vec4<i32> {
    let var_0 = global0.a;
    var var_1 = Struct_5(Struct_2(Struct_1(vec4<f32>(-1738f, -704f, global0.a, _wgslsmith_f_op_f32(-global0.a)), -3298f, abs(abs(arg_1)), -519f, u_input.b.wyy), abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, -17366i, u_input.b.x, -19173i), u_input.b) | vec4<i32>(u_input.b.x, -10251i, 12136i, u_input.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1323f)))))));
    var var_2 = _wgslsmith_clamp_u32(~(~(~global0.b)), _wgslsmith_clamp_u32(arg_1, arg_1, _wgslsmith_add_u32(var_1.a.a.c, 2889u)), _wgslsmith_mult_u32(14884u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, u_input.a, 12932u) | vec3<u32>(4294967295u, 12803u, var_1.a.a.c)), vec3<u32>(reverseBits(u_input.d.x), _wgslsmith_sub_u32(0u, 0u), 0u >> (1u % 32u)))));
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 622f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1130f)))))), _wgslsmith_sub_u32(1u, u_input.d.x), all(select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.a.a.c, 27u)], global1[_wgslsmith_index_u32(u_input.d.x, 27u)], !global1[_wgslsmith_index_u32(arg_1, 27u)]), !(!vec3<bool>(false, global1[_wgslsmith_index_u32(global0.b, 27u)], true)), vec3<bool>(!global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(11779u, 27u)], -206f <= var_1.a.a.d))), all(select(vec3<bool>(all(vec3<bool>(global0.d, global0.d, false)), false, true), vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 27u)] && global1[_wgslsmith_index_u32(36001u, 27u)], global0.d, true), false)));
    let var_3 = arg_0;
    return reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(arg_2, 2147483647i), ~arg_0, -var_1.a.a.e.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.a, arg_1), ~vec4<u32>(arg_1, arg_1, 27630u, 4294967295u), firstLeadingBit(vec4<u32>(29427u, global0.b, global0.b, 22997u))) % vec4<u32>(32u)), ~vec4<i32>(arg_2, ~(-1i), firstTrailingBit(1i), arg_0)));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(func_4(countOneBits(u_input.b.x), ~func_2() & 92680u, -90792i), ~_wgslsmith_div_u32(abs(abs(global0.b)), global0.b));
    let var_1 = _wgslsmith_mod_i32(u_input.b.x, -8745i);
    let var_2 = var_0;
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    return Struct_3(var_2.a, ~_wgslsmith_clamp_u32(1u, 1u, countOneBits(35358u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(reverseBits(u_input.b), global0.b);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(265f, global0.a))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(433f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))))), _wgslsmith_mod_u32(u_input.c, _wgslsmith_add_u32(~min(44777u, 48486u), 31305u)), ~vec4<u32>(61447u | global0.b, 16392u, global0.b, 30800u) ^ vec4<u32>(~1773u | firstLeadingBit(var_1.b), var_1.b, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4840u, 1u, 1u), vec4<u32>(0u, u_input.d.x, global0.b, 4294967295u)), 0u), func_3(u_input.b | u_input.b, func_3(vec4<i32>(u_input.b.x, var_1.a.x, u_input.b.x, var_1.a.x), 41577u))));
}

