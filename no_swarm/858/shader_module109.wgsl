struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(~63114u, min(u_input.e.x, 0u), u_input.e.x), u_input.e.xxx)));
    let var_1 = !(!(!vec2<bool>(false, u_input.b < 4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(trunc(1f));
    var var_3 = var_1;
    let var_4 = Struct_4(var_0.a);
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = arg_1;
    var var_1 = countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -37644i & func_3(), u_input.a.x));
    var_1 = _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(~min(vec4<i32>(var_1.x, u_input.a.x, 0i, 2147483647i), vec4<i32>(var_1.x, u_input.d.x, u_input.d.x, -2147483647i)), ~reverseBits(vec4<i32>(4828i, u_input.a.x, var_1.x, 1i)))), vec4<i32>(u_input.a.x, -29031i, var_1.x, -firstLeadingBit(1i)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_3 = countOneBits(~u_input.e);
    return u_input.c;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    let var_0 = reverseBits(vec2<u32>(~_wgslsmith_sub_u32(u_input.c << (arg_1.a % 32u), func_2(Struct_1(26443u, u_input.e.zyz), 8641u)), u_input.b));
    var var_1 = arg_0;
    let var_2 = Struct_4(~abs(var_0.x ^ ~u_input.e.x));
    var var_3 = ~u_input.e.xy;
    let var_4 = vec4<bool>(true, true, false, any(select(vec2<bool>(arg_0, true && arg_0), vec2<bool>(true, true), true)));
    return Struct_1(func_2(Struct_1(3719u, _wgslsmith_add_vec3_u32(u_input.e.zww, u_input.e.xzw) | (u_input.e.yxx | vec3<u32>(32588u, arg_1.a, u_input.e.x))), ~firstLeadingBit(func_2(Struct_1(u_input.b, u_input.e.yxx), u_input.c))), reverseBits(vec3<u32>(var_0.x, var_3.x, _wgslsmith_div_u32(arg_1.a, ~var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, Struct_4(select(reverseBits(u_input.c), u_input.b, true) >> (u_input.e.x % 32u)), u_input.d.x);
    var var_1 = Struct_2(var_0, func_1(true, Struct_4(4294967295u), -36289i));
    var_1 = Struct_2(Struct_1(3563u, ~(~(~vec3<u32>(4294967295u, 23999u, 4294967295u)))), var_0);
    var_1 = Struct_2(Struct_1(0u, _wgslsmith_div_vec3_u32(~select(vec3<u32>(u_input.c, u_input.b, 1u), var_1.b.b, false), select(abs(var_0.b), var_0.b, u_input.d.x == u_input.a.x))), var_1.b);
    var var_2 = vec2<i32>(1i, 1i) ^ u_input.d.xz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-2628f * 1564f), _wgslsmith_f_op_f32(-757f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-902f, 1110f, true)) * _wgslsmith_f_op_f32(-1190f + -1363f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(636f, -131f)))) * _wgslsmith_f_op_f32(f32(-1f) * -784f))), ~(-1i));
}

