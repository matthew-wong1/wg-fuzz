struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_1(countOneBits(arg_0), u_input.b.x, 0i > u_input.a, ~firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(16047u, 1820u), vec2<u32>(14218u, 15575u))));
    let var_1 = ~0u;
    var var_2 = -1i & reverseBits(~var_0.b);
    var_2 = firstLeadingBit(-2147483647i);
    var var_3 = _wgslsmith_mult_vec3_i32(-(~arg_0.zyw), vec3<i32>(-32347i, u_input.a, -2147483647i));
    return ~var_0.b;
}

fn func_1() -> vec2<u32> {
    global0 = vec4<f32>(global0.x, -182f, -745f, _wgslsmith_f_op_f32(trunc(-551f)));
    global1 = array<bool, 21>();
    var var_0 = Struct_1(vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(~u_input.b.x >> (_wgslsmith_div_u32(31875u, 10895u) % 32u), reverseBits(1i)), u_input.a, 0i), 1i, true, vec2<u32>(1u, 1u));
    let var_1 = Struct_1(~(~(~_wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(1i, -2147483647i, var_0.b, u_input.a)))), _wgslsmith_mult_i32(-42029i | _wgslsmith_div_i32(-1i, u_input.a), ~(77663i | var_0.a.x) & func_2(vec4<i32>(50446i, 0i, var_0.b, u_input.b.x), _wgslsmith_div_vec3_f32(global0.xyw, vec3<f32>(global0.x, -1962f, global0.x)))), false, var_0.d);
    var var_2 = var_1.d;
    return abs(~(~vec2<u32>(abs(var_2.x), ~var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 21>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.x, -155f, true)), _wgslsmith_f_op_f32(-global0.x))), global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.x)))))));
    let var_1 = vec3<u32>(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), ~reverseBits(vec3<u32>(6702u, 96862u, 4294967295u))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(23760u, 42614u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) << (reverseBits(~vec2<u32>(55621u, 4294967295u)) % vec2<u32>(32u)), ~func_1()), 0u);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 995f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(81643i, 0i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-978i, u_input.b.x, 2147483647i), vec3<i32>(u_input.b.x, u_input.a, 1i)))), _wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(abs(vec3<i32>(0i, u_input.a, u_input.a)), vec3<i32>(u_input.b.x, 2147483647i, 0i)), vec3<i32>(53902i, 1i, u_input.a ^ _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.b.x))));
}

