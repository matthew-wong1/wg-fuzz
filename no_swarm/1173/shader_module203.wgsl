struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(4294967295u, 1u, 1u, 6779u, 6509u, 39124u, 16978u, 5512u, 1u, 13563u, 1u, 4294967295u, 4294967295u, 0u, 0u, 45093u, 44916u, 30448u, 0u, 1u, 1u, 0u, 1u, 0u, 1u, 23772u, 4294967295u, 1u, 23276u, 8003u, 13292u, 7871u);

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(1000f, -3551i, vec4<u32>(26110u, 0u, 1u, 0u), vec3<u32>(11823u, 3695u, 31701u), vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_1(-234f, 2168i, vec4<u32>(50777u, 36116u, 50839u, 4294967295u), vec3<u32>(32880u, 68395u, 6395u), vec3<i32>(1i, 35498i, i32(-2147483648))), Struct_1(478f, -28842i, vec4<u32>(57524u, 67032u, 3307u, 1u), vec3<u32>(10321u, 39342u, 63561u), vec3<i32>(1i, -44364i, 53538i)), Struct_1(659f, i32(-2147483648), vec4<u32>(4294967295u, 1u, 3424u, 0u), vec3<u32>(47128u, 0u, 60041u), vec3<i32>(2147483647i, -4646i, 0i)), Struct_1(1361f, -13063i, vec4<u32>(13458u, 61404u, 24920u, 4294967295u), vec3<u32>(15160u, 52821u, 4294967295u), vec3<i32>(0i, 1i, 49751i)), Struct_1(-1000f, 1i, vec4<u32>(24476u, 1u, 0u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<i32>(1i, -9840i, -68821i)), Struct_1(-1475f, i32(-2147483648), vec4<u32>(0u, 4294967295u, 4294967295u, 106224u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<i32>(19111i, 0i, -1i)), Struct_1(-1411f, -37277i, vec4<u32>(64914u, 1u, 0u, 59900u), vec3<u32>(12935u, 0u, 28755u), vec3<i32>(1i, -55046i, i32(-2147483648))), Struct_1(808f, 0i, vec4<u32>(0u, 0u, 33327u, 0u), vec3<u32>(23718u, 0u, 32710u), vec3<i32>(66236i, i32(-2147483648), 0i)), Struct_1(-896f, -10883i, vec4<u32>(75661u, 15965u, 96377u, 1u), vec3<u32>(1u, 32523u, 0u), vec3<i32>(2147483647i, 38836i, 1i)), Struct_1(-1073f, 2147483647i, vec4<u32>(11760u, 2174u, 4294967295u, 12921u), vec3<u32>(33451u, 96634u, 4294967295u), vec3<i32>(53697i, 1i, 1i)), Struct_1(-473f, -58768i, vec4<u32>(0u, 0u, 0u, 7102u), vec3<u32>(22358u, 76506u, 4294967295u), vec3<i32>(0i, 2147483647i, 1i)), Struct_1(-393f, i32(-2147483648), vec4<u32>(44935u, 58585u, 40013u, 15177u), vec3<u32>(1u, 14919u, 24804u), vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(-667f, 2147483647i, vec4<u32>(4294967295u, 0u, 1u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<i32>(51707i, 39893i, 1i)), Struct_1(-606f, 2147483647i, vec4<u32>(12277u, 36828u, 28942u, 873u), vec3<u32>(47992u, 5265u, 5159u), vec3<i32>(-32321i, -1i, -20256i)), Struct_1(-2846f, 0i, vec4<u32>(0u, 28440u, 1u, 5071u), vec3<u32>(5026u, 57666u, 15726u), vec3<i32>(5333i, 63386i, 2147483647i)), Struct_1(1205f, 2147483647i, vec4<u32>(4394u, 6664u, 1u, 55769u), vec3<u32>(1u, 4294967295u, 23019u), vec3<i32>(-27825i, 1i, -1i)), Struct_1(315f, -20619i, vec4<u32>(0u, 1u, 0u, 1u), vec3<u32>(1u, 15783u, 1717u), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), Struct_1(154f, -47881i, vec4<u32>(4294967295u, 1u, 0u, 53239u), vec3<u32>(29340u, 4294967295u, 4294967295u), vec3<i32>(1i, -36169i, -1i)), Struct_1(-383f, -3409i, vec4<u32>(1u, 1u, 2053u, 4294967295u), vec3<u32>(15207u, 26942u, 1u), vec3<i32>(23652i, 1i, 2147483647i)), Struct_1(1166f, -2469i, vec4<u32>(4294967295u, 13644u, 16918u, 8407u), vec3<u32>(62049u, 9917u, 19730u), vec3<i32>(0i, -18867i, i32(-2147483648))), Struct_1(2728f, 11556i, vec4<u32>(4294967295u, 38568u, 6927u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<i32>(67155i, 2147483647i, i32(-2147483648))), Struct_1(1464f, 1i, vec4<u32>(1u, 12790u, 20690u, 26440u), vec3<u32>(40193u, 4294967295u, 4294967295u), vec3<i32>(1i, 1i, 2147483647i)), Struct_1(515f, 2147483647i, vec4<u32>(0u, 1u, 0u, 1u), vec3<u32>(15213u, 61053u, 8986u), vec3<i32>(1i, 12097i, 0i)), Struct_1(-119f, 2147483647i, vec4<u32>(4294967295u, 68094u, 0u, 4294967295u), vec3<u32>(4294967295u, 43973u, 14360u), vec3<i32>(-1i, -1i, -12068i)), Struct_1(1000f, 0i, vec4<u32>(1u, 4294967295u, 17659u, 48983u), vec3<u32>(12548u, 0u, 1u), vec3<i32>(-36738i, -1i, 0i)), Struct_1(1806f, -1i, vec4<u32>(72088u, 3906u, 42413u, 31047u), vec3<u32>(0u, 0u, 18674u), vec3<i32>(71023i, -8175i, -16132i)), Struct_1(-533f, -31297i, vec4<u32>(0u, 41459u, 54085u, 1u), vec3<u32>(1u, 4294967295u, 22456u), vec3<i32>(2147483647i, -16366i, i32(-2147483648))), Struct_1(-1112f, 15857i, vec4<u32>(1u, 142391u, 25463u, 1u), vec3<u32>(25640u, 1u, 15882u), vec3<i32>(-22500i, 2147483647i, 5628i)), Struct_1(-1440f, -4696i, vec4<u32>(4294967295u, 4294967295u, 19614u, 15992u), vec3<u32>(1u, 17706u, 22675u), vec3<i32>(-1i, 1711i, 2147483647i)));

var<private> global2: array<vec2<u32>, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(271f, -1000f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(315f, 2345f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, 454f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(379f, -4083f)) - _wgslsmith_div_vec2_f32(vec2<f32>(724f, -816f), vec2<f32>(-457f, -1526f))))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) + vec2<f32>(var_0.x, 366f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) * _wgslsmith_f_op_vec2_f32(exp2(var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-319f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-var_0))));
    var var_2 = ~_wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(u_input.c, 20u)], ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 1043u), global2[_wgslsmith_index_u32(107473u, 20u)])));
    var var_3 = 2226f;
    global0 = array<u32, 32>();
    return _wgslsmith_mod_i32(4525i, arg_0.x);
}

