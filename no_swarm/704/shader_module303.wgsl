struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8>;

var<private> global1: Struct_1 = Struct_1(-1000f, vec4<i32>(-60043i, -1i, 19964i, 33229i), vec3<i32>(0i, 21194i, -7746i), vec4<i32>(0i, -22065i, 0i, -18269i), vec3<bool>(false, false, false));

var<private> global2: array<vec2<i32>, 25>;

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), 0i);

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-893f, vec4<i32>(2147483647i, 2147483647i, -30139i, i32(-2147483648)), vec3<i32>(0i, 1i, i32(-2147483648)), vec4<i32>(37193i, 13993i, 7511i, -1i), vec3<bool>(false, false, false)), Struct_1(-306f, vec4<i32>(42034i, 1i, 10260i, -10889i), vec3<i32>(-55335i, -1110i, 1i), vec4<i32>(23738i, 2147483647i, 12311i, -8132i), vec3<bool>(true, false, true)), Struct_1(783f, vec4<i32>(45503i, 2147483647i, -34298i, -23032i), vec3<i32>(-7611i, 51700i, -31140i), vec4<i32>(0i, 2147483647i, -1i, 8655i), vec3<bool>(false, true, true)), Struct_1(1019f, vec4<i32>(2147483647i, -27803i, -3248i, 2147483647i), vec3<i32>(-4635i, 1i, -10038i), vec4<i32>(76148i, 21955i, 2147483647i, 29056i), vec3<bool>(false, true, true)), Struct_1(125f, vec4<i32>(1i, -21255i, 0i, 0i), vec3<i32>(-1i, -1i, 0i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 2147483647i), vec3<bool>(true, false, false)), Struct_1(-1185f, vec4<i32>(71806i, 2147483647i, -10883i, 0i), vec3<i32>(18807i, 34668i, 0i), vec4<i32>(-8014i, -62217i, -6514i, 0i), vec3<bool>(false, false, true)), Struct_1(1555f, vec4<i32>(0i, 2147483647i, -12723i, -22781i), vec3<i32>(20458i, -1i, 59237i), vec4<i32>(i32(-2147483648), -110756i, -40143i, -8109i), vec3<bool>(true, false, true)), Struct_1(-1000f, vec4<i32>(-23237i, i32(-2147483648), 0i, 1933i), vec3<i32>(-2841i, 1i, -1i), vec4<i32>(-44201i, -13899i, 1i, -28566i), vec3<bool>(false, true, true)), Struct_1(-1393f, vec4<i32>(i32(-2147483648), 16563i, -31604i, 39705i), vec3<i32>(12254i, 2147483647i, -4154i), vec4<i32>(-9869i, 2147483647i, 354i, -12047i), vec3<bool>(false, false, true)), Struct_1(197f, vec4<i32>(44976i, -524i, 6097i, 2147483647i), vec3<i32>(-57470i, -1i, 32813i), vec4<i32>(-1i, 7300i, 27892i, -1030i), vec3<bool>(true, true, false)), Struct_1(-1622f, vec4<i32>(-69000i, 1i, -28748i, 0i), vec3<i32>(i32(-2147483648), 23000i, -28614i), vec4<i32>(-1i, 57932i, 22248i, 0i), vec3<bool>(true, true, true)), Struct_1(179f, vec4<i32>(0i, 2147483647i, 2147483647i, 0i), vec3<i32>(1i, i32(-2147483648), -15892i), vec4<i32>(i32(-2147483648), 0i, -34009i, 57712i), vec3<bool>(false, false, true)), Struct_1(-1628f, vec4<i32>(-1i, 2147483647i, 2147483647i, 0i), vec3<i32>(0i, i32(-2147483648), 1i), vec4<i32>(-11616i, 2147483647i, -67475i, 51874i), vec3<bool>(false, false, true)), Struct_1(372f, vec4<i32>(-6688i, 40952i, 1i, 6943i), vec3<i32>(-30053i, -22776i, -1166i), vec4<i32>(-1i, i32(-2147483648), 24550i, 38442i), vec3<bool>(true, true, false)), Struct_1(-1000f, vec4<i32>(1i, 2147483647i, -9653i, 34796i), vec3<i32>(1i, -1i, -40816i), vec4<i32>(-7753i, -19614i, 2147483647i, -6131i), vec3<bool>(true, true, true)), Struct_1(-1016f, vec4<i32>(59245i, 24561i, -27464i, 43211i), vec3<i32>(-18332i, 52447i, -34043i), vec4<i32>(-33919i, 1i, -2307i, -1i), vec3<bool>(false, false, false)), Struct_1(-1393f, vec4<i32>(7478i, 67427i, 1i, -1i), vec3<i32>(-21631i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -14767i, -606i), vec3<bool>(false, true, false)), Struct_1(-1000f, vec4<i32>(-35153i, -1i, i32(-2147483648), -8181i), vec3<i32>(22823i, -32844i, i32(-2147483648)), vec4<i32>(6394i, -22979i, 1i, 37074i), vec3<bool>(true, true, true)), Struct_1(-1000f, vec4<i32>(-50605i, 0i, 25365i, i32(-2147483648)), vec3<i32>(2864i, 38389i, 1i), vec4<i32>(1i, -64834i, 1i, -9653i), vec3<bool>(true, true, false)), Struct_1(-1032f, vec4<i32>(2147483647i, -30617i, i32(-2147483648), 1i), vec3<i32>(2147483647i, -4657i, 2147483647i), vec4<i32>(2147483647i, -10413i, i32(-2147483648), 2147483647i), vec3<bool>(true, false, true)), Struct_1(640f, vec4<i32>(-45067i, -15031i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 14206i, -19533i), vec4<i32>(6564i, -74897i, 13591i, -18234i), vec3<bool>(true, false, false)), Struct_1(847f, vec4<i32>(0i, i32(-2147483648), 38962i, 0i), vec3<i32>(0i, 0i, i32(-2147483648)), vec4<i32>(-36444i, i32(-2147483648), 7076i, 2215i), vec3<bool>(true, false, false)), Struct_1(816f, vec4<i32>(2147483647i, -1i, 1i, 39139i), vec3<i32>(-31962i, -10354i, i32(-2147483648)), vec4<i32>(23199i, -1i, 0i, -20728i), vec3<bool>(true, true, true)), Struct_1(291f, vec4<i32>(-2866i, i32(-2147483648), 57424i, 28272i), vec3<i32>(13926i, -1i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 2147483647i, 54023i), vec3<bool>(false, true, false)), Struct_1(-450f, vec4<i32>(1i, 27893i, 31139i, 14619i), vec3<i32>(-12791i, -1i, -1i), vec4<i32>(0i, -53041i, -11444i, -9193i), vec3<bool>(true, true, true)), Struct_1(-523f, vec4<i32>(-34780i, 1i, 14720i, 9749i), vec3<i32>(21479i, i32(-2147483648), 0i), vec4<i32>(-42751i, 2147483647i, -16075i, 1i), vec3<bool>(true, true, true)), Struct_1(1372f, vec4<i32>(1015i, 2147483647i, 1i, -18124i), vec3<i32>(35432i, -49978i, 2147483647i), vec4<i32>(-66814i, i32(-2147483648), 13937i, -1i), vec3<bool>(true, true, true)), Struct_1(-302f, vec4<i32>(i32(-2147483648), 2147483647i, -55957i, -7341i), vec3<i32>(56373i, 2147483647i, 54342i), vec4<i32>(20039i, -14277i, 2147483647i, 67164i), vec3<bool>(true, false, true)), Struct_1(-1612f, vec4<i32>(-1i, i32(-2147483648), -3129i, -1i), vec3<i32>(1i, -37456i, 20129i), vec4<i32>(-8758i, -1i, 2147483647i, -44174i), vec3<bool>(true, true, false)), Struct_1(1873f, vec4<i32>(0i, -1i, -65239i, 2147483647i), vec3<i32>(0i, -38508i, 2147483647i), vec4<i32>(-5519i, -5922i, 106705i, 0i), vec3<bool>(true, true, true)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = (_wgslsmith_div_i32(max(-2147483647i, i32(-1i) * -28675i), global3.x) >= firstLeadingBit(-2147483647i)) | global1.e.x;
    let var_1 = _wgslsmith_sub_u32(0u, max(~0u, u_input.c)) << ((firstTrailingBit(18416u) << (~(~1u) % 32u)) % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1910f - -630f)), vec4<i32>(max(abs(-global3.x), global3.x), i32(-1i) * -1i, 2147483647i, u_input.e.x), vec3<i32>(~(i32(-1i) * -2147483647i), 78834i, _wgslsmith_div_i32(max(_wgslsmith_div_i32(2147483647i, -66046i), -global1.c.x), global3.x)), vec4<i32>(~(-2147483647i), i32(-1i) * -18107i, u_input.e.x, -9099i), select(select(!vec3<bool>(global1.e.x, var_0, global1.e.x), !vec3<bool>(global1.e.x, var_0, var_0), global1.e.x), !vec3<bool>(true, any(global1.e), all(global1.e)), false));
    global2 = array<vec2<i32>, 25>();
    var var_3 = var_2;
    return u_input.c;
}

