struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_1(!(~(~arg_0) == arg_3.a.x));
    global1 = firstTrailingBit(0u);
    global0 = ~((~(48018u << (arg_0 % 32u)) & 24513u) << (arg_3.a.x % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1183f, 476f, arg_2, arg_1.x))), vec4<f32>(263f, 661f, arg_3.b.x, 761f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.b.x, arg_1.x, arg_2, -3092f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 165f, -1633f, 843f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, -513f, arg_1.x, -110f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, arg_2, arg_3.b.x, arg_3.b.x), vec4<f32>(1000f, arg_2, arg_2, arg_2))))))));
    let var_2 = arg_2;
    return _wgslsmith_div_u32(~(~11096u), _wgslsmith_mod_u32(4294967295u, 43850u));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(24537u, 1u, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, abs(u_input.a), func_3(13793u, vec3<f32>(arg_0, 1000f, arg_0), 2590f, Struct_2(vec3<u32>(23718u, 5888u, 24311u), vec3<f32>(arg_0, -239f, arg_0))), 120233u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.a, 1u), u_input.d), _wgslsmith_mod_vec4_u32(u_input.d >> (vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.a) % vec4<u32>(32u)), u_input.d))), u_input.d);
    global1 = 136703u;
    var var_0 = Struct_2(u_input.d.xzw, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(115f)), arg_0))));
    let var_1 = Struct_2(vec3<u32>(u_input.d.x, 0u, firstLeadingBit(0u)), vec3<f32>(-779f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-727f - _wgslsmith_f_op_f32(exp2(var_0.b.x))))), _wgslsmith_f_op_f32(-var_0.b.x)));
    var var_2 = 74268u;
    return var_1;
}

fn func_1() -> u32 {
    var var_0 = u_input.a;
    global0 = ~(~_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(u_input.d.x, 60467u)) ^ ~(u_input.a & u_input.d.x));
    var_0 = u_input.d.x;
    var_0 = countOneBits(u_input.d.x);
    let var_1 = func_2(_wgslsmith_f_op_f32(round(-1000f)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true)));
    return max(abs(~4294967295u), min(countOneBits(var_1.a.x) & 4294967295u, ~var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(304f * -601f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-891f * -604f) + -805f)))));
    let var_2 = u_input.a & _wgslsmith_dot_vec3_u32(u_input.d.zyx, vec3<u32>(1u, u_input.d.x, func_1()));
    var_0 = true;
    let var_3 = ~(-reverseBits(-(vec4<i32>(u_input.b, 0i, u_input.c, 30289i) ^ vec4<i32>(u_input.b, u_input.b, u_input.c, u_input.b))));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-554f, -110f))))))));
    let var_5 = Struct_2(vec3<u32>(4294967295u, func_1(), firstLeadingBit(66695u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(703f, var_4, -274f)))))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-642f + var_4))), _wgslsmith_f_op_f32(select(var_4, _wgslsmith_div_f32(var_4, var_4), true)), _wgslsmith_div_f32(var_4, _wgslsmith_f_op_f32(sign(630f))))));
    var var_6 = _wgslsmith_f_op_f32(-var_4);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.x);
}

