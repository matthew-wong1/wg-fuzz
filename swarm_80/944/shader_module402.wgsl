struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 27277u;

var<private> global1: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(i32(-2147483648), 2147483647i, -347i), vec3<i32>(0i, 30217i, 0i), vec3<i32>(2402i, 9511i, -74332i), vec3<i32>(29044i, 18666i, 25159i), vec3<i32>(0i, -7489i, 26304i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(0i, -5027i, 30629i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(-1i, 12033i, -1i), vec3<i32>(21736i, 2147483647i, 15003i), vec3<i32>(-16232i, 3992i, 1i), vec3<i32>(63332i, 0i, i32(-2147483648)), vec3<i32>(71206i, 0i, 1i), vec3<i32>(1i, -1i, 19725i), vec3<i32>(i32(-2147483648), 109849i, -1i), vec3<i32>(1226i, -1i, -26051i), vec3<i32>(2147483647i, -1i, -32055i));

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(142f, vec4<i32>(-1i, 1i, -1i, -19642i), false), Struct_1(-1966f, vec4<i32>(-31987i, -7523i, -10100i, -16345i), true), Struct_1(178f, vec4<i32>(-1i, i32(-2147483648), 2770i, 31836i), true), Struct_1(-784f, vec4<i32>(2147483647i, -22658i, -45631i, 0i), true), Struct_1(1414f, vec4<i32>(-7241i, 9248i, 1i, 1i), true), Struct_1(113f, vec4<i32>(0i, -8233i, 0i, 2147483647i), true), Struct_1(-1916f, vec4<i32>(57142i, i32(-2147483648), -1i, 1i), true), Struct_1(-473f, vec4<i32>(-5166i, 4588i, 23785i, -24020i), false), Struct_1(-448f, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 1i), true), Struct_1(-570f, vec4<i32>(i32(-2147483648), 2147483647i, 0i, i32(-2147483648)), true), Struct_1(880f, vec4<i32>(1720i, 12470i, 1i, -1196i), false), Struct_1(357f, vec4<i32>(0i, -47466i, 1i, 1057i), false), Struct_1(-661f, vec4<i32>(0i, 1i, 1i, -6975i), false), Struct_1(1199f, vec4<i32>(-1i, 1i, -1i, 12207i), false), Struct_1(747f, vec4<i32>(-1i, i32(-2147483648), 121i, -47013i), false), Struct_1(1034f, vec4<i32>(-9681i, 1i, 2147483647i, i32(-2147483648)), false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<u32>) -> vec3<u32> {
    global1 = array<vec3<i32>, 17>();
    global2 = array<Struct_1, 16>();
    var var_0 = u_input.a.x;
    let var_1 = firstTrailingBit(max(vec2<i32>(countOneBits(firstLeadingBit(-6131i)), u_input.a.x), u_input.a));
    global1 = array<vec3<i32>, 17>();
    return vec3<u32>(reverseBits(arg_0.x) & _wgslsmith_sub_u32(1u, ~select(arg_0.x, 48211u, false)), u_input.b.x, ~u_input.b.x);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    global2 = array<Struct_1, 16>();
    let var_0 = !(abs(u_input.a.x) < min(arg_1, ~abs(arg_0.b.x)));
    global1 = array<vec3<i32>, 17>();
    global0 = u_input.b.x;
    let var_1 = 1u;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(-arg_0.b, select(arg_0.b, vec4<i32>(arg_0.b.x, 0i, 2147483647i, u_input.a.x), vec4<bool>(var_0, arg_0.c, var_0, true)), arg_0.c) ^ arg_0.b, _wgslsmith_mult_vec4_i32(arg_0.b ^ arg_0.b, min(arg_0.b << (vec4<u32>(u_input.c, 0u, var_1, u_input.c) % vec4<u32>(32u)), arg_0.b))), _wgslsmith_div_vec4_i32(arg_0.b, vec4<i32>(-25520i, -_wgslsmith_div_i32(arg_1, -2147483647i), ~arg_0.b.x, ~arg_1)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    var var_0 = ~func_3(Struct_1(-1725f, vec4<i32>(1i, 0i, 1i, countOneBits(-26604i)), true), arg_0.b.x);
    global0 = ~u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(677f, 441f, arg_1.x, arg_0.a), vec4<f32>(arg_0.a, 1267f, -190f, arg_1.x), true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a, -1502f, 1070f, 444f), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -900f))), true))))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(661f, -701f)), _wgslsmith_f_op_f32(1000f * arg_0.a))), _wgslsmith_f_op_f32(floor(128f)), _wgslsmith_f_op_f32(step(arg_0.a, -677f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.a, 185f)), _wgslsmith_f_op_f32(-342f + arg_1.x))), arg_0.a, _wgslsmith_f_op_f32(sign(arg_1.x)), arg_0.a)), true));
    let var_2 = -(~_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, arg_0.b.x, 2147483647i))), arg_0.b.zwy));
    global0 = ~4294967295u;
    return var_2 >> (~10777u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_div_u32(25494u, 1u)) ^ _wgslsmith_dot_vec3_u32(func_1((vec4<u32>(1u, 0u, 4294967295u, 5919u) >> (vec4<u32>(4498u, 1u, 90983u, u_input.c) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b.x, u_input.c, u_input.c, 1u) % vec4<u32>(32u))), vec3<u32>(0u, abs(u_input.c), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(68761u, u_input.c, u_input.c, 91436u), vec4<u32>(u_input.c, 0u, 0u, u_input.c)), vec4<u32>(u_input.c, u_input.c, 24236u, u_input.c))));
    let var_1 = vec3<bool>(!((true && all(vec3<bool>(true, false, false))) && any(vec4<bool>(false, false, true, true))), (true | any(vec3<bool>(false, true, true))) | all(vec4<bool>(true, true, true, true)), u_input.a.x <= ~2147483647i);
    var var_2 = Struct_1(-1413f, ~firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(36487i, u_input.a.x), -u_input.a.x, abs(u_input.a.x), func_2(global2[_wgslsmith_index_u32(87829u, 16u)], vec2<f32>(-1045f, 1355f)))), var_1.x);
    var var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(44388u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(~58327u, ~43900u, ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 22002u, 126493u), vec4<u32>(u_input.b.x, 1u, u_input.c, u_input.b.x))), max(~vec4<u32>(u_input.b.x, u_input.c, u_input.c, 50650u), select(vec4<u32>(65821u, 32618u, 40985u, u_input.c), vec4<u32>(u_input.b.x, u_input.b.x, 57162u, u_input.b.x), var_2.c)))), 16u)];
    global1 = array<vec3<i32>, 17>();
    var var_4 = var_2.b.xzz;
    let var_5 = ~min(firstTrailingBit(u_input.b.x), _wgslsmith_div_u32(func_1(vec4<u32>(1u, 90377u, 0u, 0u)).x, 1u & u_input.c) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, u_input.b.x, 14059u, u_input.c)));
    global1 = array<vec3<i32>, 17>();
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.b, ~_wgslsmith_div_u32(select(max(6119u, var_5), u_input.c, true), ~u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(10612u, u_input.c, var_5), vec3<u32>(u_input.b.x, 40371u, var_5)) % 32u)), ~abs(u_input.c));
}

