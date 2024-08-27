struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, -1000f);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = ~(_wgslsmith_mult_u32(~(~global0.a), global0.a) & _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a, global1.a, global0.a, global1.a), vec4<u32>(firstLeadingBit(1u), global1.a, select(1u, global0.a, false), 4294967295u)));
    global0 = Struct_1(99164u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, -468f) - -1253f)) + global1.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-global1.b), 1f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.b)), global0.b, global1.a >= global1.a))), -1000f, global0.b));
    var var_2 = false;
    let var_3 = Struct_1(_wgslsmith_div_u32(global1.a, _wgslsmith_div_u32(1u, global1.a)), _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -157f))))));
    return true;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    global1 = Struct_1(u_input.a.x ^ 49977u, _wgslsmith_f_op_f32(sign(2257f)));
    global1 = arg_1;
    let var_0 = false;
    let var_1 = arg_0;
    global0 = arg_1;
    return select(!select(select(select(vec2<bool>(var_0, arg_0), vec2<bool>(var_1, var_0), var_1), select(vec2<bool>(var_1, false), vec2<bool>(false, true), vec2<bool>(var_0, false)), all(vec4<bool>(false, arg_0, true, true))), !vec2<bool>(var_0, var_1), select(select(vec2<bool>(var_0, true), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), vec2<bool>(true, arg_0), false)), vec2<bool>(!func_2(-2147483647i, -1i), true), vec2<bool>(firstTrailingBit(u_input.e.x) < global0.a, true));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = false;
    var var_1 = Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f), 1000f));
    let var_2 = var_0;
    global0 = Struct_1(~533u, _wgslsmith_f_op_f32(f32(-1f) * -1149f));
    var_1 = Struct_1(arg_0, 121f);
    return select(select(!(!vec2<bool>(var_0, false)), vec2<bool>(var_2, all(select(vec2<bool>(false, false), vec2<bool>(true, var_2), vec2<bool>(true, var_2)))), vec2<bool>(select(select(var_0, var_0, var_2), any(vec2<bool>(false, var_0)), false), true)), select(vec2<bool>(!(false | var_2), !func_2(1i, 32310i)), select(vec2<bool>(any(vec3<bool>(var_0, var_2, false)), false), !select(vec2<bool>(var_0, true), vec2<bool>(var_2, var_0), var_0), true), func_3(var_0, Struct_1(28995u, _wgslsmith_f_op_f32(var_1.b * -383f)), u_input.b << (~4294967295u % 32u))), var_0 || var_2);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = vec4<bool>(!var_0, all(select(!(!vec4<bool>(true, var_0, var_0, false)), vec4<bool>(all(vec3<bool>(true, false, true)), arg_0, true, var_0), select(select(vec4<bool>(arg_0, false, var_0, var_0), vec4<bool>(true, true, var_0, arg_0), vec4<bool>(false, var_0, var_0, true)), select(vec4<bool>(false, false, false, var_0), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, var_0, true, true)), select(arg_0, arg_0, true)))), false, !arg_0);
    global0 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-208f, global0.b))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, 681f, -338f, global0.b), vec4<f32>(global0.b, 224f, global1.b, global1.b)), vec4<f32>(1036f, global1.b, 2090f, global1.b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-111f, -552f, global0.b, global1.b) - vec4<f32>(global0.b, global1.b, global0.b, -292f)), vec4<f32>(global1.b, global0.b, -1000f, global1.b))), var_1)), vec4<f32>(_wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_f32(exp2(global0.b)), global0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b + -782f), _wgslsmith_f_op_f32(abs(global1.b))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    return 618f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(14722i);
    var var_1 = _wgslsmith_f_op_f32(func_4(all(vec2<bool>(all(vec2<bool>(false, false)), any(func_1(u_input.a.x)))), ~u_input.d, firstLeadingBit(_wgslsmith_clamp_vec3_i32(abs(firstLeadingBit(u_input.c)), -vec3<i32>(u_input.c.x, 59074i, 2147483647i), u_input.c))));
    let var_2 = ~(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(58624u, 30660u, 4294967295u, u_input.e.x), vec4<u32>(0u, 4294967295u, 0u, u_input.a.x)), ~vec4<u32>(20446u, 46190u, 46426u, global1.a)), vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 27268u), u_input.e.xx), 26864u, 1u)) << (global0.a % 32u));
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(var_2, u_input.a.x, 4294967295u, 1u)), max(vec4<u32>(23318u, 4294967295u, 17838u, global1.a), vec4<u32>(4294967295u, 16757u, 2418u, 1u)) ^ (vec4<u32>(16967u, u_input.a.x, u_input.a.x, 67279u) << (vec4<u32>(1u, global0.a, global0.a, 35287u) % vec4<u32>(32u)))) << (~2204u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, -695f))))));
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(11901i, -29875i, 32404i)), ~(u_input.d | -29449i), abs(i32(-1i) * -2147483647i))), ~24401i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b + global1.b), _wgslsmith_div_f32(366f, global1.b), global1.b)))), vec2<u32>(53473u, ~6996u));
}

