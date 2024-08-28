struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(11759i, 41347i, 1i);

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

var<private> global3: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1568f, 1415f, 342f, -2186f), vec4<f32>(910f, 1000f, -175f, -233f), vec4<f32>(-805f, -1818f, 747f, 581f), vec4<f32>(599f, -587f, -1006f, -445f), vec4<f32>(171f, 1000f, -1585f, 1000f));

var<private> global4: Struct_2 = Struct_2(Struct_1(true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = vec3<u32>(~0u | u_input.c, countOneBits(u_input.c), _wgslsmith_add_u32(~(~1u), countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.b), vec3<u32>(u_input.a.x, 4294967295u, u_input.c)), _wgslsmith_mod_u32(0u, 9763u)))));
    var var_1 = vec3<i32>(-1i) * -u_input.d.ywz;
    let var_2 = Struct_3(firstLeadingBit(var_0.x), -1620i);
    var var_3 = var_2;
    global1 = vec4<i32>(_wgslsmith_add_i32(-global1.x, var_2.b), (i32(-1i) * -2147483647i) >> (_wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(u_input.a.x & var_3.a, ~0u)) % 32u), u_input.d.x, arg_1);
    return ~_wgslsmith_mod_u32(var_3.a, 4294967295u ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 35330u), u_input.a));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: bool) -> vec4<bool> {
    let var_0 = ~vec4<u32>(reverseBits(_wgslsmith_sub_u32(10787u, u_input.a.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 68034u), u_input.a), u_input.a) | ~(~u_input.a.x), (_wgslsmith_add_u32(arg_1, 20301u) >> (4294967295u % 32u)) | _wgslsmith_mult_u32(~98735u, ~u_input.b), ~(~4294967295u) << (func_3(Struct_2(Struct_1(false, false)), 9727i, Struct_2(Struct_1(true, true))) % 32u));
    var var_1 = global4.a;
    global2 = array<vec3<bool>, 32>();
    var var_2 = Struct_3(u_input.b, u_input.d.x);
    global4 = Struct_2(Struct_1(!all(vec4<bool>(global4.a.a, false, false, arg_0)) && (abs(0u) <= (4294967295u | var_2.a)), false));
    return select(!(!(!select(vec4<bool>(arg_3, true, true, arg_0), vec4<bool>(false, false, false, var_1.b), false))), select(!select(!vec4<bool>(arg_0, false, arg_3, true), vec4<bool>(false, var_1.b, global4.a.a, global4.a.b), true), select(!vec4<bool>(true, global4.a.b, false, true), !vec4<bool>(var_1.a, true, global4.a.b, false), arg_3), select(!select(vec4<bool>(arg_3, false, var_1.a, true), vec4<bool>(true, false, global4.a.b, var_1.a), true), vec4<bool>(global4.a.a, true, var_2.b >= 1i, all(vec2<bool>(true, true))), any(!vec4<bool>(true, global4.a.a, false, true)))), !all(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, global4.a.b), global1.x == 34126i)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global0 = global1.ywy;
    return arg_3.a;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global1 = vec4<i32>(global1.x, -1i, ~(-(~global1.x)), -reverseBits(-global0.x >> (arg_0 % 32u)));
    global4 = arg_2;
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-144f, 483f) * vec2<f32>(-864f, 1097f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1083f, 1425f) - vec2<f32>(-670f, 187f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1543f)), _wgslsmith_f_op_f32(max(1783f, -125f))), !all(global2[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-172f, -1000f)))))));
    var var_2 = firstTrailingBit(53469u);
    return Struct_2(func_4(vec4<bool>(1u < ~var_0.x, global4.a.b, arg_2.a.b, !arg_2.a.b), _wgslsmith_div_vec2_i32(~min(vec2<i32>(1i, u_input.d.x), global1.wx), global1.yx), !(!all(vec4<bool>(true, false, false, true))), arg_2));
}

fn func_1(arg_0: f32) -> f32 {
    global2 = array<vec3<bool>, 32>();
    let var_0 = countOneBits(vec3<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, 25427i, global0.x, 2147483647i), u_input.d), ~u_input.d), u_input.d), global0.x));
    let var_1 = func_5(1u, u_input.c > _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(46081u, 4294967295u), vec2<u32>(35933u, u_input.b) << (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u))), ~(vec2<u32>(u_input.b, u_input.c) | vec2<u32>(u_input.c, 62632u))), Struct_2(func_4(select(func_2(global4.a.a, 4294967295u, arg_0, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, global4.a.a), vec4<bool>(true, global4.a.a, true, false)), true), -vec2<i32>(-84445i, -2147483647i), _wgslsmith_mult_u32(u_input.a.x, u_input.c) <= countOneBits(12969u), Struct_2(Struct_1(true, true)))));
    let var_2 = Struct_3(34258u, -global1.x ^ max(0i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(-60747i, -2147483647i)), -1i)));
    let var_3 = ~(var_2.a << (var_2.a % 32u));
    return -795f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1113f, -239f, false)), _wgslsmith_f_op_f32(-240f * -1510f)))) - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(225f, -292f)))))), _wgslsmith_div_f32(296f, -1305f), !global4.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-310f)), 317f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, 2425f))))), vec3<f32>(_wgslsmith_f_op_f32(-811f * _wgslsmith_f_op_f32(min(230f, -148f))), -864f, 749f)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, u_input.a.x), ~vec2<u32>(88375u, u_input.b)), func_3(Struct_2(func_4(vec4<bool>(global4.a.b, global4.a.b, false, global4.a.b), u_input.d.zw, true, Struct_2(global4.a))), global1.x, Struct_2(global4.a)), 4294967295u));
}

