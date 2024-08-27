struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(vec4<i32>(2147483647i, -9370i, 2147483647i, 0i), vec3<i32>(1i, -1i, 30024i)), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), -28237i, -31053i), vec3<i32>(i32(-2147483648), -45642i, -11794i)), Struct_3(vec4<i32>(-30543i, 1i, -42442i, 6427i), vec3<i32>(2147483647i, 2147483647i, -9121i)), Struct_3(vec4<i32>(-1i, 0i, 48135i, -1i), vec3<i32>(-3362i, 1i, -28034i)), Struct_3(vec4<i32>(5328i, 26847i, 51628i, 1i), vec3<i32>(-26966i, 2147483647i, 2147483647i)), Struct_3(vec4<i32>(0i, 1i, -1i, -1i), vec3<i32>(-34174i, -63777i, 0i)), Struct_3(vec4<i32>(8475i, 2147483647i, -1187i, 0i), vec3<i32>(-30154i, 0i, -1i)), Struct_3(vec4<i32>(-47206i, i32(-2147483648), 20532i, 2147483647i), vec3<i32>(-39921i, 21887i, -1i)), Struct_3(vec4<i32>(0i, i32(-2147483648), 24922i, 1i), vec3<i32>(2147483647i, -41546i, 1i)));

var<private> global3: array<bool, 25>;

