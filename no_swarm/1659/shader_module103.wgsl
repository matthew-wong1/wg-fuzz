struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<u32>(17194u, 1u, 0u, 6456u), true, vec4<f32>(-849f, 298f, 1148f, -255f), -8456i, Struct_2(Struct_1(34891u, 50380i, 556f), 1714f, i32(-2147483648))), Struct_3(vec4<u32>(0u, 1u, 71463u, 0u), true, vec4<f32>(456f, -189f, 236f, -235f), i32(-2147483648), Struct_2(Struct_1(4294967295u, -23145i, -824f), -787f, 0i)), Struct_3(vec4<u32>(65100u, 42146u, 12852u, 31867u), false, vec4<f32>(421f, -432f, 913f, 444f), -7547i, Struct_2(Struct_1(1u, 0i, -863f), -112f, 13958i)), Struct_3(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), true, vec4<f32>(543f, -535f, -1753f, -1000f), -9115i, Struct_2(Struct_1(39691u, i32(-2147483648), 744f), 531f, -40685i)), Struct_3(vec4<u32>(0u, 4294967295u, 1u, 39482u), false, vec4<f32>(-595f, 955f, -1787f, -267f), 32678i, Struct_2(Struct_1(50914u, -1i, -376f), -889f, 30738i)), Struct_3(vec4<u32>(1u, 1u, 1u, 0u), false, vec4<f32>(-764f, -1201f, -325f, 400f), -13231i, Struct_2(Struct_1(28926u, -1i, 662f), 211f, -42775i)), Struct_3(vec4<u32>(4294967295u, 0u, 4294967295u, 38767u), true, vec4<f32>(-1055f, 783f, 1000f, -464f), 24701i, Struct_2(Struct_1(886u, 47026i, -236f), 2605f, 8269i)), Struct_3(vec4<u32>(13122u, 0u, 38566u, 17589u), false, vec4<f32>(-130f, -211f, -490f, 1100f), 2147483647i, Struct_2(Struct_1(4294967295u, -1i, 819f), -310f, 1i)), Struct_3(vec4<u32>(15194u, 23925u, 0u, 9640u), true, vec4<f32>(1000f, 868f, -1044f, 114f), 0i, Struct_2(Struct_1(1u, 7563i, 266f), 117f, 30373i)), Struct_3(vec4<u32>(4294967295u, 53804u, 1u, 4294967295u), true, vec4<f32>(-122f, -1000f, -252f, 1274f), -8449i, Struct_2(Struct_1(1u, 7537i, 392f), -625f, 7179i)), Struct_3(vec4<u32>(4294967295u, 1u, 67980u, 0u), false, vec4<f32>(-1065f, 988f, 599f, 1151f), 21754i, Struct_2(Struct_1(1u, 1i, 920f), 702f, 2147483647i)), Struct_3(vec4<u32>(0u, 62342u, 21322u, 31190u), true, vec4<f32>(1137f, 2260f, 472f, 929f), 24532i, Struct_2(Struct_1(1u, -41294i, -568f), -2616f, 1i)), Struct_3(vec4<u32>(4294967295u, 46263u, 23655u, 63607u), true, vec4<f32>(1385f, 954f, -583f, 840f), -14011i, Struct_2(Struct_1(10174u, 5534i, -1000f), -547f, 0i)), Struct_3(vec4<u32>(3049u, 58777u, 4294967295u, 2941u), false, vec4<f32>(-317f, 757f, 571f, -3427f), -24993i, Struct_2(Struct_1(8574u, 0i, -800f), 401f, -6588i)), Struct_3(vec4<u32>(0u, 93042u, 5455u, 18123u), true, vec4<f32>(325f, -961f, 398f, -2217f), 0i, Struct_2(Struct_1(132534u, -22205i, -123f), 341f, 1i)));

var<private> global1: Struct_2;

var<private> global2: f32 = -1691f;

var<private> global3: array<u32, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(abs(30944u), 15u)]);
    let var_1 = !arg_0.b;
    var var_2 = var_0;
    let var_3 = var_2.a.c.zzy;
    var var_4 = arg_0.a.ywz;
    return Struct_3(var_2.a.a, true, var_0.a.c, global1.a.b, var_0.a.e);
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(ceil(-240f)), func_2(global0[_wgslsmith_index_u32(4294967295u, 15u)], -(vec4<i32>(global1.c, -2147483647i, global1.a.b, 2147483647i) & vec4<i32>(1i, global1.c, global1.c, global1.a.b)), global1.a.a).e.a.a == 71119u));
    var var_1 = Struct_2(global1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -527f))), ~(~_wgslsmith_sub_i32(-43965i >> (u_input.b % 32u), global1.a.b)));
    var_1 = Struct_2(Struct_1(global1.a.a, -(~2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(955f)))), -172f)), -1176f, global1.c);
    return -1000f;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5, arg_3: Struct_5) -> Struct_5 {
    var var_0 = 1i;
    global1 = Struct_2(Struct_1(7160u, reverseBits(~(1i & arg_2.b.a.e.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.a.c)), -343f)))), 583f, 12487i << (arg_0.e.a.a % 32u));
    var var_1 = arg_3;
    let var_2 = !arg_2.b.a.b;
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(0i, -1i, 32498i), ~(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.b.a.e.a.b, global1.c, global1.c), vec3<i32>(global1.a.b, global1.c, global1.c), vec3<i32>(arg_0.e.a.b, 0i, -2147483647i)), vec3<i32>(var_1.e.b, global1.c, -2147483647i), arg_0.a.x <= 4294967295u) | -vec3<i32>(-43502i, -33305i, arg_0.d)));
    return arg_2;
}

