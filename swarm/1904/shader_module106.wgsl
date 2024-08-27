struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-1132f, 0u, -1000f, vec4<i32>(1i, -1i, 5284i, i32(-2147483648)), Struct_1(-13998i, vec3<bool>(false, false, true))), Struct_2(822f, 25824u, -1278f, vec4<i32>(-54003i, i32(-2147483648), 1i, -10029i), Struct_1(1i, vec3<bool>(true, false, false))), Struct_2(815f, 44u, -841f, vec4<i32>(-38433i, 1i, 20460i, 0i), Struct_1(10703i, vec3<bool>(true, false, true))), Struct_2(-446f, 113585u, -1000f, vec4<i32>(-10909i, -1i, 2147483647i, -7117i), Struct_1(3512i, vec3<bool>(false, false, false))), Struct_2(-1385f, 240u, 220f, vec4<i32>(1i, 19601i, 1i, -6652i), Struct_1(i32(-2147483648), vec3<bool>(false, false, true))), Struct_2(-1095f, 27949u, 2155f, vec4<i32>(-18649i, 0i, -72786i, 6825i), Struct_1(0i, vec3<bool>(true, false, false))), Struct_2(-1021f, 4294967295u, 1000f, vec4<i32>(8281i, -25353i, 25984i, 0i), Struct_1(0i, vec3<bool>(true, false, false))), Struct_2(-1419f, 15658u, -375f, vec4<i32>(i32(-2147483648), -1i, 23127i, 68688i), Struct_1(1i, vec3<bool>(false, true, true))), Struct_2(-406f, 24881u, 134f, vec4<i32>(0i, 1512i, 1i, -31387i), Struct_1(-27760i, vec3<bool>(true, false, false))), Struct_2(424f, 1u, -281f, vec4<i32>(0i, i32(-2147483648), -6516i, i32(-2147483648)), Struct_1(-38586i, vec3<bool>(false, true, false))), Struct_2(-555f, 3899u, 2272f, vec4<i32>(10764i, i32(-2147483648), 5175i, -4329i), Struct_1(-1960i, vec3<bool>(true, false, true))), Struct_2(-258f, 9578u, 678f, vec4<i32>(51401i, -1i, 0i, 1i), Struct_1(4840i, vec3<bool>(false, true, true))), Struct_2(171f, 45151u, 1100f, vec4<i32>(2147483647i, -36062i, 1i, -1016i), Struct_1(i32(-2147483648), vec3<bool>(true, true, true))), Struct_2(627f, 48577u, 482f, vec4<i32>(58556i, 12439i, 39685i, -1i), Struct_1(-27904i, vec3<bool>(false, true, true))), Struct_2(-636f, 56171u, 351f, vec4<i32>(0i, 44313i, -17865i, 0i), Struct_1(1923i, vec3<bool>(false, false, true))), Struct_2(-626f, 0u, 1760f, vec4<i32>(44355i, 334i, 2147483647i, 53540i), Struct_1(i32(-2147483648), vec3<bool>(false, false, false))), Struct_2(-1000f, 5874u, 357f, vec4<i32>(0i, i32(-2147483648), 1i, 0i), Struct_1(-232i, vec3<bool>(true, false, true))), Struct_2(635f, 4294967295u, -4081f, vec4<i32>(1i, -16374i, 1i, 11643i), Struct_1(2147483647i, vec3<bool>(false, false, true))), Struct_2(1000f, 0u, 1428f, vec4<i32>(29395i, 35148i, -1i, 31030i), Struct_1(-1i, vec3<bool>(false, true, true))), Struct_2(-1188f, 4294967295u, 1043f, vec4<i32>(1i, -17977i, -28522i, -1i), Struct_1(-1i, vec3<bool>(false, false, true))), Struct_2(-762f, 86778u, -196f, vec4<i32>(-3744i, 2147483647i, -48205i, i32(-2147483648)), Struct_1(i32(-2147483648), vec3<bool>(false, true, false))));

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = global0.b.x;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, global2.c)) - 970f) * -1109f)));
    global1 = array<Struct_2, 21>();
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(min(18582u, 74276u), 21u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a * 421f), var_1), -850f, var_1)));
    var var_3 = var_2.a.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 - var_1), var_2.a.c))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(50438u, 21u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) + vec3<f32>(_wgslsmith_f_op_f32(func_3(~vec4<u32>(80747u, 2280u, 21841u, 1u), global0.b.x, arg_3.e, _wgslsmith_add_i32(arg_2, global0.a))), _wgslsmith_f_op_f32(-arg_3.a), -211f)));
    let var_1 = var_0.a.b;
    global0 = Struct_1(u_input.b, !select(!(!vec3<bool>(false, var_0.a.e.b.x, global0.b.x)), select(select(vec3<bool>(true, var_0.a.e.b.x, var_0.a.e.b.x), vec3<bool>(true, var_0.a.e.b.x, false), false), select(vec3<bool>(true, false, false), vec3<bool>(global0.b.x, true, false), false), select(vec3<bool>(var_0.a.e.b.x, global0.b.x, false), global0.b, var_0.a.e.b)), true));
    let var_2 = any(select(select(vec3<bool>(any(vec3<bool>(global0.b.x, global0.b.x, var_0.a.e.b.x)), any(vec4<bool>(arg_3.e.b.x, true, global2.e.b.x, var_0.a.e.b.x)), true), var_0.a.e.b, all(!vec4<bool>(var_0.a.e.b.x, false, true, true))), vec3<bool>(true & all(global0.b.yz), global2.e.b.x, _wgslsmith_f_op_f32(trunc(1115f)) > _wgslsmith_f_op_f32(arg_1.x - 1000f)), !all(select(global2.e.b, global0.b, vec3<bool>(false, true, global0.b.x)))));
    let var_3 = all(select(!vec4<bool>(all(vec3<bool>(arg_3.e.b.x, false, var_0.a.e.b.x)), true, var_0.b.x >= var_0.a.c, !var_0.a.e.b.x), select(select(select(vec4<bool>(arg_3.e.b.x, false, arg_3.e.b.x, true), vec4<bool>(true, arg_3.e.b.x, true, true), var_2), select(vec4<bool>(false, global0.b.x, false, arg_3.e.b.x), vec4<bool>(var_2, false, var_2, true), var_2), true), select(vec4<bool>(false, false, false, arg_3.e.b.x), !vec4<bool>(arg_3.e.b.x, false, false, var_0.a.e.b.x), select(vec4<bool>(false, true, global2.e.b.x, true), vec4<bool>(false, var_0.a.e.b.x, var_0.a.e.b.x, false), vec4<bool>(global2.e.b.x, true, true, var_0.a.e.b.x))), select(select(vec4<bool>(false, var_2, true, true), vec4<bool>(var_2, var_0.a.e.b.x, false, true), true), select(vec4<bool>(global2.e.b.x, true, var_0.a.e.b.x, true), vec4<bool>(global0.b.x, global2.e.b.x, arg_3.e.b.x, true), vec4<bool>(global2.e.b.x, var_2, global2.e.b.x, false)), global0.b.x)), !var_2));
    return 46350u >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(abs(~global2.b), countOneBits(arg_3.b)), ~(~40544u)) % 32u);
}

