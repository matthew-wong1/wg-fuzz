struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec2<f32>(-1000f, -1000f), -20352i, vec3<bool>(false, true, false), Struct_1(vec3<u32>(93015u, 47554u, 1u), 1u, false), Struct_1(vec3<u32>(3009u, 1u, 29983u), 0u, false)), Struct_2(vec2<f32>(-451f, 309f), 37462i, vec3<bool>(false, true, true), Struct_1(vec3<u32>(0u, 4294967295u, 1u), 4294967295u, true), Struct_1(vec3<u32>(1u, 42768u, 8655u), 1447u, true)), Struct_2(vec2<f32>(-803f, -1078f), 2147483647i, vec3<bool>(true, true, false), Struct_1(vec3<u32>(1u, 4294967295u, 41639u), 0u, true), Struct_1(vec3<u32>(1u, 41982u, 0u), 9176u, false)), Struct_2(vec2<f32>(924f, -1708f), 37522i, vec3<bool>(true, false, false), Struct_1(vec3<u32>(71538u, 0u, 0u), 37473u, false), Struct_1(vec3<u32>(56961u, 46550u, 26422u), 12188u, true)), Struct_2(vec2<f32>(395f, -1015f), -1i, vec3<bool>(false, true, false), Struct_1(vec3<u32>(63368u, 1u, 1u), 4294967295u, false), Struct_1(vec3<u32>(1u, 0u, 86493u), 3600u, true)), Struct_2(vec2<f32>(537f, -298f), 1i, vec3<bool>(false, false, true), Struct_1(vec3<u32>(2178u, 49434u, 13355u), 34648u, true), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 23996u, false)), Struct_2(vec2<f32>(133f, 790f), -1i, vec3<bool>(false, true, false), Struct_1(vec3<u32>(94279u, 46781u, 56300u), 24394u, false), Struct_1(vec3<u32>(4294967295u, 28111u, 59389u), 8808u, false)), Struct_2(vec2<f32>(364f, 803f), 1i, vec3<bool>(false, false, true), Struct_1(vec3<u32>(1u, 38111u, 4294967295u), 4294967295u, true), Struct_1(vec3<u32>(38264u, 4294967295u, 4731u), 31427u, false)), Struct_2(vec2<f32>(-1480f, -799f), -10445i, vec3<bool>(true, true, true), Struct_1(vec3<u32>(1u, 4294967295u, 8671u), 0u, true), Struct_1(vec3<u32>(76288u, 86802u, 37758u), 1u, true)), Struct_2(vec2<f32>(-1705f, 313f), -1i, vec3<bool>(true, true, true), Struct_1(vec3<u32>(1u, 13128u, 62119u), 18988u, true), Struct_1(vec3<u32>(0u, 4294967295u, 17808u), 0u, true)), Struct_2(vec2<f32>(-645f, -487f), -5461i, vec3<bool>(true, false, false), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), 4294967295u, false), Struct_1(vec3<u32>(4294967295u, 4294967295u, 15873u), 18289u, true)), Struct_2(vec2<f32>(454f, -1000f), -1i, vec3<bool>(false, true, true), Struct_1(vec3<u32>(1u, 23539u, 20117u), 23769u, false), Struct_1(vec3<u32>(1u, 82948u, 38290u), 4294967295u, false)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec2<i32> {
    global2 = array<Struct_2, 12>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 27u)];
    var var_1 = -753f;
    global1 = array<Struct_1, 27>();
    let var_2 = 38910u;
    return -vec2<i32>(-26932i, -2147483647i);
}

