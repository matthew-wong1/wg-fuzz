struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false)), Struct_4(Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, false)), Struct_4(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, false)), Struct_4(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, false)), Struct_4(Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, false)), Struct_4(Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, false, false)), vec4<bool>(false, false, true, true)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    return Struct_2(~(u_input.a.x >> ((_wgslsmith_div_u32(u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u)) % 32u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_mult_u32(~u_input.a.x, arg_1.a);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x >> (1u % 32u), 4294967295u) ^ u_input.a.zy, _wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(63778u, arg_1.a)) ^ countOneBits(vec2<u32>(0u, arg_1.a)), _wgslsmith_mod_vec2_u32(~(~u_input.a.zw), ~(~vec2<u32>(1u, u_input.a.x)))));
    var_0 = ~max(~firstTrailingBit(~u_input.a.x), ~firstLeadingBit(func_2(false).a));
    var_1 = ~reverseBits(4294967295u);
    global0 = array<Struct_4, 6>();
    return any(vec3<bool>(true, true, all(vec4<bool>(false, any(vec2<bool>(true, true)), true, any(vec3<bool>(false, false, false))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_1(vec4<bool>(all(vec2<bool>(arg_1.b.a.x, arg_1.a.a.x)) && func_3(_wgslsmith_f_op_f32(-521f - -1000f), func_2(arg_1.b.a.x)), arg_1.a.a.x, any(arg_1.a.a.yww), true));
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    var var_1 = firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(arg_0.a, 1u), vec2<u32>(u_input.a.x, 4294967295u)), select(u_input.a.ww, vec2<u32>(arg_0.a, u_input.a.x), vec2<bool>(arg_1.c.x, true))), ~arg_0.a ^ _wgslsmith_mod_u32(54442u, 1442u)), firstTrailingBit(10694u & arg_0.a) ^ u_input.a.x, ~1u));
    var_0 = arg_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1289f * 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_u32(~1u, 8228u) << ((u_input.a.x ^ 50614u) % 32u);
    var var_1 = -(_wgslsmith_mod_i32(-1i, -2147483647i) | ~firstTrailingBit(-75939i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-523f, 799f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1911f)))), _wgslsmith_f_op_f32(ceil(842f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-152f, 1187f))) - _wgslsmith_f_op_f32(2127f + _wgslsmith_f_op_f32(select(1857f, 1626f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1421f * _wgslsmith_f_op_f32(f32(-1f) * -476f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(var_0), Struct_4(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, false)), vec2<i32>(177i, 2147483647i))))))));
    var var_3 = var_2.x;
    var var_4 = Struct_1(!vec4<bool>(true & all(vec4<bool>(true, true, true, true)), false, true, all(vec3<bool>(true, true, true))));
    var_1 = abs(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(6251i, 0i), vec2<i32>(2147483647i, 14355i)) | 1i));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1084f, 2208f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) + var_2.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), -220f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2))) - var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.x + var_5.x), 1478f), 907f, var_2.x)));
}

