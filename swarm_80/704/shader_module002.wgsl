struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = ~countOneBits(min(vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a), ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 30344u), vec2<u32>(1u, u_input.b.x)), u_input.b.x), firstTrailingBit(abs(vec4<u32>(u_input.a, u_input.b.x, 43004u, u_input.a)))));
    var var_1 = Struct_1(vec2<i32>(5452i, -1i));
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-625f - 827f) * _wgslsmith_f_op_f32(709f + -419f))))));
    let var_4 = Struct_1(~(-vec2<i32>(_wgslsmith_clamp_i32(var_1.a.x, -22307i, 40626i), _wgslsmith_dot_vec4_i32(vec4<i32>(-35623i, -16235i, 0i, var_1.a.x), vec4<i32>(var_1.a.x, var_1.a.x, -5384i, var_1.a.x)))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, _wgslsmith_f_op_f32(min(-252f, 889f))))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(arg_1, !((22520u != u_input.a) | true) && false, arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, 1142f))), vec2<bool>(true, true)))));
    global1 = arg_0.x;
    var var_1 = ~(~arg_0.x);
    let var_2 = Struct_2(var_0.c, true, var_0.c, _wgslsmith_f_op_vec2_f32(-var_0.d));
    var var_3 = firstLeadingBit(vec4<i32>(~var_2.c.a.x, 11583i, -arg_1.a.x, -45722i | var_0.a.a.x) << ((vec4<u32>(0u, u_input.a, 12797u, 88553u) >> (reverseBits(vec4<u32>(44149u, arg_0.x, arg_0.x, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(~u_input.b.x, ~(~arg_0.x) ^ 4294967295u, ~_wgslsmith_mult_u32(1u, 0u), 0u) % vec4<u32>(32u));
    return vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x * -921f), 728f, _wgslsmith_f_op_f32(f32(-1f) * -915f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, _wgslsmith_f_op_f32(abs(-735f)), -884f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-103f, -268f, -239f) - vec3<f32>(1000f, 334f, -108f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(18157u, u_input.b.x), Struct_1(vec2<i32>(2906i, 0i)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, 546f, 742f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-397f, var_0.x)) * var_0.x)))));
    let var_2 = false;
    return Struct_1(abs(u_input.c.yz) | firstTrailingBit(u_input.c.yy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-274f + _wgslsmith_f_op_f32(max(1384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(777f)))))) * _wgslsmith_f_op_f32(-315f + 109f));
    var var_1 = Struct_2(func_1(), false, func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-124f, -1453f), vec2<f32>(593f, 539f))), true))));
    var_1 = Struct_2(Struct_1(select(u_input.c.xy, func_1().a, vec2<bool>(!var_1.b, true))), false, var_1.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) + -541f) + -1003f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, var_1.d.x, var_1.b)))) + _wgslsmith_f_op_f32(ceil(var_1.d.x)))));
    var var_2 = -233f;
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -3903i, u_input.d | -2147483647i, vec2<i32>(2147483647i, 2147483647i));
}

