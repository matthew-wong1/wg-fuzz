struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(4294967295u, 4294967295u, 0u, 58823u), vec4<u32>(40074u, 0u, 0u, 64239u), vec4<u32>(29809u, 39558u, 4294967295u, 91131u), vec4<u32>(38240u, 2010u, 4294967295u, 1u), vec4<u32>(12320u, 4294967295u, 0u, 0u), vec4<u32>(48462u, 26955u, 21621u, 1u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>) -> f32 {
    global0 = select(vec2<bool>(false, _wgslsmith_f_op_f32(min(-1024f, arg_1.x)) < _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-arg_1.x))), !select(vec2<bool>(false != global0.x, all(vec4<bool>(global0.x, false, true, true))), select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), true), global0.x), !(true | (_wgslsmith_mult_u32(u_input.b, 23143u) <= 1u)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.yz));
    var var_1 = 264f;
    var_1 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) + var_0.a.x));
    global1 = array<vec4<u32>, 6>();
    return -1222f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!(!(!(!vec2<bool>(global0.x, false)))), select(vec2<bool>(global0.x, !(false & global0.x)), vec2<bool>(global0.x, true), true), false);
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -413f), -526f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -163f))), 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(323f, 681f), _wgslsmith_f_op_f32(ceil(-900f)), _wgslsmith_f_op_f32(534f + 438f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -961f), -1000f, _wgslsmith_f_op_f32(abs(644f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -748f), 845f, -1238f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz)));
    global1 = array<vec4<u32>, 6>();
    var var_2 = !vec4<bool>(any(select(!vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, false, global0.x)), false)), global0.x, all(!select(vec3<bool>(true, true, false), vec3<bool>(global0.x, true, true), false)), true);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -126f);
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(42149u, 4294967295u, 76717u), countOneBits(vec3<u32>(1u, u_input.c.x, u_input.b)))), _wgslsmith_f_op_f32(select(-222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstTrailingBit(vec3<i32>(-1i, -2147483647i, u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, 592f, 208f, -1284f))))), var_2.x)), ~vec2<i32>(2147483647i, 2147483647i));
}

