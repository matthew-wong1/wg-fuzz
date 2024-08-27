struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: i32;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<vec2<bool>, 3>;

var<private> global4: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-1i, -12623i), vec2<i32>(57744i, 40691i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -27326i), vec2<i32>(40768i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(30514i, -1i), vec2<i32>(-75318i, -19790i), vec2<i32>(-3875i, 5567i), vec2<i32>(-1i, -16505i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = vec2<bool>(!any(vec3<bool>(true, true, true)), true);
    var var_1 = ~(~(~(~global4[_wgslsmith_index_u32(123625u, 10u)]) & ~(~vec2<i32>(arg_1, arg_1))));
    let var_2 = var_0.x;
    global0 = 1u ^ (_wgslsmith_clamp_u32(24319u, _wgslsmith_mod_u32(46650u, ~0u), u_input.b.x ^ _wgslsmith_mult_u32(u_input.a, u_input.b.x)) << (~abs(29873u) % 32u));
    let var_3 = true;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * arg_1.x))))), _wgslsmith_f_op_f32(exp2(arg_0.d.x)), arg_0.c.x, -1010f);
    global4 = array<vec2<i32>, 10>();
    global1 = 6706i;
    let var_1 = all(!vec3<bool>(false, -arg_0.b.x <= ~(-1i), true));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(func_2(func_2(Struct_1(vec3<f32>(1215f, arg_1.x, -1457f), arg_0.b, arg_0.a, var_0.wwx, vec2<f32>(arg_1.x, -336f)), 2147483647i), abs(-19771i)), -13681i).e.x), 481f));
    return func_2(arg_0, abs(~(~min(arg_0.b.x, arg_0.b.x))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec3<u32> {
    let var_0 = global4[_wgslsmith_index_u32(u_input.b.x, 10u)];
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.wz)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1223f)), arg_0.yy))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), -367f)));
    global2 = array<Struct_2, 1>();
    let var_3 = func_3(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, -900f, -1345f))), ~(~vec4<i32>(arg_1, var_1, var_0.x, arg_1)), arg_0.zxy, arg_0.xzx, var_2), var_1), arg_0);
    return ~firstLeadingBit(select(~vec3<u32>(0u, u_input.b.x, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.a), vec3<u32>(u_input.a, u_input.b.x, 42656u), vec3<u32>(26026u, 4294967295u, 4294967295u)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))) << (vec3<u32>(~16454u, 77677u, u_input.a) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1564f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1351f - 789f)))), ~func_1(vec4<f32>(_wgslsmith_div_f32(254f, 990f), _wgslsmith_f_op_f32(-480f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1236f), _wgslsmith_f_op_f32(865f + -529f)), -_wgslsmith_mod_i32(-19556i, -1i)));
}

