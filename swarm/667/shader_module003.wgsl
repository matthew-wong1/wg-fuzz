struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(598f, -2507f, -526f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, u_input.d, _wgslsmith_sub_u32(u_input.a.x, u_input.d)), 3u)])), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-332f - _wgslsmith_f_op_f32(ceil(856f))), global0[_wgslsmith_index_u32(4294967295u, 3u)]))));
    var_0 = Struct_1(-288f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), _wgslsmith_f_op_f32(max(-350f, -535f)))))));
    var var_1 = select(true, !all(vec4<bool>(true, true, true, true)), true);
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e, 50897i), -(~(-1i)), _wgslsmith_sub_i32(1i, u_input.c) >> (28218u % 32u)), -34404i, max(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.c, u_input.b, 41303i), vec4<i32>(u_input.c, 37630i, 1i, 22767i)), _wgslsmith_sub_i32(-2147483647i | u_input.c, ~u_input.e)), _wgslsmith_dot_vec3_i32(vec3<i32>(-761i, ~u_input.e, u_input.b), vec3<i32>(1i, i32(-1i) * -78076i, -u_input.e))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.e, -32736i), -1i, 2147483647i, u_input.e), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, u_input.b, u_input.c, u_input.e), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, -35672i, u_input.e, 0i), vec4<i32>(0i, u_input.e, u_input.e, -6748i)))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.b), -(vec4<i32>(-17029i, u_input.c, 505i, u_input.c) & vec4<i32>(u_input.e, 9071i, u_input.b, -30909i)))));
    var_2 = vec4<i32>(-16320i, ~69502i, 2147483647i, 0i);
    return select(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~1u, all(vec4<bool>(all(vec2<bool>(true, true)), true && all(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, true)), true)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = array<f32, 3>();
    let var_0 = vec4<u32>(func_3(), _wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u))), vec4<u32>(1u, 1u, 3873u, firstLeadingBit(u_input.a.x)) >> (vec4<u32>(abs(0u), u_input.a.x, ~u_input.d, ~u_input.a.x) % vec4<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.d, u_input.d) ^ _wgslsmith_dot_vec3_u32(~u_input.a, abs(u_input.a)), ~u_input.d), _wgslsmith_div_u32(7086u, _wgslsmith_mult_u32(u_input.a.x, u_input.d) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 30566u, u_input.d), u_input.a) % 32u)));
    global0 = array<f32, 3>();
    return Struct_2(-_wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<i32>(u_input.b, -5936i, u_input.e)), vec3<i32>(u_input.b, u_input.c, 34712i) | (vec3<i32>(u_input.b, u_input.e, 2147483647i) & vec3<i32>(1i, u_input.e, -1i))), firstLeadingBit(abs(~(vec3<u32>(4294967295u, 19544u, 1u) << (vec3<u32>(u_input.d, u_input.d, 1u) % vec3<u32>(32u))))), Struct_1(_wgslsmith_f_op_f32(637f - 1033f), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_0.x, 3u)])))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.d, 0u, var_0.x)), 3u)])));
}

fn func_1() -> f32 {
    global0 = array<f32, 3>();
    let var_0 = u_input.a.xy;
    global0 = array<f32, 3>();
    let var_1 = func_2(true);
    var var_2 = var_1;
    return global0[_wgslsmith_index_u32(u_input.a.x, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec4<bool>(any(vec3<bool>(false, false, true)), !any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), any(vec2<bool>(true, true)))), -reverseBits(u_input.c) > min(1i, -u_input.c), false);
    var var_1 = -601f;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())));
    let var_2 = vec4<u32>(_wgslsmith_div_u32(~149842u ^ func_2(var_0.x).b.x, 4294967295u), _wgslsmith_mult_u32(u_input.d, u_input.a.x) >> (~(~func_2(false).b.x) % 32u), 1u, _wgslsmith_mod_u32(~(~abs(u_input.a.x)), max(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 39852u, u_input.a.x), vec4<u32>(u_input.d, 39848u, u_input.a.x, u_input.d)), u_input.d & 89644u), reverseBits(101725u & u_input.a.x))));
    global0 = array<f32, 3>();
    let var_3 = func_2(false).c;
    var_0 = vec3<bool>(true, u_input.c == u_input.e, any(!vec3<bool>(!var_0.x, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, var_2.x, min(var_2.x ^ u_input.d, u_input.a.x >> (65541u % 32u))), 3u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1506f, -577f, var_3.b.x)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1937f, var_3.b.x, -877f))))) + vec3<f32>(var_3.a, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(41412u, 3u)]))))), -(firstLeadingBit(1i) << (~min(var_2.x, 1u) % 32u)), ~((vec4<i32>(2147483647i, u_input.c, 39609i, u_input.e) >> (vec4<u32>(var_2.x, 9597u, 24760u, 105487u) % vec4<u32>(32u))) >> (var_2 % vec4<u32>(32u))) ^ vec4<i32>(u_input.b << (_wgslsmith_sub_u32(1u, var_2.x) % 32u), min(_wgslsmith_dot_vec2_i32(vec2<i32>(9629i, 19620i), vec2<i32>(u_input.b, u_input.c)), abs(9337i)), abs(u_input.b) >> (~43038u % 32u), -13268i));
}

