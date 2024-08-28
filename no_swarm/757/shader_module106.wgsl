struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> u32 {
    var var_0 = u_input.a.xyy;
    var_0 = u_input.a.xyz;
    let var_1 = any(vec4<bool>(true, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)) && false));
    let var_2 = _wgslsmith_add_vec2_i32((~u_input.b.zx | ~(u_input.b.xy ^ u_input.b.yz)) >> (~(~vec2<u32>(var_0.x, 2781u)) % vec2<u32>(32u)), vec2<i32>(0i, -(i32(-1i) * -u_input.b.x)));
    global0 = Struct_4(global0.a);
    return ~(~(~firstLeadingBit(~23865u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: f32) -> bool {
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.a.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.a.x))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mod_u32(select(global0.a.b, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(global0.a.b, u_input.a.x), 10227u, global0.a.b), (~19746u < func_2()) || func_3(vec4<bool>(false, true, true, false), ~vec4<i32>(0i, u_input.b.x, u_input.b.x, -47064i), _wgslsmith_f_op_f32(min(global0.a.a.x, global0.a.a.x)))), firstTrailingBit(u_input.a.x));
    return _wgslsmith_f_op_f32(-global0.a.a.x);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> Struct_4 {
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(global0.a.a, _wgslsmith_f_op_vec2_f32(select(global0.a.a, _wgslsmith_f_op_vec2_f32(-global0.a.a), true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false))), abs(firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, 0u)))));
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(global0.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_1) - vec2<f32>(883f, -1840f)), true)), _wgslsmith_mult_u32(global0.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x) >> (u_input.a % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, 1u, global0.a.b, u_input.a.x))))));
    var var_0 = 373f;
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(step(-153f, _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(268f - 1f)), global0.a.a.x);
    var var_2 = Struct_1(var_1.xx, countOneBits(u_input.a.x ^ (0u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.x), arg_2.zz))));
    return Struct_4(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 2522f, ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(19604u, 1u, 1u)), u_input.a.yzx));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.x, 471f, global0.a.a.x) + vec3<f32>(global0.a.a.x, 116f, -513f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1029f, -548f, global0.a.a.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, 1000f, 1255f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(sign(global0.a.a.x)), 337f) + vec3<f32>(636f, global0.a.a.x, -798f)));
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a.x, 1593f) * _wgslsmith_f_op_f32(max(var_0.x, global0.a.a.x))))))), ~max(abs(firstTrailingBit(vec2<u32>(global0.a.b, 0u))), ~(~vec2<u32>(18139u, u_input.a.x))));
}

