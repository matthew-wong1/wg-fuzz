struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec2<u32>(82823u, 28255u), vec3<i32>(1i, 0i, 36799i), vec4<bool>(true, false, false, true), 0i, vec3<u32>(88183u, 54091u, 49819u)), vec4<bool>(false, false, true, false), Struct_1(vec2<u32>(14432u, 5065u), vec3<i32>(0i, 31582i, 0i), vec4<bool>(false, true, true, true), -1i, vec3<u32>(4294967295u, 68342u, 0u))), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec4<bool>(false, false, false, true), i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 0u)), vec4<bool>(true, true, false, false), Struct_1(vec2<u32>(80924u, 4294967295u), vec3<i32>(2147483647i, 1i, -1i), vec4<bool>(true, true, false, true), -27241i, vec3<u32>(0u, 2791u, 24054u))), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec3<i32>(0i, 19539i, 1i), vec4<bool>(false, false, true, true), 2147483647i, vec3<u32>(4294967295u, 272u, 81368u)), vec4<bool>(true, false, false, false), Struct_1(vec2<u32>(7272u, 0u), vec3<i32>(-1i, 39207i, 911i), vec4<bool>(true, false, true, false), 3843i, vec3<u32>(0u, 4294967295u, 53197u))), Struct_2(Struct_1(vec2<u32>(1u, 36055u), vec3<i32>(53591i, -16795i, 2147483647i), vec4<bool>(true, false, true, false), 45797i, vec3<u32>(1u, 1u, 11923u)), vec4<bool>(false, false, false, false), Struct_1(vec2<u32>(0u, 100392u), vec3<i32>(4092i, i32(-2147483648), -1i), vec4<bool>(false, false, false, false), -16915i, vec3<u32>(22859u, 13753u, 11121u))), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<i32>(34797i, -1i, 7062i), vec4<bool>(true, true, true, true), 2147483647i, vec3<u32>(0u, 68943u, 31213u)), vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(21995u, 4294967295u), vec3<i32>(2147483647i, -1i, -46740i), vec4<bool>(false, false, true, true), -27798i, vec3<u32>(29977u, 10372u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(1u, 26815u), vec3<i32>(-31193i, 1i, -27197i), vec4<bool>(false, false, true, true), 1i, vec3<u32>(4294967295u, 1u, 1u)), vec4<bool>(true, false, false, false), Struct_1(vec2<u32>(9731u, 1u), vec3<i32>(0i, -15346i, -39267i), vec4<bool>(false, true, false, false), 0i, vec3<u32>(1u, 1u, 8772u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec3<i32>(-30552i, -13668i, 2147483647i), vec4<bool>(false, false, true, true), -66671i, vec3<u32>(29677u, 0u, 4294967295u)), vec4<bool>(false, false, true, false), Struct_1(vec2<u32>(12474u, 4294967295u), vec3<i32>(946i, 2147483647i, 3718i), vec4<bool>(true, false, true, true), 2147483647i, vec3<u32>(0u, 55149u, 64994u))), Struct_2(Struct_1(vec2<u32>(8197u, 0u), vec3<i32>(i32(-2147483648), 1i, 0i), vec4<bool>(true, true, true, false), -13608i, vec3<u32>(1u, 0u, 1u)), vec4<bool>(false, true, true, false), Struct_1(vec2<u32>(1u, 57950u), vec3<i32>(i32(-2147483648), 1i, 0i), vec4<bool>(true, false, true, true), 2147483647i, vec3<u32>(0u, 0u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(1u, 6410u), vec3<i32>(20703i, 0i, 0i), vec4<bool>(true, false, false, true), 20664i, vec3<u32>(45810u, 21251u, 75091u)), vec4<bool>(false, false, false, false), Struct_1(vec2<u32>(4294967295u, 0u), vec3<i32>(0i, 1i, 48946i), vec4<bool>(true, false, true, false), i32(-2147483648), vec3<u32>(1u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(55438u, 17024u), vec3<i32>(-3227i, -1i, 14934i), vec4<bool>(true, false, true, true), -2544i, vec3<u32>(36984u, 0u, 1u)), vec4<bool>(false, true, false, false), Struct_1(vec2<u32>(38228u, 4294967295u), vec3<i32>(1i, 22064i, 1i), vec4<bool>(false, true, false, false), 3012i, vec3<u32>(1u, 1u, 6318u))), Struct_2(Struct_1(vec2<u32>(62179u, 20783u), vec3<i32>(-8371i, -30185i, -30503i), vec4<bool>(false, true, true, true), -1i, vec3<u32>(41353u, 40916u, 4294967295u)), vec4<bool>(true, true, true, false), Struct_1(vec2<u32>(90191u, 48857u), vec3<i32>(-34386i, 8781i, -12969i), vec4<bool>(true, false, true, true), i32(-2147483648), vec3<u32>(1u, 4294967295u, 24386u))), Struct_2(Struct_1(vec2<u32>(52705u, 4294967295u), vec3<i32>(1i, -18218i, 47643i), vec4<bool>(false, false, true, false), -2930i, vec3<u32>(1u, 0u, 0u)), vec4<bool>(true, false, false, false), Struct_1(vec2<u32>(4294967295u, 30214u), vec3<i32>(45026i, 15730i, 28193i), vec4<bool>(true, false, false, true), -1i, vec3<u32>(14834u, 39278u, 0u))), Struct_2(Struct_1(vec2<u32>(20743u, 1u), vec3<i32>(2147483647i, i32(-2147483648), -24872i), vec4<bool>(true, true, true, false), 0i, vec3<u32>(1712u, 51609u, 4294967295u)), vec4<bool>(false, false, false, false), Struct_1(vec2<u32>(20933u, 1u), vec3<i32>(-739i, 2147483647i, i32(-2147483648)), vec4<bool>(false, false, false, true), 2147483647i, vec3<u32>(24574u, 34767u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 15216u), vec3<i32>(10241i, 11733i, i32(-2147483648)), vec4<bool>(false, false, true, false), 2147483647i, vec3<u32>(45310u, 4294967295u, 60619u)), vec4<bool>(true, true, false, false), Struct_1(vec2<u32>(0u, 4294967295u), vec3<i32>(19839i, -817i, 0i), vec4<bool>(false, false, false, true), 49668i, vec3<u32>(42479u, 49056u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec3<i32>(-1i, -4546i, -61906i), vec4<bool>(true, false, false, true), 1i, vec3<u32>(66049u, 4294967295u, 1u)), vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(0u, 48407u), vec3<i32>(-18437i, -17285i, -33541i), vec4<bool>(false, false, false, true), -19216i, vec3<u32>(83032u, 29353u, 13114u))));

var<private> global2: i32 = 1i;

var<private> global3: bool = false;

var<private> global4: array<bool, 18>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_div_f32(796f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -242f))))));
    global0 = _wgslsmith_add_u32(countOneBits(firstLeadingBit(4294967295u)), 0u);
    global4 = array<bool, 18>();
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a.x, 15u)];
    var var_2 = global1[_wgslsmith_index_u32(var_1.a.a.x, 15u)];
    return u_input.a.yx;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 23252i;
    global4 = array<bool, 18>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~(~firstTrailingBit(1u)), ~(~(~u_input.a.x))), 0u);
    global1 = array<Struct_2, 15>();
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(~(~u_input.a.zz), func_3(_wgslsmith_f_op_f32(ceil(-832f)), vec2<i32>(var_0, var_0))) | vec2<u32>(17578u, ~func_3(2455f, vec2<i32>(2147483647i, var_0)).x), _wgslsmith_add_vec3_i32(-(~vec3<i32>(-2147483647i, var_0, -1696i)) << (vec3<u32>(select(u_input.a.x, 0u, global4[_wgslsmith_index_u32(u_input.a.x, 18u)]), 4294967295u, 2925u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(137i, var_0), ~var_0, abs(-56029i)), -vec3<i32>(23345i, var_0, var_0) << (firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))), vec4<bool>(true, arg_0, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 22517u, u_input.a.x), vec4<u32>(4294967295u, 1u, 26399u, u_input.a.x)), 0u) >= select(4294967295u, ~64167u, any(vec3<bool>(false, false, global4[_wgslsmith_index_u32(u_input.a.x, 18u)]))), !(select(global4[_wgslsmith_index_u32(u_input.a.x, 18u)], global4[_wgslsmith_index_u32(u_input.a.x, 18u)], global4[_wgslsmith_index_u32(u_input.a.x, 18u)]) | any(vec4<bool>(true, true, arg_0, arg_0)))), var_0, u_input.a);
    return var_2;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = func_2(any(vec2<bool>(true, true)) || false);
    global3 = var_0.c.x;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), vec2<f32>(-436f, arg_2), false)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, 1000f), vec2<f32>(-264f, 1017f), global4[_wgslsmith_index_u32(14155u, 18u)])))))), vec2<f32>(arg_2, arg_2), vec2<bool>(!(arg_2 >= 740f), var_0.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-836f, arg_2) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), vec2<f32>(-387f, arg_2), var_0.c.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-475f, arg_2) + vec2<f32>(arg_2, -1789f)))))));
    global0 = arg_3;
    var var_2 = select(var_0.a, vec2<u32>(29022u, (func_3(arg_2, vec2<i32>(2147483647i, 34684i)).x & ~arg_3) << (reverseBits(var_0.e.x << (27039u % 32u)) % 32u)), false);
    return Struct_2(Struct_1(_wgslsmith_div_vec2_u32(abs(~vec2<u32>(90858u, u_input.a.x)), vec2<u32>(arg_1, arg_3) << (~vec2<u32>(15758u, arg_3) % vec2<u32>(32u))), -vec3<i32>(i32(-1i) * -46639i, firstTrailingBit(var_0.d), _wgslsmith_mod_i32(arg_0, 0i)), var_0.c, _wgslsmith_dot_vec2_i32(var_0.b.zy, func_2(any(vec3<bool>(true, global4[_wgslsmith_index_u32(var_2.x, 18u)], true))).b.xz), vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 41484u), u_input.a.zx)), 29050u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1, u_input.a.x), ~arg_3))), vec4<bool>(global4[_wgslsmith_index_u32(~u_input.a.x, 18u)] && false, !any(vec3<bool>(false, true, true)), select(func_2(true).a.x > u_input.a.x, global4[_wgslsmith_index_u32((var_0.a.x ^ 90277u) | max(u_input.a.x, arg_1), 18u)], min(arg_3, 66483u) >= func_3(arg_2, var_0.b.yy).x), any(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 18u)], true, global4[_wgslsmith_index_u32(1u, 18u)]))), func_2(any(select(var_0.c.wz, func_2(false).c.xw, vec2<bool>(false, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = -27880i;
    var var_1 = !vec2<bool>(arg_0.b.x & true, !(!arg_0.a.c.x));
    global4 = array<bool, 18>();
    var var_2 = Struct_1(~u_input.a.zx, vec3<i32>(0i, 1i, 0i), select(func_1(reverseBits(7407i & arg_0.a.b.x), 0u, _wgslsmith_f_op_f32(round(arg_1.a)), ~1u).c.c, select(!select(vec4<bool>(arg_0.b.x, false, global4[_wgslsmith_index_u32(4294967295u, 18u)], var_1.x), arg_0.a.c, vec4<bool>(true, var_1.x, arg_0.a.c.x, true)), select(vec4<bool>(false, arg_0.b.x, false, false), select(vec4<bool>(true, arg_0.c.c.x, false, true), vec4<bool>(global4[_wgslsmith_index_u32(0u, 18u)], var_1.x, true, true), var_1.x), arg_0.a.c), !(!arg_0.c.c)), any(!func_2(false).c.zy)), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(countOneBits(-30653i), ~arg_0.a.d)), -1i), select(abs(_wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_0.c.a.x, u_input.a.x, u_input.a.x)), abs(vec3<u32>(704u, 71611u, 1u)))), func_1(arg_0.a.b.x, 34938u, arg_1.a, select(max(3294u, 19960u), _wgslsmith_mult_u32(49495u, u_input.a.x), true)).a.e, select(vec3<bool>(arg_0.c.c.x && arg_0.a.c.x, false & arg_0.a.c.x, true), vec3<bool>(false, var_1.x, any(arg_0.c.c.xw)), arg_0.a.c.zxw)));
    let var_3 = ~(~arg_0.c.a.x >> (4294967295u % 32u));
    return func_2(global4[_wgslsmith_index_u32(u_input.a.x, 18u)]);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global0 = func_2(any(vec4<bool>(false, true, all(vec4<bool>(false, false, true, global4[_wgslsmith_index_u32(0u, 18u)])), 62976u <= u_input.a.x))).a.x >> (arg_0.e.x % 32u);
    global2 = ~arg_0.d;
    let var_0 = arg_0.a.x & arg_0.a.x;
    let var_1 = Struct_2(Struct_1(vec2<u32>(var_0 | 76052u, ~u_input.a.x), firstTrailingBit(func_1(-24863i, 0u, arg_1.x, 4294967295u).a.b) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-34358i, arg_0.b.x, arg_0.b.x), vec3<i32>(arg_0.d, -1i, 2147483647i)), !(!arg_0.c), arg_0.b.x, u_input.a), select(!arg_0.c, func_4(global1[_wgslsmith_index_u32(arg_0.e.x, 15u)], Struct_3(_wgslsmith_f_op_f32(370f - arg_1.x))).c, vec4<bool>(any(!arg_0.c.wzx), true, global4[_wgslsmith_index_u32(var_0 >> (firstTrailingBit(arg_0.a.x) % 32u), 18u)], _wgslsmith_f_op_f32(-arg_1.x) >= -711f)), arg_0);
    let var_2 = func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-294f - -1579f))), arg_0.b.zy).x;
    return Struct_1(_wgslsmith_div_vec2_u32(select(~vec2<u32>(0u, 4294967295u), func_4(Struct_2(Struct_1(vec2<u32>(arg_0.e.x, var_0), vec3<i32>(var_1.a.b.x, arg_0.b.x, 61730i), arg_0.c, arg_0.b.x, vec3<u32>(var_1.c.e.x, 1u, var_2)), var_1.c.c, arg_0), Struct_3(arg_1.x)).e.xx, !all(vec2<bool>(global4[_wgslsmith_index_u32(0u, 18u)], false))), select(_wgslsmith_sub_vec2_u32(~u_input.a.zz, _wgslsmith_mult_vec2_u32(arg_0.e.xz, u_input.a.zz)), vec2<u32>(76482u, 4294967295u), false)), vec3<i32>(var_1.c.b.x, -1i, ~(~(-17426i) ^ _wgslsmith_mult_i32(var_1.a.b.x, var_1.a.b.x))), vec4<bool>(arg_0.c.x || !(29408u > arg_0.a.x), func_1(_wgslsmith_mod_i32(var_1.a.d, ~arg_0.d), _wgslsmith_add_u32(arg_0.a.x, arg_0.e.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, -871f, global4[_wgslsmith_index_u32(var_0, 18u)])))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0.e.zz, var_1.a.e.zz), ~6581u)).b.x, arg_0.c.x, countOneBits(arg_0.d) >= -2147483647i), firstLeadingBit(2147483647i), abs(~(~(~vec3<u32>(4294967295u, 25767u, var_1.a.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-36006i, 50985i, -2147483647i, 9435i), vec4<i32>(26220i, -2147483647i, -33428i, -22658i))), 4294967295u, 1f, 1u), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1165f - 1445f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -916f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1142f, -1605f)), false))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1388f, -1650f), vec2<f32>(1000f, 2600f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, 1000f)))))))));
    var var_1 = firstTrailingBit(~firstTrailingBit(-select(var_0.d, var_0.b.x, false)));
    var var_2 = _wgslsmith_sub_vec3_u32(min(~var_0.e, ~_wgslsmith_div_vec3_u32(u_input.a, var_0.e) & u_input.a), vec3<u32>(u_input.a.x, 4294967295u & (var_0.a.x >> (max(1u, 7178u) % 32u)), func_1(_wgslsmith_add_i32(var_0.b.x, -2147483647i | var_0.b.x), max(func_3(-1509f, var_0.b.zx).x, _wgslsmith_dot_vec4_u32(vec4<u32>(20619u, u_input.a.x, 4294967295u, 39912u), vec4<u32>(31556u, 98658u, 0u, 4294967295u))), _wgslsmith_f_op_f32(ceil(-577f)), func_5(var_0, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1641f, 467f)))).a.x).c.e.x));
    global1 = array<Struct_2, 15>();
    global4 = array<bool, 18>();
    let var_3 = 1f;
    var_2 = ~var_0.e;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -569f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(0u, 42904u, var_0.e.x), var_0.e), vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(var_0.a.x, ~var_0.e.x, ~0u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(33281u, var_2.x, 71029u), vec3<u32>(0u, var_2.x, 1u)) ^ u_input.a));
}

