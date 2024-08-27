struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-1714f, 370f, -242f, 1359f, 642f, 216f, -1438f, 1000f, -141f);

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(0i, -1i, -1i, 0i), vec4<i32>(-1i, 43900i, -1i, 0i), vec4<i32>(1i, 0i, 26919i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 0i, 29125i), vec4<i32>(2147483647i, -22278i, -22379i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -5651i, -39115i, -1i), vec4<i32>(i32(-2147483648), 58174i, -1i, 0i), vec4<i32>(0i, -1i, -45838i, 30801i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 33868i), vec4<i32>(i32(-2147483648), 1i, -15600i, -5604i), vec4<i32>(-27324i, 38778i, 9804i, -19639i), vec4<i32>(0i, 1i, 2147483647i, 19826i), vec4<i32>(1i, 2147483647i, 2147483647i, -20571i), vec4<i32>(25488i, 5181i, -13198i, 6454i), vec4<i32>(1i, 28771i, 8401i, 2147483647i), vec4<i32>(-1i, 41154i, 16399i, 14403i), vec4<i32>(-1i, i32(-2147483648), -34434i, 1i), vec4<i32>(1i, -25819i, -21233i, 0i), vec4<i32>(-1i, 2147483647i, 2147483647i, 33009i), vec4<i32>(-10099i, i32(-2147483648), 31054i, 34327i));

var<private> global2: array<i32, 20>;

