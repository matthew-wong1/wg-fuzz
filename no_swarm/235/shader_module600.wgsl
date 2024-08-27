struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-22805i, -54417i), vec2<i32>(-38151i, 13324i), vec2<i32>(0i, 11020i), vec2<i32>(1i, 8751i), vec2<i32>(-1i, 17939i), vec2<i32>(-30530i, 16378i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(18462i, 14555i), vec2<i32>(-1i, -16382i), vec2<i32>(0i, 15877i), vec2<i32>(2147483647i, 0i), vec2<i32>(-29750i, i32(-2147483648)), vec2<i32>(2147483647i, 3758i), vec2<i32>(28878i, 2147483647i), vec2<i32>(i32(-2147483648), 7221i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(16972i, -20132i), vec2<i32>(-8893i, 31303i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-44457i, -3471i), vec2<i32>(10010i, -19502i), vec2<i32>(2147483647i, 26663i), vec2<i32>(23090i, 1i), vec2<i32>(48306i, -70148i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(12819i, 41673i));

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec3<i32>(12179i, 19661i, -1i), 42938i, i32(-2147483648), 0i)), Struct_2(Struct_1(vec2<i32>(10329i, 30992i), vec3<i32>(0i, 48394i, -27893i), 0i, 2147483647i, -32223i)), Struct_2(Struct_1(vec2<i32>(2147483647i, 1550i), vec3<i32>(2147483647i, 0i, -24574i), i32(-2147483648), i32(-2147483648), -35701i)), Struct_2(Struct_1(vec2<i32>(43798i, 2147483647i), vec3<i32>(0i, 2147483647i, -15028i), 2147483647i, i32(-2147483648), -17281i)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 14980i), vec3<i32>(2147483647i, 21688i, 2147483647i), 0i, -2618i, -8262i)), Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec3<i32>(-11227i, 694i, 0i), 63166i, -34306i, -1i)), Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec3<i32>(289i, i32(-2147483648), -27559i), i32(-2147483648), 25810i, 41374i)), Struct_2(Struct_1(vec2<i32>(-1i, 42286i), vec3<i32>(0i, -42816i, -23759i), 63499i, 27423i, 38042i)), Struct_2(Struct_1(vec2<i32>(-33677i, 0i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), 2147483647i, 36289i, -32152i)), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), vec3<i32>(35379i, 14938i, -1i), 0i, 14589i, i32(-2147483648))), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec3<i32>(i32(-2147483648), -12191i, -34231i), 3733i, 2147483647i, i32(-2147483648))), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec3<i32>(11575i, i32(-2147483648), 1i), 2147483647i, 0i, 58666i)), Struct_2(Struct_1(vec2<i32>(2147483647i, -11541i), vec3<i32>(1i, 2147483647i, -65448i), -1i, 46973i, 45768i)), Struct_2(Struct_1(vec2<i32>(2068i, 58230i), vec3<i32>(5405i, 0i, -23446i), 1i, 2997i, 17316i)), Struct_2(Struct_1(vec2<i32>(0i, -1i), vec3<i32>(1i, -34056i, 1i), 0i, -1i, 0i)), Struct_2(Struct_1(vec2<i32>(5148i, -55091i), vec3<i32>(-12684i, -42689i, 2185i), -42437i, 2147483647i, i32(-2147483648))), Struct_2(Struct_1(vec2<i32>(1i, 34397i), vec3<i32>(-15389i, i32(-2147483648), 2147483647i), -15699i, 1i, 0i)), Struct_2(Struct_1(vec2<i32>(-1i, 22469i), vec3<i32>(49590i, -1i, -11761i), -1i, i32(-2147483648), 0i)), Struct_2(Struct_1(vec2<i32>(1i, -1i), vec3<i32>(-11508i, 22820i, 0i), i32(-2147483648), 17950i, -8761i)), Struct_2(Struct_1(vec2<i32>(-13465i, 60517i), vec3<i32>(-37743i, 2147483647i, 1i), -4529i, 18283i, -2289i)), Struct_2(Struct_1(vec2<i32>(1i, -1i), vec3<i32>(i32(-2147483648), -53225i, i32(-2147483648)), 0i, -1i, 4825i)), Struct_2(Struct_1(vec2<i32>(63i, -75568i), vec3<i32>(i32(-2147483648), 2147483647i, -8880i), -26438i, 2147483647i, 2147483647i)));

