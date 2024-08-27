struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(i32(-2147483648), 2147483647i, 35006i, 2147483647i), vec4<i32>(-7363i, -3341i, -27353i, -5832i), vec4<i32>(-23891i, 0i, -18880i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 55635i, 0i), vec4<i32>(i32(-2147483648), 23091i, 35125i, 42954i), vec4<i32>(2147483647i, -1804i, 37676i, 0i), vec4<i32>(64811i, -1i, -19080i, 1i), vec4<i32>(-42185i, 15839i, i32(-2147483648), 3078i), vec4<i32>(2147483647i, i32(-2147483648), -16808i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, -23246i, 0i), vec4<i32>(0i, -1i, 1i, -20508i), vec4<i32>(2147483647i, 2147483647i, -25540i, 3472i), vec4<i32>(-16269i, -1i, 25162i, -29003i), vec4<i32>(-31852i, i32(-2147483648), -18156i, 13494i), vec4<i32>(2147483647i, -25429i, 1i, 32553i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(2147483647i, 14166i, -1i, -1i), vec4<i32>(36911i, -59463i, 1i, 13165i), vec4<i32>(-9198i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(-55629i, 2147483647i, -14329i, 13698i), vec4<i32>(-1i, 0i, -1i, 0i), vec4<i32>(-4207i, 18235i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -29507i, i32(-2147483648), -1i), vec4<i32>(0i, 1i, 2147483647i, 13622i), vec4<i32>(i32(-2147483648), 976i, 0i, -38669i), vec4<i32>(0i, -23779i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 411i, 14919i, 23364i), vec4<i32>(20024i, 2147483647i, 0i, -30995i), vec4<i32>(-1i, i32(-2147483648), -9222i, 19407i));

var<private> global1: vec2<u32> = vec2<u32>(24264u, 1u);

var<private> global2: i32;

var<private> global3: array<f32, 29> = array<f32, 29>(2970f, -1517f, 352f, 1237f, 881f, -763f, 626f, 1225f, 565f, 419f, 480f, -1442f, -1000f, 1200f, -668f, -420f, 620f, -153f, 1000f, 1000f, -584f, -801f, 1336f, 1102f, -1000f, -840f, 179f, -1460f, 717f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = u_input.d.zx;
    var var_0 = _wgslsmith_f_op_f32(arg_2.c + arg_2.c);
    var var_1 = _wgslsmith_f_op_f32(2109f + global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 44u), 29u)]);
    var_1 = -444f;
    var_0 = 1278f;
    return select(_wgslsmith_div_u32(max(_wgslsmith_clamp_u32(reverseBits(arg_3.a), min(4294967295u, arg_3.a), 1u), arg_3.a), 4294967295u), abs(~(3085u | arg_2.a) >> (arg_3.a % 32u)), all(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec3<u32>(~func_3(arg_1.b, !select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, true, true), vec3<bool>(false, false, arg_0)), Struct_1(u_input.a.x, 1i, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(69692u, 29u)])), arg_1), ~56819u, ~(~(~min(47791u, global1.x))));
    var var_1 = vec4<i32>(-1263i, u_input.b, countOneBits(_wgslsmith_div_i32(~_wgslsmith_mod_i32(1i, arg_1.b), -(~26948i))), 14i);
    global1 = vec2<u32>(_wgslsmith_add_u32(u_input.d.x, 3572u), _wgslsmith_add_u32(~_wgslsmith_add_u32(33532u, 9728u), var_0.x) << (0u % 32u));
    let var_2 = arg_2;
    var var_3 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = -vec2<i32>(_wgslsmith_sub_i32(0i, ~u_input.b), u_input.c);
    var var_1 = global1.x;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, global3[_wgslsmith_index_u32(0u, 29u)]) + vec2<f32>(global3[_wgslsmith_index_u32(1u, 29u)], 1149f)))))) - arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) * _wgslsmith_f_op_vec2_f32(arg_0.a + arg_0.a))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<vec4<i32>, 29>();
    let var_0 = _wgslsmith_div_vec4_i32(-select(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(global1.x, global1.x, 59193u, 4294967295u)), 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)] & vec4<i32>(51774i, u_input.b, -27398i, u_input.b), !select(vec4<bool>(true, arg_0.c, arg_0.c, true), vec4<bool>(true, false, false, false), arg_0.b)), (vec4<i32>(-1i) * -countOneBits(vec4<i32>(58890i, 2147483647i, 15837i, 2147483647i))) >> (~max(arg_1 | vec4<u32>(41102u, 4294967295u, 15949u, 0u), _wgslsmith_mod_vec4_u32(arg_1, arg_1)) % vec4<u32>(32u)));
    global2 = _wgslsmith_add_i32(~var_0.x, _wgslsmith_mod_i32(i32(-1i) * -(~u_input.b), firstTrailingBit(u_input.c)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(758f, global3[_wgslsmith_index_u32(global1.x, 29u)]) + arg_0.a))))), arg_0.b, true);
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)), 1794f), !(select(1u << (arg_1.x % 32u), u_input.a.x, any(vec2<bool>(true, false))) >= ~firstLeadingBit(1u)), true);
    return Struct_1(0u, firstTrailingBit(abs(-23174i)), -2654f);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, u_input.a.x), 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c)) + _wgslsmith_f_op_f32(round(125f))));
    let var_1 = 0u;
    var var_2 = func_5(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(false, arg_0, Struct_2(vec2<f32>(arg_0.c, arg_0.c), true, false))))), all(vec3<bool>(true, true, true)), true), ~(~_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.d.x, 0u, 15895u, 1u)), max(vec4<u32>(4294967295u, arg_0.a, 1u, 1u), vec4<u32>(u_input.a.x, u_input.d.x, 3533u, 1u)), max(vec4<u32>(arg_0.a, u_input.d.x, var_1, 2719u), vec4<u32>(global1.x, 8047u, 4294967295u, arg_0.a)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1792f, _wgslsmith_f_op_f32(-1248f - var_0))) + -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f * var_2.c))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1826f)), arg_1);
    return ~_wgslsmith_dot_vec2_u32(u_input.a.yx, ~(~u_input.a.yz)) >> (arg_0.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.b, 0i, u_input.b, -1i) & vec4<i32>(-21011i, -2147483647i, 29805i, 0i)) & vec4<i32>(16743i, ~11422i, -29770i, -12577i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(4294967295u >> (0u % 32u)), global1.x), 29u)]));
    global0 = array<vec4<i32>, 29>();
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global1.x, 4294967295u, u_input.a.x)) ^ ~10349u), reverseBits(_wgslsmith_mult_u32(u_input.a.x, 0u)) ^ ~func_1(Struct_1(u_input.a.x, u_input.b, -645f), -966f)), 29u)];
    var var_2 = func_2(_wgslsmith_f_op_f32(func_5(Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(global1.x, 29u)], -502f), false, false), ~vec4<u32>(u_input.d.x, 4294967295u, 4476u, 4294967295u)).c + global3[_wgslsmith_index_u32(global1.x, 29u)]) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_5(func_2(countOneBits(var_1.x) <= var_0, func_5(func_2(true, Struct_1(u_input.d.x, -12469i, 356f), Struct_2(vec2<f32>(-577f, global3[_wgslsmith_index_u32(global1.x, 29u)]), true, false)), firstTrailingBit(vec4<u32>(u_input.a.x, global1.x, 52358u, u_input.a.x))), func_2(true, func_5(Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(27273u, 29u)], 904f), false, true), vec4<u32>(global1.x, 0u, 4294967295u, global1.x)), func_2(true, Struct_1(4294967295u, -23062i, -911f), Struct_2(vec2<f32>(-712f, -490f), true, true)))), select(vec4<u32>(u_input.a.x, 24227u, 0u, 15269u) >> (vec4<u32>(23994u, 19066u, u_input.a.x, 26003u) % vec4<u32>(32u)), vec4<u32>(global1.x, 32706u, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, 11886u, global1.x, u_input.a.x) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(u_input.d.x, 29u)] >= global3[_wgslsmith_index_u32(u_input.a.x, 29u)]) << (~(vec4<u32>(16355u, global1.x, global1.x, 0u) | vec4<u32>(13066u, 80646u, 1220u, global1.x)) % vec4<u32>(32u))), func_2(select(global3[_wgslsmith_index_u32(global1.x, 29u)] < _wgslsmith_div_f32(global3[_wgslsmith_index_u32(53137u, 29u)], global3[_wgslsmith_index_u32(global1.x, 29u)]), false, false), func_5(func_2(any(vec4<bool>(false, false, true, false)), Struct_1(u_input.d.x, u_input.b, global3[_wgslsmith_index_u32(4294967295u, 29u)]), func_2(true, Struct_1(global1.x, -5586i, global3[_wgslsmith_index_u32(0u, 29u)]), Struct_2(vec2<f32>(-137f, global3[_wgslsmith_index_u32(1u, 29u)]), false, false))), vec4<u32>(0u, _wgslsmith_div_u32(global1.x, 1u), 4294967295u, abs(u_input.d.x))), func_2(false, func_5(func_2(false, Struct_1(global1.x, u_input.c, 1963f), Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(global1.x, 29u)], global3[_wgslsmith_index_u32(90485u, 29u)]), true, false)), ~vec4<u32>(4294967295u, 0u, u_input.a.x, global1.x)), func_2(true, func_5(Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 29u)], -824f), false, true), vec4<u32>(4294967295u, 30764u, global1.x, 1u)), Struct_2(vec2<f32>(-1001f, -1540f), true, true)))));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0, func_5(func_2(true, Struct_1(global1.x, u_input.c, global3[_wgslsmith_index_u32(29108u, 29u)]), Struct_2(var_2.a, false, var_2.c)), vec4<u32>(u_input.d.x, global1.x, 1u, u_input.d.x)).b, _wgslsmith_sub_i32(firstLeadingBit(var_0), var_0), ~_wgslsmith_dot_vec2_i32(var_1.xx, var_1.zz)) | vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(var_1.yzy, var_1.xwx)), reverseBits(u_input.c << (u_input.d.x % 32u)), 57545i, var_1.x));
}

