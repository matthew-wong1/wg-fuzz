struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_2(Struct_1(!select(!vec2<bool>(false, arg_2.x), !arg_2.wz, arg_2.xx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 10u)], 583f, -1089f, -1782f) * vec4<f32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4000u, 10u)], -1342f, global0[_wgslsmith_index_u32(u_input.c, 10u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], -724f, 279f, -154f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]) * vec3<f32>(890f, global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_div_vec3_f32(vec3<f32>(-613f, 768f, global0[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec3<f32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(14416u, 10u)], 618f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2544f, 1234f, global0[_wgslsmith_index_u32(4294967295u, 10u)]))))), -809f), Struct_1(!vec2<bool>(arg_2.x, arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(951f - -1866f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(622f)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 10u)] * 313f)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1.x, 10u)])), -1678f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(0u, 10u)], -940f, global0[_wgslsmith_index_u32(u_input.e.x, 10u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(29318u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]))))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, firstTrailingBit(_wgslsmith_add_u32(7114u, 14965u))), 10u)]), any(select(select(!arg_0, vec3<bool>(true, true, true), true), arg_0, arg_0.x)));
    var var_1 = !vec2<bool>(any(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(var_0.a.a.x, arg_0.x, true), true)) || (!arg_2.x && true), !all(select(vec4<bool>(true, true, false, false), arg_2, arg_2)));
    var_1 = !arg_0.zx;
    var_0 = Struct_2(var_0.b, Struct_1(vec2<bool>(true, true), var_0.b.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(7608u, 10u)], var_0.a.c.x, -559f) - vec3<f32>(530f, 554f, global0[_wgslsmith_index_u32(0u, 10u)]))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -258f)))), !any(vec3<bool>(var_1.x, any(vec3<bool>(var_1.x, var_0.b.a.x, var_0.b.a.x)), var_0.b.a.x)));
    let var_2 = vec3<bool>(var_0.b.c.x > global0[_wgslsmith_index_u32(~arg_1.x, 10u)], false, all(!(!arg_2.zxw)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(31951u), firstTrailingBit(u_input.a)), min(u_input.d, min(0u, 4294967295u))), u_input.e.x), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 0u)), _wgslsmith_sub_vec2_u32(~(~u_input.e.xz), countOneBits(~vec2<u32>(u_input.b, arg_1.x))))), 10u)];
}

fn func_2() -> bool {
    var var_0 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(select(true, true, false), true), false), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), true), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(46952u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], -658f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-157f, 1604f, global0[_wgslsmith_index_u32(u_input.e.x, 10u)], 583f)) - vec4<f32>(global0[_wgslsmith_index_u32(55424u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], 1219f, global0[_wgslsmith_index_u32(46968u, 10u)])))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 10u)] + 396f) - _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, false), vec4<u32>(0u, u_input.b, 4294967295u, u_input.a), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(2077f + global0[_wgslsmith_index_u32(reverseBits(u_input.a), 10u)]), -604f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), vec4<u32>(33888u ^ u_input.d, u_input.c, _wgslsmith_mult_u32(36800u, 0u), 1u), vec4<bool>(true, true, true, true)))));
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    let var_1 = Struct_2(Struct_1(var_0.a, var_0.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1211f), 1259f, -186f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(25127u, 10u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 10u)])))))), Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.c), 1485f), any(!vec2<bool>(any(vec2<bool>(var_0.a.x, var_0.a.x)), any(var_0.a))));
    var var_2 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.d, ~11201u, _wgslsmith_div_u32(u_input.c, 4294967295u))), u_input.e.zyx);
    return false;
}

