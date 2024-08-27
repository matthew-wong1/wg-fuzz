struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_1(4294967295u, 11728u, 2147483647i, 301f, 694f), Struct_1(1u, 5890u, -20693i, -1849f, 692f)), Struct_4(Struct_1(100660u, 4294967295u, -25211i, 1000f, 1992f), Struct_1(0u, 10001u, 8780i, 764f, 587f)), Struct_4(Struct_1(0u, 95961u, 12541i, -2135f, -145f), Struct_1(58952u, 82200u, 72899i, 173f, 1073f)), Struct_4(Struct_1(4294967295u, 25039u, 14109i, 759f, 604f), Struct_1(1u, 0u, 0i, 1000f, 1085f)), Struct_4(Struct_1(60350u, 0u, 14484i, 583f, 1303f), Struct_1(4294967295u, 0u, -1i, -1042f, 222f)), Struct_4(Struct_1(4294967295u, 43029u, -14238i, 1000f, -1516f), Struct_1(0u, 0u, -31147i, -1170f, -365f)), Struct_4(Struct_1(70018u, 13874u, -22582i, 488f, 1000f), Struct_1(39458u, 4294967295u, 59996i, -1124f, 495f)), Struct_4(Struct_1(4294967295u, 21663u, -20275i, -416f, 135f), Struct_1(0u, 16775u, 0i, 556f, 764f)), Struct_4(Struct_1(0u, 33819u, -16581i, -1000f, -1106f), Struct_1(29169u, 16021u, i32(-2147483648), 1213f, 1317f)), Struct_4(Struct_1(4294967295u, 76700u, 20422i, 752f, -1073f), Struct_1(30436u, 26435u, i32(-2147483648), -157f, 456f)));

var<private> global1: array<u32, 12> = array<u32, 12>(0u, 43240u, 48255u, 0u, 45214u, 0u, 0u, 85939u, 21301u, 0u, 25910u, 0u);

var<private> global2: Struct_3 = Struct_3(Struct_1(1u, 76364u, 1i, -1000f, 165f), Struct_1(4294967295u, 12639u, -85626i, 1000f, 1763f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global1 = array<u32, 12>();
    let var_0 = 9140i;
    return _wgslsmith_mult_i32(var_0, arg_0.x) <= -31087i;
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: bool, arg_3: u32) -> vec3<f32> {
    global0 = array<Struct_4, 10>();
    var var_0 = _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(arg_0, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, arg_3, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 39415u, u_input.a.x, global2.b.a)))), ~(arg_0 ^ abs(reverseBits(arg_0))));
    global0 = array<Struct_4, 10>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-1609f - global2.a.e), _wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1554f, -458f)) + _wgslsmith_f_op_f32(-global2.a.d)) - 732f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(global2.a.d, _wgslsmith_div_f32(620f, -607f)))), Struct_1(arg_3, reverseBits(1u), i32(-1i) * -(global2.a.c | global2.a.c), _wgslsmith_f_op_f32(sign(810f)), _wgslsmith_f_op_f32(floor(arg_1))), !any(vec4<bool>(select(false, true, arg_2), 0u > arg_3, true, func_1(vec4<i32>(-33389i, global2.b.c, -2147483647i, global2.a.c)))));
    var var_2 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-559f)))) - arg_1), global2.a.e));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> f32 {
    global1 = array<u32, 12>();
    var var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~global1[_wgslsmith_index_u32(max(firstTrailingBit(global1[_wgslsmith_index_u32(9798u, 12u)]), ~arg_0.c.b), 12u)], ~global2.b.a);
    global1 = array<u32, 12>();
    var var_1 = 0i;
    var_1 = arg_0.c.c;
    return 2085f;
}

