struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = u_input.a.x & (abs(arg_3.a) << (~_wgslsmith_sub_u32(~u_input.a.x, ~1u) % 32u));
    var_1 = arg_3.a;
    var var_2 = Struct_1(~(~4294967295u | u_input.a.x), 832f);
    var var_3 = arg_0;
    return ~var_3.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0.a;
    var_0 = _wgslsmith_div_u32(func_3(arg_1, arg_1, ~arg_3.wyw, Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.a, arg_1.a), arg_1.a), -721f)), 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) + vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -547f)), arg_2), arg_2));
    return arg_1;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(18516u, _wgslsmith_f_op_f32(trunc(-702f)));
    let var_1 = vec2<u32>(~abs(arg_2.a), 1u);
    var var_2 = func_2(Struct_1(_wgslsmith_dot_vec3_u32(~(u_input.a >> (u_input.a % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 1u, arg_3.a), vec3<u32>(96784u, 4294967295u, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(abs(arg_3.b))))), var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b, -1000f), vec2<f32>(arg_3.b, arg_3.b)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, var_0.b))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.b, 754f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 1282f) - vec2<f32>(456f, arg_2.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1373f, 265f)))))), firstTrailingBit(reverseBits(~vec4<i32>(arg_1, arg_1, arg_1, -44704i))));
    var var_3 = abs(~var_2.a);
    var_2 = Struct_1(~23422u, -227f);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(reverseBits(22978u), ~(~1u), ~u_input.a.x, u_input.a.x) & (~abs(max(vec4<u32>(20615u, 4294967295u, u_input.a.x, 10667u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x))) ^ ~vec4<u32>(~2903u, ~18136u, ~20449u, 0u));
    var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, var_0.x, var_0.x, 1u)), vec4<u32>(1u, u_input.a.x, 79782u, var_0.x)), vec4<u32>(~u_input.a.x, ~var_0.x, func_1(vec2<bool>(false, false), 2147483647i, Struct_1(var_0.x, 287f), Struct_1(u_input.a.x, -167f)), 9303u)) >> (~(~(~vec4<u32>(var_0.x, 0u, 0u, var_0.x))) % vec4<u32>(32u));
    var var_1 = var_0.x;
    var var_2 = func_2(Struct_1(~min(1u, firstTrailingBit(u_input.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -560f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f)), true))), Struct_1(_wgslsmith_sub_u32(u_input.a.x, ~4294967295u) & _wgslsmith_add_u32(55425u, 42476u << (1u % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(774f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(938f, 769f, false)), -141f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(532f - 136f)))), ~(~vec4<i32>(1i, countOneBits(-19269i), _wgslsmith_mult_i32(-1i, 1i), countOneBits(-45821i))));
    var_0 = firstLeadingBit(~vec4<u32>(abs(countOneBits(4294967295u)), ~_wgslsmith_div_u32(4294967295u, u_input.a.x), ~(var_2.a | u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, var_2.a, var_0.x), ~var_0.xzy)));
    let var_3 = max(vec4<u32>(1u, var_2.a, ~_wgslsmith_mult_u32(var_0.x >> (20467u % 32u), 16288u), u_input.a.x), abs(vec4<u32>(~69875u, func_3(Struct_1(35814u, -889f), Struct_1(var_2.a, 1432f), vec3<i32>(8730i, -2147483647i, 1i), Struct_1(u_input.a.x, var_2.b)), ~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, u_input.a.x, 4294967295u), vec3<u32>(var_2.a, u_input.a.x, 12674u)))) | vec4<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(37257u, 88577u, var_2.a, var_2.a), vec4<u32>(4294967295u, 122771u, var_0.x, var_0.x))), ~_wgslsmith_add_u32(var_0.x, var_2.a), 11824u, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(_wgslsmith_mult_vec3_u32(u_input.a, var_0.wyz), min(var_3.xwx, vec3<u32>(21068u, var_2.a, 0u)), any(vec4<bool>(false, false, false, false))) ^ var_0.wxz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1402f, 565f))));
}

