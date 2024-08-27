struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4172u;

var<private> global1: array<f32, 14> = array<f32, 14>(572f, -720f, 1884f, 224f, -896f, 2101f, 353f, -1055f, 596f, 443f, 897f, 195f, -341f, -275f);

var<private> global2: array<u32, 2>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = ~(~(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38838u, 2u)] & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], 2u)])));
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 14u)]) - -257f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(33000u, 14u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41541u, 2u)], 2u)], 14u)], global3.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1521f)), 535f), global1[_wgslsmith_index_u32(max(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17684u, 2u)], 2u)]), ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], 2u)])), 14u)], 117f), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, 1231f, global1[_wgslsmith_index_u32(42894u, 14u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6070u, 2u)], 2u)], 2u)], 14u)]) - _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(571u, 2u)], 2u)], 2u)], 2u)], 14u)], global1[_wgslsmith_index_u32(0u, 14u)], 2365f, global1[_wgslsmith_index_u32(62994u, 14u)]), vec4<f32>(global1[_wgslsmith_index_u32(43984u, 14u)], 2064f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 14u)], -284f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 14u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(67331u, 2u)], 2u)], 2u)], 14u)], 638f)))), false || any(global3.zzx), u_input.a, select(select(!vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, true, false), select(true, true, global3.x)), !vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, false, false, all(global3.zwz))), _wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(33293u, 2u)], 4294967295u)), abs(firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(41674u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]))))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(38835u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)], 152f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 14u)]) + vec4<f32>(172f, global1[_wgslsmith_index_u32(39644u, 14u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 14u)], 1137f))), all(vec3<bool>(global3.x, global3.x, global3.x)), _wgslsmith_add_i32(0i, select(-9906i, 0i, global3.x)), select(select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(global3.x, false, false, true), false), vec4<bool>(global3.x, true, false, false), global3.x), ~(~vec2<u32>(global2[_wgslsmith_index_u32(64350u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)])))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 14u)], var_1.c.a.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(71119u, 2u)], 14u)])))), var_1.c.a.a.x));
    var var_3 = var_1.c.a;
    let var_4 = select(vec4<bool>(true, false, var_1.c.a.d.x, !(any(var_3.d.wy) || false)), var_1.b.d, select(select(var_1.c.a.d, vec4<bool>(!var_1.c.a.d.x, global3.x, true, !var_3.b), select(select(var_3.d, vec4<bool>(true, true, var_1.b.d.x, var_3.b), var_3.d), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, var_3.d.x))), vec4<bool>(true, global3.x, global3.x & var_3.b, 279f <= _wgslsmith_f_op_f32(max(var_3.a.x, var_3.a.x))), select(var_3.b, var_1.c.a.d.x, false)));
    return -(abs(vec3<i32>(~var_1.b.c, var_3.c, var_3.c)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.e.x, 21615u, global2[_wgslsmith_index_u32(0u, 2u)]) << ((vec3<u32>(global2[_wgslsmith_index_u32(var_3.e.x, 2u)], global2[_wgslsmith_index_u32(var_3.e.x, 2u)], 840u) & vec3<u32>(8020u, 3687u, var_1.c.a.e.x)) % vec3<u32>(32u)), ~(~vec3<u32>(49460u, 1u, 87101u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(47228u, 87765u), 14u)])), 532f, 851f, -1274f), 31040i == _wgslsmith_div_i32(firstTrailingBit(u_input.b), _wgslsmith_mod_i32(u_input.a >> (1u % 32u), u_input.b)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-func_3(), ~vec3<i32>(u_input.a, u_input.b, u_input.b) >> ((vec3<u32>(arg_0, 1u, 19240u) & vec3<u32>(global2[_wgslsmith_index_u32(arg_0, 2u)], 49355u, arg_0)) % vec3<u32>(32u))), func_3().x), vec4<bool>(global3.x, !(!global3.x), all(vec2<bool>(true, true)), global3.x), reverseBits(~(~vec2<u32>(25403u, arg_0))) & abs(reverseBits(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27226u, 2u)], 2u)], 33229u))));
    let var_1 = all(!var_0.d.wx);
    var var_2 = vec4<f32>(-600f, var_0.a.x, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~arg_0, 2u)], 14u)])), 384f);
    var var_3 = ~vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(1u), ~var_0.e.x) | 18309u, global2[_wgslsmith_index_u32(63412u, 2u)], abs(arg_0), reverseBits(~(~global2[_wgslsmith_index_u32(12458u, 2u)])));
    let var_4 = -1537f;
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(55494u, 14u)], var_4)), _wgslsmith_f_op_f32(-var_2.x), -1195f)), var_0.a, vec4<bool>(true, true, !any(vec4<bool>(true, global3.x, false, global3.x)), true & any(global3.yy)))), any(vec4<bool>(var_0.d.x, false, any(vec4<bool>(false, global3.x, var_1, true)), false)), 43162i, var_0.d, vec2<u32>(0u, var_0.e.x));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0.a.yyw;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - -237f))) + global1[_wgslsmith_index_u32(1u, 14u)])));
    global1 = array<f32, 14>();
    global0 = global2[_wgslsmith_index_u32(arg_0.e.x, 2u)];
    let var_2 = -(select(vec3<i32>(-46366i, u_input.a, 2147483647i), max(vec3<i32>(arg_0.c, u_input.b, -2147483647i), vec3<i32>(12310i, 2147483647i, 1i)), arg_0.d.xyy) & max(vec3<i32>(17532i, arg_0.c, arg_0.c) ^ vec3<i32>(arg_0.c, 1i, u_input.b), vec3<i32>(-1i, -19896i, arg_0.c) ^ vec3<i32>(-1i, arg_0.c, arg_0.c))) >> (max(vec3<u32>(~arg_0.e.x, global2[_wgslsmith_index_u32(4294967295u, 2u)], 1u) ^ vec3<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 742u), reverseBits(4294967295u), 4294967295u), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.e.x, 2u)], 2u)]), vec3<u32>(global2[_wgslsmith_index_u32(52480u, 2u)], 1u, 40494u), vec3<u32>(56528u, 1u, 21744u)) ^ ~vec3<u32>(global2[_wgslsmith_index_u32(arg_0.e.x, 2u)], global2[_wgslsmith_index_u32(arg_0.e.x, 2u)], global2[_wgslsmith_index_u32(arg_0.e.x, 2u)]), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.e.x, 22546u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1790u, 45157u, 4294967295u), vec3<u32>(arg_0.e.x, global2[_wgslsmith_index_u32(4294967295u, 2u)], 0u), vec3<u32>(arg_0.e.x, 25503u, 1u))))) % vec3<u32>(32u));
    return select(select(!arg_0.d, vec4<bool>(!global3.x, false, !arg_0.d.x, false), select(select(!vec4<bool>(true, arg_0.d.x, global3.x, false), !arg_0.d, arg_0.d), vec4<bool>(true, global3.x | global3.x, global3.x || arg_0.b, global3.x && false), all(vec2<bool>(true, false)))), !arg_0.d, vec4<bool>(arg_0.b, arg_0.d.x, all(arg_0.d), !global3.x));
}

