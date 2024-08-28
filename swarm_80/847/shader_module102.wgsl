struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<i32>(37278i, 27177i), -1i), Struct_1(vec2<i32>(-2082i, -4520i), 1i), Struct_1(vec2<i32>(22850i, 62988i), 1i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec2<i32>(0i, -46644i), 2147483647i), Struct_1(vec2<i32>(1i, 3394i), -1i), Struct_1(vec2<i32>(15457i, 1i), 52803i), Struct_1(vec2<i32>(0i, 0i), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, -6483i), 15804i), Struct_1(vec2<i32>(49925i, -1i), -23280i), Struct_1(vec2<i32>(-22196i, i32(-2147483648)), 23253i), Struct_1(vec2<i32>(44640i, 1i), i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 51061i), 1i), Struct_1(vec2<i32>(-55702i, -16968i), 11271i), Struct_1(vec2<i32>(19225i, -1i), 1i), Struct_1(vec2<i32>(-1i, -19577i), 1i), Struct_1(vec2<i32>(-4332i, -1i), 31893i), Struct_1(vec2<i32>(1i, i32(-2147483648)), 0i), Struct_1(vec2<i32>(31678i, -13293i), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, -2403i), 32489i), Struct_1(vec2<i32>(0i, 20433i), -1i), Struct_1(vec2<i32>(1i, -1i), i32(-2147483648)), Struct_1(vec2<i32>(-3175i, -1i), -25718i));

var<private> global1: array<f32, 14>;

var<private> global2: array<f32, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global1 = array<f32, 14>();
    let var_0 = 14918i;
    var var_1 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, false)), select(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))))), vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true)), !(select(2147483647i, -1754i, true) > 0i), all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)))));
    let var_2 = global0[_wgslsmith_index_u32(~(~50496u), 23u)];
    let var_3 = Struct_2(1u, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~1u, 1u), firstLeadingBit(4294967295u) << (firstTrailingBit(17682u) % 32u)), 21u)])), Struct_1(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, -8771i) >> (firstLeadingBit(44507u) % 32u), _wgslsmith_div_i32(var_2.b, u_input.a.x)), u_input.a.x), vec4<i32>(~(-2147483647i) | u_input.a.x, ~18288i, ~1i << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 24552u, 46448u), vec3<u32>(53390u, 49664u, 1u)) % 32u), u_input.a.x));
    return var_3.a;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a.x;
    global1 = array<f32, 14>();
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 22982i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 12795u, 1u, 8018u), vec4<u32>(1u, 24141u, 42708u, 43547u))) % 32u)), u_input.a.wz);
    var var_2 = func_3();
    var var_3 = Struct_2(min(abs(_wgslsmith_mod_u32(countOneBits(43687u), _wgslsmith_dot_vec4_u32(vec4<u32>(126827u, 1u, 4294967295u, 0u), vec4<u32>(0u, 1u, 4294967295u, 1u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(78644u, 21u)]))) * 153f)), Struct_1(u_input.a.xw, -11132i), u_input.a);
    return Struct_3(Struct_2(_wgslsmith_sub_u32(var_3.a, ~var_3.a), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_3.a, 21u)])), var_3.c, var_3.d), abs(~var_3.a) & 76558u, Struct_1(var_3.c.a, -33618i), Struct_2((_wgslsmith_mult_u32(var_3.a, var_3.a) & ~var_3.a) << (var_3.a % 32u), global1[_wgslsmith_index_u32(18749u, 14u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, var_3.a, var_3.a) & vec3<u32>(var_3.a, var_3.a, var_3.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 36276u, var_3.a), vec3<u32>(var_3.a, 35155u, var_3.a)), vec3<u32>(39387u, var_3.a, var_3.a))), 23u)], _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(40939i, u_input.a.x, var_3.d.x, 1i), var_3.d), vec4<i32>(-1i, -56845i, -21978i, u_input.a.x)), ~u_input.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global2 = array<f32, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-806f, arg_1.a.b))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 14u)], global1[_wgslsmith_index_u32(arg_1.b, 14u)]) - vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(55923u, 21u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.a.b, global1[_wgslsmith_index_u32(16097u, 14u)]), vec2<f32>(-725f, global1[_wgslsmith_index_u32(arg_0, 14u)])))))))));
    let var_1 = true;
    var var_2 = 1i == (u_input.a.x >> (firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(45409u, arg_1.d.a, arg_0, arg_1.d.a), vec4<u32>(0u, arg_1.d.a, arg_1.d.a, 14329u)), 4294967295u)) % 32u));
    var var_3 = reverseBits(arg_1.d.a);
    return arg_1.a.c;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = any(arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.b, arg_1.b))), vec2<f32>(-298f, 1417f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1304f, -1380f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(654f, arg_1.b)), _wgslsmith_div_vec2_f32(vec2<f32>(-240f, 1352f), vec2<f32>(-1000f, global1[_wgslsmith_index_u32(27143u, 14u)])))))), vec2<f32>(1733f, global1[_wgslsmith_index_u32(78809u, 14u)])));
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_2 = func_2().c;
    return -8571i;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<f32, 14>();
    let var_0 = vec3<i32>(func_5(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_2(~33957u, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(72037u), 14u)]), func_4(~94360u, func_2()), u_input.a), func_2().a, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(77084u >> (select(0u, 0u, false) % 32u), 14u)])), firstLeadingBit(~min(u_input.a.x, arg_0.b)), -4258i);
    global0 = array<Struct_1, 23>();
    var var_1 = var_0;
    var_1 = select(func_2().a.d.yxz, u_input.a.wxz, false);
    return func_4(abs(~reverseBits(1u)), func_2());
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2().d;
    global1 = array<f32, 14>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    return func_4(~(~(~(~var_0.a))), Struct_3(arg_3, 1u, func_2().d.c, arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_2(48384u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 14u)]))), global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, ~u_input.a));
    let var_2 = _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(var_1.a, 21u)]));
    var var_3 = func_6(var_1.c, func_1(var_1.c), abs(~vec4<u32>(func_2().a.a, var_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 5720u, var_1.a, var_1.a), vec4<u32>(var_1.a, 1u, 42368u, var_1.a)), var_1.a)), var_1);
    var var_4 = 25029u;
    var var_5 = Struct_3(func_2().d, func_3() >> (_wgslsmith_mod_u32(var_1.a, ~(~48246u)) % 32u), func_6(Struct_1(min(var_3.a, -var_1.c.a), ~(-1i << (var_1.a % 32u))), func_4(_wgslsmith_sub_u32(~26229u, 0u), Struct_3(func_2().a, var_1.a, global0[_wgslsmith_index_u32(var_1.a, 23u)], Struct_2(var_1.a, var_2, Struct_1(u_input.a.wy, var_3.a.x), var_1.d))), vec4<u32>(8219u, _wgslsmith_mod_u32(~51269u, 0u ^ var_1.a), var_1.a, ~3922u), var_1), var_1);
    let var_6 = vec4<bool>((var_1.a != var_1.a) && true, true, any(vec3<bool>(true, true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_5.a.a), abs(~var_5.a.d) >> ((~(~vec4<u32>(48033u, var_1.a, var_5.d.a, var_1.a)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, var_5.a.a, 41089u, 57010u), vec4<u32>(var_5.b, var_1.a, 1u, var_5.b))) % vec4<u32>(32u)), var_5.a.b, i32(-1i) * -_wgslsmith_div_i32(1281i, -var_3.b), var_1.d.yzy);
}

