struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: Struct_3;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.d.x)), 469f)))));
    global2 = Struct_3(~(~vec3<u32>(arg_0.c.x << (arg_0.c.x % 32u), _wgslsmith_div_u32(arg_0.c.x, 4294967295u), 0u)));
    var var_1 = vec4<bool>(true, true, !any(vec3<bool>(true, any(vec2<bool>(false, false)), true)), select(false, true, !(!any(vec2<bool>(true, true)))));
    let var_2 = global2.a.x;
    var_1 = !select(vec4<bool>(true, var_1.x, true, false), !select(select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), select(var_1.x, var_1.x, true)), select(vec4<bool>(var_1.x, true, true, all(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, true)), vec4<bool>(var_1.x, false, var_1.x, false), true), all(vec2<bool>(true, false))));
    return vec4<bool>(select(!all(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), var_1.x, true) && all(vec4<bool>(4294967295u <= u_input.a, true, false, all(var_1.zw))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-876f, var_0.x)), 885f)) * arg_0.a) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(min(arg_0.d.x, -858f)), true))), var_1.x, !select(true, false, true));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> u32 {
    let var_0 = u_input.c;
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<bool>) -> f32 {
    global2 = global0[_wgslsmith_index_u32(~min(~(~0u), func_4(_wgslsmith_f_op_f32(-arg_0.a), arg_2, select(select(vec4<bool>(false, false, true, arg_3.x), vec4<bool>(arg_3.x, false, false, arg_3.x), vec4<bool>(true, false, true, arg_3.x)), func_3(arg_1), !vec4<bool>(false, arg_3.x, false, arg_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d)))), 27u)];
    let var_0 = arg_1.a;
    let var_1 = global0[_wgslsmith_index_u32(~global2.a.x, 27u)];
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), -101f, arg_2.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(arg_2, arg_1.d, arg_3.x)))))), arg_0.d), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f * 1552f)), -1000f)), _wgslsmith_f_op_f32(-arg_1.a), var_0));
    let var_3 = abs(~(~reverseBits(select(u_input.c, arg_0.b.xyz, arg_3.x))));
    return -271f;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_u32(arg_0.c, _wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1.x, global2.a.x, select(arg_1.x, 1u, true)), ~abs(vec3<u32>(1u, 4294967295u, 68353u)), min(24629i, u_input.b) <= arg_0.b.x), vec3<u32>(global2.a.x, 1u, max(18473u, 1u))));
    global2 = global0[_wgslsmith_index_u32(~min(reverseBits(_wgslsmith_mod_u32(arg_0.c.x, 0u)), u_input.a), 27u)];
    global0 = array<Struct_3, 27>();
    global1 = array<vec2<bool>, 27>();
    var var_1 = true;
    return global0[_wgslsmith_index_u32(arg_1.x, 27u)];
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.b), abs(_wgslsmith_mult_vec2_i32(u_input.c.xz, ~vec2<i32>(u_input.b, -2147483647i))));
    global0 = array<Struct_3, 27>();
    let var_1 = Struct_4(arg_0.a.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(199f)))), vec4<i32>(-u_input.c.x, select(-1i, 4757i, arg_1), -2147483647i, u_input.b | 7524i), vec3<u32>(~4294967295u, arg_0.a.x, 51193u), vec3<f32>(1f, 1f, 1f)), ~min(_wgslsmith_add_vec4_i32(vec4<i32>(71678i, -2147483647i, u_input.c.x, -4377i), vec4<i32>(u_input.b, 25422i, u_input.b, 42722i)), abs(vec4<i32>(u_input.b, u_input.c.x, -10977i, -21041i)))));
    let var_2 = global2.a.xy;
    var var_3 = all(!select(select(global1[_wgslsmith_index_u32(31127u, 27u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.a.zz, global2.a.zy), 27u)], false), vec2<bool>(arg_1 & true, true), !vec2<bool>(false, arg_1)));
    return !any(!vec3<bool>(arg_1, all(vec3<bool>(true, arg_1, arg_1)), false));
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<bool>(false, ~global2.a.x > (max(_wgslsmith_div_u32(10744u, u_input.a), 49847u) ^ countOneBits(abs(u_input.a))), func_6(func_5(Struct_1(_wgslsmith_f_op_f32(func_2(Struct_1(1000f, vec4<i32>(21366i, u_input.c.x, u_input.c.x, -2147483647i), global2.a, vec3<f32>(454f, 1860f, -1000f)), Struct_1(752f, vec4<i32>(u_input.b, 36419i, u_input.b, 0i), global2.a, vec3<f32>(1135f, 102f, 261f)), vec3<f32>(686f, 911f, 831f), global1[_wgslsmith_index_u32(u_input.a, 27u)])), vec4<i32>(u_input.c.x, 26873i, u_input.c.x, 11758i), vec3<u32>(global2.a.x, u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1033f, 765f, 729f) + vec3<f32>(853f, 2017f, -194f))), global2.a), true), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, u_input.a, 16125u), global2.a), u_input.a) < 1u);
    let var_1 = firstTrailingBit(u_input.c.x);
    let var_2 = min(_wgslsmith_div_i32(~(-16310i), -2147483647i), select(1i, reverseBits(var_1) << (~global2.a.x % 32u), var_0.x)) >= firstLeadingBit(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_1, u_input.b, var_1, 2147483647i)), vec4<i32>(-u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 22550i, 2147483647i), vec3<i32>(-1i, u_input.c.x, -16420i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.b, u_input.c.x, 1i), vec4<i32>(u_input.b, -2147483647i, 2823i, 1i)))));
    let var_3 = select(vec4<bool>(!func_3(Struct_1(2077f, vec4<i32>(var_1, 2147483647i, -14012i, 2147483647i), global2.a, vec3<f32>(-783f, -665f, -1497f))).x && true, var_2, func_6(func_5(Struct_1(541f, vec4<i32>(15280i, 1i, -23374i, 67308i), vec3<u32>(global2.a.x, u_input.a, u_input.a), vec3<f32>(597f, 983f, 808f)), vec3<u32>(0u, 0u, u_input.a)), any(func_3(Struct_1(-141f, vec4<i32>(u_input.c.x, -8649i, u_input.b, 0i), vec3<u32>(u_input.a, global2.a.x, 0u), vec3<f32>(-1644f, -947f, -2020f))))), var_2), !vec4<bool>(all(select(global1[_wgslsmith_index_u32(global2.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], var_0.zy)), any(!vec2<bool>(var_0.x, var_0.x)), var_0.x, _wgslsmith_f_op_f32(step(-556f, 182f)) >= _wgslsmith_f_op_f32(sign(469f))), vec4<bool>(!(!var_2), u_input.b < -5546i, false, true));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(step(-743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) * _wgslsmith_f_op_f32(f32(-1f) * -1613f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f), -171f))), -695f, _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(sign(1f)), vec4<i32>(-1i) * -vec4<i32>(-1i, 2147483647i, 1i, 25351i), global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, -360f, -689f))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, 992f)), -1000f)), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, u_input.c.x, var_1), vec4<i32>(var_1, 0i, u_input.c.x, u_input.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_1, 27602i, -16132i), vec4<i32>(u_input.b, var_1, -2147483647i, var_1)), all(vec4<bool>(var_0.x, true, var_2, true))), global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 599f, -555f))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -257f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1320f - 188f) - _wgslsmith_f_op_f32(f32(-1f) * -151f))), func_3(Struct_1(_wgslsmith_f_op_f32(sign(1428f)), vec4<i32>(var_1, -20515i, 51560i, -58055i), firstLeadingBit(vec3<u32>(global2.a.x, u_input.a, 1u)), vec3<f32>(1202f, 1502f, -1000f))).zz)));
    return global0[_wgslsmith_index_u32(~(34136u & u_input.a), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = vec2<u32>(~(~(~u_input.a & u_input.a)), global2.a.x);
    global1 = array<vec2<bool>, 27>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(min(u_input.a, ~(~var_0.x)), abs(4294967295u))), 27u)];
    let var_2 = Struct_1(-823f, max(~abs(reverseBits(vec4<i32>(-30956i, u_input.b, u_input.c.x, u_input.b))), vec4<i32>(reverseBits(_wgslsmith_add_i32(u_input.b, 2147483647i)), u_input.b, -1i, _wgslsmith_clamp_i32(u_input.b, -44029i | u_input.b, u_input.c.x))), abs(vec3<u32>(abs(_wgslsmith_mult_u32(67071u, u_input.a)), ~_wgslsmith_add_u32(u_input.a, global2.a.x), 47962u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 827f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-403f)), _wgslsmith_f_op_f32(361f + -722f))), -200f)));
    var var_3 = max(-64807i ^ (~_wgslsmith_mod_i32(-33962i, -4087i) | ~u_input.c.x), var_2.b.x << (~min(39085u, var_0.x) % 32u));
    global2 = func_5(var_2, abs(global2.a) | (vec3<u32>(u_input.a, ~u_input.a, 40639u) << (abs(_wgslsmith_sub_vec3_u32(var_2.c, global2.a)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-538f, -270f), _wgslsmith_f_op_f32(func_2(Struct_1(var_2.d.x, vec4<i32>(0i, -26719i, -7760i, -2147483647i), vec3<u32>(1u, 4294967295u, 1u), vec3<f32>(var_2.d.x, -189f, var_2.a)), var_2, var_2.d, global1[_wgslsmith_index_u32(global2.a.x, 27u)])))), vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(-var_2.d.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.d.x, -946f, var_1.x)) + 1000f), var_2.d.x, var_2.d.x, -1731f)));
}

