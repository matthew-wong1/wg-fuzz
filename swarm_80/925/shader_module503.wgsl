struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 490f;
    var var_1 = 15330u;
    var_1 = arg_0.x;
    var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.x ^ 40150u, countOneBits(arg_0.x) << (arg_0.x % 32u)), _wgslsmith_clamp_vec2_u32(countOneBits(arg_0), vec2<u32>(~0u, 6127u | arg_0.x), _wgslsmith_add_vec2_u32(arg_0, abs(vec2<u32>(arg_0.x, 0u)))));
    let var_2 = var_0 != _wgslsmith_f_op_f32(-var_0);
    return Struct_1(var_0, arg_1.c.yxw, vec4<i32>(0i, ~(-(~2602i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, -2147483647i) & _wgslsmith_clamp_i32(arg_1.c.x, -30882i, arg_1.b.x), arg_1.b.x & firstTrailingBit(2147483647i)), abs(u_input.a.x ^ (arg_1.b.x ^ 55051i))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = func_2(vec2<u32>(1u, 1u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1238f)))), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-24001i, arg_1.x, u_input.a.x), vec3<i32>(arg_1.x, -3119i, -1i)), 14270i, countOneBits(_wgslsmith_mult_i32(arg_0.x, arg_1.x))), -_wgslsmith_mult_vec4_i32(min(arg_1, vec4<i32>(-2147483647i, 1758i, arg_0.x, arg_1.x)), _wgslsmith_mod_vec4_i32(arg_1, arg_1))));
    return _wgslsmith_div_i32(countOneBits(min(1i, 1i)), firstLeadingBit(var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -571f)) + _wgslsmith_f_op_f32(1680f + 1314f)))), u_input.a >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec4<i32>(2147483647i, -2147483647i, func_1(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, 7911i, u_input.b), min(vec4<i32>(u_input.a.x, -29983i, u_input.a.x, u_input.b), vec4<i32>(u_input.a.x, 1i, -1i, 41340i))), vec4<i32>(u_input.a.x, u_input.b, -3915i, 6724i) ^ (vec4<i32>(u_input.b, u_input.b, 14057i, u_input.a.x) >> (vec4<u32>(38212u, 123503u, 21401u, 30194u) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_i32(~max(vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.a.x), vec4<i32>(-15551i, 9044i, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, u_input.a.x, 34004i, u_input.b), countOneBits(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, -2147483647i))))));
    let var_1 = select(true, !(_wgslsmith_f_op_f32(ceil(-1000f)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a)))), true);
    let var_2 = ~_wgslsmith_sub_i32(select(-1i | u_input.b, 1i, var_1) ^ u_input.b, u_input.a.x);
    global0 = array<bool, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(10687u, ~reverseBits(~_wgslsmith_div_u32(0u, 18078u)), _wgslsmith_mult_vec3_i32(var_0.c.zyz, ~u_input.a), select(min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -1i, 0i, 1i), vec4<i32>(-24455i, 0i, var_0.b.x, 2147483647i)), ~var_0.c), -(vec4<i32>(u_input.a.x, 31034i, 0i, var_0.c.x) ^ vec4<i32>(var_0.b.x, u_input.b, u_input.a.x, u_input.b)), var_1) ^ var_0.c);
}

