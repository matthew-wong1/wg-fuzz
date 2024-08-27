struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1179f;

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(636f, -2802f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1224f, 2477f)), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(569f, 2551f)))))))))));
    let var_1 = 31581u;
    var var_2 = select(arg_0, -select(arg_0, -abs(arg_0), true), (all(vec3<bool>(true, true, true)) && select(u_input.a == 211u, any(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, true)))) | ((~0u < var_1) && true));
    var var_3 = vec2<i32>(-_wgslsmith_add_i32(var_2.x, -39829i), -1i) | max(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1.x), vec2<i32>(var_2.x, var_2.x)), arg_0.wy, vec2<i32>(30135i, var_2.x)) << ((~vec2<u32>(4294967295u, 13000u) & vec2<u32>(49899u, u_input.b)) % vec2<u32>(32u)), var_2.zz);
    var_2 = -arg_0;
    return Struct_1(vec4<bool>(true, !all(vec3<bool>(true, true, true)), all(vec2<bool>(all(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, false, true)))), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))), min(vec3<u32>(_wgslsmith_sub_u32(68004u, reverseBits(0u)), (var_1 ^ u_input.d.x) ^ 4294967295u, 26846u), vec3<u32>(1u, var_1, u_input.b)), ~min((u_input.c.zy >> (u_input.d % vec2<u32>(32u))) << (~u_input.d % vec2<u32>(32u)), vec2<u32>(select(var_1, var_1, false), 79481u)), (_wgslsmith_sub_u32(92665u, ~4294967295u) & (~var_1 ^ 1u)) >= _wgslsmith_add_u32(3552u, var_1));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - arg_1) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1)), 1034f))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1380f))), _wgslsmith_f_op_f32(1f * -668f)), 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(453f, _wgslsmith_f_op_f32(func_3(true, -1450f, _wgslsmith_clamp_vec4_i32(vec4<i32>(15838i, 1i, 1i, 0i), vec4<i32>(global1.x, 15166i, 40756i, 27450i), vec4<i32>(global1.x, 26187i, global1.x, -5060i))))) + -1144f));
    var var_1 = func_1(vec4<i32>(1i, ~firstLeadingBit(_wgslsmith_mult_i32(global1.x, global1.x)), abs(_wgslsmith_sub_i32(-43902i, _wgslsmith_add_i32(global1.x, -2147483647i))), global1.x));
    let var_2 = ~arg_1.x;
    let var_3 = firstTrailingBit(~firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(12749i, global1.x, 2147483647i, 2147483647i), vec4<i32>(0i, -1i, 1i, -12999i))));
    let var_4 = firstLeadingBit(~reverseBits(vec4<u32>(max(arg_0.x, 1u), arg_1.x ^ 10155u, ~var_1.c.x, 81905u)));
    return ~firstTrailingBit(_wgslsmith_add_i32(global1.x, -(var_3 >> (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~firstLeadingBit(-(vec4<i32>(10692i, 0i, global1.x, -2147483647i) ^ vec4<i32>(global1.x, 0i, 1i, global1.x))));
    global1 = -_wgslsmith_sub_vec2_i32(~(vec2<i32>(1i, global1.x) << (u_input.c.zx % vec2<u32>(32u))) << (max(~vec2<u32>(26274u, u_input.a), vec2<u32>(var_0.c.x, 0u)) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-56540i, -2147483647i), vec2<i32>(33165i, global1.x)) & _wgslsmith_mult_vec2_i32(vec2<i32>(47749i, global1.x) | vec2<i32>(global1.x, global1.x), vec2<i32>(1i, 1i)));
    var var_1 = -868f;
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = var_0;
    var var_4 = firstLeadingBit(-_wgslsmith_mult_vec3_i32(~vec3<i32>(global1.x, -1i, var_2), _wgslsmith_mod_vec3_i32(vec3<i32>(-773i, var_2, 1i), vec3<i32>(1i, 17903i, var_2))) & _wgslsmith_mod_vec3_i32((vec3<i32>(var_2, var_2, 37324i) >> (u_input.c % vec3<u32>(32u))) & (vec3<i32>(global1.x, -88885i, 49239i) << (var_3.b % vec3<u32>(32u))), vec3<i32>(~1i, i32(-1i) * -1i, var_2)));
    var_3 = func_1(~vec4<i32>(global1.x, -1i, func_2(vec3<u32>(10173u, 79147u, var_3.c.x), vec2<u32>(var_3.c.x, 1u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(86083u, var_3.c.x), var_3.b.yy) % 32u), _wgslsmith_div_i32(0i, ~790i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, vec3<u32>(_wgslsmith_mult_u32(0u, ~u_input.b & ~1u), var_0.b.x, abs(reverseBits(func_1(vec4<i32>(var_4.x, global1.x, var_2, -2147483647i)).c.x))), ((abs(var_2) << (~30636u % 32u)) >> (firstLeadingBit(~0u) % 32u)) | var_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(1146f, 1000f)), 772f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(948f, 713f)))));
}

