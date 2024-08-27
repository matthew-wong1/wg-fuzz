struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 15>;

var<private> global2: array<vec4<bool>, 29>;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(133f, 172f, -1197f), 27911i, Struct_1(vec4<f32>(290f, -811f, -1146f, -1817f), 1u, -666f, 0u, 44398i), Struct_1(vec4<f32>(1663f, -284f, -372f, 1000f), 4294967295u, 677f, 17939u, 2903i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = select(select(vec2<bool>(_wgslsmith_dot_vec2_u32(global0.ww, global0.yx) == 0u, true), vec2<bool>(true, true), false), select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, all(vec2<bool>(false, true))), false), vec2<bool>(any(vec3<bool>(true, true, true)), false), vec2<bool>(true, all(vec3<bool>(true, true, true)))), (i32(-1i) * -30332i) <= -reverseBits(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -1i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(arg_1.c.a, _wgslsmith_f_op_vec4_f32(-global3.c.a)));
    var var_2 = false;
    var var_3 = Struct_3(-(_wgslsmith_dot_vec3_i32(countOneBits(u_input.a), select(vec3<i32>(-25522i, -1i, 20005i), u_input.a, var_0.x)) | -u_input.a.x), _wgslsmith_f_op_f32(trunc(-2891f)), global3.c, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.c.a), _wgslsmith_clamp_u32(~arg_1.c.d << (_wgslsmith_dot_vec2_u32(global0.xw, global0.wz) % 32u), global0.x << (0u % 32u), arg_1.d.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(37748u, 15u)])), _wgslsmith_f_op_f32(-1f))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.c.b, 4294967295u, global3.d.d), vec4<u32>(8809u, 27461u, global0.x, 15685u)), ~global3.c.e | ~global3.c.e));
    var var_4 = global3.c.a.x;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.x)), 162f, 300f, _wgslsmith_f_op_f32(floor(arg_1.c.c))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(global3.d.a.x, -1232f, -143f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a)))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global3.d.e, global3.d.e), -50217i), global3.d, Struct_1(_wgslsmith_f_op_vec4_f32(func_3(arg_3, Struct_2(global3.c.a.zyz, global3.b | -12182i, Struct_1(global3.c.a, 1u, 750f, global0.x, u_input.a.x), global3.c), global3.a)), global0.x, -1304f, global3.c.b, 11884i));
    global0 = vec4<u32>(65576u, abs(2706u) >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.c.d, global0.x, 51015u, 99525u)), countOneBits(vec4<u32>(33187u, 0u, var_0.c.d, var_0.d.b))) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 71912u, global0.x, 4294967295u) >> ((~vec4<u32>(24054u, 11812u, 1u, 4294967295u) << (vec4<u32>(global3.c.d, var_0.c.d, global0.x, 10388u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(1u, reverseBits(~0u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global3.c.b, 1462u, 17342u, var_0.c.b)), vec4<u32>(1u, 4294967295u, var_0.d.d, global3.d.d)), var_0.c.d)), ~(~1u) << (~min(~0u, _wgslsmith_sub_u32(global0.x, var_0.c.d)) % 32u));
    let var_1 = global3.d.a;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(567f))), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(max(~global0.x, global0.x), 15u)])), _wgslsmith_f_op_f32(max(global3.a.x, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_div_f32(var_0.c.a.x, global3.a.x)))), -803f), 67837u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1489f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-594f * arg_3), -1545f)))), global0.x, global3.c.e);
    var var_3 = reverseBits(_wgslsmith_sub_vec3_u32(~(~_wgslsmith_mod_vec3_u32(global0.yyw, vec3<u32>(global3.d.d, global0.x, 0u))), ~(global0.zxw ^ (global0.xxy | vec3<u32>(32953u, var_0.c.d, 4294967295u)))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.xx, var_3.xy), _wgslsmith_add_vec2_u32(vec2<u32>(9839u, 30593u), global0.xy)), global3.d.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, reverseBits(var_3.x)), var_3.zx, ~_wgslsmith_mod_vec2_u32(vec2<u32>(14241u, global0.x), vec2<u32>(1u, 0u)))) << (~var_3.x % 32u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = global3.c;
    let var_1 = _wgslsmith_f_op_f32(-global3.c.c);
    var var_2 = _wgslsmith_sub_vec2_u32(reverseBits(~(~global0.zz ^ (vec2<u32>(1u, global0.x) & arg_1.yz))), select(vec2<u32>(var_0.d, global0.x), vec2<u32>(global3.c.d, 24058u), vec2<bool>(true, true)));
    global0 = abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(max(1u, 10386u), ~1u, var_2.x | var_2.x, reverseBits(global3.d.d))), vec4<u32>(51577u, ~49561u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.c.b, var_0.d), vec3<u32>(var_2.x, 117249u, 4294967295u)), ~var_2.x), 51121u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global3.c.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global3.d.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-981f, var_1, 476f, 421f)))))), var_0.b, -1397f, var_2.x, -2147483647i);
    return Struct_1(var_0.a, 1u, _wgslsmith_div_f32(global3.c.c, _wgslsmith_div_f32(-1235f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(67695u, 15u)]), _wgslsmith_f_op_f32(abs(-255f)))))), 33347u, arg_0.x);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(-275f, _wgslsmith_div_f32(-1176f, -739f)));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(56102i, 32927i), ~(~arg_1));
    var var_2 = any(!vec3<bool>(all(select(global2[_wgslsmith_index_u32(global3.d.d, 29u)], global2[_wgslsmith_index_u32(global0.x, 29u)], false)), true, true));
    var var_3 = arg_2;
    var var_4 = arg_0;
    return 40181i;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1931f);
    global2 = array<vec4<bool>, 29>();
    global0 = ~(~_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(global3.d.d, 4420u, global3.c.d, 378u)), reverseBits(vec4<u32>(global0.x, global3.d.b, global0.x, 6300u))));
    var var_1 = func_5(-6862i, ~vec2<i32>(~global3.b | global3.d.e, _wgslsmith_add_i32(global3.c.e, reverseBits(u_input.a.x))), func_4(u_input.a, select(abs(vec4<u32>(1u, 74303u, global3.d.d, global0.x) << (vec4<u32>(21606u, global3.d.b, 20898u, global3.d.d) % vec4<u32>(32u))), vec4<u32>(global3.d.d, func_2(true, vec2<bool>(true, false), false, 310f), global3.d.d, 107850u), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))), vec3<i32>(_wgslsmith_add_i32(max(-4895i, -18358i), global3.d.e), 32318i, 1i)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(global3.c.d, ~4294967295u), ~1u), ~(~firstLeadingBit(global3.c.d)), ~select(countOneBits(global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global3.c.b, 1u), vec3<u32>(10732u, global3.c.d, global3.d.d)), global0.x == 43490u)));
    let var_2 = select(vec2<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, false), true)), true), select(vec2<bool>(false, false), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), true), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), select(vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -596f) > _wgslsmith_f_op_f32(sign(659f))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), ~4294967295u < global3.d.d), true));
    return Struct_3(-1i, -301f, global3.d, func_4(~countOneBits(-u_input.a), vec4<u32>(4294967295u ^ _wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(0u, global3.d.b)), 40060u, global3.c.d, _wgslsmith_div_u32(global0.x, ~1u)), u_input.a));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_1 {
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(global3.c.a.x - -607f), _wgslsmith_f_op_f32(-727f + 438f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -1487f, -471f))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global1[_wgslsmith_index_u32(44075u, 15u)], arg_0.b) * global3.a))))), firstTrailingBit(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3.d.e, -6027i, global3.c.e, global3.d.e), vec4<i32>(global3.d.e, global3.c.e, -1i, arg_0.d.e)), ~vec4<i32>(global3.c.e, arg_0.a, arg_0.c.e, 30624i))), Struct_1(arg_0.d.a, ~arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -345f), global3.d.b ^ 4294967295u, _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(1i, -arg_0.a))), Struct_1(_wgslsmith_div_vec4_f32(arg_0.d.a, _wgslsmith_f_op_vec4_f32(-arg_0.d.a)), ~(~arg_2.x), global3.c.c, global3.d.b ^ (arg_2.x << (0u % 32u)), (arg_0.c.e >> (select(arg_2.x, 40704u, arg_1.x) % 32u)) | ~arg_0.d.e));
    global1 = array<f32, 15>();
    let var_0 = vec4<u32>(global3.c.b, select(reverseBits(arg_2.x), global0.x, false), arg_0.d.b, global3.c.d) | max(vec4<u32>(~arg_2.x, ~82130u, arg_0.c.b, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(30836u, 4294967295u), vec2<u32>(arg_0.d.b, 1u)))), vec4<u32>(arg_0.d.b, ~arg_0.c.d, global0.x, select(1u, firstLeadingBit(0u), all(vec3<bool>(arg_1.x, false, true)))));
    let var_1 = _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(37640u, global0.x, 21062u) & _wgslsmith_div_vec3_u32(global0.yyy, vec3<u32>(52101u, 4294967295u, var_0.x)))), vec3<u32>(var_0.x >> (arg_2.x % 32u), _wgslsmith_dot_vec2_u32(abs(min(arg_2.xx, vec2<u32>(0u, 4294967295u))), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(1u, 0u)), arg_2.yy)), arg_0.d.b ^ ~(~arg_2.x)));
    var var_2 = vec2<i32>(~(-15793i), -(-29862i ^ firstTrailingBit(1i)));
    return arg_0.d;
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c) * -1359f))), global3.d, arg_0.c);
    global3 = arg_0;
    let var_1 = var_0.d.e;
    let var_2 = any(vec3<bool>(true, !arg_1, false));
    global0 = ~max(vec4<u32>(_wgslsmith_mult_u32(~4294967295u, firstTrailingBit(global3.c.d)), ~global0.x, func_1().c.d, _wgslsmith_div_u32(4294967295u, 45528u) & func_6(var_0, vec2<bool>(arg_1, arg_1), vec3<u32>(global0.x, var_0.d.d, 52599u)).b), vec4<u32>(abs(~12836u), firstLeadingBit(1u), _wgslsmith_mod_u32(37640u, arg_0.d.d), reverseBits(_wgslsmith_add_u32(var_0.d.b, arg_0.d.b))));
    return func_4((min(abs(vec3<i32>(var_1, 18198i, 13263i)), u_input.a) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.zyw, vec3<u32>(global3.d.b, var_0.d.b, arg_0.d.b), vec3<u32>(global0.x, 11349u, 4412u)), global0.xyz) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(max(-u_input.a, max(u_input.a, vec3<i32>(u_input.a.x, -1i, u_input.a.x))), ~(-u_input.a)), ~select(select(vec4<u32>(global3.d.d, var_0.c.b, arg_0.c.b, 34905u), vec4<u32>(arg_2.b, var_0.c.d, arg_2.d, 8508u), global2[_wgslsmith_index_u32(6519u, 29u)]), ~vec4<u32>(4294967295u, 802u, 37400u, arg_2.d), true) & _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d, 6672u, var_0.c.d, 54558u), vec4<u32>(var_0.c.d, arg_2.d, arg_2.d, 0u)), ~vec4<u32>(arg_0.c.b, global3.d.d, arg_2.b, 48884u)), ~vec3<i32>(countOneBits(-global3.b), -22767i, -2147483647i >> (global0.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = array<vec4<bool>, 29>();
    global3 = Struct_2(vec3<f32>(741f, _wgslsmith_f_op_f32(global3.d.c + global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(global0.x, 1u), global0.x ^ 46748u), 15u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-853f - global1[_wgslsmith_index_u32(global0.x, 15u)]) * _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global0.x, 15u)]))))), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(i32(-1i) * -12184i, _wgslsmith_sub_i32(u_input.a.x, global3.b)), global3.c.e), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(777f, _wgslsmith_f_op_f32(-global3.d.c), global1[_wgslsmith_index_u32(53292u, 15u)], -1000f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1302f, global1[_wgslsmith_index_u32(0u, 15u)], 1000f, global1[_wgslsmith_index_u32(global3.c.d, 15u)])))), 46634u, -933f, _wgslsmith_dot_vec4_u32(vec4<u32>(47418u, global3.d.b, 1u, global3.c.d), ~vec4<u32>(1u, global3.c.b, global3.c.d, 13189u)) | global0.x, -2147483647i >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(28879u, 0u, 0u), global0.yzw), ~vec3<u32>(0u, global3.c.d, global3.c.b)) % 32u)), global3.d);
    let var_1 = Struct_3(_wgslsmith_div_i32(_wgslsmith_add_i32(78682i, -2147483647i), -7821i ^ u_input.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -438f), global1[_wgslsmith_index_u32(242u, 15u)], any(vec3<bool>(true, !var_0, !var_0)))), func_7(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-954f, global1[_wgslsmith_index_u32(13632u, 15u)], 888f)), abs(firstLeadingBit(2147483647i)), func_6(func_1(), vec2<bool>(true, true), ~global0.xxw), global3.d), true, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-969f + global1[_wgslsmith_index_u32(4294967295u, 15u)]), func_1().b, _wgslsmith_f_op_f32(global3.d.c + global3.d.c), _wgslsmith_f_op_f32(floor(global3.a.x))), ~4294967295u, _wgslsmith_f_op_f32(step(global3.d.c, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.c.b, 841u), 15u)])), 4294967295u, -41801i)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 15u)], _wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(64646u, 15u)])), _wgslsmith_f_op_f32(trunc(global3.d.a.x))))), 64119u, _wgslsmith_f_op_f32(step(-908f, 702f)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(25180u, global3.d.b, global0.x, 4294967295u), abs(vec4<u32>(3479u, 87710u, 4294967295u, global0.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(47303u, 103135u, 0u, global3.d.d), vec4<u32>(global3.c.b, 4294967295u, 73743u, 34229u))), -reverseBits(u_input.a.x) << ((~global3.c.b ^ ~4294967295u) % 32u)));
    global2 = array<vec4<bool>, 29>();
    var var_2 = !select(!vec3<bool>(all(global2[_wgslsmith_index_u32(390u, 29u)]), var_0 & var_0, false), !(!vec3<bool>(var_0, var_0, false)), true);
    var var_3 = ~(~(~vec4<u32>(global3.d.d, 42054u, 2305u, 48992u))) ^ ~vec4<u32>(_wgslsmith_mult_u32(~var_1.d.d, var_1.d.b), ~firstLeadingBit(21243u), 36111u, 51990u);
    var_2 = !select(!vec3<bool>(!var_0, all(vec2<bool>(true, var_0)), true), !vec3<bool>(var_2.x, false, select(true, var_2.x, var_0)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~(-38057i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.x, 15u)]))), func_6(var_1, var_2.yy, firstLeadingBit(vec3<u32>(2137u, 1u, 4294967295u))).c, -413f, func_4(~vec3<i32>(u_input.a.x, 1i, global3.b), countOneBits(vec4<u32>(4294967295u, 4294967295u, 25705u, var_1.d.b)), vec3<i32>(global3.c.e, 81486i, 0i)).c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 15u)]) * global3.a.x)))), firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(24179u, 1u, 41709u, global3.c.d), _wgslsmith_mod_vec4_u32(vec4<u32>(72648u, var_1.d.b, 0u, 7124u), vec4<u32>(var_3.x, 4294967295u, 15079u, var_1.c.d)))));
}

