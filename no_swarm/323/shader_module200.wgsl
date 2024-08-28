struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(false, 1341f, Struct_1(vec4<u32>(4294967295u, 44785u, 1u, 56643u)), Struct_1(vec4<u32>(0u, 0u, 6334u, 85149u))), Struct_3(false, -451f, Struct_1(vec4<u32>(4294967295u, 62655u, 44197u, 12099u)), Struct_1(vec4<u32>(7988u, 13791u, 5501u, 0u))), Struct_3(false, -1114f, Struct_1(vec4<u32>(11093u, 72277u, 50567u, 15758u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 33065u))), Struct_3(true, -501f, Struct_1(vec4<u32>(1u, 0u, 37826u, 36675u)), Struct_1(vec4<u32>(4294967295u, 78242u, 4294967295u, 1u))), Struct_3(true, 519f, Struct_1(vec4<u32>(4294967295u, 0u, 1u, 51298u)), Struct_1(vec4<u32>(16141u, 29975u, 4772u, 1u))), Struct_3(false, -151f, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 9147u)), Struct_1(vec4<u32>(34263u, 1u, 4294967295u, 0u))), Struct_3(false, 235f, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 36686u, 47829u, 1u))), Struct_3(true, -415f, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(4294967295u, 4502u, 27042u, 47214u))), Struct_3(false, 543f, Struct_1(vec4<u32>(33694u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(50238u, 4294967295u, 60108u, 4294967295u))), Struct_3(false, -783f, Struct_1(vec4<u32>(1u, 84288u, 85681u, 66589u)), Struct_1(vec4<u32>(0u, 91207u, 4294967295u, 1u))), Struct_3(false, 1000f, Struct_1(vec4<u32>(39210u, 0u, 1u, 22272u)), Struct_1(vec4<u32>(9881u, 1u, 0u, 27181u))), Struct_3(false, -500f, Struct_1(vec4<u32>(1u, 50355u, 0u, 45540u)), Struct_1(vec4<u32>(0u, 15530u, 0u, 0u))), Struct_3(false, 1272f, Struct_1(vec4<u32>(0u, 0u, 0u, 1u)), Struct_1(vec4<u32>(1u, 70127u, 102560u, 43944u))), Struct_3(false, 857f, Struct_1(vec4<u32>(49611u, 1u, 0u, 1u)), Struct_1(vec4<u32>(17045u, 43503u, 57923u, 70765u))), Struct_3(true, 2142f, Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_1(vec4<u32>(0u, 0u, 28682u, 4294967295u))), Struct_3(true, 1543f, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 57166u)), Struct_1(vec4<u32>(12504u, 1u, 55536u, 4294967295u))), Struct_3(true, 531f, Struct_1(vec4<u32>(0u, 33367u, 0u, 42749u)), Struct_1(vec4<u32>(1192u, 53560u, 4294967295u, 38643u))), Struct_3(false, -1899f, Struct_1(vec4<u32>(0u, 54882u, 0u, 43972u)), Struct_1(vec4<u32>(1u, 7770u, 26560u, 0u))), Struct_3(true, 232f, Struct_1(vec4<u32>(19587u, 109714u, 1u, 18873u)), Struct_1(vec4<u32>(40306u, 45367u, 15149u, 71328u))), Struct_3(false, -1650f, Struct_1(vec4<u32>(26359u, 5537u, 8282u, 1u)), Struct_1(vec4<u32>(30835u, 4294967295u, 0u, 1u))), Struct_3(true, -388f, Struct_1(vec4<u32>(1u, 31860u, 19707u, 18516u)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 5487u))), Struct_3(true, 1077f, Struct_1(vec4<u32>(39807u, 33901u, 4294967295u, 50652u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u))), Struct_3(false, 1094f, Struct_1(vec4<u32>(48501u, 0u, 1u, 1u)), Struct_1(vec4<u32>(446u, 4294967295u, 4294967295u, 10844u))), Struct_3(false, -806f, Struct_1(vec4<u32>(1u, 0u, 0u, 1u)), Struct_1(vec4<u32>(1u, 51290u, 42058u, 4294967295u))), Struct_3(true, -1035f, Struct_1(vec4<u32>(28651u, 35808u, 4294967295u, 1u)), Struct_1(vec4<u32>(21683u, 62708u, 1u, 78956u))), Struct_3(true, -525f, Struct_1(vec4<u32>(46906u, 0u, 51785u, 0u)), Struct_1(vec4<u32>(9621u, 0u, 55799u, 1u))), Struct_3(false, -1034f, Struct_1(vec4<u32>(1u, 1u, 49600u, 54236u)), Struct_1(vec4<u32>(1u, 1783u, 62398u, 4294967295u))), Struct_3(false, 839f, Struct_1(vec4<u32>(731u, 1u, 52648u, 1u)), Struct_1(vec4<u32>(1182u, 18532u, 0u, 0u))), Struct_3(true, 972f, Struct_1(vec4<u32>(54387u, 1u, 32440u, 28703u)), Struct_1(vec4<u32>(32800u, 91144u, 12087u, 0u))), Struct_3(true, 211f, Struct_1(vec4<u32>(52587u, 4214u, 48922u, 4294967295u)), Struct_1(vec4<u32>(102806u, 31982u, 50553u, 1323u))), Struct_3(true, 470f, Struct_1(vec4<u32>(35987u, 49427u, 20745u, 49957u)), Struct_1(vec4<u32>(1u, 66847u, 4294967295u, 38011u))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global0 = select(vec2<bool>(any(vec4<bool>(any(vec2<bool>(true, false)), true, true, global0.x)), true), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-251f)) * _wgslsmith_f_op_f32(f32(-1f) * -1781f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1295f))), (1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(34572u, 0u, 1u, 1u), vec4<u32>(0u, 0u, 31384u, 0u)) % 32u)) == ~(~23650u)), global0.x);
    let var_0 = global0.x;
    global1 = array<Struct_3, 31>();
    global1 = array<Struct_3, 31>();
    var var_1 = 53595u;
    return firstLeadingBit(u_input.a.x >> (~(~0u) % 32u));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> bool {
    let var_0 = !vec3<bool>(!(abs(arg_1.x) > ~arg_1.x), false, !(!arg_0));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 22649u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 12001u, arg_1.x)), ~vec4<u32>(55999u, 0u, 1u, arg_1.x)) << (vec4<u32>(arg_1.x, max(arg_1.x, 0u), firstLeadingBit(0u), ~4294967295u) % vec4<u32>(32u))));
    let var_2 = global0.x;
    var var_3 = Struct_2(Struct_1(~(var_1.a >> (reverseBits(vec4<u32>(arg_1.x, 37669u, var_1.a.x, var_1.a.x)) % vec4<u32>(32u)))), func_3(), vec3<i32>(65781i, u_input.a.x, 21221i), Struct_1(var_1.a), ~vec2<u32>(abs(19392u), 0u));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1601f), 891f, false));
    return false;
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    global0 = select(vec2<bool>(!(!(!global0.x)), !func_2(false, vec2<u32>(arg_0, arg_0)) && any(select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, global0.x)))), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false));
    let var_0 = vec3<i32>(-33184i, abs(40569i), 2147483647i);
    global0 = select(select(vec2<bool>(true, true), vec2<bool>(!any(vec2<bool>(global0.x, global0.x)), !(var_0.x <= 0i)), true), !(!vec2<bool>(true, !global0.x)), !(!(global0.x | true)));
    let var_1 = Struct_3(-var_0.x != 1i, _wgslsmith_f_op_f32(arg_1 * -834f), Struct_1(~vec4<u32>(~arg_0, _wgslsmith_add_u32(133160u, 8379u), ~0u, _wgslsmith_mult_u32(93230u, 0u))), Struct_1(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(67844u, arg_0, 0u, arg_0), vec4<u32>(arg_0, 21523u, arg_0, arg_0)))));
    global0 = select(vec2<bool>(true && all(!vec2<bool>(true, var_1.a)), all(vec3<bool>(-1011f >= arg_1, false & var_1.a, any(vec3<bool>(global0.x, var_1.a, false))))), vec2<bool>(true, any(vec2<bool>(select(global0.x, var_1.a, global0.x), false))), select(vec2<bool>(var_1.d.a.x < var_1.d.a.x, !select(global0.x, true, var_1.a)), select(!(!vec2<bool>(var_1.a, false)), vec2<bool>(global0.x && true, var_1.a), false), true));
    return ~49644u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(111340u, ~_wgslsmith_add_u32(84394u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6573u, 38807u), ~vec3<u32>(1u, 1u, 0u)), func_1(0u, -1028f) << (~30042u % 32u)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(0u, ~var_0.x), firstLeadingBit(~24599u), var_0.x), 31u)];
    var var_2 = Struct_3(any(vec3<bool>(all(vec2<bool>(false, var_1.a)), true, !any(vec2<bool>(var_1.a, false)))), var_1.b, var_1.c, Struct_1(firstLeadingBit(~var_1.c.a & vec4<u32>(var_0.x, var_0.x, 0u, var_0.x))));
    var var_3 = -31552i;
    let var_4 = Struct_1(var_2.c.a);
    global0 = vec2<bool>(all(select(select(vec4<bool>(true, true, true, var_1.a), vec4<bool>(false, global0.x, true, false), any(vec3<bool>(var_1.a, global0.x, var_2.a))), select(vec4<bool>(var_1.a, var_1.a, false, var_1.a), select(vec4<bool>(global0.x, false, var_1.a, false), vec4<bool>(true, var_1.a, global0.x, false), var_2.a), select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, false, global0.x, global0.x), var_1.a)), vec4<bool>(select(var_1.a, true, false), var_1.a, true, global0.x & var_2.a))), true);
    var_3 = -u_input.a.x | _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 46720i), global0.x), reverseBits(vec4<i32>(-2147483647i, 14777i, -18793i, u_input.a.x))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x | 0i, u_input.a.x, -1i)));
    global0 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_2.b, var_2.b) - vec3<f32>(var_2.b, var_1.b, var_1.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(337f, var_1.b, var_1.b) + vec3<f32>(-1844f, var_1.b, -658f))))) - vec3<f32>(1194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(sign(130f))))), (func_3() & ~59587i) | abs(abs(-748i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b + var_2.b), var_1.b, _wgslsmith_f_op_f32(-var_2.b)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_1.b, -739f), vec3<f32>(-1000f, -787f, var_1.b))))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + var_2.b), 1f)), select(vec3<i32>(-13932i, u_input.a.x, ~u_input.a.x), ~vec3<i32>(u_input.a.x, -u_input.a.x, 15108i), false));
}

