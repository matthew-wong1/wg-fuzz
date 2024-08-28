struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(1902i, -21074i));

var<private> global1: array<i32, 25> = array<i32, 25>(0i, i32(-2147483648), -1i, 0i, 2147483647i, -1i, 1i, i32(-2147483648), -465i, 16239i, 2147483647i, -16507i, 1i, -1i, 2147483647i, -9926i, 2147483647i, -1i, 25660i, 2147483647i, -11848i, 1i, -52771i, -1i, -5761i);

var<private> global2: array<bool, 24> = array<bool, 24>(true, true, false, false, true, false, false, true, true, true, true, true, true, false, false, false, false, true, false, false, true, true, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = vec4<bool>(global2[_wgslsmith_index_u32(21795u, 24u)], true, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(_wgslsmith_div_u32(u_input.b.x, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(81797u, arg_0, arg_0), ~u_input.b.xxz)), 24u)], false);
    var var_1 = Struct_1(u_input.c);
    var_1 = Struct_1(2147483647i);
    var var_2 = select(-select(vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_0, 25u)], 2147483647i, global1[_wgslsmith_index_u32(arg_0, 25u)]), vec4<i32>(-19755i, global1[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a, 1i), var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, 0i, 0i, -2147483647i), select(vec4<i32>(0i, global1[_wgslsmith_index_u32(79692u, 25u)], var_1.a, global1[_wgslsmith_index_u32(82338u, 25u)]), vec4<i32>(0i, -2147483647i, -14465i, global1[_wgslsmith_index_u32(arg_0, 25u)]), true), abs(u_input.d)) | (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -36076i, 35385i, -47535i), u_input.d) & u_input.d), !(!select(var_0, var_0, vec4<bool>(false, false, var_0.x, true)))) | ~vec4<i32>(1i, global1[_wgslsmith_index_u32(reverseBits(arg_0), 25u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 25u)] & _wgslsmith_mod_i32(-1i, 2147483647i), -1i);
    var_1 = Struct_1(reverseBits(select(max(var_1.a, global1[_wgslsmith_index_u32(~u_input.b.x, 25u)]), -32241i, global2[_wgslsmith_index_u32(u_input.b.x, 24u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2619f * _wgslsmith_f_op_f32(min(-1242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(249f - 2049f) * _wgslsmith_f_op_f32(-814f - -205f))))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> bool {
    let var_0 = vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(~arg_0)), _wgslsmith_f_op_f32(arg_3 + -1000f), any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(24773u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 24u)], true, global2[_wgslsmith_index_u32(45272u, 24u)]))))), _wgslsmith_f_op_f32(exp2(arg_1)));
    global0 = array<vec2<i32>, 1>();
    let var_1 = Struct_1(_wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x), -2475f);
    global2 = array<bool, 24>();
    return global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~arg_0, ~1u), _wgslsmith_mult_u32(countOneBits(arg_0), u_input.b.x)), vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 22520u), max(18549u, _wgslsmith_mod_u32(31509u, 10188u))))), 24u)];
}

fn func_1() -> u32 {
    let var_0 = select(vec4<bool>((u_input.b.x | _wgslsmith_div_u32(28536u, u_input.b.x)) != 1u, false, global2[_wgslsmith_index_u32(4294967295u, 24u)], min(_wgslsmith_dot_vec4_i32(vec4<i32>(20120i, u_input.e, 0i, global1[_wgslsmith_index_u32(8247u, 25u)]), vec4<i32>(u_input.d.x, u_input.a, u_input.c, u_input.a)), -u_input.a) != ~(u_input.d.x | global1[_wgslsmith_index_u32(0u, 25u)])), !select(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(4116u, 24u)], true, false)), vec4<bool>(!global2[_wgslsmith_index_u32(76859u, 24u)], true, func_2(49829u, -1389f, Struct_3(u_input.a), -1801f), 39207u != u_input.b.x), all(vec2<bool>(false, global2[_wgslsmith_index_u32(49685u, 24u)])) & global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), ((max(u_input.b.x, 0u) == 55038u) != !(global2[_wgslsmith_index_u32(1u, 24u)] | false)) & func_2(_wgslsmith_div_u32(~4294967295u, firstLeadingBit(u_input.b.x)), 1614f, Struct_3(~u_input.e), 376f));
    var var_1 = Struct_4(u_input.d, _wgslsmith_sub_vec4_u32(abs(vec4<u32>(reverseBits(36679u), u_input.b.x, abs(80020u), 0u & u_input.b.x)), ~(~reverseBits(u_input.b))));
    global1 = array<i32, 25>();
    global2 = array<bool, 24>();
    var var_2 = ~1u >= _wgslsmith_mod_u32(_wgslsmith_sub_u32(~abs(25453u), var_1.b.x), 20201u);
    return ~var_1.b.x ^ countOneBits(_wgslsmith_div_u32(15498u, var_1.b.x >> (min(u_input.b.x, 48797u) % 32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = Struct_2((~(-arg_0) >> ((u_input.b.x << (~u_input.b.x % 32u)) % 32u)) >> (70304u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -841f), 708f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, 1097f)))), _wgslsmith_f_op_f32(981f * -497f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f - 1027f)))), 2170f, _wgslsmith_add_vec2_u32(u_input.b.yx, ~vec2<u32>(u_input.b.x, ~1u)), select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], any(vec2<bool>(global2[_wgslsmith_index_u32(7044u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)])), all(vec2<bool>(global2[_wgslsmith_index_u32(14346u, 24u)], false)), true), !(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 24u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]))), any(vec4<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], true, true)), !global2[_wgslsmith_index_u32(1u, 24u)], any(vec3<bool>(global2[_wgslsmith_index_u32(20923u, 24u)], global2[_wgslsmith_index_u32(20735u, 24u)], false)), all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(8235u, 24u)]))))));
    return StorageBuffer(1i, _wgslsmith_f_op_f32(floor(var_0.b.x)), 217f, 418f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 1>();
    global2 = array<bool, 24>();
    global1 = array<i32, 25>();
    var var_0 = -(~_wgslsmith_add_vec2_i32(min(_wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(80403u, 1u)], u_input.d.xw), ~vec2<i32>(86392i, 42042i)), ~min(vec2<i32>(u_input.c, 0i), global0[_wgslsmith_index_u32(120723u, 1u)])));
    global0 = array<vec2<i32>, 1>();
    let x = u_input.a;
    s_output = func_4(global1[_wgslsmith_index_u32(select(min(u_input.b.x, abs(27008u)), ~(~u_input.b.x), _wgslsmith_mult_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]) > var_0.x) | ~(func_1() | u_input.b.x), 25u)], Struct_1(1i));
}

