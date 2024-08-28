struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 21>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(118657u, 4294967295u, 4294967295u), false, vec3<i32>(0i, -27414i, -39718i), vec2<bool>(false, true), vec3<i32>(1i, 2147483647i, -1i)), Struct_1(vec3<u32>(31269u, 42675u, 22891u), false, vec3<i32>(44865i, -1i, i32(-2147483648)), vec2<bool>(true, true), vec3<i32>(47018i, i32(-2147483648), 10555i)), Struct_1(vec3<u32>(4294967295u, 81175u, 4294967295u), false, vec3<i32>(38950i, 2147483647i, 1i), vec2<bool>(false, true), vec3<i32>(-42569i, 37996i, 22697i)), Struct_1(vec3<u32>(67296u, 0u, 0u), true, vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec2<bool>(true, false), vec3<i32>(60452i, 1i, -1i)), Struct_1(vec3<u32>(1u, 5251u, 21960u), true, vec3<i32>(-39973i, 0i, 25462i), vec2<bool>(true, true), vec3<i32>(36977i, -1i, i32(-2147483648))), Struct_1(vec3<u32>(8656u, 4294967295u, 32611u), false, vec3<i32>(-1i, 50673i, 1i), vec2<bool>(true, true), vec3<i32>(2147483647i, 0i, 1i)), Struct_1(vec3<u32>(82192u, 0u, 43546u), true, vec3<i32>(1i, 24873i, 0i), vec2<bool>(true, false), vec3<i32>(-1i, 1i, 2147483647i)), Struct_1(vec3<u32>(20532u, 12364u, 30816u), false, vec3<i32>(i32(-2147483648), -1i, -1i), vec2<bool>(true, false), vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(vec3<u32>(4294967295u, 6562u, 0u), true, vec3<i32>(2147483647i, 12597i, -5358i), vec2<bool>(true, true), vec3<i32>(6234i, 8482i, -33541i)), Struct_1(vec3<u32>(1u, 4294967295u, 12147u), false, vec3<i32>(-5489i, 2147483647i, 1i), vec2<bool>(false, true), vec3<i32>(1i, -7735i, 2147483647i)), Struct_1(vec3<u32>(71074u, 104472u, 50972u), true, vec3<i32>(-7963i, i32(-2147483648), -4168i), vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -649i, 22516i)), Struct_1(vec3<u32>(1u, 0u, 1u), false, vec3<i32>(2147483647i, -2968i, 1i), vec2<bool>(true, true), vec3<i32>(82195i, 2147483647i, 1i)), Struct_1(vec3<u32>(25147u, 9914u, 30345u), true, vec3<i32>(-1i, -26964i, -41714i), vec2<bool>(false, true), vec3<i32>(-5843i, 30581i, 1i)), Struct_1(vec3<u32>(1u, 18286u, 23724u), false, vec3<i32>(-18820i, -50999i, 2147483647i), vec2<bool>(true, false), vec3<i32>(17412i, 2147483647i, -1i)), Struct_1(vec3<u32>(0u, 1u, 0u), false, vec3<i32>(0i, 72025i, 2147483647i), vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 2147483647i, -1i)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), false, vec3<i32>(-22259i, 1i, -1i), vec2<bool>(true, false), vec3<i32>(-2048i, 2147483647i, 41062i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), false, vec3<i32>(i32(-2147483648), -30136i, 2147483647i), vec2<bool>(true, true), vec3<i32>(2147483647i, -1i, 2147483647i)), Struct_1(vec3<u32>(1u, 4294967295u, 1u), false, vec3<i32>(-39832i, -1i, 2552i), vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -1i, -37524i)), Struct_1(vec3<u32>(51171u, 39390u, 14236u), false, vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec2<bool>(false, true), vec3<i32>(-40129i, 0i, 0i)), Struct_1(vec3<u32>(1u, 17434u, 106179u), false, vec3<i32>(-38636i, -28768i, -29127i), vec2<bool>(false, true), vec3<i32>(-8218i, -1i, -1i)), Struct_1(vec3<u32>(27454u, 94271u, 15126u), true, vec3<i32>(18072i, -26076i, -1i), vec2<bool>(true, false), vec3<i32>(39933i, 2147483647i, 1i)), Struct_1(vec3<u32>(4294967295u, 20089u, 1u), true, vec3<i32>(-1i, 15450i, 13843i), vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 66972i, 1i)), Struct_1(vec3<u32>(90576u, 6637u, 4294967295u), false, vec3<i32>(20269i, 1i, 1i), vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -20905i, 20210i)), Struct_1(vec3<u32>(0u, 1u, 0u), false, vec3<i32>(23231i, -29630i, -1i), vec2<bool>(true, false), vec3<i32>(-1i, -10858i, -1i)), Struct_1(vec3<u32>(46424u, 79394u, 46537u), true, vec3<i32>(241i, -1i, 2147483647i), vec2<bool>(false, false), vec3<i32>(2147483647i, -35372i, 1i)));

