struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(10156u, 1755f);

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(4294967295u, 1098f), Struct_1(79662u, 553f), Struct_1(1u, -358f), Struct_1(6714u, 1827f), Struct_1(22541u, -1094f), Struct_1(30385u, 2440f), Struct_1(54661u, 2225f), Struct_1(16624u, -322f), Struct_1(4294967295u, 307f), Struct_1(1u, -606f), Struct_1(9136u, -974f), Struct_1(4294967295u, 594f), Struct_1(0u, -1371f), Struct_1(1u, -915f), Struct_1(51312u, 1000f), Struct_1(0u, -326f), Struct_1(47053u, -754f), Struct_1(0u, -1752f), Struct_1(1147u, 1053f), Struct_1(25332u, -1462f), Struct_1(54669u, -139f), Struct_1(86622u, 125f), Struct_1(63352u, 3385f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(35088u, 23u)], 4294967295u, false, Struct_1(select(u_input.b.x, min(arg_0.x, 47188u) << (global0.a % 32u), true), _wgslsmith_f_op_f32(max(309f, _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(692f * global0.b))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-572f)), -367f, -1000f, -492f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2411f), -264f, _wgslsmith_f_op_f32(-var_0.d.b), -626f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.b)), 917f, -417f, _wgslsmith_f_op_f32(-global0.b)) + vec4<f32>(1658f, -1233f, var_0.d.b, var_0.d.b)))));
    global1 = array<Struct_1, 23>();
    var var_2 = !select(!vec3<bool>(any(vec3<bool>(false, false, false)), true, true), !(!vec3<bool>(var_0.c, var_0.c, var_0.c)), var_0.c);
    let var_3 = Struct_3(select(!vec3<bool>(var_2.x, true, var_2.x), select(select(!vec3<bool>(false, true, var_2.x), !vec3<bool>(true, false, var_2.x), var_0.c), !(!vec3<bool>(var_0.c, var_2.x, true)), !vec3<bool>(false, var_0.c, false)), vec3<bool>(var_0.c, true, var_0.c)), _wgslsmith_clamp_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(0i, _wgslsmith_mod_i32(27209i, -2147483647i), -47074i, abs(-1i))), _wgslsmith_add_vec4_i32(-vec4<i32>(0i, -60522i, -1i, -1i), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, -49474i, -2147483647i), vec4<i32>(0i, 1i, 0i, -2147483647i), vec4<i32>(22354i, 10130i, -2147483647i, -886i)), _wgslsmith_sub_vec4_i32(vec4<i32>(8051i, -19475i, -14253i, -4455i), vec4<i32>(0i, -203i, -3348i, -30710i)))), -(~vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -10450i))), !var_2.yy);
    return 0u;
}