fn func_2() -> vec4<u32> {
    let var_0 = global4[_wgslsmith_index_u32(u_input.b, 30u)];
    let var_1 = global4[_wgslsmith_index_u32(12465u, 30u)];
    var var_2 = global4[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c << (u_input.b % 32u), _wgslsmith_div_u32(4294967295u, 3607u)), func_3()), countOneBits(u_input.c))), 30u)];
    global1 = global4[_wgslsmith_index_u32(u_input.a, 30u)];
    global4 = array<Struct_1, 30>();
    return ~vec4<u32>(min(countOneBits(_wgslsmith_mod_u32(u_input.a, u_input.c)), reverseBits(_wgslsmith_mult_u32(u_input.a, 0u))), u_input.a, 4294967295u, reverseBits(min(_wgslsmith_mod_u32(4294967295u, 29577u), 1u)));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.d.x, firstLeadingBit(u_input.e.x), firstTrailingBit(-33016i), select(1i, u_input.e.x, arg_1)) >> (func_2() % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~global1.d, global1.d << (vec4<u32>(1u, u_input.b, 0u, arg_0) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(u_input.e.x, -50423i, u_input.e.x, global1.b.x))), ~(global1.c ^ vec3<i32>(min(0i, 57480i), global1.b.x, 6130i)), global1.d, !global1.e);
    global2 = array<vec2<i32>, 25>();
    var_0 = global4[_wgslsmith_index_u32(firstTrailingBit(arg_0), 30u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-727f, -905f, var_0.a), vec3<f32>(2240f, 339f, -838f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, -757f, global1.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_div_f32(var_0.a, -110f)))));
    var var_2 = firstTrailingBit(abs(_wgslsmith_mod_u32(arg_0, u_input.d)));
    return global4[_wgslsmith_index_u32(92555u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(19341u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 26980u), vec3<u32>(35536u, u_input.b, u_input.b))) << (_wgslsmith_dot_vec2_u32(select(global0[_wgslsmith_index_u32(~141518u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], true), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.a, 0u)))) % 32u), global1.e.x);
    var var_1 = u_input.d != _wgslsmith_clamp_u32(countOneBits(~1u), _wgslsmith_add_u32(~u_input.b, 1u) << (~4294967295u % 32u), select(~u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.c, 1u) | 0u, any(global1.e)));
    var var_2 = func_1(u_input.b, !var_0.e.x);
    var var_3 = vec2<u32>(u_input.d, u_input.c);
    let var_4 = func_1(var_3.x, all(vec3<bool>(select(all(global1.e), global1.e.x, !var_0.e.x), var_0.e.x, any(vec4<bool>(var_0.e.x, var_2.e.x, global1.e.x, true)))));
    var var_5 = var_0;
    global1 = func_1(~25780u, !(false & (_wgslsmith_f_op_f32(var_4.a + -1413f) < var_2.a)));
    var_1 = global1.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) * _wgslsmith_f_op_f32(min(var_5.a, var_5.a))))))), vec3<i32>(firstLeadingBit(var_2.b.x), -48405i, ~(~1i >> (_wgslsmith_mod_u32(var_3.x, 5385u) % 32u))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_5.a + global1.a), _wgslsmith_f_op_f32(ceil(796f)))), global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - 617f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.a)))))));
}

