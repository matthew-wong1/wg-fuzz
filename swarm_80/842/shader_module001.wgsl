struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(step(arg_0.x, -974f));
    var_0 = arg_0.x;
    let var_1 = Struct_1(vec4<bool>(31072i <= u_input.d.x, ~u_input.a < -(~(-1i)), all(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false))), false));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -265f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(abs(244f)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.yxz)))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0, 0u ^ u_input.b)), vec2<u32>(arg_0, 4294967295u) ^ ~vec2<u32>(17344u, arg_0 >> (arg_0 % 32u)));
    return min(arg_0, ~abs(max(arg_0, _wgslsmith_sub_u32(u_input.b, u_input.b))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<u32> {
    global0 = u_input.c.x <= func_4(u_input.c.x, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) + _wgslsmith_f_op_vec4_f32(round(arg_2))))));
    var var_0 = u_input.b;
    return vec2<u32>((u_input.b & select(63869u, 0u, arg_1.a.x)) << (1u % 32u), max(4301u, 24418u)) & ~vec2<u32>(~u_input.b, ~max(1u, u_input.b));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec4<u32>) -> bool {
    var var_0 = true;
    var var_1 = ~reverseBits(func_2(arg_0.a, Struct_1(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1489f, arg_0.a, 830f, -198f)))));
    var var_2 = u_input.d;
    let var_3 = 2341f;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a))))))));
    return select(!(1u >= ~(~arg_3.x)), all(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)), true | (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))) > _wgslsmith_f_op_f32(-var_4.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_2(1207f), min(u_input.b | firstLeadingBit(u_input.b), 4294967295u), 0u, _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32((vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x) | vec4<u32>(4294967295u, u_input.c.x, 4294967295u, u_input.c.x)) | (vec4<u32>(u_input.b, u_input.c.x, 1u, u_input.c.x) | vec4<u32>(4294967295u, u_input.b, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.b, 11736u, u_input.c.x, u_input.c.x) ^ ~vec4<u32>(26299u, u_input.b, u_input.b, u_input.c.x)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.c.x, 32041u, 4294967295u, 35606u), vec4<u32>(4294967295u, 1u, u_input.b, 17795u)), vec4<u32>(0u, u_input.b, u_input.c.x, u_input.c.x), vec4<u32>(1u, 4294967295u, 1u, 4146u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b) | vec4<u32>(4294967295u, u_input.b, u_input.c.x, 23224u)) % vec4<u32>(32u))));
    var var_0 = -u_input.d;
    var_0 = -(~_wgslsmith_clamp_vec2_i32(min(vec2<i32>(var_0.x, u_input.a), u_input.d), vec2<i32>(u_input.a, select(var_0.x, u_input.a, true)), _wgslsmith_add_vec2_i32(u_input.d >> (vec2<u32>(u_input.b, 27303u) % vec2<u32>(32u)), min(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, u_input.d.x)))));
    let var_1 = Struct_3(-1i, 26891u, Struct_1(!vec4<bool>(any(vec4<bool>(false, true, false, true)), false, false, true)), select(vec2<u32>(~u_input.c.x, u_input.c.x), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, u_input.c.x), 0u), func_4(u_input.b & u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(399f, -958f, 422f)))), true), Struct_2(-589f));
    let var_2 = ~(var_1.d | u_input.c.yx);
    var var_3 = Struct_3(-14688i, var_2.x, var_1.c, select(var_2, ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 73627u), vec2<u32>(8860u, var_2.x)), any(var_1.c.a)) & var_1.d, var_1.e);
    var var_4 = Struct_1(vec4<bool>(true, !(!all(var_1.c.a)), true, var_3.c.a.x));
    let var_5 = var_2 & vec2<u32>(countOneBits(firstLeadingBit(var_2.x << (49747u % 32u))), var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(vec3<i32>(firstTrailingBit(2147483647i), countOneBits(var_3.a), var_1.a))), ~(~(~(~1u))), _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.a, -var_1.a), _wgslsmith_clamp_vec2_i32(abs(u_input.d), ~vec2<i32>(-10174i, var_0.x), min(u_input.d, vec2<i32>(var_0.x, 13538i))), var_4.a.zx), vec2<i32>(1i, var_1.a)), vec3<f32>(var_3.e.a, _wgslsmith_f_op_f32(max(var_1.e.a, var_3.e.a)), _wgslsmith_f_op_f32(-531f * _wgslsmith_f_op_f32(f32(-1f) * -364f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.e.a, _wgslsmith_f_op_f32(-783f - var_3.e.a), func_1(Struct_2(var_3.e.a), var_1.b, ~0u, min(vec4<u32>(var_2.x, 1u, 11610u, var_2.x), vec4<u32>(4294967295u, 1u, u_input.b, u_input.c.x)))))));
}

