struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: u32) -> vec4<bool> {
    var var_0 = u_input.a.x << ((countOneBits(~min(1u, 2968u)) | ~arg_2) % 32u);
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(308f * -341f));
    var var_2 = vec2<bool>(any(select(vec4<bool>(!var_1.a, var_1.a, var_1.a, u_input.a.x != arg_0.x), !(!vec4<bool>(false, var_1.a, false, true)), false)), true);
    var var_3 = ~_wgslsmith_div_u32(select(25176u << (arg_2 % 32u), ~4294967295u, !var_2.x) << (countOneBits(_wgslsmith_mult_u32(arg_0.x, arg_2)) % 32u), reverseBits(~abs(14334u)));
    let var_4 = ~select(arg_0, _wgslsmith_mult_vec3_u32(abs(arg_0 << (arg_0 % vec3<u32>(32u))), min(arg_0, arg_0) >> (abs(vec3<u32>(4294967295u, 29415u, arg_0.x)) % vec3<u32>(32u))), var_1.a);
    return !(!vec4<bool>(!var_2.x, all(vec2<bool>(var_1.a, true)) | true, var_1.a, true));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_5(arg_1.x >= 1f);
    let var_1 = true;
    let var_2 = !vec2<bool>(arg_3, var_0.a);
    var var_3 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_4 = ~2677i < u_input.b.x;
    return Struct_1(any(func_3(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.x, u_input.a.x, arg_2.x), vec3<u32>(arg_2.x, 89451u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-144f, -1029f, arg_1.x))) + vec3<f32>(arg_1.x, -282f, arg_1.x)), u_input.a.x << (arg_2.x % 32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1.x)), arg_1.x, true)));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(func_2(all(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false))), vec2<f32>(194f, 1f), u_input.a, any(vec4<bool>(true, true, true, true))));
    var var_1 = ~(u_input.b.x & ~u_input.b.x);
    var var_2 = Struct_4(reverseBits(~(~reverseBits(vec3<u32>(17367u, 0u, 37097u)))), Struct_3(firstLeadingBit(vec2<u32>(~u_input.a.x, ~u_input.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-359f, var_0.a.b))))));
    return -1985f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.a.x, 4294967295u, 0u), ~vec4<u32>(65423u, u_input.a.x, u_input.a.x, 88711u), ~vec4<u32>(u_input.a.x, 1u, 53073u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 18068u, u_input.a.x), select(vec4<u32>(0u, 0u, u_input.a.x, 4294967295u), vec4<u32>(5230u, u_input.a.x, 10171u, 40805u), vec4<bool>(true, false, true, true)))), _wgslsmith_clamp_u32(57116u, u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), u_input.a.x, ~u_input.a.x), ~firstLeadingBit(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 18474u, 43156u, 1u) % vec4<u32>(32u))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = abs(~(var_0 << (var_0 % vec4<u32>(32u))));
    let var_3 = Struct_1(all(vec4<bool>(var_1.x, !(-18221i <= u_input.b.x), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(506f - 824f), _wgslsmith_f_op_f32(f32(-1f) * -1388f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1478f, true)))));
    var var_4 = !var_1.x;
    var_4 = true;
    var var_5 = _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.b))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(655f * var_3.b)))))));
    let var_6 = Struct_1(true, _wgslsmith_f_op_f32(func_1()));
    var_4 = u_input.b.x >= ~(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~firstLeadingBit(u_input.b.x)), -45156i), 0i, -9914i);
}

