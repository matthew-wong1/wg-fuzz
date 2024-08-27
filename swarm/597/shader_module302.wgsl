struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(170f, Struct_1(vec4<u32>(107399u, 14100u, 9835u, 64664u), vec4<u32>(1u, 46814u, 1u, 20225u), i32(-2147483648), vec2<u32>(1605u, 21333u), vec2<f32>(-2411f, -2201f)), vec2<f32>(-244f, -1044f), Struct_1(vec4<u32>(1u, 47391u, 42565u, 3416u), vec4<u32>(0u, 4294967295u, 0u, 1u), i32(-2147483648), vec2<u32>(1u, 4294967295u), vec2<f32>(1146f, 1817f))));

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<u32>(33820u, 11511u, 6977u, 0u), vec4<u32>(0u, 39694u, 1u, 20056u), 23956i, vec2<u32>(1u, 34438u), vec2<f32>(-741f, -558f)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 9974u), vec4<u32>(4294967295u, 42737u, 4294967295u, 50485u), i32(-2147483648), vec2<u32>(0u, 1u), vec2<f32>(-416f, -1161f)), Struct_1(vec4<u32>(8518u, 4294967295u, 101451u, 0u), vec4<u32>(49890u, 0u, 1u, 4294967295u), 12683i, vec2<u32>(1u, 88045u), vec2<f32>(-673f, 318f)), Struct_1(vec4<u32>(53643u, 1u, 130745u, 32992u), vec4<u32>(0u, 1u, 1u, 3384u), -1i, vec2<u32>(1u, 21253u), vec2<f32>(-1157f, -190f)), Struct_1(vec4<u32>(32200u, 1u, 4294967295u, 0u), vec4<u32>(1u, 34260u, 26687u, 3112u), 52167i, vec2<u32>(0u, 138u), vec2<f32>(746f, -352f)), Struct_1(vec4<u32>(55744u, 0u, 31022u, 51953u), vec4<u32>(35749u, 4294967295u, 4294967295u, 47825u), -1i, vec2<u32>(0u, 103558u), vec2<f32>(-1000f, -233f)), Struct_1(vec4<u32>(14665u, 40295u, 62266u, 4294967295u), vec4<u32>(7908u, 4294967295u, 8754u, 25857u), 2147483647i, vec2<u32>(1u, 14751u), vec2<f32>(277f, 819f)), Struct_1(vec4<u32>(0u, 11200u, 10865u, 4294967295u), vec4<u32>(1u, 1u, 35654u, 1u), 262i, vec2<u32>(42545u, 13861u), vec2<f32>(-1242f, 1519f)), Struct_1(vec4<u32>(18553u, 47171u, 0u, 1u), vec4<u32>(0u, 4294967295u, 1u, 23556u), i32(-2147483648), vec2<u32>(4294967295u, 38619u), vec2<f32>(634f, 816f)), Struct_1(vec4<u32>(31222u, 4294967295u, 34161u, 21605u), vec4<u32>(68646u, 1u, 4294967295u, 6397u), 38639i, vec2<u32>(1u, 102411u), vec2<f32>(1371f, 755f)), Struct_1(vec4<u32>(76369u, 4294967295u, 16979u, 4294967295u), vec4<u32>(17532u, 4294967295u, 4294967295u, 4294967295u), 1i, vec2<u32>(25032u, 1u), vec2<f32>(-595f, -168f)), Struct_1(vec4<u32>(25016u, 0u, 24485u, 9152u), vec4<u32>(76787u, 4294967295u, 1u, 1u), -61221i, vec2<u32>(1u, 1u), vec2<f32>(791f, 727f)), Struct_1(vec4<u32>(1u, 0u, 37266u, 15896u), vec4<u32>(19935u, 4294967295u, 62854u, 13653u), -39997i, vec2<u32>(47305u, 4294967295u), vec2<f32>(1000f, -662f)), Struct_1(vec4<u32>(69199u, 41874u, 0u, 1u), vec4<u32>(19644u, 982u, 12871u, 43161u), 32825i, vec2<u32>(0u, 1u), vec2<f32>(-1107f, 1000f)), Struct_1(vec4<u32>(35085u, 542u, 4294967295u, 88699u), vec4<u32>(1u, 0u, 21164u, 1u), 19509i, vec2<u32>(13544u, 0u), vec2<f32>(886f, -2555f)), Struct_1(vec4<u32>(56850u, 38912u, 45341u, 1u), vec4<u32>(4294967295u, 1u, 40611u, 23663u), 51569i, vec2<u32>(4143u, 4294967295u), vec2<f32>(765f, -114f)), Struct_1(vec4<u32>(12567u, 0u, 1u, 1u), vec4<u32>(1u, 78411u, 0u, 12418u), i32(-2147483648), vec2<u32>(41823u, 1u), vec2<f32>(-1880f, 761f)), Struct_1(vec4<u32>(1u, 4294967295u, 1226u, 1u), vec4<u32>(51231u, 31927u, 1u, 4294967295u), -31576i, vec2<u32>(33091u, 1u), vec2<f32>(-722f, 291f)), Struct_1(vec4<u32>(4294967295u, 54393u, 4294967295u, 1u), vec4<u32>(7717u, 4294967295u, 87896u, 4294967295u), i32(-2147483648), vec2<u32>(4294967295u, 102975u), vec2<f32>(-272f, 949f)), Struct_1(vec4<u32>(4294967295u, 27304u, 11792u, 5326u), vec4<u32>(17892u, 38294u, 13559u, 4294967295u), -36733i, vec2<u32>(21129u, 57482u), vec2<f32>(835f, 469f)), Struct_1(vec4<u32>(39412u, 1u, 1u, 0u), vec4<u32>(0u, 9632u, 4294967295u, 38680u), i32(-2147483648), vec2<u32>(4294967295u, 0u), vec2<f32>(1993f, 428f)), Struct_1(vec4<u32>(4294967295u, 46899u, 17037u, 29630u), vec4<u32>(59223u, 4294967295u, 1u, 4294967295u), 20342i, vec2<u32>(4294967295u, 1u), vec2<f32>(-1000f, -1000f)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 41844u), vec4<u32>(1u, 0u, 1u, 18198u), 47040i, vec2<u32>(22474u, 4294967295u), vec2<f32>(549f, 376f)), Struct_1(vec4<u32>(50923u, 60826u, 54610u, 0u), vec4<u32>(4294967295u, 17645u, 0u, 0u), 26860i, vec2<u32>(0u, 26702u), vec2<f32>(811f, 277f)), Struct_1(vec4<u32>(10618u, 80824u, 56379u, 90258u), vec4<u32>(103887u, 1u, 4294967295u, 4294967295u), 51152i, vec2<u32>(1u, 336u), vec2<f32>(357f, 1040f)), Struct_1(vec4<u32>(85722u, 33097u, 4294967295u, 4054u), vec4<u32>(0u, 19736u, 32688u, 4294967295u), -14268i, vec2<u32>(1u, 82481u), vec2<f32>(835f, -979f)), Struct_1(vec4<u32>(53284u, 51634u, 4294967295u, 61456u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), 45060i, vec2<u32>(1u, 31172u), vec2<f32>(-1680f, -1436f)));

