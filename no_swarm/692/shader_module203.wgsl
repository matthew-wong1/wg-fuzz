struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(41201u, 4294967295u, 19142u), vec3<u32>(0u, 0u, 1u), vec3<u32>(10099u, 17239u, 38522u), vec3<u32>(16404u, 4294967295u, 1u), vec3<u32>(76430u, 35051u, 4294967295u), vec3<u32>(0u, 1u, 4923u), vec3<u32>(4294967295u, 1u, 5825u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(115175u, 4294967295u, 3421u), vec3<u32>(1528u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 79119u, 19810u), vec3<u32>(40962u, 20723u, 4294967295u), vec3<u32>(1u, 59669u, 56487u), vec3<u32>(4294967295u, 59834u, 20133u), vec3<u32>(10690u, 25959u, 4294967295u), vec3<u32>(0u, 1u, 31329u), vec3<u32>(18405u, 4294967295u, 4294967295u), vec3<u32>(7506u, 4294967295u, 7064u), vec3<u32>(72174u, 0u, 14871u), vec3<u32>(0u, 39769u, 1u), vec3<u32>(1u, 4294967295u, 10909u), vec3<u32>(51352u, 76049u, 1u), vec3<u32>(4294967295u, 13852u, 26431u), vec3<u32>(30396u, 5994u, 1u));

var<private> global1: bool;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(false, Struct_1(-28679i, 1i), Struct_1(-15872i, -38204i)), Struct_2(false, Struct_1(2147483647i, 6121i), Struct_1(-48896i, -47187i)), Struct_2(false, Struct_1(i32(-2147483648), -3430i), Struct_1(-1i, 0i)), Struct_2(true, Struct_1(2147483647i, -33145i), Struct_1(-41937i, -6771i)), Struct_2(true, Struct_1(-23113i, i32(-2147483648)), Struct_1(-58958i, 2147483647i)), Struct_2(true, Struct_1(29589i, 329i), Struct_1(1733i, -22490i)), Struct_2(true, Struct_1(-7377i, 2147483647i), Struct_1(-1i, 19504i)), Struct_2(false, Struct_1(-68564i, 11934i), Struct_1(-38347i, 1i)), Struct_2(false, Struct_1(-61556i, -62869i), Struct_1(i32(-2147483648), -32556i)), Struct_2(false, Struct_1(0i, -8996i), Struct_1(22513i, 2147483647i)), Struct_2(false, Struct_1(-16826i, 1i), Struct_1(-24785i, 50988i)), Struct_2(false, Struct_1(-1i, i32(-2147483648)), Struct_1(1i, -1i)), Struct_2(false, Struct_1(i32(-2147483648), 1i), Struct_1(2147483647i, 1i)), Struct_2(false, Struct_1(-44033i, 24370i), Struct_1(1705i, -11383i)), Struct_2(true, Struct_1(1i, 34259i), Struct_1(-93876i, 16177i)), Struct_2(false, Struct_1(i32(-2147483648), -1i), Struct_1(i32(-2147483648), -13554i)), Struct_2(true, Struct_1(0i, -707i), Struct_1(-1i, 1168i)), Struct_2(false, Struct_1(0i, 55923i), Struct_1(18766i, 2147483647i)), Struct_2(false, Struct_1(1i, -13126i), Struct_1(-639i, i32(-2147483648))), Struct_2(false, Struct_1(2147483647i, 39217i), Struct_1(0i, 1i)), Struct_2(true, Struct_1(40425i, -37374i), Struct_1(-8663i, i32(-2147483648))), Struct_2(true, Struct_1(1i, i32(-2147483648)), Struct_1(-24868i, 85839i)), Struct_2(true, Struct_1(28355i, i32(-2147483648)), Struct_1(23453i, 42440i)), Struct_2(true, Struct_1(7921i, 2147483647i), Struct_1(8180i, 2147483647i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = -18652i;
    var var_1 = u_input.b;
    var var_2 = Struct_1(i32(-1i) * -1i, -u_input.c);
    var var_3 = Struct_1(-12740i & _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0, arg_0.x, var_0, var_0) << (vec4<u32>(4294967295u, 66337u, u_input.b, 26240u) % vec4<u32>(32u)), select(arg_0, arg_0, vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), ~vec4<i32>(var_2.a, var_2.b, 2147483647i, 56996i)), arg_0.x);
    let var_4 = global2[_wgslsmith_index_u32(7725u << (abs(_wgslsmith_mult_u32(u_input.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, 0u), u_input.b))) % 32u), 24u)];
    return 0i != ~var_3.b;
}

