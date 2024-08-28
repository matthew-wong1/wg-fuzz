struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = !vec2<bool>(all(vec3<bool>(u_input.b.x < 87205i, false, 1i < u_input.b.x)), true);
    var var_2 = arg_0.a;
    let var_3 = Struct_2(_wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b.x, 36639i), vec2<i32>(-2147483647i, u_input.b.x), u_input.b.xy), abs(_wgslsmith_div_vec2_i32(vec2<i32>(10683i, u_input.b.x), -u_input.b.zy))));
    var_2 = ~(~arg_1.a);
    return !any(select(vec4<bool>(true, !var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, true)));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = vec2<bool>(true, any(vec3<bool>(select(any(vec4<bool>(false, false, false, false)), true, true), true, true)));
    var_0 = vec2<bool>(arg_0.a > (0u << (~(u_input.c.x >> (u_input.d % 32u)) % 32u)), ~0u != ~u_input.a.x);
    var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(arg_0, arg_0)), !select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), false), 0i == _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.b.x)), select(!(!vec2<bool>(false, var_0.x)), vec2<bool>(all(vec4<bool>(var_0.x, true, true, var_0.x)), false & var_0.x), select(!vec2<bool>(true, var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(true, true)), vec2<bool>(var_0.x, var_0.x))), !select(!vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, true), vec2<bool>(false, true))), vec2<bool>(var_0.x, true), var_0.x);
    let var_1 = Struct_1(1675u & _wgslsmith_dot_vec4_u32(max(u_input.c, u_input.c), vec4<u32>(arg_0.a, 4294967295u, reverseBits(0u), _wgslsmith_sub_u32(u_input.c.x, 0u))));
    let var_2 = -588f;
    return select(!select(vec2<bool>(false, true), !(!vec2<bool>(false, var_0.x)), var_0.x || true), select(select(select(vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, false), vec2<bool>(false, true)), !select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), var_0.x), var_0.x == any(vec4<bool>(var_0.x, var_0.x, var_0.x, true))), select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), vec2<bool>(var_0.x, true)), !select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x)), true), select(vec2<bool>(false, u_input.b.x >= u_input.b.x), !vec2<bool>(var_0.x, var_0.x), any(vec3<bool>(false, var_0.x, true)))), var_0.x);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<u32>) -> bool {
    var var_0 = select(!(!select(func_2(Struct_1(1u)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))), select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(func_2(Struct_1(u_input.a.x)).x, true), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), false);
    var var_1 = Struct_2(u_input.b.zz);
    var var_2 = ~(~abs(arg_2.wxy));
    var_0 = !(!select(vec2<bool>(true, select(true, false, true)), vec2<bool>(true, !var_0.x), vec2<bool>(!var_0.x, var_0.x)));
    var var_3 = firstTrailingBit(8540u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f + -575f) + 866f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2371f, 428f)) - 394f), true || func_1(18883u, vec4<f32>(1646f, -198f, -579f, 706f), vec4<u32>(u_input.d, u_input.a.x, u_input.e.x, 0u)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-793f)), _wgslsmith_f_op_f32(-113f - 348f)))))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(1u, ~0u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1768f, _wgslsmith_f_op_f32(f32(-1f) * -1076f), any(vec3<bool>(false, true, true))))));
    var var_3 = _wgslsmith_f_op_f32(-1458f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-718f, -496f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(453f * 1029f) + 979f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1000f + -947f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(1f)), ~(~u_input.d) | countOneBits(_wgslsmith_mult_u32(86527u ^ var_1.a, 1u)));
}

