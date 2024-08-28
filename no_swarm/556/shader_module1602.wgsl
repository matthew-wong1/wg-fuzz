struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec4<f32> {
    let var_0 = ~vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.d ^ select(_wgslsmith_sub_u32(1u, u_input.c), firstLeadingBit(u_input.c), true));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.d, 14u)];
    let var_2 = vec2<u32>(_wgslsmith_add_u32(4294967295u, var_0.x), ~reverseBits(u_input.b));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1422f * var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * -779f))), var_1.b.x))) + var_1.b);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.b.zw * vec2<f32>(-162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1422f)))))));
    global0 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0))), 1000f)));
    let var_2 = false;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -270f), arg_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(178f * var_0.x), var_1.x, _wgslsmith_f_op_f32(step(-1682f, var_0.x)), 854f))));
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> i32 {
    var var_0 = vec4<bool>(!all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0), arg_0), vec3<bool>(arg_0, arg_0, false), false)), true, true, true);
    let var_1 = Struct_1(func_2(global0[_wgslsmith_index_u32(~firstLeadingBit(abs(u_input.b)), 14u)], firstTrailingBit(15696u), true, ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, -2147483647i)), vec3<i32>(-1i, -4291i, 1i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + -1294f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))), -323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f)))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_1 - var_1.b.x)))), select(!var_0.zyx, var_0.zzy, false == arg_0), vec3<i32>(~1i, min(reverseBits(i32(-1i) * -23413i), 1i), -5296i), _wgslsmith_f_op_vec2_f32(-arg_2), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.b)) - var_1.b))));
    let var_3 = var_1.a;
    var var_4 = ~var_3;
    return abs(var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(abs(max(~(~vec2<u32>(1u, 0u)), ~vec2<u32>(u_input.a, u_input.b) | (vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u))))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4294967295u), select(vec2<u32>(1u, 10571u), vec2<u32>(u_input.b, 28744u), vec2<bool>(false, true)))), true);
    let var_1 = global0[_wgslsmith_index_u32(~var_0.x, 14u)];
    let var_2 = var_1.b.yyz;
    let var_3 = vec3<u32>(var_0.x << (1u % 32u), 4294967295u, 35572u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, vec4<i32>(~select(-72528i, func_1(false, -582f, var_1.b.xz), true), _wgslsmith_sub_i32(1i, -24275i), -38990i, -min(func_1(false, var_2.x, vec2<f32>(268f, var_1.b.x)), min(0i, -1i))), vec4<i32>(-2147483647i, reverseBits(-2147483647i << (var_1.a % 32u)), 1i & func_1(true, 170f, vec2<f32>(231f, var_1.b.x)), countOneBits(2147483647i)) & -vec4<i32>(9980i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 19009i, -1i, 0i), vec4<i32>(-19155i, -2147483647i, -11751i, -24948i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 8743i, 1i, -1i), vec4<i32>(1i, -2147483647i, 35556i, 0i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.x, var_1.b.x, -2414f))))))), var_1.b.www, !vec3<bool>(true, var_2.x <= -1411f, all(vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, var_1.b.x))) - var_1.b.x))));
}

