struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, _wgslsmith_clamp_i32(-15946i, ~_wgslsmith_div_i32(u_input.a, u_input.a), 2147483647i)), vec4<i32>(1i, 0i, firstLeadingBit(0i), _wgslsmith_clamp_i32(abs(max(u_input.a, 42318i)), u_input.a, reverseBits(u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_3)))));
    var var_2 = 633f;
    var var_3 = arg_1;
    let var_4 = Struct_1(~arg_0);
    return var_0.xy;
}

fn func_1(arg_0: bool) -> i32 {
    return _wgslsmith_dot_vec2_i32(countOneBits(~_wgslsmith_add_vec2_i32(vec2<i32>(-7746i, 29931i) ^ vec2<i32>(9375i, u_input.a), firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))), -(~func_2(40358u, u_input.a < u_input.a, true, 1477f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_1;
    var_0 = arg_3;
    var_0 = Struct_1(abs(arg_3.a));
    let var_1 = arg_3;
    let var_2 = 18952i;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(func_1(true), func_2(4294967295u, true, true, -700f).x) >= _wgslsmith_clamp_i32(36560i, -2147483647i, -1i);
    let var_1 = ~1u;
    let var_2 = Struct_1(min(~52718u, _wgslsmith_mod_u32(var_1, var_1 >> (abs(var_1) % 32u))));
    var var_3 = _wgslsmith_div_f32(-2809f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(var_1), _wgslsmith_f_op_f32(f32(-1f) * -1407f), Struct_1(5526u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -508f)), -202f)), -1519f));
    var var_4 = Struct_1(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-860f, _wgslsmith_f_op_f32(floor(948f))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1993f, 231f), 1134f)), 1484f))), vec3<u32>(1u, ~(~35608u), var_2.a) | ~firstTrailingBit(vec3<u32>(9224u, var_1, 48515u) << (vec3<u32>(75296u, 37471u, 34303u) % vec3<u32>(32u))));
}

