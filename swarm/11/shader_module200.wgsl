struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(37754i, -24198i, 12635u, vec2<u32>(0u, 1u), Struct_1(4294967295u, vec3<f32>(416f, -1000f, -1360f), -29949i, 1u)), Struct_3(0i, 36838i, 0u, vec2<u32>(0u, 0u), Struct_1(0u, vec3<f32>(1058f, -913f, -966f), 2147483647i, 48720u)), Struct_3(-21169i, -18246i, 4545u, vec2<u32>(1232u, 0u), Struct_1(12632u, vec3<f32>(-1237f, -1233f, -745f), -8615i, 29067u)), Struct_3(2147483647i, 11882i, 50755u, vec2<u32>(4294967295u, 14495u), Struct_1(4294967295u, vec3<f32>(-698f, 1000f, 181f), 29769i, 0u)), Struct_3(103955i, 1i, 26407u, vec2<u32>(4294967295u, 53621u), Struct_1(14687u, vec3<f32>(1541f, -309f, -2485f), -1i, 1u)), Struct_3(2147483647i, 1i, 996u, vec2<u32>(1u, 32951u), Struct_1(34732u, vec3<f32>(533f, -493f, -1057f), -24408i, 20760u)), Struct_3(2147483647i, 2147483647i, 0u, vec2<u32>(4294967295u, 4294967295u), Struct_1(0u, vec3<f32>(-1427f, -810f, 1235f), 1i, 4294967295u)), Struct_3(1i, 2147483647i, 54815u, vec2<u32>(49729u, 35818u), Struct_1(4294967295u, vec3<f32>(-156f, -1686f, 1222f), i32(-2147483648), 0u)), Struct_3(-10218i, 14773i, 9920u, vec2<u32>(695u, 64943u), Struct_1(1u, vec3<f32>(272f, -405f, 1056f), 34229i, 70218u)), Struct_3(2147483647i, 5973i, 1u, vec2<u32>(18888u, 4294967295u), Struct_1(0u, vec3<f32>(1174f, -1001f, -262f), 0i, 5525u)), Struct_3(560i, 32884i, 20068u, vec2<u32>(4294967295u, 1u), Struct_1(4294967295u, vec3<f32>(-870f, 130f, 404f), 59682i, 2838u)), Struct_3(1931i, i32(-2147483648), 4294967295u, vec2<u32>(1u, 53459u), Struct_1(18637u, vec3<f32>(-1100f, -1159f, -2102f), 2147483647i, 6891u)), Struct_3(-40780i, -1i, 1u, vec2<u32>(4294967295u, 4294967295u), Struct_1(0u, vec3<f32>(-527f, -1000f, 442f), 58439i, 22569u)), Struct_3(-1i, 1i, 1816u, vec2<u32>(69092u, 1u), Struct_1(1u, vec3<f32>(-2257f, -251f, -1448f), i32(-2147483648), 4294967295u)), Struct_3(24174i, 8936i, 44233u, vec2<u32>(0u, 0u), Struct_1(23016u, vec3<f32>(-1540f, 1984f, 471f), 0i, 32761u)), Struct_3(-26883i, 0i, 4294967295u, vec2<u32>(86799u, 1u), Struct_1(8151u, vec3<f32>(276f, 625f, 1063f), 18415i, 0u)), Struct_3(47414i, 96491i, 21735u, vec2<u32>(103614u, 4294967295u), Struct_1(88252u, vec3<f32>(1693f, -165f, 693f), -1i, 38437u)), Struct_3(-1i, -17037i, 4983u, vec2<u32>(8033u, 59u), Struct_1(28448u, vec3<f32>(737f, 913f, 113f), 3025i, 2812u)), Struct_3(-10298i, -1i, 0u, vec2<u32>(1u, 4294967295u), Struct_1(0u, vec3<f32>(-1000f, 1153f, -1000f), 4249i, 34941u)), Struct_3(0i, 30179i, 84684u, vec2<u32>(4294967295u, 39311u), Struct_1(0u, vec3<f32>(1000f, -583f, 1000f), -1i, 1u)), Struct_3(9420i, 1i, 0u, vec2<u32>(0u, 4294967295u), Struct_1(1u, vec3<f32>(1024f, -1020f, -1094f), 0i, 1u)), Struct_3(41265i, 14935i, 0u, vec2<u32>(3026u, 40007u), Struct_1(1u, vec3<f32>(2188f, 316f, -1000f), 9646i, 87165u)), Struct_3(1i, 20018i, 38107u, vec2<u32>(0u, 68980u), Struct_1(0u, vec3<f32>(606f, 329f, -690f), -35887i, 1u)), Struct_3(-10629i, -2402i, 4294967295u, vec2<u32>(0u, 0u), Struct_1(4294967295u, vec3<f32>(241f, -205f, -1140f), -13345i, 11953u)));

