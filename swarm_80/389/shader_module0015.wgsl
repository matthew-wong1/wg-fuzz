struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = 0u;
    var var_1 = arg_0.a;
    global0 = array<u32, 12>();
    let var_2 = u_input.d;
    var var_3 = vec3<bool>(true, arg_0.a, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1031f), -538f) - -992f))) - 422f);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = ~(~firstLeadingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 2147483647i, u_input.d, 0i), vec4<i32>(u_input.d, 2147483647i, -2147483647i, 37703i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(501f, _wgslsmith_f_op_f32(func_1(var_0, var_0)))), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1746f, arg_1.x))))));
    global0 = array<u32, 12>();
    return select(select(!(!select(vec4<bool>(false, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, false, var_0.a, arg_0.a), true)), !select(select(vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(true, var_0.a, false, var_0.a), arg_0.a), select(vec4<bool>(true, true, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(var_0.a, arg_0.a, false, arg_0.a)), true), vec4<bool>(select(global0[_wgslsmith_index_u32(6474u, 12u)] > 4294967295u, arg_1.x == 532f, true), true, arg_0.a, false)), select(vec4<bool>(false, all(!vec2<bool>(arg_0.a, false)), true, all(vec4<bool>(true, false, arg_0.a, var_0.a))), !(!vec4<bool>(true, false, arg_0.a, true)), var_0.a), vec4<bool>(false, arg_1.x != var_2.x, !var_0.a, any(select(vec3<bool>(var_0.a, false, false), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(var_0.a, true, false))) | !arg_0.a));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    global0 = array<u32, 12>();
    let var_0 = any(!func_3(Struct_1(all(vec4<bool>(true, true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(210f - -1000f), _wgslsmith_div_f32(-1000f, -413f))));
    var var_1 = _wgslsmith_f_op_f32(floor(1012f));
    var var_2 = Struct_1(select(var_0, var_0, true));
    let var_3 = Struct_1(true && select(var_0, true, !(!var_0)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1480f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-787f, -2484f)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -135f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 59722u;
    global0 = array<u32, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f)), -237f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(773f, 512f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1159f - 435f)), var_1.x, all(vec2<bool>(false, true))))), ~(u_input.b >> (firstLeadingBit(u_input.c.xzy) % vec3<u32>(32u))), select(-_wgslsmith_sub_vec3_i32(select(vec3<i32>(25105i, 21614i, -55642i), vec3<i32>(u_input.d, -1i, 53321i), vec3<bool>(false, false, true)), vec3<i32>(7533i, -17960i, 0i)), _wgslsmith_mod_vec3_i32(max(vec3<i32>(10285i, 0i, -2147483647i) >> (vec3<u32>(2588u, global0[_wgslsmith_index_u32(36726u, 12u)], 3831u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 0i, 2147483647i), vec3<i32>(u_input.d, 0i, u_input.d))), firstTrailingBit(vec3<i32>(1i, 2147483647i, u_input.d))), true == all(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1448f, var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(func_1(Struct_1(false), Struct_1(false))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 165f) * _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(-1000f, -906f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(-31987i, u_input.d, u_input.d)))))), (_wgslsmith_dot_vec4_u32(vec4<u32>(67196u, 50992u, u_input.a.x, global0[_wgslsmith_index_u32(1u, 12u)]), u_input.c) >= global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(21978u, 12u)], 12u)]) || false)));
}

