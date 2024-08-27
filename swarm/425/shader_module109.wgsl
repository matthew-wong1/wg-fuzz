struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: array<Struct_4, 24>;

var<private> global2: Struct_5 = Struct_5(20945u, 6617u, 4294967295u, 249f);

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<f32>(1811f, 779f, -194f, 510f), vec2<i32>(2147483647i, -7093i), 19825u), Struct_2(vec4<f32>(-1000f, 657f, -2843f, -1800f), vec2<i32>(i32(-2147483648), 1i), 11831u), Struct_2(vec4<f32>(1049f, 665f, -1000f, -737f), vec2<i32>(2147483647i, -14922i), 26428u), Struct_2(vec4<f32>(-828f, 314f, -1204f, 154f), vec2<i32>(-1i, -1i), 4294967295u), Struct_2(vec4<f32>(582f, -1208f, 254f, -1306f), vec2<i32>(-24978i, -8439i), 71293u), Struct_2(vec4<f32>(-1860f, 409f, -1745f, -380f), vec2<i32>(-12204i, i32(-2147483648)), 0u), Struct_2(vec4<f32>(718f, -340f, -519f, 382f), vec2<i32>(i32(-2147483648), 17135i), 81251u), Struct_2(vec4<f32>(1560f, -178f, -806f, 337f), vec2<i32>(58460i, -5332i), 17753u), Struct_2(vec4<f32>(1024f, -778f, 1735f, -319f), vec2<i32>(-12783i, -20494i), 0u), Struct_2(vec4<f32>(-805f, -1275f, 154f, 456f), vec2<i32>(29897i, -10841i), 4294967295u), Struct_2(vec4<f32>(119f, -1696f, -356f, -729f), vec2<i32>(2147483647i, 0i), 4294967295u), Struct_2(vec4<f32>(-983f, 677f, 177f, 329f), vec2<i32>(-62471i, 0i), 4294967295u), Struct_2(vec4<f32>(-449f, -719f, -1556f, -207f), vec2<i32>(2147483647i, -1i), 11735u), Struct_2(vec4<f32>(-546f, -170f, -1455f, -668f), vec2<i32>(2147483647i, -10018i), 4294967295u), Struct_2(vec4<f32>(-1274f, 364f, 1391f, 362f), vec2<i32>(16569i, -1i), 1u), Struct_2(vec4<f32>(1565f, -897f, 325f, -615f), vec2<i32>(-1i, 13436i), 12065u), Struct_2(vec4<f32>(1535f, -986f, -106f, -1459f), vec2<i32>(33122i, 47186i), 4294967295u), Struct_2(vec4<f32>(1773f, 1000f, 1143f, -1000f), vec2<i32>(-1i, 20069i), 1u), Struct_2(vec4<f32>(-2193f, -522f, -1000f, 157f), vec2<i32>(-14817i, i32(-2147483648)), 11717u), Struct_2(vec4<f32>(621f, 1103f, 449f, 579f), vec2<i32>(1i, -1i), 1u), Struct_2(vec4<f32>(-1000f, 1000f, -1000f, -767f), vec2<i32>(22539i, 0i), 57394u), Struct_2(vec4<f32>(-3622f, -408f, -548f, -1080f), vec2<i32>(1i, i32(-2147483648)), 84138u), Struct_2(vec4<f32>(113f, 206f, -669f, 298f), vec2<i32>(-58003i, -1i), 4294967295u), Struct_2(vec4<f32>(-822f, -2446f, 943f, -1228f), vec2<i32>(17217i, -1i), 1u), Struct_2(vec4<f32>(2944f, -1880f, -189f, -745f), vec2<i32>(-321i, -19059i), 49842u), Struct_2(vec4<f32>(1480f, -204f, 2170f, 933f), vec2<i32>(0i, -1i), 4294967295u), Struct_2(vec4<f32>(512f, -962f, 1077f, -525f), vec2<i32>(-5735i, -28572i), 56677u), Struct_2(vec4<f32>(-1254f, 345f, 1337f, 1049f), vec2<i32>(i32(-2147483648), -74540i), 4294967295u), Struct_2(vec4<f32>(-336f, 687f, -272f, 306f), vec2<i32>(0i, 21112i), 0u), Struct_2(vec4<f32>(654f, 462f, -1305f, -213f), vec2<i32>(1i, 1i), 1u), Struct_2(vec4<f32>(-574f, -536f, 2198f, -705f), vec2<i32>(6206i, 1i), 15258u));

var<private> global4: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d * 1137f));
    var_1 = -663f;
    var var_2 = select(global0[_wgslsmith_index_u32(46245u, 30u)], !global0[_wgslsmith_index_u32(~arg_0.a, 30u)], !(!vec4<bool>(false, any(vec2<bool>(false, true)), 927f > global2.d, any(vec2<bool>(false, true)))));
    global3 = array<Struct_2, 31>();
    return arg_0.b;
}

