struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_3(vec3<f32>(-790f, -1000f, -1853f), 8699u), i32(-2147483648), false), Struct_4(Struct_3(vec3<f32>(1563f, -915f, 500f), 1u), i32(-2147483648), true), Struct_4(Struct_3(vec3<f32>(-378f, 657f, -1000f), 1u), 48689i, true), Struct_4(Struct_3(vec3<f32>(-829f, -249f, -356f), 13807u), 8652i, true), Struct_4(Struct_3(vec3<f32>(-577f, 1223f, -815f), 0u), 48919i, true), Struct_4(Struct_3(vec3<f32>(1086f, 616f, -1209f), 27319u), 47177i, true), Struct_4(Struct_3(vec3<f32>(1000f, -2475f, -103f), 30466u), 3256i, true), Struct_4(Struct_3(vec3<f32>(-1398f, -1479f, -2334f), 47844u), 36815i, false), Struct_4(Struct_3(vec3<f32>(1000f, -330f, -660f), 33377u), i32(-2147483648), true), Struct_4(Struct_3(vec3<f32>(-2045f, -722f, 347f), 0u), i32(-2147483648), false), Struct_4(Struct_3(vec3<f32>(1596f, -416f, -710f), 48227u), 2147483647i, true), Struct_4(Struct_3(vec3<f32>(-528f, 884f, 1796f), 1u), 1i, false), Struct_4(Struct_3(vec3<f32>(1343f, -1026f, 1185f), 17889u), 1i, false), Struct_4(Struct_3(vec3<f32>(889f, 882f, -1391f), 4294967295u), i32(-2147483648), false), Struct_4(Struct_3(vec3<f32>(-1000f, 1000f, 412f), 13307u), 2147483647i, true));

var<private> global1: array<Struct_5, 16>;

var<private> global2: array<u32, 23> = array<u32, 23>(85629u, 0u, 714u, 39461u, 1u, 4294967295u, 4294967295u, 1u, 1u, 53156u, 4294967295u, 46549u, 2819u, 30778u, 4294967295u, 4294967295u, 71972u, 1084u, 90513u, 26400u, 1u, 4294967295u, 4294967295u);

var<private> global3: array<vec4<u32>, 3>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> f32 {
    global3 = array<vec4<u32>, 3>();
    global3 = array<vec4<u32>, 3>();
    return 801f;
}

fn func_2() -> Struct_3 {
    global3 = array<vec4<u32>, 3>();
    let var_0 = !all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), any(vec3<bool>(true, false, false))));
    let var_1 = vec3<f32>(-669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(209f)) + 1283f), _wgslsmith_f_op_f32(324f - _wgslsmith_f_op_f32(func_3(!(!var_0)))));
    global3 = array<vec4<u32>, 3>();
    global3 = array<vec4<u32>, 3>();
    return Struct_3(var_1, 1u);
}

fn func_1() -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 15u)];
    var var_1 = var_0.a.a.x;
    var var_2 = -311f;
    let var_3 = func_2();
    let var_4 = _wgslsmith_sub_vec3_u32(min(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_0.a.b, var_3.b), vec3<u32>(25307u, var_3.b, u_input.d)), u_input.d, ~_wgslsmith_mult_u32(var_0.a.b, 1u)), ~(vec3<u32>(global2[_wgslsmith_index_u32(var_0.a.b, 23u)], u_input.d, 36390u) >> (~vec3<u32>(0u, 1u, 4294967295u) % vec3<u32>(32u)))), ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(var_3.b, 23u)], 0u, var_0.a.b), ~vec3<u32>(var_3.b, var_3.b, var_3.b))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + _wgslsmith_f_op_f32(-501f - var_0.a.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_mod_i32(u_input.c, -1i);
    var var_2 = Struct_1(arg_0.d, select(vec4<bool>(!arg_0.b.x, arg_0.b.x, !any(arg_0.b.zxx), !any(arg_0.b.yx)), select(!vec4<bool>(arg_0.b.x, false, arg_0.b.x, false), vec4<bool>(any(vec4<bool>(arg_0.b.x, true, true, true)), true, arg_0.b.x | true, !arg_0.b.x), arg_0.b), vec4<bool>(arg_0.b.x, arg_0.b.x, !arg_0.b.x, !arg_0.b.x)), vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(u_input.d, global2[_wgslsmith_index_u32(24635u, 23u)])) << (abs(min(21714u, u_input.d)) % 32u), global2[_wgslsmith_index_u32(u_input.d, 23u)]), 15085i);
    global2 = array<u32, 23>();
    let var_3 = 2147483647i > firstTrailingBit(var_1);
    return var_1 >> (~(~1u) % 32u);
}

