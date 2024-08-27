struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-946f, -812f, -443f, 684f, -699f, 1000f, 252f, 1542f);

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(0i, true), vec4<i32>(0i, 3890i, 43752i, 1i), 0u, vec2<bool>(true, true), Struct_1(-22743i, false)), Struct_2(Struct_1(2147483647i, true), vec4<i32>(1i, -21554i, 53519i, 2147483647i), 4294967295u, vec2<bool>(true, false), Struct_1(38722i, true)), Struct_2(Struct_1(-13448i, true), vec4<i32>(0i, -1i, i32(-2147483648), -12097i), 33473u, vec2<bool>(false, true), Struct_1(0i, true)), Struct_2(Struct_1(-42478i, true), vec4<i32>(2147483647i, 2147483647i, 0i, 1i), 20083u, vec2<bool>(false, true), Struct_1(1i, false)), Struct_2(Struct_1(i32(-2147483648), false), vec4<i32>(-7259i, 2147483647i, -19574i, i32(-2147483648)), 4294967295u, vec2<bool>(true, false), Struct_1(1i, false)), Struct_2(Struct_1(i32(-2147483648), true), vec4<i32>(-1829i, 1i, 2147483647i, 1i), 1u, vec2<bool>(true, false), Struct_1(-1i, true)), Struct_2(Struct_1(1i, true), vec4<i32>(2284i, 2147483647i, -1i, 1i), 1u, vec2<bool>(true, false), Struct_1(-12703i, true)));

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(18395u, 33816u), vec2<u32>(4294967295u, 69493u), vec2<u32>(32486u, 0u), vec2<u32>(14478u, 31610u), vec2<u32>(7505u, 30103u), vec2<u32>(0u, 0u), vec2<u32>(1u, 54507u), vec2<u32>(53532u, 64788u), vec2<u32>(24928u, 44248u), vec2<u32>(0u, 30146u), vec2<u32>(52984u, 2027u), vec2<u32>(0u, 26605u), vec2<u32>(11281u, 62639u), vec2<u32>(1u, 4294967295u), vec2<u32>(8397u, 0u), vec2<u32>(4294967295u, 48621u), vec2<u32>(15803u, 138001u), vec2<u32>(1u, 1u), vec2<u32>(16603u, 4294967295u), vec2<u32>(0u, 13122u), vec2<u32>(26484u, 3827u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 6349u));

var<private> global3: array<f32, 14> = array<f32, 14>(-500f, -1628f, -1477f, 221f, -560f, 241f, 1000f, 1285f, 1173f, 1034f, -837f, 1451f, 322f, -1172f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = countOneBits(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 19450u, 1u), vec4<u32>(20363u, 4294967295u, u_input.a, u_input.a)), max(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 4324u, u_input.a))), vec4<u32>(~0u, u_input.a, 1u << (u_input.a % 32u), ~u_input.a))) >> (~(~u_input.a) % 32u);
    var var_1 = Struct_1(_wgslsmith_add_i32(u_input.d.x, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-36150i, -1i), countOneBits(vec2<i32>(0i, u_input.d.x))), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(53370i, u_input.c)))), all(vec2<bool>(true, true)));
    var var_2 = !all(!vec4<bool>(var_1.b, var_1.a > u_input.e, !var_1.b, var_1.b));
    var var_3 = ~abs(_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 110130u, 1u), countOneBits(u_input.a), ~u_input.a)));
    global0 = array<f32, 8>();
    return reverseBits(4294967295u >> (min(var_3.x, 19801u) % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_i32(~(~_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(0i, 20171i, -13632i))) >> (vec3<u32>(u_input.a, func_3(), u_input.a) % vec3<u32>(32u)), -vec3<i32>(min(~u_input.e, firstLeadingBit(u_input.b.x)), max(u_input.e >> (0u % 32u), firstTrailingBit(u_input.b.x)), u_input.b.x));
    var var_1 = global1[_wgslsmith_index_u32(max(~(u_input.a & _wgslsmith_clamp_u32(~u_input.a, u_input.a, u_input.a)), u_input.a ^ _wgslsmith_add_u32(~max(u_input.a, 3378u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4590u, 0u), vec3<u32>(u_input.a, 1u, u_input.a)), ~u_input.a, true))), 7u)];
    var_1 = global1[_wgslsmith_index_u32(u_input.a >> (4294967295u % 32u), 7u)];
    global1 = array<Struct_2, 7>();
    global2 = array<vec2<u32>, 24>();
    return var_1.a;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, 1i, var_0.a), vec3<i32>(u_input.d.x, var_0.a, u_input.d.x)), u_input.d & vec3<i32>(u_input.b.x, u_input.e, 0i)) ^ u_input.c, ~u_input.d.x << (u_input.a % 32u)), all(!select(select(vec4<bool>(arg_0, true, var_0.b, true), vec4<bool>(true, arg_0, var_0.b, var_0.b), true), !vec4<bool>(true, arg_0, false, arg_0), false)));
    var var_2 = _wgslsmith_add_vec3_u32(arg_1, _wgslsmith_mult_vec3_u32(~arg_1, ~_wgslsmith_div_vec3_u32(min(vec3<u32>(15724u, arg_1.x, 6766u), vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), arg_1)));
    let var_3 = u_input.a;
    global3 = array<f32, 14>();
    return firstLeadingBit(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(true && any(vec3<bool>(false, true, true))), !any(vec3<bool>(u_input.a > 1u, true, true)), true, select(any(vec4<bool>(true, true, true, true)), true, true));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_1(all(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_1.a.b, var_1.e.b, true, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), firstLeadingBit(vec2<u32>(47618u, 1u))), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(var_1.c | var_1.c, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)]))));
}

