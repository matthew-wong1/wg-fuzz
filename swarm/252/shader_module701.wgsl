struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec2<u32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, 1000f, -1265f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-660f, 1000f, 1203f) - vec3<f32>(-1460f, -233f, 411f)))))), vec3<f32>(-576f, 277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(537f)), _wgslsmith_f_op_f32(-249f * -389f), true))))));
}

fn func_3(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = any(select(vec3<bool>(false, true, true), select(vec3<bool>(any(vec4<bool>(false, false, true, true)), select(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-arg_0.x) >= arg_0.x), any(vec4<bool>(all(vec4<bool>(true, true, true, false)), false, true, any(vec2<bool>(false, false))))));
    var var_1 = Struct_2(false);
    var_1 = Struct_2(true);
    var var_2 = u_input.a;
    var_1 = Struct_2(!(var_1.a | true));
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-572f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(-179f, 1085f, -1561f, 1197f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(269f, arg_0.x, 2085f, 429f))))))), any(!select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, false), !vec2<bool>(false, var_1.a))), false, !(!(!(var_1.a || var_1.a))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(~vec2<u32>(u_input.a, u_input.a))), vec3<f32>(arg_0, -299f, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(0u, u_input.a))).x, arg_0))));
    let var_1 = func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -917f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_vec3_f32(var_0.a.yww + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(988f, var_0.a.x, 888f) * var_0.a.zxy) + vec3<f32>(-243f, arg_0, var_0.a.x)))));
    var var_2 = u_input.a;
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-142f - var_1.a.x) + _wgslsmith_f_op_f32(arg_0 * -308f)) + _wgslsmith_f_op_f32(ceil(-432f))), _wgslsmith_f_op_f32(round(var_1.a.x)), -687f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_vec3_f32(func_2(~vec2<u32>(u_input.a, 4294967295u))).x)), var_1.c, !(var_1.b & (var_0.d || var_1.c)), true);
    var_2 = 0u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(reverseBits(8438u) <= u_input.a, _wgslsmith_f_op_f32(floor(-354f)) <= _wgslsmith_f_op_f32(min(345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-251f - 2029f)))), true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))));
    let var_1 = func_1(1024f);
    var_0 = vec4<bool>(var_1.d, true, (select(u_input.a, u_input.a, func_3(var_1.a.yyz).c) << (u_input.a % 32u)) >= _wgslsmith_dot_vec2_u32(~(~vec2<u32>(112093u, 16884u)), vec2<u32>(u_input.a, u_input.a)), true);
    var var_2 = firstTrailingBit(vec2<i32>(18689i, 1i));
    var var_3 = var_1;
    var_2 = select(vec2<i32>(var_2.x, abs(var_2.x)), reverseBits(select(_wgslsmith_div_vec2_i32(-vec2<i32>(-21646i, var_2.x), firstLeadingBit(vec2<i32>(var_2.x, var_2.x))), vec2<i32>(1i, 29601i) << ((vec2<u32>(40370u, u_input.a) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.yw)), vec2<bool>(var_3.b, true));
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a), _wgslsmith_f_op_vec4_f32(round(var_3.a))), var_3.a)), true, true, any(vec4<bool>(true, !select(true, false, false), var_3.c, func_3(var_1.a.xwx).c & var_3.d)));
    var_3 = var_1;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(~vec3<u32>(1u, u_input.a, 22497u)), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(0u, u_input.a, u_input.a) ^ vec3<u32>(4294967295u, 1u, 68247u))) >> ((vec3<u32>(_wgslsmith_clamp_u32(66958u, 49300u, u_input.a), _wgslsmith_mod_u32(64388u, u_input.a), u_input.a ^ 33178u) | countOneBits(vec3<u32>(0u, 0u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec3<u32>(32u)));
}

