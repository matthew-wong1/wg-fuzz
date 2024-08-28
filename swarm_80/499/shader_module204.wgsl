struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(671f);

var<private> global1: bool = true;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = select(select(vec4<bool>(any(vec2<bool>(false, false)), false, true, any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))), true), vec4<bool>(true, true, !all(vec4<bool>(true, true, true, true)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-283f + global0.a))), -199f) <= 1691f);
    var var_1 = _wgslsmith_div_f32(320f, global0.a);
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(step(680f, global0.a))), _wgslsmith_f_op_f32(516f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))))));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -890f)))), global0.a));
    let var_3 = 125672u != ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1u, 38739u, u_input.a), ~(~u_input.b));
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    global1 = !(!all(vec2<bool>(true, true))) & all(!func_3());
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.d.yx, ~countOneBits(u_input.d.yx));
    var var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = 45001u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -890f, arg_0.a, global0.a)))), vec4<f32>(var_2.a, _wgslsmith_f_op_f32(floor(936f)), _wgslsmith_f_op_f32(select(-488f, arg_0.a, true)), _wgslsmith_f_op_f32(sign(-1000f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(global0.a);
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f - 167f))), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-198f, arg_2.x, true)))), _wgslsmith_f_op_f32(arg_2.x + -1000f)) * _wgslsmith_f_op_vec4_f32(func_2(arg_0)));
    let var_1 = var_0.zw;
    global1 = true;
    let var_2 = 39715u >= select(_wgslsmith_add_u32(22228u, 21053u), max(~(~arg_1.x), arg_1.x), false);
    return Struct_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-915f * var_0.x) * -539f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_div_f32(-142f, 409f));
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), global0.a))), select(~select(u_input.b.zy, ~u_input.b.xw, vec2<bool>(true, true)), u_input.b.yw, !any(vec2<bool>(false, true)) == (select(false, false, false) && true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-674f, global0.a, global0.a))));
    global1 = all(vec3<bool>(!((-14879i & u_input.e) > (i32(-1i) * -15085i)), any(vec4<bool>(true, -976f > global0.a, all(vec3<bool>(true, false, false)), true)), true & all(vec4<bool>(false, true, false, false))));
    var_0 = func_1(Struct_1(var_0.a), firstTrailingBit(u_input.b.xw), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a, _wgslsmith_f_op_f32(var_0.a + -1000f), 1092f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-538f, 1000f, global0.a))))))));
    let var_1 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(abs(460f)))), _wgslsmith_add_vec2_u32(~(~u_input.b.ww), abs(min(vec2<u32>(1u, u_input.b.x), u_input.b.wy))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1159f, _wgslsmith_f_op_f32(round(156f)), _wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.a, 1471f, -483f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(694f, 323f, global0.a))))), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, 4294967295u) >> (~min(u_input.b.yy, vec2<u32>(u_input.a, u_input.b.x)) % vec2<u32>(32u)), ~(~vec2<u32>(0u, 42229u) & _wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.yw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_0.a, global0.a) - vec3<f32>(-846f, 920f, -937f))))))));
    var var_2 = func_1(var_1, firstTrailingBit(u_input.b.wy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1162f)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_1.a + 490f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(select(u_input.b.wyz, vec3<u32>(_wgslsmith_mult_u32(0u, 4294967295u), max(2008u, 9541u), _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.wx)), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.a, 4294967295u, 0u) & vec3<u32>(4294967295u, 12895u, 21714u)), ~countOneBits(u_input.b.wzx))), ~u_input.b.xy);
}

