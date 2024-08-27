struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: Struct_2 = Struct_2(1105f, vec3<u32>(4294967295u, 5718u, 31573u));

var<private> global2: u32 = 1u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<u32>(64087u, 36489u, 0u));
    let var_0 = max(-24157i, -(3078i | u_input.e));
    global1 = Struct_2(_wgslsmith_f_op_f32(global1.a - global1.a), global1.b);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 861f)), vec2<f32>(-1000f, global1.a), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a, 253f), vec2<f32>(global1.a, global1.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, -413f) * vec2<f32>(216f, global1.a))))))), global1.a != global1.a, global1.a);
    global0 = array<vec2<i32>, 3>();
    return 1414f;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global1 = Struct_2(124f, _wgslsmith_mod_vec3_u32(~max(global1.b, vec3<u32>(u_input.b.x, 897u, global1.b.x)) & u_input.b, u_input.b));
    var var_0 = Struct_3(global1.b.x, -_wgslsmith_mod_vec3_i32(select(abs(vec3<i32>(u_input.a, u_input.c, 43769i)), vec3<i32>(1i, 1i, 2147483647i), vec3<bool>(true, false, true)), vec3<i32>(abs(u_input.e), 7554i, -u_input.a)));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(u_input.b.zx | global1.b.xx)))), vec3<u32>(11867u, var_0.a, ~(1u | _wgslsmith_mod_u32(u_input.b.x, 4294967295u))));
    let var_1 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.a, -1021f, all(vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.b.yz))))), _wgslsmith_f_op_f32(round(1f)));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -689f) * _wgslsmith_f_op_f32(round(528f)))))))));
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_sub_vec3_u32(u_input.b, ~select(vec3<u32>(var_0.a, 0u, u_input.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, var_0.a, global1.b.x), vec3<u32>(var_0.a, 0u, global1.b.x)), all(vec3<bool>(false, true, false)))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<u32>) -> Struct_3 {
    global1 = func_2(vec4<f32>(1f, arg_2, _wgslsmith_f_op_f32(max(arg_2, -1945f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1138f)))))));
    global0 = array<vec2<i32>, 3>();
    let var_0 = vec4<bool>(!(!(global1.b.x > 7238u)) || !select(true, false, false), all(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), all(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), true)), false);
    return Struct_3(~reverseBits(global1.b.x), -(vec3<i32>(firstLeadingBit(2147483647i), ~(-2147483647i), -arg_1.x) << (~select(vec3<u32>(4294967295u, 28740u, arg_3.x), vec3<u32>(4294967295u, 1u, 100460u), var_0.x) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_add_u32(global1.b.x, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(44411u, 47944u, 1u, 25990u), vec4<u32>(19421u, 4294967295u, global1.b.x, u_input.d)))), vec3<i32>(u_input.e, u_input.e, 1i), -1000f, ~vec3<u32>(max(u_input.b.x, 0u), u_input.d | u_input.b.x, u_input.d | global1.b.x) ^ global1.b);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~(u_input.b.zz >> (vec2<u32>(1u, u_input.d) % vec2<u32>(32u))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1018f + 1f), -846f))), ~(~u_input.b) ^ vec3<u32>(global1.b.x, 4294967295u, ~61233u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~1i, _wgslsmith_mod_i32(1i, u_input.a)) | (global0[_wgslsmith_index_u32(31118u, 3u)] & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, 44651i), var_0.b.yx)), vec3<f32>(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(f32(-1f) * -807f)), any(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f - global1.a))), _wgslsmith_f_op_f32(1892f + -303f)));
}

