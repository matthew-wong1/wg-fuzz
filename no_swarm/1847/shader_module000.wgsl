struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: Struct_1 = Struct_1(vec4<u32>(55129u, 15331u, 4294967295u, 8450u));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 1u, 0u, 40815u));

var<private> global2: array<vec3<i32>, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    return 1f;
}

fn func_2() -> f32 {
    var var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), (_wgslsmith_f_op_f32(func_3(Struct_1(u_input.d), -75285i)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1573f - -964f), -1754f))) | all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), true)));
    var var_1 = Struct_1(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.b) >> (u_input.d % vec4<u32>(32u)), global0.a, ~vec4<u32>(u_input.d.x, global1.a.x, u_input.e, global1.a.x)), u_input.d, select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, false, false)))));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(var_1.a.x, 7117u), u_input.d.x, _wgslsmith_mult_u32(firstLeadingBit(firstTrailingBit(46694u)), var_1.a.x), var_1.a.x));
    let var_3 = u_input.a.yz;
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(63150u, _wgslsmith_dot_vec3_u32(vec3<u32>(34965u, 4294967295u, global1.a.x), vec3<u32>(var_2.a.x, 4294967295u, 4294967295u)), 4294967295u, firstLeadingBit(var_1.a.x)), firstTrailingBit(vec4<u32>(~4294967295u, ~0u, ~0u, ~2504u))));
    return -1419f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_u32(~(~countOneBits(vec4<u32>(28960u, 4294967295u, u_input.e, 35682u))), ~vec4<u32>(4294967295u, select(global1.a.x << (global0.a.x % 32u), 19396u, true), ~(~global1.a.x), 0u));
    var var_1 = abs(arg_0.a);
    var var_2 = -(~global2[_wgslsmith_index_u32(4294967295u, 27u)]);
    let var_3 = arg_0;
    let var_4 = 37999i;
    return arg_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = arg_1;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(-370f)), _wgslsmith_f_op_f32(-1000f + -529f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(365f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -985f) - -130f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(~vec4<u32>(44824u, 29443u, 0u, 8699u)), vec2<f32>(_wgslsmith_f_op_f32(func_2()), -1250f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(838f * 1346f), 1f))))));
    let var_2 = Struct_1(~(~(~(~vec4<u32>(u_input.d.x, 59607u, u_input.d.x, 24383u)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2539f)) - -781f), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(func_3(arg_1, 1i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(func_3(var_2, 4901i)), -115f, -142f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -1721f, var_1.x, -1110f), vec4<f32>(178f, 521f, 738f, -306f), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, -808f, -1000f, -537f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -832f, -471f, var_1.x) * vec4<f32>(var_1.x, 791f, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -1679f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1231f, var_1.x, var_1.x, -481f))))));
    var var_3 = !select(select(vec3<bool>(true, true, all(vec4<bool>(false, true, false, true))), vec3<bool>(false, true, u_input.a.x <= 0i), vec3<bool>(true, all(vec2<bool>(false, true)), any(vec2<bool>(false, true)))), select(vec3<bool>(false, false, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), false)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(~select(vec4<u32>(var_2.a.x, 0u, global1.a.x, var_0.a.x), global1.a, true)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(542f, 1600f) + var_1.xy), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.zx + var_1.zw))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) * _wgslsmith_f_op_f32(-var_1.x)), 1009f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a.x, -24641i), Struct_1(global1.a), u_input.d.x)) * _wgslsmith_f_op_f32(func_4(Struct_1(global1.a), vec2<f32>(1582f, -1000f), _wgslsmith_f_op_f32(-972f + -961f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(vec4<u32>(u_input.b, u_input.e, 4294967295u, 1u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(475f, -1721f))), -1045f))), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -177f), 1506f, _wgslsmith_f_op_f32(func_4(Struct_1(vec4<u32>(0u, global0.a.x, 1u, 4294967295u)), vec2<f32>(-811f, -921f), -1760f)) == -209f)) > _wgslsmith_f_op_f32(func_1(~vec2<i32>(1i, -44232i), Struct_1(min(global0.a, vec4<u32>(global1.a.x, 1u, 4294967295u, u_input.b))), ~(~global0.a.x))));
    global1 = Struct_1(firstTrailingBit(global1.a));
    let var_1 = 1i;
    global1 = Struct_1(~(~select(u_input.d, ~vec4<u32>(71754u, 11719u, 0u, global1.a.x), !vec4<bool>(false, true, true, var_0.x))));
    var var_2 = Struct_1((vec4<u32>(global1.a.x, global0.a.x, 4294967295u, 55u ^ global1.a.x) << (vec4<u32>(4294967295u << (0u % 32u), min(global0.a.x, 15779u), u_input.b, _wgslsmith_mod_u32(0u, global1.a.x)) % vec4<u32>(32u))) << (global0.a % vec4<u32>(32u)));
    global2 = array<vec3<i32>, 27>();
    global2 = array<vec3<i32>, 27>();
    var var_3 = all(!(!select(!var_0.yx, !var_0.xy, all(var_0.yy))));
    var var_4 = Struct_1(_wgslsmith_div_vec4_u32(u_input.d, var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(-1050f, -572f))));
}