var<private> global3: array<vec3<i32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = vec4<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))) || true, any(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, true))), all(vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_mod_i32(arg_1, i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1, arg_1, arg_1), _wgslsmith_sub_i32(arg_1, arg_1), _wgslsmith_clamp_i32(-721i, arg_1, arg_1)));
    global2 = array<Struct_1, 25>();
    var var_2 = min(min(i32(-1i) * -21829i, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-61609i, -1i), vec2<i32>(0i, -45841i))), arg_1);
    var var_3 = Struct_5(global1[_wgslsmith_index_u32(38440u, 21u)]);
    return var_3.a.a.a.x ^ 1u;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec3<bool> {
    global0 = vec3<u32>(~max(51214u, ~29499u) & (u_input.a | (max(39182u, global0.x) ^ _wgslsmith_clamp_u32(global0.x, 14146u, u_input.a))), ~((~u_input.a >> (u_input.a % 32u)) << (30286u % 32u)), _wgslsmith_mult_u32(countOneBits(u_input.a), _wgslsmith_div_u32(global0.x, u_input.a)));
    global1 = array<Struct_2, 21>();
    return select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec3<bool>(false, true, true))), vec3<bool>(false, any(vec4<bool>(false, true, false, true)), true), true), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false))), vec3<bool>(all(vec3<bool>(all(vec3<bool>(false, false, true)), true, true)), any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)))), !(4294967295u <= (global0.x | global0.x))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    global1 = array<Struct_2, 21>();
    var var_0 = vec4<bool>(false, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, !(1209f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) - 1057f)));
    let var_1 = ~(21287u << (u_input.a % 32u));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(~5615u, var_1)), 21u)], _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 1i)) >> (_wgslsmith_clamp_vec2_u32(firstTrailingBit(global0.yz), global0.yx, ~vec2<u32>(0u, global0.x)) % vec2<u32>(32u)), max(-vec2<i32>(7276i, -2783i), select(vec2<i32>(-2147483647i, 71i), vec2<i32>(30361i, -1i), true)) << (global0.xy % vec2<u32>(32u))), Struct_1(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(var_1, 14568u, u_input.a)), vec3<u32>(~73529u, 3372u, firstLeadingBit(var_1))), var_0.x, vec3<i32>(-(1i >> (1u % 32u)), max(22575i, ~(-35595i)), -30870i), !var_0.yz, -vec3<i32>(_wgslsmith_add_i32(-20110i, 2147483647i), _wgslsmith_mod_i32(0i, 2147483647i), -36950i)));
    let var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~global0.x, _wgslsmith_dot_vec3_u32(var_2.c.a, vec3<u32>(4294967295u, 13917u, var_1) ^ var_2.c.a)), ~global0.x, abs(func_2(_wgslsmith_f_op_f32(exp2(arg_0)), -17919i)))), 21u)];
    return Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(var_2.c.a, ~vec3<u32>(4294967295u, 67778u, 0u)), any(select(vec3<bool>(true, true, true), !var_0.wzx, func_3(vec4<f32>(-358f, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(arg_0, 1259f, arg_0, 2203f)))), select(countOneBits(select(var_3.a.c, vec3<i32>(31189i, var_2.b.x, 0i), var_3.a.b)), ~(vec3<i32>(var_2.a.a.c.x, var_3.a.e.x, var_3.a.c.x) >> (var_2.a.c.a % vec3<u32>(32u))), select(select(vec3<bool>(false, var_0.x, var_2.c.d.x), vec3<bool>(var_2.a.c.b, var_3.c.d.x, true), var_0.x), !var_0.xzz, var_0.zzx)), !(!vec2<bool>(var_2.a.c.d.x, var_0.x)), (global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(38742u, global0.x), 7u)] ^ abs(vec3<i32>(var_2.c.c.x, 9371i, var_3.a.c.x))) << (abs(vec3<u32>(var_1, 3307u, 1u) >> (vec3<u32>(var_3.c.a.x, global0.x, var_1) % vec3<u32>(32u))) % vec3<u32>(32u))), var_3.b, Struct_1(~(~abs(vec3<u32>(12457u, 1u, var_1))), all(select(!vec4<bool>(true, var_2.a.a.d.x, var_0.x, false), !vec4<bool>(var_3.a.b, true, var_2.c.b, true), vec4<bool>(var_2.a.a.b, var_2.c.d.x, false, var_0.x))), vec3<i32>(firstTrailingBit(var_3.a.e.x) | -35348i, 1i, -2147483647i), select(vec2<bool>(true, true), !func_3(vec4<f32>(arg_0, -181f, 357f, arg_0), vec4<f32>(-358f, -302f, arg_0, arg_1.x)).xx, true), _wgslsmith_div_vec3_i32(var_3.c.e, _wgslsmith_mod_vec3_i32(~global3[_wgslsmith_index_u32(65048u, 7u)], var_3.c.e | var_3.c.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 7>();
    var var_0 = abs(~vec3<u32>(firstLeadingBit(min(u_input.a, 42988u)), 1u, ~(~u_input.a)));
    let var_1 = true;
    global0 = ~abs(~(~vec3<u32>(4294967295u, u_input.a, var_0.x))) & ~(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, u_input.a, 9620u), vec3<u32>(1u, 53042u, 32901u)), abs(vec3<u32>(0u, 59710u, var_0.x))));
    let var_2 = Struct_4(global0.x, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1548f - 1270f), 408f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-699f, -2226f, 1000f, -761f), vec4<f32>(217f, 770f, 1480f, -1837f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(683f, 737f, -1333f, 436f) - vec4<f32>(-302f, -373f, 250f, 1613f))))), abs(u_input.a), 554f);
    global3 = array<vec3<i32>, 7>();
    var var_3 = Struct_3(Struct_2(func_1(717f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, -524f, var_2.d, 564f) - vec4<f32>(var_2.d, 1000f, var_2.d, var_2.d)))).c, -2147483647i, Struct_1(max(vec3<u32>(45497u, var_0.x, global0.x), ~var_2.b.c.a), var_1, abs(var_2.b.c.e), var_2.b.a.d, select(-global3[_wgslsmith_index_u32(global0.x, 7u)], var_2.b.c.e, !var_1))), var_2.b.c.e.yz, Struct_1(~firstTrailingBit(select(var_2.b.c.a, vec3<u32>(var_2.b.a.a.x, var_2.b.c.a.x, var_0.x), vec3<bool>(var_2.b.a.d.x, var_1, var_1))), all(func_1(_wgslsmith_f_op_f32(951f * var_2.d), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.d, var_2.d, 1072f, -562f), vec4<f32>(-2101f, var_2.d, -468f, var_2.d)))).c.d), abs(vec3<i32>(i32(-1i) * -14721i, _wgslsmith_mod_i32(var_2.b.a.e.x, 2147483647i), var_2.b.a.e.x)), vec2<bool>(select(var_2.b.a.d.x, var_1 || var_1, select(var_1, var_1, true)), var_1 & !var_2.b.c.b), vec3<i32>(-34341i, -5953i, var_2.b.b)));
    var_3 = Struct_3(var_2.b, vec2<i32>(firstLeadingBit(-22394i), var_3.a.c.c.x), Struct_1(var_3.a.c.a, all(vec3<bool>(any(vec4<bool>(var_3.c.d.x, false, var_2.b.c.d.x, var_2.b.c.b)), all(vec3<bool>(var_1, true, var_3.a.c.d.x)), var_3.a.a.d.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_3.a.c.c, global3[_wgslsmith_index_u32(var_0.x, 7u)]), var_2.b.a.c.x, 9585i), -vec3<i32>(var_2.b.c.c.x, 1i, -5616i)), vec2<bool>(var_2.b.a.b, true), var_3.c.c));
    global1 = array<Struct_2, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.c.e, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.d, var_2.d, var_2.d, 454f), vec4<f32>(var_2.d, var_2.d, -245f, 809f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(320f, -1697f, 708f, var_2.d) - vec4<f32>(1201f, var_2.d, var_2.d, 189f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.d, _wgslsmith_f_op_f32(trunc(-1000f)))))), vec4<i32>(-var_3.c.e.x, _wgslsmith_sub_i32(-15638i, var_3.a.a.e.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -28754i), vec2<i32>(var_2.b.a.e.x, -69012i))) ^ reverseBits(1i), _wgslsmith_sub_i32(var_3.a.a.c.x, abs(var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1435f, var_2.d)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), var_2.d, !var_3.a.a.b)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_2.d)))))));
}

