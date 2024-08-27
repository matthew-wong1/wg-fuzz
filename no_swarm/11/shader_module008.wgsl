struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<bool, 17>;

var<private> global3: vec4<i32> = vec4<i32>(-1i, 44192i, -54517i, -1i);

var<private> global4: array<vec3<f32>, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = -429f;
    var var_1 = -408f;
    let var_2 = -101f;
    var var_3 = all(select(select(select(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(29795u, 17u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 17u)]), false), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], true, global2[_wgslsmith_index_u32(u_input.b, 17u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 17u)], false)), !(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true)), true), vec3<bool>(!(global3.x == 1i), false, all(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(11326u, 17u)], true)) != !global2[_wgslsmith_index_u32(4294967295u, 17u)]), !(!select(vec3<bool>(false, global2[_wgslsmith_index_u32(global0.b, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<bool>(global2[_wgslsmith_index_u32(global0.b, 17u)], global2[_wgslsmith_index_u32(global0.a, 17u)], false), global2[_wgslsmith_index_u32(global0.d, 17u)]))));
    let var_4 = global4[_wgslsmith_index_u32(10649u, 1u)];
    return -(i32(-1i) * -(-47008i & global3.x)) == global3.x;
}

fn func_2() -> bool {
    var var_0 = !select(vec3<bool>(true, !func_3(), any(!vec4<bool>(global2[_wgslsmith_index_u32(25299u, 17u)], false, false, global2[_wgslsmith_index_u32(0u, 17u)]))), vec3<bool>(false, true && global2[_wgslsmith_index_u32(22260u, 17u)], _wgslsmith_f_op_f32(min(-1028f, global0.c)) >= _wgslsmith_f_op_f32(f32(-1f) * -261f)), !select(!vec3<bool>(global2[_wgslsmith_index_u32(9852u, 17u)], true, global2[_wgslsmith_index_u32(global0.d, 17u)]), vec3<bool>(global2[_wgslsmith_index_u32(global0.a, 17u)], global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(24352u, 17u)]), true));
    global2 = array<bool, 17>();
    var var_1 = Struct_1(30055u, u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - 248f) + global0.c) + -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-228f, global0.c)), global0.c), global0.c))), ~u_input.b);
    global4 = array<vec3<f32>, 1>();
    global4 = array<vec3<f32>, 1>();
    return global0.c > _wgslsmith_f_op_f32(trunc(1f));
}

