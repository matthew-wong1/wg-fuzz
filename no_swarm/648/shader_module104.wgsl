struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(-1i), Struct_5(1i), Struct_5(-31450i), Struct_5(-51660i), Struct_5(-42452i));

var<private> global3: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(1404f, -515f, 1000f), vec3<f32>(-171f, -720f, 447f), vec3<f32>(612f, 2019f, -593f), vec3<f32>(-126f, -271f, 1375f), vec3<f32>(-364f, 887f, 975f), vec3<f32>(-327f, 1379f, -1417f), vec3<f32>(-1130f, -1929f, -323f), vec3<f32>(1000f, 1487f, 1000f), vec3<f32>(-1067f, -1000f, 1969f), vec3<f32>(-301f, 160f, -364f), vec3<f32>(1000f, 1134f, -800f), vec3<f32>(-810f, -477f, -1297f), vec3<f32>(-1249f, -1000f, 1191f), vec3<f32>(-470f, 1241f, -1873f), vec3<f32>(-166f, 277f, -1000f), vec3<f32>(-391f, -508f, -320f), vec3<f32>(694f, 788f, -775f), vec3<f32>(-429f, 2271f, 549f), vec3<f32>(-769f, 685f, -680f), vec3<f32>(612f, 1166f, -1000f), vec3<f32>(-812f, -1000f, 129f), vec3<f32>(-1655f, -1107f, -361f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<i32> {
    let var_0 = !vec3<bool>(select(global0.x, true, all(!vec4<bool>(false, true, global0.x, global0.x))), _wgslsmith_mult_i32(-26148i, ~u_input.b) < u_input.b, true);
    global1 = array<Struct_3, 2>();
    let var_1 = ~max(u_input.a, u_input.d);
    let var_2 = -(i32(-1i) * -u_input.b);
    var var_3 = ~31442i;
    return vec2<i32>(0i, var_2);
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = true;
    let var_1 = func_3();
    global1 = array<Struct_3, 2>();
    let var_2 = vec2<i32>(reverseBits(-var_1.x), u_input.b);
    let var_3 = var_1;
    return Struct_4(Struct_2(Struct_1(1i, _wgslsmith_f_op_f32(trunc(195f)), abs(0i << (u_input.d % 32u)))), 73833i);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4) -> Struct_2 {
    global3 = array<vec3<f32>, 22>();
    var var_0 = ~vec2<i32>(abs(arg_0.c), 26728i);
    global1 = array<Struct_3, 2>();
    var_0 = _wgslsmith_mod_vec2_i32(~reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(-11806i, 42558i), vec2<i32>(u_input.b, var_0.x) & vec2<i32>(2147483647i, var_0.x))), -(~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, u_input.b) | vec2<i32>(-2147483647i, -10727i), ~vec2<i32>(-10556i, 55450i))));
    var var_1 = ~_wgslsmith_mod_vec2_i32(select(min(-vec2<i32>(arg_2.b, -9855i), _wgslsmith_sub_vec2_i32(vec2<i32>(7254i, 9013i), vec2<i32>(arg_0.a, u_input.b))), reverseBits(select(vec2<i32>(1i, arg_2.a.a.a), vec2<i32>(-1i, 31004i), global0.zx)), !(!global0.zy)), vec2<i32>(-1i) * -countOneBits(vec2<i32>(-1i, var_0.x)));
    return func_2(global0.x).a;
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    global3 = array<vec3<f32>, 22>();
    var var_0 = arg_0.yx;
    global1 = array<Struct_3, 2>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2065f, arg_1, global0.x)) - _wgslsmith_f_op_f32(-1709f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1317f)), arg_3.a.a.b)))));
    var var_2 = 1u;
    return arg_3;
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_5, 5>();
    let var_0 = func_5(countOneBits(vec3<u32>(u_input.a, 6412u, 1u) ^ ~(~vec3<u32>(u_input.a, 44705u, 29558u))), 893f, u_input.b, Struct_4(func_4(Struct_1(~54183i, -235f, countOneBits(u_input.b)), u_input.d, func_2(!global0.x)), (~(-19001i) | firstTrailingBit(0i)) ^ u_input.b));
    let var_1 = true;
    global0 = !vec3<bool>(var_1, any(vec3<bool>(true, true, !var_1)), var_1);
    let var_2 = true;
    return func_2(all(select(vec4<bool>(!var_2, global0.x, true, any(vec3<bool>(false, var_2, false))), select(!vec4<bool>(true, var_2, true, var_1), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(false, false, var_1, global0.x), vec4<bool>(true, true, var_2, false)), global0.x), false | !var_2))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), -2766i);
    global2 = array<Struct_5, 5>();
    global2 = array<Struct_5, 5>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_4(Struct_1(-1i, -945f, ~u_input.b), ~u_input.a, func_2(global0.x)).a.b, _wgslsmith_f_op_f32(f32(-1f) * -985f))) + -153f);
    var var_2 = global1[_wgslsmith_index_u32(u_input.c, 2u)];
    let var_3 = Struct_5(var_0.a.a.c);
    global3 = array<vec3<f32>, 22>();
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.b + _wgslsmith_f_op_f32(trunc(var_4.a.a.b))) * _wgslsmith_f_op_f32(f32(-1f) * -2387f))), vec3<f32>(1854f, _wgslsmith_f_op_f32(-var_0.a.a.b), var_4.a.a.b), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(var_2.d.x, 45640u, u_input.d, u_input.d) | select(vec4<u32>(75821u, u_input.d, 4294967295u, var_2.d.x), vec4<u32>(u_input.c, u_input.a, u_input.c, 0u), global0.x), vec4<u32>(~u_input.d, select(0u, 54630u, global0.x), 5543u, 0u))));
}