fn func_1() -> Struct_2 {
    global0 = array<f32, 10>();
    var var_0 = Struct_1(vec2<bool>(true & !func_2(), func_2()), vec4<f32>(_wgslsmith_f_op_f32(round(552f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 10u)]))), 812f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x ^ 4294967295u, 10u)])))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1111f, global0[_wgslsmith_index_u32(53791u, 10u)], 1505f)))))), global0[_wgslsmith_index_u32(min(u_input.d & u_input.d, ~max(u_input.c, 4294967295u)) | min(~u_input.c, abs(reverseBits(u_input.d))), 10u)]);
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(false, var_0.a.x), select(var_0.a, vec2<bool>(true, true), true), true || !var_0.a.x), _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.c.x)), -751f), -438f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(sign(1127f))))), var_0.b.x), Struct_1(var_0.a, var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 10u)], global0[_wgslsmith_index_u32(69503u, 10u)], var_0.d) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, global0[_wgslsmith_index_u32(u_input.c, 10u)], var_0.d))), var_0.b.zyx), _wgslsmith_f_op_f32(floor(-833f))), any(var_0.a));
    var_0 = var_1.a;
    var var_2 = u_input.c;
    return Struct_2(var_1.b, Struct_1(select(vec2<bool>(any(vec3<bool>(false, var_0.a.x, var_1.c)), var_0.a.x), !select(vec2<bool>(var_0.a.x, var_0.a.x), var_1.a.a, true), vec2<bool>(any(var_0.a), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.b) + _wgslsmith_f_op_vec4_f32(abs(var_0.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_0.b, var_1.b.b, var_0.a.x))))), var_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.d)) * 1671f)), 25200u < u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, i32(-1i) * -1i)), countOneBits(_wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(25230i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(-5265i, -2147483647i)), vec2<i32>(select(2147483647i, 87927i, arg_0.a.a.x), min(3446i, 1i)))), !vec2<bool>(arg_0.c, true));
    let var_1 = arg_0.b.a;
    var var_2 = arg_0;
    let var_3 = select(~(~(~vec3<i32>(var_0.x, var_0.x, 45991i))), vec3<i32>(_wgslsmith_sub_i32(var_0.x, abs(var_0.x)), ~var_0.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(6681i, var_0.x, -2147483647i) & vec3<i32>(1i, var_0.x, 8596i), ~vec3<i32>(16531i, var_0.x, var_0.x))), true);
    var var_4 = func_1().b;
    return ~(~(u_input.d & ~1974u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, true)))), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-462f, -1487f, global0[_wgslsmith_index_u32(u_input.d, 10u)], 1493f), vec4<f32>(739f, global0[_wgslsmith_index_u32(59190u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], 929f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2724f, global0[_wgslsmith_index_u32(u_input.e.x, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], -1311f) + vec4<f32>(399f, 307f, 1000f, global0[_wgslsmith_index_u32(u_input.e.x, 10u)]))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(u_input.d, 10u)], -429f, global0[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<f32>(global0[_wgslsmith_index_u32(18875u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], 1079f, -600f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-304f, 1000f, global0[_wgslsmith_index_u32(u_input.d, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<f32>(global0[_wgslsmith_index_u32(1001u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], -336f), vec4<bool>(false, false, false, false))) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], -233f, global0[_wgslsmith_index_u32(u_input.e.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 10u)], global0[_wgslsmith_index_u32(77728u, 10u)], -717f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2413f, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], -963f, 292f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], -1000f, global0[_wgslsmith_index_u32(27741u, 10u)]))))))), global0[_wgslsmith_index_u32(func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -2160f)) | u_input.c, 10u)]);
    var var_1 = func_1().a;
    let var_2 = firstLeadingBit(u_input.e.x);
    var var_3 = _wgslsmith_div_i32(23097i, ~(-2147483647i) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -35605i, 11494i, -2147483647i), vec4<i32>(-21521i, 0i, -1443i, 48117i)) ^ ~0i)) << (1u % 32u);
    global0 = array<f32, 10>();
    var var_4 = ((vec2<u32>(_wgslsmith_add_u32(1u, u_input.a), 0u) & u_input.e.yy) ^ vec2<u32>(var_2, func_4(func_1(), 2026f))) & ~(~u_input.e.wx);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xx, _wgslsmith_f_op_f32(ceil(var_0.d)), vec4<i32>(19109i, -1i, -select(_wgslsmith_mod_i32(-1i, 622i), ~13968i, all(vec3<bool>(var_0.a.x, true, var_0.a.x))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, abs(-33886i)), 0i)));
}

