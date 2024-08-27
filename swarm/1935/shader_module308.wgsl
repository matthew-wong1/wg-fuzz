struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: bool) -> bool {
    return false;
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(1u, select(45024u, 0u, true), reverseBits(u_input.b))), vec3<u32>(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 8146u), vec3<u32>(0u, u_input.b, 29990u))), ~(~1u), ~u_input.b & 1194u), ~(vec3<u32>(u_input.b, u_input.b, u_input.b) ^ vec3<u32>(47735u, u_input.b, u_input.b))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, ~u_input.b << (u_input.b % 32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(97919u, u_input.b, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), max(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(1u, 62052u, u_input.b))), select(vec3<u32>(4294967295u, 4309u, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b), 3111i >= u_input.a.x))));
    let var_1 = 0i;
    var var_2 = select(func_3(~countOneBits(vec3<i32>(-117i, u_input.c, 0i)), var_0, vec2<bool>(true, true), false) != ((~u_input.b >> (14641u % 32u)) != (var_0.x >> (1u % 32u))), false, true);
    var var_3 = _wgslsmith_div_f32(-1482f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -761f) * _wgslsmith_f_op_f32(f32(-1f) * -386f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(317f)))))))));
    let var_4 = ~(~_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(5127u, 0u, 7987u, var_0.x), vec4<u32>(18557u, var_0.x, var_0.x, var_0.x)), vec4<u32>(var_0.x, _wgslsmith_sub_u32(var_0.x, 0u), 65400u, 34103u)));
    return var_4;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = func_2();
    global0 = array<vec2<i32>, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, -400f, 527f, -995f) + vec4<f32>(588f, 1000f, 1900f, 211f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, 585f, -137f, 502f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(820f)), _wgslsmith_div_f32(361f, -1816f), _wgslsmith_f_op_f32(f32(-1f) * -350f), 1000f), arg_0)), !select(arg_0, !arg_0, vec4<bool>(false, true, arg_0.x, true)))));
    let var_2 = !select(select(!arg_0.xy, arg_0.zw, arg_0.x), arg_0.zw, !select(arg_0.xw, vec2<bool>(arg_0.x, arg_0.x), !vec2<bool>(arg_0.x, arg_0.x)));
    let var_3 = ~_wgslsmith_add_vec2_i32(u_input.a, u_input.a << (var_0.ww % vec2<u32>(32u)));
    return abs(func_2().x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!any(vec2<bool>(true, true)) != true, true, !((-18427i >> (func_1(vec4<bool>(false, false, false, false)) % 32u)) < u_input.c));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(361f)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, -1000f)) - vec2<f32>(var_1.x, var_1.x)), vec2<f32>(-420f, _wgslsmith_f_op_f32(max(var_1.x, var_1.x))))))), -u_input.d, u_input.e, 0i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(196f + -1368f))), var_2.b.x, -452f), vec3<f32>(-347f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-808f)) - var_2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(790f)), _wgslsmith_f_op_f32(ceil(355f))))));
    let var_4 = !select(vec3<bool>(var_0.x, var_0.x, var_0.x), !select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, true), all(vec4<bool>(false, var_0.x, true, false))), !vec3<bool>(var_0.x, false, any(var_0.xy)));
    let var_5 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec4_i32(min(-vec4<i32>(var_2.c, -21658i, u_input.e, 21621i), vec4<i32>(u_input.e, 0i, u_input.a.x, u_input.d)), vec4<i32>(_wgslsmith_mult_i32(var_2.e, 27246i), countOneBits(-20795i), ~u_input.a.x, _wgslsmith_mult_i32(u_input.c, var_2.e)))), _wgslsmith_dot_vec3_i32(select(firstTrailingBit(vec3<i32>(u_input.c, -2147483647i, var_2.c)), vec3<i32>(-41441i, var_2.c, var_2.e), true) | -_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_2.e, var_2.d), vec3<i32>(var_2.c, u_input.a.x, 1i)), ~vec3<i32>(var_2.e, 29275i, -2147483647i) | ~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_2.e, var_2.e), vec3<i32>(-28995i, 2147483647i, 83252i))));
    global0 = array<vec2<i32>, 20>();
    var_1 = _wgslsmith_f_op_vec2_f32(sign(var_3.zy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(~67022u, ~4294967295u, 1329u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(var_2.a, u_input.b, 9641u)), 0u, var_2.a)) ^ ~((vec3<u32>(16u, u_input.b, var_2.a) & vec3<u32>(u_input.b, 4236u, u_input.b)) >> ((vec3<u32>(35898u, var_2.a, var_2.a) >> (vec3<u32>(0u, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

