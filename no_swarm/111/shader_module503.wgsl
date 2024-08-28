struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
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

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, true, true, false, false, true);

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(12055u), Struct_1(24479u), Struct_1(0u), Struct_1(351u), Struct_1(0u), Struct_1(1u), Struct_1(27148u), Struct_1(4901u), Struct_1(22198u), Struct_1(0u), Struct_1(91228u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u), Struct_1(59967u), Struct_1(0u), Struct_1(42183u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(26416u), Struct_1(35936u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u), Struct_1(30988u), Struct_1(57225u), Struct_1(22907u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u));

var<private> global3: Struct_1;

var<private> global4: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-787f, -453f), vec2<f32>(887f, 1432f), vec2<f32>(1113f, -522f), vec2<f32>(1447f, -681f), vec2<f32>(-530f, -1025f), vec2<f32>(191f, 645f), vec2<f32>(-957f, 657f), vec2<f32>(1098f, 199f), vec2<f32>(-340f, -1159f), vec2<f32>(932f, 478f), vec2<f32>(1214f, -782f), vec2<f32>(1000f, 1000f), vec2<f32>(539f, -572f), vec2<f32>(1202f, -1404f), vec2<f32>(1906f, 1000f), vec2<f32>(-269f, -365f), vec2<f32>(-168f, 1012f), vec2<f32>(250f, -345f), vec2<f32>(1331f, -1000f), vec2<f32>(-285f, 344f), vec2<f32>(-1092f, -169f), vec2<f32>(-535f, -1171f), vec2<f32>(857f, 166f), vec2<f32>(-1614f, 1495f), vec2<f32>(451f, 160f), vec2<f32>(-1260f, -934f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec4<i32> {
    global3 = Struct_1(~_wgslsmith_mod_u32(4294967295u, 50857u));
    global1 = ~(abs(_wgslsmith_add_vec4_u32(vec4<u32>(1198u, 2830u, u_input.d.x, 85454u), vec4<u32>(54255u, u_input.e, global3.a, 1u))) & countOneBits(vec4<u32>(_wgslsmith_sub_u32(global1.x, 4294967295u), u_input.d.x, 32015u, 36718u)));
    var var_0 = global2[_wgslsmith_index_u32(global1.x, 30u)];
    var var_1 = arg_1;
    global0 = array<bool, 7>();
    return ~(~select(select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.a, 1i, 13051i), vec4<bool>(false, arg_3.a, false, arg_3.a)) >> ((vec4<u32>(4294967295u, arg_2, arg_0.a, 4294967295u) & vec4<u32>(arg_2, 1u, 1u, global3.a)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-39645i, -7443i, u_input.b, -11378i), vec4<i32>(u_input.b, -36489i, u_input.a, u_input.a) & vec4<i32>(-6752i, u_input.a, u_input.a, u_input.a)), vec4<bool>(true, false != arg_3.a, global0[_wgslsmith_index_u32(~1u, 7u)], true)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = 1393f;
    global1 = vec4<u32>(37039u, u_input.e, ~86986u, 51767u) >> (vec4<u32>(19387u, firstTrailingBit(7393u) & select(global3.a, ~global1.x, global0[_wgslsmith_index_u32(11199u, 7u)]), 21962u | arg_0.a, ~1u) % vec4<u32>(32u));
    let var_1 = Struct_2((_wgslsmith_mod_u32(~4294967295u, global1.x) << (~max(global3.a, 4294967295u) % 32u)) < ~abs(0u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-470f)), 743f)), -517f, -825f), Struct_1(global1.x));
    global0 = array<bool, 7>();
    let var_2 = var_1.b.yy;
    return -22947i;
}

fn func_1() -> vec3<i32> {
    global2 = array<Struct_1, 30>();
    global4 = array<vec2<f32>, 26>();
    let var_0 = !any(!select(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(22381u, 7u)], global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(global1.x, 7u)]), u_input.c.x <= global3.a));
    global4 = array<vec2<f32>, 26>();
    global2 = array<Struct_1, 30>();
    return vec3<i32>(u_input.b, _wgslsmith_dot_vec4_i32(~select(~vec4<i32>(13300i, u_input.b, 16832i, u_input.a), func_2(global2[_wgslsmith_index_u32(0u, 30u)], Struct_1(global3.a), u_input.e, Struct_2(var_0, vec3<f32>(-849f, 869f, 670f), Struct_1(global1.x))), u_input.e < u_input.e), vec4<i32>(-func_3(Struct_1(global1.x)), 27749i, ~u_input.a, -26846i)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(select(reverseBits(select(firstTrailingBit(vec3<i32>(4335i, -2147483647i, u_input.b)), func_1(), global0[_wgslsmith_index_u32(~global3.a, 7u)])), vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(57162i, 16285i, 0i, -11239i), vec4<i32>(-65718i, 1i, 12876i, 2147483647i)), vec4<i32>(u_input.b, 2147483647i, u_input.a, 0i)), -1i), vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 7u)], true, global0[_wgslsmith_index_u32(6688u, 7u)], true)) & false, true, all(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(10817u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false, true), false)))), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(-6084i, u_input.b, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(22533i, u_input.b, u_input.b)))));
    var var_1 = !select(!vec3<bool>(true, true & global0[_wgslsmith_index_u32(1u, 7u)], any(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(global3.a, 7u)], false))), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], !any(vec4<bool>(true, false, false, true)), false), !(!vec3<bool>(global0[_wgslsmith_index_u32(46078u, 7u)], false, false)));
    global1 = vec4<u32>(4294967295u, _wgslsmith_mod_u32(global1.x, 2224u), 1u << (max(min(global1.x & u_input.e, ~global3.a), ~global3.a) % 32u), global3.a);
    var var_2 = max(-24840i, ~_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-39108i, 2147483647i, u_input.b)), vec3<i32>(func_3(Struct_1(global1.x)), -60723i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

