struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(~1u, arg_2.a) & (u_input.c & _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(0u, 10284u))), u_input.c) << (select(~vec2<u32>(~u_input.c.x, ~u_input.c.x), ~u_input.c, !(!arg_1.x)) % vec2<u32>(32u));
    var var_1 = Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c.xxz * _wgslsmith_f_op_vec3_f32(-arg_2.b)) - _wgslsmith_f_op_vec3_f32(arg_2.b + _wgslsmith_f_op_vec3_f32(arg_2.b + arg_2.c.yyz))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c) - arg_2.c)))), -418f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.e))));
    var_1 = arg_2;
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(24682u, 4294967295u, 0u, 21067u)), ~(~vec4<u32>(0u, var_1.a, 21172u, var_1.a))), vec3<f32>(-1032f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-432f, var_1.e))), _wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_f_op_f32(-arg_2.e), !arg_1.x))), _wgslsmith_f_op_vec4_f32(-arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-132f, 139f, arg_1.x)) - 134f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(532f, 1f, true)), 786f))));
    var var_3 = vec4<u32>(var_0.x, ~1649u, _wgslsmith_sub_u32(1u, var_2.a.a), abs(_wgslsmith_sub_u32(~u_input.c.x, 4294967295u)) & 39459u);
    return -374f;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) * _wgslsmith_f_op_f32(-993f - _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-771f, -647f, false))), _wgslsmith_f_op_f32(-arg_0.b.x))), -214f));
    var var_1 = vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.c.x, arg_0.a) << (0u % 32u)), 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_1, ~0u), vec3<u32>(~(~arg_1), 1u >> (abs(1u) % 32u), _wgslsmith_mult_u32(abs(u_input.c.x), ~u_input.c.x))));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_sub_vec3_i32(u_input.a, ~u_input.a);
    let var_4 = arg_0.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(abs(vec4<i32>(-41437i, -2147483647i, var_3.x, var_3.x)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), arg_0)), var_0.x))));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.b;
    let var_1 = Struct_2(Struct_1(53184u & ~select(u_input.c.x, 1u, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, 2668f, -2421f))) * vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.c.x, vec3<f32>(305f, 330f, -1371f), vec4<f32>(-1308f, -359f, 455f, -600f), 1115f, 274f), 88368u, var_0.x)), _wgslsmith_f_op_f32(-658f - -597f), _wgslsmith_f_op_f32(1851f * 1844f))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -739f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-871f - -107f) - _wgslsmith_f_op_f32(select(-114f, 1024f, false))), -107f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f - -2019f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)))));
    var_0 = vec2<i32>(u_input.b.x, max(u_input.a.x, i32(-1i) * -max(11169i, -6888i)));
    let var_2 = ~(~vec3<u32>(~u_input.c.x, 1u, _wgslsmith_clamp_u32(44887u, var_1.a.a, 81936u)) | (~(~vec3<u32>(132165u, u_input.c.x, 1u)) >> (countOneBits(firstTrailingBit(vec3<u32>(1u, 4294967295u, var_1.a.a))) % vec3<u32>(32u))));
    var var_3 = vec2<f32>(var_1.a.d, _wgslsmith_f_op_f32(max(var_1.a.c.x, _wgslsmith_f_op_f32(-350f - 2418f))));
    return Struct_3(any(vec2<bool>(_wgslsmith_f_op_f32(func_2(var_1.a, var_1.a.a, var_0.x)) >= var_3.x, _wgslsmith_f_op_f32(-var_3.x) <= -470f)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 19419u ^ u_input.c.x;
    var var_1 = 676f;
    let var_2 = func_1();
    var var_3 = vec2<u32>(abs(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(43364u, var_0, u_input.c.x)), min(~vec3<u32>(u_input.c.x, 0u, 0u), select(vec3<u32>(5205u, var_0, 5702u), vec3<u32>(var_0, 4294967295u, u_input.c.x), true)))), _wgslsmith_clamp_u32(~var_0, u_input.c.x, var_0));
    let var_4 = vec2<i32>(-1i) * -max(u_input.b, vec2<i32>(~(-26406i), u_input.a.x));
    let var_5 = true;
    let var_6 = ~countOneBits(firstTrailingBit(vec4<u32>(0u, u_input.c.x, var_3.x, u_input.c.x))) & _wgslsmith_div_vec4_u32(vec4<u32>(64903u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.c.x, var_0, var_0)), min(vec4<u32>(var_3.x, 52505u, var_0, var_3.x), vec4<u32>(27949u, var_0, var_3.x, 0u))), ~firstLeadingBit(71715u), ~(~u_input.c.x)), max(~vec4<u32>(4294967295u, 4294967295u, var_0, u_input.c.x), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 41648u, var_0, var_0), vec4<u32>(var_3.x, 1u, 1u, var_3.x)))));
    var var_7 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b.x, 2147483647i, var_4.x, u_input.b.x), vec2<bool>(false, var_2.b), Struct_1(var_0, vec3<f32>(1000f, 215f, -137f), vec4<f32>(1129f, -1374f, -1041f, -495f), -403f, -1433f))), -1108f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(589f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1240f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(select(firstLeadingBit(vec2<u32>(1u, 5946u)), u_input.c, vec2<bool>(false, var_2.b)), min(u_input.c, var_6.zy) | ~vec2<u32>(var_0, 16841u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1175f, _wgslsmith_div_f32(var_7.x, var_7.x), -1242f)))), _wgslsmith_mult_u32(var_0, 37738u));
}