fn func_1() -> vec4<u32> {
    let var_0 = global2.d;
    global1 = array<Struct_2, 21>();
    let var_1 = global2.b;
    let var_2 = Struct_1(_wgslsmith_sub_i32(-1i, global2.e.a << (_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 4125u, 1u, 8181u), vec4<u32>(4294967295u, global2.b, 47975u, global2.b))) % 32u)), global2.e.b);
    global2 = global1[_wgslsmith_index_u32(global2.b >> (_wgslsmith_mult_u32(global2.b, 5183u) % 32u), 21u)];
    return ~vec4<u32>(~global2.b, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(83144u, global2.b), vec2<u32>(2494u, 11949u)), ~vec2<u32>(global2.b, 103270u)) ^ 0u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(global2.b, global2.b, global2.b) << (vec3<u32>(4294967295u, 35089u, global2.b) % vec3<u32>(32u))), vec3<u32>(~5307u, ~global2.b, global2.b)), firstTrailingBit((global2.b >> (3807u % 32u)) << (func_2(u_input.d.xzz, vec3<f32>(global2.c, global2.c, 428f), var_2.a, Struct_2(-1268f, 1u, global2.c, vec4<i32>(2147483647i, global2.d.x, var_2.a, var_0.x), var_2)) % 32u)));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    var var_0 = vec4<i32>(-18145i, arg_1.x, global0.a, arg_2.x);
    global1 = array<Struct_2, 21>();
    global0 = Struct_1(arg_2.x, global2.e.b);
    let var_1 = arg_0;
    let var_2 = global0.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(926f, 83859u, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, vec4<i32>(u_input.d.x, global0.a, -89701i, 1417i))), vec4<i32>(u_input.a, 1i, 2147483647i, 28647i) << (func_1() % vec4<u32>(32u))), firstLeadingBit(vec2<i32>(i32(-1i) * -35124i, global2.e.a)), _wgslsmith_f_op_f32(abs(global2.a)))), -(firstTrailingBit(vec4<i32>(global2.d.x, 7014i, global0.a, global0.a)) ^ (u_input.d ^ firstTrailingBit(u_input.d))), Struct_1(-global2.e.a, !vec3<bool>(all(vec2<bool>(global0.b.x, global0.b.x)), global2.e.b.x, global0.a >= global2.d.x)));
    var var_0 = select(vec4<bool>(any(vec2<bool>(any(vec4<bool>(global2.e.b.x, true, global0.b.x, false)), global2.e.b.x)), !(_wgslsmith_f_op_f32(func_3(vec4<u32>(global2.b, global2.b, global2.b, 1u), global2.e.b.x, Struct_1(global0.a, vec3<bool>(global2.e.b.x, false, false)), -7112i)) >= -389f), any(!global0.b), global2.c <= global2.c), !select(vec4<bool>(true, false, select(true, global2.e.b.x, false), global0.b.x != global0.b.x), !vec4<bool>(true, false, global2.e.b.x, global2.e.b.x), select(vec4<bool>(global2.e.b.x, false, global0.b.x, false), select(vec4<bool>(global0.b.x, global2.e.b.x, false, false), vec4<bool>(global0.b.x, global2.e.b.x, global2.e.b.x, true), vec4<bool>(true, global2.e.b.x, global2.e.b.x, false)), all(vec2<bool>(global2.e.b.x, global2.e.b.x)))), global0.b.x);
    var_0 = !select(!select(vec4<bool>(var_0.x, var_0.x, true, global0.b.x), vec4<bool>(false, var_0.x, false, false), select(false, global0.b.x, true)), !select(!vec4<bool>(var_0.x, false, false, var_0.x), select(vec4<bool>(false, global2.e.b.x, global2.e.b.x, global0.b.x), vec4<bool>(global0.b.x, true, true, true), vec4<bool>(false, true, var_0.x, false)), global0.b.x), any(global0.b));
    global2 = global1[_wgslsmith_index_u32(firstLeadingBit(26825u), 21u)];
    var var_1 = !global0.b.x;
    var var_2 = Struct_1(max(u_input.b, _wgslsmith_add_i32(countOneBits(28958i), (global2.d.x >> (global2.b % 32u)) ^ 25787i)), vec3<bool>(global2.e.b.x, global2.e.b.x, select(any(!vec4<bool>(var_0.x, false, global2.e.b.x, global2.e.b.x)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global2.b, reverseBits(global2.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, (global2.b >> (global2.b % 32u)) & func_1().x, 1u, ~(global2.b ^ 0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16096u, global2.b, 1u, global2.b) ^ vec4<u32>(49951u, 41513u, 26163u, 1u), firstLeadingBit(vec4<u32>(3835u, 41369u, global2.b, 8225u))), 1u, global2.b, 167557u | _wgslsmith_clamp_u32(global2.b, 1u, 3845u))));
}

