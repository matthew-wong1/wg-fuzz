struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: vec2<i32>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(reverseBits(-u_input.b.x)), global2.x, Struct_1(firstTrailingBit(~(-13297i))), ~vec2<u32>(47967u, u_input.a)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, -849f, global2.x, global2.x))) * vec4<f32>(global2.x, -480f, global2.x, 1624f)), vec4<f32>(global2.x, _wgslsmith_f_op_f32(abs(170f)), global2.x, _wgslsmith_f_op_f32(-global2.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 2259f)), _wgslsmith_f_op_f32(f32(-1f) * -748f), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1083f)))), global0.x, -1i, -1000f);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-105f, 303f, var_0.b.x, 245f) - var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.b)) + var_0.b.x), _wgslsmith_f_op_f32(317f * _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(sign(-1600f)))) - var_0.b);
    var var_1 = var_0;
    var var_2 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(42812i ^ (-1i & global1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 16079i), vec2<i32>(var_0.a.a.a, -9050i)) ^ ~(-1i)), (-vec2<i32>(-13185i, u_input.b.x) ^ vec2<i32>(global1.x, var_0.a.a.a)) & u_input.b));
    var var_3 = var_1.a;
    return var_0.c;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    var var_0 = global2.x;
    global0 = vec3<bool>(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(max(global2.x, global2.x)))) != global2.x, !(global2.x <= global2.x), global0.x);
    global0 = select(vec3<bool>(global0.x, false, global0.x), select(!vec3<bool>(true, !global0.x, !global0.x), select(vec3<bool>(false, global0.x, true), !vec3<bool>(true, global0.x, true), all(global0.yx)), !vec3<bool>(!global0.x, global2.x != global2.x, all(vec3<bool>(global0.x, global0.x, global0.x)))), func_3(global0.x));
    let var_1 = all(!global0.xx);
    return ~(u_input.a | ~u_input.a);
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = func_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~((vec2<u32>(7185u, 1u) & vec2<u32>(u_input.a, u_input.a)) >> (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0, vec2<i32>(18128i, firstTrailingBit(-3068i))), vec2<i32>(~u_input.b.x & u_input.b.x, ~(209i >> (u_input.a % 32u)))));
    var_0 = u_input.a;
    global0 = select(select(select(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(true, global0.x, false), vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, global0.x, true))), false), select(vec3<bool>(true, true, !global0.x), vec3<bool>(true, true, global2.x != 325f), !(!vec3<bool>(false, global0.x, true))), all(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, 34202u < u_input.a))), select(!(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), true)), select(select(vec3<bool>(true, true, false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), false), !global0.x), select(!vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, global0.x)), true), any(vec4<bool>(false, false, global0.x, false))), all(select(vec3<bool>(true, true, false), vec3<bool>(global0.x, false, global0.x), select(false, global0.x, true)))), !select(!vec3<bool>(global0.x, false, true), vec3<bool>(any(vec4<bool>(false, global0.x, global0.x, false)), !global0.x, true), vec3<bool>(true, all(vec3<bool>(true, true, true)), true)));
    let var_1 = abs(max(u_input.a, select(56991u, ~0u, true))) >> (~_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(u_input.a & 35278u, ~u_input.a)) % 32u);
    global2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1618f, 1918f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2292f + global2.x))))));
    return Struct_4(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-297f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) - _wgslsmith_f_op_f32(f32(-1f) * -254f)))), global2.wyy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(955f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - 685f))), _wgslsmith_f_op_f32(round(235f)), global2.x)))));
    let var_0 = func_1(u_input.b);
    global1 = vec2<i32>(-_wgslsmith_add_i32(-25237i, global1.x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(u_input.b.x, global1.x, -1i)), vec3<i32>(12303i, _wgslsmith_clamp_i32(-28077i, global1.x, u_input.b.x), i32(-1i) * -2147483647i)), select(-vec3<i32>(u_input.b.x, -5367i, u_input.b.x) | ~vec3<i32>(u_input.b.x, -21264i, u_input.b.x), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-26750i, u_input.b.x, u_input.b.x), -vec3<i32>(55181i, 0i, u_input.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b.x, 13122i), vec3<i32>(-5962i, global1.x, -1i))), vec3<bool>(true, select(true, global0.x, true), func_3(true)))));
    global1 = _wgslsmith_mod_vec2_i32(select(~u_input.b, u_input.b, global0.yy), vec2<i32>(-1i, _wgslsmith_div_i32(-firstLeadingBit(-2147483647i), global1.x)));
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1632f - 556f)), 1379f, 396f, -388f))));
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))), global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * -524f))), var_0.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(-157f, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f * 515f)), global2.x, -1000f)));
    var var_1 = Struct_2(Struct_1(abs(1i)), global2.x, Struct_1(-1i), max(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, 4294967295u)), (vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 19709u) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 23493u), vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))) ^ select(~vec2<u32>(u_input.a, 18393u), vec2<u32>(u_input.a, 0u) | ~vec2<u32>(25454u, 1u), global0.x));
    var_1 = Struct_2(Struct_1(_wgslsmith_mod_i32(global1.x, var_1.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f - -182f)), Struct_1(u_input.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~(9004u << (u_input.a % 32u))), vec2<u32>(_wgslsmith_clamp_u32(max(0u, var_1.d.x), var_1.d.x, var_1.d.x), 50463u), var_1.d | _wgslsmith_mod_vec2_u32(~var_1.d, ~var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec2<i32>(~0i, ~u_input.b.x)), _wgslsmith_mod_u32(66050u, max(var_1.d.x, _wgslsmith_mult_u32(4294967295u, var_1.d.x))) ^ var_1.d.x);
}

