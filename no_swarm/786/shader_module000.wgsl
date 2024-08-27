struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-1174f, 273f, 625f, 876f, 1559f, 1154f, -1264f, 222f, -898f, -136f, 2119f, 2425f, 536f, -718f, 641f, 269f, 1089f, 153f, 174f, -1934f, -936f);

var<private> global1: bool = false;

var<private> global2: vec2<i32> = vec2<i32>(-45315i, -12123i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_1) -> vec3<u32> {
    global1 = true;
    var var_0 = ~(~68345u);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(~4294967295u), _wgslsmith_add_u32(19984u, arg_1.a.x & arg_1.a.x)), 2462u);
    global2 = arg_2.e & vec2<i32>(-_wgslsmith_mult_i32(abs(arg_1.c.x), min(arg_0.a, 27748i)), -1i);
    var var_2 = 105421u;
    return ~vec3<u32>(~arg_1.a.x, ~(~var_1), 18943u);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(539f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 21u)]) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1, 21u)] + global0[_wgslsmith_index_u32(36439u, 21u)]))), reverseBits(~abs(vec3<i32>(-2492i, 2147483647i, -10623i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-552f, 318f, 1510f, 177f)))), abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(74820u, 43451u), vec2<u32>(u_input.a, 0u))), u_input.b.zx >> (vec2<u32>(_wgslsmith_sub_u32(arg_1, 23389u), abs(u_input.a)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.x, arg_0.x), _wgslsmith_div_i32(-global2.x, u_input.b.x >> (~(~4294967295u) % 32u)));
    var var_2 = !select(vec3<bool>(select(true, false, any(vec3<bool>(false, true, false))), any(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))), (~36751u == (1u >> (u_input.a % 32u))) | !(34670u >= u_input.a));
    let var_3 = all(vec4<bool>(all(select(select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), false), vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), var_2.x, all(!var_2.yz) && select(!var_2.x, any(vec3<bool>(true, var_2.x, var_2.x)), var_2.x), true & !(var_0.a.e.x <= 748i)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(abs(1602f)), select(abs(select(vec3<i32>(arg_0.x, global2.x, -22810i), arg_0, vec3<bool>(var_3, var_3, true)) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.d.x, arg_1, var_0.a.d.x), vec3<u32>(arg_1, arg_1, u_input.a)) % vec3<u32>(32u))), vec3<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, arg_0.x, arg_2, global2.x), vec4<i32>(arg_2, arg_0.x, arg_2, -10470i)), _wgslsmith_mod_i32(19762i, 3650i), true), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.a.b.x, -54343i), countOneBits(u_input.b.x)), _wgslsmith_dot_vec2_i32(-u_input.b.yx, u_input.b.xx)), select(true, false, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a.c, vec4<f32>(_wgslsmith_f_op_f32(ceil(-2373f)), 436f, _wgslsmith_f_op_f32(max(-107f, var_0.a.c.x)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_0.a.d.x, 21u)])))) - _wgslsmith_f_op_vec4_f32(-var_0.a.c)), var_0.a.d, vec2<i32>(arg_2, ~(-14329i)));
    return 1f;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<u32> {
    global2 = _wgslsmith_add_vec2_i32(abs(arg_1.e), ~countOneBits(u_input.b.yz));
    global1 = true;
    var var_0 = true;
    global1 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, all(vec2<bool>(true, false)) == true), true));
    let var_1 = Struct_2(arg_1, countOneBits(~arg_1.d), vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)), true, false), !all(vec4<bool>(true, true, true, true)) | true, ~abs(arg_1.b.x >> ((arg_0.x | arg_1.d.x) % 32u)));
    return vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.b.x, ~1u), ~4294967295u >> (reverseBits(u_input.a) % 32u)), ~4094u);
}

