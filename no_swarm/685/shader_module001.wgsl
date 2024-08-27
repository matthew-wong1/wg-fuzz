struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-1262f, 388f, 483f), vec3<f32>(960f, -134f, -144f), vec3<f32>(1563f, -468f, -103f));

var<private> global1: bool = false;

var<private> global2: array<i32, 10> = array<i32, 10>(-46873i, 0i, 1i, 3769i, 37951i, i32(-2147483648), 0i, 2147483647i, -1i, 2147483647i);

var<private> global3: array<Struct_2, 27>;

var<private> global4: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    var var_0 = i32(-1i) * -_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 10u)], ~u_input.a);
    let var_1 = Struct_1(vec4<u32>(1u, 4294967295u, 50545u, _wgslsmith_dot_vec4_u32(~vec4<u32>(24197u, 35374u, 49375u, 1u), ~vec4<u32>(4294967295u, 0u, 1u, 0u))) >> (vec4<u32>(1u, 4294967295u, _wgslsmith_mult_u32(1u, 20753u), reverseBits(4294967295u)) % vec4<u32>(32u)), vec3<i32>(i32(-1i) * -13081i, reverseBits(min(_wgslsmith_mod_i32(0i, -9757i), -1i)), u_input.a), -global2[_wgslsmith_index_u32(2060u, 10u)]);
    global4 = _wgslsmith_div_f32(-1234f, arg_0);
    global4 = _wgslsmith_f_op_f32(min(-897f, arg_0));
    let var_2 = !all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), true), vec4<bool>(true, true, true, true), true));
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~(~var_1.a.x)), abs(_wgslsmith_dot_vec2_u32(var_1.a.yy, ~var_1.a.yx))), var_1.a.yz, _wgslsmith_div_vec2_u32(~(~firstTrailingBit(vec2<u32>(15040u, 62733u))), ~(var_1.a.wy << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), vec2<u32>(var_1.a.x, var_1.a.x), var_1.a.yx) % vec2<u32>(32u)))));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global3 = array<Struct_2, 27>();
    var var_0 = ~(~abs(vec2<u32>(28731u, arg_2.a.x))) | firstLeadingBit(_wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_2.a.x, arg_2.a.x)), vec2<u32>(reverseBits(arg_2.a.x), 45627u)));
    let var_1 = vec4<u32>(var_0.x, 17429u, _wgslsmith_mult_u32(~((27497u >> (arg_2.a.x % 32u)) >> (min(1u, var_0.x) % 32u)), _wgslsmith_dot_vec2_u32(func_3(_wgslsmith_f_op_f32(max(560f, arg_0.a))), select(max(arg_2.a.yx, arg_2.a.wy), arg_2.a.zy, true))), ~(~(var_0.x ^ var_0.x)));
    var var_2 = Struct_2(arg_2);
    let var_3 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, var_1.x, arg_2.a.x, var_0.x)), ~vec4<u32>(24551u, 5835u, 26079u, var_1.x)), 16891u, ~(~var_2.a.a.x), 1u), -var_2.a.b, -19991i));
    return Struct_3(-37490i, Struct_2(arg_2), arg_2.c, vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -278f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, 1f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(509f - arg_0.a))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3) -> bool {
    var var_0 = arg_0.x;
    var var_1 = 58582i;
    global2 = array<i32, 10>();
    var_0 = 1u;
    let var_2 = select(select(select(select(vec4<bool>(false, arg_1, false, arg_1), !vec4<bool>(true, arg_1, true, false), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, true, arg_1))), !vec4<bool>(arg_1, arg_1, arg_1, false), !vec4<bool>(false, arg_1, false, arg_1)), !vec4<bool>(select(arg_1, true, true), false, all(vec2<bool>(arg_1, true)), arg_1), vec4<bool>(arg_1 | arg_1, arg_1, _wgslsmith_f_op_f32(arg_2.d.x - -940f) != arg_2.d.x, true)), select(!vec4<bool>(arg_1, arg_1, 1i > arg_2.a, true), select(!select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_1, false, true, false), vec4<bool>(arg_1, false, arg_1, false)), select(vec4<bool>(arg_1, arg_1, false, false), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, true), arg_1), vec4<bool>(true, false, arg_1, false)), false), true), !(!(!select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, true, true, arg_1), vec4<bool>(true, arg_1, false, arg_1)))));
    return var_2.x;
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> vec3<i32> {
    global2 = array<i32, 10>();
    global3 = array<Struct_2, 27>();
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.d)), arg_0.a.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.a.d * vec4<f32>(2170f, -819f, 335f, arg_0.a.d.x)), vec4<f32>(arg_0.e, arg_0.e, -1552f, -1812f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_0.a.d, arg_0.a.d))))));
    var var_2 = !select(select(!(!vec2<bool>(arg_3, false)), select(!vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_3), false), vec2<bool>(arg_3, true)), select(vec2<bool>(true, true), !(!vec2<bool>(arg_3, false)), func_4(vec3<u32>(1u, 0u, 45325u), true, func_2(Struct_4(arg_0.e), arg_2.a, Struct_1(vec4<u32>(arg_1, arg_1, 4294967295u, arg_0.d), vec3<i32>(u_input.b.x, -40095i, global2[_wgslsmith_index_u32(arg_1, 10u)]), -14224i)))), select(select(select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_3), vec2<bool>(true, false)), !vec2<bool>(arg_3, false), select(vec2<bool>(false, false), vec2<bool>(arg_3, true), arg_3)), !select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, true), false), arg_3));
    return arg_0.a.b.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(56331u, 23436u, 35170u, 1u), vec4<u32>(72982u, 1u, 4294967295u, 4294967295u)))), _wgslsmith_div_vec3_i32(-vec3<i32>(-52199i, global2[_wgslsmith_index_u32(0u, 10u)], 18300i), ~func_1(Struct_5(Struct_3(-1i, global3[_wgslsmith_index_u32(4294967295u, 27u)], -2147483647i, vec4<f32>(1706f, 1609f, -472f, -748f)), 1101f, 4294967295u, 0u, -704f), 26504u, Struct_4(2419f), true)), ~(-global2[_wgslsmith_index_u32(1u, 10u)])));
    let var_1 = Struct_1(min(var_0.a.a, _wgslsmith_add_vec4_u32(~var_0.a.a, vec4<u32>(var_0.a.a.x, 27881u, abs(10466u), ~4294967295u))), vec3<i32>(~max(countOneBits(1i), var_0.a.c & u_input.a), -max(func_2(Struct_4(-971f), 1952f, Struct_1(vec4<u32>(37339u, 25622u, var_0.a.a.x, var_0.a.a.x), vec3<i32>(-2147483647i, var_0.a.c, 34193i), u_input.a)).c, ~7610i), _wgslsmith_mod_i32(-(0i << (0u % 32u)), global2[_wgslsmith_index_u32(10396u, 10u)] ^ (0i >> (0u % 32u)))), ~reverseBits(~(-var_0.a.c)));
    global2 = array<i32, 10>();
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~var_0.a.a.x << (min(var_0.a.a.x, 33051u) % 32u)), var_1.a.yx) << (func_2(Struct_4(-125f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(126f))), var_0.a).b.a.a.yz % vec2<u32>(32u));
    global1 = 100597u < var_2.x;
    global3 = array<Struct_2, 27>();
    global3 = array<Struct_2, 27>();
    let var_3 = ~(_wgslsmith_clamp_u32(var_2.x, firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, var_0.a.a.x, 8242u)), 4294967295u) | ~(~(~13983u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1030f, _wgslsmith_f_op_f32(1187f * -154f)))) - -1553f));
}

