struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3>;

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 1u, 5442u, 46468u, 0u, 43965u, 26438u, 12861u, 0u, 6501u, 0u, 0u, 3227u, 20219u, 10862u, 15171u, 0u, 9102u, 45857u, 0u, 54842u, 0u, 35027u, 19412u, 69476u, 0u, 4294967295u, 0u, 35853u, 0u, 113635u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    let var_0 = select(select(!vec4<bool>(!arg_1, arg_1, all(vec2<bool>(true, arg_1)), select(true, true, arg_1)), !vec4<bool>(arg_0.x >= 10770i, true, !arg_1, all(vec4<bool>(false, true, arg_1, arg_1))), true), !(!(!select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, false, false, false), arg_1))), !select(!select(vec4<bool>(true, true, false, arg_1), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, false, arg_1, false)), vec4<bool>(true, true, true, false), true));
    let var_1 = vec2<f32>(1f, 1f);
    var var_2 = -vec2<i32>(~(-44564i), arg_0.x);
    var_2 = u_input.c;
    global0 = array<vec4<i32>, 3>();
    return arg_0.x;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool) -> u32 {
    global0 = array<vec4<i32>, 3>();
    var var_0 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(1u), 32u)], 32u)];
    var var_1 = firstLeadingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(66351i & arg_0, arg_0, reverseBits(40346i)), ~(vec3<i32>(u_input.c.x, arg_0, u_input.b) ^ vec3<i32>(u_input.c.x, arg_0, u_input.b)) ^ select(select(vec3<i32>(arg_0, -38104i, arg_0), vec3<i32>(14673i, -2147483647i, 4863i), vec3<bool>(arg_2, false, false)), vec3<i32>(arg_0, -1i, arg_0), false)));
    let var_2 = Struct_2(select(vec4<bool>(false, any(vec3<bool>(arg_1, false, arg_2)) || false, arg_2, any(vec2<bool>(true, arg_1))), vec4<bool>(all(select(vec3<bool>(true, arg_2, arg_1), vec3<bool>(false, false, false), vec3<bool>(arg_1, false, true))), true, 5467u == u_input.a, false), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(84559u), 0u), 32u)] <= u_input.a), 2147483647i, _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(88241u, 0u), vec2<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 32u)])), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.a), vec4<u32>(u_input.a, 12336u, u_input.a, u_input.a)))), _wgslsmith_mult_vec3_u32(max(firstLeadingBit(vec3<u32>(87877u, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], 4294967295u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(30360u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec3<u32>(26609u, 1u, global1[_wgslsmith_index_u32(144440u, 32u)])))), vec4<bool>(true, true, true, true), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, arg_1), arg_2), select(vec2<bool>(arg_2, arg_1), vec2<bool>(false, arg_1), vec2<bool>(arg_2, false)), vec2<bool>(true, arg_1))));
    var var_3 = ~(_wgslsmith_mod_i32(var_2.b, var_1.x) | abs(-2147483647i));
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.c.x, 22775u), reverseBits(_wgslsmith_add_u32(u_input.a, ~_wgslsmith_clamp_u32(18874u, global1[_wgslsmith_index_u32(0u, 32u)], var_2.c.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<vec4<i32>, 3>();
    var var_0 = firstLeadingBit(vec3<i32>(u_input.c.x, ~u_input.b, (func_2(global0[_wgslsmith_index_u32(0u, 3u)], arg_0.x) | _wgslsmith_mod_i32(2147483647i, 20126i)) << (4294967295u % 32u)));
    let var_1 = _wgslsmith_sub_u32(arg_2.x, ~(arg_1.x ^ arg_1.x) >> (arg_1.x % 32u));
    let var_2 = 31398u;
    global1 = array<u32, 32>();
    return Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(100302u, ~global1[_wgslsmith_index_u32(4294967295u, 32u)], 4294967295u), vec3<u32>(_wgslsmith_mod_u32(1u & var_1, func_3(var_0.x, false, arg_0.x)), u_input.a, firstLeadingBit(arg_1.x))), _wgslsmith_f_op_f32(-1665f - 517f));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    var var_0 = Struct_3(~(u_input.a >> (global1[_wgslsmith_index_u32(u_input.a, 32u)] % 32u)));
    global0 = array<vec4<i32>, 3>();
    var_0 = Struct_3(firstTrailingBit(92751u));
    var_0 = Struct_3(var_0.a);
    let var_1 = Struct_4(vec3<i32>(u_input.c.x, _wgslsmith_add_i32(75512i, abs(u_input.c.x) << (var_0.a % 32u)), u_input.b), func_1(!select(vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, arg_0.d.a.x), arg_0.d.a.wyx, select(arg_0.d.d.wyx, vec3<bool>(arg_0.d.e.x, true, arg_0.d.a.x), vec3<bool>(arg_0.d.d.x, false, arg_0.d.e.x))), vec3<u32>(0u, 39447u, abs(8731u)), arg_0.d.c), 4631u, arg_0.d);
    return Struct_4(max(select(vec3<i32>(firstTrailingBit(-17398i), 1i, u_input.b), abs(-arg_0.a), ~var_0.a <= (u_input.a & u_input.a)), -_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -5677i, -18186i), vec3<i32>(u_input.b, arg_0.a.x, 0i)), var_1.a)), Struct_1(arg_0.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) - -1121f)), 31060u, arg_0.d);
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> Struct_4 {
    var var_0 = 688f;
    var var_1 = firstLeadingBit(22835i) << (~u_input.a % 32u);
    let var_2 = arg_0.b.a.yy;
    var var_3 = 1u;
    global0 = array<vec4<i32>, 3>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_4(-(vec3<i32>(-47565i, u_input.c.x, u_input.b) & vec3<i32>(29611i, u_input.c.x, -2147483647i)), func_1(vec3<bool>(true, true, true), ~vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 16423u))), ~(~0u), Struct_2(vec4<bool>(false, true, true, true), _wgslsmith_sub_i32(u_input.b, u_input.c.x), ~vec3<u32>(global1[_wgslsmith_index_u32(3149u, 32u)], 16800u, u_input.a), vec4<bool>(true, true, false, true), vec2<bool>(true, true)))), firstLeadingBit(~(~0u)) << (1u % 32u), 133414u);
    var_0 = func_5(Struct_4(_wgslsmith_div_vec3_i32(var_0.a, var_0.a), func_4(Struct_4(var_0.a, var_0.b, abs(u_input.a), var_0.d)).b, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 1u, u_input.a), 32u)], Struct_2(vec4<bool>(false | var_0.d.e.x, true, var_0.d.a.x, false), var_0.d.b, var_0.d.c, var_0.d.a, var_0.d.a.zx)), select(37823u, 19501u, true), 4294967295u);
    global0 = array<vec4<i32>, 3>();
    let var_1 = func_4(Struct_4(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-10024i, 0i), -var_0.a.xy), u_input.b, abs(65147i)), func_4(func_5(func_4(Struct_4(var_0.a, Struct_1(vec3<u32>(u_input.a, 65985u, 10686u), var_0.b.b), var_0.b.a.x, var_0.d)), global1[_wgslsmith_index_u32(u_input.a, 32u)] << (0u % 32u), 1u)).b, max(global1[_wgslsmith_index_u32(~u_input.a | 14597u, 32u)], 58284u), Struct_2(func_4(func_5(Struct_4(var_0.a, Struct_1(vec3<u32>(3738u, 1u, var_0.d.c.x), var_0.b.b), var_0.b.a.x, Struct_2(vec4<bool>(false, var_0.d.a.x, false, false), var_0.d.b, var_0.d.c, var_0.d.a, vec2<bool>(true, var_0.d.a.x))), 1u, 53848u)).d.a, _wgslsmith_add_i32(17455i, 1i), func_4(Struct_4(vec3<i32>(var_0.a.x, u_input.c.x, var_0.d.b), Struct_1(vec3<u32>(var_0.d.c.x, u_input.a, u_input.a), var_0.b.b), global1[_wgslsmith_index_u32(u_input.a, 32u)], Struct_2(vec4<bool>(true, var_0.d.e.x, var_0.d.e.x, false), var_0.d.b, var_0.d.c, vec4<bool>(var_0.d.e.x, var_0.d.a.x, true, var_0.d.e.x), var_0.d.a.wx))).d.c, !vec4<bool>(false, var_0.d.d.x, var_0.d.a.x, var_0.d.e.x), var_0.d.e)));
    let var_2 = _wgslsmith_clamp_u32(~func_5(Struct_4(var_1.a, func_1(vec3<bool>(true, true, var_0.d.e.x), vec3<u32>(1u, var_0.d.c.x, u_input.a), var_1.b.a), 4294967295u, func_4(Struct_4(var_1.a, var_1.b, var_0.d.c.x, var_0.d)).d), 41957u, global1[_wgslsmith_index_u32(1u, 32u)]).b.a.x, firstLeadingBit(~1u), 6979u);
    let var_3 = _wgslsmith_mod_vec4_i32(-firstTrailingBit(vec4<i32>(-var_1.d.b, var_1.d.b, u_input.b, -1i)), global0[_wgslsmith_index_u32(~4294967295u, 3u)] | global0[_wgslsmith_index_u32(4294967295u, 3u)]);
    var_0 = func_4(Struct_4(var_1.a, var_0.b, ~(_wgslsmith_dot_vec3_u32(var_0.b.a, vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 32u)], 0u)) >> (var_2 % 32u)), func_5(func_5(Struct_4(vec3<i32>(6020i, 2147483647i, 54210i), Struct_1(vec3<u32>(2570u, 0u, var_2), var_0.b.b), 0u, Struct_2(vec4<bool>(true, true, true, true), -2147483647i, vec3<u32>(1u, 4294967295u, 34831u), var_0.d.a, var_0.d.a.zx)), ~var_0.b.a.x, 4294967295u), max(4294967295u, 15834u & var_0.d.c.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.c, var_1.d.c.x, u_input.a), vec4<u32>(129036u, var_0.b.a.x, var_1.b.a.x, 9850u))).d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a, _wgslsmith_add_u32(min(4294967295u & u_input.a, reverseBits(7014u)), ~8109u)), var_1.a);
}