fn func_2() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(32432u >> (firstTrailingBit(4294967295u) % 32u), u_input.a.x), 23u)];
    global1 = array<Struct_1, 23>();
    var var_1 = vec4<bool>(true, true, all(vec3<bool>(!(0u == u_input.b.x), true, true)), true);
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(func_3(~reverseBits(vec4<u32>(global0.a, 595u, global0.a, var_0.a))), 23u)], ~_wgslsmith_clamp_u32(~(~74188u), u_input.a.x, 4294967295u), var_1.x, Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(0u, 1u, 0u)), abs(u_input.b)) >> (_wgslsmith_div_u32(47021u, abs(global0.a)) % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) + var_0.b)))));
    let var_3 = vec2<u32>(var_2.b, firstLeadingBit(~global0.a));
    return var_2.a.a;
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    global0 = Struct_1(7146u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(global0.b + global0.b))) * 931f));
    let var_0 = false;
    let var_1 = max(firstTrailingBit(~1u), 4294967295u);
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(func_3(vec4<u32>(~global0.a, 4294967295u, 46643u, 15315u)))), 23u)];
    var var_2 = u_input.a.x;
    return Struct_2(Struct_1(0u, 1365f), 4294967295u | _wgslsmith_sub_u32(~(arg_0.x >> (4294967295u % 32u)), var_1), !var_0 | !var_0, Struct_1(~u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(643f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-807f, -846f), _wgslsmith_f_op_f32(global0.b * global0.b)))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_1 {
    let var_0 = arg_0.d.b;
    global1 = array<Struct_1, 23>();
    var var_1 = all(select(vec2<bool>(any(!vec4<bool>(arg_0.c, arg_2, arg_1, true)), true && any(vec2<bool>(arg_1, true))), vec2<bool>((arg_1 & arg_1) || arg_0.c, true), true));
    var var_2 = Struct_1(func_4(firstLeadingBit(firstLeadingBit(vec4<u32>(67754u, global0.a, 1u, u_input.b.x) & vec4<u32>(u_input.b.x, global0.a, arg_0.d.a, u_input.a.x)))).a.a, _wgslsmith_f_op_f32(389f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.b) + 339f)))));
    var var_3 = ~min(0i, _wgslsmith_mod_i32(reverseBits(-9411i << (0u % 32u)), _wgslsmith_clamp_i32(~70603i, firstTrailingBit(30435i), firstLeadingBit(-19552i))));
    return arg_0.d;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_5(func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(func_2(), 0u, ~1461u, ~global0.a), vec4<u32>(global0.a, arg_0, global0.a, 23280u) << ((vec4<u32>(u_input.b.x, 13292u, 1u, 15070u) ^ vec4<u32>(global0.a, global0.a, global0.a, u_input.a.x)) % vec4<u32>(32u)))), true, -1550f == _wgslsmith_f_op_f32(trunc(-100f)));
    var var_0 = 29813i << (~(~1u) % 32u);
    var_0 = 10988i;
    global1 = array<Struct_1, 23>();
    let var_1 = Struct_3(select(vec3<bool>(any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-global0.b) > _wgslsmith_f_op_f32(-global0.b), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), select(~u_input.b.x, _wgslsmith_div_u32(arg_0, arg_0), true) >= 1u), vec4<i32>(_wgslsmith_mult_i32(-48991i >> (global0.a % 32u), _wgslsmith_clamp_i32(18452i, 20548i, 9211i)), firstTrailingBit(-1i) >> (abs(u_input.b.x) % 32u), _wgslsmith_add_i32(-3125i, 1i), _wgslsmith_mod_i32(~(-2147483647i), select(0i, -8578i, false))) & -(~countOneBits(vec4<i32>(-25293i, -6056i, 0i, -1i))), select(!vec2<bool>(select(false, false, false), func_4(vec4<u32>(87099u, 4294967295u, global0.a, 4294967295u)).c), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)))));
    return Struct_1(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(arg_0, u_input.b.x, 11099u, 2664u), vec4<u32>(17009u, global0.a, arg_0, 14037u)), vec4<u32>(_wgslsmith_sub_u32(arg_0, 17882u), arg_0, ~1u, 1u)) & _wgslsmith_add_u32(1u, 0u), 1000f);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> vec3<bool> {
    global1 = array<Struct_1, 23>();
    var var_0 = select(!vec2<bool>(true, !arg_2.c.x), arg_2.a.zz, vec2<bool>(!arg_3.x, arg_3.x));
    let var_1 = ~(~vec3<i32>(arg_2.b.x >> (reverseBits(global0.a) % 32u), countOneBits(arg_2.b.x), ~arg_2.b.x));
    global0 = global1[_wgslsmith_index_u32(30840u, 23u)];
    var var_2 = Struct_2(arg_1, _wgslsmith_dot_vec4_u32((vec4<u32>(arg_1.a, 60877u, 72605u, arg_1.a) >> (~vec4<u32>(4294967295u, 4294967295u, 1u, 0u) % vec4<u32>(32u))) >> (abs(countOneBits(vec4<u32>(u_input.b.x, u_input.a.x, 1125u, u_input.a.x))) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a, u_input.a.x, 22047u, global0.a), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 64618u, 4294967295u, global0.a), vec4<u32>(22656u, 54831u, 1u, 43176u))))), false, Struct_1(_wgslsmith_clamp_u32(abs(74269u), 28278u, arg_1.a), arg_0));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 23>();
    let var_0 = Struct_3(func_6(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.b)))), func_1(_wgslsmith_div_u32(u_input.b.x, u_input.a.x)), Struct_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), true), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(1i, 5993i, 2147483647i, 30703i)), _wgslsmith_mult_vec4_i32(vec4<i32>(38066i, 1i, 0i, 18731i), vec4<i32>(-27943i, -1i, 46263i, -11960i))), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec4<bool>(true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), false)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(2147483647i, 1i), select(select(0i, -9508i, true), ~(-77607i), true), ~(-1i), 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-8601i, -12066i, 1i, i32(-1i) * -2147483647i), select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(30086i, -2147483647i, -2147483647i, -102730i), vec4<bool>(true, true, true, true)))), !select(func_6(global0.b, global1[_wgslsmith_index_u32(abs(160098u), 23u)], Struct_3(vec3<bool>(false, false, false), vec4<i32>(0i, 1i, -51962i, 32665i), vec2<bool>(false, true)), vec4<bool>(true, true, true, true)).zz, vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)));
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    global0 = func_1(_wgslsmith_add_u32(u_input.a.x, global0.a));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-684f + global0.b)));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(~(~1u), 23u)], ~firstTrailingBit(2731u), var_0.a.x, func_4(reverseBits(vec4<u32>(u_input.a.x, u_input.b.x, 44654u, global0.a) | firstLeadingBit(vec4<u32>(u_input.b.x, 0u, 114510u, u_input.a.x)))).d);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(210f)), 1462f, var_2.a.b, _wgslsmith_div_f32(-761f, global0.b)))));
    let var_4 = vec2<f32>(1000f, -762f);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, (~var_0.b.x & var_0.b.x) & 1i);
}

