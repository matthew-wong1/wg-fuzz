struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(57725i, 2147483647i), vec2<i32>(33096i, 57833i), vec2<i32>(-1i, 45876i), vec2<i32>(1i, 8137i), vec2<i32>(-42499i, 50421i), vec2<i32>(i32(-2147483648), 26550i), vec2<i32>(29607i, -26752i), vec2<i32>(7873i, 1i), vec2<i32>(7527i, 2147483647i), vec2<i32>(-1i, -83101i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-11126i, 0i));

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1i), Struct_1(-1i), Struct_1(-4508i), Struct_1(0i), Struct_1(61228i), Struct_1(-12932i), Struct_1(-25246i), Struct_1(14558i), Struct_1(-39181i), Struct_1(i32(-2147483648)), Struct_1(23596i), Struct_1(1i), Struct_1(-47995i), Struct_1(16262i), Struct_1(0i), Struct_1(-85620i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(36285i), Struct_1(-26405i), Struct_1(i32(-2147483648)), Struct_1(5837i), Struct_1(22744i));

var<private> global2: array<f32, 28>;

var<private> global3: array<vec4<i32>, 24>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<vec2<i32>, 12>();
    var var_0 = vec2<bool>(select(firstTrailingBit(u_input.c.x << (u_input.a.x % 32u)), _wgslsmith_sub_u32(~68058u, firstLeadingBit(u_input.a.x)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))) != _wgslsmith_dot_vec2_u32(u_input.a.ww & vec2<u32>(59104u, u_input.a.x), ~vec2<u32>(1u, 1u)), (_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -23181i), u_input.b.wy), ~u_input.d, 35015i) <= ~_wgslsmith_clamp_i32(-2147483647i, 43133i, u_input.d)) || true);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1154f * global2[_wgslsmith_index_u32(u_input.a.x, 28u)]) * 798f), Struct_1(-2224i));
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -819f))) <= _wgslsmith_f_op_f32(-var_1.a), select(false, all(vec3<bool>(var_0.x, var_0.x, true)), var_0.x) || (~80492u > ~u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 28u)]))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.a))))), -1301f, var_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, -u_input.b.x), -_wgslsmith_add_i32(-15782i, u_input.b.x)), arg_1.b.a, 0i), abs(vec3<i32>(-_wgslsmith_clamp_i32(arg_3.x, u_input.d, -4623i), 0i, ~1i)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(step(436f, _wgslsmith_f_op_f32(f32(-1f) * -428f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-538f, -622f))), arg_1.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(328f, var_1.a), vec2<f32>(461f, global2[_wgslsmith_index_u32(arg_0, 28u)]), false))) - vec2<f32>(-897f, arg_2))));
    var var_3 = global1[_wgslsmith_index_u32(arg_0, 23u)];
    var var_4 = _wgslsmith_f_op_f32(step(1781f, -181f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(arg_0, 28u)])), 1610f, !select(true, true, false)))), -404f);
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    global1 = array<Struct_1, 23>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_u32(55787u, firstTrailingBit(20303u)), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 28u)], Struct_1(arg_0.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.b.x, arg_0.x) & vec4<i32>(1i, 17513i, 1i, arg_0.x), -arg_0))))), Struct_1(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(27741i, -64001i), select(countOneBits(20232i), ~arg_0.x, true))));
    global0 = array<vec2<i32>, 12>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 23u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-295f)) - _wgslsmith_f_op_f32(ceil(-1381f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -2093f)) - _wgslsmith_f_op_f32(trunc(var_0.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(2267u, 28u)], -141f, var_0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 28u)], var_0.a, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(172f, global2[_wgslsmith_index_u32(58517u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]) * vec3<f32>(var_0.a, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], var_0.a))))));
    return !select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), any(vec2<bool>(false, false)), !select(false, true, true)), select(vec3<bool>(true, any(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, false)), u_input.a.x < u_input.c.x);
}

fn func_1() -> u32 {
    let var_0 = all(!select(func_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.c.x), 24u)]), !func_2(vec4<i32>(-2147483647i, 12908i, u_input.d, u_input.d)), vec3<bool>(true, true, true)));
    global1 = array<Struct_1, 23>();
    var var_1 = false;
    let var_2 = global1[_wgslsmith_index_u32(u_input.c.x, 23u)];
    let var_3 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(~firstLeadingBit(26264u), u_input.c.x), ~(1u << (firstTrailingBit(u_input.a.x) % 32u))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.c.x, 27234u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a.x), u_input.c))), _wgslsmith_add_vec3_u32(u_input.a.yzz, abs(~vec3<u32>(0u, u_input.a.x, 4294967295u)))));
    return 4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = -246f;
    var var_1 = 14381u << (~(~func_1()) % 32u);
    let var_2 = Struct_1(firstTrailingBit(countOneBits(-arg_0.a)));
    global2 = array<f32, 28>();
    var_1 = 1u;
    return Struct_2(_wgslsmith_f_op_f32(-var_0), arg_0);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = true;
    var var_1 = arg_1.b;
    let var_2 = select(vec3<bool>(true, true, all(vec3<bool>(true, true, any(vec3<bool>(var_0, false, false))))), !vec3<bool>(var_0, all(vec2<bool>(var_0, true)), true), (!(4294967295u < u_input.a.x) || true) | all(!select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), var_0)));
    global0 = array<vec2<i32>, 12>();
    let var_3 = !any(vec4<bool>(true, all(vec3<bool>(true, true, var_0)), select(arg_1.b.a, arg_1.b.a, var_2.x) < _wgslsmith_div_i32(u_input.b.x, -1i), false));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 28>();
    var var_0 = func_6(_wgslsmith_sub_vec4_u32(u_input.a, ~(vec4<u32>(u_input.a.x, 0u, 1u, u_input.c.x) >> ((u_input.a | u_input.a) % vec4<u32>(32u)))), func_5(global1[_wgslsmith_index_u32(~(~(~1u)), 23u)], vec4<u32>(~10791u & func_1(), func_1() | _wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(4294967295u, 18677u)), _wgslsmith_dot_vec3_u32(u_input.c, ~u_input.a.zyw), firstLeadingBit(~4141u)), true), Struct_2(603f, func_5(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], abs(u_input.a & u_input.a), true).b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-338f * _wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 28u)])))));
    let var_1 = 0u;
    var_0 = Struct_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u, 28u)]), global1[_wgslsmith_index_u32(89053u, 23u)]);
    let var_2 = vec2<u32>(67728u, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.b.a, var_0.b.a >> (~var_2.x % 32u), abs(-3500i), ~(func_5(Struct_1(var_0.b.a), vec4<u32>(63171u, 22354u, u_input.c.x, 1u), false).b.a & max(var_0.b.a, var_0.b.a))), ~(-(~vec3<i32>(u_input.d, u_input.d, var_0.b.a))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1, u_input.a.x), var_2.x, ~var_2.x), reverseBits(~vec3<u32>(var_1, 23729u, 14253u)), vec3<u32>(_wgslsmith_dot_vec2_u32(var_2, var_2), select(0u, 50984u, true), abs(u_input.c.x))) % vec3<u32>(32u)), u_input.b.xzz, -(15631i | var_0.b.a) | -2147483647i);
}

