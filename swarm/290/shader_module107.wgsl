struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(false, Struct_1(-1i, -906f), Struct_2(Struct_1(i32(-2147483648), -508f), 27203u, Struct_1(8114i, -1541f)), Struct_2(Struct_1(4453i, -1000f), 0u, Struct_1(2147483647i, 1261f))), Struct_3(false, Struct_1(i32(-2147483648), -2108f), Struct_2(Struct_1(3075i, -824f), 0u, Struct_1(10057i, -430f)), Struct_2(Struct_1(0i, 1166f), 11995u, Struct_1(-1i, 490f))), Struct_3(true, Struct_1(57024i, 1498f), Struct_2(Struct_1(-13484i, 1235f), 0u, Struct_1(0i, -1181f)), Struct_2(Struct_1(0i, -546f), 4294967295u, Struct_1(0i, 622f))), Struct_3(false, Struct_1(116956i, 1000f), Struct_2(Struct_1(-1i, 499f), 8963u, Struct_1(-24893i, 333f)), Struct_2(Struct_1(1i, 573f), 2780u, Struct_1(11396i, 701f))), Struct_3(false, Struct_1(30433i, -815f), Struct_2(Struct_1(52395i, 1087f), 1u, Struct_1(2147483647i, 702f)), Struct_2(Struct_1(-57306i, -831f), 82557u, Struct_1(-18932i, -608f))), Struct_3(false, Struct_1(2147483647i, 1247f), Struct_2(Struct_1(11129i, 771f), 48490u, Struct_1(0i, -1890f)), Struct_2(Struct_1(1i, 677f), 0u, Struct_1(-24826i, 186f))), Struct_3(true, Struct_1(6206i, 1738f), Struct_2(Struct_1(0i, -753f), 1u, Struct_1(-13452i, -104f)), Struct_2(Struct_1(-545i, -389f), 13499u, Struct_1(-16397i, -1181f))), Struct_3(false, Struct_1(-1i, 297f), Struct_2(Struct_1(0i, -922f), 24767u, Struct_1(2147483647i, -1230f)), Struct_2(Struct_1(-30609i, -285f), 7301u, Struct_1(7146i, 1042f))), Struct_3(false, Struct_1(2147483647i, -1923f), Struct_2(Struct_1(-48527i, 1135f), 96587u, Struct_1(21260i, 335f)), Struct_2(Struct_1(1i, 950f), 72696u, Struct_1(-39755i, 545f))), Struct_3(true, Struct_1(-49957i, -367f), Struct_2(Struct_1(0i, -660f), 4294967295u, Struct_1(75524i, 929f)), Struct_2(Struct_1(-1i, 263f), 11537u, Struct_1(27188i, -1396f))), Struct_3(false, Struct_1(-8458i, 1392f), Struct_2(Struct_1(1i, -2685f), 22279u, Struct_1(-42916i, 1088f)), Struct_2(Struct_1(-1397i, -587f), 1u, Struct_1(35093i, -1462f))), Struct_3(true, Struct_1(-1i, 1158f), Struct_2(Struct_1(-8270i, 1233f), 47715u, Struct_1(22549i, 295f)), Struct_2(Struct_1(1i, 1390f), 0u, Struct_1(-16677i, -986f))), Struct_3(true, Struct_1(0i, -1602f), Struct_2(Struct_1(2147483647i, 1726f), 15929u, Struct_1(i32(-2147483648), 1254f)), Struct_2(Struct_1(-81309i, 269f), 0u, Struct_1(2762i, 633f))), Struct_3(true, Struct_1(3527i, 320f), Struct_2(Struct_1(29256i, -714f), 1u, Struct_1(i32(-2147483648), 356f)), Struct_2(Struct_1(0i, -1373f), 99412u, Struct_1(12873i, 562f))), Struct_3(false, Struct_1(1i, -124f), Struct_2(Struct_1(-1i, -682f), 102171u, Struct_1(2147483647i, -1176f)), Struct_2(Struct_1(-1i, -1000f), 0u, Struct_1(i32(-2147483648), 133f))), Struct_3(true, Struct_1(35630i, -595f), Struct_2(Struct_1(-8537i, -1038f), 40812u, Struct_1(39992i, 293f)), Struct_2(Struct_1(-1i, 433f), 0u, Struct_1(12457i, -739f))), Struct_3(false, Struct_1(1i, 1228f), Struct_2(Struct_1(2147483647i, -1399f), 1u, Struct_1(-41373i, 1000f)), Struct_2(Struct_1(0i, 1896f), 4294967295u, Struct_1(0i, 920f))), Struct_3(true, Struct_1(0i, 1456f), Struct_2(Struct_1(8348i, 862f), 87815u, Struct_1(1i, -282f)), Struct_2(Struct_1(-1i, 818f), 35132u, Struct_1(i32(-2147483648), -1263f))), Struct_3(false, Struct_1(-17099i, -738f), Struct_2(Struct_1(-30470i, -1455f), 43144u, Struct_1(i32(-2147483648), -1540f)), Struct_2(Struct_1(2147483647i, 1574f), 4294967295u, Struct_1(-46223i, -388f))), Struct_3(false, Struct_1(-1i, 1760f), Struct_2(Struct_1(-1i, -1043f), 4692u, Struct_1(-20991i, 600f)), Struct_2(Struct_1(i32(-2147483648), 518f), 1u, Struct_1(31193i, -1000f))), Struct_3(true, Struct_1(6869i, -352f), Struct_2(Struct_1(70572i, 755f), 21718u, Struct_1(-2475i, 889f)), Struct_2(Struct_1(1i, 1000f), 1u, Struct_1(-1i, 1000f))), Struct_3(true, Struct_1(4753i, 1314f), Struct_2(Struct_1(7667i, -711f), 4294967295u, Struct_1(0i, 1355f)), Struct_2(Struct_1(23451i, -147f), 4294967295u, Struct_1(1i, 2374f))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = ~(~vec3<u32>(arg_0 | u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 59802u, 59862u, arg_0), vec4<u32>(arg_1.b, u_input.b.x, 4294967295u, arg_0)), firstLeadingBit(44182u))) >> (reverseBits(firstTrailingBit(firstLeadingBit(vec3<u32>(0u, u_input.b.x, arg_1.b) ^ vec3<u32>(arg_1.b, arg_0, arg_1.b)))) % vec3<u32>(32u));
    global3 = array<Struct_3, 22>();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.wy - vec2<f32>(360f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.b + arg_1.a.b), global1.b)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global2.xz))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2526f) + 148f))), -287f);
    let var_1 = global2.wy;
    return true;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global2.yw)) * arg_0.xx)));
    var var_0 = global3[_wgslsmith_index_u32(~abs(u_input.b.x), 22u)];
    var var_1 = !select(vec2<bool>(any(select(vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(false, false, false, true), vec4<bool>(false, var_0.a, true, false))), var_0.a && var_0.a), vec2<bool>(!var_0.a, !(u_input.b.x >= 1u)), vec2<bool>(func_3(65576u, var_0.c), !var_0.a));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, 1162f), arg_0.zx, var_1.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) - global2.wz), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.zy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, global0.x))))))));
    global1 = var_0.d.c;
    return Struct_2(var_0.c.c, var_0.c.b, Struct_1(global1.a, global1.b));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.zyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, arg_1.c.b, -1544f) - vec3<f32>(arg_1.a.b, 1226f, 806f)), global2.wzx)) - vec3<f32>(_wgslsmith_div_f32(1971f, global2.x), _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_div_f32(-614f, global1.b))), select(false, select(true, false, true), any(vec3<bool>(true, false, false))) && all(vec2<bool>(false, false)))));
    let var_1 = u_input.b;
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1000f + global0.x), func_2(global2.zzy).c.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-522f)), global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.a.b)))))))));
    var var_2 = Struct_3(true, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global2.x, -644f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 982f, -1904f) + vec3<f32>(global2.x, global0.x, arg_1.a.b))))).c, arg_1, arg_1);
    let var_3 = Struct_3(var_2.a, Struct_1(_wgslsmith_mult_i32(-28491i, countOneBits(~var_0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1450f)) + _wgslsmith_f_op_f32(var_0.c.b + -1453f)))), Struct_2(var_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1.b >> (arg_1.b % 32u), u_input.b.x, ~var_1.x), vec4<u32>(u_input.b.x, ~var_0.b, ~4294967295u, u_input.b.x)), var_2.d.a), func_2(_wgslsmith_f_op_vec3_f32(-global2.yyx)));
    return Struct_2(var_3.c.c, var_0.b, Struct_1(arg_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f + 359f)))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec4<i32> {
    global3 = array<Struct_3, 22>();
    let var_0 = func_4(7130i, func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, 1000f, false)), _wgslsmith_f_op_f32(select(-407f, -1571f, false)), _wgslsmith_f_op_f32(global1.b - global0.x)), global2.wxz))));
    let var_1 = false;
    let var_2 = var_0;
    global3 = array<Struct_3, 22>();
    return vec4<i32>(_wgslsmith_mult_i32(var_0.a.a, countOneBits(u_input.a)) ^ var_2.a.a, var_2.a.a, _wgslsmith_sub_i32(select(-14477i, global1.a, var_1), var_2.c.a), 10870i) & _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.a, -1417i, 28089i, 1i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, global1.a, 48829i), vec4<i32>(15260i, var_0.a.a, u_input.a, -28587i)), ~64i, -65594i, 12417i) & reverseBits(-vec4<i32>(-3171i, u_input.a, global1.a, -19338i)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(-arg_1.x, global0.x);
    global3 = array<Struct_3, 22>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-531f, -1000f, var_0.b, var_0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -725f, global1.b, 821f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(449f, 653f, 485f, var_0.b) - vec4<f32>(898f, -759f, -1738f, -1538f)), vec4<f32>(global2.x, -1000f, global1.b, 297f))))));
    let var_2 = -931f;
    let var_3 = _wgslsmith_sub_vec2_i32(firstTrailingBit(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.a, u_input.a), arg_1.xx))) & vec2<i32>(_wgslsmith_mod_i32(-arg_1.x, -2147483647i), ~_wgslsmith_add_i32(global1.a, var_0.a)), firstLeadingBit(arg_1.zw));
    return Struct_1(~(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), global0.x)))));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_1.a.b;
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(floor(func_4(global1.a, Struct_2(Struct_1(global1.a, -875f), u_input.b.x, arg_1.a)).a.b)), _wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-888f, arg_1.c.b) + _wgslsmith_f_op_f32(floor(global0.x)))), vec4<f32>(arg_1.c.b, func_5(!vec2<bool>(false, arg_0), vec4<i32>(arg_1.a.a, -8136i, arg_1.c.a, u_input.a)).b, _wgslsmith_f_op_f32(abs(-275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1034f, global0.x, 1056f, global2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(669f, -1447f, 743f, -803f) - vec4<f32>(global0.x, arg_1.a.b, global2.x, arg_1.a.b))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, 1000f, 181f, -599f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_0, -1463f)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1162f, -1639f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 938f), -674f, func_2(vec3<f32>(global2.x, -683f, -1736f)).a.b))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, arg_3.b, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, arg_3.b, 0u, 4294967295u), vec4<u32>(86923u, arg_2, 0u, 75770u))) >= (u_input.b.x ^ 28420u);
    let var_3 = global3[_wgslsmith_index_u32(~u_input.b.x, 22u)];
    return func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)))));
}

