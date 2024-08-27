struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(-183f, 291f, -165f, 951f), vec2<bool>(true, true)), Struct_1(vec4<f32>(1000f, -1403f, 1131f, 1491f), vec2<bool>(true, false)), Struct_1(vec4<f32>(120f, 794f, -307f, -412f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1085f, 1759f, -710f, 755f), vec2<bool>(true, true)), Struct_1(vec4<f32>(-1727f, -1000f, 259f, -1150f), vec2<bool>(true, true)), Struct_1(vec4<f32>(641f, -828f, -792f, -649f), vec2<bool>(false, true)), Struct_1(vec4<f32>(-1902f, -859f, -1171f, 500f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-668f, 1000f, -1449f, -983f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-1086f, 828f, -142f, -549f), vec2<bool>(true, false)), Struct_1(vec4<f32>(1340f, -420f, -468f, -873f), vec2<bool>(false, false)), Struct_1(vec4<f32>(882f, -457f, 1932f, -1570f), vec2<bool>(true, false)), Struct_1(vec4<f32>(259f, -1549f, 1947f, 759f), vec2<bool>(true, true)), Struct_1(vec4<f32>(569f, -699f, -2947f, 1235f), vec2<bool>(true, false)), Struct_1(vec4<f32>(1165f, -584f, -1340f, -559f), vec2<bool>(true, true)), Struct_1(vec4<f32>(1559f, -831f, 2161f, -520f), vec2<bool>(true, true)), Struct_1(vec4<f32>(-837f, 1006f, -1242f, -2119f), vec2<bool>(false, true)), Struct_1(vec4<f32>(-557f, 1233f, 2214f, -852f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-513f, 544f, -274f, -1220f), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1112f, 453f, 2217f, 1535f), vec2<bool>(false, false)), Struct_1(vec4<f32>(334f, 563f, -336f, 736f), vec2<bool>(true, false)), Struct_1(vec4<f32>(1047f, -895f, 1229f, 1148f), vec2<bool>(false, false)), Struct_1(vec4<f32>(633f, -1510f, 2313f, 210f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-1441f, 787f, 1152f, -113f), vec2<bool>(false, false)), Struct_1(vec4<f32>(-1000f, -357f, 1000f, 154f), vec2<bool>(true, true)));

var<private> global2: Struct_4 = Struct_4(Struct_2(14479u));

