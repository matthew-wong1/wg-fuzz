struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(20296u);

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(114f, -1000f, -590f, 1153f), vec4<f32>(-752f, -321f, 367f, 1374f), vec4<f32>(1041f, -1023f, -1585f, -222f), vec4<f32>(166f, 859f, 1000f, -905f), vec4<f32>(248f, 873f, 527f, -456f));

var<private> global2: vec3<i32>;

var<private> global3: array<vec2<i32>, 20>;

var<private> global4: f32 = -790f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> vec2<f32> {
    var var_0 = (76407u & ~u_input.b) == _wgslsmith_mod_u32(global0.a, 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), vec3<f32>(-392f, -1728f, arg_1))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(-904f, arg_1), _wgslsmith_f_op_f32(arg_1 - arg_2)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1752f, arg_1, arg_1), vec3<f32>(-1486f, arg_1, 1976f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(630f, 763f, true)), -1000f, _wgslsmith_f_op_f32(floor(729f))))))));
    var var_2 = u_input.a;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-948f, _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -2307f)))), vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_mod_u32(0u, global0.a)), abs(global0.a) ^ 5251u), global0.a, _wgslsmith_sub_u32(countOneBits(1u | u_input.a), _wgslsmith_div_u32(u_input.a << (1u % 32u), ~17947u))), !all(vec3<bool>(true, true, true)) & true, u_input.b, !vec4<bool>(arg_1 > _wgslsmith_f_op_f32(round(var_1.x)), !any(vec4<bool>(true, true, false, false)), true, false));
    global1 = array<vec4<f32>, 5>();
    return _wgslsmith_f_op_vec2_f32(var_1.zy * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(409f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, -2387f)))))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(global2.x, u_input.d.x, 1i), -1548f, _wgslsmith_f_op_f32(f32(-1f) * -664f))) - vec2<f32>(-2458f, 390f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1808f, 144f), vec2<f32>(-1000f, 957f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, -899f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1075f, -896f)))))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a, 11811u, global0.a) | vec3<u32>(7002u, 25389u, arg_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0, 1u), vec3<u32>(4294967295u, u_input.b, global0.a), vec3<u32>(arg_0, 4294967295u, arg_0))), vec3<u32>(0u, 1u, global0.a), vec3<u32>(14146u, ~global0.a, 1u)), true, ~52108u, vec4<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), false)), true, -11624i > (_wgslsmith_dot_vec3_i32(u_input.e.wyz, vec3<i32>(42463i, global2.x, u_input.c)) << (global0.a % 32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(u_input.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_div_f32(2061f, -462f))), vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_0.a.x))))), var_0.b, !var_0.e.x, global0.a, var_0.e);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(~(u_input.e.zzz & vec3<i32>(-1i, 13846i, 100096i)), _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 839f))))).x, _wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-var_0.a.x)));
    var_0 = var_1;
    var var_3 = select(select(vec4<bool>(all(vec2<bool>(true, var_0.c)), select(true, var_0.c, var_1.e.x), any(var_1.e.zx), true | (var_0.a.x != 618f)), var_0.e, var_1.e), !(!var_0.e), !any(select(var_1.e.wx, select(var_0.e.yz, vec2<bool>(var_1.e.x, var_0.c), var_0.e.yz), false)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = any(!var_0.e.xyy);
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.yx);
}