fn func_5(arg_0: i32) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d, ~(~global2[_wgslsmith_index_u32(4294967295u, 23u)]) & ~u_input.d), ~0u), 16u)];
    var var_1 = vec3<i32>(u_input.b.x >> ((u_input.d & ~24361u) % 32u), 42672i, arg_0);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(747f, _wgslsmith_div_f32(685f, 2230f), _wgslsmith_f_op_f32(max(1635f, 852f)), _wgslsmith_f_op_f32(sign(-777f))), vec4<f32>(_wgslsmith_f_op_f32(abs(869f)), _wgslsmith_div_f32(-2171f, 193f), -1291f, -1359f))))));
    var var_3 = ~min(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 1i, arg_0), vec4<i32>(arg_0, 1i, 52838i, var_1.x))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(var_0.d.x, 23u)], 60938u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 28090u, 39163u, 57642u), vec4<u32>(4294967295u, var_0.d.x, var_0.a.x, 42402u)), var_0.a << (vec4<u32>(53934u, 58880u, var_0.d.x, var_0.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_1.x, u_input.a, 0i)), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(34332i, arg_0, -1950i, -16186i), vec4<i32>(2147483647i, 0i, -21391i, arg_0))));
    global1 = array<Struct_5, 16>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<i32>(u_input.b.x, -abs(abs(-2147483647i)), func_5(func_4(Struct_1(-11649i, vec4<bool>(false, false, false, true), vec2<u32>(u_input.d, 0u), 30166i), -1676f, func_1())), ~(-32761i)));
    let var_1 = 2147483647i;
    let var_2 = select(~countOneBits(select(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d, 23u)], 4294967295u, u_input.d), ~vec3<u32>(global2[_wgslsmith_index_u32(0u, 23u)], 1u, 1u), any(vec4<bool>(true, true, false, false)))), ((_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(28660u, 23u)], u_input.d), vec3<u32>(6449u, 16294u, 26612u)) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 13015u, u_input.d)) & ~(~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(89748u, 23u)], 55708u))) >> (abs(abs(abs(vec3<u32>(0u, 5775u, global2[_wgslsmith_index_u32(1u, 23u)])))) % vec3<u32>(32u)), false);
    let var_3 = _wgslsmith_add_u32(max(1u, var_2.x), ~_wgslsmith_clamp_u32(~var_2.x, ~_wgslsmith_mod_u32(60800u, 19197u), 4294967295u));
    global0 = array<Struct_4, 15>();
    var_0 = select(abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -3144i, 0i, 0i) ^ vec4<i32>(-1i, -2147483647i, var_1, 2147483647i), vec4<i32>(1i, var_1, var_1, var_1), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 92i, u_input.c, -1i), vec4<i32>(var_1, u_input.b.x, 4965i, 21115i)))), ~(abs(~vec4<i32>(2147483647i, 1i, var_1, -5034i)) | select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, -48551i, 2147483647i, 26337i), vec4<i32>(-2147483647i, 2147483647i, -11622i, var_0.x), vec4<i32>(-45015i, -17632i, -1i, u_input.c)), select(vec4<i32>(41848i, var_1, var_0.x, -54723i), vec4<i32>(-14247i, var_0.x, 28107i, 0i), vec4<bool>(false, false, true, false)), true)), select(!vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, any(vec4<bool>(true, false, true, false))), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))), any(vec4<bool>(true, true, true, var_0.x > var_1))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f + -1156f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(2594f, -619f, false)), 731f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(573f))))), var_2.x & ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 23u)], 3u)], vec4<u32>(70080u, u_input.d, 0u, 69799u), global3[_wgslsmith_index_u32(var_2.x, 3u)]), vec4<u32>(0u, 22159u, 1u, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(~_wgslsmith_div_u32(1u, var_3)), max(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], vec4<u32>(4294967295u, u_input.d, 52637u, 43769u)), var_3), 80091u, u_input.d));
}

