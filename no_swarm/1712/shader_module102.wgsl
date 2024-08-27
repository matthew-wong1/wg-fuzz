struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -413f;

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-1000f, -1264f), vec4<f32>(206f, 981f, 267f, -812f));

var<private> global4: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32((u_input.d & 37986u) >> (~u_input.d % 32u), u_input.d)), 4u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(global3.a.x)), global3.a.x);
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(countOneBits(min(reverseBits(2647u), ~u_input.d)), max(u_input.d, _wgslsmith_sub_u32(38317u, u_input.d)) << (158528u % 32u), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, ~_wgslsmith_add_u32(4294967295u, u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), min(vec2<u32>(4294967295u, u_input.d), vec2<u32>(u_input.d, 0u)))), vec3<u32>(~u_input.d, _wgslsmith_mod_u32(u_input.d & 0u, ~94259u), u_input.d)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, global3.b.x) + global3.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -251f)), -171f, global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(946f, 1926f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, -1064f, 1314f, global3.a.x))) - _wgslsmith_f_op_vec4_f32(min(global3.b, global3.b))))));
    let var_4 = var_3;
    return _wgslsmith_f_op_vec2_f32(max(var_3.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_4.b.zz))) - vec2<f32>(_wgslsmith_div_f32(454f, 1848f), _wgslsmith_div_f32(var_3.b.x, var_4.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1417f)) + _wgslsmith_f_op_vec2_f32(-var_4.b.xx))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a.x - -1000f), -736f));
    global4 = global3.a;
    var var_1 = Struct_2(global4.x, arg_0.x);
    var var_2 = Struct_2(927f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) - _wgslsmith_f_op_f32(-global3.a.x))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f * global3.a.x)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f * _wgslsmith_f_op_f32(859f - _wgslsmith_div_f32(-228f, 1786f)))));
    return _wgslsmith_f_op_vec2_f32(func_3());
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> f32 {
    var var_0 = u_input.a.xz;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(-1f), global4.x, _wgslsmith_f_op_f32(-global3.a.x)), u_input.d, ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, arg_0.x), arg_0)))));
    let var_1 = select(vec4<bool>(true, true, true, true), select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), !select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))), vec4<bool>(select(all(vec4<bool>(false, false, true, false)), u_input.d > firstTrailingBit(u_input.d), !any(vec4<bool>(false, false, true, true))), select(true, !(global3.a.x < global4.x), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), all(select(select(global2[_wgslsmith_index_u32(24246u, 4u)], vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(14400u, 4u)]), global2[_wgslsmith_index_u32(1u, 4u)], true)), all(vec2<bool>(true, true))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -1000f)))))));
    var var_3 = 2147483647i;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a.x)) * 1000f), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(u_input.d);
    let var_0 = Struct_1(global3.b.wz, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + global3.b.x) - -1885f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~vec2<u32>(0u, u_input.d), countOneBits(5549i))) - 1000f), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-global4.x)));
    let var_1 = -2147483647i;
    var var_2 = !(!any(select(global2[_wgslsmith_index_u32(0u, 4u)], vec3<bool>(false, false, false), true)) || all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.b))));
}

