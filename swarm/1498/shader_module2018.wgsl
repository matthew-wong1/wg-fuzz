struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global1: array<f32, 12>;

var<private> global2: Struct_2 = Struct_2(Struct_1(0u, vec2<bool>(false, true)), i32(-2147483648));

var<private> global3: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(1u, 1u), vec2<u32>(42462u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 13546u), vec2<u32>(52291u, 94648u), vec2<u32>(4294967295u, 9395u), vec2<u32>(4294967295u, 25348u), vec2<u32>(53282u, 1u), vec2<u32>(15698u, 3752u), vec2<u32>(52948u, 0u), vec2<u32>(10691u, 42754u), vec2<u32>(25970u, 32132u), vec2<u32>(17949u, 1u), vec2<u32>(41144u, 1u), vec2<u32>(5021u, 1u), vec2<u32>(1u, 30114u), vec2<u32>(47573u, 47690u), vec2<u32>(1u, 4294967295u), vec2<u32>(14842u, 43905u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 28017u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 46928u), vec2<u32>(4294967295u, 2280u), vec2<u32>(1u, 1u), vec2<u32>(11996u, 1u), vec2<u32>(1u, 37998u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(arg_2.x, global1[_wgslsmith_index_u32(~countOneBits(~15789u), 12u)], true));
    var var_1 = !select(select(select(vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(global2.a.b.x, true, false, global2.a.b.x), vec4<bool>(true, global2.a.b.x, false, arg_0), vec4<bool>(false, false, false, false)), false), !select(vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, arg_0, false, arg_0), global2.a.b.x), arg_0), select(vec4<bool>(!arg_0, any(vec4<bool>(global2.a.b.x, true, false, false)), select(true, true, false), global2.a.b.x), select(!vec4<bool>(global2.a.b.x, global2.a.b.x, arg_0, global2.a.b.x), vec4<bool>(false, global2.a.b.x, true, arg_0), vec4<bool>(true, global2.a.b.x, global2.a.b.x, true)), vec4<bool>(true, false, all(vec4<bool>(false, false, true, arg_0)), false & arg_0)), ((u_input.a < u_input.a) != true) | !(!arg_0));
    var var_2 = vec3<i32>(55157i, -19427i, firstLeadingBit(-(u_input.a | -17093i)));
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~global2.a.a, _wgslsmith_mod_u32(~abs(u_input.c), global2.a.a)), 28u)];
    var_2 = -_wgslsmith_mod_vec3_i32(select(vec3<i32>(46731i, -49396i, -43096i) & abs(vec3<i32>(u_input.a, global2.b, 0i)), ~select(vec3<i32>(-36510i, 1i, -2788i), vec3<i32>(-2147483647i, u_input.a, 8692i), false), false), abs(abs(reverseBits(vec3<i32>(var_2.x, 0i, var_2.x)))));
    return false;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_3(select(global2.a.b, !select(!global2.a.b, select(vec2<bool>(global2.a.b.x, global2.a.b.x), global2.a.b, global2.a.b.x), select(global2.a.b.x, true, global2.a.b.x)), vec2<bool>(true, (43588u < u_input.b.x) & (global2.a.b.x && false))), Struct_2(global2.a, -45604i), Struct_2(Struct_1(~4294967295u, !select(global2.a.b, global2.a.b, vec2<bool>(global2.a.b.x, true))), i32(-1i) * -2147483647i), 37943u, Struct_2(Struct_1(1u, vec2<bool>(true, false)), global2.b & (-2147483647i ^ _wgslsmith_div_i32(u_input.a, arg_0))));
    global2 = Struct_2(Struct_1(global2.a.a, select(select(var_0.e.a.b, select(var_0.e.a.b, global2.a.b, true), select(vec2<bool>(true, var_0.e.a.b.x), vec2<bool>(global2.a.b.x, global2.a.b.x), vec2<bool>(true, false))), vec2<bool>(func_3(false, vec2<f32>(-984f, -554f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)])), global2.a.b.x), var_0.a)), 1i);
    global0 = array<vec3<bool>, 28>();
    let var_1 = -473f;
    var var_2 = Struct_4(3018u > global2.a.a, true);
    return (_wgslsmith_add_u32(max(~u_input.c, global2.a.a >> (22051u % 32u)), 4294967295u) << (12590u % 32u)) << (_wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(global2.a.a, 2198u, 4294967295u, u_input.b.x))), u_input.b >> (u_input.b % vec4<u32>(32u))) % 32u);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = u_input.b.yyy;
    var var_1 = global2.a;
    return Struct_4(false, true | (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 12u)])))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24616u, 12u)]))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = func_4(false, select(vec3<bool>(arg_3.b.x, _wgslsmith_dot_vec3_u32(arg_0.wzz, arg_0.wxx) <= func_2(global2.b), any(global0[_wgslsmith_index_u32(global2.a.a << (118230u % 32u), 28u)])), select(!global0[_wgslsmith_index_u32(reverseBits(arg_0.x), 28u)], vec3<bool>(global2.a.b.x, false, true), !(global2.b >= arg_1.x)), !global0[_wgslsmith_index_u32(88514u, 28u)]), arg_1.xz);
    let var_1 = select(vec2<bool>(_wgslsmith_div_i32(-49282i, select(global2.b, 7865i, arg_3.b.x)) >= u_input.a, arg_3.b.x), vec2<bool>(global2.a.b.x, false || arg_2.x), !arg_3.b);
    var var_2 = Struct_3(var_1, Struct_2(arg_3, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, 0i), arg_1.zx, vec2<i32>(arg_1.x, 2147483647i) ^ vec2<i32>(global2.b, global2.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), vec2<i32>(2147483647i, global2.b), arg_1.yz) & _wgslsmith_add_vec2_i32(vec2<i32>(58993i, 2147483647i), vec2<i32>(arg_1.x, arg_1.x)))), Struct_2(Struct_1(arg_0.x, vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(arg_1.xx, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.b, 61187i), arg_1.zz, arg_1.zy), arg_1.yz << (vec2<u32>(global2.a.a, 1u) % vec2<u32>(32u)), false))), global2.a.a, Struct_2(Struct_1(~global2.a.a, select(global2.a.b, vec2<bool>(global2.a.b.x, arg_3.b.x), arg_2.wy)), countOneBits(2147483647i)));
    var var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(reverseBits(4294967295u), arg_3.a)), ~min(~vec2<u32>(82193u, global2.a.a), max(u_input.b.wx, vec2<u32>(u_input.c, global2.a.a)))), ~(vec2<u32>(global2.a.a, _wgslsmith_sub_u32(1u, var_2.b.a.a)) << ((~vec2<u32>(arg_0.x, arg_3.a) & global3[_wgslsmith_index_u32(52578u, 27u)]) % vec2<u32>(32u))));
    return firstTrailingBit(vec4<u32>(u_input.c, ~var_2.c.a.a, var_2.c.a.a, _wgslsmith_dot_vec2_u32(u_input.b.wx, abs(global3[_wgslsmith_index_u32(27786u, 27u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 28>();
    global1 = array<f32, 12>();
    var var_0 = !global2.a.b.x;
    var var_1 = _wgslsmith_mult_vec4_u32(min(max(u_input.b, u_input.b), vec4<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, global2.a.a), _wgslsmith_sub_u32(0u, u_input.c)), max(1u, 0u), select(0u, u_input.b.x, any(vec4<bool>(false, true, global2.a.b.x, true))))), ~(~func_1(~vec4<u32>(46761u, global2.a.a, u_input.c, u_input.b.x), vec3<i32>(19081i, u_input.a, -47908i) | vec3<i32>(-23765i, 2200i, u_input.a), select(vec4<bool>(false, false, global2.a.b.x, global2.a.b.x), vec4<bool>(global2.a.b.x, false, false, global2.a.b.x), true), global2.a)));
    global3 = array<vec2<u32>, 27>();
    global1 = array<f32, 12>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~41792u, u_input.b.x), 0u, select(firstTrailingBit(_wgslsmith_add_u32(25024u, var_1.x)), select(81721u, _wgslsmith_dot_vec2_u32(vec2<u32>(26770u, var_1.x), vec2<u32>(u_input.b.x, global2.a.a)), global2.a.b.x), true), var_1.x), ~u_input.b), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(~global2.b), global2.b << (var_1.x % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(229f, global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 12u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c, 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1205f * global1[_wgslsmith_index_u32(1u, 12u)]))) * vec4<f32>(-149f, -492f, -885f, -1014f)));
}

