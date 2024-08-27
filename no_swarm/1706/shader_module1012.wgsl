struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(33293i);

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<u32> {
    let var_0 = 1u;
    var var_1 = min((~vec3<i32>(6963i, u_input.b, 0i) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0, 1u, u_input.c.x), vec3<u32>(92624u, 0u, var_0) & vec3<u32>(var_0, var_0, 28444u), vec3<u32>(arg_1, 43474u, arg_1)) % vec3<u32>(32u))) << (vec3<u32>(~(~0u), 4294967295u, _wgslsmith_mod_u32(var_0, 14385u)) % vec3<u32>(32u)), vec3<i32>(u_input.b, ~(-1i), u_input.b));
    var var_2 = Struct_1(any(!vec3<bool>(any(vec2<bool>(false, arg_0.a.a)), any(vec3<bool>(arg_0.a.a, arg_0.a.a, true)), arg_0.a.a)));
    let var_3 = 1000f;
    var_1 = -(_wgslsmith_sub_vec3_i32(-(vec3<i32>(-21418i, global0[_wgslsmith_index_u32(var_0, 1u)], global0[_wgslsmith_index_u32(62267u, 1u)]) ^ vec3<i32>(1i, -11498i, global0[_wgslsmith_index_u32(0u, 1u)])), ~(vec3<i32>(-54826i, u_input.b, var_1.x) ^ vec3<i32>(global0[_wgslsmith_index_u32(var_0, 1u)], var_1.x, u_input.d.x))) >> (~(~(~vec3<u32>(22172u, 0u, var_0))) % vec3<u32>(32u)));
    return abs(vec3<u32>(~_wgslsmith_mult_u32(u_input.a.x | var_0, _wgslsmith_div_u32(u_input.c.x, 3609u)), 75756u, 4294967295u));
}

fn func_2(arg_0: vec3<f32>) -> vec2<f32> {
    var var_0 = ~_wgslsmith_sub_vec3_u32(abs(func_3(Struct_2(Struct_1(true)), u_input.c.x)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.c.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.c.x, 0u))) | ~(~abs(~vec3<u32>(u_input.c.x, u_input.a.x, 22324u)));
    global1 = select(~(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~32225u, ~u_input.c.x), 1u)] >> (~abs(var_0.x) % 32u)), abs(2147483647i), all(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(any(vec4<bool>(true, false, false, true)), true, true, true), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true))));
    let var_1 = 0u;
    var var_2 = u_input.c.x;
    var var_3 = -(reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 1u)], 0i, u_input.b), vec3<i32>(u_input.b, 2147483647i, 0i))) >> (reverseBits(vec3<u32>(var_1 | 4294967295u, _wgslsmith_mod_u32(var_0.x, 4294967295u), 4294967295u)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.zy)) + _wgslsmith_f_op_vec2_f32(arg_0.zy * vec2<f32>(arg_0.x, arg_0.x))), arg_0.zy))), arg_0.yy));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = !select(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), false != all(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, true)));
    var_0 = true;
    var var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(max(1525f, -1026f));
    global0 = array<i32, 1>();
    return Struct_1(all(vec3<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true)), true, true)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(89632u, 1u)], 68240i);
    global0 = array<i32, 1>();
    let var_1 = func_4(-539f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-339f, -533f, 788f) * vec3<f32>(-1747f, 161f, -353f)))), vec2<f32>(-141f, _wgslsmith_f_op_f32(f32(-1f) * -1838f))))), 694f, _wgslsmith_f_op_f32(1496f + _wgslsmith_f_op_f32(2145f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -980f)))));
    return reverseBits(firstTrailingBit(u_input.c.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(select(arg_0.x >> (0u % 32u), ~u_input.c.x, arg_1.a.a), 1u)], ~(~(-44387i)) & -(~global0[_wgslsmith_index_u32(49263u, 1u)])) ^ 1i;
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.d, _wgslsmith_mod_vec2_i32(u_input.d, ~(~vec2<i32>(-1i, arg_2.x))));
    let var_2 = ~abs(~(-vec3<i32>(arg_2.x, u_input.b, -16731i))) & vec3<i32>(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], u_input.b, u_input.b) >> (arg_0.zxz % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(1u, 1u)], arg_2.x, global0[_wgslsmith_index_u32(3306u, 1u)]))), var_1.x, global0[_wgslsmith_index_u32(~(u_input.c.x | 50435u), 1u)] & (firstTrailingBit(arg_2.x) & min(-12162i, 2147483647i)));
    global0 = array<i32, 1>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(-2116f, 2052f, 1670f))).x))) - -458f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(218f, _wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(479f, 176f, 930f))).x)))), 1224f, 583f);
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(var_2, -vec3<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(1u, 1u)])), firstTrailingBit(vec3<i32>(var_2.x, 2147483647i, 1i))), min(-1i, select(_wgslsmith_div_i32(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 1u)]) & ~(-49456i), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.x, arg_2.x, 1i), var_2), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 2147483647i;
    let var_0 = true;
    global1 = func_5(vec4<u32>(~_wgslsmith_add_u32(0u, 1u), select(func_1(), 4294967295u, !var_0), u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 35363u), u_input.c.x)), Struct_2(func_4(-380f, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1805f, -359f), vec2<f32>(2171f, -176f))), 802f, -812f)), vec2<i32>(-36402i, 1i)) & firstLeadingBit(-min(53395i, global0[_wgslsmith_index_u32(~u_input.a.x, 1u)]));
    global1 = u_input.b;
    global1 = _wgslsmith_clamp_i32(47804i, 24675i, -_wgslsmith_mod_i32(u_input.d.x, -(~global0[_wgslsmith_index_u32(u_input.a.x, 1u)])));
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(-429f + 423f), _wgslsmith_f_op_f32(f32(-1f) * -2176f), _wgslsmith_f_op_f32(min(-1000f, -1120f))))).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-139f, _wgslsmith_f_op_f32(max(936f, 874f)))) + 722f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1620f, 1134f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(637f, -1715f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -279f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-431f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global0 = array<i32, 1>();
    var var_2 = -vec3<i32>(0i | u_input.b, u_input.b, u_input.d.x & ~u_input.b) >> (vec3<u32>(select(_wgslsmith_clamp_u32(u_input.c.x, ~u_input.c.x, _wgslsmith_sub_u32(29659u, u_input.a.x)), 82356u, var_0), abs(~_wgslsmith_mult_u32(u_input.a.x, 4294967295u)), 0u) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 27744i, -2147483647i), vec3<i32>(var_2.x, u_input.d.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)])) << (~14249u % 32u), -40594i, -2147483647i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1741f, _wgslsmith_f_op_f32(1438f * -398f), _wgslsmith_f_op_f32(725f - 414f), 421f)))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, -681i, global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec3<i32>(var_2.x, -32009i, global0[_wgslsmith_index_u32(7715u, 1u)])), select(vec3<i32>(2147483647i, -36010i, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<i32>(var_2.x, 77994i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec3<bool>(var_0, var_0, var_0)), ~vec3<i32>(u_input.b, 0i, -2147483647i)), vec3<i32>(-2054i, 1i, reverseBits(20059i))), u_input.b), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)));
}

