struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    var var_0 = select(0i, _wgslsmith_mult_i32(u_input.a >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u), -u_input.a >> (u_input.b % 32u)) >> (12250u % 32u), false);
    var var_1 = Struct_1(33389u, ~(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 21172u) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) % vec4<u32>(32u)), max(vec4<u32>(12006u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b))) >> (min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<u32>(0u, 14120u, u_input.b, u_input.b), vec4<u32>(u_input.b, 30734u, 4294967295u, 0u)) % vec4<u32>(32u))));
    var var_2 = Struct_1(var_1.b.x, ~var_1.b);
    let var_3 = 0u;
    var_1 = Struct_1(var_3, min((vec4<u32>(2815u, var_1.b.x, 4294967295u, 8474u) << (~var_2.b % vec4<u32>(32u))) ^ vec4<u32>(4294967295u >> (var_3 % 32u), _wgslsmith_sub_u32(var_3, 1u), _wgslsmith_mult_u32(1u, var_3), reverseBits(var_2.a)), _wgslsmith_add_vec4_u32(var_2.b, ~(~vec4<u32>(var_3, 40845u, 32095u, var_3)))));
    return Struct_1(var_3, abs(~var_1.b));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(firstLeadingBit(-max(vec4<i32>(1i, u_input.a, 2147483647i, 6010i), ~vec4<i32>(13678i, 16040i, u_input.a, u_input.a))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, countOneBits(0i), _wgslsmith_mult_i32(u_input.a, u_input.a), 1i), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1716i, u_input.a, 2147483647i, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 17345i, 2147483647i, -1i), vec4<i32>(u_input.a, u_input.a, 10909i, u_input.a)), vec4<i32>(1i, u_input.a, -2147483647i, u_input.a))), _wgslsmith_sub_i32(-u_input.a, -16963i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, u_input.b, arg_0.a, u_input.b), ~vec4<u32>(arg_0.b.x, 12676u, arg_0.a, 4294967295u)) % 32u), 18441i, ~(~(0i & u_input.a))));
    let var_1 = -2147483647i;
    var var_2 = -_wgslsmith_sub_i32(abs(_wgslsmith_add_i32(var_0.x, 91603i)), _wgslsmith_mod_i32(-25027i, _wgslsmith_mult_i32(0i, u_input.a)) | (u_input.a | _wgslsmith_add_i32(-2147483647i, u_input.a)));
    let var_3 = var_0.zx;
    var_2 = -12891i;
    return func_2();
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = ~0u;
    var var_1 = func_3(func_2());
    let var_2 = func_3(Struct_1(0u, var_1.b));
    var var_3 = Struct_1(46524u, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~var_0, _wgslsmith_add_u32(2279u, u_input.b), ~var_2.a, 2397u), func_2().b, vec4<u32>(28164u, _wgslsmith_clamp_u32(var_0, arg_0.x, var_2.b.x), ~var_1.a, 5179u)));
    var_3 = Struct_1(39819u, var_3.b);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_u32(u_input.b, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(12598u, u_input.b, 15354u, 65198u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(43107u, 1u, u_input.b, 63814u)), 0u)), vec4<u32>(_wgslsmith_sub_u32(12565u, ~(~u_input.b)), _wgslsmith_clamp_u32(~u_input.b, 4294967295u, 1u), 9596u, _wgslsmith_add_u32(1u, ~(12241u ^ u_input.b))));
    let var_1 = var_0.b.yy;
    var_0 = Struct_1(u_input.b, ~(vec4<u32>(var_1.x, var_1.x, 71131u ^ u_input.b, min(4294967295u, 24341u)) << (vec4<u32>(1u, _wgslsmith_mult_u32(var_1.x, 17688u), u_input.b, var_0.b.x) % vec4<u32>(32u))));
    var_0 = func_1(vec3<u32>(u_input.b, var_0.a, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2124f * 232f), _wgslsmith_f_op_f32(1593f - 812f), _wgslsmith_div_f32(-386f, 960f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-589f + 576f), _wgslsmith_f_op_f32(trunc(-638f)), _wgslsmith_f_op_f32(-1431f * 672f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(143f, -425f, -1347f))))))), func_1(reverseBits(var_0.b.yzy)).b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -633f)) - -2030f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1038f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1318f + 1797f)), -1382f))));
}

