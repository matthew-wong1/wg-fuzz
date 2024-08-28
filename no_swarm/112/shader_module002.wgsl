struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: array<f32, 19> = array<f32, 19>(308f, 1181f, 796f, 109f, -1587f, 353f, -2604f, 742f, -939f, -408f, 231f, 473f, 1077f, 349f, 1186f, -1547f, 260f, -1960f, -1125f);

var<private> global2: array<bool, 12> = array<bool, 12>(true, true, true, true, false, false, true, false, false, true, false, true);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(global3.b.x, 12u)];
    var var_1 = global3.b.zz;
    global1 = array<f32, 19>();
    global0 = array<vec4<i32>, 32>();
    var var_2 = Struct_1(firstTrailingBit(~arg_0.yyy), firstLeadingBit(~vec3<u32>(8272u, var_1.x, global3.b.x) << (global3.b % vec3<u32>(32u))), ~5571i);
    return (u_input.e << (0u % 32u)) << (29336u % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> bool {
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(21751u, 19u)], _wgslsmith_f_op_f32(sign(-1000f))));
    let var_2 = 1437f;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1417f, global1[_wgslsmith_index_u32(max(var_0.b.x, 25127u), 19u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(548f * global1[_wgslsmith_index_u32(1u, 19u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(32036u, 19u)]))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(378f + global1[_wgslsmith_index_u32(arg_2.d.b.b.x, 19u)]), -1250f, _wgslsmith_f_op_f32(462f + var_2), var_2) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, global1[_wgslsmith_index_u32(0u, 19u)], 1502f, var_2) * vec4<f32>(519f, global1[_wgslsmith_index_u32(arg_2.d.b.b.x, 19u)], 2245f, -275f)))))));
    let var_4 = Struct_4(~(~(~(~vec4<u32>(61713u, 36881u, var_0.b.x, 70239u)))), Struct_3(arg_0.a.x, vec4<bool>(select(!arg_0.a.x, true, false), func_3(vec4<i32>(u_input.a, -1i, 22872i, 1i)) <= 1u, select(global2[_wgslsmith_index_u32(global3.b.x, 12u)], arg_1, arg_1) & false, arg_2.d.a.x), Struct_1(-(~vec3<i32>(-1i, arg_0.b.a.x, u_input.a)), vec3<u32>(3941u, arg_2.d.b.b.x, _wgslsmith_div_u32(56684u, 12311u)), 0i), arg_0));
    return all(vec4<bool>(global2[_wgslsmith_index_u32(arg_2.d.b.b.x, 12u)], false, global2[_wgslsmith_index_u32(~41999u, 12u)], true));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!(!vec3<bool>(func_2(Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(global3.b.x, 12u)], global2[_wgslsmith_index_u32(global3.b.x, 12u)], global2[_wgslsmith_index_u32(869u, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)]), Struct_1(vec3<i32>(global3.a.x, -1i, u_input.a), vec3<u32>(4294967295u, 1u, 0u), 2391i)), true, Struct_3(true, vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(0u, 12u)]), Struct_1(vec3<i32>(-1004i, global3.a.x, -2147483647i), global3.b, u_input.a), Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(17748u, 12u)], false, global2[_wgslsmith_index_u32(3357u, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)]), Struct_1(vec3<i32>(u_input.a, global3.a.x, u_input.d.x), global3.b, global3.c)))), !global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global3.b.x & u_input.e, 12u)])), select(!(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(global3.b.x, 12u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)]), false)), vec3<bool>(true, true, true), all(select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 12u)], true, global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(global3.b.x, 12u)]), !vec4<bool>(global2[_wgslsmith_index_u32(global3.b.x, 12u)], false, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global3.b.x, 12u)]), false))), vec3<bool>(1i > -(global3.a.x ^ u_input.b), true, select(all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 12u)], false, false, true)), global2[_wgslsmith_index_u32(42390u, 12u)], !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, global3.b.x), 12u)])));
    let var_1 = u_input.d;
    var var_2 = ~global3.b.x;
    let var_3 = Struct_3(global2[_wgslsmith_index_u32(2185u, 12u)], vec4<bool>(!((var_0.x || true) && (u_input.a != -2147483647i)), true, 1165f != _wgslsmith_f_op_f32(-613f * _wgslsmith_f_op_f32(sign(-1587f))), var_0.x), Struct_1(vec3<i32>(-1i) * -min(vec3<i32>(u_input.b, 2147483647i, -9390i), var_1), (global3.b & vec3<u32>(global3.b.x, 0u, 1u)) | vec3<u32>(min(global3.b.x, 53093u), ~10251u, global3.b.x), -reverseBits(u_input.b)), Struct_2(vec4<bool>(all(select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), global2[_wgslsmith_index_u32(global3.b.x, 12u)])), (global1[_wgslsmith_index_u32(u_input.e, 19u)] != global1[_wgslsmith_index_u32(0u, 19u)]) != var_0.x, true, false), Struct_1(_wgslsmith_add_vec3_i32(~vec3<i32>(var_1.x, var_1.x, 1i), -vec3<i32>(global3.a.x, global3.c, 1i)), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.b.x, u_input.e, 102046u), _wgslsmith_sub_vec3_u32(vec3<u32>(51438u, global3.b.x, 4294967295u), vec3<u32>(u_input.c, u_input.e, 0u))), -1i)));
    let var_4 = global1[_wgslsmith_index_u32(u_input.e | ~u_input.c, 19u)];
    return Struct_1(abs(vec3<i32>(global3.a.x, var_1.x, 0i)) ^ abs(vec3<i32>(_wgslsmith_div_i32(-19679i, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-27085i, u_input.b, 2147483647i, global3.a.x), global0[_wgslsmith_index_u32(2750u, 32u)]), max(-1i, 36679i))), ~_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(var_3.c.b, var_3.c.b), ~global3.b | var_3.d.b.b), global3.a.x);
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = !select(arg_0.a.yyz, select(!arg_0.a.xxx, select(!vec3<bool>(global2[_wgslsmith_index_u32(99987u, 12u)], false, true), select(arg_0.a.xxz, vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.a.xzz), select(arg_0.a.yxx, vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.b.x, 19u)]) + -1173f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global3.b.x, 19u)])))));
    let var_1 = Struct_3(select(arg_0.b.a.x > (global3.a.x << (arg_0.b.b.x % 32u)), any(arg_0.a), arg_0.a.x) && global2[_wgslsmith_index_u32(50543u, 12u)], arg_0.a, func_1(), arg_0);
    let var_2 = Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(24653u, 4294967295u, global3.b.x), vec3<u32>(3968u, arg_0.b.b.x, global3.b.x)), 44208u, 31672u) << ((abs(vec4<u32>(27767u, 0u, global3.b.x, global3.b.x)) >> (firstTrailingBit(vec4<u32>(54110u, 4294967295u, global3.b.x, var_1.c.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec4<u32>(54794u, _wgslsmith_mod_u32(4294967295u, u_input.c), func_1().b.x, ~u_input.e)), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(84234u, 1u, 30653u, 0u)), ~vec4<u32>(arg_0.b.b.x, u_input.c, 89550u, 0u))), Struct_3(all(select(arg_0.a.xy, var_0.zz, vec2<bool>(true, true))), vec4<bool>(false, !any(arg_0.a), true, !all(var_1.b)), func_1(), Struct_2(!select(var_1.b, var_1.d.a, arg_0.a), Struct_1(-vec3<i32>(global3.c, arg_0.b.c, arg_0.b.a.x), ~vec3<u32>(u_input.e, global3.b.x, var_1.d.b.b.x), 1i))));
    global1 = array<f32, 19>();
    var var_3 = var_1;
    return Struct_4(vec4<u32>(var_3.c.b.x, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4145u, 1333u, 60933u, 48987u), vec4<u32>(1u, 81923u, var_1.d.b.b.x, 58062u)), u_input.c, 14144u), func_3(_wgslsmith_sub_vec4_i32(reverseBits(global0[_wgslsmith_index_u32(var_1.c.b.x, 32u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 23642i, u_input.d.x, 1i), global0[_wgslsmith_index_u32(6578u, 32u)]))), 4294967295u), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 12>();
    let var_0 = func_4(Struct_2(vec4<bool>(true, true, true, true), func_1()));
    global2 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(0u, 32u)], 36856i);
}

