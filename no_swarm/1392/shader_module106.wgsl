struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
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

var<private> global0: vec4<u32>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~(~global0.x), 109446u), _wgslsmith_dot_vec4_u32(vec4<u32>(6794u, u_input.b.x, u_input.c.x, u_input.c.x), ~vec4<u32>(1u, 1u, 1u, global0.x)) & ~0u, firstLeadingBit(68029u), 59770u), countOneBits(abs(_wgslsmith_mult_i32(-10087i, -28550i))) <= min(~u_input.a, 1i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-653f, -462f)) - _wgslsmith_f_op_f32(-522f * _wgslsmith_f_op_f32(-1306f - -1411f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-896f + -395f))), 896f, -194f), 6339u);
    global0 = vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(global0.x, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, abs(1u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.a.zyy, vec3<u32>(u_input.b.x, var_0.d, 26086u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 0u, 1u), u_input.b)))), ~reverseBits(max(~0u, 27624u)), ~u_input.c.x);
    let var_1 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 24491i, ~u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), abs(vec3<i32>(21935i, u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(24108i, u_input.a, -2147483647i)))), vec3<i32>(u_input.a, -u_input.a >> (~17225u % 32u), u_input.a)));
    let var_2 = vec3<bool>(!select(false, true, any(vec2<bool>(true, var_0.b))), all(select(vec2<bool>(false | global1.x, false & var_0.b), select(vec2<bool>(false, false), select(vec2<bool>(global1.x, false), vec2<bool>(var_0.b, false), global1.x), select(vec2<bool>(var_0.b, global1.x), vec2<bool>(global1.x, true), var_0.b)), true)), ~var_1.a.x < -23984i);
    var var_3 = vec3<f32>(-1723f, _wgslsmith_f_op_f32(var_0.c.x * 490f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -485f))));
    return _wgslsmith_add_vec3_i32(-var_1.a, var_1.a);
}

fn func_2() -> bool {
    global1 = !select(select(!(!vec2<bool>(false, global1.x)), vec2<bool>(global1.x, any(vec2<bool>(true, global1.x))), global1.x), vec2<bool>(select(any(vec2<bool>(global1.x, global1.x)), !global1.x, 1i < u_input.a), false), min(firstLeadingBit(global0.x), u_input.b.x) == (_wgslsmith_mod_u32(22523u, u_input.c.x) << (0u % 32u)));
    global0 = vec4<u32>(global0.x, ~u_input.b.x, global0.x, ~10678u);
    global1 = vec2<bool>(true, true);
    var var_0 = func_3();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(172f + 737f) - _wgslsmith_f_op_f32(304f - 269f)) * -1337f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f) + -1033f))), _wgslsmith_f_op_f32(ceil(570f))));
    return !select(global1.x, any(vec4<bool>(global1.x, false, global1.x, true)), global1.x) & (var_1.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))));
}

fn func_1() -> vec2<bool> {
    global1 = select(vec2<bool>(global1.x, all(vec3<bool>(true, global1.x, false)) || any(vec2<bool>(global1.x, global1.x))), !vec2<bool>(firstLeadingBit(u_input.c.x) == 0u, -1i == select(u_input.a, u_input.a, global1.x)), true);
    var var_0 = ~u_input.a;
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 6749u, 19659u, global0.x), vec4<u32>(4294967295u, 4343u, 59881u, 32284u)), vec4<u32>(global0.x, u_input.c.x, 4294967295u, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, global0.x, 16487u, 94673u) | ~vec4<u32>(47078u, 4294967295u, 4294967295u, 7223u), ~abs(vec4<u32>(global0.x, 1u, 4294967295u, u_input.c.x)))), !func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-836f, -149f, global1.x)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(select(-427f, 886f, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2162f)))), ~(~u_input.b.x));
    global1 = vec2<bool>(true, select(true, !(!(false | global1.x)), !any(select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(var_1.b, false, var_1.b, global1.x), vec4<bool>(true, false, global1.x, var_1.b)))));
    global0 = firstTrailingBit(var_1.a);
    return vec2<bool>(func_2(), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(func_1(), vec2<bool>(global1.x, global1.x), !(!(!vec2<bool>(global1.x, false))));
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(1u, 72940u, 4294967295u, global0.x)) & (~vec4<u32>(u_input.c.x, 4294967295u, 43581u, global0.x) & countOneBits(vec4<u32>(20504u, u_input.c.x, u_input.c.x, 57137u))), ~max(reverseBits(vec4<u32>(47764u, global0.x, global0.x, global0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 6421u, 5676u, 18956u), vec4<u32>(1u, u_input.b.x, global0.x, u_input.b.x)))), global1.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(376f, 1974f, 742f, 220f), vec4<f32>(-1417f, 1410f, 590f, 875f), vec4<bool>(global1.x, global1.x, global1.x, false))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(536f)), 1f, _wgslsmith_div_f32(901f, 741f), _wgslsmith_f_op_f32(floor(-131f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-507f, 4110f, _wgslsmith_f_op_f32(-1960f - 249f), _wgslsmith_div_f32(-2447f, 1000f))))), ~89216u);
    var_0 = Struct_1(var_0.a, (var_0.a.x == _wgslsmith_div_u32(~u_input.b.x, ~4294967295u)) || !global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) - _wgslsmith_f_op_vec4_f32(select(var_0.c, vec4<f32>(-351f, -2303f, var_0.c.x, var_0.c.x), vec4<bool>(global1.x, global1.x, var_0.b, false)))))), 4294967295u);
    global0 = ~_wgslsmith_clamp_vec4_u32(var_0.a, abs(vec4<u32>(~1u, _wgslsmith_clamp_u32(6535u, global0.x, 4294967295u), 1u, 1u)), select(var_0.a, ~vec4<u32>(var_0.a.x, u_input.b.x, 93867u, u_input.b.x), vec4<bool>(true, true, true, true)) << (abs(~vec4<u32>(1u, var_0.d, 1u, var_0.a.x)) % vec4<u32>(32u)));
    let var_1 = global1.x;
    var var_2 = vec3<bool>(false, _wgslsmith_f_op_f32(step(388f, _wgslsmith_f_op_f32(-var_0.c.x))) > var_0.c.x, true);
    let var_3 = func_3().yx;
    var_2 = select(!select(vec3<bool>(true, true, true), vec3<bool>(func_2(), false, global1.x), true), select(vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-2396i, var_3.x, 8366i, -2147483647i), vec4<i32>(14397i, var_3.x, u_input.a, 10787i)) == (var_3.x & u_input.a), false), !vec3<bool>(all(vec4<bool>(global1.x, global1.x, false, var_0.b)), false, any(vec3<bool>(false, var_2.x, global1.x))), select(!select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, true, global1.x), vec3<bool>(global1.x, true, false)), select(select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(true, false, true), true), !vec3<bool>(true, var_0.b, var_2.x), var_0.b), global0.x != _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 0u, 0u), vec3<u32>(global0.x, 0u, var_0.d)))), true);
    global0 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.a.x, 4294967295u), 26820u), _wgslsmith_add_u32(1u, global0.x)));
}

