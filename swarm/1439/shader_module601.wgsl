struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(1745f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1820f, _wgslsmith_f_op_f32(sign(-581f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 1u)], -314f, true)), -217f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1008f, global0[_wgslsmith_index_u32(8989u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, global0[_wgslsmith_index_u32(2996u, 1u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 1u)])) - vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34926u, 1u)] - global0[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14208u, 1u)]), _wgslsmith_f_op_f32(f32(-1f) * -296f))))));
    var var_1 = ~u_input.c.wy;
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, ~var_1.x, var_1.x, ~(~u_input.c.x)), ~(vec4<u32>(46344u, u_input.b, 99083u, 6875u) | vec4<u32>(var_1.x, 1u, 0u, u_input.b)));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-43203i, 36625i, 9302i) >> (firstLeadingBit(var_2.x) % 32u), firstTrailingBit(1i), _wgslsmith_add_i32(1i, ~(-2147483647i))), vec3<i32>(-1i, 2147483647i, -32186i), abs(firstLeadingBit(vec3<i32>(-1i, 1i, -13130i)))), reverseBits(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i, -1i, 1i)) << (vec3<u32>(var_2.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), -vec3<i32>(1i, -13529i, 1i))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(u_input.c.x), ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, u_input.c.x, u_input.c.x, 4294967295u))), 1u)], global0[_wgslsmith_index_u32(min(u_input.a, _wgslsmith_mod_u32(u_input.b, u_input.b)), 1u)], -1331f)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -264f), var_0.x, _wgslsmith_f_op_f32(min(-504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -1590f), var_0.x))))));
    var var_2 = Struct_1(func_3(Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), all(vec4<bool>(false, true, true, true))))), ~_wgslsmith_dot_vec3_i32(select(~vec3<i32>(20507i, -38165i, -2147483647i), -vec3<i32>(90219i, 0i, 0i), vec3<bool>(true, true, true)), func_3(Struct_2(vec2<bool>(true, false))) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(52404u, u_input.a, 0u)) % vec3<u32>(32u))));
    var var_3 = -1i ^ ~var_2.b;
    var var_4 = Struct_3(Struct_2(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true))), vec3<u32>(~u_input.d.x, 1u, reverseBits(1u)), all(select(vec4<bool>(any(vec3<bool>(false, true, false)), true, true, true), vec4<bool>(true, true, true, true), (global0[_wgslsmith_index_u32(u_input.b, 1u)] < var_0.x) | false)), Struct_2(!vec2<bool>(42413i >= var_2.b, true)));
    return Struct_2(var_4.d.a);
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_2(vec2<bool>(!all(vec3<bool>(false, true, true)), true));
    global0 = array<f32, 1>();
    var_0 = func_2();
    let var_1 = -1069f;
    var var_2 = true;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], 114f, global0[_wgslsmith_index_u32(u_input.b, 1u)], var_1), vec4<f32>(1092f, -738f, -465f, 827f))) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], var_1, var_1, global0[_wgslsmith_index_u32(0u, 1u)])) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, global0[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1700f, 1643f, -576f, -241f)))) - vec4<f32>(-1501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -334f) * 380f), global0[_wgslsmith_index_u32(43763u, 1u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, _wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_div_f32(-487f, global0[_wgslsmith_index_u32(u_input.a, 1u)]), -372f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec3<i32>(-1i, -42732i, -2147483647i), 1i))))))) + vec4<f32>(1253f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.zxy), select(vec3<u32>(u_input.b, 4247u, 8117u), u_input.d, vec3<bool>(true, true, false))), 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(40400u, 1u)]))))));
    let var_1 = -170f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.yy);
    var var_3 = min(~(i32(-1i) * -1i) | _wgslsmith_dot_vec4_i32(-(~vec4<i32>(15003i, 0i, 36278i, 28564i)), vec4<i32>(1i, 1i, 1i, 1i)), i32(-1i) * -1i);
    var var_4 = _wgslsmith_clamp_vec3_u32(u_input.d, _wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(49132u, u_input.a, 4294967295u)), select(_wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, u_input.d), u_input.d & vec3<u32>(4294967295u, u_input.c.x, u_input.b), vec3<bool>(true, true, true))) ^ ((vec3<u32>(u_input.b, u_input.d.x, 43201u) ^ (u_input.d << (vec3<u32>(56155u, u_input.d.x, 52964u) % vec3<u32>(32u)))) | abs(vec3<u32>(19893u, 29678u, u_input.a))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(57184u, u_input.c.x, 4017u), ~u_input.c.zxw), min(u_input.d, abs(vec3<u32>(u_input.c.x, u_input.b, 1u)))), vec3<u32>(u_input.a, 79235u, 1u) >> (firstTrailingBit(~u_input.d) % vec3<u32>(32u))));
    global0 = array<f32, 1>();
    let var_5 = true;
    var var_6 = -abs(vec3<i32>(2147483647i, 1i, 1i));
    let var_7 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1431f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1856f), 1366f))))), 652f, _wgslsmith_f_op_f32(round(-130f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.xx, _wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(2005u, var_4.x)), -1i, u_input.c.zxz);
}