fn func_2() -> vec2<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.b.x, 32u)];
    global0 = array<u32, 32>();
    let var_1 = 1u;
    global2 = array<vec2<u32>, 20>();
    let var_2 = vec2<i32>(_wgslsmith_add_i32(func_3(vec2<i32>(~(-36563i), ~(-1i))), func_3(vec2<i32>(1i, 1i)) ^ 1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 7809i), -65570i));
    return var_2;
}

fn func_1() -> vec2<i32> {
    let var_0 = true;
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(abs(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(96874u, global0[_wgslsmith_index_u32(36910u, 32u)], 0u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.a, 64528u), min(u_input.b, vec3<u32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1882u, 32u)], 32u)], 4294967295u)))), ~u_input.b), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(16676u, 32u)]), 32u)], 1u, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 32u)]), vec3<u32>(4294967295u, 15121u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)] % 32u), ~4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1647f);
    global2 = array<vec2<u32>, 20>();
    global2 = array<vec2<u32>, 20>();
    return _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, ~(-13519i)), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.c, 1u);
    var var_1 = Struct_5(vec2<i32>(-1i, ~_wgslsmith_div_i32(-8983i, firstTrailingBit(23165i))));
    var_1 = Struct_5(~_wgslsmith_mult_vec2_i32(func_1(), var_1.a));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1461f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(602f * 732f), _wgslsmith_div_f32(1510f, -819f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(528f, 1454f) * _wgslsmith_f_op_f32(step(-135f, 273f)))))), _wgslsmith_dot_vec4_i32(-vec4<i32>(func_2().x, -var_1.a.x, _wgslsmith_mod_i32(1i, var_1.a.x), func_3(vec2<i32>(47387i, -1i))), vec4<i32>(-var_1.a.x, var_1.a.x, -1i, -2147483647i)), ~vec4<u32>(firstLeadingBit(0u), reverseBits(firstLeadingBit(global0[_wgslsmith_index_u32(var_0.x, 32u)])), (0u ^ global0[_wgslsmith_index_u32(68896u, 32u)]) & ~global0[_wgslsmith_index_u32(38106u, 32u)], 43915u), ~u_input.b, ~_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x & 0i, i32(-1i) * -1i, countOneBits(-2147483647i)), vec3<i32>(0i, _wgslsmith_mod_i32(var_1.a.x, var_1.a.x), -var_1.a.x)));
    var_0 = min(~global2[_wgslsmith_index_u32(0u >> (_wgslsmith_mod_u32(36205u, 1u) % 32u), 20u)], reverseBits(reverseBits(var_2.d.yz))) | min(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(80055u, u_input.b.x)), vec2<u32>(0u, _wgslsmith_mult_u32(u_input.a, u_input.b.x)) | vec2<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(var_2.c.x, 32u)]), 17331u & var_2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(abs(var_2.e)), -775f);
}

