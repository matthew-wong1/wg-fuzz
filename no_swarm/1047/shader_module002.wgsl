struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(1i, Struct_1(1462f, 5913u)), Struct_2(0i, Struct_1(-147f, 50837u)), Struct_2(-38716i, Struct_1(838f, 2328u)), Struct_2(-28431i, Struct_1(-209f, 69134u)), Struct_2(2147483647i, Struct_1(881f, 35690u)), Struct_2(61074i, Struct_1(-1246f, 4294967295u)), Struct_2(i32(-2147483648), Struct_1(-491f, 0u)), Struct_2(-1i, Struct_1(-1000f, 22249u)), Struct_2(19213i, Struct_1(316f, 1282u)), Struct_2(57091i, Struct_1(2166f, 0u)), Struct_2(18843i, Struct_1(1821f, 0u)), Struct_2(2147483647i, Struct_1(1689f, 92762u)), Struct_2(15872i, Struct_1(121f, 4294967295u)), Struct_2(-32923i, Struct_1(664f, 18624u)), Struct_2(2147483647i, Struct_1(159f, 0u)), Struct_2(-1i, Struct_1(-869f, 4294967295u)), Struct_2(2147483647i, Struct_1(771f, 0u)), Struct_2(0i, Struct_1(202f, 21441u)), Struct_2(-38102i, Struct_1(-731f, 0u)), Struct_2(0i, Struct_1(1650f, 0u)), Struct_2(-26687i, Struct_1(-407f, 1u)), Struct_2(-21598i, Struct_1(637f, 8045u)), Struct_2(-1i, Struct_1(-746f, 125816u)), Struct_2(1i, Struct_1(535f, 28685u)), Struct_2(32123i, Struct_1(-1042f, 42671u)), Struct_2(0i, Struct_1(966f, 1u)), Struct_2(-1i, Struct_1(220f, 0u)), Struct_2(i32(-2147483648), Struct_1(972f, 41101u)), Struct_2(22347i, Struct_1(-680f, 0u)), Struct_2(0i, Struct_1(-1253f, 17680u)), Struct_2(i32(-2147483648), Struct_1(1366f, 64332u)));

var<private> global2: bool;

var<private> global3: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1062f, -598f, 117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)))), 7050i);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + 574f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -817f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-369f))), arg_0.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), !(abs(arg_2.x) != arg_2.x))), 1u);
    var var_3 = _wgslsmith_div_vec4_f32(arg_0, vec4<f32>(122f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -260f))))), -1206f));
    var_1 = var_2.a;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-arg_0)), var_0.a);
}