fn func_2() -> Struct_5 {
    var var_0 = -11386i;
    let var_1 = global1[_wgslsmith_index_u32(62550u, 24u)];
    global0 = array<vec4<bool>, 30>();
    global0 = array<vec4<bool>, 30>();
    global2 = Struct_5(global2.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(global2.b, var_1.c.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~var_1.a.x), ~(~vec2<u32>(var_1.b.b, global2.a)))), reverseBits(abs(func_3(Struct_5(var_1.c.b, 0u, u_input.a, global2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)), !(!var_1.c.e.x))) - _wgslsmith_f_op_f32(max(global2.d, 672f))));
    return Struct_5(_wgslsmith_dot_vec2_u32(~abs(u_input.d), u_input.d), 135759u, ~_wgslsmith_div_u32(~(~85531u), select(var_1.c.b, ~global2.c, all(global0[_wgslsmith_index_u32(u_input.a, 30u)]))), global2.d);
}

fn func_1() -> Struct_1 {
    global2 = func_2();
    global2 = Struct_5(func_2().a, global2.c, 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-649f + _wgslsmith_f_op_f32(-global2.d)), global2.d)) - -466f));
    var var_0 = global2.c;
    let var_1 = any(select(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), true), vec2<bool>(true, all(vec2<bool>(true, true))), false));
    global2 = func_2();
    return Struct_1(!(!select(vec3<bool>(var_1, true, var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, false, true), vec3<bool>(var_1, false, var_1)), all(vec3<bool>(var_1, true, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_5 {
    var var_0 = 45761u;
    var var_1 = ~reverseBits(min(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, u_input.a, global2.b), vec3<u32>(u_input.a, global2.a, 117805u) ^ vec3<u32>(0u, 1u, 1u)), countOneBits(vec3<u32>(u_input.d.x, u_input.d.x, 2411u))));
    global1 = array<Struct_4, 24>();
    global0 = array<vec4<bool>, 30>();
    global4 = any(select(!select(vec3<bool>(true, arg_0.a.x, arg_1.a.x), select(arg_1.a, arg_1.a, arg_1.a.x), arg_1.a.x), select(!vec3<bool>(false, arg_2.a.x, true), arg_1.a, !func_1().a), false));
    return Struct_5(var_1.x, func_3(Struct_5(4294967295u, 0u, var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.d * 1000f))))), var_1.x, 656f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.d);
    let var_1 = func_4(Struct_1(!vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true)), func_1(), Struct_1(vec3<bool>(true, true, !(u_input.b >= u_input.b))));
    var var_2 = Struct_4(min(vec4<u32>(~(var_0.x << (u_input.d.x % 32u)), ~0u, ~(global2.a >> (4294967295u % 32u)), _wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(global2.c, u_input.d.x))), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_1.c, u_input.d.x, var_0.x, global2.c), vec4<u32>(global2.c, 1u, global2.b, global2.c) >> (vec4<u32>(u_input.d.x, 4294967295u, var_0.x, global2.b) % vec4<u32>(32u)), false), ~vec4<u32>(1u, 4294967295u, u_input.a, u_input.a) << (~vec4<u32>(var_1.b, u_input.d.x, var_1.b, 4294967295u) % vec4<u32>(32u)))), Struct_3(min(vec3<i32>(firstLeadingBit(-1i), _wgslsmith_div_i32(u_input.c, u_input.c), u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -23802i, 9498i), vec3<i32>(2147483647i, u_input.c, u_input.b)))), u_input.d.x, select(-(~vec4<i32>(u_input.c, u_input.c, -7504i, -2147483647i)), reverseBits(~vec4<i32>(-2147483647i, -33863i, u_input.c, u_input.b)), all(vec2<bool>(true, true))), firstTrailingBit(1i), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), func_1().a), func_1().a, select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), true))), Struct_3(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c, u_input.b), ~(-11112i), -2197i ^ u_input.b), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.b), vec4<i32>(u_input.b, -16364i, u_input.b, 19428i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -15332i, 2147483647i), vec4<i32>(u_input.c, 7899i, u_input.c, u_input.b))), func_4(func_1(), func_1(), Struct_1(vec3<bool>(false, true, true))).b, ~vec4<i32>(-8294i, 12605i, u_input.c, u_input.b | 29110i), -u_input.b, select(func_1().a, select(func_1().a, vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))));
    let var_3 = var_2.b.e.x;
    let var_4 = countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-15351i, u_input.b), _wgslsmith_dot_vec3_i32(var_2.c.c.wwy, var_2.b.c.xzy)), (vec2<i32>(var_2.c.c.x, -1082i) & vec2<i32>(0i, var_2.c.a.x)) | _wgslsmith_mult_vec2_i32(var_2.c.c.xy, var_2.c.a.zx), vec2<i32>(1i, abs(u_input.c)))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.a.x, 34329i), var_2.c.a.zy)), _wgslsmith_sub_i32(u_input.c, 2147483647i)), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 1i), abs(vec2<i32>(var_2.c.a.x, -2147483647i)))));
    global1 = array<Struct_4, 24>();
    var var_5 = global0[_wgslsmith_index_u32(u_input.d.x, 30u)];
    let var_6 = all(vec2<bool>(any(!var_5.zzw), any(select(vec4<bool>(var_2.c.e.x, var_5.x, true, var_2.b.e.x), vec4<bool>(var_2.b.e.x, false, true, true), true)) | (-965f < var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_2.b.c.x, var_4.x), ~1i), -_wgslsmith_dot_vec2_i32(var_4, vec2<i32>(u_input.b, 1i))), vec2<u32>(firstTrailingBit(~(global2.c | 65999u)), var_2.c.b));
}

