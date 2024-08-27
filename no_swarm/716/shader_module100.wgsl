struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<i32, 32> = array<i32, 32>(1i, 64634i, -21829i, -45559i, 1i, 14317i, -34345i, i32(-2147483648), -1i, 45264i, 20409i, 7221i, 25488i, i32(-2147483648), -3134i, -1i, -1i, -12010i, -15981i, 1i, 0i, 35595i, 2147483647i, -8767i, 0i, 1i, 2147483647i, 0i, -7540i, 0i, 20810i, i32(-2147483648));

var<private> global3: array<f32, 4>;

var<private> global4: u32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~u_input.a.x & arg_1), firstTrailingBit(_wgslsmith_mult_u32(~u_input.c.x, arg_2.a.x) ^ 4294967295u)), 28u)];
    var var_1 = global1[_wgslsmith_index_u32(24236u, 5u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1, arg_0.a.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(arg_2.a.x, 48599u)), arg_2.a.xy)), 1u << (~var_0.a.x % 32u)), 4294967295u), 28u)];
    var var_3 = arg_0;
    global2 = array<i32, 32>();
    return var_3.a.zx;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<u32> {
    global3 = array<f32, 4>();
    global0 = array<Struct_1, 28>();
    var var_0 = global1[_wgslsmith_index_u32(arg_0 ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.a.yy, func_3(global0[_wgslsmith_index_u32(arg_0, 28u)], arg_1.a.x, Struct_1(arg_1.a, 2147483647i, 1i))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.a.x, 4294967295u), firstTrailingBit(u_input.c))), vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(16318u), _wgslsmith_clamp_u32(arg_0, 60345u, u_input.b.x)), ~arg_0)), 5u)];
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x & func_3(arg_1, ~4294967295u, Struct_1(vec3<u32>(arg_0, u_input.c.x, 8847u), 1i, arg_2.x)).x, ~(1u ^ u_input.b.x)) & var_0.a.x, 5u)];
    let var_2 = Struct_1(firstTrailingBit(var_1.a), _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_0, 32u)], -2147483647i, -26756i), vec3<i32>(global2[_wgslsmith_index_u32(var_0.a.x, 32u)], global2[_wgslsmith_index_u32(u_input.c.x, 32u)], 0i)), firstTrailingBit(vec3<i32>(33893i, arg_2.x, -1i))), ~(-vec3<i32>(-8589i, global2[_wgslsmith_index_u32(1u, 32u)], -2147483647i)), true), select(vec3<i32>(1359i, arg_1.b, -66613i), _wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_0.a.x, 32u)], 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(-9060i, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], 11525i), vec3<i32>(var_0.c, -1i, 1i))), any(vec3<bool>(true, true, false)))), global2[_wgslsmith_index_u32(var_0.a.x, 32u)]);
    return vec2<u32>(arg_0 >> (var_0.a.x % 32u), ~(~((arg_0 | 11009u) | ~53931u)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = abs(u_input.b.xz ^ firstTrailingBit(func_2(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], -vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]))));
    var var_1 = all(vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_sub_vec3_u32(~u_input.b, u_input.b);
    var var_3 = (((1i >= abs(global2[_wgslsmith_index_u32(16949u, 32u)])) || any(vec2<bool>(true, true))) || any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))) | true;
    let var_4 = var_0.x;
    return Struct_1(u_input.c.yxw, 1i, 2147483647i);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<Struct_1, 28>();
    let var_0 = abs(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(max(113626u, _wgslsmith_mult_u32(u_input.c.x, min(38533u, 1u))), 32u)], -(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_1.b, -20407i, arg_2), vec4<i32>(global2[_wgslsmith_index_u32(arg_1.a.x, 32u)], arg_1.b, -1i, 0i)) ^ _wgslsmith_mult_i32(arg_1.b, global2[_wgslsmith_index_u32(arg_3.a.x, 32u)]))));
    let var_1 = true;
    let var_2 = arg_1;
    var var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 885f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(21584u, 4u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global3[_wgslsmith_index_u32(u_input.c.x, 4u)], -593f, -617f) - vec4<f32>(1742f, arg_0, -1293f, -159f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 197f, 596f, arg_0)))), vec4<f32>(-1913f, _wgslsmith_f_op_f32(select(423f, 1536f, var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1588f), arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(~var_2.a.x, 4u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1013f, -965f)))))));
    return vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_3.a.zy, ~u_input.a), vec2<u32>(0u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(max(arg_1.a.x, 1u)), ~(var_2.a.x | var_2.a.x)), u_input.a), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.b);
    let var_1 = Struct_1(~abs(vec3<u32>(1u, 0u, 4294967295u)) ^ _wgslsmith_div_vec3_u32(func_4(-927f, func_1(1680f, vec4<f32>(global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], 115f, 1303f), vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], 668f)), -11367i, func_1(global3[_wgslsmith_index_u32(0u, 4u)], vec4<f32>(103f, global3[_wgslsmith_index_u32(u_input.b.x, 4u)], 1000f, global3[_wgslsmith_index_u32(var_0.x, 4u)]), vec2<f32>(517f, -412f))), select(select(u_input.b, u_input.c.zyw, true), func_1(1224f, vec4<f32>(-2583f, global3[_wgslsmith_index_u32(u_input.a.x, 4u)], 715f, 275f), vec2<f32>(-818f, global3[_wgslsmith_index_u32(0u, 4u)])).a, select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), _wgslsmith_add_i32(select(13230i, 34082i, true), ~select(~global2[_wgslsmith_index_u32(2083u, 32u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a.x), 32u)], any(vec3<bool>(true, false, true)))), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(~(var_0.x >> (var_0.x % 32u)) | 0u, 32u)], _wgslsmith_mod_i32(~func_1(580f, vec4<f32>(-630f, -1175f, 2236f, -1000f), vec2<f32>(global3[_wgslsmith_index_u32(var_0.x, 4u)], 1311f)).b, -global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 7227u), 32u)]), abs(abs(-37224i)) & global2[_wgslsmith_index_u32(37725u, 32u)]));
    var var_2 = func_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 4u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 4u)] + _wgslsmith_f_op_f32(-482f - -1412f)) + 1239f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(121167u, 4u)], global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(83585u, 4u)]), vec4<f32>(-2688f, 1770f, 1335f, 1302f))))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1081u, 4u)]) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(777f, -564f) + global3[_wgslsmith_index_u32(var_1.a.x >> (31652u % 32u), 4u)]))), 217f));
    let var_3 = _wgslsmith_mult_vec2_u32(u_input.b.zx, abs(max(func_2(1u, var_1, _wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_1.a.x, 32u)], -2147483647i), vec2<i32>(var_1.c, 0i))), min(var_1.a.yz, vec2<u32>(var_0.x, var_2.a.x) & vec2<u32>(var_0.x, var_1.a.x)))));
    let var_4 = Struct_1(max(select(var_2.a, var_2.a, all(vec4<bool>(true, true, false, true))), _wgslsmith_mod_vec3_u32(u_input.c.wxx & vec3<u32>(4294967295u, 2497u, var_2.a.x), u_input.c.xzw) ^ var_2.a), ~2147483647i, -2147483647i);
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_4.a.x, _wgslsmith_mult_u32(~(~1u), func_1(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 0u), 4u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1945f, 159f, -869f, 1370f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-803f, global3[_wgslsmith_index_u32(0u, 4u)]) - vec2<f32>(global3[_wgslsmith_index_u32(72007u, 4u)], 1000f))).a.x), ~0u), vec3<u32>(~_wgslsmith_add_u32(4294967295u, 0u), ~27626u & var_0.x, _wgslsmith_clamp_u32(1u, var_2.a.x, var_3.x)) & reverseBits(vec3<u32>(_wgslsmith_div_u32(1u, var_2.a.x), 9454u, ~44547u)));
    global1 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~var_0.x, 13137i);
}

