struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = -u_input.a;
    let var_1 = u_input.d;
    let var_2 = 1492f;
    var var_3 = select(vec3<bool>(true, true, true), vec3<bool>(true & all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), var_1 == u_input.d), any(vec4<bool>(true, true, true, true)));
    var_3 = select(!(!vec3<bool>(all(vec3<bool>(var_3.x, var_3.x, var_3.x)), true, false)), !select(vec3<bool>(true, var_3.x, !var_3.x), select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(true, var_3.x, false), select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(false, var_3.x, true), vec3<bool>(var_3.x, var_3.x, true))), vec3<bool>(var_3.x, all(vec4<bool>(var_3.x, var_3.x, true, false)), any(vec4<bool>(var_3.x, true, false, true)))), all(!select(vec3<bool>(false, false, var_3.x), !vec3<bool>(true, var_3.x, true), vec3<bool>(var_3.x, var_3.x, true))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1614f * var_2))), 565f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -515f))))));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())))));
    var var_1 = Struct_2(select(_wgslsmith_f_op_f32(trunc(-735f)) >= -2305f, select(true, any(vec3<bool>(false, true, true)) | true, true), true));
    var_1 = Struct_2(var_1.a);
    var_1 = Struct_2(var_1.a);
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1105f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(585f)), _wgslsmith_f_op_f32(round(var_0)))), 1684f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1464f, var_0, false))), _wgslsmith_f_op_f32(-var_0))));
    return Struct_5(u_input.c, all(vec3<bool>(var_1.a, true, var_1.a)), u_input.c, vec2<bool>(u_input.b > select(_wgslsmith_dot_vec2_i32(vec2<i32>(7706i, 1i), u_input.a.xy), _wgslsmith_clamp_i32(44770i, u_input.a.x, 0i), !var_1.a), var_1.a), Struct_1(~(~(~vec2<u32>(1u, u_input.d))), vec3<f32>(1155f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - 767f), _wgslsmith_f_op_f32(-var_2.x)), var_0)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_5) -> f32 {
    var var_0 = arg_1;
    var_0 = vec3<u32>(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(37839u, _wgslsmith_clamp_u32(arg_2.c, 52046u, var_0.x), 40220u, max(0u, 94582u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(71024u, 4294967295u, arg_2.e.a.x, u_input.d), vec4<u32>(0u, u_input.c, var_0.x, 1u)))), func_2().e.a.x) >> (~vec3<u32>(reverseBits(_wgslsmith_clamp_u32(24823u, 5426u, u_input.c)), arg_2.a, u_input.c) % vec3<u32>(32u));
    var_0 = vec3<u32>(arg_1.x, abs(~arg_2.a), max(min(599u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_2.e.a.x, 1u, arg_2.a), vec4<u32>(arg_2.a, u_input.c, 1u, u_input.c))), select(4294967295u, arg_1.x, arg_0)));
    var_0 = firstTrailingBit(~arg_1);
    let var_1 = firstLeadingBit(firstTrailingBit(~(~vec4<u32>(1u, arg_1.x, arg_2.a, 4294967295u)))) | ~countOneBits(vec4<u32>(~22013u, arg_2.e.a.x, ~var_0.x, ~arg_2.e.a.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1869f))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> StorageBuffer {
    var var_0 = vec2<i32>(u_input.a.x, u_input.b);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - -1193f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_0.x, vec3<u32>(1u, 1u, u_input.c), func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2120f, -143f, arg_0.x)) - _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(floor(arg_1.x)))));
    var var_2 = Struct_4(false, arg_0.x == any(vec2<bool>(false, true)), firstLeadingBit(abs(11897i)));
    return StorageBuffer(u_input.a.xz, var_0.x, _wgslsmith_mult_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -301i, var_0.x), vec3<i32>(u_input.b, u_input.b, -2147483647i) | u_input.a)), countOneBits(-u_input.a)), _wgslsmith_f_op_f32(func_4(false, ~(vec3<u32>(u_input.c, u_input.d, 55268u) ^ vec3<u32>(u_input.c, u_input.c, u_input.c)) >> (vec3<u32>(~u_input.c, ~62904u, _wgslsmith_div_u32(u_input.d, 27502u)) % vec3<u32>(32u)), func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(!(u_input.a.x <= u_input.b), -u_input.a.x >= ~u_input.b, true));
    let x = u_input.a;
    s_output = func_1(!select(vec4<bool>(!var_0.x, any(vec3<bool>(var_0.x, false, var_0.x)), var_0.x, true), vec4<bool>(all(vec2<bool>(true, true)), !var_0.x, true, any(vec4<bool>(var_0.x, var_0.x, true, false))), true), vec2<f32>(811f, _wgslsmith_f_op_f32(sign(-351f))));
}

