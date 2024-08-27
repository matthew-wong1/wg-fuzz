struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<u32, 21> = array<u32, 21>(40812u, 50037u, 1u, 0u, 4294967295u, 785u, 0u, 18295u, 1u, 4294967295u, 0u, 26889u, 57057u, 28446u, 27015u, 1u, 4294967295u, 43061u, 9505u, 38011u, 5337u);

var<private> global2: array<bool, 15> = array<bool, 15>(true, true, false, false, false, false, true, false, true, false, false, true, false, true, false);

var<private> global3: array<f32, 22> = array<f32, 22>(-319f, -461f, 1439f, -1714f, 463f, 1462f, 1882f, 1327f, 1405f, 1000f, -1073f, 418f, -456f, 1045f, 901f, 2838f, 1288f, 1000f, 556f, -998f, -1216f, 2392f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = -(~u_input.b);
    let var_1 = select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4549u, 29u)], 21u)], 29u)], 15u)], global2[_wgslsmith_index_u32(10771u, 15u)], false))), !global2[_wgslsmith_index_u32(4294967295u, 15u)], !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 15u)]), select(select(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], true, global2[_wgslsmith_index_u32(10625u, 15u)], global2[_wgslsmith_index_u32(35081u, 15u)])), select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(90060u, 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90408u, 29u)], 15u)], true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 15u)], true), !vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1996u, 21u)], 15u)], global2[_wgslsmith_index_u32(65170u, 15u)])), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43421u, 21u)], 21u)], 21u)], 29u)], 15u)], true, true), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 15u)], false, global2[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55507u, 21u)], 29u)], 15u)], true))), vec4<bool>(all(vec2<bool>(true, true)), (global2[_wgslsmith_index_u32(69269u, 15u)] | global2[_wgslsmith_index_u32(34908u, 15u)]) | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11620u, 21u)], 21u)]), u_input.a.xz), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.d, 29u)], 31047u & u_input.d), 15u)], any(vec4<bool>(false, global2[_wgslsmith_index_u32(35192u, 15u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50920u, 21u)], 21u)], 15u)], global2[_wgslsmith_index_u32(119347u, 15u)]))), !select(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47850u, 21u)], 29u)], 29u)], 29u)], 21u)], 29u)], 15u)], global2[_wgslsmith_index_u32(0u, 15u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]), false)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.c, u_input.a.x), ~0u, global1[_wgslsmith_index_u32(1u, 21u)]), vec3<u32>(global0[_wgslsmith_index_u32(55651u >> (global0[_wgslsmith_index_u32(4294967295u, 29u)] % 32u), 29u)], ~u_input.d, ~global0[_wgslsmith_index_u32(10515u, 29u)])) != min(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(select(u_input.d, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22736u, 29u)], 29u)], 21u)], 29u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), 29u)], 13825u, ~76340u), 29u)], 0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4851u, 28749u), u_input.a.yx) % 32u)));
    var_0 = -2147483647i;
    global3 = array<f32, 22>();
    var var_2 = -(~reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(9409i, 72213i, 2147483647i)), u_input.b, _wgslsmith_add_i32(u_input.b, 2147483647i))));
    return max(12617i, -2147483647i);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(!(!vec3<bool>(true == global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5632u, 21u)], 15u)], !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90495u, 29u)], 15u)], !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 21u)], 15u)])), _wgslsmith_mult_i32(max(1i & func_3(492f), ~50833i), -(~2759i)), Struct_1(all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 15u)], true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(890f, 210f) + vec2<f32>(-1000f, -495f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(88326u, 22u)], 2117f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1037f, global3[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<f32>(913f, global3[_wgslsmith_index_u32(16681u, 22u)]), global2[_wgslsmith_index_u32(1u, 15u)])))), !(u_input.b == -2147483647i)))), firstLeadingBit(u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(806f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(25801u, 22u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-654f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.a.xx), 29u)], 22u)]))));
    let var_1 = Struct_3(vec3<bool>(!(!(global2[_wgslsmith_index_u32(25076u, 15u)] && global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 21u)], 15u)])), !any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 15u)], false), var_0.a, var_0.c.a)), select(_wgslsmith_f_op_f32(-var_0.e.x) > 1f, true, !global2[_wgslsmith_index_u32(select(76720u, u_input.d, false), 15u)])), firstTrailingBit(firstLeadingBit(u_input.b) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(8906u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 43740u), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(105856u, 29u)], 27012u, global1[_wgslsmith_index_u32(1u, 21u)]))) % 32u)), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 15u)], var_0.e), min(var_0.d, ~(-2774i)), vec2<f32>(-1555f, 1000f));
    global0 = array<u32, 29>();
    var var_2 = global2[_wgslsmith_index_u32(40818u, 15u)];
    var_2 = !global2[_wgslsmith_index_u32(85943u, 15u)] & any(select(var_1.a.zy, !select(vec2<bool>(false, false), var_0.a.zz, false), any(!vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23285u, 29u)], 29u)], 15u)], true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70534u, 29u)], 21u)], 15u)]))));
    return Struct_2(Struct_1(true, var_1.e), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) - global3[_wgslsmith_index_u32(41380u << (global1[_wgslsmith_index_u32(u_input.c, 21u)] % 32u), 22u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-331f)))), vec3<i32>(_wgslsmith_div_i32(var_0.b, ~var_0.d) | var_0.d, func_3(_wgslsmith_f_op_f32(sign(-310f))), -31148i));
}

