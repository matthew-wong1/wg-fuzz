struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(-12785i, false, vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 0u, 123420u), 4294967295u), Struct_1(-1i, true, vec2<bool>(false, true), vec4<u32>(1u, 6173u, 0u, 7546u), 1u)), Struct_2(Struct_1(19894i, false, vec2<bool>(false, false), vec4<u32>(84489u, 4294967295u, 40074u, 4294967295u), 1u), Struct_1(16425i, true, vec2<bool>(true, true), vec4<u32>(8702u, 1u, 1u, 4294967295u), 54175u)), Struct_2(Struct_1(-19323i, true, vec2<bool>(false, false), vec4<u32>(1u, 57895u, 75255u, 31632u), 4294967295u), Struct_1(-39548i, false, vec2<bool>(true, false), vec4<u32>(0u, 1960u, 4294967295u, 51926u), 37750u)), Struct_2(Struct_1(1i, false, vec2<bool>(false, true), vec4<u32>(7393u, 1u, 0u, 1u), 0u), Struct_1(22130i, false, vec2<bool>(true, true), vec4<u32>(20668u, 1u, 4294967295u, 8312u), 4294967295u)), Struct_2(Struct_1(2147483647i, false, vec2<bool>(false, false), vec4<u32>(0u, 0u, 68538u, 17129u), 21380u), Struct_1(2147483647i, true, vec2<bool>(true, true), vec4<u32>(4294967295u, 4294967295u, 0u, 6147u), 4294967295u)), Struct_2(Struct_1(-1i, true, vec2<bool>(true, false), vec4<u32>(43500u, 0u, 14628u, 61193u), 0u), Struct_1(-24336i, true, vec2<bool>(true, false), vec4<u32>(21224u, 0u, 1u, 85623u), 39358u)), Struct_2(Struct_1(i32(-2147483648), false, vec2<bool>(false, true), vec4<u32>(1u, 0u, 34224u, 11637u), 0u), Struct_1(1i, true, vec2<bool>(true, false), vec4<u32>(0u, 63592u, 0u, 25703u), 1u)), Struct_2(Struct_1(1124i, true, vec2<bool>(false, true), vec4<u32>(35191u, 17995u, 17073u, 4294967295u), 1u), Struct_1(i32(-2147483648), true, vec2<bool>(true, true), vec4<u32>(0u, 4294967295u, 45190u, 19027u), 58292u)), Struct_2(Struct_1(77904i, true, vec2<bool>(false, false), vec4<u32>(1787u, 63196u, 4294967295u, 35141u), 96358u), Struct_1(-24234i, true, vec2<bool>(false, false), vec4<u32>(4294967295u, 1u, 1u, 1u), 44547u)), Struct_2(Struct_1(23649i, true, vec2<bool>(false, false), vec4<u32>(33028u, 47080u, 0u, 48012u), 4294967295u), Struct_1(2147483647i, false, vec2<bool>(true, true), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), 4294967295u)), Struct_2(Struct_1(72556i, true, vec2<bool>(true, false), vec4<u32>(54412u, 1u, 4294967295u, 2691u), 87396u), Struct_1(-1i, false, vec2<bool>(false, true), vec4<u32>(4294967295u, 63045u, 4294967295u, 46623u), 88888u)), Struct_2(Struct_1(-38756i, false, vec2<bool>(false, false), vec4<u32>(9039u, 29370u, 0u, 4294967295u), 4390u), Struct_1(26041i, false, vec2<bool>(false, true), vec4<u32>(0u, 19994u, 0u, 21295u), 12410u)), Struct_2(Struct_1(-1i, false, vec2<bool>(true, true), vec4<u32>(11205u, 4294967295u, 1u, 1u), 41026u), Struct_1(2147483647i, true, vec2<bool>(false, true), vec4<u32>(1u, 1u, 29488u, 4294967295u), 4294967295u)), Struct_2(Struct_1(-1i, true, vec2<bool>(false, false), vec4<u32>(22229u, 4294967295u, 63768u, 17394u), 85642u), Struct_1(2147483647i, true, vec2<bool>(false, false), vec4<u32>(0u, 1u, 114530u, 0u), 0u)), Struct_2(Struct_1(-1i, true, vec2<bool>(false, true), vec4<u32>(19224u, 1u, 53955u, 9412u), 44989u), Struct_1(-2155i, false, vec2<bool>(true, false), vec4<u32>(27432u, 31344u, 4294967295u, 9405u), 0u)), Struct_2(Struct_1(0i, true, vec2<bool>(false, true), vec4<u32>(1147u, 16539u, 71874u, 0u), 82770u), Struct_1(-1i, true, vec2<bool>(true, true), vec4<u32>(37452u, 0u, 74093u, 4294967295u), 0u)), Struct_2(Struct_1(1i, true, vec2<bool>(true, false), vec4<u32>(4294967295u, 0u, 34743u, 84047u), 93666u), Struct_1(-24355i, true, vec2<bool>(false, true), vec4<u32>(26473u, 20632u, 1u, 27603u), 0u)), Struct_2(Struct_1(9451i, true, vec2<bool>(true, false), vec4<u32>(0u, 1u, 0u, 19023u), 55430u), Struct_1(2147483647i, false, vec2<bool>(false, true), vec4<u32>(23819u, 36500u, 0u, 34498u), 0u)), Struct_2(Struct_1(-21672i, true, vec2<bool>(true, false), vec4<u32>(1u, 4294967295u, 24630u, 70863u), 4484u), Struct_1(-24208i, false, vec2<bool>(true, false), vec4<u32>(0u, 39114u, 4294967295u, 13012u), 12940u)), Struct_2(Struct_1(2147483647i, false, vec2<bool>(true, false), vec4<u32>(4294967295u, 7201u, 25226u, 1u), 30850u), Struct_1(-4858i, false, vec2<bool>(false, false), vec4<u32>(4294967295u, 33696u, 15430u, 33689u), 2567u)), Struct_2(Struct_1(2147483647i, false, vec2<bool>(true, false), vec4<u32>(43250u, 4294967295u, 18247u, 4294967295u), 4294967295u), Struct_1(0i, false, vec2<bool>(true, false), vec4<u32>(1u, 23613u, 1u, 20265u), 16976u)), Struct_2(Struct_1(1i, false, vec2<bool>(true, true), vec4<u32>(34411u, 0u, 4842u, 0u), 1u), Struct_1(44535i, true, vec2<bool>(false, false), vec4<u32>(1u, 1u, 33543u, 6158u), 17978u)), Struct_2(Struct_1(86009i, false, vec2<bool>(true, true), vec4<u32>(0u, 22187u, 1u, 0u), 87622u), Struct_1(-56894i, false, vec2<bool>(false, true), vec4<u32>(7399u, 0u, 15328u, 0u), 4294967295u)), Struct_2(Struct_1(-22346i, true, vec2<bool>(true, false), vec4<u32>(77475u, 51969u, 2027u, 0u), 65751u), Struct_1(-1i, true, vec2<bool>(true, false), vec4<u32>(47712u, 0u, 1u, 22003u), 53444u)), Struct_2(Struct_1(22331i, true, vec2<bool>(false, true), vec4<u32>(50615u, 4294967295u, 144438u, 1u), 72890u), Struct_1(34293i, false, vec2<bool>(false, false), vec4<u32>(1u, 58442u, 1u, 4294967295u), 41261u)), Struct_2(Struct_1(2147483647i, false, vec2<bool>(false, true), vec4<u32>(4294967295u, 4294967295u, 13907u, 4294967295u), 0u), Struct_1(-37213i, true, vec2<bool>(false, true), vec4<u32>(0u, 66119u, 29443u, 23491u), 1u)), Struct_2(Struct_1(-12495i, false, vec2<bool>(false, true), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), 128667u), Struct_1(19397i, true, vec2<bool>(true, false), vec4<u32>(1u, 36223u, 47992u, 1u), 4294967295u)), Struct_2(Struct_1(-56659i, false, vec2<bool>(true, true), vec4<u32>(1u, 30291u, 0u, 6061u), 89231u), Struct_1(-1i, false, vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 45666u, 1u), 7533u)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global0 = vec3<bool>(any(global0.xz), global0.x && true, false);
    global1 = -vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, 1i, 29973i), vec3<i32>(-1i, 1630i, -81730i), global0.x), select(vec3<i32>(global1.x, global1.x, 938i), vec3<i32>(global1.x, 2147483647i, 1i), vec3<bool>(global0.x, global0.x, true))), global1.x), -1i, select(2147483647i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(2147483647i, global1.x)), global0.x));
    global1 = abs(~_wgslsmith_mult_vec3_i32(~vec3<i32>(global1.x, global1.x, global1.x) << (vec3<u32>(u_input.c, u_input.d, u_input.c) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(global1.x, 0i), -2147483647i ^ global1.x, 1i)));
    var var_0 = -217f;
    global2 = array<Struct_2, 28>();
    return true && (true | global0.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = Struct_3(!all(!select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(arg_2, global0.x, false, false), false)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -832f), !arg_1.c.x || false);
    global0 = !select(select(select(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, false, arg_2), vec3<bool>(global0.x, false, global0.x)), select(vec3<bool>(global0.x, arg_2, true), vec3<bool>(false, arg_2, false), vec3<bool>(arg_1.c.x, true, arg_2)), vec3<bool>(var_0.b.c.x, false, false)), !(!vec3<bool>(arg_1.b, global0.x, global0.x)), func_3()), !select(vec3<bool>(global0.x, false, false), !vec3<bool>(false, arg_2, true), global0.x && false), any(!vec3<bool>(arg_2, var_0.b.c.x, true)));
    var_0 = Struct_3(false, Struct_1(-(~(~var_0.b.a)), true == global0.x, vec2<bool>(select(true, var_0.a, arg_1.b) & func_3(), true), var_0.b.d, 50287u), _wgslsmith_f_op_f32(728f - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.c)), _wgslsmith_f_op_f32(2742f + -719f), true)))), true);
    let var_1 = min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-7138i, global1.x, select(arg_1.a, -2147483647i, false), 2147483647i), -min(vec4<i32>(9173i, -39113i, 203i, global1.x), vec4<i32>(global1.x, var_0.b.a, var_0.b.a, global1.x)), ~(-vec4<i32>(0i, global1.x, 1i, var_0.b.a))), ~(~(-vec4<i32>(var_0.b.a, 61404i, arg_1.a, 16402i)))) ^ abs(vec4<i32>(i32(-1i) * -arg_1.a, global1.x, arg_1.a >> (max(68238u, 16977u) % 32u), 35127i));
    var var_2 = global0.x;
    return min(u_input.e.x, ~(4294967295u << (select(var_0.b.e, arg_1.e, false) % 32u)) & 0u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global2 = array<Struct_2, 28>();
    var var_0 = Struct_2(arg_0.b, arg_0.b);
    global2 = array<Struct_2, 28>();
    var var_1 = vec4<bool>(true & global0.x, arg_1.b.c.x, all(!vec4<bool>(false, global0.x, all(vec3<bool>(arg_0.b.b, arg_0.d, false)), all(vec4<bool>(arg_0.a, var_0.a.b, true, true)))), true);
    let var_2 = arg_0;
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.d.x, 6984u), ~vec2<u32>(u_input.e.x, 0u)) >> (arg_2.b.d.zy % vec2<u32>(32u)), vec2<u32>(func_2(_wgslsmith_f_op_f32(-var_2.c), Struct_1(19936i, true, vec2<bool>(var_1.x, true), var_0.b.d, 0u), true), func_2(_wgslsmith_f_op_f32(trunc(1625f)), Struct_1(arg_1.b.a, arg_1.d, var_2.b.c, vec4<u32>(8388u, var_2.b.e, 16235u, arg_1.b.e), u_input.a), arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_i32(-(firstTrailingBit(2147483647i) >> ((u_input.d ^ 70355u) % 32u)), max(-global1.x, -2147483647i)), select(false, true, true), !(!(!global0.yz)), ~(~vec4<u32>(u_input.b, func_1(Struct_3(false, Struct_1(global1.x, true, global0.xz, vec4<u32>(4294967295u, u_input.b, 98979u, u_input.c), 1u), 1411f, global0.x), Struct_3(global0.x, Struct_1(global1.x, true, global0.zx, vec4<u32>(u_input.e.x, u_input.d, u_input.b, u_input.c), u_input.c), -1000f, true), Struct_2(Struct_1(2147483647i, global0.x, global0.zx, vec4<u32>(28165u, u_input.a, u_input.b, u_input.e.x), u_input.b), Struct_1(-1i, false, vec2<bool>(false, global0.x), vec4<u32>(59409u, u_input.b, u_input.c, u_input.d), u_input.d))), 1u, u_input.e.x ^ u_input.e.x)), u_input.d);
    let var_1 = -1i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(~70768u, var_0.d.x, 1u, u_input.d), _wgslsmith_div_vec4_u32(var_0.d, var_0.d)) % 32u);
    let var_2 = select(vec4<bool>(true, !any(vec3<bool>(true, true, true)), var_0.b, global0.x), !(!select(select(vec4<bool>(true, var_0.c.x, false, var_0.c.x), vec4<bool>(var_0.b, var_0.b, global0.x, false), var_0.b), select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(global0.x, false, var_0.b, false), false), all(vec3<bool>(global0.x, true, global0.x)))), global0.x);
    let var_3 = vec4<i32>(-1i) * -vec4<i32>(~abs(var_0.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 0i, 2147483647i), vec3<i32>(2147483647i, var_0.a, var_1)), -25561i, 33439i);
    let var_4 = Struct_3(all(vec2<bool>(!global0.x, ~var_0.e == (var_0.d.x ^ 4294967295u))), Struct_1(var_0.a, any(vec2<bool>(true, true)), select(!vec2<bool>(var_0.c.x, var_2.x), select(select(vec2<bool>(var_2.x, global0.x), var_0.c, vec2<bool>(var_0.b, false)), var_2.wy, !global0.zz), var_0.c), vec4<u32>(countOneBits(var_0.d.x), ~(var_0.e | var_0.e), 4294967295u, _wgslsmith_div_u32(var_0.d.x, 4294967295u)), u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -370f), var_2.x);
    let var_5 = var_4.b;
    global2 = array<Struct_2, 28>();
    let var_6 = ~countOneBits(vec3<u32>(4294967295u, ~select(67163u, 29288u, var_0.b), u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~abs(_wgslsmith_mod_u32(9041u, u_input.e.x)), 9301u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(308f, 601f, var_4.c, -2304f)))))));
}

