struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(1429f, 573f, 697f, -1000f, 1185f, 969f, 753f, 308f, -2017f, -1381f, -725f, -868f, 116f, -197f, 777f, -1000f, -666f, 1908f, -136f, 230f, -1418f, -1087f, -897f, 704f, 1552f);

var<private> global1: f32;

var<private> global2: array<u32, 6>;

var<private> global3: u32;

var<private> global4: array<bool, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<u32> {
    let var_0 = !(!(!(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 28u)], global4[_wgslsmith_index_u32(0u, 28u)], arg_0), arg_0))));
    let var_1 = vec4<i32>(-75208i, countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, 14329i, 1i)) | u_input.a, -(vec4<i32>(-1i, 2147483647i, u_input.a.x, u_input.b) & u_input.a))), ~(-u_input.a.x), u_input.b << (arg_1 % 32u));
    global4 = array<bool, 28>();
    let var_2 = var_1.x;
    global4 = array<bool, 28>();
    return vec4<u32>(1u, abs(4294967295u), _wgslsmith_clamp_u32(63811u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 27169u, u_input.c, 1260u), ~vec4<u32>(u_input.d, 1u, u_input.d, arg_1)), 6u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u))), 4294967295u), ~global2[_wgslsmith_index_u32(20511u | global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(5003u), 1u), 6u)], 6u)]);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(~5498u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(659f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.c), 25u)])))), select(u_input.a, u_input.a, global4[_wgslsmith_index_u32(0u, 28u)] | any(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 28u)], global4[_wgslsmith_index_u32(4294967295u, 28u)]))));
    global1 = var_0.b;
    var var_1 = ~u_input.b;
    var_1 = -1i;
    global4 = array<bool, 28>();
    return Struct_1(func_3(!any(!vec4<bool>(false, false, global4[_wgslsmith_index_u32(59832u, 28u)], false)), 4294967295u), !(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 28u)], -1i > u_input.b, any(vec4<bool>(false, true, false, global4[_wgslsmith_index_u32(15115u, 28u)])))), global4[_wgslsmith_index_u32(0u, 28u)], global4[_wgslsmith_index_u32(127551u, 28u)]);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<i32>) -> bool {
    var var_0 = arg_0.yw;
    let var_1 = Struct_3(func_2(), firstTrailingBit(vec4<i32>(~u_input.a.x, u_input.b, ~arg_2.x, -8103i) & (vec4<i32>(-2147483647i, u_input.a.x, arg_2.x, -7341i) ^ u_input.a)), -_wgslsmith_dot_vec3_i32(u_input.a.yzx, vec3<i32>(~(-12922i), -1i, arg_2.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~(~u_input.d)), 25u)] - _wgslsmith_f_op_f32(sign(1348f))));
    global3 = ~u_input.d;
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec4_u32(~(~vec4<u32>(37493u, 25298u, 13479u, 36698u)), vec4<u32>(u_input.e, 148u, ~18475u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.a.a.x, global2[_wgslsmith_index_u32(1u, 6u)], u_input.c), var_1.a.a))), func_2().b, global4[_wgslsmith_index_u32(u_input.e, 28u)], all(func_2().b.xy)), vec4<i32>(i32(-1i) * -(var_1.b.x | arg_2.x), -1i, ~abs(~0i), -2147483647i), _wgslsmith_div_i32(min(var_1.b.x, 2147483647i), var_1.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-651f + 456f))));
    return select(all(!func_2().b), all(var_1.a.b.xy), true);
}

fn func_4(arg_0: vec3<bool>) -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(floor(-429f));
    var var_0 = Struct_2(~401i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1443f, 2123f) * vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27509u, 6u)], 6u)], 25u)], 2746f))))))));
    var var_1 = Struct_5(firstLeadingBit(_wgslsmith_mod_vec4_i32(~countOneBits(u_input.a), -vec4<i32>(var_0.a, u_input.a.x, -1i, -13215i))));
    var_0 = Struct_2(6943i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.b))))), var_0.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), var_0.b.x, global0[_wgslsmith_index_u32(u_input.c << (global2[_wgslsmith_index_u32(67082u, 6u)] % 32u), 25u)]), vec3<f32>(1f, 534f, -1111f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -1374f, var_0.b.x))))))));
    return StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, countOneBits(4294967295u), _wgslsmith_div_u32(47646u, 16685u), 40855u) ^ abs(vec4<u32>(1u, 0u, 19908u, global2[_wgslsmith_index_u32(u_input.c, 6u)])), vec4<u32>(global2[_wgslsmith_index_u32(~36149u, 6u)], _wgslsmith_div_u32(~98706u, _wgslsmith_div_u32(u_input.c, u_input.e)), ~(u_input.d & 1u), 0u)), 6u)], vec2<u32>(~(~1u), u_input.c), var_1.a.x, ~(~func_2().a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-390f, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -314f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(262f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18134u, 6u)], 25u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e, 25u)] - 349f), -183f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 25u)], 316f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 25u)]) + vec3<f32>(-237f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13136u, 6u)], 25u)], global0[_wgslsmith_index_u32(u_input.d, 25u)])), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 916f, global0[_wgslsmith_index_u32(22412u, 25u)]), vec3<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], -1778f)), any(vec4<bool>(false, false, false, global4[_wgslsmith_index_u32(u_input.e, 28u)])))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-583f, -1350f, -823f), vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)], 25u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 6u)], 25u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39109u, 6u)], 25u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(401f, -1798f, global0[_wgslsmith_index_u32(u_input.c, 25u)])))))));
    global4 = array<bool, 28>();
    global4 = array<bool, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-555f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48593u, 6u)], 25u)], 468f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(30696u, 25u)] * var_0.x), _wgslsmith_f_op_f32(-var_0.x)))))));
    let var_2 = -806f;
    let x = u_input.a;
    s_output = func_4(!vec3<bool>(func_1(select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 28u)], false, global4[_wgslsmith_index_u32(u_input.c, 28u)], true), vec4<bool>(global4[_wgslsmith_index_u32(10769u, 28u)], global4[_wgslsmith_index_u32(2179u, 28u)], true, global4[_wgslsmith_index_u32(19971u, 28u)]), false), u_input.b > u_input.a.x, vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)), true, false));
}

