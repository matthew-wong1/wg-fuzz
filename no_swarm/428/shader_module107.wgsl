struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = -(~2157i);
    let var_1 = !select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))), vec4<bool>(false, (u_input.a.x <= u_input.a.x) || true, select(true, true, false), !all(vec3<bool>(true, false, false))), true);
    var var_2 = u_input.a.zz;
    var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, ~var_2.x), u_input.a.xz, vec2<u32>(reverseBits(48236u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.a.xz), 4294967295u)));
    var var_3 = Struct_1(1u, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(67031i, var_0), vec2<i32>(-1i, 0i)), abs(u_input.b.x)), abs(~global0.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(9985u, 161662u), 71067u, _wgslsmith_mult_u32(29006u, 68034u)), _wgslsmith_mult_vec4_u32(vec4<u32>(67853u, var_2.x, var_2.x, u_input.a.x), countOneBits(vec4<u32>(var_2.x, u_input.a.x, u_input.a.x, 29170u)))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_2.x, u_input.a.x, var_2.x), abs(vec4<u32>(0u, var_2.x, 17250u, 7487u)), u_input.a), firstTrailingBit(_wgslsmith_add_vec4_u32(u_input.a, u_input.a)))), true);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = true;
    global0 = vec2<i32>(-2147i, global0.x);
    var var_1 = Struct_1(~(~0u), -25416i, vec4<u32>(u_input.a.x | 0u, _wgslsmith_sub_u32(~22802u, countOneBits(4294967295u)) & u_input.a.x, u_input.a.x, u_input.a.x << (_wgslsmith_clamp_u32(1u, reverseBits(u_input.a.x), ~1u) % 32u)), arg_0);
    var_0 = all(func_3());
    var var_2 = vec4<bool>(u_input.a.x < u_input.a.x, all(vec2<bool>(true, all(select(vec4<bool>(false, false, var_1.d, var_1.d), vec4<bool>(false, false, false, arg_0), false)))), var_1.d, any(vec2<bool>(arg_0, _wgslsmith_f_op_f32(137f - 1000f) < _wgslsmith_f_op_f32(-arg_1))));
    return Struct_1(var_1.c.x, global0.x, u_input.a, all(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 0i), vec2<i32>(var_1.b, u_input.b.x)) > 2147483647i, var_1.d, any(!vec2<bool>(arg_0, var_2.x)), all(vec2<bool>(var_1.d, false)) & any(var_2.wx))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = func_2(all(vec3<bool>(all(vec4<bool>(arg_1.d, arg_1.d, arg_1.d, arg_1.d)) && !arg_1.d, !arg_1.d || any(vec4<bool>(arg_1.d, arg_1.d, true, arg_1.d)), false)), arg_0.x);
    var_0 = Struct_1(_wgslsmith_clamp_u32(select(~arg_1.a, _wgslsmith_div_u32(max(0u, arg_1.a), ~1u), var_0.d), u_input.a.x, min(_wgslsmith_mult_u32(37309u >> (arg_1.a % 32u), _wgslsmith_clamp_u32(12313u, 0u, 4294967295u)), max(0u, u_input.a.x) & ~arg_1.a)), ~(-_wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(97849i, global0.x), u_input.b.x << (0u % 32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 4878u, _wgslsmith_sub_u32(select(var_0.a, 60553u, arg_1.d), var_0.a)), vec4<u32>(~(~var_0.a), arg_1.a, arg_1.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 27562u, 83821u, arg_1.a), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)) % 32u), arg_1.c.x)), var_0.d);
    global0 = u_input.b;
    var var_1 = firstLeadingBit((arg_1.b | min(2147483647i, reverseBits(1i))) | -1i);
    var var_2 = select(select(!(!vec2<bool>(var_0.d, false)), vec2<bool>(!var_0.d, func_2(true, arg_0.x).d), !vec2<bool>(false, var_0.d)), func_3(), !vec2<bool>(global0.x > -2147483647i, any(vec2<bool>(true, true))));
    return countOneBits(firstLeadingBit(vec4<i32>(16458i, var_0.b, func_2(u_input.b.x != 0i, arg_0.x).b, func_2(all(vec4<bool>(var_2.x, false, true, false)), arg_0.x).b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-765f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-168f + 278f) - _wgslsmith_f_op_f32(trunc(-927f)))));
    let var_1 = Struct_1(4294967295u, ~_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-34549i, -29183i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, global0.x, global0.x, -2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -36196i))), select(func_1(vec2<f32>(var_0, -481f), Struct_1(50011u, global0.x, u_input.a, true)), vec4<i32>(0i, 3606i, global0.x, 1i), true)), _wgslsmith_clamp_vec4_u32(~(~u_input.a), u_input.a, reverseBits(u_input.a)), (-firstLeadingBit(u_input.b.x) ^ -1i) != _wgslsmith_sub_i32(global0.x, global0.x));
    var var_2 = ~(var_1.b & -_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, var_1.b, u_input.b.x), vec3<i32>(1i, 2147483647i, var_1.b))) ^ ~_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, global0.x, global0.x), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1239f, var_0) - vec2<f32>(var_0, var_0)), func_2(true, var_0)).yzz);
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-981f, -173f) + vec2<f32>(var_0, 289f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), vec2<f32>(var_0, var_0)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, _wgslsmith_f_op_f32(f32(-1f) * -1607f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(898f, -1410f)), _wgslsmith_f_op_f32(-var_0)), vec2<f32>(741f, 779f), var_1.d))))));
    global0 = min(u_input.b, _wgslsmith_sub_vec2_i32(-firstTrailingBit(u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 27967i), u_input.b) | _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(global0.x, var_1.b)))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, reverseBits(4294967295u)), countOneBits(var_1.c.zy)), select(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.c.xy, vec2<u32>(1866u, var_1.c.x)), max(vec2<u32>(0u, var_1.c.x), var_1.c.xw)), _wgslsmith_sub_vec2_u32(u_input.a.yy, abs(u_input.a.yx)), var_1.d)) % vec2<u32>(32u));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)), -700f, 1f, _wgslsmith_f_op_f32(floor(-404f)));
    var var_5 = -1758f;
    var var_6 = _wgslsmith_add_vec4_i32(~abs(select(vec4<i32>(-978i, global0.x, -58167i, u_input.b.x), -vec4<i32>(u_input.b.x, var_1.b, -2147483647i, var_1.b), vec4<bool>(var_1.d, true, false, var_1.d))), vec4<i32>(-60236i, 0i, ~(~(-1i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4231u, 1713u, var_1.a), var_1.c) % 32u)), -(~1i)));
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(var_6.wwx, var_6.wyw ^ var_6.yxx), var_6.x));
}