var<private> global1: bool = false;

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 19>;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    global2 = Struct_1(select(1u, u_input.e.x, all(arg_0.yz)) ^ 1u, vec3<f32>(_wgslsmith_f_op_f32(global2.b.x - -1877f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, global2.b.x))), global2.b.x), -29374i, 19253u);
    var var_0 = Struct_2(~u_input.e.x);
    global4 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-129f, arg_1, global2.b.x, -835f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.x, arg_1, global2.b.x, arg_1), vec4<f32>(arg_1, arg_1, arg_1, global2.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(907f, 994f, arg_1, global2.b.x)))))))));
    var var_2 = var_0.a;
    return 16440u;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2036f, 1762f))) + global2.b.yz), _wgslsmith_f_op_vec2_f32(global2.b.zy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_3.b.x, -928f, var_0)), _wgslsmith_f_op_f32(772f + 1752f))))));
    var var_2 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u & arg_1.x, _wgslsmith_div_u32(arg_3.d, 55825u), firstTrailingBit(arg_0)), ~(u_input.e | u_input.e)), ~func_3(!vec3<bool>(var_0, false, arg_2), _wgslsmith_f_op_f32(-arg_3.b.x))));
    var var_3 = Struct_3(_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_clamp_i32(arg_3.c, -abs(-2147483647i), _wgslsmith_clamp_i32(global2.c, firstTrailingBit(2147483647i), u_input.d.x & -62405i))), arg_3.c, ~arg_0, vec2<u32>(countOneBits(0u), _wgslsmith_sub_u32(~arg_0, countOneBits(15308u))) & select(arg_1.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x) | vec2<u32>(global2.d, var_2.a), countOneBits(vec2<u32>(28525u, 4294967295u)), vec2<u32>(u_input.e.x, global2.d)), select(vec2<bool>(arg_2, var_0), !vec2<bool>(var_0, arg_2), select(arg_2, var_0, var_0))), Struct_1(arg_1.x, global2.b, u_input.d.x, 6788u));
    var var_4 = 0i;
    return -59088i;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global3 = array<vec3<u32>, 19>();
    var var_0 = firstTrailingBit(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-39370i ^ global2.c, 1827i | arg_0.c), i32(-1i) * -2147483647i, global2.c));
    var var_1 = Struct_2(23950u);
    let var_2 = Struct_2(~1u);
    let var_3 = 4294967295u | ~(~(~global2.d));
    return Struct_1(_wgslsmith_clamp_u32(~33848u, 42520u, _wgslsmith_dot_vec3_u32(min(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(global2.a, var_2.a)), 19u)], ~u_input.e.yzy), reverseBits(min(vec3<u32>(var_2.a, var_2.a, global2.a), global3[_wgslsmith_index_u32(1u, 19u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.b)) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -1226f, -221f)), select(~_wgslsmith_mod_i32(17679i, 2147483647i), arg_0.c, true && any(vec4<bool>(true, false, false, false))) << (~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 9601u, var_2.a), countOneBits(u_input.e)) % 32u), abs(u_input.e.x));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_2(u_input.e.x);
    var var_1 = func_4(Struct_1(_wgslsmith_div_u32(~1u, u_input.e.x), _wgslsmith_f_op_vec3_f32(arg_0.e.b * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.b.x, 1000f, -534f))), arg_0.e.b)), ~(~func_2(arg_1, u_input.e.xxz, true, Struct_1(arg_0.c, arg_0.e.b, 27924i, u_input.e.x))), _wgslsmith_mod_u32(~arg_1, 0u >> ((var_0.a << (27831u % 32u)) % 32u))));
    global0 = array<Struct_3, 24>();
    var_0 = Struct_2(max(select(~reverseBits(global2.a), ~abs(4294967295u), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), u_input.e.x ^ reverseBits(global2.d | 58422u)));
    let var_2 = Struct_1(arg_0.d.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1220f), 145f, arg_0.e.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2663f, 289f, arg_0.e.b.x), _wgslsmith_f_op_vec3_f32(abs(var_1.b))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(185f, var_1.b.x, global2.b.x) + var_1.b)))))), -_wgslsmith_sub_i32(-19528i & (2147483647i | arg_0.a), -3030i), max(~_wgslsmith_clamp_u32(1u, abs(arg_0.e.a), ~var_1.d), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_1.a), vec2<u32>(1u, arg_0.d.x)), abs(u_input.e.yz)), ~(~5285u))));
    return Struct_3(abs(u_input.c), 1739i, reverseBits(1u), vec2<u32>(var_1.a ^ var_0.a, var_0.a), Struct_1(min(_wgslsmith_mod_u32(0u, var_1.a), arg_1) >> (arg_0.e.a % 32u), var_2.b, -1i, _wgslsmith_sub_u32(firstTrailingBit(min(4294967295u, 47972u)), ~arg_1)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    global4 = true;
    var var_0 = u_input.e;
    global4 = arg_0.x;
    var_0 = min(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, 0u, ~4294967295u, global2.d), u_input.e), u_input.e);
    var var_1 = func_1(global0[_wgslsmith_index_u32(4294967295u, 24u)], ~_wgslsmith_add_u32(1u, 0u));
    return var_0.x;
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> bool {
    global2 = Struct_1(~84362u, arg_2.e.b, u_input.c, _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), ~arg_0), _wgslsmith_sub_u32(4294967295u, ~arg_2.e.d)));
    global2 = arg_2.e;
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, -1i, 0i, i32(-1i) * -7194i), _wgslsmith_mod_vec4_i32(min(vec4<i32>(arg_2.a, 22771i, -1i, arg_2.b), vec4<i32>(-2147483647i, arg_2.a, u_input.b, arg_2.b)) << (~vec4<u32>(1u, global2.d, 54554u, u_input.e.x) % vec4<u32>(32u)), vec4<i32>(global2.c, u_input.d.x, -1i, 22805i))), min(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d ^ u_input.d, u_input.d), u_input.d), u_input.d.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-func_4(arg_2.e).b.x), -972f, func_1(Struct_3(2147483647i, -39539i >> (global2.a % 32u), ~40030u, vec2<u32>(global2.d, global2.d), func_4(arg_2.e)), u_input.e.x).e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.e.b.x)))));
    global0 = array<Struct_3, 24>();
    return arg_1;
}

