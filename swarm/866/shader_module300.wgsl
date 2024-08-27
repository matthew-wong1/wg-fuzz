struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_2 = Struct_2(-503f, vec3<bool>(false, false, true), 58810u, Struct_1(vec2<u32>(1u, 0u)));

var<private> global2: array<Struct_2, 2>;

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = !any(select(global1.b, select(global1.b, select(global1.b, vec3<bool>(global1.b.x, global1.b.x, true), true), !vec3<bool>(true, false, global1.b.x)), !any(vec4<bool>(false, global1.b.x, global1.b.x, global1.b.x))));
    var var_1 = -1953i;
    let var_2 = u_input.a;
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-21348i), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(2147483647i), -58162i), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 0i), ~vec2<i32>(26193i, -15580i), abs(vec2<i32>(0i, 22671i)))), select(0i, 0i, true) | -6117i, ~_wgslsmith_div_i32(max(12774i, 10283i), _wgslsmith_mod_i32(1i, -49079i))), -vec4<i32>(~(~3430i), _wgslsmith_clamp_i32(44745i, _wgslsmith_mult_i32(1i, -1i), 1i), 0i, _wgslsmith_mult_i32(firstTrailingBit(47963i), firstLeadingBit(81579i))));
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-1724f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a, global1.a)))), select(select(!vec3<bool>(global1.b.x, false, true), vec3<bool>(false, global1.b.x, global1.b.x), false), global1.b, global1.b), 1u, Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) << (vec2<u32>(var_2.x, 2897u) % vec2<u32>(32u)), ~vec2<u32>(global1.d.a.x, global1.c), ~var_2))), global2[_wgslsmith_index_u32(reverseBits(firstLeadingBit(global1.d.a.x)), 2u)]);
    return _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a.x >> (80675u % 32u), abs(u_input.a.x), _wgslsmith_mod_u32(var_2.x, u_input.a.x), ~33123u) & (abs(vec4<u32>(35726u, 6850u, 22184u, 92697u)) ^ vec4<u32>(4555u, var_3.b.d.a.x, global1.c, 35894u)), ~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a.x, 0u, var_2.x, var_3.b.d.a.x), vec4<u32>(4294967295u, 1u, 84598u, u_input.a.x)), vec4<u32>(var_2.x, var_3.a.d.a.x, var_2.x, var_3.b.c) >> (vec4<u32>(var_3.a.d.a.x, 40318u, 19451u, var_2.x) % vec4<u32>(32u)))), vec4<u32>(~(~var_2.x) & 1427u, var_3.b.c, ~(94869u >> (_wgslsmith_add_u32(1u, var_3.b.d.a.x) % 32u)), ~(~var_3.b.d.a.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(select(1125f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1538f, global1.a)))), arg_1.d.b.x)), select(select(select(global1.b, vec3<bool>(global1.b.x, false, false), arg_1.d.b.x), global1.b, !arg_1.d.b), global1.b, vec3<bool>(any(vec4<bool>(false, true, false, false)), any(vec3<bool>(arg_1.d.b.x, global1.b.x, arg_1.d.b.x)), true)), 4294967295u, Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a))), arg_1.d);
    var var_1 = 105166u;
    var var_2 = 747f;
    let var_3 = !all(vec4<bool>(true, true, true, true));
    let var_4 = Struct_4(Struct_2(arg_1.d.a, select(!vec3<bool>(true, false, global1.b.x), select(!var_0.a.b, select(vec3<bool>(true, arg_1.d.b.x, false), arg_1.d.b, var_0.a.b), var_0.a.b), !(!var_0.a.b.x)), 4294967295u, Struct_1(~_wgslsmith_div_vec2_u32(global1.d.a, vec2<u32>(arg_0.x, 1u)))), global2[_wgslsmith_index_u32(0u & firstLeadingBit(max(arg_2.x, 30809u) & _wgslsmith_sub_u32(17637u, arg_2.x)), 2u)]);
    return global1.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> u32 {
    global1 = Struct_2(global1.a, global1.b, global1.c, Struct_1(vec2<u32>(min(global1.d.a.x, global1.d.a.x), max(76665u, 85587u)) >> ((global1.d.a ^ vec2<u32>(38964u, 4294967295u)) % vec2<u32>(32u))));
    let var_0 = Struct_3(~vec2<u32>(~450u, global1.c), Struct_1(vec2<u32>(~u_input.a.x, ~1u) | global1.d.a), global1.d, Struct_2(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 9346u, global1.c, global1.c), vec4<u32>(u_input.a.x, global1.d.a.x, global1.c, 2474u)), func_3()), Struct_3(u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.c, global1.c, u_input.a.x), 4u)], global3[_wgslsmith_index_u32(1u ^ u_input.a.x, 4u)], Struct_2(1604f, arg_0, u_input.a.x, global1.d), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(53723u, 4294967295u), vec2<u32>(4294967295u, global1.c)))), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1579f) > _wgslsmith_f_op_f32(-global1.a), any(vec3<bool>(global1.b.x, true, global1.b.x)), arg_0.x), global1.c, global1.d), func_3().x);
    global2 = array<Struct_2, 2>();
    var var_1 = 0u;
    let var_2 = global1.d.a;
    return var_0.d.c;
}

