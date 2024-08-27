struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> bool {
    global0 = vec2<bool>(true, true);
    let var_0 = Struct_1(!global1.a);
    global0 = !select(vec2<bool>(var_0.a.x, true), select(var_0.a, !vec2<bool>(global0.x, true), all(!vec3<bool>(global1.a.x, false, false))), vec2<bool>(true, true));
    let var_1 = ~(_wgslsmith_mult_u32(u_input.b.x, u_input.a.x | u_input.b.x) >> (~1u % 32u));
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = !arg_0.a.x;
    var var_1 = arg_0;
    var var_2 = !var_1.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(770f, -511f, -535f) - vec3<f32>(-412f, -1000f, 106f)), vec3<f32>(-1949f, -965f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1698f, 883f, 126f)))))))));
    global1 = Struct_1(!(!select(var_1.a, global1.a, any(var_1.a))));
    return false;
}

fn func_1(arg_0: f32, arg_1: f32) -> f32 {
    global1 = Struct_1(global1.a);
    global0 = select(vec2<bool>(func_2(), select(!global1.a.x, true, !func_3(Struct_1(global1.a), vec2<i32>(0i, 63926i), Struct_1(global1.a)))), !global1.a, global0.x);
    let var_0 = vec2<bool>(reverseBits(1i) <= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 42690i) << (u_input.a.xy % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(1i, -2147483647i))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(18144i, 2147483647i), false), -vec2<i32>(0i, 11944i), _wgslsmith_sub_vec2_i32(vec2<i32>(-13991i, -1i), vec2<i32>(0i, -1i)))), global0.x);
    var var_1 = global1.a;
    let var_2 = ~max(~1u, 4955u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_1)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(any(vec2<bool>(select(arg_0.x, true, false), false)), true));
    global0 = global1.a;
    return Struct_1(vec2<bool>(any(vec2<bool>(true, true)) == false, any(select(global1.a, select(vec2<bool>(false, false), arg_0, vec2<bool>(false, arg_2.a.x)), !arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<bool>(true, false), vec4<u32>(20766u, abs(_wgslsmith_div_u32(u_input.a.x, 0u)) ^ _wgslsmith_mod_u32(~4294967295u, ~88803u), u_input.a.x, u_input.a.x), Struct_1(!(!global1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(516f, 1677f))), _wgslsmith_f_op_f32(f32(-1f) * -1056f), _wgslsmith_f_op_f32(-316f - 551f))));
    var var_1 = Struct_1(vec2<bool>(true, any(!(!var_0.a))));
    let var_2 = Struct_1(vec2<bool>(!global1.a.x, _wgslsmith_sub_u32(47842u, u_input.a.x) >= 0u));
    global0 = !var_1.a;
    var_0 = func_4(!var_1.a, reverseBits(u_input.a), var_2, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))));
    global1 = func_4(vec2<bool>(func_2(), true), countOneBits(~(~u_input.a)), var_2, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(268f * -751f), -1229f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1659f + -295f), _wgslsmith_f_op_f32(trunc(710f))))), _wgslsmith_f_op_f32(f32(-1f) * -1759f), _wgslsmith_f_op_f32(1164f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1125f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-30841i, countOneBits(~firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a.zxx, u_input.b.xyz))), vec2<i32>(-16047i, 20112i));
}