fn func_4(arg_0: bool, arg_1: f32) -> Struct_1 {
    global1 = any(!vec4<bool>(!any(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true, arg_0)), false, arg_0, !all(vec3<bool>(arg_0, true, false))));
    var var_0 = Struct_1(~(_wgslsmith_add_u32(1u, 0u) | _wgslsmith_mult_u32(global0.d >> (5771u % 32u), 47071u ^ global0.a)), global0.a, global0.c, ~(~u_input.a.x));
    let var_1 = global0.a;
    var var_2 = vec2<i32>(-11541i, global3.x);
    let var_3 = 29373i;
    return Struct_1(~(~(~_wgslsmith_add_u32(u_input.a.x, 0u))), max(select(var_0.a, 4294967295u, true), _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(~var_0.b, ~22840u))), -1573f, _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mult_u32(1u, 29970u)), var_0.b));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 589f;
    global1 = global2[_wgslsmith_index_u32(min(50598u, ~global0.d), 17u)];
    global1 = any(vec4<bool>(false, func_2(), 28140i > global3.x, global2[_wgslsmith_index_u32(arg_2.b | (arg_2.d ^ u_input.b), 17u)] & global2[_wgslsmith_index_u32(global0.a, 17u)]));
    let var_1 = Struct_1(u_input.b | arg_3.b, u_input.a.x, 369f, 1u);
    return arg_3;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = func_5(func_4(true & (func_2() & global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), _wgslsmith_f_op_f32(f32(-1f) * -1041f)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(38040u, u_input.b, u_input.a.x), ~u_input.a.yzw, select(arg_1.x, false, false)), u_input.a.zwz, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 96997u, 31768u), vec3<u32>(6318u, u_input.a.x, u_input.a.x)), u_input.a.yww, firstTrailingBit(vec3<u32>(u_input.b, 63724u, 51914u)))), abs(~vec3<u32>(global0.b, global0.b, 1887u))), Struct_1(u_input.a.x, func_4(true, func_4(any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(floor(global0.c))).c).b, func_4(!global2[_wgslsmith_index_u32(21501u, 17u)], _wgslsmith_f_op_f32(-global0.c)).c, _wgslsmith_div_u32(firstLeadingBit(max(u_input.b, 0u)), u_input.b)), func_4(!select(true, false, all(arg_1.yx)), _wgslsmith_f_op_f32(min(-1304f, 773f))));
    global3 = ~_wgslsmith_div_vec4_i32(~vec4<i32>(arg_0, firstLeadingBit(-18476i), arg_2, 1i), reverseBits(vec4<i32>(-59237i, arg_0, global3.x, arg_0) | _wgslsmith_mod_vec4_i32(vec4<i32>(global3.x, -34410i, arg_2, -14243i), vec4<i32>(arg_2, global3.x, arg_2, global3.x))));
    var var_1 = _wgslsmith_add_u32(0u, global0.b << (0u % 32u));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, 674f, var_0.c, global0.c))))), vec4<f32>(_wgslsmith_f_op_f32(1062f * global0.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(2102f)))), global0.c, _wgslsmith_div_f32(-161f, _wgslsmith_f_op_f32(-var_2.c)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<f32>(var_0.c, -1654f, global0.c, 624f), vec4<bool>(false, arg_1.x, global2[_wgslsmith_index_u32(1u, 17u)], arg_1.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.c, var_0.c, 109f, 640f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2194f, var_2.c, -2037f, var_0.c) - vec4<f32>(global0.c, var_2.c, var_0.c, var_2.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 694f, 1000f, -1406f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-432f, -468f, global0.c, var_2.c), vec4<f32>(-2178f, -436f, var_2.c, global0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_2.c)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-650f)))))));
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = !vec2<bool>(global2[_wgslsmith_index_u32(global0.b >> (73614u % 32u), 17u)], _wgslsmith_mult_i32(-global3.x, _wgslsmith_add_i32(global3.x, 1i)) <= global3.x);
    var var_1 = !vec4<bool>(var_0.x, 6511u != min(19066u, _wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.wz)), select(false, global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, 22771u), 17u)], !(61551u < u_input.a.x)), global2[_wgslsmith_index_u32(1u, 17u)]);
    global2 = array<bool, 17>();
    let var_2 = Struct_1(max(~51887u, ~4294967295u), 1811u, _wgslsmith_f_op_f32(-arg_3.c), global0.d);
    let var_3 = global3.zzw;
    return select(!select(select(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_3.d, 17u)], var_0.x), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(false, true, false, true), vec4<bool>(var_1.x, false, true, var_1.x)), vec4<bool>(var_1.x, false, true, var_0.x)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_1.x, global2[_wgslsmith_index_u32(arg_0.a, 17u)], false), vec4<bool>(false, var_0.x, var_1.x, var_1.x)), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b, 17u)], var_0.x, var_1.x, false), false == var_1.x), select(select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(true, false, var_1.x, var_0.x), var_0.x), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], var_0.x, var_0.x, global2[_wgslsmith_index_u32(arg_1.a, 17u)]), select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.x, true, true, false), true))), vec4<bool>(!(true && any(vec4<bool>(false, var_0.x, var_1.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1961f - global0.c)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), var_0.x, _wgslsmith_add_u32(~4294967295u, arg_0.b) != _wgslsmith_dot_vec3_u32(max(u_input.a.xxx, vec3<u32>(global0.a, 8942u, 4294967295u)), vec3<u32>(u_input.a.x, 1u, arg_3.d))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<f32>, 1>();
    let var_0 = 2147483647i;
    let var_1 = !(!select(func_6(func_1(var_0, vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 17u)], false, global2[_wgslsmith_index_u32(0u, 17u)]), -2687i), func_1(var_0, vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(u_input.b, 17u)]), global3.x), global0.c, Struct_1(1u, global0.d, global0.c, 95500u)), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.d, global0.a), 17u)], !global2[_wgslsmith_index_u32(global0.b, 17u)], !global2[_wgslsmith_index_u32(46990u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), u_input.a), 17u)]));
    global0 = func_4(!all(var_1.wz) == all(!func_6(Struct_1(u_input.b, u_input.a.x, global0.c, u_input.b), Struct_1(u_input.b, 1u, global0.c, 4294967295u), -139f, Struct_1(global0.b, 0u, global0.c, 1u))), 115f);
    global4 = array<vec3<f32>, 1>();
    let var_2 = -(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, global3.x, -73206i, 1i) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, 854i, -13207i, global3.x), vec4<i32>(global3.x, var_0, var_0, -1i))), vec4<i32>(-global3.x, 50049i, -20386i, max(global3.x, 9559i))) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 33056u, u_input.b, global0.d), vec4<u32>(1u, 22487u, global0.d, u_input.a.x))) % vec4<u32>(32u)));
    global2 = array<bool, 17>();
    global4 = array<vec3<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_u32(select(firstLeadingBit(0u), 1u, all(var_1)), _wgslsmith_dot_vec2_u32(u_input.a.ww >> (vec2<u32>(global0.d, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 41996u)))), 1i, u_input.b, countOneBits(countOneBits(min(~vec4<i32>(var_2.x, -12639i, global3.x, 16819i), abs(vec4<i32>(var_2.x, var_2.x, -28284i, var_2.x))))), global0.d >> (select((global0.b >> (global0.b % 32u)) & 1u, abs(u_input.b), var_1.x) % 32u));
}

