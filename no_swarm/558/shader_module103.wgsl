struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<f32, 8>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<bool> {
    global0 = array<bool, 9>();
    let var_0 = Struct_1(!vec4<bool>(all(!vec4<bool>(true, global0[_wgslsmith_index_u32(35045u, 9u)], false, global0[_wgslsmith_index_u32(30557u, 9u)])), !all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(49153u, 9u)])), any(select(vec2<bool>(global0[_wgslsmith_index_u32(53716u, 9u)], global0[_wgslsmith_index_u32(38552u, 9u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(41073u, 9u)]), vec2<bool>(global0[_wgslsmith_index_u32(25749u, 9u)], false))), true), vec3<bool>(true, all(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)], !global0[_wgslsmith_index_u32(1u, 9u)])), !global0[_wgslsmith_index_u32(~1u, 9u)]), 1i);
    global0 = array<bool, 9>();
    var var_1 = Struct_1(vec4<bool>(false, any(var_0.a), true, any(var_0.b.yy)), var_0.b, u_input.a.x);
    let var_2 = Struct_1(var_1.a, select(var_0.a.wzw, vec3<bool>(!any(vec4<bool>(false, false, var_0.b.x, false)), !any(var_1.a), false), all(var_1.a)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~var_1.c, -2147483647i, select(u_input.b.x, u_input.b.x, false), select(u_input.b.x, 1i, global0[_wgslsmith_index_u32(0u, 9u)])), max(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(-23384i, -1547i, var_1.c, 0i), u_input.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c, reverseBits(1i), var_1.c, u_input.a.x), ~(~u_input.a), vec4<i32>(min(-1i, var_1.c), 30011i, abs(u_input.a.x), 33517i))));
    return vec4<bool>(var_0.b.x, all(vec4<bool>(false, false, !any(vec3<bool>(var_0.b.x, false, true)), false)), any(!select(!vec3<bool>(false, global0[_wgslsmith_index_u32(53352u, 9u)], var_2.a.x), !var_2.a.yxw, all(var_0.a.zz))), _wgslsmith_f_op_f32(-831f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(31957u, 8u)])))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1126f)))));
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    let var_0 = Struct_1(!func_3(), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(14575u, 9u)], false, global0[_wgslsmith_index_u32(4294967295u, 9u)]), func_3().wxx, func_3().yzz), vec3<bool>(!(u_input.b.x > -12930i), _wgslsmith_f_op_f32(trunc(-639f)) > _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(145u, 8u)], global1[_wgslsmith_index_u32(17369u, 8u)])), func_3().x), !global0[_wgslsmith_index_u32(select(68170u, ~861u, any(vec2<bool>(true, true))), 9u)]), max(-43237i, u_input.b.x));
    let var_1 = var_0;
    let var_2 = var_1;
    return Struct_1(func_3(), !func_3().wwz, 0i);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + -2481f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f) + -246f)) + global1[_wgslsmith_index_u32(arg_2.x, 8u)]);
    let var_2 = arg_0;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_2.x, 8u)], -894f)) - var_1), -222f, all(vec3<bool>(arg_3.x, true, var_2.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.x, 8u)]))) * _wgslsmith_f_op_f32(1269f - _wgslsmith_f_op_f32(1026f - var_1))));
    global0 = array<bool, 9>();
    return func_2();
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(125828u, ~1u, 4294967295u, ~30173u), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(62844u, 1u, 4196u), vec3<u32>(0u, 20719u, 4294967295u)), firstLeadingBit(1673u)), 16122u, 39621u, ~4294967295u));
    var var_1 = arg_2.b.x;
    var var_2 = vec4<bool>(func_3().x, false, arg_3.b.x, arg_2.a.x);
    let var_3 = ~(-1i);
    var_1 = true;
    return func_2();
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_mult_i32(0i, 106286i);
    return StorageBuffer(~(~55829i), -27082i, vec3<u32>(1u, ~1u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(81351u, 65148u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 10346u), vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u)))), vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(0i, var_0)), ~(select(arg_1.c, 62091i, false) >> (~1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~39270u, 8u)] * _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_f32(236f * global1[_wgslsmith_index_u32(48088u, 8u)])))))));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, 17655i), -1i), 0i, _wgslsmith_div_i32(u_input.b.x, u_input.a.x) | _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), vec3<i32>(~_wgslsmith_mult_i32(u_input.a.x, 0i), ~(-31085i), u_input.b.x)));
    var var_2 = -_wgslsmith_add_i32(select(-u_input.a.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), -2147483647i), global0[_wgslsmith_index_u32(abs(1513u), 9u)]), min(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, u_input.b.x, 2147483647i, 0i)) << (~2822u % 32u)));
    var var_3 = 1i;
    let x = u_input.a;
    s_output = func_5(all(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)] | false, false)), func_4(vec4<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1552f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 8u)] + 698f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(117f - -1097f) * -1341f), 409f), u_input.a.zx, func_1(Struct_1(select(vec4<bool>(global0[_wgslsmith_index_u32(807u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(78528u, 9u)], global0[_wgslsmith_index_u32(70677u, 9u)]), vec4<bool>(false, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(13075u, 9u)], global0[_wgslsmith_index_u32(5159u, 9u)], true, false)), vec3<bool>(true, false, false), ~(-36521i)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], true), vec4<bool>(global0[_wgslsmith_index_u32(47663u, 9u)], global0[_wgslsmith_index_u32(122568u, 9u)], false, false), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(74029u, 9u)], false)), abs(abs(vec3<u32>(0u, 46851u, 3510u))), select(vec3<bool>(false, true, false), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], true, global0[_wgslsmith_index_u32(46653u, 9u)]), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 9u)]))), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(~65011u, 9u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(36945u, 1u), 9u)], global0[_wgslsmith_index_u32(20536u, 9u)] | global0[_wgslsmith_index_u32(1u, 9u)], true), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], true)), 1i)), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-696f, global1[_wgslsmith_index_u32(11214u, 8u)], var_0, var_0)))))), u_input.a.wx, func_4(vec4<f32>(-639f, var_0, _wgslsmith_div_f32(1086f, global1[_wgslsmith_index_u32(21848u, 8u)]), _wgslsmith_f_op_f32(min(var_0, global1[_wgslsmith_index_u32(48401u, 8u)]))), ~vec2<i32>(u_input.a.x, -22349i), func_1(func_1(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(40687u, 9u)], false, global0[_wgslsmith_index_u32(43812u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(49862u, 9u)], false), u_input.b.x), vec4<bool>(global0[_wgslsmith_index_u32(13675u, 9u)], false, true, false), vec3<u32>(14198u, 72913u, 1u), vec3<bool>(global0[_wgslsmith_index_u32(25816u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(73138u, 9u)])), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(24761u, 9u)], false, global0[_wgslsmith_index_u32(94800u, 9u)]), ~vec3<u32>(57622u, 75121u, 0u), func_2().b), func_2()), Struct_1(!func_3(), vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)] || false, true, false), -1i)), Struct_1(vec4<bool>(true, any(!vec3<bool>(global0[_wgslsmith_index_u32(31604u, 9u)], false, global0[_wgslsmith_index_u32(15339u, 9u)])), global0[_wgslsmith_index_u32(abs(~0u), 9u)], true), func_3().xzy, 18063i));
}

