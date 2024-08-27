struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_3;

var<private> global2: i32 = -3788i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    return firstLeadingBit(select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global1.e), vec2<u32>(u_input.b, arg_1.x)) ^ ~(global1.e & 1u), 59913u, (_wgslsmith_div_i32(2147483647i, global1.b.b.a.x) >> (~global1.c.x % 32u)) != arg_0.a.x));
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<i32>(68863i, -32907i, _wgslsmith_mult_i32(~abs(i32(-1i) * -22018i), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(global1.b.b.a.x, global1.b.b.a.x))), global0.x);
    var var_1 = vec2<bool>(true, var_0.x < firstTrailingBit(var_0.x));
    var var_2 = _wgslsmith_f_op_f32(round(603f));
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.a.x, _wgslsmith_f_op_f32(min(global1.a.a.x, global1.d)), _wgslsmith_f_op_f32(f32(-1f) * -340f), -1000f), vec4<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(119f - global1.d), _wgslsmith_f_op_f32(-global1.a.a.x), global1.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, global1.b.a.x, global1.d, global1.d) + vec4<f32>(-1000f, global1.b.a.x, -809f, -728f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1278f, -635f, -127f, global1.d)))))));
    return Struct_3(Struct_2(var_4.yyx, Struct_1(_wgslsmith_mod_vec2_i32(global0.yz << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), global1.a.c.a)), Struct_1(-reverseBits(global0.zx))), global1.a, vec2<u32>(~func_3(global1.b.c, vec4<u32>(3145u, 32878u, 29851u, u_input.b) ^ vec4<u32>(4294967295u, 47997u, global1.e, 72807u)), _wgslsmith_add_u32(global1.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global1.c.x, 46382u, 4294967295u) | vec4<u32>(global1.c.x, 22949u, global1.c.x, 9476u), ~vec4<u32>(5104u, 53222u, 0u, 48409u)))), _wgslsmith_f_op_f32(-1756f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f * global1.d)))), 1u);
}

fn func_1() -> i32 {
    let var_0 = func_2();
    var var_1 = func_2().b;
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.d)), _wgslsmith_f_op_f32(var_0.d - var_1.a.x)))), func_2().d), _wgslsmith_f_op_f32(sign(var_1.a.x)));
    let var_3 = firstTrailingBit(vec3<i32>(-6644i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, 2147483647i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_1.c.a.x, var_1.b.a.x, -2147483647i), vec4<i32>(global1.b.c.a.x, global1.a.b.a.x, -20871i, -2147483647i)), countOneBits(1i)), var_0.b.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.b.a.x, func_2().b.c.a.x, 0i, _wgslsmith_mod_i32(-18369i, -1i)), -vec4<i32>(-53352i, global1.a.b.a.x, global0.x, 1i) & vec4<i32>(var_1.c.a.x, global1.b.b.a.x, -27761i, var_1.c.a.x))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(sign(-1196f)), -717f);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(select(_wgslsmith_mult_i32(-3924i, func_1()), (global0.x | global0.x) << (~0u % 32u), all(vec2<bool>(true, true))), countOneBits(_wgslsmith_add_i32(1i, -41963i)), global1.a.c.a.x) << (vec3<u32>(~29977u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.c.x, 0u, global1.e)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(4294967295u, global1.c.x, 73382u), vec3<u32>(1u, global1.e, 0u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 88640u, 4294967295u), vec3<u32>(u_input.b, 12924u, global1.c.x))), global1.c.x) % vec3<u32>(32u));
    var var_1 = global0.x;
    let var_2 = Struct_4(~(~global1.c), func_2().b.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))))), Struct_3(Struct_2(vec3<f32>(global1.d, _wgslsmith_f_op_f32(trunc(global1.d)), -392f), global1.a.b, Struct_1(global0.xy)), Struct_2(global1.b.a, Struct_1(countOneBits(vec2<i32>(20425i, 2147483647i))), func_2().a.b), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(41148u, 63534u)), global1.c) ^ ~global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-554f, 1097f))) + _wgslsmith_f_op_f32(195f + _wgslsmith_f_op_f32(select(-1678f, global1.a.a.x, true)))), 4294967295u));
    var var_3 = 27738u;
    let var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.c, -1156f, -414f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.d, -595f, global1.b.a.x))))), func_2().b.b, func_2().b.c), Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.d.b.a), Struct_1(vec2<i32>(0i, var_2.d.a.b.a.x) | global1.b.b.a), func_2().b.c), ~var_2.d.c, var_2.c, select(~1u, func_2().c.x, false));
    var_0 = ~(~firstLeadingBit(vec3<i32>(~2147483647i, 347i >> (var_4.e % 32u), _wgslsmith_mult_i32(global1.a.b.a.x, 0i))));
    var var_5 = all(vec2<bool>((~37822u >= global1.e) & !any(vec4<bool>(true, true, false, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(min(vec4<i32>(var_4.b.b.a.x, -67610i, var_2.d.b.b.a.x, var_2.b.a.x), -vec4<i32>(2147483647i, -7836i, 16460i, global0.x)), ~reverseBits(vec4<i32>(2147483647i, var_2.d.a.b.a.x, var_4.a.b.a.x, 4215i))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_4.b.c.a.x >> (96726u % 32u), -2147483647i, 2147483647i, var_4.a.b.a.x), ~(-vec4<i32>(global1.b.b.a.x, var_0.x, var_4.b.b.a.x, 1i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.d.d, -1124f, -627f) * vec4<f32>(var_2.c, -293f, var_4.b.a.x, var_4.a.a.x)))))), vec3<f32>(-556f, var_2.d.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1085f)) - _wgslsmith_f_op_f32(sign(-490f)))))), vec3<i32>(reverseBits(var_0.x << (firstTrailingBit(var_4.e) % 32u)), -4800i, min(-var_4.b.c.a.x, ~global0.x) & abs(1i)));
}

