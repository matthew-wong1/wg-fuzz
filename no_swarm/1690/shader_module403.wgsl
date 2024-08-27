struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<u32>(49645u, 45464u, 0u), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<u32>(0u, 20782u, 91546u), vec2<u32>(16851u, 89259u)), Struct_1(vec3<u32>(44388u, 41903u, 0u), vec2<u32>(74897u, 11597u)), Struct_1(vec3<u32>(1u, 49159u, 4294967295u), vec2<u32>(10675u, 0u)), Struct_1(vec3<u32>(27176u, 69162u, 1u), vec2<u32>(37437u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 18677u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<u32>(2159u, 0u, 1u), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(0u, 1u, 40454u), vec2<u32>(69963u, 4294967295u)), Struct_1(vec3<u32>(1u, 17860u, 0u), vec2<u32>(0u, 23830u)), Struct_1(vec3<u32>(1u, 45593u, 1u), vec2<u32>(0u, 0u)), Struct_1(vec3<u32>(0u, 23563u, 122613u), vec2<u32>(23723u, 0u)), Struct_1(vec3<u32>(53159u, 24056u, 42137u), vec2<u32>(31473u, 0u)), Struct_1(vec3<u32>(49796u, 1u, 42224u), vec2<u32>(16875u, 36189u)), Struct_1(vec3<u32>(4294967295u, 38343u, 10108u), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec2<u32>(89407u, 26993u)), Struct_1(vec3<u32>(1u, 38363u, 5756u), vec2<u32>(0u, 17418u)), Struct_1(vec3<u32>(66111u, 29294u, 32819u), vec2<u32>(17721u, 4294967295u)), Struct_1(vec3<u32>(60838u, 43397u, 0u), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 47151u), vec2<u32>(17509u, 41221u)), Struct_1(vec3<u32>(46683u, 1u, 42418u), vec2<u32>(4294967295u, 24168u)), Struct_1(vec3<u32>(4294967295u, 0u, 335u), vec2<u32>(1u, 0u)), Struct_1(vec3<u32>(34509u, 4294967295u, 44485u), vec2<u32>(4294967295u, 64515u)), Struct_1(vec3<u32>(49796u, 1u, 4294967295u), vec2<u32>(4294967295u, 0u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> vec2<u32> {
    let var_0 = u_input.b.ywz;
    global2 = array<Struct_1, 23>();
    global0 = array<vec3<f32>, 1>();
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(select(arg_0.a, vec3<u32>(u_input.a.x, arg_0.b.x, 0u) | arg_0.a, vec3<bool>(true, true, true)), select(~_wgslsmith_mult_vec3_u32(u_input.a.xxx, vec3<u32>(arg_0.a.x, 1u, 1u)), vec3<u32>(arg_0.b.x, ~arg_0.b.x, _wgslsmith_dot_vec2_u32(arg_0.b, u_input.a.wx)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))))), vec2<u32>(~u_input.a.x, countOneBits(4294967295u)));
    global1 = array<vec3<bool>, 20>();
    return var_1.a.xy;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b.x;
    global1 = array<vec3<bool>, 20>();
    global1 = array<vec3<bool>, 20>();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(10267u, 9055u)), 1u)] * vec3<f32>(_wgslsmith_f_op_f32(-980f + _wgslsmith_f_op_f32(abs(-1483f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(f32(-1f) * -1729f)), _wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_f_op_f32(f32(-1f) * -1936f)));
    return Struct_1(_wgslsmith_sub_vec3_u32(abs(~u_input.a.xxz), countOneBits(~u_input.a.wzz)), _wgslsmith_sub_vec2_u32(~max(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], -171f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.zy)), _wgslsmith_clamp_vec2_u32(u_input.a.wz, vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(65992u, u_input.a.x)) << (u_input.a.wx % vec2<u32>(32u))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    let var_0 = func_2();
    let var_1 = var_0;
    global2 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    let var_2 = func_2();
    return firstLeadingBit(arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (all(vec4<bool>(1u <= u_input.a.x, true, true, u_input.b.x <= u_input.b.x)) && all(global1[_wgslsmith_index_u32(func_1(-1479f, Struct_1(vec3<u32>(4294967295u, u_input.a.x, 78936u), u_input.a.zy), ~u_input.a.yz), 20u)])) && !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false)));
    var var_1 = -1311f;
    var var_2 = u_input.b;
    global1 = array<vec3<bool>, 20>();
    var_2 = vec4<i32>(~var_2.x << (func_2().a.x % 32u), (var_2.x << (u_input.a.x % 32u)) & u_input.b.x, 0i, i32(-1i) * -2147483647i);
    let var_3 = 45646u;
    let var_4 = !(!select(vec4<bool>(var_0 | var_0, 1366u <= u_input.a.x, var_2.x <= 2147483647i, var_0 && false), select(!vec4<bool>(false, false, false, var_0), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, false, true, true), var_0), select(true, var_0, true)), !(false & var_0)));
    let var_5 = global1[_wgslsmith_index_u32(func_3(global2[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1000f))), Struct_1(u_input.a.xzy, u_input.a.zx), ~(vec2<u32>(var_3, var_3) << (vec2<u32>(13964u, u_input.a.x) % vec2<u32>(32u))) ^ func_2().b), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-485f - _wgslsmith_div_f32(-1137f, 1172f))))), global0[_wgslsmith_index_u32(1u << (abs(u_input.a.x) % 32u), 1u)]).x, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(9336i, u_input.a.zxx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(359f, 2733f)), _wgslsmith_f_op_f32(ceil(-778f)))) + _wgslsmith_f_op_f32(floor(-625f))), -322f), var_2.xyw);
}

