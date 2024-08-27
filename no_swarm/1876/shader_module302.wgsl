struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)));
    var_0 = 798f;
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 88186u), ~arg_1.a.x, countOneBits(arg_0.a.a.x >> (arg_1.a.x % 32u)), arg_0.a.a.x);
    var var_2 = Struct_3(vec3<u32>(arg_0.a.a.x, var_1.x ^ _wgslsmith_div_u32(~4294967295u, u_input.e.x), ~firstLeadingBit(_wgslsmith_clamp_u32(0u, u_input.e.x, 20453u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -886f))));
    return false;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec4<i32> {
    let var_0 = Struct_3(u_input.c.yyz);
    var var_1 = Struct_4(Struct_3(_wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_1, u_input.e.x, 36748u) & vec3<u32>(var_0.a.x, arg_0, 53805u), u_input.c.wwz ^ vec3<u32>(1u, arg_1, 14742u), true), var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f + 946f))), _wgslsmith_f_op_f32(floor(-728f))), !select(vec3<bool>(false, func_3(Struct_2(Struct_1(u_input.a), vec2<bool>(true, false), -1000f), Struct_1(var_0.a.yy)), true), vec3<bool>(true, true, true), any(vec2<bool>(false, true)) | false), !select(vec4<bool>(all(vec4<bool>(false, false, true, true)), false, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true)), vec2<bool>(true, true));
    var_1 = Struct_4(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), vec3<bool>(all(!var_1.c), false, !var_1.e.x), vec4<bool>(any(vec2<bool>(all(vec2<bool>(true, var_1.d.x)), var_1.c.x)), !(!var_1.d.x), any(!var_1.d.xxx), var_1.c.x), var_1.c.zx);
    let var_2 = u_input.b;
    let var_3 = Struct_5(u_input.c, ~select(max(_wgslsmith_sub_u32(3198u, arg_1), ~0u), 4294967295u, var_1.d.x), Struct_3(vec3<u32>(arg_1 >> (4294967295u % 32u), ~0u, 1u) ^ reverseBits(vec3<u32>(1u, u_input.c.x, 0u))));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(var_2, -47078i ^ (2147483647i ^ var_2), var_2, _wgslsmith_mult_i32(u_input.b, _wgslsmith_mod_i32(-1i, u_input.b)) << (max(var_0.a.x, _wgslsmith_div_u32(var_0.a.x, 45006u)) % 32u)), select(vec4<i32>(u_input.b, var_2, _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(5774i, 81970i)), 22979i), ~(vec4<i32>(-22593i, 18038i, var_2, 15836i) | vec4<i32>(-48729i, -1i, var_2, u_input.b)) | (~vec4<i32>(u_input.b, 0i, 19940i, u_input.b) | vec4<i32>(19431i, u_input.b, u_input.b, 2147483647i)), !vec4<bool>(!var_1.e.x, false & var_1.e.x, var_1.d.x, var_1.e.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = -func_2(_wgslsmith_div_u32(u_input.c.x, ~0u), ~_wgslsmith_dot_vec3_u32(min(u_input.c.wyw, vec3<u32>(17437u, 4294967295u, 1u)), u_input.c.zyy));
    let var_1 = 1u;
    var var_2 = vec4<bool>(true, true, true, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-3077f, _wgslsmith_f_op_f32(-1000f + -376f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-972f, -395f, var_2.x))))))));
    var_0 = ~func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, firstLeadingBit(vec4<u32>(u_input.c.x, var_1, u_input.d, 0u))), vec4<u32>(u_input.c.x | u_input.a.x, countOneBits(var_1), ~14009u, u_input.a.x)), ~(~0u));
    return Struct_3(min(u_input.c.yxx, select(u_input.c.yyy, u_input.c.wyw ^ u_input.c.yyx, var_2.wyz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(u_input.c, ~(1u ^ countOneBits(_wgslsmith_clamp_u32(1u, 1u, u_input.d))), func_1());
    let var_1 = false;
    let var_2 = firstTrailingBit(countOneBits(~(~_wgslsmith_sub_vec4_u32(u_input.c, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(632f))), _wgslsmith_div_f32(-109f, _wgslsmith_f_op_f32(-486f - -934f)))), -vec3<i32>(-25370i, u_input.b, 48401i));
}

