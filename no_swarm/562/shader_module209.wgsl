struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(4294967295u, 4294967295u, 22135u, 0u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 31073u, 20178u)), Struct_1(vec4<u32>(38989u, 1960u, 0u, 0u)), Struct_1(vec4<u32>(1u, 4270u, 1u, 78473u)), Struct_1(vec4<u32>(24097u, 85566u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_1(vec4<u32>(3435u, 39203u, 7163u, 4294967295u)), Struct_1(vec4<u32>(39000u, 17440u, 40884u, 3470u)), Struct_1(vec4<u32>(49459u, 1u, 14799u, 0u)), Struct_1(vec4<u32>(0u, 0u, 46817u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 1993u, 1u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 1u, 0u, 0u)), Struct_1(vec4<u32>(22958u, 50116u, 0u, 23145u)), Struct_1(vec4<u32>(39385u, 4294967295u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_1(vec4<u32>(36448u, 35079u, 4294967295u, 27112u)), Struct_1(vec4<u32>(28382u, 0u, 35684u, 4294967295u)), Struct_1(vec4<u32>(8953u, 1u, 0u, 4294967295u)), Struct_1(vec4<u32>(4546u, 1u, 0u, 76108u)), Struct_1(vec4<u32>(69923u, 22512u, 12666u, 4294967295u)), Struct_1(vec4<u32>(1u, 4294967295u, 115448u, 1655u)), Struct_1(vec4<u32>(4294967295u, 33490u, 0u, 0u)));

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(4445i, 32109i, 12035i, -1i), vec4<i32>(40763i, -4707i, 6055i, 2147483647i), vec4<i32>(-16710i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-1i, -20871i, -27269i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 0i, 1i), vec4<i32>(i32(-2147483648), -55161i, i32(-2147483648), 19828i), vec4<i32>(2147483647i, -1i, 44352i, 0i), vec4<i32>(-19599i, 0i, -50699i, 24157i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -33607i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i), vec4<i32>(-1i, 1i, 2147483647i, 64561i), vec4<i32>(-52704i, i32(-2147483648), 2980i, i32(-2147483648)), vec4<i32>(-68725i, -47329i, -16488i, 38215i), vec4<i32>(0i, i32(-2147483648), 16913i, -72565i), vec4<i32>(-1i, -60030i, 2147483647i, 2675i), vec4<i32>(8107i, 2147483647i, 781i, 36059i), vec4<i32>(8i, -49942i, 2147483647i, 2147483647i), vec4<i32>(-22302i, -5277i, -1i, 39011i), vec4<i32>(8059i, 43526i, 34054i, -11885i), vec4<i32>(2147483647i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-50213i, 2147483647i, 86130i, 1i), vec4<i32>(-19248i, -1i, 1i, 0i), vec4<i32>(0i, i32(-2147483648), -75618i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 24276i, 1i), vec4<i32>(i32(-2147483648), 23150i, -55125i, -20788i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 16013i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -53395i), vec4<i32>(2147483647i, 2147483647i, -23629i, -17428i), vec4<i32>(44484i, -1381i, -17604i, i32(-2147483648)), vec4<i32>(0i, 1i, 1i, 13715i), vec4<i32>(-1580i, 8756i, -25794i, 1i), vec4<i32>(i32(-2147483648), 8557i, i32(-2147483648), 675i));

var<private> global2: array<bool, 17>;

var<private> global3: vec3<bool>;

var<private> global4: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 1u, 41853u), vec3<u32>(27388u, 38827u, 20593u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(28473u, 7958u, 11124u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 98257u, 13345u), vec3<u32>(47079u, 1u, 0u), vec3<u32>(7432u, 7621u, 112032u), vec3<u32>(0u, 0u, 24683u), vec3<u32>(4340u, 0u, 20434u), vec3<u32>(40925u, 25585u, 813u), vec3<u32>(52766u, 16690u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(60120u, 40031u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 0u, 2108u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> bool {
    global4 = array<vec3<u32>, 18>();
    global4 = array<vec3<u32>, 18>();
    var var_0 = Struct_1(vec4<u32>(22682u, _wgslsmith_clamp_u32(arg_0.a.x >> (60390u % 32u), arg_2.x, arg_0.a.x), arg_0.a.x, ~u_input.a.x) | arg_0.a);
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(~0u, ~4895u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_0.a.x, arg_2.x), firstTrailingBit(0u)), ~u_input.c.xz ^ vec2<u32>(1u, 58676u)), arg_2.x, ~(~_wgslsmith_div_u32(firstTrailingBit(arg_0.a.x), arg_2.x)), var_0.a.x);
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x), _wgslsmith_sub_vec4_i32(u_input.d, u_input.d))), select(vec4<i32>(min(44903i, u_input.d.x), 9737i, u_input.d.x, u_input.d.x >> (u_input.e % 32u)), vec4<i32>(1i, select(u_input.d.x, 1i, global2[_wgslsmith_index_u32(4294967295u, 17u)]), countOneBits(29007i), _wgslsmith_div_i32(u_input.d.x, 28526i)), vec4<bool>(!global3.x, any(vec2<bool>(arg_1, true)), true, true))), _wgslsmith_div_vec4_i32(~(-vec4<i32>(9731i, -2147483647i, 49237i, -2147483647i)), ~(-select(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x), global1[_wgslsmith_index_u32(u_input.b, 32u)], true))));
    return !(!arg_1);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    global3 = select(vec3<bool>(func_2(arg_1, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], ~(~u_input.c)), global3.x, !global3.x), !(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.e, 17u)], false, false)))), global3.x);
    global3 = !vec3<bool>(true, func_2(arg_1, true, _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, arg_1.a.x, 4294967295u)), arg_1.a.yyy)), global3.x);
    var var_0 = ~abs(~vec4<u32>(_wgslsmith_mult_u32(1u, 0u), firstLeadingBit(u_input.c.x), firstLeadingBit(25038u), u_input.a.x));
    let var_1 = arg_1;
    let var_2 = u_input.b & u_input.a.x;
    return 25981u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    global4 = array<vec3<u32>, 18>();
    let var_0 = _wgslsmith_sub_i32(~arg_3, 2526i);
    global4 = array<vec3<u32>, 18>();
    let var_1 = arg_2;
    global1 = array<vec4<i32>, 32>();
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32((abs(vec4<u32>(4294967295u, u_input.c.x, 0u, 1u)) | (abs(vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, u_input.c.x)) >> (vec4<u32>(47176u, 4294967295u, u_input.e, 0u) % vec4<u32>(32u)))) >> (vec4<u32>(30974u, u_input.c.x, u_input.b, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.a))) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_mult_u32(68902u, _wgslsmith_sub_u32(24532u, 1u)), 0u, _wgslsmith_sub_u32(~u_input.a.x, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.xx, u_input.c.xy), u_input.c.yy)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(func_1(1477f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), u_input.c.x | 26522u), u_input.b, func_3(Struct_1(vec4<u32>(u_input.a.x, 48500u, u_input.c.x, 0u)), global0[_wgslsmith_index_u32(10795u, 23u)], Struct_1(vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.a.x)), ~u_input.d.x), ~_wgslsmith_mod_u32(4294967295u, u_input.c.x)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c.x, u_input.c.x, 28758u, u_input.b)), ~vec4<u32>(78585u, 1u, u_input.a.x, u_input.a.x) << (max(vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.a.x), vec4<u32>(28616u, u_input.b, u_input.b, 21411u)) % vec4<u32>(32u)))));
    let var_1 = Struct_1(vec4<u32>(~firstTrailingBit(u_input.b), var_0.x, var_0.x, 1u << (0u % 32u)) & firstLeadingBit(min(vec4<u32>(30233u, 1u, 27980u, 1u) | vec4<u32>(var_0.x, u_input.e, var_0.x, var_0.x), vec4<u32>(1u, 0u, 65074u, u_input.a.x))));
    var var_2 = var_1;
    var var_3 = Struct_1(abs(_wgslsmith_add_vec4_u32(min(~var_1.a, vec4<u32>(31791u, var_0.x, var_2.a.x, var_0.x) ^ vec4<u32>(60327u, var_0.x, var_1.a.x, var_2.a.x)), abs(select(vec4<u32>(1u, var_0.x, var_0.x, var_1.a.x), var_1.a, vec4<bool>(global3.x, false, false, true))))));
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(-1078f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-323f, 564f) + _wgslsmith_f_op_f32(min(-2263f, -1346f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1212f, 466f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -974f)))))), ~select(global1[_wgslsmith_index_u32(9040u, 32u)], select(select(u_input.d, u_input.d, global3.x), max(vec4<i32>(u_input.d.x, -815i, 1i, u_input.d.x), u_input.d), global3.x), any(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], false, false, global3.x), vec4<bool>(true, false, global3.x, global2[_wgslsmith_index_u32(9219u, 17u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(25171u, 17u)], false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-672f - 1044f)))) * -828f));
}

