struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<i32, 19> = array<i32, 19>(i32(-2147483648), -31808i, -14727i, 1i, -1i, 27636i, 13345i, 2147483647i, 64169i, 1i, 1i, -16766i, -48916i, 16803i, 1i, 8626i, 1671i, 0i, 1i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = select(vec4<i32>(-22750i, 2147483647i, arg_3.x, ~arg_3.x) | _wgslsmith_sub_vec4_i32(~vec4<i32>(-9691i, global0[_wgslsmith_index_u32(41474u, 19u)], 1i, arg_0.c.x), vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, 26074i, 0i)), _wgslsmith_div_vec4_i32(firstTrailingBit(min(~vec4<i32>(34268i, arg_0.c.x, -59530i, 1i), vec4<i32>(arg_3.x, global0[_wgslsmith_index_u32(53948u, 19u)], 0i, -1i))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.x, 1i, arg_0.c.x, arg_3.x), vec4<i32>(2147483647i, u_input.a, u_input.a, 1i)), countOneBits(vec4<i32>(arg_3.x, global0[_wgslsmith_index_u32(51911u, 19u)], u_input.a, arg_3.x)), select(arg_1, arg_1, arg_2.x)))), !arg_1);
    var var_1 = vec4<u32>(~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 74513u), vec2<u32>(94565u, 16920u)) << (firstTrailingBit(62568u) % 32u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 23085u, 12996u, 4014u), vec4<u32>(35182u, 4294967295u, 4112u, 83830u)) << (1u % 32u)), 1u), ~_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 75371u, 29007u), vec3<u32>(4294967295u, 58231u, 20809u))), 1u), ~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(4065u, 1u), vec2<u32>(36014u, 0u), vec2<bool>(true, arg_2.x)), select(vec2<u32>(24675u, 10089u), vec2<u32>(0u, 124187u), true))));
    global0 = array<i32, 19>();
    let var_2 = arg_3;
    var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(0u << (_wgslsmith_mult_u32(0u, 26374u) % 32u), 4294967295u, _wgslsmith_sub_u32(42773u, _wgslsmith_div_u32(var_1.x, var_1.x)), ~_wgslsmith_dot_vec2_u32(var_1.xz, var_1.wz)) & (~_wgslsmith_div_vec4_u32(vec4<u32>(4943u, 4294967295u, var_1.x, var_1.x), vec4<u32>(0u, 0u, 69991u, 0u)) & _wgslsmith_mult_vec4_u32(select(vec4<u32>(77084u, 1u, var_1.x, 0u), vec4<u32>(0u, 0u, 4294967295u, 45313u), vec4<bool>(arg_2.x, true, true, false)), min(vec4<u32>(var_1.x, 9610u, var_1.x, var_1.x), vec4<u32>(4294967295u, var_1.x, 4294967295u, var_1.x)))), _wgslsmith_clamp_vec4_u32(~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(53462u, var_1.x, var_1.x, 0u))), vec4<u32>(12921u, var_1.x, min(0u, 1u), 56543u), ~(~vec4<u32>(4294967295u, var_1.x, var_1.x, 4294967295u))));
    return vec3<bool>(!(_wgslsmith_f_op_f32(sign(arg_0.b.x)) == _wgslsmith_f_op_f32(-863f * _wgslsmith_f_op_f32(-arg_0.b.x))), arg_0.a.x, !(!(!arg_1.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), func_3(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1636f, -482f, 565f), vec2<i32>(global0[_wgslsmith_index_u32(27775u, 19u)], -1i)), vec4<bool>(false, false, true, false), vec3<bool>(false, false, true), vec2<i32>(-2147483647i, -1i))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(653f - _wgslsmith_f_op_f32(abs(-141f))), -323f, _wgslsmith_div_f32(-1217f, _wgslsmith_f_op_f32(select(-897f, 1658f, false))))), ~(~vec2<i32>(~0i, abs(38393i))));
    var var_1 = select(55196u, ~(~_wgslsmith_mult_u32(42663u, 1u)), var_0.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1128f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.b.x, 1155f)))), 1f))) * var_0.b);
    var var_3 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-var_0.c, vec2<i32>(9137i, u_input.a) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), var_0.c) < _wgslsmith_mult_i32(abs(-16808i) | var_0.c.x, firstTrailingBit(u_input.a)), Struct_1(vec3<bool>(func_3(var_0, !vec4<bool>(false, var_0.a.x, var_0.a.x, true), !vec3<bool>(var_0.a.x, false, true), var_0.c).x, var_0.a.x, true), var_0.b, vec2<i32>(-1i) * -var_0.c), vec2<bool>(true, !(-360i >= global0[_wgslsmith_index_u32(~4294967295u, 19u)])), Struct_2(var_0), vec4<i32>((_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], -7988i), vec3<i32>(0i, 37031i, global0[_wgslsmith_index_u32(6152u, 19u)])) ^ ~var_0.c.x) >> (1u % 32u), firstTrailingBit(u_input.a), _wgslsmith_mult_i32(var_0.c.x, countOneBits(abs(global0[_wgslsmith_index_u32(7245u, 19u)]))), min(2147483647i, 2903i)));
    var var_4 = ~_wgslsmith_mod_vec3_i32(~(-var_3.e.yxy), vec3<i32>(2240i, global0[_wgslsmith_index_u32(abs(4294967295u), 19u)] ^ 1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 56466u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u)) >> (select(1u, 1141u, var_0.a.x) % 32u), 19u)]));
    return Struct_1(func_3(var_0, !vec4<bool>(any(vec4<bool>(var_0.a.x, var_3.c.x, var_0.a.x, var_0.a.x)), select(false, var_3.b.a.x, true), true, true), vec3<bool>(false && !var_3.a, true, true), vec2<i32>(firstLeadingBit(2147483647i) | _wgslsmith_dot_vec2_i32(vec2<i32>(546i, 5190i), var_3.d.a.c), var_3.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -669f, 1872f) - var_3.d.a.b), var_2))), firstTrailingBit(abs(vec2<i32>(var_3.e.x, var_4.x))) ^ vec2<i32>(1i, i32(-1i) * -1i));
}