fn func_2(arg_0: Struct_5, arg_1: i32) -> u32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-984f, arg_0.e, global2.b.d)), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(35147u, global2.b.b, 34696u, 75375u), -1218f, false, global2.b.a)), arg_0.d.a, true), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.a.e - _wgslsmith_f_op_f32(min(global2.b.d, 416f))) - global2.a.e), 331f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(407f, arg_0.d.b.e, arg_0.e))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.d, 727f, 168f) * vec3<f32>(126f, 1055f, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(global2.b.d + global2.b.d), _wgslsmith_f_op_f32(global2.b.e + _wgslsmith_f_op_f32(-global2.a.e)), -925f)), global2.b, false);
    global0 = array<Struct_4, 10>();
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(~min(u_input.a, select(u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 95696u, var_0.c.b, 1u)), !vec4<bool>(true, true, true, var_0.d))), 583f, true, global2.a.a));
    var var_2 = select(select(vec3<bool>(true, false, false), vec3<bool>(true | (global1[_wgslsmith_index_u32(global2.b.a, 12u)] <= 57981u), var_0.d, true), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -2147483647i) & vec2<i32>(var_0.c.c, -24057i), abs(vec2<i32>(-21542i, var_0.c.c))) != -1i), select(!select(select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(false, var_0.d, var_0.d), true), vec3<bool>(false, false, var_0.d), true & var_0.d), !vec3<bool>(func_1(vec4<i32>(global2.b.c, 2147483647i, arg_1, var_0.c.c)), var_0.d, true), select(select(vec3<bool>(true, true, var_0.d), vec3<bool>(var_0.d, var_0.d, var_0.d), var_0.d & true), select(select(vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(false, true, var_0.d), var_0.d), vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(true, var_0.d, var_0.d)), vec3<bool>(var_0.d, !var_0.d, func_1(vec4<i32>(arg_1, -2147483647i, arg_0.a, arg_1))))), vec3<bool>(any(!select(vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(true, false, true))), true, false));
    var var_3 = arg_0;
    return ~6315u;
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_2), 235f);
    global1 = array<u32, 12>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 10u)];
    let var_2 = Struct_4(var_1.b, global2.a);
    var var_3 = vec3<i32>(-global2.a.c, -1i, -(_wgslsmith_mod_i32(-2964i, ~var_2.b.c) << (35413u % 32u)));
    return Struct_2(vec3<f32>(-1654f, -881f, -984f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1980f)), _wgslsmith_f_op_f32(min(var_1.a.e, 282f))))), 735f, -422f), var_2.b, false);
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~vec3<u32>(_wgslsmith_div_u32(func_5(1u, _wgslsmith_f_op_vec2_f32(-arg_1.yy), _wgslsmith_f_op_f32(arg_2.b.x * -1071f), arg_0.x).c.a, ~1u), countOneBits(82508u), ~global1[_wgslsmith_index_u32(func_5(~global2.b.a, _wgslsmith_f_op_vec2_f32(arg_2.a.zx + vec2<f32>(-1606f, 620f)), _wgslsmith_f_op_f32(f32(-1f) * -443f), 11216u).c.b, 12u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(_wgslsmith_f_op_f32(trunc(-836f)), global2.a.d, arg_2.c.d, arg_1.x));
    var var_2 = arg_2;
    let var_3 = var_2.d;
    var var_4 = vec2<i32>(-1i) * -max(~_wgslsmith_div_vec2_i32(vec2<i32>(global2.b.c, 39599i), vec2<i32>(9236i, global2.b.c)), vec2<i32>(~(-26628i), reverseBits(-1i)));
    return Struct_1(arg_0.x, 0u, abs(0i) | _wgslsmith_mod_i32(-1i, arg_2.c.c), -361f, var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(func_1(vec4<i32>(abs(-12032i), _wgslsmith_mod_i32(-74850i, 1i), _wgslsmith_mult_i32(~2147483647i, global2.b.c & global2.a.c), global2.b.c & (i32(-1i) * -11489i))), true);
    let var_1 = 4294967295u;
    global0 = array<Struct_4, 10>();
    let var_2 = func_6(min(u_input.a, ~vec4<u32>(~1u, 20118u, var_1, ~global1[_wgslsmith_index_u32(32797u, 12u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_f_op_f32(-global2.b.d), _wgslsmith_f_op_f32(global2.b.e - global2.a.d), 532f)))), func_5(global1[_wgslsmith_index_u32(~func_2(Struct_5(-17524i, global2.b, var_1, Struct_4(Struct_1(0u, 4294967295u, 0i, global2.a.e, global2.a.d), Struct_1(u_input.a.x, global2.a.a, global2.a.c, global2.a.d, -422f)), global2.a.d), global2.a.c) >> (~global2.a.b % 32u), 12u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1135f, global2.b.e) * vec2<f32>(-1542f, global2.b.e)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.b.d, -961f))), vec2<bool>(true, true)))), -1591f, _wgslsmith_add_u32(~(~21290u), firstLeadingBit(abs(0u)))));
    let var_3 = select(select(select(vec3<bool>(false & var_0.x, func_5(20244u, vec2<f32>(-121f, var_2.e), var_2.e, 41650u).d, any(vec2<bool>(true, var_0.x))), vec3<bool>(var_0.x | var_0.x, var_0.x, var_0.x && true), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), select(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, var_0.x)), !(!vec3<bool>(var_0.x, var_0.x, false)), !(var_0.x || var_0.x)), !(!var_0.x == true)), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x), true), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), 1373i == var_2.c), select(vec3<bool>(all(vec4<bool>(true, var_0.x, var_0.x, true)), var_0.x, var_0.x | var_0.x), vec3<bool>(var_0.x, any(vec3<bool>(false, false, false)), any(vec3<bool>(var_0.x, var_0.x, var_0.x))), var_0.x), any(select(vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), false)))), vec3<bool>(var_0.x, var_0.x, all(vec2<bool>(false, any(vec4<bool>(var_0.x, true, true, var_0.x))))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(ceil(-719f)), -1656f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1488f, -1781f, -636f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.d, _wgslsmith_f_op_f32(-global2.a.e), global2.b.d))), !select(!vec3<bool>(true, var_0.x, var_0.x), var_3, var_3))), Struct_1(0u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 1186u, var_1)), max(vec3<u32>(47034u, 0u, var_2.a), u_input.a.zzy))), 12u)], -var_2.c, _wgslsmith_f_op_f32(187f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f))), var_2.e), all(vec4<bool>(!var_3.x && var_3.x, !(true && var_0.x), any(var_3), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 12u)], u_input.a.x) ^ u_input.a.yz, min(vec2<u32>(32861u, var_4.c.b) ^ vec2<u32>(1u, 55272u), ~vec2<u32>(u_input.a.x, var_1))));
}

