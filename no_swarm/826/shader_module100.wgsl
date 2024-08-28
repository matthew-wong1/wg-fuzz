struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: array<vec4<bool>, 12>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> bool {
    global1 = array<vec3<i32>, 15>();
    return global0.c.x < 178f;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> vec3<bool> {
    global0 = Struct_2(Struct_1(!select(vec4<bool>(arg_1.b.e, true, true, false), vec4<bool>(false, true, arg_1.b.b, false), vec4<bool>(global0.d.c.x, global0.e, true, false)), global0.d.a.ww, arg_1.b.a.a.xwz), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c.x + 1812f), -206f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c.x, global0.c.x))))), arg_1.b.d, false);
    global0 = Struct_2(arg_1.b.d, any(vec2<bool>(!(!arg_1.b.a.b.x), any(arg_1.b.a.b))), global0.c, Struct_1(vec4<bool>(_wgslsmith_f_op_f32(floor(global0.c.x)) >= global0.c.x, !(!global0.d.b.x), true, func_3(vec4<u32>(4294967295u, 0u, u_input.a, u_input.a))), vec2<bool>(!any(vec4<bool>(global0.b, false, global0.b, false)), arg_1.b.e), global0.a.c), all(vec2<bool>(true, true)));
    var var_0 = Struct_4(6506i);
    let var_1 = arg_1.b.d.a.x;
    var var_2 = -arg_0;
    return select(vec3<bool>(select(!all(vec2<bool>(global0.e, var_1)), true, ~arg_2.a < _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), global1[_wgslsmith_index_u32(4294967295u, 15u)])), true, false), vec3<bool>(true, !(!arg_1.b.b & (arg_0 > -2147483647i)), global0.e), !(!(u_input.a == 1u)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1295f, global0.c.x, global0.c.x), vec3<f32>(715f, arg_0.c.x, -368f), global0.a.a.wyx)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, global0.c.x, global0.c.x))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1148f, -565f, arg_0.c.x) + vec3<f32>(global0.c.x, global0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global0.c.x, global0.c.x) + vec3<f32>(-1956f, global0.c.x, 1000f))))))) - vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * -1149f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1941f));
    global0 = arg_0;
    var var_1 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, 36686i), 0i)), vec2<i32>(1i, -7275i)));
    global2 = array<vec4<bool>, 12>();
    var var_2 = global0.d;
    return Struct_1(vec4<bool>(all(!arg_0.d.c), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.b, 44008u, u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 60745u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a))) < u_input.a, !global0.b, true), func_2(-max(-8139i, 45195i), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, -1000f, -774f) - vec4<f32>(963f, -994f, arg_0.c.x, arg_0.c.x))), Struct_2(Struct_1(vec4<bool>(arg_0.b, arg_0.a.b.x, true, global0.a.b.x), vec2<bool>(var_2.b.x, global0.e), vec3<bool>(global0.b, arg_0.a.b.x, false)), u_input.b >= 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1680f, var_0.x)), global0.a, true)), Struct_4(~select(-45474i, -84191i, false))).xy, vec3<bool>(var_2.c.x, all(global2[_wgslsmith_index_u32(~min(0u, u_input.b), 12u)]), true));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_4, arg_3: i32) -> StorageBuffer {
    global0 = Struct_2(func_4(Struct_2(Struct_1(!global0.d.a, vec2<bool>(global0.b, arg_1), func_2(arg_0.x, Struct_3(vec4<f32>(global0.c.x, -630f, global0.c.x, global0.c.x), Struct_2(Struct_1(vec4<bool>(false, arg_1, true, false), global0.a.c.zy, global0.d.c), true, vec2<f32>(global0.c.x, 1872f), global0.d, false)), arg_2)), global0.d.a.x, global0.c, Struct_1(vec4<bool>(global0.e, true, global0.b, true), vec2<bool>(global0.d.a.x, global0.d.c.x), vec3<bool>(false, global0.a.b.x, global0.e)), !any(vec3<bool>(true, arg_1, arg_1)))), any(func_2(16926i, Struct_3(vec4<f32>(global0.c.x, 1358f, 793f, global0.c.x), Struct_2(global0.d, true, vec2<f32>(global0.c.x, global0.c.x), global0.a, arg_1)), Struct_4(-arg_0.x)).xz), vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))))), func_4(Struct_2(global0.a, !any(global0.d.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.c))), Struct_1(func_4(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 12u)], vec2<bool>(global0.d.a.x, global0.e), global0.a.a.zwz), false, vec2<f32>(global0.c.x, global0.c.x), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 12u)], global0.a.c.yy, vec3<bool>(global0.e, false, false)), global0.d.a.x)).a, !global0.d.c.zy, vec3<bool>(true, false, true)), false)), (20662u != firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.b))) && global0.e);
    global2 = array<vec4<bool>, 12>();
    var var_0 = select(!vec3<bool>(u_input.a != (42147u & u_input.a), _wgslsmith_mod_i32(-1i, 1i) == (arg_3 | -4076i), arg_1), vec3<bool>(global0.d.c.x, !func_4(Struct_2(global0.d, false, vec2<f32>(-165f, 591f), Struct_1(vec4<bool>(global0.d.b.x, global0.b, arg_1, false), vec2<bool>(global0.b, false), vec3<bool>(true, global0.d.a.x, arg_1)), arg_1)).c.x, false), global0.a.b.x);
    var var_1 = Struct_2(global0.a, any(global0.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c.x + 883f), global0.c.x) + global0.c)), func_4(Struct_2(Struct_1(!global0.a.a, vec2<bool>(true, false), global0.a.a.xzy), false, vec2<f32>(_wgslsmith_f_op_f32(max(global0.c.x, global0.c.x)), _wgslsmith_f_op_f32(abs(-476f))), global0.a, false)), select(var_0.x, _wgslsmith_f_op_f32(global0.c.x - global0.c.x) >= _wgslsmith_div_f32(-715f, -1000f), func_3(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) & global0.d.a.x);
    var var_2 = select(~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 27790u, 99997u, u_input.a) << (vec4<u32>(1u, u_input.b, u_input.b, 4873u) % vec4<u32>(32u))), vec4<u32>(0u, ~u_input.b, 1u, max(0u, 4294967295u)), firstTrailingBit(select(vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u), vec4<u32>(u_input.b, u_input.a, 52057u, u_input.b), var_0.x))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 114442u, 17967u)), countOneBits(vec4<u32>(u_input.a, 28235u, 0u, u_input.b))), vec4<u32>(21855u, u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(44593u, u_input.a, 50923u, u_input.b), vec4<u32>(1u, 51476u, 14844u, u_input.a)))), !global0.a.b.x);
    return StorageBuffer(1u, abs(vec2<u32>(0u, var_2.x)), _wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, var_2.x, u_input.b), var_2.zyx, var_2.wwz), _wgslsmith_mod_vec3_u32(var_2.zwx, vec3<u32>(56246u, u_input.b, 0u))), select(~(~u_input.b), select(abs(u_input.b), var_2.x, any(var_1.d.a.zwx)), !(var_2.x >= 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global0.c.x);
    global1 = array<vec3<i32>, 15>();
    global2 = array<vec4<bool>, 12>();
    global1 = array<vec3<i32>, 15>();
    let var_1 = 0i;
    let x = u_input.a;
    s_output = func_1(select(vec2<i32>(_wgslsmith_mod_i32(~var_1, ~var_1), -2147483647i), _wgslsmith_div_vec2_i32(select(vec2<i32>(var_1, var_1), vec2<i32>(var_1, var_1) ^ vec2<i32>(var_1, var_1), global0.b && false), -vec2<i32>(-13239i, var_1)), all(vec2<bool>(!global0.d.a.x, all(vec3<bool>(true, true, true))))), !global0.d.a.x, Struct_4(var_1), ~var_1);
}

