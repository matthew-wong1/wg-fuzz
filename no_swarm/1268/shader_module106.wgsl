struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1152f, 1000f), 49892u);

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec2<f32>(-1321f, -997f), 4294967295u), -61466i, Struct_1(vec2<f32>(447f, 691f), 1398u), vec4<f32>(-541f, -1360f, -811f, -489f)), Struct_2(Struct_1(vec2<f32>(-229f, -370f), 4294967295u), 52963i, Struct_1(vec2<f32>(-260f, -443f), 1u), vec4<f32>(-940f, 387f, -1075f, -227f)), Struct_2(Struct_1(vec2<f32>(1000f, 519f), 42960u), 70193i, Struct_1(vec2<f32>(1095f, -678f), 19229u), vec4<f32>(-1359f, 118f, 587f, -599f)), Struct_2(Struct_1(vec2<f32>(-1000f, -886f), 0u), i32(-2147483648), Struct_1(vec2<f32>(-1772f, 357f), 4294967295u), vec4<f32>(262f, 1000f, 978f, 1000f)), Struct_2(Struct_1(vec2<f32>(1093f, -1372f), 4294967295u), 2716i, Struct_1(vec2<f32>(522f, -135f), 4294967295u), vec4<f32>(-435f, -312f, -550f, 1416f)), Struct_2(Struct_1(vec2<f32>(-895f, 194f), 38319u), -13552i, Struct_1(vec2<f32>(878f, 271f), 0u), vec4<f32>(356f, -327f, 656f, -724f)));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(670f, -138f), 10202u), 20994i, Struct_1(vec2<f32>(-1129f, 760f), 1u), vec4<f32>(-628f, 990f, -390f, -1344f));

var<private> global3: f32;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<f32>(376f, -922f), 99825u), 1i, Struct_1(vec2<f32>(1000f, 1000f), 4294967295u), vec4<f32>(-1258f, -1092f, 1000f, -1344f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(global4.a.b, 6u)];
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)), 505f));
    global2 = global1[_wgslsmith_index_u32(global2.c.b << ((~46437u & (global2.a.b << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(18703u, u_input.c.x)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)) % 32u))) % 32u), 6u)];
    let var_1 = Struct_2(Struct_1(var_0.c.a, 1u & ~global4.c.b), -global2.b, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(225f)), _wgslsmith_f_op_f32(f32(-1f) * -131f))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(77392u, u_input.b, 33352u, 69054u) << (vec4<u32>(global0.b, 18063u, u_input.a.x, global4.a.b) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_0.c.b, 51889u, 4294967295u, global4.a.b))), reverseBits(~u_input.b), false)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(194f, global0.a.x, global2.d.x, -1380f) * vec4<f32>(global2.d.x, -712f, -2432f, -1019f)) * vec4<f32>(-454f, global2.d.x, global4.a.a.x, 1941f)))), var_0.d)));
    global1 = array<Struct_2, 6>();
    return _wgslsmith_f_op_f32(-global4.c.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> vec4<u32> {
    global2 = Struct_2(Struct_1(vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(2147483647i, global4.b)))), _wgslsmith_clamp_u32(4294967295u << (_wgslsmith_add_u32(0u, global0.b) % 32u), arg_0.c.b & _wgslsmith_div_u32(0u, 1u), 4294967295u)), ~(-1i << (1u % 32u)), global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -199f, 727f, arg_0.c.a.x) * vec4<f32>(710f, global0.a.x, -1000f, global2.c.a.x))))));
    global2 = arg_0;
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1626f - _wgslsmith_f_op_f32(min(arg_0.a.a.x, 444f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f))), _wgslsmith_f_op_vec2_f32(-global0.a), !any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2.d.zyw)));
    let var_2 = select(!(!any(vec2<bool>(true, true))), true, any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), vec3<bool>(true, false, true), any(vec2<bool>(false, false)))));
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c.x, 36597u | global0.b, 29792u, 4294967295u) ^ ~vec4<u32>(global0.b, 9720u, 48470u, global0.b), ~(~abs(vec4<u32>(4294967295u, global0.b, u_input.c.x, 1u))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = -1i;
    var var_1 = -1408f;
    var var_2 = Struct_1(global4.d.ww, abs(global4.a.b));
    var var_3 = _wgslsmith_div_vec4_u32(countOneBits(~((vec4<u32>(global2.a.b, u_input.b, u_input.a.x, global4.a.b) | vec4<u32>(global2.c.b, global2.c.b, global0.b, global0.b)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(52900u, u_input.a.x, u_input.c.x, 20054u), vec4<u32>(global0.b, global2.c.b, 0u, 1u)) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, var_2.b, global4.a.b)), firstTrailingBit(max(abs(vec4<u32>(var_2.b, global2.c.b, 44078u, global2.a.b)), func_2(Struct_2(global4.c, arg_0, Struct_1(vec2<f32>(var_2.a.x, global0.a.x), u_input.a.x), global2.d), vec2<f32>(global0.a.x, var_2.a.x)))), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(4294967295u, global2.a.b, global2.c.b, 0u), vec4<u32>(24758u, 75010u, 52488u, 41783u), vec4<bool>(false, false, false, true)), ~select(vec4<u32>(2845u, u_input.a.x, 23802u, 1u), vec4<u32>(4294967295u, u_input.a.x, 33108u, 64228u), true), vec4<u32>(_wgslsmith_mult_u32(39020u, u_input.b), 17741u & global2.a.b, var_2.b >> (102486u % 32u), _wgslsmith_div_u32(0u, global2.a.b)))));
    global0 = Struct_1(var_2.a, ~_wgslsmith_mod_u32(~firstLeadingBit(4294967295u), 74930u));
    return ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(16426u, firstTrailingBit(~var_3.x)), _wgslsmith_mod_u32(21205u, global4.a.b ^ 4294967295u), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1[_wgslsmith_index_u32(func_1(83901i), 6u)];
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.d) + global4.d));
    let var_1 = -58368i ^ ~global4.b;
    global0 = global4.a;
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(select(u_input.b, abs(global2.a.b), any(vec3<bool>(true, true, false)))), firstLeadingBit(_wgslsmith_sub_u32(global2.c.b << (42380u % 32u), 89968u))), 6u)];
    let var_2 = select(select(vec3<bool>(true, any(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true))), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), false, true), !vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), !vec3<bool>(all(vec2<bool>(true, true)), true, true), all(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(u_input.d != global2.b, true, true, all(vec4<bool>(false, false, false, false))), false)));
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.c.a.x - _wgslsmith_f_op_f32(-global4.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -721f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(global4.d.wwy, vec3<f32>(1693f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f * global2.d.x)))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b, global4.a.b, global4.a.b), vec3<u32>(global2.c.b, 8257u, global0.b)), select(vec3<u32>(53866u, global4.a.b, 4294967295u), vec3<u32>(global4.c.b, global2.a.b, 1u), var_2.x)), ~(~_wgslsmith_add_u32(global2.c.b, u_input.a.x))), vec3<i32>(abs(~global4.b), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d << (global2.c.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, global2.b, 10679i), vec3<i32>(0i, u_input.d, global2.b))), vec2<i32>(min(u_input.d, u_input.d), 0i))));
}