fn func_2() -> Struct_2 {
    let var_0 = 1u;
    global1 = false;
    global1 = true;
    global1 = true || !(!func_3(reverseBits(vec4<i32>(u_input.a, u_input.c, u_input.a, 34103i))));
    var var_1 = Struct_1(0i, 11289i);
    return global2[_wgslsmith_index_u32(4294967295u, 24u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec3<u32>, 24>();
    let var_0 = func_2().b;
    global2 = array<Struct_2, 24>();
    var var_1 = firstTrailingBit(~vec2<i32>(26144i, u_input.a & 65323i) ^ ~select(vec2<i32>(1i, -38843i), -vec2<i32>(arg_2.c.a, var_0.a), vec2<bool>(true, arg_2.a)));
    global1 = arg_0.x;
    return arg_2.c;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec3<u32>, 24>();
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, abs(select(~60063u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(54498u, 0u)), select(true, arg_0.a, arg_0.a))), ~(u_input.b >> (~u_input.b % 32u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), 14820u | u_input.b, firstTrailingBit(1u), firstTrailingBit(4294967295u)), select(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 5847u, 1u), vec4<u32>(u_input.b, u_input.b, 14501u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(67950u, 70606u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 2789u, 62278u), vec4<u32>(4294967295u, 0u, 14560u, u_input.b)), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) | vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), ~min(vec4<u32>(4294967295u, 15431u, u_input.b, 0u), vec4<u32>(u_input.b, 39758u, 4294967295u, 1u)), select(vec4<bool>(false, arg_0.a, arg_0.a, true), !vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), false))));
    let var_1 = vec4<i32>(i32(-1i) * -u_input.a, -1i, min(~3288i >> (~(~u_input.b) % 32u), reverseBits(~_wgslsmith_clamp_i32(2147483647i, arg_0.c.a, 66466i))), _wgslsmith_mult_i32(arg_0.b.b, _wgslsmith_sub_i32(~1i, max(arg_0.c.b ^ arg_0.c.a, u_input.a))));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x << (u_input.b % 32u), 1u), ~var_0.wy), ~vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.b, u_input.b), ~1u)) << (111489u % 32u);
    var var_3 = true;
    return Struct_2(_wgslsmith_f_op_f32(-1f) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1271f * -876f), _wgslsmith_f_op_f32(sign(-689f)))), _wgslsmith_f_op_f32(168f - _wgslsmith_f_op_f32(-717f * 1016f)))), func_4(select(select(select(vec2<bool>(arg_0.a, true), vec2<bool>(false, true), vec2<bool>(false, arg_0.a)), vec2<bool>(arg_0.a, true), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a))), vec2<bool>(true, true), true), !select(arg_0.a, true, func_3(var_1)), arg_0), func_2().b);
}

fn func_1() -> bool {
    global1 = true;
    let var_0 = func_5(Struct_2(reverseBits(u_input.c) < 11319i, Struct_1(6811i, _wgslsmith_clamp_i32(u_input.a, u_input.c, 41786i) & u_input.a), func_4(vec2<bool>(true, true), true, func_2())));
    let var_1 = ~u_input.b;
    global2 = array<Struct_2, 24>();
    let var_2 = func_5(func_5(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(~var_1, ~u_input.b)), 24u)]));
    return all(vec3<bool>(_wgslsmith_mod_u32(4294967295u, 1u) < ~_wgslsmith_div_u32(u_input.b, 46495u), any(!vec4<bool>(false, false, var_0.a, var_2.a)), func_5(func_2()).c.a < u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f)) + _wgslsmith_f_op_f32(ceil(1557f))) > 155f;
    global0 = array<vec3<u32>, 24>();
    global0 = array<vec3<u32>, 24>();
    var var_0 = select(vec4<bool>(false, true, true, !func_1()), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, false, true), all(vec3<bool>(true, false, false))), !func_2().a), !(!vec4<bool>(false, -33425i <= u_input.c, select(true, false, false), any(vec4<bool>(false, true, true, true)))));
    let var_1 = vec3<i32>(reverseBits(firstLeadingBit(2147483647i)) << (_wgslsmith_clamp_u32(0u, firstLeadingBit(4294967295u), u_input.b) % 32u), func_4(select(select(!var_0.yx, var_0.zx, vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x || var_0.x, 1u >= u_input.b), select(var_0.zy, var_0.yx, var_0.x | var_0.x)), var_0.x, func_5(func_2())).a, -88315i);
    global0 = array<vec3<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1259f, 1213f, -276f), vec3<f32>(349f, -1259f, -880f))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(602f)), _wgslsmith_div_f32(652f, 1051f), -788f))), ~abs(_wgslsmith_mod_u32(u_input.b >> (6615u % 32u), _wgslsmith_mod_u32(1u, 35408u))));
}