fn func_1() -> u32 {
    let var_0 = abs(u_input.b) << (_wgslsmith_mod_u32(10474u, global2[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19557u, 2u)], 2u)], 2u)], 2u)], 2u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]) | 0u, 12408u), 2u)]) % 32u);
    global3 = select(func_4(func_2(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(1u, 2u)], abs(1u)))), vec4<bool>(global3.x, abs(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30964u, 2u)], 2u)], 2u)])) > select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(35791u, global2[_wgslsmith_index_u32(1u, 2u)]), vec2<u32>(43196u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18949u, 2u)], 2u)])), any(vec2<bool>(global3.x, false))), any(vec2<bool>(global3.x, !global3.x)), !select(global3.x, global3.x, false)), -1000f != global1[_wgslsmith_index_u32(min(func_2(global2[_wgslsmith_index_u32(1u, 2u)]).e.x & ~global2[_wgslsmith_index_u32(4978u, 2u)], (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73323u, 2u)], 2u)] % 32u)) << (25821u % 32u)), 14u)]);
    var var_1 = !(!(-16673i >= _wgslsmith_mod_i32(61297i, u_input.a)));
    global2 = array<u32, 2>();
    var_1 = !global3.x;
    return global2[_wgslsmith_index_u32(~(~(~_wgslsmith_add_u32(1u, 1u))), 2u)] << (19320u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~_wgslsmith_div_vec4_i32(min(reverseBits(vec4<i32>(u_input.a, u_input.b, 26265i, 37504i)), vec4<i32>(-14512i, u_input.a, -12649i, u_input.b)), vec4<i32>(-u_input.b, 1i, u_input.b ^ -36864i, ~2147483647i)));
    global0 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(75168u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]), vec2<u32>(10219u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)]))), vec2<u32>(~47637u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19510u, 2u)], 2u)] % 32u), 2u)])) & ~_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(4294967295u, 2u)]), 2u)], func_1()), 4294967295u);
    var var_1 = select(~var_0.x, var_0.x, all(global3.wyw));
    global3 = vec4<bool>(select(any(!vec4<bool>(true, global3.x, true, global3.x)), all(func_4(Struct_1(vec4<f32>(-139f, global1[_wgslsmith_index_u32(4294967295u, 14u)], -496f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 14u)]), global3.x, u_input.b, vec4<bool>(true, false, global3.x, false), vec2<u32>(63167u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)])))), ~48712u > _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], 9193u), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45049u, 2u)], 2u)], global2[_wgslsmith_index_u32(0u, 2u)], 17689u))), !all(!vec4<bool>(true, false, global3.x, global3.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 14u)])), -192f)) >= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(max(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46485u, 2u)], 2u)], 2u)], 2u)], 2u)])), 2u)], 14u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1071f)) * 1504f)), !(!global3.x));
    var var_2 = ~vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]), 2u)] << (~67325u % 32u)), 2u)], ~(~110005u), global2[_wgslsmith_index_u32(~1u, 2u)]);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f + -183f)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, u_input.a, u_input.a), vec4<i32>(var_0.x, 1i, u_input.b, u_input.a)), ~31034i)), ((vec4<i32>(-1i, -26343i, u_input.b, 1i) & vec4<i32>(-7138i, 44963i, var_0.x, 12779i)) & ~vec4<i32>(0i, var_0.x, 1i, 2147483647i)) << (vec4<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(25539u, 2u)], var_2.x), firstTrailingBit(global2[_wgslsmith_index_u32(var_2.x, 2u)]), 0u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 2u)], 2u)], 4294967295u)) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_add_i32(-_wgslsmith_div_i32(0i, -20941i), u_input.b)), global3.xw, -1i);
    var var_4 = select(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_3.b, vec4<i32>(1i, 0i, 34546i, var_0.x)), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(-2147483647i, u_input.a), (var_0.x << (66302u % 32u)) >> (_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(var_2.x, 2u)]) % 32u), ~var_0.x)), ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(114370u, var_2.x, var_2.x, 55983u), vec4<u32>(var_2.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 2u)], 2u)], 2u)], 2u)], 40366u, 26449u)))));
}