fn func_7(arg_0: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.wz));
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c.b);
    let var_1 = _wgslsmith_div_vec2_f32(global2.zw, global2.yw);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2.zww).a.b - global0.x))));
    let var_2 = 41072u;
    return global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~var_2), ~38814u), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(false, Struct_2(func_5(vec2<bool>(true, false), func_1(u_input.b.x, vec4<u32>(15725u, u_input.b.x, u_input.b.x, 145854u))), ~countOneBits(u_input.b.x), func_4(-u_input.a, Struct_2(Struct_1(global1.a, -180f), u_input.b.x, Struct_1(u_input.a, global0.x))).a), ~(~(u_input.b.x >> (u_input.b.x % 32u))), Struct_2(func_4(firstLeadingBit(u_input.a), Struct_2(Struct_1(-65127i, global0.x), 0u, Struct_1(global1.a, global1.b))).c, min(u_input.b.x, u_input.b.x), Struct_1(reverseBits(global1.a), _wgslsmith_div_f32(907f, global2.x)))));
    var var_1 = var_0.d.a;
    let var_2 = vec3<f32>(859f, global1.b, _wgslsmith_f_op_f32(global2.x - global0.x));
    var var_3 = var_0.a;
    global0 = var_2.zy;
    let var_4 = _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, 0i, 1i, func_1(u_input.b.x, vec4<u32>(4294967295u, 0u, var_0.d.b, var_0.d.b)).x)) | _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_0.c.a.a, var_0.c.a.a, var_0.b.a), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, -1i, var_1.a), vec4<i32>(global1.a, global1.a, u_input.a, u_input.a))), countOneBits(~vec4<i32>(global1.a, global1.a, var_1.a, -48823i))), vec4<i32>(u_input.a, reverseBits(_wgslsmith_mod_i32(var_1.a, i32(-1i) * -1i)), u_input.a, 0i));
    var var_5 = _wgslsmith_f_op_vec3_f32(round(var_2));
    var_1 = func_2(global2.wyy).c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-603f, var_5.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))), vec4<i32>(_wgslsmith_mod_i32(u_input.a, var_0.c.c.a ^ 1i), 2147483647i, firstLeadingBit(var_0.c.c.a), _wgslsmith_dot_vec2_i32(~vec2<i32>(24845i, 1i) << ((u_input.b | u_input.b) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(43128i, var_4), vec2<i32>(-2147483647i, 59479i)))), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(1i, global1.a), var_0.c.a.a)), select(_wgslsmith_add_vec2_i32(vec2<i32>(-44904i, 1i), abs(vec2<i32>(var_4, var_0.b.a))), vec2<i32>(-16545i, u_input.a), var_0.a)), min(~u_input.b << (~vec2<u32>(41691u, 52607u) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(countOneBits(u_input.b), vec2<u32>(1u, 1u), vec2<u32>(var_0.d.b, u_input.b.x))));
}