fn func_2() -> Struct_3 {
    var var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_1 = abs(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, -2147483647i, ~2147483647i, 32789i), -vec4<i32>(-28634i, -32725i, -2147483647i, 2147483647i)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-2656f, -661f, 1317f, 220f), vec4<f32>(-774f, 489f, -211f, 1121f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-167f, -1000f, -1442f, -1000f), Struct_1(863f, global0[_wgslsmith_index_u32(28883u, 5u)]), vec4<i32>(-2147483647i, 5554i, -26619i, var_1.x)))))))), countOneBits(2147483647i));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> vec2<bool> {
    global2 = true;
    global2 = arg_0;
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a + arg_1.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(-1285f, arg_2.a, -488f, arg_1.a.x)))), arg_1.b);
    let var_1 = arg_2;
    var var_2 = vec2<bool>(!all(vec2<bool>(arg_0, true)), true);
    return vec2<bool>(true, false & (arg_0 && arg_0));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = all(vec2<bool>(all(func_4(true, func_2(), Struct_1(arg_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9198u, 5u)], 5u)]))), select(!select(false, false, true), true, true)));
    var var_1 = arg_1;
    let var_2 = max(vec4<i32>(0i, -24757i, 1i & arg_0, _wgslsmith_div_i32(arg_2.b, -12441i)), max(vec4<i32>(-2147483647i, ~arg_2.b << (_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 4294967295u, 0u) % 32u), ~arg_2.b, 1i), firstTrailingBit(vec4<i32>(func_2().b, -2147483647i, -2147483647i, -35975i))));
    global2 = arg_0 <= _wgslsmith_mult_i32(-1i, i32(-1i) * -var_2.x);
    var var_3 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 31u)];
    return !select(vec3<bool>((var_0 && false) || true, true, true), vec3<bool>(max(4294967295u, u_input.a) < (u_input.a ^ 34564u), var_0, all(vec3<bool>(var_0, var_0, var_0))), select(select(!vec3<bool>(var_0, var_0, false), select(vec3<bool>(true, true, false), vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, var_0)), select(vec3<bool>(var_0, false, true), vec3<bool>(true, var_0, var_0), vec3<bool>(false, false, var_0))), vec3<bool>(true, true, func_4(false, arg_2, Struct_1(757f, 17369u)).x), any(vec3<bool>(false, var_0, true))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = arg_3;
    let var_1 = select(select(select(select(!vec4<bool>(true, arg_0.x, false, true), vec4<bool>(false, arg_0.x, false, true), any(vec4<bool>(true, arg_0.x, arg_0.x, true))), vec4<bool>(false, true, true, select(arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(true, arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true)), vec4<bool>(var_0.a.x < _wgslsmith_f_op_f32(-1943f * -1688f), true, !all(vec4<bool>(false, false, arg_0.x, false)), true), !(arg_3.a.x <= arg_3.a.x) & (arg_0.x & all(vec3<bool>(arg_0.x, arg_0.x, false)))), !select(!(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), select(!vec4<bool>(false, false, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(false, false, arg_0.x, true), true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), false), !(!vec4<bool>(true, 34724u != arg_1.b, true, !arg_0.x)));
    global2 = select(true, func_1(30839i, _wgslsmith_f_op_f32(f32(-1f) * -1174f), Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1429f, arg_1.a, -1193f, 1247f), _wgslsmith_f_op_vec4_f32(arg_3.a - arg_3.a))), func_2().b | var_0.b)).x, false);
    let var_2 = vec4<bool>(!((var_1.x || arg_0.x) | false), global0[_wgslsmith_index_u32(u_input.a ^ 18055u, 5u)] != max(min(1u, ~79419u), global0[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_sub_i32(_wgslsmith_mod_i32(countOneBits(arg_3.b), abs(arg_3.b)), -759i) <= (max(~var_0.b, -arg_3.b) | 2147483647i), false);
    var var_3 = _wgslsmith_mod_vec2_i32(select(abs(firstLeadingBit(vec2<i32>(arg_3.b, var_0.b))), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, arg_3.b), -vec2<i32>(-1i, var_0.b)), true) >> ((min(u_input.b.wz, ~u_input.b.xz) | u_input.b.zy) % vec2<u32>(32u)), vec2<i32>(38677i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.b, -2147483647i), countOneBits(vec2<i32>(14329i, 11730i))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, -12479i), vec3<i32>(arg_3.b, -3039i, 598i)), -51474i))));
    return vec3<i32>(var_0.b, 17994i, arg_3.b) & abs(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 0i, 41018i)), vec3<i32>(1i, var_3.x, ~var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(!select(vec3<bool>(true, true, true), func_1(-1i, -934f, Struct_3(vec4<f32>(1325f, -1219f, 827f, 2365f), 16379i)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), Struct_1(_wgslsmith_f_op_f32(-1f), select(u_input.b.x & 4294967295u, ~12563u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)] <= 1u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1702f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2784f, -265f)))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1520f, _wgslsmith_f_op_f32(f32(-1f) * -1146f), _wgslsmith_f_op_f32(f32(-1f) * -1073f)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(-1i, -11246i)))));
    global0 = array<u32, 5>();
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, max(global0[_wgslsmith_index_u32(32831u, 5u)], 4294967295u)), ~(~u_input.b.zw)), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)])) ^ countOneBits(_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b.zy, vec2<u32>(43311u, global0[_wgslsmith_index_u32(1u, 5u)])), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]) | u_input.b.xw));
    let var_2 = func_2();
    global2 = all(vec4<bool>(func_1(func_5(vec3<bool>(true, false, false), Struct_1(var_2.a.x, 1u), vec2<f32>(var_2.a.x, -1464f), var_2).x | 1i, var_2.a.x, func_2()).x, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false, any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))));
    let var_3 = vec4<u32>(14938u, firstLeadingBit(_wgslsmith_mult_u32(8979u, abs(66021u))), firstTrailingBit(~0u), min(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(abs(var_1.x), 5u)], var_1.x), select(~(~var_1.x), abs(select(u_input.b.x, 6242u, false)), func_1(min(28675i, -2147483647i), 1f, var_2).x)));
    let var_4 = vec3<bool>(true, true == func_1(countOneBits(-var_2.b), var_2.a.x, func_2()).x, false);
    let var_5 = func_1(_wgslsmith_add_i32(reverseBits(max(var_2.b, _wgslsmith_dot_vec3_i32(var_0, var_0))), -var_2.b), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(var_2.a.x * -1342f)), var_2).x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, firstTrailingBit(vec3<u32>(var_3.x | ~global0[_wgslsmith_index_u32(35876u, 5u)], 4294967295u >> (1u % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(var_1.x, 5u)], 99972u), 4294967295u))));
}