fn func_1() -> Struct_3 {
    global0 = array<u32, 29>();
    var var_0 = func_2();
    var var_1 = Struct_2(Struct_1((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_0.e.x), var_0.e.xy) ^ var_0.e.x) == 0i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.b, vec2<f32>(207f, global3[_wgslsmith_index_u32(0u, 22u)]), !vec2<bool>(var_0.b.a, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(850f, -1824f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-367f, -484f))))), func_2().b, _wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(ceil(116f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(reverseBits(4294967295u), 22u)]), var_0.e);
    var var_2 = Struct_3(select(!(!(!vec3<bool>(var_1.b.a, var_0.b.a, false))), vec3<bool>(select(var_0.a.a, true, any(vec3<bool>(false, global2[_wgslsmith_index_u32(33985u, 15u)], global2[_wgslsmith_index_u32(54873u, 15u)]))), all(select(vec2<bool>(var_1.a.a, var_0.a.a), vec2<bool>(var_1.b.a, false), var_0.b.a)), var_1.a.a), var_0.b.a), var_1.e.x, Struct_1(!(global1[_wgslsmith_index_u32(86073u, 21u)] < select(u_input.d, u_input.c, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 15u)])), vec2<f32>(-1147f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(step(var_1.b.b.x, 1125f)))))), min(-44170i, var_0.e.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.c)), _wgslsmith_f_op_f32(round(-454f))) + func_2().a.b), var_0.a.b)));
    var var_3 = !select(vec4<bool>(abs(var_1.e.x) >= var_0.e.x, true, true, global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(32674u, 29u)] << (4294967295u % 32u), 15u)]), vec4<bool>(var_1.b.a, true, false, !var_2.c.a), any(select(vec3<bool>(var_2.c.a, var_1.b.a, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14678u, 29u)], 15u)]), !var_2.a, select(vec3<bool>(var_2.c.a, var_2.c.a, var_1.a.a), vec3<bool>(global2[_wgslsmith_index_u32(48432u, 15u)], var_1.b.a, false), true))));
    return Struct_3(var_2.a, _wgslsmith_dot_vec4_i32(~min(vec4<i32>(var_0.e.x, var_2.b, var_1.e.x, 2147483647i) | vec4<i32>(var_0.e.x, 2147483647i, -4742i, -33977i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_1.e.x, u_input.b, var_2.b), vec4<i32>(-2147483647i, var_1.e.x, var_0.e.x, var_2.d))), -(~vec4<i32>(var_1.e.x, u_input.b, 21051i, u_input.b))), Struct_1(true, var_1.b.b), min(u_input.b, -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.b + var_1.b.b) * _wgslsmith_f_op_vec2_f32(-var_2.c.b)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global2 = array<bool, 15>();
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(396f, _wgslsmith_f_op_f32(f32(-1f) * -1257f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-187f + global3[_wgslsmith_index_u32(73231u, 22u)]))), 622f), _wgslsmith_f_op_f32(-arg_0.e.x))));
    global2 = array<bool, 15>();
    let var_1 = _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, firstLeadingBit(firstTrailingBit(4294967295u))), 29u)], firstTrailingBit(firstTrailingBit(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(22702u, 21u)])))) ^ global0[_wgslsmith_index_u32(~reverseBits(~0u >> ((global1[_wgslsmith_index_u32(129873u, 21u)] >> (0u % 32u)) % 32u)), 29u)];
    var var_2 = ~28852u;
    return Struct_1(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 29u)], 15u)], arg_0.c.b);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(true, arg_1.b), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1468f))), arg_2.b.x, vec3<i32>(_wgslsmith_mod_i32(~2147483647i, (-2147483647i ^ u_input.b) >> (global0[_wgslsmith_index_u32(firstLeadingBit(37413u), 29u)] % 32u)), -2147483647i, _wgslsmith_add_i32(~arg_0 | (i32(-1i) * -1i), min(2147483647i, ~1i))));
    global1 = array<u32, 21>();
    var var_1 = abs(firstTrailingBit(u_input.c));
    global3 = array<f32, 22>();
    let var_2 = _wgslsmith_f_op_f32(arg_1.b.x * global3[_wgslsmith_index_u32(0u, 22u)]);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.b, func_4(func_1()), func_4(func_1()));
    global2 = array<bool, 15>();
    global0 = array<u32, 29>();
    var var_1 = ~(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~982u, 29815u), 29u)]);
    var var_2 = Struct_2(var_0.c, var_0.c, -130f, 621f, select(reverseBits(-func_2().e), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b, var_0.d, 0i), vec3<i32>(-52378i, u_input.b, var_0.d)) | countOneBits(vec3<i32>(0i, -2147483647i, u_input.b)), vec3<i32>(var_0.b, -34101i, u_input.b) >> (~vec3<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 29u)]) % vec3<u32>(32u))), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(19812u, 29u)], 1u), max(vec2<u32>(11525u, 4294967295u), u_input.a.yx)), 29u)], 22u)] < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1153f)) - _wgslsmith_f_op_f32(floor(1286f)))));
    var var_3 = Struct_2(Struct_1(var_0.a.x, _wgslsmith_f_op_vec2_f32(var_0.c.b - _wgslsmith_f_op_vec2_f32(-func_5(-1i, var_2.b, var_0.c).c.b))), Struct_1(true, func_2().b.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(216f, 404f, false)) - _wgslsmith_f_op_f32(sign(var_0.e.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2939f + global3[_wgslsmith_index_u32(4294967295u, 22u)]), var_2.b.b.x))))), _wgslsmith_f_op_f32(-var_2.c), vec3<i32>(var_2.e.x, _wgslsmith_mod_i32(~u_input.b, -var_0.d), _wgslsmith_div_i32(-2147483647i, var_2.e.x) ^ u_input.b) >> (_wgslsmith_mult_vec3_u32(~(vec3<u32>(570u, 148076u, 0u) >> (u_input.a % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42258u, 21u)], 21u)], 4294967295u), vec3<u32>(59961u, 0u, global0[_wgslsmith_index_u32(1u, 29u)])))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(func_5(~firstLeadingBit(var_0.d), Struct_1(select(true, var_3.b.a, false), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1748f, var_2.a.b.x), vec2<f32>(830f, var_2.a.b.x), var_0.a.x))), func_2().b).c.b.x)), vec2<i32>(firstLeadingBit(15884i), (-2147483647i | (u_input.b >> (u_input.c % 32u))) & 36570i), vec3<i32>(var_0.b | _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, var_0.b), 21511i >> (global1[_wgslsmith_index_u32(33127u, 21u)] % 32u)), 2147483647i, 29846i), _wgslsmith_f_op_f32(-var_3.d), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(var_3.e.x), var_0.d, 1i), vec3<i32>(_wgslsmith_add_i32(-2147483647i, u_input.b), _wgslsmith_add_i32(var_3.e.x, var_0.b), _wgslsmith_sub_i32(u_input.b, -3789i))), func_2().e));
}

