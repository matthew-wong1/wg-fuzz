struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: array<u32, 2> = array<u32, 2>(1u, 0u);

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: vec3<bool>;

var<private> global4: bool = false;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(reverseBits(u_input.a.xy), arg_1, arg_1, 1u);
    return false && !global3.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> f32 {
    var var_0 = ~abs(countOneBits(vec4<u32>(75235u, _wgslsmith_clamp_u32(arg_1.e.d, 0u, 4294967295u), _wgslsmith_add_u32(arg_1.e.d, 0u), abs(21164u))));
    let var_1 = u_input.b.x;
    let var_2 = arg_1.e;
    var var_3 = Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(~(~global1[_wgslsmith_index_u32(1u, 2u)]), 19633u), ~vec2<u32>(~4294967295u, ~arg_1.e.d)), var_2.c, arg_1.e.b, 71971u);
    var var_4 = vec4<u32>(~u_input.b.x, 0u, arg_1.e.a.x, reverseBits(reverseBits(33268u)) | (~var_1 << (_wgslsmith_add_u32(abs(2472u), min(var_3.a.x, 26534u)) % 32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -122f);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)))), !global0[_wgslsmith_index_u32(u_input.a.x, 24u)])));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], Struct_1(u_input.c.x, abs(u_input.d), -519f), Struct_1(-8187i, -20043i, _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -39548i, u_input.c.x, u_input.d), vec4<i32>(2147483647i, u_input.d, -1i, 0i)), vec4<i32>(0i, u_input.c.x, u_input.d, -1i) & vec4<i32>(u_input.d, 1i, u_input.d, -1i)), Struct_3(func_3(u_input.d, Struct_1(-1i, 2147483647i, -1233f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, -135f, var_0.x))), countOneBits(vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, u_input.c.x)), Struct_1(1i, -51035i, arg_1.x), Struct_2(arg_0.yz, Struct_1(u_input.d, 33887i, 522f), Struct_1(u_input.c.x, u_input.c.x, 1463f), u_input.b.x))))), ~36299u);
    global1 = array<u32, 2>();
    global2 = array<vec2<u32>, 1>();
    let var_2 = Struct_3(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-689f + -1127f), var_0.x, _wgslsmith_f_op_f32(-arg_1.x), var_1.c.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, -1481f, -781f, arg_1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_1.x, -338f, arg_1.x), vec4<f32>(-630f, arg_1.x, var_1.b.c, arg_1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(766f, 142f, var_0.x, var_1.b.c), vec4<f32>(-1476f, arg_1.x, var_0.x, var_1.c.c))))), select(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, var_1.c.b, var_1.c.a) | vec4<i32>(-30200i, -1i, -1i, u_input.d), firstTrailingBit(vec4<i32>(var_1.c.a, 42802i, var_1.b.a, -1i)))), vec4<i32>(u_input.d, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.b, 21016i, var_1.b.a), vec3<i32>(var_1.b.b, 19785i, u_input.c.x))), 1i, var_1.b.a >> (~1u % 32u)), vec4<bool>(false, any(select(global3.yx, vec2<bool>(global3.x, false), global3.x)), false, !global3.x)), var_1.c, var_1);
    return _wgslsmith_f_op_f32(exp2(arg_1.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = abs((~vec2<u32>(global1[_wgslsmith_index_u32(arg_0.x, 2u)], 76763u) & vec2<u32>(1u, arg_0.x)) & u_input.b.xx);
    var var_1 = Struct_1(u_input.c.x, u_input.d, _wgslsmith_f_op_f32(func_2(u_input.b.wyx, _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1669f, -768f, -1649f))), _wgslsmith_div_vec3_f32(vec3<f32>(469f, 2159f, -1385f), vec3<f32>(1000f, -1000f, -416f)))))));
    global0 = array<bool, 24>();
    var var_2 = ~(~abs(vec2<u32>(67136u, u_input.b.x)));
    global2 = array<vec2<u32>, 1>();
    return Struct_1(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, -1i, 1i), vec3<i32>(var_1.b, -59566i, var_1.a))), ~u_input.d), _wgslsmith_add_i32(-2147483647i, var_1.a), var_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    global0 = array<bool, 24>();
    var var_0 = -1i;
    global1 = array<u32, 2>();
    global4 = global3.x;
    global3 = vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], !any(select(select(vec4<bool>(false, false, global3.x, true), vec4<bool>(false, false, false, arg_2.a), vec4<bool>(true, true, arg_2.a, arg_2.a)), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], false, false, false), vec4<bool>(true, arg_2.a, false, global0[_wgslsmith_index_u32(28426u, 24u)]), vec4<bool>(arg_2.a, arg_2.a, false, false)), arg_0.c <= 1679f)), all(!(!select(vec4<bool>(global3.x, arg_2.a, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], false, false, global0[_wgslsmith_index_u32(arg_1, 24u)]), true))));
    return Struct_2(global2[_wgslsmith_index_u32(24180u, 1u)], arg_2.d, func_1(_wgslsmith_add_vec4_u32(reverseBits(countOneBits(u_input.b)), vec4<u32>(arg_2.e.a.x, u_input.b.x, 0u, reverseBits(global1[_wgslsmith_index_u32(arg_1, 2u)]))), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)] || global3.x, global0[_wgslsmith_index_u32(30411u | global1[_wgslsmith_index_u32(arg_2.e.d, 2u)], 24u)], global0[_wgslsmith_index_u32(~38937u, 24u)])), ~0u);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = select(vec3<bool>(func_3(-(~arg_1.c.a), func_5(func_1(arg_3, vec3<bool>(global3.x, true, false)), 1u, Struct_3(false, vec4<f32>(arg_1.c.c, arg_1.b.c, 220f, arg_1.b.c), vec4<i32>(arg_0, -2147483647i, 28932i, u_input.c.x), Struct_1(arg_0, arg_1.c.a, -552f), Struct_2(u_input.a.xx, arg_1.c, Struct_1(arg_0, arg_0, arg_2), 1u)), func_1(u_input.b, vec3<bool>(global3.x, false, global3.x))).b), func_3(-1i, func_1(vec4<u32>(arg_3.x, arg_1.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 2u)], arg_3.x), select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(false, true, global3.x), vec3<bool>(true, false, global3.x)))), all(select(!vec3<bool>(global3.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 2u)], 24u)], global3.x), !vec3<bool>(global3.x, global3.x, true), true))), select(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(19047u, 24u)], false, global0[_wgslsmith_index_u32(arg_3.x, 24u)]), vec3<bool>(global3.x, global3.x, true), true), !vec3<bool>(global3.x, false, global0[_wgslsmith_index_u32(arg_3.x, 24u)]), !select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(true, false, true), global3.x)), vec3<bool>(_wgslsmith_div_f32(arg_1.b.c, arg_2) != _wgslsmith_f_op_f32(ceil(arg_1.c.c)), false, true), select(select(vec3<bool>(true, true, true), !vec3<bool>(global3.x, true, true), false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.d, 24u)] || true, true, func_3(14813i, arg_1.c)), vec3<bool>(any(global3.xz), any(vec4<bool>(global3.x, false, true, global3.x)), u_input.a.x != u_input.a.x))), true);
    var var_1 = Struct_3(global3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.c, -299f, arg_1.c.c, arg_1.c.c)))))), vec4<i32>(reverseBits(arg_0), _wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(reverseBits(2147483647i), -2147483647i)), _wgslsmith_add_i32(_wgslsmith_add_i32(4776i, -6000i), -(~32804i)), 1i), Struct_1(_wgslsmith_mult_i32(~arg_0, abs(0i)), ~arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))))), func_5(arg_1.b, 0u, Struct_3(~21488u >= ~arg_3.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, arg_1.c.c, arg_2, 1000f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.c, -618f, arg_1.c.c, arg_1.c.c), vec4<f32>(arg_1.b.c, arg_2, arg_1.c.c, 1107f))), countOneBits(vec4<i32>(76114i, 24307i, u_input.c.x, u_input.d) & vec4<i32>(2147483647i, arg_1.c.b, -2147483647i, -35857i)), Struct_1(~(-33299i), u_input.d, arg_1.c.c), Struct_2(arg_1.a, arg_1.b, func_5(arg_1.b, 0u, Struct_3(false, vec4<f32>(arg_1.b.c, arg_2, 1363f, arg_1.c.c), vec4<i32>(arg_1.b.a, -86820i, 43611i, arg_1.b.b), Struct_1(-11882i, arg_0, arg_2), arg_1), Struct_1(u_input.c.x, arg_0, 651f)).c, 1u)), arg_1.b));
    var_0 = !select(vec3<bool>(false, all(var_0.zx), true), vec3<bool>(_wgslsmith_sub_i32(u_input.c.x, var_1.e.c.b) != func_1(arg_3, vec3<bool>(true, false, true)).b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 2u)] >> (0u % 32u), 24u)], _wgslsmith_f_op_f32(157f + var_1.b.x) <= -862f), true);
    var var_2 = -max(arg_1.b.a, _wgslsmith_add_i32(var_1.d.a << (98175u % 32u), countOneBits(_wgslsmith_add_i32(13013i, 0i))));
    var var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(0u), arg_1.d, u_input.b.x), u_input.b.zxx);
    return func_1(arg_3, vec3<bool>(var_1.a, !global3.x, _wgslsmith_mod_i32(-2147483647i, var_1.e.b.a) < func_5(Struct_1(-1i, 1i, 552f), min(4294967295u, 16285u), Struct_3(global3.x, var_1.b, vec4<i32>(2147483647i, -3332i, 13861i, -2147483647i), arg_1.c, arg_1), Struct_1(var_1.e.b.a, 12900i, -1687f)).b.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 1>();
    global2 = array<vec2<u32>, 1>();
    var var_0 = -1654f;
    let var_1 = func_6(u_input.c.x, func_5(func_1(u_input.b, !select(vec3<bool>(false, false, global3.x), vec3<bool>(false, false, true), false)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)], 4294967295u), firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 35708u))), Struct_3(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1500f, 1197f, 721f, -1453f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-246f, -303f, -580f, -1507f)))), min(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.d) >> (u_input.b % vec4<u32>(32u)), ~vec4<i32>(u_input.c.x, u_input.d, -23455i, -2147483647i)), Struct_1(u_input.d, u_input.d, _wgslsmith_f_op_f32(ceil(528f))), Struct_2(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 2u)], 1u)], Struct_1(0i, 0i, 1211f), Struct_1(1635i, u_input.d, 1901f), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 2u)])), func_1(u_input.b, vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 24u)], global0[_wgslsmith_index_u32(1u, 24u)], true)), true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1116f))), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 81248u));
    let var_2 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(~global1[_wgslsmith_index_u32(u_input.a.x, 2u)], ~global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), func_5(func_6(-1i, Struct_2(u_input.a.yy, Struct_1(6421i, 8511i, var_1.c), var_1, 51305u), -460f, vec4<u32>(34118u, u_input.b.x, 37634u, u_input.b.x)), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24580u, 2u)], 2u)], u_input.b.x, 4294967295u), Struct_3(global3.x, vec4<f32>(1273f, var_1.c, 265f, var_1.c), vec4<i32>(u_input.d, var_1.b, u_input.d, -1i), var_1, Struct_2(u_input.b.xz, Struct_1(var_1.a, u_input.c.x, var_1.c), var_1, u_input.a.x)), Struct_1(u_input.d, u_input.d, var_1.c)).a) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), abs(vec2<u32>(1u, 9226u))), func_1(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), !(!(!vec3<bool>(global3.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 24u)], true)))), func_6(u_input.d, Struct_2(select(~vec2<u32>(global1[_wgslsmith_index_u32(97598u, 2u)], u_input.a.x), func_5(var_1, 10559u, Struct_3(false, vec4<f32>(var_1.c, var_1.c, 2035f, var_1.c), vec4<i32>(var_1.a, u_input.c.x, 0i, var_1.b), var_1, Struct_2(vec2<u32>(5068u, 1u), Struct_1(31276i, -984i, var_1.c), Struct_1(u_input.d, -540i, var_1.c), u_input.a.x)), Struct_1(var_1.b, u_input.d, var_1.c)).a, all(global3.zz)), func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(70319u, 2u)], 57867u, u_input.a.x), u_input.b), select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(true, global3.x, false), vec3<bool>(true, global3.x, false))), var_1, u_input.b.x), var_1.c, abs(vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 2u)], 2u)], 1u, _wgslsmith_add_u32(0u, 0u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23996u, 2u)], 2u)]))), 0u);
    global1 = array<u32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(-707f, u_input.a);
}