var<private> global4: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: i32) -> vec4<bool> {
    var var_0 = min(select(min(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(13035i, -988i, arg_1.a, 5362i), vec4<i32>(arg_1.a, 21514i, -1i, arg_1.b.b.x), vec4<i32>(u_input.d, 1i, 47520i, arg_2)), vec4<i32>(24352i, 2147483647i, 0i, u_input.d), select(vec4<bool>(arg_1.c, true, global2.x, false), vec4<bool>(true, false, true, true), false)), -vec4<i32>(-2147483647i, 1i, arg_2, arg_2) | _wgslsmith_div_vec4_i32(vec4<i32>(-12200i, u_input.d, arg_2, 2642i), vec4<i32>(0i, 25360i, u_input.d, 54517i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a, arg_1.b.b.x, arg_2 | arg_2, min(-28157i, -9704i)), ~(~vec4<i32>(u_input.d, u_input.d, 18252i, arg_1.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, arg_1.b.b.x, arg_2, u_input.d) << (vec4<u32>(0u, arg_1.d.x, arg_1.d.x, 1u) % vec4<u32>(32u)), ~vec4<i32>(20482i, 49148i, arg_2, 22085i))), arg_1.c), max(~vec4<i32>(0i, -25787i, _wgslsmith_mod_i32(u_input.d, arg_2), -2147483647i), vec4<i32>(-1i, -1i, ~(~arg_2), -(arg_1.b.b.x << (18954u % 32u)))));
    global0 = array<f32, 2>();
    let var_1 = firstTrailingBit(~(~u_input.b.x));
    let var_2 = Struct_3(1u);
    global4 = arg_0.x;
    return vec4<bool>(arg_1.c && select(false, arg_1.c, arg_0.x), true, global2.x, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_5) -> u32 {
    let var_0 = select(vec4<u32>(abs(~12930u), arg_0.x, ~4787u, ~0u), arg_2.d | ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.d.x, arg_2.d.x, 4294967295u, 4294967295u), u_input.b)), !func_3(select(arg_1.yz, vec2<bool>(arg_2.c, global2.x), vec2<bool>(false, arg_2.c)), arg_2, -(i32(-1i) * -13491i)));
    var var_1 = Struct_3(~52336u);
    let var_2 = max(u_input.d, countOneBits(arg_2.b.a.x));
    var var_3 = Struct_4(-2147483647i);
    var var_4 = 0u;
    return arg_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec2<f32>) -> i32 {
    let var_0 = select(vec4<bool>(true, global2.x, global2.x, true), !func_3(vec2<bool>(any(vec3<bool>(true, global2.x, global2.x)), true), Struct_5(_wgslsmith_add_i32(2429i, -35323i), Struct_1(arg_0.a.b.xy, vec3<i32>(arg_0.a.a.x, -1i, arg_0.a.b.x), arg_0.a.a.x, arg_0.a.b.x, arg_0.a.a.x), false, ~vec4<u32>(arg_1.a, 0u, arg_1.a, u_input.c)), u_input.d), any(func_3(!(!vec2<bool>(false, global2.x)), Struct_5(arg_0.a.e & u_input.d, Struct_1(global1[_wgslsmith_index_u32(arg_1.a, 27u)], arg_0.a.b, arg_0.a.b.x, 19387i, arg_0.a.c), u_input.a.x > arg_1.a, ~u_input.a), -28388i)));
    global2 = !select(vec2<bool>(true, !any(var_0.wx)), !(!func_3(var_0.xx, Struct_5(0i, Struct_1(arg_0.a.a, arg_0.a.b, arg_0.a.b.x, u_input.d, 0i), true, vec4<u32>(80484u, u_input.b.x, 27240u, 1u)), u_input.d).yx), var_0.zw);
    let var_1 = all(select(vec2<bool>(true, false), select(!select(var_0.zw, vec2<bool>(false, false), var_0.xw), !func_3(var_0.xx, Struct_5(32691i, Struct_1(vec2<i32>(-4836i, arg_0.a.b.x), vec3<i32>(74168i, -58406i, -1i), u_input.d, -19385i, 1i), global2.x, vec4<u32>(60377u, 0u, u_input.c, arg_1.a)), 2147483647i).yw, vec2<bool>(true, true)), true));
    global3 = array<Struct_2, 22>();
    var var_2 = arg_0;
    return _wgslsmith_sub_i32(~arg_0.a.a.x, 1i);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: u32) -> vec3<bool> {
    global0 = array<f32, 2>();
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(u_input.c, 27u)], -firstLeadingBit(~vec3<i32>(-36981i, 2147483647i, u_input.d)), -firstTrailingBit(u_input.d << (1u % 32u)), func_4(global3[_wgslsmith_index_u32(~select(u_input.c, arg_3, false), 22u)], Struct_3(func_2(~u_input.a.xyz, vec3<bool>(global2.x, false, arg_2.x), Struct_5(u_input.d, Struct_1(vec2<i32>(u_input.d, 48229i), vec3<i32>(u_input.d, u_input.d, u_input.d), 1i, -12504i, 0i), false, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(68860u, 2u)])), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_3, 15869u, 4294967295u), 2u)])), global0[_wgslsmith_index_u32(~arg_3, 2u)], -741f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 953f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(68378u, 2u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(784f, global0[_wgslsmith_index_u32(426u, 2u)]), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.c, 2u)])), !global2.x)))), func_4(Struct_2(Struct_1(vec2<i32>(1i, 55546i) ^ vec2<i32>(u_input.d, u_input.d), -vec3<i32>(1i, u_input.d, 1i), 0i, -u_input.d, ~2147483647i)), Struct_3(arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_3, 2u)], -296f, global0[_wgslsmith_index_u32(66435u, 2u)], -849f) + vec4<f32>(-247f, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(33278u, 2u)], global0[_wgslsmith_index_u32(arg_3, 2u)])))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(~u_input.a.x, 2u)], _wgslsmith_f_op_f32(f32(-1f) * -1591f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))))));
    let var_1 = Struct_4(var_0.d);
    global0 = array<f32, 2>();
    var var_2 = Struct_1(firstLeadingBit(abs(~_wgslsmith_sub_vec2_i32(var_0.a, vec2<i32>(var_0.d, 9456i)))), ~((vec3<i32>(-1i) * -var_0.b) << (u_input.b.www % vec3<u32>(32u))), -25043i, ~1i, u_input.d);
    return vec3<bool>(any(vec2<bool>(true, true)), _wgslsmith_add_u32(4009u, arg_3) <= select(~_wgslsmith_div_u32(19070u, arg_3), _wgslsmith_add_u32(0u, arg_3) ^ firstLeadingBit(u_input.a.x), !func_3(vec2<bool>(arg_2.x, arg_1), Struct_5(var_2.d, Struct_1(vec2<i32>(38270i, var_0.d), vec3<i32>(u_input.d, 0i, -1i), var_0.e, 46485i, var_2.c), false, vec4<u32>(arg_0, 14142u, 53304u, arg_3)), u_input.d).x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(func_1(_wgslsmith_div_u32(0u, u_input.b.x), !(global2.x | false), select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, true), !vec4<bool>(global2.x, global2.x, true, global2.x)), ~u_input.c), !func_3(!vec2<bool>(global2.x, true), Struct_5(39206i, Struct_1(vec2<i32>(u_input.d, u_input.d), vec3<i32>(2726i, -44477i, u_input.d), u_input.d, u_input.d, u_input.d), false, vec4<u32>(u_input.b.x, 64558u, u_input.b.x, 0u)), select(u_input.d, -11335i, global2.x)).zzy, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], 953f, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<f32>(global0[_wgslsmith_index_u32(62975u, 2u)], global0[_wgslsmith_index_u32(38503u, 2u)], 1798f))), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 2u)], 1665f, 2097f), vec3<f32>(global0[_wgslsmith_index_u32(34874u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2137f, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)])))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c, 2u)], -740f)), 215f, 1385f)))), ~(~_wgslsmith_div_vec2_u32(u_input.a.ww >> (u_input.a.zy % vec2<u32>(32u)), ~u_input.a.yz)));
}

