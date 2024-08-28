struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(41988i, -1i, 0i, 28172i, 0i, 32655i);

var<private> global1: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 446f)))) - 456f));
    return !(all(select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(arg_0.b.x, global1.x), arg_0.b), arg_0.b, arg_0.c.xy)) && false);
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(u_input.b.x, select(!(!vec2<bool>(true, global1.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, global1.x), vec2<bool>(true, false), vec2<bool>(false, false)), !vec2<bool>(global1.x, false)), select(!vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), u_input.a.x < 17020u)), vec4<bool>(global1.x, true != !global1.x, func_3(Struct_1(u_input.b.x, vec2<bool>(global1.x, false), vec4<bool>(global1.x, global1.x, true, false))), global1.x)), _wgslsmith_f_op_f32(floor(236f)));
    var var_1 = ~global0[_wgslsmith_index_u32(9341u, 6u)];
    var var_2 = Struct_2(var_0.a, 661f);
    var var_3 = !(!(!(var_2.a.a <= _wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.xy))));
    let var_4 = select(!var_2.a.c, select(!var_2.a.c, var_0.a.c, !(!select(var_2.a.c, var_2.a.c, false))), select(select(var_2.a.c, !select(vec4<bool>(false, global1.x, true, false), vec4<bool>(global1.x, global1.x, true, var_2.a.b.x), var_0.a.c), vec4<bool>(var_0.a.b.x, arg_0.x <= global0[_wgslsmith_index_u32(11390u, 6u)], true, false)), vec4<bool>(global1.x, ~var_2.a.a < 0u, true, var_2.a.b.x), var_2.a.b.x));
    return var_4.zw;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global1 = vec2<bool>(false, arg_1.c.x);
    var var_0 = !select(arg_0.xyy, arg_2.a.c.xxz, !arg_1.b.x);
    var var_1 = _wgslsmith_dot_vec4_u32(abs(u_input.b), u_input.b | _wgslsmith_clamp_vec4_u32(~(~u_input.b), u_input.b, vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(13935u, 4739u), 4747u, firstTrailingBit(u_input.d))));
    global1 = !select(func_2(~firstTrailingBit(u_input.e)), vec2<bool>(any(arg_1.c.wwz), arg_0.x), !(_wgslsmith_f_op_f32(select(1028f, arg_2.b, true)) <= _wgslsmith_f_op_f32(round(-272f))));
    global0 = array<i32, 6>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-232f)), _wgslsmith_div_f32(575f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1117f)))), -610f);
    global1 = select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 6u)] == global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global1.x), vec2<bool>(!global1.x, true), !global1.x | func_1(vec4<bool>(true, global1.x, global1.x, true), Struct_1(u_input.a.x, vec2<bool>(global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, false)), Struct_2(Struct_1(21576u, vec2<bool>(true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), var_0.x))), select(!select(vec2<bool>(global1.x, false), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), true), var_0.x <= 819f), !vec2<bool>(global1.x | false, func_3(Struct_1(u_input.a.x, vec2<bool>(global1.x, global1.x), vec4<bool>(true, global1.x, false, global1.x)))), vec2<bool>(func_3(Struct_1(u_input.b.x, vec2<bool>(true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false))), true)), true);
    let var_1 = u_input.e;
    let var_2 = _wgslsmith_f_op_f32(var_0.x - -774f);
    var var_3 = min(u_input.a.x, ~(~u_input.b.x & ~u_input.a.x)) ^ 27756u;
    let var_4 = Struct_1(countOneBits(u_input.c), select(select(vec2<bool>(false, global1.x), vec2<bool>(true, global1.x), global1.x), !(!vec2<bool>(global1.x, true)), global1.x), vec4<bool>(all(!(!vec3<bool>(global1.x, true, global1.x))), !func_1(vec4<bool>(global1.x, global1.x, global1.x, global1.x), Struct_1(u_input.d, vec2<bool>(global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, true)), Struct_2(Struct_1(u_input.a.x, vec2<bool>(global1.x, true), vec4<bool>(false, global1.x, global1.x, global1.x)), var_2)) != !global1.x, any(!(!vec4<bool>(global1.x, global1.x, false, global1.x))), global1.x));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-932f, var_2), vec2<f32>(var_2, var_0.x), vec2<bool>(global1.x, global1.x)))), vec2<f32>(1f, -1000f))));
    let var_6 = Struct_2(var_4, -1033f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(-68774i, -2147483647i) >> (firstTrailingBit(u_input.a.yx) % vec2<u32>(32u))), -vec2<i32>(-global0[_wgslsmith_index_u32(37814u, 6u)], var_1.x)), ~(~(~(~vec2<u32>(var_4.a, 105739u)))));
}