var<private> global2: i32 = -23394i;

var<private> global3: array<vec4<bool>, 29>;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(63295u, 0u, 64079u, 4294967295u), vec4<u32>(4294967295u, 1u, 48431u, 55984u), -24438i, vec2<u32>(47026u, 0u), vec2<f32>(689f, -546f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global3 = array<vec4<bool>, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(-1000f)), global0.a.b.e.x, arg_0.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-498f, 1000f, 217f, global0.a.d.e.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(-693f, global4.e.x, global4.e.x, global4.e.x), vec4<f32>(global4.e.x, arg_0.e.x, arg_0.e.x, global4.e.x))) - vec4<f32>(_wgslsmith_f_op_f32(sign(170f)), _wgslsmith_f_op_f32(arg_0.e.x * -757f), arg_0.e.x, _wgslsmith_f_op_f32(-arg_0.e.x)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.e.x)), arg_0.e.x, arg_0.e.x, _wgslsmith_f_op_f32(max(283f, -334f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2034f), 1210f, _wgslsmith_f_op_f32(-295f * arg_0.e.x), _wgslsmith_f_op_f32(-global0.a.d.e.x)))))));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, max(max(-2147483647i, global4.c), i32(-1i) * -2147483647i), i32(-1i) * -1i), countOneBits(~(-vec3<i32>(global0.a.b.c, arg_0.c, global0.a.b.c)))), 1i);
    let var_2 = abs(reverseBits(0u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, global0.a.d.a.x, global4.d.x), firstLeadingBit(vec4<u32>(4294967295u, global0.a.b.a.x, arg_0.b.x, 4294967295u))) % 32u)));
    var var_3 = ~2147483647i | _wgslsmith_add_i32(46026i, global0.a.b.c);
    return global4.d;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(global0.a);
    global1 = array<Struct_1, 27>();
    global4 = var_0.a.b;
    let var_1 = ~(~24192u);
    let var_2 = global4.b.wzw;
    return Struct_1(countOneBits(~min(select(global4.a, var_0.a.d.a, true), var_0.a.d.b & global4.a)), vec4<u32>(_wgslsmith_mult_u32(~(~54365u), 44530u), 1u, _wgslsmith_add_u32(4021u, var_0.a.b.a.x), countOneBits(_wgslsmith_dot_vec2_u32(func_3(Struct_1(vec4<u32>(global0.a.b.b.x, 1u, u_input.b, 0u), vec4<u32>(4283u, var_1, var_0.a.d.d.x, 4294967295u), 35861i, global4.a.wx, var_0.a.d.e)), global0.a.b.d))), u_input.a.x, _wgslsmith_div_vec2_u32(~(global4.a.yy | _wgslsmith_add_vec2_u32(global0.a.d.b.wz, vec2<u32>(var_0.a.b.b.x, global0.a.b.b.x))), global0.a.b.d), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-444f * -1164f), _wgslsmith_f_op_f32(-global4.e.x))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = func_2();
    let var_2 = var_1;
    var var_3 = Struct_3(global0.a);
    let var_4 = !global3[_wgslsmith_index_u32(global4.b.x, 29u)];
    return Struct_2(-932f, Struct_1(var_3.a.b.b, global4.b, -u_input.a.x, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, var_2.b.x) | ~vec2<u32>(20865u, 46554u), var_3.a.b.d), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e)), vec2<f32>(_wgslsmith_f_op_f32(-911f - var_3.a.a), var_3.a.b.e.x), select(!var_4.zz, vec2<bool>(var_4.x, false), select(var_4.yy, vec2<bool>(true, false), var_4.x))))), vec2<f32>(1076f, _wgslsmith_f_op_f32(select(var_2.e.x, var_3.a.c.x, true))), Struct_1(vec4<u32>(arg_1.x, _wgslsmith_add_u32(arg_1.x, ~var_3.a.b.b.x), arg_1.x, 0u), vec4<u32>(global4.d.x, var_1.b.x, 1u, 25439u) ^ vec4<u32>(~arg_1.x, var_1.d.x, _wgslsmith_div_u32(global0.a.b.b.x, var_3.a.b.a.x), _wgslsmith_div_u32(u_input.b, 4294967295u)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -var_0.c, global0.a.b.c), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(27512i, 60274i, -2147483647i), vec3<i32>(32782i, u_input.a.x, global4.c)), -vec3<i32>(30203i, 1929i, -31199i))), var_1.b.xx, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b.e.x, -901f)), var_1.e), var_3.a.d.e))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, global4.e.x))), arg_2.d.e)))) - arg_2.c);
    global2 = -2513i;
    var var_1 = _wgslsmith_mod_i32(-16641i, firstLeadingBit(-1i | _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.a.b.c, global0.a.d.c), 1i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-491f, _wgslsmith_f_op_f32(f32(-1f) * -1592f), func_2().e.x, arg_2.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.e.x, global4.e.x, global0.a.d.e.x, 1260f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, -1246f, global0.a.a, global4.e.x) - vec4<f32>(global0.a.d.e.x, arg_1.c.x, global0.a.b.e.x, global4.e.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(342f, 349f, var_0.x, var_0.x), vec4<f32>(1155f, arg_2.b.e.x, arg_1.a, -1786f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e.x, arg_1.a, 556f, arg_1.b.e.x))), vec4<f32>(var_0.x, arg_2.d.e.x, _wgslsmith_f_op_f32(-432f * 668f), _wgslsmith_f_op_f32(-var_0.x)))), false)), vec4<f32>(-1473f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(487f)), arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.e.x)), 1f)));
    global1 = array<Struct_1, 27>();
    return Struct_4(arg_0.zy, global0.a.a);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_4 {
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    global3 = array<vec4<bool>, 29>();
    var var_0 = arg_1;
    let var_1 = ~select(firstTrailingBit(min(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), u_input.a), -vec2<i32>(2147483647i, 2147483647i))), vec2<i32>(_wgslsmith_add_i32(-13910i, i32(-1i) * -1i), arg_1.a.d.c), true);
    return Struct_4(arg_0.a, _wgslsmith_f_op_f32(837f - _wgslsmith_f_op_f32(select(1471f, global0.a.b.e.x, any(vec2<bool>(arg_0.a.x, false))))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    let var_0 = vec2<i32>(-15125i, reverseBits(-1i));
    var var_1 = all(global3[_wgslsmith_index_u32(func_3(func_2()).x, 29u)]);
    let var_2 = Struct_3(global0.a);
    let var_3 = func_5(Struct_4(select(!(!vec2<bool>(false, arg_1.a.x)), vec2<bool>(true, true & arg_2), !arg_1.a), func_1(vec2<i32>(-2147483647i >> (global0.a.b.a.x % 32u), 30933i), ~vec3<u32>(1u, 1253u, 0u)).c.x), var_2);
    var_1 = true;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(abs(vec3<i32>(_wgslsmith_clamp_i32(21162i, u_input.a.x, global0.a.d.c), firstTrailingBit(global0.a.b.c), global4.c)) << ((_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 25629u, 41053u), global4.b.wwz), vec3<u32>(global0.a.d.b.x, global4.d.x, 0u)) & global0.a.d.b.zyx) % vec3<u32>(32u)), func_5(func_4(vec4<bool>(true, false, true, true), global0.a, func_1(u_input.a, vec3<u32>(u_input.b, u_input.b, 2243u) | global4.a.yyx)), Struct_3(func_1(u_input.a & u_input.a, vec3<u32>(95635u, global4.d.x, 11873u)))), true);
    let var_0 = (countOneBits(1u) ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(~76388u, 63420u & global4.d.x), ~func_6(vec3<i32>(global4.c, -1i, 0i), Struct_4(vec2<bool>(true, true), -1000f), true).a.b.b.x)) > ~global4.a.x;
    global4 = Struct_1(firstLeadingBit(vec4<u32>(4294967295u, ~global0.a.b.b.x, ~u_input.b, 115581u)) | func_6(firstTrailingBit(~vec3<i32>(-13476i, 0i, -3612i)), Struct_4(vec2<bool>(true, var_0), _wgslsmith_f_op_f32(f32(-1f) * -1174f)), any(vec4<bool>(var_0, var_0, var_0, true))).a.b.a, ~_wgslsmith_sub_vec4_u32(firstLeadingBit(global0.a.d.b) ^ ~vec4<u32>(0u, global0.a.d.d.x, u_input.b, global0.a.d.b.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(global4.b.x, 6539u, global4.d.x, 1u), global4.a | global4.a)), global0.a.b.c, vec2<u32>(0u, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.d.e * vec2<f32>(_wgslsmith_f_op_f32(max(global4.e.x, -1886f)), _wgslsmith_f_op_f32(429f * -953f))) - global4.e));
    var var_1 = _wgslsmith_div_u32(global0.a.d.d.x, ~(~(~1u)));
    var_1 = 0u;
    var var_2 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -global0.a.b.c, max(-vec3<i32>(1i, abs(global4.c), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.c, global4.c, 0i, -1i), vec4<i32>(-10620i, u_input.a.x, global0.a.b.c, 1884i))), max(vec3<i32>(var_2.b.c, _wgslsmith_mult_i32(global4.c, global0.a.b.c), -48108i), vec3<i32>(-1i) * -vec3<i32>(var_2.d.c, var_2.d.c, var_2.b.c))), -37194i, ~u_input.b, func_1(u_input.a, vec3<u32>(31794u, select(~global0.a.d.a.x, ~27007u, all(global3[_wgslsmith_index_u32(10867u, 29u)])), select(global0.a.b.d.x, u_input.b | 0u, !var_0))).b.c);
}

