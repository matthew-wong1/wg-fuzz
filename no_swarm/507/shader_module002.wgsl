struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = 1246f;
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_1 = !(!(!vec4<bool>(all(vec3<bool>(false, arg_2.d, false)), any(vec3<bool>(true, arg_2.d, arg_2.d)), true, any(vec3<bool>(arg_2.d, arg_3, false)))));
    var var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(1u), 5u)] + _wgslsmith_f_op_f32(trunc(arg_0)))))));
}

fn func_2() -> Struct_2 {
    let var_0 = !(!(countOneBits(~1u) > _wgslsmith_clamp_u32(abs(1u), u_input.a.x, countOneBits(0u))));
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    let var_1 = abs(~firstTrailingBit(vec3<i32>(1i, 1i, 1i)) ^ vec3<i32>(~(~(-5547i)), -2147483647i, -(~(-2147483647i))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(-937f, global0[_wgslsmith_index_u32(u_input.d.x, 5u)], true)), _wgslsmith_mult_vec3_u32(abs(u_input.d), u_input.a.xxy), Struct_2(Struct_1(-1655f), Struct_1(global0[_wgslsmith_index_u32(45598u, 5u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), all(vec4<bool>(false, var_0, var_0, true))), var_0 || var_0))), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.c.x, 5u)])), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -260f)), true);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> vec2<bool> {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_0 = func_2();
    global0 = array<f32, 5>();
    return vec2<bool>(var_0.d, false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_0 = Struct_1(arg_1.x);
    var var_1 = arg_3.a;
    var var_2 = u_input.d.x;
    return Struct_1(_wgslsmith_f_op_f32(step(-2078f, var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 5u)])) + -1000f)), func_4(select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a.wxx), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(~u_input.c.x, 5u)], global0[_wgslsmith_index_u32(35230u, 5u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(0u, 5u)], 394f), vec2<f32>(-168f, 114f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], -910f, global0[_wgslsmith_index_u32(26019u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)]))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(34844u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 745f, global0[_wgslsmith_index_u32(u_input.c.x, 5u)])))), func_2()), Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.c.x, 5u)] * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -620f))))), (select(countOneBits(-21368i), 2147483647i, true) << ((25641u >> (~u_input.d.x % 32u)) % 32u)) < firstTrailingBit(1i));
    global0 = array<f32, 5>();
    var var_1 = func_2().a;
    var var_2 = _wgslsmith_add_u32(u_input.c.x, 4294967295u << (u_input.b % 32u));
    global0 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-733f, vec3<u32>(min(1u | ~u_input.b, 4294967295u), u_input.c.x, ~(u_input.c.x | 1u) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 39007u, u_input.a.x), vec4<u32>(6743u, u_input.b, 1u, 15509u)) | _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.d.zx))), _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, countOneBits(2147483647i)), min(_wgslsmith_div_i32(-1i, -67868i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -9853i, -1i), vec3<i32>(0i, -2147483647i, -2147483647i)))) | -1i);
}