fn func_7(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: bool) -> Struct_2 {
    global4 = func_3(vec3<bool>(arg_3, !any(arg_1), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - 743f)) * global2.b.x)) <= _wgslsmith_mod_u32(1u, ~(_wgslsmith_clamp_u32(u_input.e.x, global2.d, global2.d) ^ ~30922u));
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(min(u_input.e.x, 4294967295u), 4294967295u), func_1(global0[_wgslsmith_index_u32(60704u, 24u)], global2.d).d << (u_input.e.zx % vec2<u32>(32u))), vec2<u32>(9909u, func_3(vec3<bool>(arg_2, arg_2, arg_1.x), arg_0.x) << (firstLeadingBit(28169u) % 32u))));
    global4 = arg_1.x;
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(func_1(global0[_wgslsmith_index_u32(39964u, 24u)], var_0.a).b, 1i), global2.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-32910i, u_input.d.x, u_input.b), vec3<i32>(global2.c, u_input.c, 1i)), -2147483647i)), vec3<i32>(-1i, global2.c, 1i << (global2.d % 32u))) ^ ~select(vec3<i32>(1i, -2147483647i, -global2.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, global2.c, -2147483647i), vec3<i32>(u_input.c, 0i, 2147483647i)) >> (u_input.e.zyy % vec3<u32>(32u)), any(select(vec4<bool>(true, false, arg_1.x, arg_2), vec4<bool>(arg_3, false, arg_2, arg_2), false)));
    global4 = arg_3;
    return Struct_2(~9372u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 513f;
    global4 = true;
    let var_1 = func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1930f, global2.b.x, global2.b.x, 1541f) * vec4<f32>(128f, global2.b.x, global2.b.x, global2.b.x)), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-234f, 356f, 1429f, -1036f), vec4<f32>(global2.b.x, 826f, -382f, global2.b.x))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))), !(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), func_6(func_5(select(vec2<bool>(false, true), vec2<bool>(true, true), true), func_1(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)], u_input.e.x)), false, global0[_wgslsmith_index_u32(firstTrailingBit(global2.a), 24u)]), true);
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(func_2(var_1.a, vec3<u32>(~global2.a, u_input.e.x, ~u_input.e.x), true == (var_1.a == 54378u), func_4(Struct_1(global2.a, global2.b, 38186i, 4294967295u))), func_4(Struct_1(~4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1455f, global2.b.x, -1862f)), 21988i, 6173u)).c), -(-2147483647i & ((1i ^ u_input.d.x) << (~1u % 32u))), 1i, func_2(84439u, ~_wgslsmith_mult_vec3_u32(~global3[_wgslsmith_index_u32(1628u, 19u)], ~vec3<u32>(var_1.a, 1u, 87190u)), false, Struct_1(0u, vec3<f32>(_wgslsmith_f_op_f32(floor(global2.b.x)), _wgslsmith_f_op_f32(global2.b.x + -421f), -892f), ~countOneBits(global2.c), ~(var_1.a ^ 0u))));
    global2 = Struct_1(_wgslsmith_clamp_u32(~var_1.a, global2.a, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, global2.d) & u_input.e.zy), firstLeadingBit(u_input.e.wx) ^ ~u_input.e.wz)), global2.b, 2147483647i, _wgslsmith_sub_u32(firstLeadingBit(0u & ~global2.d), var_1.a));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(global2.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, -208f, global2.b.x)))))), global2.b)));
    global0 = array<Struct_3, 24>();
    var_2 = abs(vec4<i32>(-global2.c, abs(-var_2.x | u_input.c), 1i, ~(-9742i)));
    let var_4 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a, _wgslsmith_div_u32(~global2.a, ~24720u)) & 61010u, 24u)], u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, 15343i, ~(-54135i)) | (-reverseBits(vec3<i32>(892i, 1i, 2147483647i)) | -vec3<i32>(global2.c, global2.c, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_3.x)))), _wgslsmith_f_op_f32(193f - _wgslsmith_f_op_f32(ceil(-233f))), global2.b.x), u_input.e.ww);
}