var<private> global3: array<Struct_4, 13>;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(1147f, -564f, -1059f, 1488f), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> vec4<u32> {
    var var_0 = ~max(60270u, 0u);
    global0 = vec2<bool>(all(!select(!vec2<bool>(global4.b.x, false), arg_0.a.b, !vec2<bool>(global4.b.x, global4.b.x))), any(vec4<bool>(true, arg_0.c, arg_1.c.b.x, select(global0.x, true, !arg_0.c))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.a.x, arg_0.a.a.x, -620f, arg_1.a)))), select(vec2<bool>(global0.x, global0.x), vec2<bool>(!global0.x, arg_1.b.c), arg_1.b.c)), ~_wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(arg_1.b.b, arg_1.b.b, arg_1.b.b), firstTrailingBit(max(vec4<i32>(1i, u_input.d.x, -18195i, u_input.c.x), vec4<i32>(u_input.b, 2147483647i, -8787i, u_input.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-650f + arg_1.a) - 550f) + global4.a.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f + 551f))));
    var var_2 = arg_1;
    var var_3 = var_1.b;
    return ~vec4<u32>(~global2.a.a, min(86274u, ~u_input.a.x), global2.a.a, ~(~39084u)) << (~vec4<u32>(firstLeadingBit(global2.a.a), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 84006u, var_2.e.a), vec3<u32>(11300u, u_input.a.x, arg_1.e.a), vec3<u32>(0u, arg_1.e.a, global2.a.a)), vec3<u32>(10863u, 4294967295u, 26358u)), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_2.e.a, 0u), vec3<u32>(var_2.d, 4294967295u, 1u), vec3<u32>(46152u, global2.a.a, global2.a.a)), vec3<u32>(1u, 1u, arg_1.e.a) << (vec3<u32>(25141u, var_2.d, u_input.a.x) % vec3<u32>(32u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global2 = Struct_4(global2.a);
    global2 = Struct_4(global2.a);
    var var_0 = vec3<u32>(max(23654u, 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(3178u, 9179u, global2.a.a, global2.a.a) & ~vec4<u32>(28995u, global2.a.a, global2.a.a, 1u), ~func_3(Struct_3(global1[_wgslsmith_index_u32(25393u, 24u)], vec4<i32>(u_input.b, 14508i, u_input.c.x, arg_0.x), true), Struct_5(-799f, Struct_3(global1[_wgslsmith_index_u32(1u, 24u)], vec4<i32>(13782i, arg_0.x, arg_0.x, 0i), true), global1[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.a.x, Struct_2(u_input.a.x)))), 4294967295u >> (global2.a.a % 32u)) | vec3<u32>(0u, 4294967295u, ~(~global2.a.a ^ 37530u));
    let var_1 = !(!all(global4.b));
    global3 = array<Struct_4, 13>();
    return global1[_wgslsmith_index_u32(~4294967295u, 24u)];
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global1 = array<Struct_1, 24>();
    global4 = func_2(u_input.d);
    var var_0 = arg_3.b;
    global3 = array<Struct_4, 13>();
    global3 = array<Struct_4, 13>();
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_3 {
    global2 = global3[_wgslsmith_index_u32(countOneBits(func_1(~(-1i), ~_wgslsmith_add_i32(u_input.c.x | u_input.c.x, -21035i), func_1(1i, _wgslsmith_sub_i32(7620i, -u_input.d.x), func_1(u_input.b, firstTrailingBit(u_input.b), global2.a, Struct_1(global4.a, vec2<bool>(global4.b.x, arg_1.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-global4.a), vec2<bool>(false, global4.b.x))), global1[_wgslsmith_index_u32(27055u, 24u)]).a), 13u)];
    let var_0 = func_1(-37342i, _wgslsmith_div_i32(abs(u_input.b), -1i), func_1(_wgslsmith_dot_vec2_i32(firstTrailingBit(select(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d.xy, arg_1.xy)), vec2<i32>(select(-1i, 2147483647i, global4.b.x), ~u_input.b)), abs(-countOneBits(-1i)), Struct_2(~11065u), func_2(_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.c.x, u_input.b, u_input.c.x), vec3<i32>(1i, u_input.b, u_input.b), global4.b.x), -u_input.d))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, global4.a.x, 417f, 1078f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1053f, 557f, global4.a.x, -923f), vec4<f32>(-1429f, -2520f, global4.a.x, -136f))))), !func_2(vec3<i32>(u_input.b, u_input.d.x, u_input.b)).b));
    global1 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global4.a, vec4<f32>(global4.a.x, -233f, global4.a.x, 1000f), vec4<bool>(global4.b.x, arg_1.x, true, arg_1.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1867f - 580f), global4.a.x, 150f, _wgslsmith_f_op_f32(f32(-1f) * -1477f)))) * global4.a);
    let var_2 = vec2<i32>(~_wgslsmith_mult_i32(select(~u_input.b, u_input.c.x, global0.x), reverseBits(16963i)), u_input.c.x);
    return Struct_3(func_2(~vec3<i32>(-var_2.x, -var_2.x, -34706i)), vec4<i32>(u_input.d.x, ~(-u_input.d.x), 4449i, ~_wgslsmith_mult_i32(var_2.x, _wgslsmith_mult_i32(-15229i, u_input.d.x))), arg_1.x);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_0.a.a.x;
    global4 = func_2(vec3<i32>(-12209i, arg_3.x, _wgslsmith_add_i32(-1i, arg_1)));
    global2 = global3[_wgslsmith_index_u32(~(~u_input.a.x), 13u)];
    let var_1 = var_0;
    var var_2 = func_4(func_1(-2147483647i, 0i, Struct_2(global2.a.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(11045u, u_input.a.x, global2.a.a)), abs(vec3<u32>(0u, 0u, u_input.a.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.a.a, global2.a.a, 31426u), vec3<u32>(81494u, u_input.a.x, u_input.a.x))), 24u)]), !(!vec3<bool>(true, false, global0.x)), abs(_wgslsmith_div_vec3_u32(~(vec3<u32>(1u, global2.a.a, global2.a.a) & vec3<u32>(4294967295u, u_input.a.x, 1u)), (vec3<u32>(u_input.a.x, u_input.a.x, global2.a.a) ^ vec3<u32>(4294967295u, global2.a.a, 1u)) << (~vec3<u32>(global2.a.a, 46126u, 5610u) % vec3<u32>(32u))))).b.x;
    return all(arg_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(u_input.d.x, _wgslsmith_clamp_i32(-23666i, 2147483647i, u_input.b), global2.a, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), !vec3<bool>(all(global4.b), global4.b.x, global4.a.x < global4.a.x), vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a) ^ reverseBits(global2.a.a), 1u)), u_input.d.x, reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(select(-18758i, u_input.c.x, global0.x), 47632i, u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, u_input.b)), vec4<i32>(-26973i, _wgslsmith_add_i32(u_input.c.x, 0i), u_input.b, 21735i))), vec2<i32>(4860i, u_input.b));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.a.yyy - _wgslsmith_div_vec3_f32(vec3<f32>(514f, 1514f, var_1.a.x), vec3<f32>(-525f, -798f, global4.a.x))))))));
    global1 = array<Struct_1, 24>();
    let var_3 = _wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(14582u, 17325u, global2.a.a)), 75692u, global2.a.a, u_input.a.x)), ~vec4<u32>(0u >> ((44681u >> (u_input.a.x % 32u)) % 32u), _wgslsmith_mod_u32(global2.a.a, _wgslsmith_sub_u32(70807u, 1u)), global2.a.a, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1705u, global2.a.a), _wgslsmith_clamp_u32(16617u, 3528u, 95640u))), ~vec4<u32>(global2.a.a, 32342u, _wgslsmith_add_u32(global2.a.a, 4294967295u) & u_input.a.x, 4294967295u));
    var var_4 = Struct_4(global2.a);
    global1 = array<Struct_1, 24>();
    global3 = array<Struct_4, 13>();
    global0 = select(var_1.b, vec2<bool>(false, any(select(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, false, false), vec3<bool>(global4.b.x, true, false)), select(vec3<bool>(false, false, global4.b.x), vec3<bool>(false, false, var_1.b.x), vec3<bool>(global4.b.x, global0.x, false)), true))), !any(select(vec4<bool>(global4.b.x, var_0, true, true), vec4<bool>(true, true, var_1.b.x, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.c.x, _wgslsmith_mult_i32(abs(u_input.c.x), _wgslsmith_mult_i32(u_input.b, u_input.b) << (reverseBits(u_input.a.x) % 32u))), abs(min(~vec4<u32>(15573u, var_3.x, 8447u, 1u) << (vec4<u32>(4294967295u, global2.a.a, 0u, 37487u) % vec4<u32>(32u)), func_3(Struct_3(Struct_1(vec4<f32>(585f, var_2.x, var_2.x, 1767f), vec2<bool>(false, global4.b.x)), vec4<i32>(10709i, -47549i, u_input.b, u_input.b), global4.b.x), Struct_5(237f, Struct_3(global1[_wgslsmith_index_u32(var_3.x, 24u)], vec4<i32>(u_input.b, 2147483647i, u_input.d.x, u_input.c.x), global4.b.x), Struct_1(vec4<f32>(global4.a.x, var_2.x, var_1.a.x, global4.a.x), vec2<bool>(false, false)), 0u, global2.a)))), _wgslsmith_f_op_f32(trunc(-1152f)), var_2.xz, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, var_3.x), var_3.ywy), var_3.x, 54638u, func_3(Struct_3(global1[_wgslsmith_index_u32(0u, 24u)], vec4<i32>(-2147483647i, u_input.c.x, 0i, -24212i), true), Struct_5(-1890f, Struct_3(Struct_1(var_1.a, vec2<bool>(false, false)), vec4<i32>(u_input.c.x, u_input.c.x, 7534i, u_input.d.x), var_1.b.x), Struct_1(global4.a, vec2<bool>(false, var_1.b.x)), 1u, var_4.a)).x), var_3));
}