var<private> global3: u32;

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(1219f, -181f, 2317f), 1i, vec4<bool>(true, true, false, true), -1412f, 979u), Struct_1(vec3<f32>(1442f, 371f, -1000f), -1i, vec4<bool>(false, false, false, false), 415f, 65613u), Struct_1(vec3<f32>(-1000f, -895f, -1484f), 2147483647i, vec4<bool>(true, true, false, true), -1827f, 80989u), Struct_1(vec3<f32>(-468f, -677f, 1437f), i32(-2147483648), vec4<bool>(false, false, false, true), 149f, 4294967295u), Struct_1(vec3<f32>(1481f, 459f, 625f), -11950i, vec4<bool>(false, false, false, false), -272f, 1u), Struct_1(vec3<f32>(952f, 428f, 1337f), 1i, vec4<bool>(false, false, false, true), -384f, 4294967295u), Struct_1(vec3<f32>(792f, 865f, 821f), 10735i, vec4<bool>(false, true, false, false), -297f, 63062u), Struct_1(vec3<f32>(1799f, 693f, -680f), 4467i, vec4<bool>(true, true, true, false), 321f, 28818u), Struct_1(vec3<f32>(569f, -1000f, 1201f), 83664i, vec4<bool>(false, true, true, false), 1000f, 1u), Struct_1(vec3<f32>(697f, 856f, -169f), 2147483647i, vec4<bool>(false, false, false, true), 440f, 1u), Struct_1(vec3<f32>(-228f, -1421f, -1000f), -1i, vec4<bool>(false, false, true, true), 545f, 1u), Struct_1(vec3<f32>(-313f, -407f, -1000f), 8173i, vec4<bool>(true, false, true, false), -1082f, 4294967295u), Struct_1(vec3<f32>(251f, -1006f, 1448f), i32(-2147483648), vec4<bool>(true, true, false, false), 409f, 3520u), Struct_1(vec3<f32>(-574f, -460f, 334f), 1i, vec4<bool>(false, true, false, false), -1933f, 18536u), Struct_1(vec3<f32>(-1136f, -2075f, -620f), 48057i, vec4<bool>(false, false, false, true), 1409f, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> i32 {
    global0 = array<f32, 9>();
    global3 = 4294967295u;
    global2 = array<i32, 20>();
    var var_0 = vec2<u32>(select(~abs(u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, 1u, 28195u), max(vec4<u32>(0u, 4294967295u, 4294967295u, arg_0.b.x), vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), firstLeadingBit(vec4<u32>(1u, arg_0.b.x, 21831u, 2544u))), vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), ~4294967295u, _wgslsmith_sub_u32(4294967295u, arg_0.b.x), arg_0.b.x)), !any(vec4<bool>(true, true, true, true))), 4294967295u);
    global1 = array<vec4<i32>, 20>();
    return 40388i;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = vec3<i32>(-global2[_wgslsmith_index_u32(~(u_input.b << ((u_input.b >> (0u % 32u)) % 32u)), 20u)], firstTrailingBit(func_3(Struct_5(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 9u)]), ~vec2<u32>(61761u, u_input.b)), vec4<i32>(0i, firstLeadingBit(u_input.a), 0i, select(44090i, global2[_wgslsmith_index_u32(u_input.b, 20u)], true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yw)), _wgslsmith_f_op_vec2_f32(arg_1.yz * arg_1.zw))), ~arg_0.x);
    var var_1 = Struct_4(select(vec2<bool>(true, true), !vec2<bool>(select(true, true, false), true), vec2<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)))));
    let var_2 = firstTrailingBit(u_input.b) | ~(u_input.b ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), firstLeadingBit(vec4<u32>(u_input.b, 4294967295u, u_input.b, 15268u))));
    var var_3 = any(!vec2<bool>(var_1.a.x, !all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false))));
    var var_4 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(floor(827f)));
    return vec4<u32>(u_input.b, u_input.b, 5862u, var_2 ^ (_wgslsmith_sub_u32(~0u, ~0u) << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4346u, var_2, 29897u), vec3<u32>(var_2, 46337u, u_input.b)), _wgslsmith_div_u32(4294967295u, 57339u)) % 32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> vec2<u32> {
    global1 = array<vec4<i32>, 20>();
    var var_0 = Struct_4(select(!arg_1.b.a, arg_1.c.yw, select(select(select(vec2<bool>(arg_3, true), vec2<bool>(true, arg_3), arg_1.b.a), vec2<bool>(false, false), arg_1.b.a), arg_1.c.wy, !select(arg_1.c.wx, arg_1.b.a, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(850f - _wgslsmith_f_op_f32(sign(613f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-615f - global0[_wgslsmith_index_u32(0u, 9u)]) - _wgslsmith_f_op_f32(select(2249f, global0[_wgslsmith_index_u32(4294967295u, 9u)], true))), 1201f))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b))))), vec2<u32>(arg_1.a, ~_wgslsmith_mod_u32(26895u, _wgslsmith_add_u32(u_input.b, 30128u))));
    let var_3 = _wgslsmith_add_vec2_u32((_wgslsmith_clamp_vec2_u32(vec2<u32>(34394u, 70956u), _wgslsmith_div_vec2_u32(var_2.b, vec2<u32>(var_2.b.x, 43299u)), abs(vec2<u32>(u_input.b, 1u))) << (~select(vec2<u32>(89143u, u_input.b), vec2<u32>(arg_1.a, 28306u), var_0.a) % vec2<u32>(32u))) ^ vec2<u32>(1u, u_input.b), var_2.b);
    return _wgslsmith_div_vec2_u32(firstLeadingBit(func_2((u_input.c & vec3<i32>(-2147483647i, 13295i, -30532i)) >> (~vec3<u32>(0u, 43877u, var_2.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 858f, var_2.a, 201f), vec4<f32>(1378f, var_1.x, arg_1.b.b, -370f))))).yz), ~var_3);
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_5 {
    var var_0 = func_4(select(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0, 9581i), 29977i ^ arg_0)), min(_wgslsmith_sub_i32(~u_input.c.x, 1i), -(~1i)), true), Struct_3(~abs(~41273u), Struct_2(!(!vec2<bool>(arg_1.a.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2378f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 9u)]))), vec4<bool>(!select(arg_1.a.x, arg_1.a.x, arg_1.a.x), 9504u != firstLeadingBit(u_input.b), true & (global0[_wgslsmith_index_u32(u_input.b, 9u)] < global0[_wgslsmith_index_u32(55180u, 9u)]), false)), !((i32(-1i) * -7485i) == u_input.a), _wgslsmith_clamp_u32(u_input.b, abs(~4294967295u), _wgslsmith_dot_vec4_u32(func_2(u_input.c, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], -1317f, 1199f, global0[_wgslsmith_index_u32(1u, 9u)])), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, 43174u, u_input.b) % vec4<u32>(32u)))) <= 7934u);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f))));
    return Struct_5(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(u_input.b, var_0.x)), 9u)], _wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(46413u, var_0.x), vec2<u32>(31675u, u_input.b))), vec2<u32>(u_input.b, u_input.b >> (46097u % 32u)), ~(vec2<u32>(var_0.x, 4294967295u) & vec2<u32>(14768u, u_input.b))) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0.x, var_0.x, 0u), vec4<u32>(u_input.b, 10610u, var_0.x, 39820u)), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), ~u_input.b));
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    var var_0 = !(!(u_input.b <= ~(~u_input.b)));
    var var_1 = -u_input.c;
    global2 = array<i32, 20>();
    return Struct_3(u_input.b, Struct_2(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)], -295f)))), select(select(vec4<bool>(all(vec3<bool>(true, true, false)), select(false, false, true), 1398f > global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], false), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), all(vec4<bool>(true, false, false, false))), vec4<bool>(true, any(vec2<bool>(true, true)), true, true)), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), false), select(true, select(true, false, false) && (u_input.c.x == global2[_wgslsmith_index_u32(arg_0.b.x, 20u)]), !any(vec3<bool>(false, false, true)))));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(-439f, global0[_wgslsmith_index_u32(0u, 9u)])), -105f);
    let var_1 = -abs(vec2<i32>(_wgslsmith_add_i32(-10230i, _wgslsmith_sub_i32(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 20u)])), reverseBits(global2[_wgslsmith_index_u32(~arg_0.a, 20u)])));
    global4 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1036f, var_0.x) - vec2<f32>(var_0.x, -195f))))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1949f, arg_0.b.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1535u, 9u)], arg_0.b.b)), vec2<bool>(any(arg_0.c), false))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), -770f))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(421f - _wgslsmith_f_op_f32(max(-1205f, -681f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 316f), vec2<f32>(-643f, arg_0.b.b), arg_0.c.x)))))));
    return func_5(Struct_5(_wgslsmith_f_op_f32(-142f * var_2.x), firstTrailingBit(select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(51421u, 4294967295u)), vec2<u32>(1u, 57921u), arg_0.b.a)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 20>();
    var var_0 = select(!func_6(func_5(func_1(global2[_wgslsmith_index_u32(u_input.b, 20u)], Struct_4(vec2<bool>(false, false)))), u_input.c.yx), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), func_5(func_1(u_input.c.x, Struct_4(select(vec2<bool>(false, false), vec2<bool>(true, true), true)))).c);
    global2 = array<i32, 20>();
    var var_1 = ~_wgslsmith_mult_vec3_u32(select(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 1u, 67151u), var_0.ywx), firstTrailingBit(vec3<u32>(0u, u_input.b, 39371u))), vec3<u32>(5918u, ~u_input.b, ~16387u), func_6(Struct_3(u_input.b, Struct_2(var_0.wx, 373f), vec4<bool>(false, false, var_0.x, var_0.x)), u_input.c.yy).x), func_2(vec3<i32>(global2[_wgslsmith_index_u32(~u_input.b, 20u)], abs(1i), ~u_input.c.x), vec4<f32>(307f, global0[_wgslsmith_index_u32(func_2(vec3<i32>(global2[_wgslsmith_index_u32(2177u, 20u)], u_input.a, u_input.a), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(7685u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)], -259f)).x, 9u)], global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 9u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 9u)] * 233f))).yxy);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], 247f, 789f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(var_1.x, 9u)]) - vec3<f32>(288f, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(var_1.x, 9u)]))))))), 0i & _wgslsmith_sub_i32(-global2[_wgslsmith_index_u32(41366u & var_1.x, 20u)], _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_1.x ^ var_1.x, 20u)], u_input.a)), select(func_6(func_5(func_1(u_input.a, Struct_4(var_0.xz))), u_input.c.xy), func_6(func_5(func_1(-1670i, Struct_4(var_0.yx))), select(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 20u)], u_input.a), vec2<i32>(-2147483647i, u_input.c.x), var_0.zw) >> (var_1.zy % vec2<u32>(32u))), all(!(!var_0.zyz))), global0[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 9u)], var_1.x | ~min(reverseBits(32466u), abs(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_2.e << (_wgslsmith_div_u32(var_2.e, 1u) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_2.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 9u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 9u)] + var_2.d))), _wgslsmith_f_op_f32(-var_2.a.x), any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(895f + -957f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_2.e, 9u)], global0[_wgslsmith_index_u32(17790u, 9u)], true))) - _wgslsmith_f_op_f32(-437f * 1074f)), 1357f));
}

