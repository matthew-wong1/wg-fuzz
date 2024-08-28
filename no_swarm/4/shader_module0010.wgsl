struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!vec3<bool>(all(vec3<bool>(true, false, true)) | true, true, true));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a, arg_1.a)) * _wgslsmith_f_op_f32(-1205f * _wgslsmith_f_op_f32(-arg_1.a))), -1i), min(~reverseBits(select(arg_0.x, arg_0.x, var_0.x)), arg_0.x));
    return Struct_1(_wgslsmith_f_op_f32(max(-1197f, _wgslsmith_f_op_f32(-arg_1.a))), u_input.b);
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = arg_0.a;
    let var_1 = -888f;
    var var_2 = vec2<u32>(4294967295u, 24302u);
    var var_3 = ~countOneBits(vec3<u32>(select(9657u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 1743u), vec2<u32>(var_2.x, arg_0.b)), all(vec3<bool>(false, false, false))), ~0u, 28558u));
    var var_4 = u_input.a;
    return _wgslsmith_div_vec2_u32(var_3.zz, _wgslsmith_div_vec2_u32(var_3.yz, min(vec2<u32>(var_3.x, arg_0.b), var_3.yy)) | vec2<u32>(~arg_0.b, _wgslsmith_mult_u32(var_2.x, arg_0.b))) ^ select(~vec2<u32>(~0u, 0u), _wgslsmith_mod_vec2_u32(var_3.zx, _wgslsmith_sub_vec2_u32(~var_3.zx, max(var_3.xy, var_3.zz))), all(select(vec2<bool>(false, true), vec2<bool>(false, false), all(vec3<bool>(true, true, false)))));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u >> (1u % 32u), 0u), _wgslsmith_add_vec2_u32(~abs(vec2<u32>(32101u, 851u)), ~func_3(Struct_2(arg_0, 1u))));
    var_0 = abs(min(~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x), true), vec2<u32>(var_0.x, 52963u), _wgslsmith_sub_vec2_u32(vec2<u32>(29350u, var_0.x), vec2<u32>(var_0.x, var_0.x))), vec2<u32>(34365u, func_3(Struct_2(Struct_1(-1102f, -19694i), 19878u)).x)));
    let var_1 = !(!(!vec3<bool>(false, var_0.x >= 1u, any(vec4<bool>(true, true, false, true)))));
    var_0 = _wgslsmith_clamp_vec2_u32(~min(reverseBits(~vec2<u32>(3340u, var_0.x)), ~reverseBits(vec2<u32>(var_0.x, var_0.x))), vec2<u32>(~1u, 0u), select(vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.x, 0u)), vec2<u32>(var_0.x, 45567u)), select(max(1u, var_0.x), var_0.x, var_1.x)), _wgslsmith_clamp_vec2_u32(~func_3(Struct_2(Struct_1(arg_0.a, -33802i), var_0.x)), ~(vec2<u32>(var_0.x, var_0.x) | vec2<u32>(4294967295u, var_0.x)), vec2<u32>(1u, select(var_0.x, var_0.x, var_1.x))), vec2<bool>(true, any(select(var_1, var_1, var_1)))));
    var_0 = vec2<u32>(8051u, _wgslsmith_mult_u32(countOneBits(_wgslsmith_div_u32(var_0.x, var_0.x)) & countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(27805u, var_0.x))), ~15672u));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-326f, _wgslsmith_f_op_f32(f32(-1f) * -1049f))), -777f, 1314f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(701f + 460f), 1734f, 1622f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, 726f, -123f))))));
    let var_1 = select(vec4<bool>(func_2(func_1(~vec2<u32>(1u, 1u), Struct_1(-357f, -1i))), var_0.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * -1126f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1377f))), all(vec2<bool>(true, true)) && any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), !vec4<bool>(false, true, true, any(vec2<bool>(true, true))), select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, false, false))), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, select(false, false, true), all(vec4<bool>(true, true, false, true)), true), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), _wgslsmith_f_op_f32(f32(-1f) * -203f) < var_0.x)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x + 370f)))), max(u_input.b, u_input.c)), 55476u);
    let var_3 = (-2147483647i << (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(17981u, ~var_2.b), 0u, 4598u) % 32u)) ^ (i32(-1i) * -select(_wgslsmith_dot_vec4_i32(vec4<i32>(-31637i, u_input.c, -1i, var_2.a.b), vec4<i32>(-30979i, 2147483647i, u_input.a.x, 2147483647i)), u_input.a.x, var_2.b < 1u));
    var var_4 = 65554u >> ((~25275u | _wgslsmith_div_u32(min(_wgslsmith_mod_u32(3854u, var_2.b), 23458u), 4294967295u)) % 32u);
    let var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, 361f, -804f, var_0.x))))));
}