fn func_2(arg_0: vec3<u32>) -> Struct_5 {
    let var_0 = all(vec2<bool>(true, true));
    let var_1 = ~countOneBits(-16258i);
    var var_2 = Struct_1(220f, u_input.b, vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 21u)], -104f, global0[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 21u)] - 864f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a, 21u)])))))), func_4(~arg_0, Struct_1(-123f, ~u_input.b, vec4<f32>(144f, _wgslsmith_f_op_f32(func_3(u_input.b, arg_0.x, 0i)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(23377u, u_input.a), 21u)], -1994f), _wgslsmith_add_vec2_u32(min(vec2<u32>(61084u, arg_0.x), arg_0.zy), vec2<u32>(arg_0.x, u_input.a)), _wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, 9814i), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_1), vec2<i32>(-19752i, 37467i))))), u_input.b.zy);
    global0 = array<f32, 21>();
    var_2 = Struct_1(-1369f, vec3<i32>(max(firstTrailingBit(2147483647i), global2.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(countOneBits(u_input.b.x), var_2.e.x), ~(0i & var_2.b.x)), ~(~reverseBits(global2.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(963f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.d.x, 21u)])) * _wgslsmith_f_op_f32(ceil(var_2.c.x))), -1427f, _wgslsmith_f_op_f32(select(-978f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -635f))), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(99989u, var_2.d.x), 21u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 21u)]))), global0[_wgslsmith_index_u32(~(~arg_0.x), 21u)]))), reverseBits(vec2<u32>(~u_input.a | _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(var_2.d.x, 1u, 26100u)), ~arg_0.x)), vec2<i32>(firstLeadingBit(-var_2.b.x), 1i));
    return Struct_5(_wgslsmith_mod_i32(1i, 2147483647i));
}

fn func_5(arg_0: Struct_5) -> f32 {
    var var_0 = u_input.b.xz;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a, 21u)], 524f, false)) * -801f)))));
}

fn func_6(arg_0: f32) -> Struct_3 {
    global1 = false;
    global0 = array<f32, 21>();
    let var_0 = true;
    var var_1 = 4294967295u;
    var var_2 = vec4<bool>(true, ~min(-11248i, i32(-1i) * -1169i) >= u_input.b.x, true, var_0 || ((u_input.b.x < 2147483647i) & (_wgslsmith_sub_u32(51202u, u_input.a) == u_input.a)));
    return Struct_3(firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(select(1u, u_input.a, false), ~u_input.a), 3573u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, _wgslsmith_f_op_f32(-684f * 460f), 297f))), _wgslsmith_add_vec3_i32(vec3<i32>(~0i, _wgslsmith_clamp_i32(abs(39074i), _wgslsmith_div_i32(-28553i, 1i), _wgslsmith_mod_i32(global2.x, -1i)), ~(-1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, global2.x), max(global2.x, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.zx)), _wgslsmith_add_vec3_i32(u_input.b << (vec3<u32>(u_input.a, 43214u, 1576u) % vec3<u32>(32u)), vec3<i32>(global2.x, -9553i, -33262i) << (vec3<u32>(4294967295u, u_input.a, 4294967295u) % vec3<u32>(32u))))), vec3<f32>(-1227f, -1248f, -334f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1073f;
    var var_1 = func_6(_wgslsmith_f_op_f32(func_5(func_2(~func_1(Struct_5(7279i), Struct_3(vec2<u32>(u_input.a, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 1000f, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<i32>(-38775i, u_input.b.x, 29056i), vec3<f32>(-318f, global0[_wgslsmith_index_u32(89700u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)])), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 21u)], vec3<i32>(5850i, -1i, 25663i), vec4<f32>(601f, 769f, 587f, -555f), vec2<u32>(8512u, 19744u), vec2<i32>(-29798i, 2147483647i)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(~1u, 21u)], 184f, _wgslsmith_f_op_f32(-1086f * -782f), _wgslsmith_div_f32(var_1.d.x, 530f))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-285f * _wgslsmith_f_op_f32(-var_1.d.x)), var_2.x, var_2.x);
    let var_4 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, global2.x, global2.x, 1i), -vec4<i32>(12247i, -22600i, global2.x, var_1.c.x)), -1i, ~(-u_input.b.x) | _wgslsmith_sub_i32(i32(-1i) * -1i, -u_input.b.x)) >= _wgslsmith_div_i32(0i, global2.x);
    global1 = var_4;
    let var_5 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)));
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(0i, 6739i, var_1.c.x, var_5.c.x), countOneBits(vec4<i32>(var_1.c.x, global2.x, global2.x, -2147483647i))), firstLeadingBit(-(~vec4<i32>(-2147483647i, 5404i, var_1.c.x, global2.x)))));
}

