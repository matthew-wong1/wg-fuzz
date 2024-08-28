struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    global0 = 870f;
    let var_0 = !arg_0;
    global0 = arg_1.c.a;
    let var_1 = vec3<u32>(~(~_wgslsmith_clamp_u32(7541u, u_input.a, 1u)), 1u, select(u_input.a, ~53587u, true) >> (u_input.a % 32u)) | max(~(~(~vec3<u32>(3076u, arg_1.c.b.x, 19179u))), max(firstTrailingBit(vec3<u32>(arg_1.c.b.x, 40198u, 28065u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<u32>(u_input.a, 17283u, u_input.a))) << (~(vec3<u32>(arg_1.c.b.x, 15816u, arg_1.c.b.x) | vec3<u32>(arg_1.c.b.x, 0u, arg_1.c.b.x)) % vec3<u32>(32u)));
    let var_2 = Struct_3(arg_1.c);
    return _wgslsmith_f_op_f32(-1f);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    global0 = 1438f;
    let var_0 = vec4<bool>(false, true, arg_1.c.c, false);
    let var_1 = Struct_4(abs((u_input.d.wxz << (max(vec3<u32>(u_input.a, u_input.b, 4294967295u), vec3<u32>(u_input.b, arg_1.c.b.x, u_input.a)) % vec3<u32>(32u))) | ~u_input.d.zyy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b))))), Struct_3(arg_1.c), Struct_1(arg_1.c.d, firstTrailingBit(vec2<u32>(39310u, 65412u) & vec2<u32>(u_input.b, arg_1.c.b.x)), all(var_0.zzy), arg_1.c.d));
    var var_2 = select(var_0.wxy, select(!var_0.yyz, var_0.wwz, var_0.wwx), var_1.c.a.c && !any(var_0.zx));
    var_2 = vec3<bool>(var_1.c.a.c, true, !(!var_1.d.c) || false);
    return _wgslsmith_f_op_f32(f32(-1f) * -597f);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f * _wgslsmith_f_op_f32(func_2(!vec3<bool>(arg_1.x, arg_1.x, false), Struct_2(false, arg_0.x, Struct_1(-522f, vec2<u32>(10474u, u_input.b), true, arg_0.x)))))));
    global0 = arg_0.x;
    var var_0 = countOneBits(~firstLeadingBit(-17828i));
    global0 = -920f;
    var var_1 = Struct_4(u_input.d.www, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-156f)))), Struct_3(Struct_1(616f, vec2<u32>(~u_input.b, 30866u), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(-684f)))))), Struct_1(arg_0.x, ~_wgslsmith_add_vec2_u32(max(vec2<u32>(1u, 0u), vec2<u32>(u_input.b, u_input.a)), ~vec2<u32>(u_input.a, 0u)), u_input.c == 2147483647i, -209f));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(var_1.a.x, var_1.a.x, 0i, -1i), Struct_2(var_1.c.a.c, var_1.b, Struct_1(var_1.d.d, var_1.d.b, false, -799f)))), -998f) + _wgslsmith_f_op_f32(abs(-1249f))) * arg_0.x), -598f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(-978f, 1883f), vec2<bool>(true, false))) - -577f) - 388f)));
    var var_0 = 47358u;
    var var_1 = vec3<bool>(true, false, select(false, true, !select(true, all(vec2<bool>(false, true)), any(vec2<bool>(true, false)))));
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_div_f32(-1291f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(var_1.x, var_1.x, false), Struct_2(var_1.x, -299f, Struct_1(-1000f, vec2<u32>(23256u, 58129u), false, -881f)))), -506f) - _wgslsmith_f_op_f32(func_2(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true)), Struct_2(var_1.x, 270f, Struct_1(1405f, vec2<u32>(u_input.a, u_input.b), true, -623f))))))));
    var_0 = ~(~reverseBits(~u_input.a)) >> (firstLeadingBit(u_input.a) % 32u);
    var var_4 = true;
    let var_5 = (41375u >> (_wgslsmith_clamp_u32(~48468u, ~1u, u_input.b) % 32u)) << (countOneBits(42993u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_5, var_5), _wgslsmith_dot_vec2_u32(vec2<u32>(30521u, var_5), vec2<u32>(4294967295u, u_input.a)))), firstTrailingBit(abs(vec3<u32>(u_input.b, u_input.a, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(502f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(617f, 2021f))))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d.x, ~(-32016i), _wgslsmith_add_i32(53i, var_2), _wgslsmith_mult_i32(var_2, 0i))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, var_2, u_input.d.x, 0i), u_input.d, u_input.d), min(vec4<i32>(2147483647i, 2147483647i, u_input.c, 33898i), firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, -140i, var_2))))), -222f);
}

