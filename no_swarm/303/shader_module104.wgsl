struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = Struct_2(~arg_1.a);
    let var_1 = vec4<u32>(65834u << (var_0.a % 32u), _wgslsmith_div_u32(var_0.a, ~u_input.b), ~arg_1.a, ~abs(~1u));
    let var_2 = Struct_1(countOneBits(u_input.c), select(~select(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, -45828i), vec3<i32>(u_input.c, 9725i, -28671i)), vec3<i32>(2147483647i, 17175i, 5151i), vec3<bool>(true, true, true)), firstLeadingBit(~abs(vec3<i32>(u_input.c, -2147483647i, 2147483647i))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)));
    var var_3 = true;
    var_0 = arg_1;
    return reverseBits(abs((vec2<u32>(var_1.x, 34337u) >> (var_1.wy % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, var_0.a), vec2<u32>(66279u, 17318u) & var_1.xy)));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<bool> {
    let var_0 = (15023u > ~(~_wgslsmith_sub_u32(u_input.b, 1u))) | false;
    let var_1 = Struct_2(abs(1u));
    let var_2 = Struct_2(_wgslsmith_mult_u32(1u, u_input.b));
    var var_3 = ~31446i;
    let var_4 = _wgslsmith_clamp_vec2_u32(reverseBits(func_3(var_1, var_2)), vec2<u32>(u_input.b, 4294967295u), ~u_input.a);
    return vec2<bool>(any(select(!(!vec4<bool>(var_0, false, true, true)), !select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(false, true, false, var_0), vec4<bool>(true, var_0, true, true)), select(select(vec4<bool>(true, var_0, true, false), vec4<bool>(var_0, var_0, var_0, var_0), var_0), vec4<bool>(false, false, true, var_0), !vec4<bool>(var_0, var_0, var_0, var_0)))), true);
}

fn func_1() -> u32 {
    var var_0 = u_input.c;
    let var_1 = select(vec2<bool>(true, all(vec2<bool>(false, all(vec3<bool>(false, false, true))))), select(!vec2<bool>(true, all(vec4<bool>(false, true, false, true))), !func_2(_wgslsmith_f_op_f32(min(502f, 942f)), u_input.c), true), true || all(!func_2(934f, -1i)));
    var_0 = 53599i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f * -1968f)));
    var var_3 = !var_1.x;
    return (~u_input.a.x << ((u_input.b & ~u_input.a.x) % 32u)) | _wgslsmith_div_u32(39452u << (0u % 32u), abs(reverseBits(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 52027u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, var_0, var_0, var_0)), _wgslsmith_div_u32(4294967295u, 34013u), u_input.b), 0u));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1349f - 107f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1243f, -1101f)), _wgslsmith_f_op_f32(852f * _wgslsmith_f_op_f32(513f - 441f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1688f)))), -985f), !vec2<bool>(false, func_2(-718f, 6224i).x && true)));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(975f, 1560f)))));
    let var_3 = abs(~((~var_1.a | u_input.b) ^ max(var_0, max(u_input.a.x, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(71936u, func_3(var_1, Struct_2(u_input.b)).x, firstLeadingBit(0u)), ~(vec3<u32>(var_3, var_1.a, 43282u) ^ vec3<u32>(u_input.b, 61948u, 9391u))), 7092u, ~56605u & var_0));
}