fn func_1() -> u32 {
    var var_0 = Struct_3(vec2<u32>(reverseBits(1u), max(firstLeadingBit(global1.d.a.x), global1.d.a.x)) ^ vec2<u32>(~4294967295u, _wgslsmith_div_u32(func_2(global1.b, vec4<bool>(global1.b.x, false, global1.b.x, false)), firstLeadingBit(u_input.a.x))), global3[_wgslsmith_index_u32(func_2(!(!global1.b), vec4<bool>(true, global1.b.x, true, true)), 4u)], Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(global1.d.a, u_input.a & u_input.a), global1.d.a)), global2[_wgslsmith_index_u32(~4294967295u, 2u)], ~26149u);
    var var_1 = Struct_3(vec2<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 33037u, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(global1.c, 2874u, 32542u, global1.c), vec4<u32>(global1.c, global1.d.a.x, 30963u, u_input.a.x)))), var_0.b, global3[_wgslsmith_index_u32(~(~1u), 4u)], global2[_wgslsmith_index_u32(min(0u, u_input.a.x), 2u)], func_2(!vec3<bool>(true, true, global1.b.x), select(!select(vec4<bool>(var_0.d.b.x, true, false, false), vec4<bool>(global1.b.x, var_0.d.b.x, false, global1.b.x), global1.b.x), select(!vec4<bool>(true, global1.b.x, global1.b.x, true), select(vec4<bool>(false, false, false, global1.b.x), vec4<bool>(false, global1.b.x, false, false), vec4<bool>(var_0.d.b.x, var_0.d.b.x, var_0.d.b.x, global1.b.x)), select(vec4<bool>(global1.b.x, var_0.d.b.x, var_0.d.b.x, global1.b.x), vec4<bool>(false, var_0.d.b.x, true, var_0.d.b.x), var_0.d.b.x)), select(select(vec4<bool>(false, global1.b.x, global1.b.x, true), vec4<bool>(global1.b.x, global1.b.x, var_0.d.b.x, global1.b.x), vec4<bool>(global1.b.x, var_0.d.b.x, true, var_0.d.b.x)), select(vec4<bool>(true, false, false, false), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, var_0.d.b.x), vec4<bool>(global1.b.x, false, false, var_0.d.b.x)), true))));
    let var_2 = false;
    var var_3 = vec3<bool>(true, select(true || var_1.d.b.x, global1.b.x, false), global1.b.x);
    var var_4 = global1.b.x;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(abs(24677u), _wgslsmith_div_u32(global1.d.a.x, u_input.a.x), ~22219u) >> (max(vec3<u32>(var_0.e, u_input.a.x, global1.c), reverseBits(vec3<u32>(global1.c, global1.c, 15742u))) % vec3<u32>(32u)), abs(~vec3<u32>(var_1.d.d.a.x, 1u, u_input.a.x))) << (_wgslsmith_div_u32(_wgslsmith_sub_u32(abs(func_3().x), u_input.a.x), firstLeadingBit(global1.c)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(func_1() << (1u % 32u), countOneBits(abs(_wgslsmith_clamp_u32(0u, 61485u, 4294967295u)))), u_input.a.x, vec3<f32>(_wgslsmith_div_f32(global1.a, global1.a), global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1036f - 507f), global1.a)), ~1i);
}

