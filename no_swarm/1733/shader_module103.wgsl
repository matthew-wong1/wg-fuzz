struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    var var_0 = Struct_1(23228u, arg_0.b, arg_0.c, 544f, false);
    let var_1 = Struct_1(~4294967295u, abs(-1i), ~(~(abs(vec2<u32>(u_input.a, var_0.a)) << (reverseBits(vec2<u32>(4294967295u, var_0.c.x)) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-arg_0.d), !(7789i < _wgslsmith_add_i32(arg_0.b, arg_2)) | !arg_0.e);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d - var_1.d)));
    let var_3 = ~(~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 10989u), _wgslsmith_div_u32(var_0.c.x, arg_0.c.x), arg_0.a), 15351u, ~firstLeadingBit(0u), _wgslsmith_mod_u32(abs(60650u), arg_0.a)));
    var var_4 = true;
    return var_1.d;
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = Struct_1(~52141u, -2147483647i, vec2<u32>(13548u, 3022u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))))), true);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-688f, 449f, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -361f, -2186f))))));
    var var_3 = firstTrailingBit(_wgslsmith_dot_vec2_u32(~(~(var_0.c ^ var_0.c)), vec2<u32>(~u_input.a, ~(~4294967295u))));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-517f, var_0.d, arg_1) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, var_0.d))), arg_0 ^ -1i)) + 224f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.d, -1412f, false)) * _wgslsmith_f_op_f32(var_2.x * 1000f))), 1000f));
    return 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = ~(-4664i);
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~(func_2(0i, -1038f) ^ abs(u_input.a)), ~_wgslsmith_div_u32(firstLeadingBit(u_input.a), 1u), abs(~(25616u >> (u_input.a % 32u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~u_input.a, u_input.a | u_input.a), abs(vec3<u32>(u_input.a, 15793u, 11281u))) ^ reverseBits(reverseBits(reverseBits(vec3<u32>(1u, u_input.a, 39344u)))));
    var_1 = vec3<u32>(_wgslsmith_div_u32(u_input.a & var_1.x, ~(~(~0u))), ~(u_input.a ^ 4294967295u) | ~(~u_input.a), ~1u);
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(16630u, ~36603u, u_input.a ^ u_input.a), ~vec3<u32>(1u, 99761u, var_1.x)), countOneBits(abs(vec3<u32>(0u, var_1.x, var_1.x)))), var_0, countOneBits(~(var_1.xx ^ var_1.xx)) ^ vec2<u32>(_wgslsmith_div_u32(abs(17683u), abs(u_input.a)), 59628u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1677f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1181f, 746f))) * -449f), true);
    var_1 = ~(~(~(~vec3<u32>(1u, 0u, 144946u)))) & vec3<u32>(~5354u, _wgslsmith_mod_u32(func_2(var_2.b, 953f) >> (var_2.a % 32u), 4294967295u), ~var_1.x);
    return Struct_1(4294967295u, _wgslsmith_sub_i32(var_0 | 2147483647i, 1i), ~_wgslsmith_mod_vec2_u32(vec2<u32>(70735u, var_2.a) | firstTrailingBit(var_2.c), abs(~var_2.c)), var_2.d, all(!select(vec2<bool>(true, true), select(vec2<bool>(true, var_2.e), vec2<bool>(true, var_2.e), vec2<bool>(false, var_2.e)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-var_0.d);
    var_1 = _wgslsmith_f_op_f32(-var_0.d);
    let var_2 = func_1();
    let var_3 = Struct_1(u_input.a ^ u_input.a, var_0.b, var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1646f, 1000f) * _wgslsmith_f_op_f32(-1027f - var_2.d))), var_2.d)), false);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(max(countOneBits(vec4<u32>(4294967295u, 21692u, 18851u, 33974u)), abs(vec4<u32>(41990u, u_input.a, 42219u, 0u))) ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(53146u, 1u, u_input.a, u_input.a), vec4<u32>(30168u, 1u, 28715u, var_2.a), vec4<u32>(1u, var_3.c.x, var_0.a, var_3.a)) ^ vec4<u32>(var_2.c.x, var_4.c.x, var_3.a, 23323u))), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.b, 16785i, var_2.b, 1i), vec4<i32>(var_4.b, var_2.b, var_4.b, -2147483647i)), 1i), reverseBits(vec2<i32>(-43424i, var_4.b)))), reverseBits(-(vec4<i32>(var_2.b, 2147483647i, 2147483647i, -32080i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-7442i, 0i, var_4.b, -19526i), vec4<i32>(-2147483647i, -1i, var_4.b, -44677i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(var_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, var_3.d)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2083f, var_3.d))), min(9340i, var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.d - var_3.d), var_4.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + var_3.d) + _wgslsmith_f_op_f32(-var_0.d))))), ~_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, var_0.b, -2136i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(1i, var_0.b, var_3.b), vec3<i32>(1i, 1i, -1i)), -(~vec3<i32>(var_4.b, 2147483647i, var_4.b))));
}