fn func_1() -> u32 {
    global0 = array<i32, 19>();
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)))));
    let var_2 = -((i32(-1i) * -2147483647i) << (min(select(~8892u, firstTrailingBit(36425u), any(var_0.a.zy)), _wgslsmith_sub_u32(~0u, ~1u)) % 32u));
    var var_3 = func_2();
    return _wgslsmith_div_u32(4294967295u << (0u % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(24155u), abs(47002u)), _wgslsmith_mod_u32(1u, 1u)), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(14367u <= _wgslsmith_div_u32(~func_1(), _wgslsmith_mod_u32(min(4294967295u, 15638u), ~0u)));
    let var_1 = countOneBits(-firstLeadingBit(_wgslsmith_mult_i32(-6942i, 55085i)));
    global0 = array<i32, 19>();
    var var_2 = Struct_1(func_3(Struct_1(vec3<bool>(func_3(Struct_1(vec3<bool>(true, false, false), vec3<f32>(1000f, 1411f, 1000f), vec2<i32>(global0[_wgslsmith_index_u32(71478u, 19u)], 25368i)), vec4<bool>(true, true, true, false), vec3<bool>(true, true, true), vec2<i32>(2147483647i, var_1)).x, global0[_wgslsmith_index_u32(5892u, 19u)] == 2469i, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, 1029f, -611f))), vec2<i32>(countOneBits(2147483647i), global0[_wgslsmith_index_u32(~0u, 19u)])), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), u_input.a > 29825i), all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), func_2().a, any(vec3<bool>(true, true, true))), vec2<i32>(u_input.a, 2147483647i ^ var_1)), vec3<f32>(_wgslsmith_f_op_f32(abs(-522f)), -1000f, -1050f), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(var_1, 21568i), vec2<i32>(-15304i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_1), vec2<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 19u)])))));
    var var_3 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_mult_u32(49449u, 1u) << (min(1u, 51714u) % 32u)), 19u)] | (2147483647i & min(-var_1, ~(-18310i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), firstLeadingBit(vec2<u32>(1u, 1u))));
}

