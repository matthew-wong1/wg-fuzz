struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(566f, 749f, 866f, 178f, -745f, -1000f, 227f, -601f, -1280f, 2124f, 627f, 584f, -1080f, 134f, 783f, -1335f, 675f, -909f, -124f);

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    global0 = array<f32, 19>();
    let var_0 = 105f;
    let var_1 = Struct_1(~arg_0.b.a);
    global0 = array<f32, 19>();
    global1 = array<vec4<bool>, 2>();
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 19u)] + var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 19u)]))))))));
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = vec3<i32>(20657i, arg_0.a.x, 35495i);
    var var_1 = vec3<f32>(1686f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-904f * -1038f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.d.a, 19u)] - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-337f, -1006f, arg_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-478f + -164f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(15459u, 19u)] + global0[_wgslsmith_index_u32(arg_0.e.a.a, 19u)]))))));
    var var_2 = arg_0.e.c.a;
    var var_3 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(107114u, 19u)]);
    let var_4 = ~_wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(_wgslsmith_mod_i32(~(-2147483647i), i32(-1i) * -2147483647i), ~var_0.x));
    return vec2<bool>(arg_0.c, true);
}

fn func_2() -> i32 {
    global0 = array<f32, 19>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), _wgslsmith_div_u32(4294967295u, 10626u)), 19u)], _wgslsmith_f_op_vec3_f32(func_1(Struct_2(u_input.a.wz, Struct_1(34847u)))).x, global0[_wgslsmith_index_u32(~firstLeadingBit(1u), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(28765u, 19u)], 699f, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]) * vec4<f32>(762f, -1185f, global0[_wgslsmith_index_u32(3238u, 19u)], -101f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1567u, 19u)], -543f, global0[_wgslsmith_index_u32(78680u, 19u)], -873f)), vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(613f, global0[_wgslsmith_index_u32(22331u, 19u)], 1425f, 1395f) * vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(21339u, 19u)], -900f)) - vec4<f32>(1490f, global0[_wgslsmith_index_u32(23975u, 19u)], global0[_wgslsmith_index_u32(35712u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(25772u, 19u)]))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(324f, global0[_wgslsmith_index_u32(12777u, 19u)], -364f, 1271f))))))));
    global1 = array<vec4<bool>, 2>();
    let var_1 = Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-12637i, ~6659i), select(u_input.a.yz, vec2<i32>(u_input.a.x, 4118i), func_3(Struct_5(u_input.a.xxy, Struct_1(25585u), false, Struct_1(1u), Struct_3(Struct_1(1u), false, Struct_1(59932u)))))), abs(-u_input.a.xy)), Struct_1(1u));
    global0 = array<f32, 19>();
    return abs(u_input.a.x);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = vec4<bool>(false, all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(1u, 2u)]), !global1[_wgslsmith_index_u32(34246u, 2u)], vec4<bool>(true, true, true, true))) || !func_3(Struct_5(vec3<i32>(-54587i, arg_2, -1476i), Struct_1(arg_0), false, Struct_1(arg_0), Struct_3(Struct_1(1u), false, Struct_1(804u)))).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(reverseBits(0u), 19u)])))) >= -295f, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))) && !(select(4294967295u, arg_1.x, false) != arg_0));
    var var_1 = Struct_2(u_input.a.yw, Struct_1(_wgslsmith_clamp_u32(~arg_1.x, 16226u, arg_3)));
    var var_2 = Struct_4(vec4<u32>(44253u, 13355u, arg_1.x, var_1.b.a & countOneBits(abs(var_1.b.a))), arg_0, 50569u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1154f, global0[_wgslsmith_index_u32(0u, 19u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, global0[_wgslsmith_index_u32(0u, 19u)])))))), u_input.a.x);
    global0 = array<f32, 19>();
    var_2 = Struct_4(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(6338u, 0u, 8968u, var_2.a.x), var_2.a)), ~1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, 2106u, arg_0, 10641u), _wgslsmith_mult_vec4_u32(var_2.a, var_2.a)), ~countOneBits(vec4<u32>(4294967295u, 20221u, var_2.c, 0u))), 0u, ~abs(arg_0)), var_2.d, 1i ^ abs(var_2.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_f_op_f32(floor(var_2.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~u_input.a.zyz, (vec3<i32>(u_input.a.x, 44483i, 15463i) | firstTrailingBit(u_input.a.xxz)) | select(-(u_input.a.ywx & vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ (vec3<i32>(1i, -1i, u_input.a.x) << (vec3<u32>(0u, 0u, 29140u) % vec3<u32>(32u))), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(775u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(28917u, 19u)]), vec3<bool>(false, false, true))) - _wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec2<i32>(-26093i, -29840i), Struct_1(6025u))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 194f, 1756f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -1000f, -1000f) + vec3<f32>(global0[_wgslsmith_index_u32(37518u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])))) - vec3<f32>(global0[_wgslsmith_index_u32(select(14695u, 4294967295u, true), 19u)], _wgslsmith_f_op_f32(func_4(~4294967295u, firstLeadingBit(vec2<u32>(20059u, 0u)), func_2(), 1u)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 19u)] + _wgslsmith_f_op_f32(-479f * global0[_wgslsmith_index_u32(0u, 19u)]))))));
    var var_2 = 0u;
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    var_2 = 24798u;
    var_0 = vec3<i32>(_wgslsmith_clamp_i32(select(~1i, u_input.a.x, true == any(vec3<bool>(true, false, true))), -53095i, select(1i, _wgslsmith_sub_i32(-32215i, var_0.x), false)), firstLeadingBit(_wgslsmith_div_i32(var_0.x & u_input.a.x, u_input.a.x) >> (40089u % 32u)), select(i32(-1i) * -u_input.a.x, u_input.a.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(33347u, 19u)] - -662f) < var_1.x) ^ _wgslsmith_mult_i32(var_0.x, abs(u_input.a.x) | (u_input.a.x << (0u % 32u))));
    var var_3 = select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, false), !any(vec3<bool>(true, true, true)), true), !vec3<bool>(func_3(Struct_5(vec3<i32>(39533i, -45660i, u_input.a.x), Struct_1(4294967295u), true, Struct_1(4294967295u), Struct_3(Struct_1(1u), true, Struct_1(4294967295u)))).x, true, true && all(vec3<bool>(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~42112u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 67615u, 0u)), ~0u, ~1u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(15769u, 41198u, 16942u, 0u) | select(vec4<u32>(0u, 25300u, 52355u, 1u), vec4<u32>(4294967295u, 11812u, 79090u, 0u), global1[_wgslsmith_index_u32(1u, 2u)]))));
}

