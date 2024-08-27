struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, -1000f, -314f, -134f)) + vec4<f32>(1000f, 1527f, 1457f, -1868f))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1477f + -1000f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(643f))), 1461f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1381f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1498f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(682f, -887f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, arg_2, arg_2, arg_2))) * vec4<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(arg_1), Struct_3(false), Struct_3(false)))))));
    let var_1 = Struct_2(i32(-1i) * -1i, arg_0, arg_0, Struct_1(-1i), arg_0);
    let var_2 = var_1;
    let var_3 = var_1.c.a;
    let var_4 = _wgslsmith_f_op_f32(-1870f * var_0.x) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(930f, _wgslsmith_f_op_f32(-937f * -1553f))))));
    return true;
}

fn func_1(arg_0: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(520f)) + _wgslsmith_f_op_f32(-901f - _wgslsmith_f_op_f32(step(3149f, -458f)))) * 668f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-364f + -1000f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-722f)) - 1550f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(962f * -642f), _wgslsmith_f_op_f32(-330f - -233f), func_2(Struct_1(-2147483647i), false, -485f))))));
    var var_1 = Struct_1(-(u_input.b ^ u_input.a));
    var var_2 = abs(firstLeadingBit(max(vec4<u32>(102640u, 1u, 34704u, 1u), ~vec4<u32>(4294967295u, 76552u, 25898u, 0u)))) << (~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 48062u, 129458u, 22885u), vec4<u32>(51628u, 36973u, 0u, 34322u)), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(20478u, 1u, 0u, 0u), vec4<u32>(23783u, 10191u, 16221u, 13345u)), 0u)) % vec4<u32>(32u));
    return select(!vec4<bool>(any(vec2<bool>(true, true)), func_2(Struct_1(-2147483647i), func_2(Struct_1(-37589i), true, -484f), _wgslsmith_f_op_f32(-734f - -1523f)), false, all(vec3<bool>(true, false, false)) | true), select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false)), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))), !vec4<bool>(select(true, false, false), true, true, true)), !(!(all(vec3<bool>(false, true, false)) && false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(2147483647i, _wgslsmith_sub_i32(countOneBits(~u_input.a), -42399i) | _wgslsmith_sub_i32(reverseBits(-2147483647i), -25060i));
    var var_1 = any(!func_1(vec4<i32>(-1i, var_0, -10583i, var_0) << (~vec4<u32>(0u, 17211u, 37520u, 0u) % vec4<u32>(32u))));
    var_1 = true;
    var_1 = !(!(1u >= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 17363u), ~vec2<u32>(4294967295u, 13728u))));
    let var_2 = true;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(true), Struct_3(true), Struct_3(any(vec2<bool>(var_2, false))))).x) > _wgslsmith_f_op_f32(f32(-1f) * -1519f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(99828u, 82148u, 11249u), vec3<u32>(1u, 17239u, 0u)) >> (~1u % 32u)), ~(~(~8596u))), vec4<u32>(1u, ~1u, select(select(4294967295u, 53159u, all(vec3<bool>(false, false, true))), 19447u, true), 1u), ~(-_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 1i, 2147483647i, 0i)), select(vec4<i32>(-28916i, 2147483647i, 1i, var_0), vec4<i32>(-2147483647i, u_input.b, var_0, -1i), true))), _wgslsmith_div_i32(~1008i, var_0), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(true), Struct_3(any(func_1(vec4<i32>(1i, var_0, u_input.b, var_0)))), Struct_3(var_2))).x);
}