fn func_5(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: Struct_5) -> Struct_5 {
    var var_0 = global1.a;
    global0 = array<Struct_3, 15>();
    var_0 = arg_3.b.a.e.a;
    global0 = array<Struct_3, 15>();
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(arg_3.e.c * _wgslsmith_f_op_f32(round(767f))), 25717i);
    return func_4(func_2(func_4(arg_0.b.a, _wgslsmith_f_op_f32(abs(-366f)), arg_0, func_4(arg_0.b.a, -351f, arg_3, arg_0)).b.a, -vec4<i32>(global1.c, var_0.b, _wgslsmith_mod_i32(21127i, -1i), func_2(Struct_3(u_input.a, true, arg_2.b.a.c, arg_2.b.a.e.c, Struct_2(arg_2.e, 919f, -27031i)), vec4<i32>(-11934i, arg_3.e.b, 62711i, -1i), arg_2.b.a.e.a.a).d), arg_3.b.a.e.a.a), arg_2.c, Struct_5(!(!(arg_1.x & arg_0.a)), func_4(Struct_3(~arg_0.b.a.a, arg_1.x, _wgslsmith_f_op_vec4_f32(trunc(arg_0.b.a.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_3.e.b, arg_3.b.a.e.c), vec3<i32>(arg_2.b.a.d, arg_3.b.a.d, arg_2.b.a.d)), Struct_2(arg_0.e, 158f, 23123i)), 1000f, func_4(Struct_3(arg_0.b.a.a, true, arg_3.b.a.c, -42506i, Struct_2(arg_0.b.a.e.a, global1.a.c, 0i)), arg_2.e.c, func_4(Struct_3(vec4<u32>(35371u, 15860u, arg_0.d.x, 1u), false, arg_0.b.a.c, var_0.b, Struct_2(arg_0.e, 316f, -487i)), arg_3.c, Struct_5(arg_0.b.a.b, arg_0.b, arg_2.c, arg_0.d, global1.a), arg_3), func_4(Struct_3(arg_2.b.a.a, arg_0.a, arg_0.b.a.c, 2147483647i, Struct_2(arg_2.b.a.e.a, arg_3.b.a.e.b, arg_0.b.a.d)), var_0.c, Struct_5(arg_0.b.a.b, arg_0.b, arg_3.c, arg_3.b.a.a.xz, global1.a), Struct_5(arg_0.a, arg_2.b, 521f, vec2<u32>(var_0.a, 23052u), arg_3.e))), Struct_5(!arg_3.a, arg_2.b, _wgslsmith_f_op_f32(round(-1096f)), u_input.a.xw, arg_0.e)).b, var_0.c, _wgslsmith_add_vec2_u32(~abs(arg_3.b.a.a.xx), _wgslsmith_sub_vec2_u32(arg_3.b.a.a.xw, min(arg_0.b.a.a.yy, arg_3.b.a.a.zx))), Struct_1(~32555u, 25511i, arg_3.b.a.e.a.c)), func_4(arg_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1541f, _wgslsmith_f_op_f32(-global1.b)) * arg_0.c), Struct_5(!(arg_1.x & arg_0.a), func_4(global0[_wgslsmith_index_u32(global1.a.a, 15u)], arg_0.b.a.c.x, Struct_5(arg_1.x, arg_0.b, arg_2.b.a.e.b, vec2<u32>(21868u, 374u), Struct_1(31284u, global1.c, arg_3.c)), func_4(arg_3.b.a, 673f, arg_0, Struct_5(arg_2.b.a.b, arg_3.b, var_0.c, arg_3.b.a.a.wx, Struct_1(9916u, -1i, 323f)))).b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c))), func_4(Struct_3(arg_3.b.a.a, arg_1.x, arg_3.b.a.c, -14611i, arg_2.b.a.e), var_0.c, Struct_5(true, arg_2.b, 1000f, vec2<u32>(4294967295u, 1u), Struct_1(arg_2.e.a, arg_2.b.a.e.c, var_0.c)), arg_3).d, func_2(arg_2.b.a, _wgslsmith_div_vec4_i32(vec4<i32>(-38913i, arg_2.b.a.e.a.b, global1.a.b, 34335i), vec4<i32>(global1.a.b, global1.a.b, arg_3.e.b, -1i)), 1u).e.a), Struct_5(func_2(arg_0.b.a, _wgslsmith_add_vec4_i32(vec4<i32>(5291i, -2147483647i, var_0.b, 39893i), vec4<i32>(arg_2.b.a.e.c, 1i, 32555i, arg_0.b.a.e.a.b)), u_input.c.x).b, Struct_4(func_2(Struct_3(u_input.a, true, arg_3.b.a.c, 8439i, Struct_2(arg_0.e, -457f, 0i)), vec4<i32>(global1.a.b, var_0.b, global1.a.b, var_0.b), 23642u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a.c.x) + _wgslsmith_f_op_f32(abs(arg_0.b.a.e.a.c))), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, var_0.a), arg_3.d), arg_3.e)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = select(!(!select(vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, true, true), true)), !vec3<bool>(true, false, arg_1), arg_1);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xy, ~_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a.a, 25748u), 25u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.a.a, global3[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<u32>(65315u, arg_2, 12962u))), abs(u_input.c.xy & u_input.a.zx))), 15u)];
    var var_2 = ~var_1.a.zxy;
    var var_3 = func_5(func_4(func_2(Struct_3(vec4<u32>(0u, 42483u, arg_2, 0u), !arg_1, _wgslsmith_f_op_vec4_f32(var_1.c * var_1.c), var_1.e.a.b ^ var_1.d, var_1.e), abs(~vec4<i32>(var_1.d, 13121i, var_1.e.c, 2147483647i)), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c.x)) * -762f), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 15u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(-1368f))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 62076u), ~u_input.c.zz, abs(vec2<u32>(0u, 60928u))), Struct_1(var_2.x, _wgslsmith_add_i32(global1.c, 0i), -1537f)), Struct_5(func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 13106u, var_2.x), 15u)], -vec4<i32>(arg_0, arg_0, 0i, arg_0), abs(arg_2)).b, Struct_4(func_2(Struct_3(var_1.a, false, var_1.c, 0i, Struct_2(var_1.e.a, -1213f, -5870i)), vec4<i32>(-2124i, global1.a.b, var_1.e.c, arg_0), 4294967295u)), var_1.e.a.c, var_1.a.xy, Struct_1(arg_2, ~(-2147483647i), _wgslsmith_f_op_f32(step(var_1.e.a.c, var_1.e.a.c))))), !(!(!select(vec4<bool>(var_1.b, true, arg_1, var_1.b), vec4<bool>(var_0.x, false, false, var_0.x), arg_1))), func_4(func_4(Struct_3(vec4<u32>(1u, 314u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9612u, 25u)], 25u)], u_input.a.x), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, 1457f, -288f, 1376f)), _wgslsmith_div_i32(global1.c, -48965i), var_1.e), var_1.c.x, func_4(func_2(global0[_wgslsmith_index_u32(var_2.x, 15u)], vec4<i32>(-2147483647i, -1i, 7687i, var_1.e.c), global1.a.a), _wgslsmith_f_op_f32(931f + 772f), func_4(global0[_wgslsmith_index_u32(0u, 15u)], 1000f, Struct_5(false, Struct_4(Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(var_2.x, 25u)], 42675u, 0u, u_input.c.x), arg_1, var_1.c, var_1.d, var_1.e)), global1.a.c, var_2.xz, global1.a), Struct_5(arg_1, Struct_4(Struct_3(u_input.a, false, vec4<f32>(806f, global1.a.c, -913f, 438f), 2147483647i, Struct_2(var_1.e.a, global1.b, global1.c))), global1.a.c, vec2<u32>(0u, u_input.c.x), Struct_1(global1.a.a, -1i, 177f))), Struct_5(arg_1, Struct_4(Struct_3(vec4<u32>(u_input.b, 0u, var_1.e.a.a, global1.a.a), false, vec4<f32>(1248f, -472f, 453f, -1000f), -22000i, Struct_2(var_1.e.a, 176f, -2147483647i))), var_1.e.b, var_2.yx, Struct_1(45022u, -2147483647i, var_1.c.x))), func_4(func_2(global0[_wgslsmith_index_u32(23132u, 15u)], vec4<i32>(0i, var_1.e.a.b, -1i, 11301i), global1.a.a), global1.a.c, func_4(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53647u, 25u)], 25u)], 15u)], global1.b, Struct_5(false, Struct_4(Struct_3(vec4<u32>(71684u, global1.a.a, var_2.x, var_1.e.a.a), var_1.b, vec4<f32>(global1.b, global1.a.c, 1854f, -243f), -1i, Struct_2(global1.a, -609f, var_1.d))), 1000f, vec2<u32>(global1.a.a, var_1.e.a.a), var_1.e.a), Struct_5(var_0.x, Struct_4(global0[_wgslsmith_index_u32(var_2.x, 15u)]), global1.a.c, vec2<u32>(global3[_wgslsmith_index_u32(1u, 25u)], var_2.x), var_1.e.a)), func_4(global0[_wgslsmith_index_u32(29057u, 15u)], 1411f, Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(0u, 15u)]), 474f, vec2<u32>(7045u, 1u), Struct_1(global3[_wgslsmith_index_u32(9956u, 25u)], 2147483647i, var_1.e.a.c)), Struct_5(var_1.b, Struct_4(Struct_3(var_1.a, true, vec4<f32>(1330f, -859f, global1.a.c, global1.b), 29962i, var_1.e)), var_1.e.a.c, var_1.a.wx, global1.a)))).b.a, _wgslsmith_f_op_f32(-1f), func_4(func_2(Struct_3(var_1.a, var_0.x, var_1.c, -85i, Struct_2(var_1.e.a, -137f, -2147483647i)), select(vec4<i32>(-1i, 1i, global1.c, global1.a.b), vec4<i32>(-2147483647i, global1.c, 0i, var_1.e.a.b), vec4<bool>(false, true, var_1.b, var_0.x)), 4294967295u), _wgslsmith_f_op_f32(-1f), Struct_5(true, func_4(Struct_3(u_input.a, false, vec4<f32>(1764f, var_1.e.b, -408f, -1297f), var_1.d, Struct_2(Struct_1(7531u, var_1.d, var_1.c.x), var_1.e.a.c, -1i)), 835f, Struct_5(var_1.b, Struct_4(global0[_wgslsmith_index_u32(var_1.e.a.a, 15u)]), -1456f, vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 25u)]), Struct_1(arg_2, var_1.d, global1.b)), Struct_5(true, Struct_4(Struct_3(u_input.a, true, var_1.c, -53397i, var_1.e)), global1.b, vec2<u32>(1u, u_input.a.x), global1.a)).b, _wgslsmith_f_op_f32(f32(-1f) * -1937f), var_2.xz, func_4(Struct_3(u_input.a, var_1.b, var_1.c, var_1.d, Struct_2(Struct_1(global3[_wgslsmith_index_u32(global1.a.a, 25u)], global1.a.b, global1.a.c), 1064f, -1i)), global1.a.c, Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(var_1.e.a.a, 15u)]), 573f, var_2.yz, Struct_1(4294967295u, 2147483647i, var_1.c.x)), Struct_5(true, Struct_4(Struct_3(vec4<u32>(4294967295u, 1u, 36794u, 1u), var_0.x, var_1.c, -3818i, var_1.e)), -2121f, u_input.c.yx, Struct_1(1u, global1.a.b, 1948f))).e), Struct_5(arg_1, Struct_4(Struct_3(u_input.a, var_0.x, vec4<f32>(-211f, global1.b, var_1.e.a.c, var_1.c.x), -2147483647i, Struct_2(global1.a, 473f, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1208f), firstTrailingBit(var_1.a.wx), func_2(Struct_3(vec4<u32>(4294967295u, 40660u, 51286u, var_2.x), arg_1, vec4<f32>(var_1.e.a.c, global1.a.c, var_1.c.x, 186f), -2147483647i, Struct_2(var_1.e.a, -319f, arg_0)), vec4<i32>(-2147483647i, var_1.d, var_1.d, -3839i), arg_2).e.a)), Struct_5(!var_0.x, Struct_4(Struct_3(u_input.a, arg_1, var_1.c, -9951i, Struct_2(Struct_1(u_input.b, var_1.e.a.b, 974f), -193f, global1.c))), -2233f, var_1.a.wz, var_1.e.a)), func_4(Struct_3(u_input.a, var_0.x, vec4<f32>(-1449f, -1000f, _wgslsmith_f_op_f32(ceil(var_1.e.a.c)), -910f), -1i, Struct_2(func_4(global0[_wgslsmith_index_u32(global1.a.a, 15u)], 1265f, Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(arg_2, 15u)]), 146f, vec2<u32>(3318u, 17532u), Struct_1(27154u, 1i, -1087f)), Struct_5(false, Struct_4(Struct_3(vec4<u32>(4294967295u, global1.a.a, arg_2, u_input.b), true, vec4<f32>(global1.a.c, -251f, 380f, global1.b), var_1.d, var_1.e)), 1103f, var_1.a.wz, var_1.e.a)).b.a.e.a, var_1.e.b, global1.c | global1.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c + -985f)), 750f), func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(26613u, u_input.b), 15u)], _wgslsmith_f_op_f32(var_1.e.b + global1.b), func_4(Struct_3(u_input.a, var_0.x, vec4<f32>(1222f, var_1.c.x, -919f, var_1.e.b), 0i, Struct_2(global1.a, global1.a.c, global1.a.b)), _wgslsmith_f_op_f32(select(-1823f, global1.b, true)), func_4(Struct_3(var_1.a, arg_1, var_1.c, global1.a.b, Struct_2(global1.a, var_1.c.x, global1.a.b)), global1.a.c, Struct_5(var_0.x, Struct_4(Struct_3(vec4<u32>(48591u, 1u, arg_2, 56376u), var_0.x, var_1.c, -1i, Struct_2(var_1.e.a, var_1.c.x, 5397i))), var_1.c.x, var_1.a.ww, var_1.e.a), Struct_5(var_0.x, Struct_4(global0[_wgslsmith_index_u32(1u, 15u)]), -1000f, var_1.a.zy, Struct_1(global1.a.a, global1.a.b, 436f))), func_4(Struct_3(var_1.a, false, var_1.c, -2147483647i, Struct_2(Struct_1(2237u, global1.c, global1.b), 602f, -2147483647i)), global1.a.c, Struct_5(false, Struct_4(Struct_3(u_input.a, false, var_1.c, arg_0, Struct_2(Struct_1(arg_2, 0i, 1422f), global1.a.c, -1i))), 1000f, var_2.zx, var_1.e.a), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(var_1.e.a.a, 15u)]), global1.a.c, var_1.a.wy, global1.a))), func_4(global0[_wgslsmith_index_u32(10956u, 15u)], _wgslsmith_f_op_f32(1154f - -295f), Struct_5(false, Struct_4(Struct_3(vec4<u32>(22233u, 1u, var_2.x, global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), var_0.x, var_1.c, global1.c, var_1.e)), -858f, var_2.zz, Struct_1(u_input.a.x, global1.a.b, -1852f)), Struct_5(var_0.x, Struct_4(Struct_3(u_input.a, true, var_1.c, arg_0, var_1.e)), 1000f, u_input.c.xx, global1.a))), Struct_5(!(!var_0.x), func_4(Struct_3(var_1.a, arg_1, vec4<f32>(var_1.e.b, 523f, var_1.c.x, var_1.c.x), global1.a.b, Struct_2(var_1.e.a, global1.b, -2147483647i)), -407f, Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(4294967295u, 15u)]), -1226f, var_1.a.wy, global1.a), func_4(global0[_wgslsmith_index_u32(u_input.b, 15u)], global1.b, Struct_5(var_1.b, Struct_4(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2, 25u)], 15u)]), global1.b, var_1.a.zz, global1.a), Struct_5(false, Struct_4(Struct_3(vec4<u32>(40791u, global3[_wgslsmith_index_u32(40289u, 25u)], 0u, var_2.x), true, vec4<f32>(-804f, var_1.e.b, global1.a.c, -135f), 1i, Struct_2(global1.a, var_1.e.a.c, -2147483647i))), var_1.c.x, vec2<u32>(var_2.x, 9612u), Struct_1(25549u, var_1.e.a.b, var_1.c.x)))).b, _wgslsmith_f_op_f32(global1.a.c + -1000f), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.e.a.a, global1.a.a), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.a.a, 25u)], 25u)])), func_4(Struct_3(vec4<u32>(40526u, 11641u, 1u, 111726u), var_0.x, var_1.c, 31694i, Struct_2(Struct_1(u_input.a.x, global1.c, global1.a.c), -537f, -33549i)), global1.b, func_4(Struct_3(vec4<u32>(0u, global1.a.a, arg_2, 63751u), false, var_1.c, global1.c, var_1.e), global1.a.c, Struct_5(false, Struct_4(Struct_3(u_input.a, arg_1, vec4<f32>(605f, global1.a.c, var_1.c.x, global1.a.c), 3951i, var_1.e)), var_1.c.x, vec2<u32>(1u, u_input.c.x), Struct_1(0u, 35227i, -948f)), Struct_5(var_1.b, Struct_4(Struct_3(vec4<u32>(14326u, var_1.e.a.a, 0u, 0u), true, var_1.c, -2147483647i, var_1.e)), 683f, vec2<u32>(1u, 77004u), var_1.e.a)), Struct_5(var_0.x, Struct_4(global0[_wgslsmith_index_u32(1u, 15u)]), var_1.c.x, vec2<u32>(global3[_wgslsmith_index_u32(1u, 25u)], 4294967295u), var_1.e.a)).e)));
    let var_4 = var_3.b.a.c.wzz;
    return !(!all(var_0.zy) | false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.yy;
    let var_1 = Struct_5(func_1(-_wgslsmith_add_i32(abs(global1.c), ~(-33835i)), true, global1.a.a), Struct_4(Struct_3(vec4<u32>(u_input.b, 28060u, 51400u, var_0.x), global1.c <= _wgslsmith_mult_i32(global1.c, global1.a.b), vec4<f32>(global1.a.c, -342f, _wgslsmith_f_op_f32(select(135f, global1.b, false)), _wgslsmith_f_op_f32(global1.b + global1.a.c)), _wgslsmith_mod_i32(global1.c, _wgslsmith_mod_i32(global1.a.b, -11208i)), Struct_2(func_2(global0[_wgslsmith_index_u32(1u, 15u)], vec4<i32>(0i, 26325i, global1.c, -4066i), u_input.c.x).e.a, _wgslsmith_f_op_f32(global1.b * 254f), ~(-1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(324f))), _wgslsmith_mult_vec2_u32(~(~_wgslsmith_div_vec2_u32(u_input.a.zw, vec2<u32>(4294967295u, 32832u))), func_5(Struct_5(true, func_5(Struct_5(false, Struct_4(Struct_3(u_input.a, false, vec4<f32>(-162f, 890f, 726f, -1438f), -1i, Struct_2(global1.a, global1.b, global1.a.b))), global1.b, var_0, Struct_1(u_input.c.x, global1.c, 569f)), vec4<bool>(true, true, false, true), Struct_5(false, Struct_4(Struct_3(u_input.a, true, vec4<f32>(739f, global1.b, global1.a.c, 1834f), -9163i, Struct_2(global1.a, 1159f, 1i))), global1.b, var_0, global1.a), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(1u, 15u)]), 246f, u_input.a.zw, global1.a)).b, func_2(Struct_3(u_input.a, false, vec4<f32>(global1.b, global1.b, global1.b, global1.b), global1.c, Struct_2(global1.a, global1.a.c, global1.c)), vec4<i32>(global1.c, global1.c, global1.a.b, global1.a.b), 4396u).e.b, vec2<u32>(0u, 1u) ^ u_input.a.zz, global1.a), vec4<bool>(true, global3[_wgslsmith_index_u32(4559u, 25u)] == global3[_wgslsmith_index_u32(var_0.x, 25u)], true, true), Struct_5(all(vec2<bool>(true, true)), Struct_4(global0[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(-global1.b), u_input.c.yy, Struct_1(u_input.a.x, 2147483647i, global1.b)), func_5(Struct_5(true, Struct_4(Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], var_0.x, 4294967295u, global1.a.a), true, vec4<f32>(645f, -1149f, -607f, global1.a.c), 31127i, Struct_2(global1.a, global1.a.c, global1.a.b))), global1.a.c, vec2<u32>(global1.a.a, global1.a.a), Struct_1(0u, global1.a.b, global1.a.c)), vec4<bool>(true, false, false, true), func_5(Struct_5(false, Struct_4(Struct_3(u_input.a, false, vec4<f32>(-399f, global1.b, -1000f, global1.a.c), 2147483647i, Struct_2(global1.a, global1.b, global1.a.b))), -539f, var_0, Struct_1(0u, -1i, global1.a.c)), vec4<bool>(false, false, false, true), Struct_5(false, Struct_4(Struct_3(vec4<u32>(u_input.b, 4294967295u, global3[_wgslsmith_index_u32(31682u, 25u)], 4294967295u), true, vec4<f32>(665f, global1.a.c, -838f, global1.b), global1.c, Struct_2(global1.a, global1.a.c, -2147483647i))), global1.b, var_0, global1.a), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(global1.a.a, 15u)]), -1381f, vec2<u32>(1u, global1.a.a), global1.a)), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(var_0.x, 15u)]), global1.a.c, var_0, global1.a))).d), func_4(Struct_3(min(vec4<u32>(3849u, u_input.a.x, 1u, 18248u) >> (u_input.a % vec4<u32>(32u)), vec4<u32>(87203u, global3[_wgslsmith_index_u32(1u, 25u)], 5780u, global3[_wgslsmith_index_u32(global1.a.a, 25u)])), true, func_5(func_5(Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(1u, 15u)]), 845f, vec2<u32>(0u, 4294967295u), Struct_1(12573u, -1i, 1030f)), vec4<bool>(false, false, true, true), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(5794u, 15u)]), global1.a.c, u_input.a.xz, global1.a), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(34912u, 15u)]), global1.b, u_input.a.wy, global1.a)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(u_input.b, 15u)]), global1.a.c, u_input.c.zx, Struct_1(global1.a.a, global1.c, -152f)), func_5(Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(var_0.x, 15u)]), global1.b, u_input.c.yx, global1.a), vec4<bool>(false, false, true, true), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(var_0.x, 15u)]), global1.b, u_input.a.wz, Struct_1(var_0.x, 0i, -1647f)), Struct_5(true, Struct_4(Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(0u, 25u)], global1.a.a, u_input.b, global3[_wgslsmith_index_u32(1u, 25u)]), false, vec4<f32>(global1.b, -599f, -855f, global1.a.c), global1.c, Struct_2(Struct_1(u_input.c.x, -1i, -1752f), global1.b, global1.a.b))), global1.b, vec2<u32>(1u, 18533u), global1.a))).b.a.c, ~2147483647i, func_2(func_2(global0[_wgslsmith_index_u32(global1.a.a, 15u)], vec4<i32>(global1.a.b, 1i, -1i, global1.c), 0u), vec4<i32>(-27563i, 25518i, global1.c, global1.c), 1u >> (global1.a.a % 32u)).e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c))), func_5(func_4(func_5(Struct_5(false, Struct_4(Struct_3(u_input.a, true, vec4<f32>(1289f, global1.b, global1.a.c, global1.a.c), global1.c, Struct_2(Struct_1(64749u, 0i, global1.a.c), global1.a.c, 2147483647i))), 1166f, vec2<u32>(1u, 4294967295u), Struct_1(9180u, global1.a.b, global1.a.c)), vec4<bool>(false, true, true, false), Struct_5(false, Struct_4(Struct_3(u_input.a, true, vec4<f32>(global1.a.c, global1.b, global1.a.c, 382f), 59696i, Struct_2(global1.a, global1.a.c, global1.a.b))), -276f, vec2<u32>(13109u, 42231u), global1.a), Struct_5(true, Struct_4(Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], 1u, 123141u, 70440u), true, vec4<f32>(-1049f, global1.b, 1064f, global1.b), 2147483647i, Struct_2(global1.a, -764f, global1.a.b))), global1.b, vec2<u32>(19161u, 0u), global1.a)).b.a, func_5(Struct_5(true, Struct_4(Struct_3(vec4<u32>(u_input.b, u_input.b, u_input.b, 46405u), true, vec4<f32>(-113f, 1133f, global1.b, global1.a.c), 51184i, Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 25u)], global1.a.b, -250f), global1.b, global1.c))), -3449f, var_0, Struct_1(4294967295u, -26390i, global1.a.c)), vec4<bool>(false, true, true, true), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(26911u, 15u)]), -638f, u_input.c.yx, Struct_1(u_input.c.x, global1.c, global1.b)), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(global1.a.a, 15u)]), global1.b, u_input.c.xy, global1.a)).c, Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(1291u, 15u)]), -1708f, var_0, Struct_1(30941u, 59176i, 1047f)), func_4(global0[_wgslsmith_index_u32(9038u, 15u)], -268f, Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(var_0.x, 15u)]), -240f, var_0, global1.a), Struct_5(true, Struct_4(Struct_3(u_input.a, true, vec4<f32>(367f, global1.b, -719f, -1347f), 0i, Struct_2(global1.a, 1000f, 5409i))), global1.a.c, vec2<u32>(1u, 34738u), global1.a))), vec4<bool>(true, true, true, true), func_4(func_4(global0[_wgslsmith_index_u32(1u, 15u)], global1.a.c, Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), 314f, var_0, global1.a), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(4294967295u, 15u)]), 104f, var_0, global1.a)).b.a, _wgslsmith_f_op_f32(-global1.b), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2153u, 25u)], 15u)]), global1.a.c, vec2<u32>(9233u, global3[_wgslsmith_index_u32(u_input.b, 25u)]), global1.a), Struct_5(true, Struct_4(Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(1u, 25u)], 4294967295u, var_0.x, 4294967295u), false, vec4<f32>(global1.b, global1.b, -547f, 1010f), 0i, Struct_2(global1.a, -961f, global1.a.b))), global1.b, var_0, Struct_1(u_input.c.x, global1.c, 1284f))), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global1.a.c, ~vec2<u32>(14275u, 4294967295u), Struct_1(u_input.a.x, global1.c, 1135f))), func_5(func_5(func_4(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global1.b, Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(u_input.c.x, 15u)]), global1.a.c, vec2<u32>(1u, 4642u), global1.a), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(global1.a.a, 15u)]), -1091f, u_input.c.zy, global1.a)), vec4<bool>(false, false, false, true), func_5(Struct_5(true, Struct_4(Struct_3(u_input.a, true, vec4<f32>(global1.a.c, -246f, -198f, global1.b), -8557i, Struct_2(global1.a, global1.a.c, global1.a.b))), 125f, var_0, global1.a), vec4<bool>(true, true, false, false), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(1u, 15u)]), -1886f, vec2<u32>(global1.a.a, 28418u), Struct_1(global3[_wgslsmith_index_u32(0u, 25u)], 20541i, -1000f)), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(0u, 15u)]), global1.b, vec2<u32>(global1.a.a, 38108u), Struct_1(0u, global1.c, -318f))), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(var_0.x, 15u)]), -795f, vec2<u32>(4343u, 4294967295u), Struct_1(var_0.x, 26221i, -734f))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), func_4(func_5(Struct_5(false, Struct_4(Struct_3(u_input.a, true, vec4<f32>(1344f, -713f, 266f, -930f), global1.c, Struct_2(Struct_1(var_0.x, global1.c, -796f), global1.b, -21226i))), 1275f, var_0, global1.a), vec4<bool>(true, false, false, false), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(var_0.x, 15u)]), -1155f, vec2<u32>(u_input.b, global3[_wgslsmith_index_u32(0u, 25u)]), Struct_1(var_0.x, 2147483647i, 945f)), Struct_5(false, Struct_4(Struct_3(u_input.a, false, vec4<f32>(global1.a.c, -331f, 1401f, global1.a.c), global1.c, Struct_2(global1.a, global1.b, global1.c))), 378f, vec2<u32>(global1.a.a, 22362u), global1.a)).b.a, _wgslsmith_f_op_f32(global1.a.c + -1000f), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(4294967295u, 15u)]), global1.b, vec2<u32>(global1.a.a, global1.a.a), Struct_1(11705u, global1.c, 256f)), func_4(global0[_wgslsmith_index_u32(var_0.x, 15u)], global1.b, Struct_5(true, Struct_4(Struct_3(u_input.a, true, vec4<f32>(2332f, global1.a.c, -661f, global1.a.c), 2147483647i, Struct_2(global1.a, -338f, 15390i))), 734f, var_0, Struct_1(4294967295u, 1i, -348f)), Struct_5(false, Struct_4(Struct_3(u_input.a, true, vec4<f32>(157f, -1477f, global1.b, global1.a.c), 8286i, Struct_2(global1.a, global1.a.c, global1.a.b))), global1.a.c, vec2<u32>(42935u, 94369u), Struct_1(1u, 20008i, 1223f)))), Struct_5(true, func_4(Struct_3(u_input.a, true, vec4<f32>(-1303f, -361f, 1049f, global1.b), -41905i, Struct_2(global1.a, -1635f, global1.c)), global1.b, Struct_5(false, Struct_4(Struct_3(u_input.a, false, vec4<f32>(1575f, global1.b, global1.a.c, -1000f), global1.a.b, Struct_2(global1.a, -763f, -2147483647i))), global1.a.c, vec2<u32>(4294967295u, 59275u), global1.a), Struct_5(true, Struct_4(global0[_wgslsmith_index_u32(12071u, 15u)]), 185f, vec2<u32>(u_input.c.x, var_0.x), Struct_1(var_0.x, -20923i, global1.a.c))).b, -1529f, reverseBits(u_input.a.zx), Struct_1(global1.a.a, global1.a.b, global1.a.c)))).e);
    let var_2 = firstLeadingBit(~var_1.b.a.e.c);
    global0 = array<Struct_3, 15>();
    var var_3 = ~abs(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.b.a.c.zx), _wgslsmith_mult_vec2_u32(~(~(~var_0)), _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.a.a, 43063u), var_0)), func_5(func_5(Struct_5(var_1.b.a.b, var_1.b, global1.a.c, var_1.b.a.a.zx, Struct_1(4294967295u, -1i, 1403f)), vec4<bool>(var_1.b.a.b, var_1.a, var_1.a, false), Struct_5(false, var_1.b, var_1.e.c, var_0, global1.a), var_1), select(vec4<bool>(false, var_1.b.a.b, var_1.a, false), vec4<bool>(var_1.b.a.b, true, var_1.a, false), var_1.b.a.b), func_4(global0[_wgslsmith_index_u32(1u, 15u)], -1000f, Struct_5(false, Struct_4(Struct_3(vec4<u32>(58991u, 0u, 91355u, 15593u), true, var_1.b.a.c, var_1.b.a.d, Struct_2(Struct_1(u_input.b, 17044i, -1026f), global1.a.c, global1.c))), 200f, vec2<u32>(0u, var_0.x), global1.a), Struct_5(var_1.a, Struct_4(global0[_wgslsmith_index_u32(11807u, 15u)]), -1086f, vec2<u32>(global1.a.a, var_0.x), Struct_1(var_1.b.a.e.a.a, var_2, -538f))), func_5(var_1, vec4<bool>(true, true, true, true), Struct_5(var_1.a, Struct_4(Struct_3(vec4<u32>(var_1.b.a.a.x, u_input.a.x, 4294967295u, var_1.b.a.a.x), var_1.b.a.b, var_1.b.a.c, var_1.e.b, Struct_2(var_1.b.a.e.a, 595f, var_2))), -550f, u_input.c.xz, var_1.b.a.e.a), Struct_5(var_1.b.a.b, var_1.b, 530f, vec2<u32>(22501u, 19726u), Struct_1(20523u, global1.c, var_1.e.c)))).d)));
}

