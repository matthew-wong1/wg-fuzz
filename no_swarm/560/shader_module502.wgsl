struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = !(!(!all(vec2<bool>(false, true))));
    let var_1 = arg_2.x;
    var var_2 = vec2<i32>(var_1, arg_2.x);
    var_2 = ~vec2<i32>(var_2.x & _wgslsmith_dot_vec4_i32(arg_2 | vec4<i32>(14875i, arg_1.x, var_2.x, -17124i), select(vec4<i32>(u_input.c, -93169i, 14612i, arg_0), arg_2, var_0)), arg_2.x);
    var_2 = vec2<i32>(0i, u_input.e);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-498f, 1000f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(267f, -2093f))))))), any(!vec2<bool>(true, var_0))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(arg_0.b.b.x, abs(select(vec4<i32>(0i, var_0.b.x, arg_0.b.b.x, arg_3.a), vec4<i32>(arg_0.a.a, u_input.a.x, 1i, arg_1), vec4<bool>(false, false, true, true))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.b, arg_3.b), _wgslsmith_mod_i32(u_input.a.x, 1i), var_0.a, u_input.c))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-818f * 2405f))) + arg_2.x));
    var_0 = arg_3;
    var var_3 = arg_0;
    return ~arg_3.c.x;
}

fn func_1() -> i32 {
    let var_0 = vec2<u32>(~u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b) ^ countOneBits(~func_2(Struct_2(Struct_1(-2147483647i, vec3<i32>(-1i, u_input.a.x, u_input.c), vec4<u32>(u_input.b, 4294967295u, 0u, 19858u)), Struct_1(8910i, u_input.a, vec4<u32>(0u, 107538u, 37891u, 20315u))), -2147483647i, vec4<f32>(-530f, 754f, 535f, -1240f), Struct_1(u_input.c, u_input.a, vec4<u32>(64219u, 65164u, u_input.d, u_input.b)))));
    let var_1 = vec2<bool>(!all(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, false))), false);
    var var_2 = ~(~(~(~50092u)) | max(max(40765u, u_input.d) & _wgslsmith_clamp_u32(var_0.x, u_input.d, 82530u), ~(~20215u)));
    let var_3 = Struct_1(firstLeadingBit(0i), -u_input.a, ~vec4<u32>(firstTrailingBit(409u) ^ ~0u, var_0.x, _wgslsmith_mod_u32(43442u, var_0.x) & 110651u, var_0.x));
    var_2 = firstLeadingBit(u_input.d);
    return -(27697i << (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(1i | countOneBits(u_input.e), ~func_1()), 2147483647i, -countOneBits(_wgslsmith_mod_i32(u_input.c, ~u_input.c)));
    let var_1 = vec2<bool>(false, true);
    var_0 = vec3<i32>(i32(-1i) * -23240i, -_wgslsmith_add_i32(u_input.a.x, u_input.e), ~_wgslsmith_clamp_i32(1i, var_0.x, firstLeadingBit(0i)));
    var_0 = u_input.a;
    var var_2 = Struct_2(Struct_1(-_wgslsmith_div_i32(1i, u_input.c), vec3<i32>(var_0.x, select(var_0.x, var_0.x, false), ~(-2147483647i)) | ~vec3<i32>(u_input.a.x, var_0.x, 1i), vec4<u32>(1u, min(func_2(Struct_2(Struct_1(-45041i, u_input.a, vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u)), Struct_1(u_input.e, vec3<i32>(1i, u_input.a.x, var_0.x), vec4<u32>(1u, 1u, 10432u, u_input.b))), -35737i, vec4<f32>(766f, -238f, -305f, -632f), Struct_1(var_0.x, u_input.a, vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d))), ~u_input.b), 1u, 4294967295u)), Struct_1(-firstLeadingBit(u_input.a.x), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 0i, var_0.x, 53402i), vec4<i32>(-1i, 7803i, -12527i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 10799i, 2147483647i), vec3<i32>(0i, -1i, u_input.c)), u_input.a.x)), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.d, u_input.b, u_input.b, 29866u), vec4<bool>(true, true, false, var_1.x)), vec4<u32>(u_input.b, u_input.d, 5667u, u_input.d)) | ~vec4<u32>(1u, 1u, 0u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec2_i32(~u_input.a.yx, u_input.a.yx)), min(~min(-347i, -34989i), -_wgslsmith_mod_i32(0i, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)));
}

