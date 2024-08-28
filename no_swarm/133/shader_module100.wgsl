struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-1359f, -256f, 1393f, 272f), vec4<f32>(-1305f, 892f, 1015f, -401f), vec4<f32>(150f, -233f, -1292f, -938f), vec4<f32>(-1000f, -2027f, -248f, 1787f), vec4<f32>(1498f, -1000f, -1160f, 1470f), vec4<f32>(-1885f, 336f, -1957f, -1000f));

var<private> global1: array<Struct_2, 1>;

var<private> global2: i32;

var<private> global3: vec4<bool>;

var<private> global4: array<vec3<u32>, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec4<f32>, 6>();
    global3 = select(select(select(!vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(any(vec4<bool>(global3.x, global3.x, global3.x, true)), true, global3.x, !global3.x), select(vec4<bool>(global3.x, global3.x, true, global3.x), select(vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, true, global3.x), false), !vec4<bool>(global3.x, global3.x, global3.x, true))), select(!(!vec4<bool>(false, true, true, global3.x)), select(vec4<bool>(false, true, false, true), !vec4<bool>(true, false, true, global3.x), !vec4<bool>(true, global3.x, false, true)), select(!vec4<bool>(global3.x, true, global3.x, global3.x), !vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(global3.x, true, true, false), select(vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x)), select(vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x))), !(!vec4<bool>(global3.x, false, global3.x, false)), true & !global3.x)), select(select(!vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(true, true, false, u_input.d > u_input.d), vec4<bool>(any(vec4<bool>(false, true, true, global3.x)), global3.x, u_input.c >= 1u, !global3.x)), !(!select(vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, true, global3.x))), !select(select(vec4<bool>(true, global3.x, true, false), vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(true, true, global3.x, global3.x)), vec4<bool>(global3.x, true, true, true), !vec4<bool>(global3.x, true, global3.x, true))), false);
    let var_0 = _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mod_vec3_u32(max(vec3<u32>(0u, 21333u, u_input.c), vec3<u32>(u_input.c, u_input.a.x, 50445u)), _wgslsmith_div_vec3_u32(global4[_wgslsmith_index_u32(u_input.c, 11u)], global4[_wgslsmith_index_u32(u_input.a.x, 11u)]))), vec3<u32>(_wgslsmith_mod_u32(u_input.b, 0u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 32181u, 76332u), global4[_wgslsmith_index_u32(u_input.c, 11u)])), vec3<u32>(u_input.b, 0u, _wgslsmith_mod_u32(1u, 1u))), u_input.a.x), select(firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), global4[_wgslsmith_index_u32(u_input.b, 11u)]))), _wgslsmith_clamp_vec3_u32(reverseBits(abs(vec3<u32>(u_input.a.x, 4294967295u, u_input.b))), ~(global4[_wgslsmith_index_u32(4294967295u, 11u)] << (vec3<u32>(2191u, u_input.a.x, 1u) % vec3<u32>(32u))), global4[_wgslsmith_index_u32(u_input.a.x, 11u)]), global3.x));
    global1 = array<Struct_2, 1>();
    global4 = array<vec3<u32>, 11>();
    return u_input.c;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = max(1u, max(u_input.a.x, reverseBits(u_input.c)));
    let var_1 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-695f, -667f, -1000f), vec3<f32>(-1084f, -657f, 611f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-142f, -2394f, -689f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1086f, -636f, 675f) + vec3<f32>(-422f, 354f, 1085f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1417f) * 559f)), -699f));
    global4 = array<vec3<u32>, 11>();
    let var_2 = max(_wgslsmith_sub_i32(-4534i, ~(-min(u_input.d, arg_0))), arg_0);
    let var_3 = !vec4<bool>(_wgslsmith_mult_u32(~16647u, ~var_0) >= 0u, global3.x, func_3(var_1.a) > (~5213u & (u_input.a.x >> (u_input.a.x % 32u))), false);
    return u_input.c;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: f32) -> Struct_3 {
    global1 = array<Struct_2, 1>();
    var var_0 = u_input.a;
    var var_1 = any(select(vec3<bool>(true, any(vec2<bool>(true, false)) & global3.x, false), global3.yww, vec3<bool>(false, !all(global3.zy), false)));
    var var_2 = any(vec4<bool>(global3.x, false, global3.x, false));
    var_1 = !(!select(global3.x, global3.x, true));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-383f, _wgslsmith_f_op_f32(-arg_1.x))) + -800f), -838f, arg_1.x), _wgslsmith_f_op_vec2_f32(trunc(arg_1.wx)));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1452f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-894f, _wgslsmith_f_op_f32(-303f - 383f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1821f, 222f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) + _wgslsmith_f_op_f32(step(-116f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2101f, _wgslsmith_f_op_f32(-1000f * -904f), true)))));
    let var_1 = func_4(_wgslsmith_clamp_u32(~(~4294967295u), abs(4294967295u) ^ ~u_input.b, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, u_input.c), 4294967295u)) ^ func_2(-_wgslsmith_div_i32(0i, -73502i)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -804f), -454f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * -698f), -267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1450f * var_0.x))), global0[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2306f * 905f), -171f)))));
    let var_2 = true;
    var var_3 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(arg_0), u_input.d), vec2<i32>(_wgslsmith_add_i32(-31106i, u_input.d), -24147i)), var_0.x, _wgslsmith_add_vec4_u32(vec4<u32>(~1u, u_input.c >> (29393u % 32u), ~u_input.b, ~760u), ~vec4<u32>(u_input.c, 13373u, u_input.c, u_input.b)), ~(-74467i)), _wgslsmith_add_i32(1i, ~u_input.d | ~u_input.d) >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, ~u_input.b, 1u), 25629u) % 32u), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -2147483647i, u_input.d, arg_0), vec4<i32>(arg_0, u_input.d, -2147483647i, arg_0)), u_input.d), 260f, vec4<u32>(u_input.b & u_input.b, _wgslsmith_sub_u32(u_input.a.x >> (4294967295u % 32u), 4294967295u), ~select(u_input.a.x, 4294967295u, true), _wgslsmith_add_u32(max(43004u, u_input.b), 31625u)), arg_0), Struct_1(vec2<i32>(-1i, _wgslsmith_mult_i32(~2147483647i, arg_0)), var_0.x, max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(106447u, u_input.a.x, u_input.a.x, u_input.c), vec4<u32>(u_input.c, u_input.b, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.b, 1u, u_input.a.x, 41488u), ~vec4<u32>(u_input.b, u_input.a.x, 35455u, u_input.a.x)), ~vec4<u32>(u_input.c, u_input.a.x, u_input.b, 20315u) & vec4<u32>(1u, 0u, 0u, u_input.b)), firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0, 2147483647i, arg_0, u_input.d), -vec4<i32>(u_input.d, u_input.d, arg_0, u_input.d)))), true);
    var var_4 = all(select(vec2<bool>(true, true), vec2<bool>(select(false && var_3.e, !var_2, global3.x), global3.x), select(vec2<bool>(true, global3.x), global3.zz, true)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_1.b.x + var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1457f, 1534f, false))))))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + -1523f), var_3.d.b, var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    global0 = array<vec4<f32>, 6>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 1u)];
    global3 = !select(vec4<bool>(true, true, !global3.x, _wgslsmith_f_op_f32(var_1.c.b + 2595f) < _wgslsmith_div_f32(var_1.c.b, var_1.c.b)), vec4<bool>(!any(vec3<bool>(true, false, false)), all(!global3.xzx), true, var_1.e), vec4<bool>(var_1.e, any(select(vec3<bool>(true, true, var_1.e), global3.zzx, global3.x)), func_1(u_input.d), any(select(global3.zwx, global3.ywz, global3.yxw))));
    var var_2 = global1[_wgslsmith_index_u32(func_2(u_input.d), 1u)];
    var_0 = ~18022u;
    let var_3 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.b, firstTrailingBit(vec4<u32>(select(52917u, 1u, any(vec2<bool>(var_1.e, true))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.c.c.x, u_input.b, 0u), ~var_1.a.c), (var_2.c.c.x ^ 26772u) >> (1u % 32u), 18167u)), -abs(~(vec2<i32>(var_1.b, 1i) ^ var_2.a.a)), vec2<u32>(85007u, 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(80554u, 6u)] + global0[_wgslsmith_index_u32(0u, 6u)])))))));
}