fn func_2() -> Struct_2 {
    let var_0 = (_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(1i, 1i)), func_3(u_input.c.x, global0[_wgslsmith_index_u32(~u_input.d.x, 21u)])) | ~(-(~(-7098i)))) >> (u_input.c.x % 32u);
    global0 = array<bool, 21>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1568f)))) + _wgslsmith_f_op_f32(step(-2227f, _wgslsmith_div_f32(741f, -378f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1304f)) * -384f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1089f))))));
    let var_2 = _wgslsmith_f_op_f32(-484f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.x, 1721f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))));
    let var_3 = Struct_1(abs(~(~vec3<u32>(u_input.b, 8272u, u_input.c.x))) >> (vec3<u32>(reverseBits(firstTrailingBit(41852u)), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 67137u, u_input.a, 20132u), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, u_input.a)))) % vec3<u32>(32u)), u_input.a, !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(u_input.b, u_input.b, false), 31900u) << (reverseBits(u_input.b) % 32u), 21u)]);
    return global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x, var_3.b), 12u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = !(!all(select(arg_1.c, arg_1.c, arg_1.c)) || (func_2().b >= _wgslsmith_mult_i32(arg_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-22398i, arg_1.b), vec2<i32>(arg_1.b, arg_1.b)))));
    var var_1 = false;
    var var_2 = Struct_3(u_input.c.x, -764f, arg_0.a.x, 700f, arg_1.a.x);
    var_2 = Struct_3(~u_input.c.x, _wgslsmith_f_op_f32(-256f + _wgslsmith_f_op_f32(-arg_1.a.x)), ~arg_0.a.x, -762f, _wgslsmith_f_op_f32(floor(-152f)));
    let var_3 = 44056u;
    return any(select(vec4<bool>(arg_1.d.c, !arg_1.d.c, true, !(arg_1.b <= arg_1.b)), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], arg_1.d.c, global0[_wgslsmith_index_u32(0u, 21u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_0.c, false, false), true), select(select(vec4<bool>(arg_1.e.c, arg_1.d.c, true, arg_1.d.c), vec4<bool>(arg_0.c, arg_1.c.x, false, arg_0.c), vec4<bool>(true, true, true, true)), select(vec4<bool>(arg_1.e.c, false, arg_0.c, global0[_wgslsmith_index_u32(arg_0.a.x, 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_3, 21u)], true, false, false), true), !vec4<bool>(global0[_wgslsmith_index_u32(38679u, 21u)], true, false, global0[_wgslsmith_index_u32(arg_1.d.b, 21u)])), vec4<bool>(!arg_1.c.x, global0[_wgslsmith_index_u32(u_input.a << (var_2.a % 32u), 21u)], true, all(vec2<bool>(global0[_wgslsmith_index_u32(83871u, 21u)], arg_0.c)))), all(!(!vec3<bool>(global0[_wgslsmith_index_u32(48319u, 21u)], global0[_wgslsmith_index_u32(u_input.b, 21u)], arg_1.e.c)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> vec3<bool> {
    global2 = array<Struct_2, 12>();
    global1 = array<Struct_1, 27>();
    return vec3<bool>(false, func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 29971u | _wgslsmith_clamp_u32(4473u, u_input.a, u_input.d.x)), 27u)], func_2(), 1788f), all(!func_2().c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2410f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, u_input.c.x), 40484u)) >> (~u_input.a % 32u), -987f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f) - _wgslsmith_f_op_f32(f32(-1f) * -318f)));
    let var_1 = Struct_3(1u, _wgslsmith_f_op_f32(-var_0.b), ~(~(~42798u)), -866f, 344f);
    let var_2 = !select(!select(func_1(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], vec2<f32>(-2988f, var_1.b), -337f, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_1.c, 21u)]), !global0[_wgslsmith_index_u32(44027u, 21u)]), select(vec3<bool>(true, true, true), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_1.c, 21u)]), func_1(global1[_wgslsmith_index_u32(abs(u_input.a), 27u)], vec2<f32>(var_1.e, var_0.d), 1237f, false)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(28179u, 1u, var_0.c), u_input.d.wyz)), 21u)]);
    global1 = array<Struct_1, 27>();
    var var_3 = ~(~abs(select(~vec3<i32>(3743i, 0i, 1i), max(vec3<i32>(-2147483647i, -2147483647i, 69135i), vec3<i32>(-47362i, 30067i, -2147483647i)), vec3<bool>(true, true, true))));
    let var_4 = select(select(func_4(global1[_wgslsmith_index_u32(func_2().d.a.x, 27u)], Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, var_0.b) + vec2<f32>(var_1.d, -992f)), var_3.x ^ -20927i, !var_2, Struct_1(vec3<u32>(var_1.a, var_0.c, var_1.a), 50508u, global0[_wgslsmith_index_u32(var_0.c, 21u)]), func_2().e), _wgslsmith_f_op_f32(2503f * _wgslsmith_f_op_f32(round(487f)))), any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-391f)))) > 1392f), all(vec2<bool>(true, true)), !(var_0.d < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))));
    var var_5 = global2[_wgslsmith_index_u32(select(~select(~firstTrailingBit(u_input.a), 27062u, any(var_2)), ~var_1.c, false), 12u)];
    var var_6 = func_2().d;
    var var_7 = Struct_4(func_2(), global1[_wgslsmith_index_u32(var_1.a, 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer((-_wgslsmith_mult_vec3_i32(vec3<i32>(var_7.a.b, var_5.b, 0i), vec3<i32>(-2147483647i, var_3.x, -1i)) | -vec3<i32>(-1882i, -40200i, var_7.a.b)) >> (vec3<u32>(~(~17578u), 15725u, select(11981u, u_input.c.x, !var_2.x)) % vec3<u32>(32u)), abs(_wgslsmith_clamp_u32(firstLeadingBit(1u), u_input.c.x, var_5.e.a.x)), vec3<u32>((var_7.b.b & 17322u) << (var_1.c % 32u), ~(~var_1.a), u_input.c.x) & countOneBits(max(var_5.d.a, var_7.b.a) >> ((vec3<u32>(var_5.e.a.x, var_5.e.a.x, var_7.a.d.a.x) | vec3<u32>(var_6.b, var_0.c, 57397u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_7.a.a.x + 213f)))), -2756f)));
}