var<private> global4: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec4<bool>(true, false, false, true), vec2<i32>(2147483647i, i32(-2147483648)), 24877u, 1i), Struct_2(vec4<bool>(true, false, true, true), vec2<i32>(-1i, 19093i), 43441u, -39040i), Struct_2(vec4<bool>(true, true, false, true), vec2<i32>(-31339i, -21342i), 87545u, 1679i), Struct_2(vec4<bool>(false, true, true, true), vec2<i32>(2147483647i, 2147483647i), 59326u, 1i), Struct_2(vec4<bool>(true, false, false, false), vec2<i32>(-35523i, 22955i), 4294967295u, i32(-2147483648)), Struct_2(vec4<bool>(false, false, false, true), vec2<i32>(-29491i, -35375i), 4294967295u, 11467i), Struct_2(vec4<bool>(false, true, false, false), vec2<i32>(0i, 24631i), 26855u, 37761i), Struct_2(vec4<bool>(false, false, true, false), vec2<i32>(-1i, 1i), 28400u, -1i), Struct_2(vec4<bool>(false, false, false, false), vec2<i32>(-4997i, 0i), 4294967295u, 2147483647i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = reverseBits(4294967295u);
    var var_1 = ~(~(-(abs(vec4<i32>(arg_0.b.x, arg_0.b.x, 1i, 1i)) >> (vec4<u32>(6996u, arg_0.c, 76035u, 8596u) % vec4<u32>(32u)))));
    let var_2 = Struct_1(vec3<bool>(false && global3[_wgslsmith_index_u32(u_input.e, 25u)], global3[_wgslsmith_index_u32(countOneBits(u_input.e), 25u)], false), _wgslsmith_f_op_f32(-231f - _wgslsmith_f_op_f32(-1f)));
    var var_3 = !(!(!select(arg_0.a, select(vec4<bool>(arg_0.a.x, false, true, global3[_wgslsmith_index_u32(u_input.e, 25u)]), vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(global0.x, 25u)]), true), all(vec4<bool>(true, true, var_2.a.x, true)))));
    global1 = !select(select(!vec3<bool>(global3[_wgslsmith_index_u32(arg_0.c, 25u)], false, false), var_2.a, all(!vec3<bool>(true, true, global1.x))), select(arg_0.a.wzw, !(!vec3<bool>(var_3.x, true, false)), false), true);
    return firstTrailingBit(u_input.d & abs(u_input.d)) << (reverseBits(abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(44580u, 1u), vec2<u32>(arg_0.c, 44011u)), ~arg_0.c, arg_0.c | u_input.e, _wgslsmith_sub_u32(global0.x, 4294967295u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_4 {
    let var_0 = Struct_3(max(func_3(Struct_2(!vec4<bool>(arg_0.x, false, false, arg_0.x), ~vec2<i32>(u_input.d.x, -18805i), min(0u, global0.x), reverseBits(-53173i))), u_input.d), ~min(~u_input.b | func_3(Struct_2(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), u_input.b.yy, 1u, u_input.c)).zyz, u_input.d.yzx));
    var var_1 = Struct_3(-func_3(Struct_2(vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 25u)], true, false, arg_0.x), vec2<i32>(0i, u_input.c), u_input.e, var_0.a.x)) ^ vec4<i32>(1i, ~u_input.d.x, var_0.b.x, -u_input.a), max(vec3<i32>(_wgslsmith_dot_vec4_i32(var_0.a, var_0.a) | _wgslsmith_mult_i32(2147483647i, var_0.a.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -1i)), vec2<i32>(var_0.b.x, -1i)), 0i), func_3(global4[_wgslsmith_index_u32(56787u, 9u)]).yzz));
    let var_2 = ~(~firstTrailingBit(vec3<u32>(countOneBits(u_input.e), ~global0.x, ~u_input.e)));
    var var_3 = Struct_4(global3[_wgslsmith_index_u32(u_input.e, 25u)], select(select(vec4<bool>(any(vec3<bool>(false, global3[_wgslsmith_index_u32(48329u, 25u)], true)), true, false | global1.x, !global1.x), !vec4<bool>(global3[_wgslsmith_index_u32(27381u, 25u)], arg_0.x, arg_0.x, false), true), vec4<bool>(all(vec3<bool>(true, arg_0.x, false)), true, !global1.x, global3[_wgslsmith_index_u32(~61693u, 25u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 31175u, 4294967295u, var_2.x), ~vec4<u32>(var_2.x, var_2.x, var_2.x, global0.x)), 25u)], !(global0.x >= 1u))), vec4<i32>(max(var_0.a.x, abs(-u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), _wgslsmith_mod_vec2_i32(func_3(global4[_wgslsmith_index_u32(7977u, 9u)]).xw, -u_input.d.xx)), var_1.b.x, max(1i, min(1i, 2147483647i))), !any(select(select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(66059u, 25u)], global1.x), vec4<bool>(global3[_wgslsmith_index_u32(1u, 25u)], false, global1.x, true), vec4<bool>(global1.x, false, global3[_wgslsmith_index_u32(0u, 25u)], false)), select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(global0.x, 25u)], false), arg_0.x), !vec4<bool>(global1.x, false, true, arg_0.x))), var_0);
    let var_4 = Struct_2(var_3.b, min(~select(vec2<i32>(-22220i, u_input.b.x), vec2<i32>(var_0.a.x, u_input.c), vec2<bool>(arg_0.x, var_3.d)), u_input.b.zy) >> (var_2.zy % vec2<u32>(32u)), 10719u, (_wgslsmith_sub_i32(min(var_0.b.x, 1i), -1i) | -(~(-2147483647i))) << (1u % 32u));
    return Struct_4(true, vec4<bool>(!any(select(var_4.a, vec4<bool>(var_4.a.x, true, arg_0.x, global3[_wgslsmith_index_u32(global0.x, 25u)]), true)), !global1.x, true, true), countOneBits(func_3(Struct_2(select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 25u)], true, global3[_wgslsmith_index_u32(4294967295u, 25u)]), var_3.b, true), select(var_4.b, var_0.a.yw, global1.x), 41177u, ~var_1.a.x))), true | select(var_4.a.x, arg_0.x == global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_4.c, 1u), 25u)], !any(vec2<bool>(false, var_4.a.x))), Struct_3(select(-vec4<i32>(var_4.b.x, 1i, -13705i, 1i), var_1.a, !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], true, false, true)), -vec3<i32>(1960i, _wgslsmith_div_i32(2147483647i, var_4.d), 0i)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> i32 {
    global1 = func_2(!global1.xz, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-521f + _wgslsmith_f_op_f32(select(1707f, 1421f, false))) - 789f), -591f))).b.xxz;
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(162f, 1550f) - vec2<f32>(170f, -1111f))), vec2<f32>(_wgslsmith_f_op_f32(-273f - -1021f), _wgslsmith_f_op_f32(round(551f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-858f, -372f) + vec2<f32>(975f, 1142f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-244f, -219f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(656f, 312f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(select(1518f, -189f, select(global1.x, false, global3[_wgslsmith_index_u32(4294967295u, 25u)]))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(var_0.x, var_0.x)), var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1000f, var_0.x, 1441f), vec4<f32>(-535f, -684f, -1000f, var_0.x), arg_0.b)), vec4<f32>(var_0.x, var_0.x, -230f, var_0.x)))));
    var var_2 = Struct_3(vec4<i32>(_wgslsmith_mult_i32(arg_0.c.x, firstLeadingBit(arg_0.e.b.x) | _wgslsmith_add_i32(u_input.c, u_input.a)), _wgslsmith_mult_i32(~u_input.b.x, arg_0.c.x), ~arg_1.e.b.x, arg_1.c.x >> ((_wgslsmith_sub_u32(u_input.e, global0.x) | 10654u) % 32u)), vec3<i32>(u_input.c, 3759i, arg_1.c.x));
    let var_3 = var_1;
    return arg_1.c.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = vec3<i32>(arg_0.x >> (~_wgslsmith_clamp_u32(9074u, _wgslsmith_mod_u32(u_input.e, 29651u), 3603u) % 32u), ~(~func_4(func_2(global1.zy, 525f), Struct_4(true, vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 25u)], global1.x, arg_3, global3[_wgslsmith_index_u32(arg_1.x, 25u)]), u_input.d, global1.x, global2[_wgslsmith_index_u32(79490u, 9u)]))), -1i);
    var var_1 = false;
    global3 = array<bool, 25>();
    var var_2 = func_2(func_2(global1.xz, 1574f).b.xx, _wgslsmith_div_f32(611f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1105f)), -1000f)))).e;
    let var_3 = var_2.b;
    return 349f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~_wgslsmith_div_vec3_u32(~(~vec3<u32>(global0.x, 0u, 57450u)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(45192u, 45564u, 52134u), vec3<u32>(45323u, 46327u, 9688u)), vec3<u32>(global0.x, u_input.e, global0.x))), abs(~vec3<u32>(~u_input.e, 1u, u_input.e >> (u_input.e % 32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(2147483647i, u_input.d.x), vec4<u32>(u_input.e, global0.x, 0u, 33043u), global1.x, global1.x)))), 707f, 2071f, -405f)));
    let var_2 = global4[_wgslsmith_index_u32(~1u, 9u)];
    var var_3 = Struct_3(~(~u_input.d), vec3<i32>(-5298i, min(u_input.b.x, var_2.d), (_wgslsmith_mult_i32(u_input.d.x, var_2.b.x) ^ func_4(Struct_4(global1.x, vec4<bool>(true, false, false, true), vec4<i32>(-12124i, u_input.c, 20872i, 22470i), global1.x, global2[_wgslsmith_index_u32(var_0.x, 9u)]), Struct_4(false, var_2.a, vec4<i32>(u_input.b.x, u_input.a, var_2.d, var_2.d), false, Struct_3(u_input.d, u_input.d.xyw)))) << (firstLeadingBit(max(var_2.c, 4294967295u)) % 32u)));
    var var_4 = func_2(!vec2<bool>(false, var_2.a.x), -492f);
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(_wgslsmith_mult_vec2_i32(var_2.b, vec2<i32>(2147483647i, 27972i)) & (var_2.b >> (var_0.xy % vec2<u32>(32u)))), ~vec3<i32>(i32(-1i) * -var_4.e.a.x, _wgslsmith_mult_i32(u_input.b.x, countOneBits(var_3.a.x)), 21364i));
}

