struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: vec3<f32>;

var<private> global2: vec2<f32> = vec2<f32>(-233f, 1351f);

var<private> global3: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 20912i, 33733i), vec3<u32>(17546u, 0u, 44794u), 0i, vec2<f32>(-1230f, 648f));

var<private> global4: array<Struct_1, 27>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(min(abs(u_input.b.x ^ global3.b.x), ~(~global3.b.x))), abs(firstTrailingBit(14299u << (firstTrailingBit(18903u) % 32u)))), 27u)];
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 437f)))));
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.zy)));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-881f, global1.x, global1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, global0[_wgslsmith_index_u32(~(~84853u), 4u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1231f - 1446f))))));
    let var_1 = var_0.xx;
    return arg_0.zwy;
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global4 = array<Struct_1, 27>();
    var var_0 = ((~1u & firstLeadingBit(_wgslsmith_sub_u32(global3.b.x, global3.b.x))) | _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, global3.b.x, ~u_input.b.x), 4733u)) << (reverseBits(~((0u ^ global3.b.x) >> ((global3.b.x | 106981u) % 32u))) % 32u);
    var var_1 = any(vec3<bool>(global2.x <= -515f, !(true || arg_0.x), all(!arg_0.xz))) | !(arg_0.x & arg_0.x);
    let var_2 = Struct_1(global3.a, vec3<u32>(~(~u_input.b.x), 1u, _wgslsmith_sub_u32(global3.b.x, 1391u)), _wgslsmith_mod_i32(1i, abs(63088i)) >> (select(~(~u_input.b.x), firstLeadingBit(16252u), true) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global3.d, global1.xz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.x, global2.x))))));
    let var_3 = _wgslsmith_sub_u32(select(var_2.b.x, 1u, all(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(false, arg_0.x, false, false), false), arg_0.x))), global3.b.x);
    return ~firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global3.a.x, 2147483647i, var_2.a.x, u_input.a)), -vec4<i32>(0i, u_input.a, -47835i, var_2.c)), -38176i));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x + global3.d.x)))));
    let var_1 = countOneBits(global3.b.xz);
    var var_2 = Struct_1(vec3<i32>(~_wgslsmith_div_i32(u_input.a, 0i), firstLeadingBit(1i >> (select(arg_0, global3.b.x, false) % 32u)), u_input.a), _wgslsmith_mult_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global3.b.x, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.b.x, 48865u, 0u), u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(8085u, global3.b.x, 36654u), global3.b))), 11116i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, var_0)))));
    let var_3 = _wgslsmith_div_vec2_u32(~global3.b.xx, max(u_input.b.zz, min(~reverseBits(global3.b.yz), vec2<u32>(firstTrailingBit(global3.b.x), 10560u))));
    let var_4 = global4[_wgslsmith_index_u32(0u, 27u)];
    return Struct_1(vec3<i32>(func_4(!func_3(vec4<bool>(false, false, true, false))), select(select(1i, var_2.c, true), var_4.c, false) << (_wgslsmith_sub_u32(global3.b.x, global3.b.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~u_input.a, _wgslsmith_dot_vec3_i32(global3.a, vec3<i32>(0i, -42282i, -14768i)), select(-64327i, global3.c, true)), u_input.a)), vec3<u32>(var_4.b.x, 4294967295u, ~(~arg_0)), countOneBits(abs(1i) << (0u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.d.x, global2.x)));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = -697f;
    var var_1 = func_2(~0u << (select(abs(arg_0.b.x), ~4294967295u, _wgslsmith_div_f32(767f, global2.x) <= -827f) % 32u), 1107f);
    var var_2 = func_2(4294967295u, 869f);
    var var_3 = Struct_1(vec3<i32>(-43305i, u_input.a | firstLeadingBit(var_1.c), u_input.a | ~_wgslsmith_div_i32(-4971i, -40152i)), u_input.b, abs(-_wgslsmith_mod_i32(u_input.a, global3.a.x)), _wgslsmith_f_op_vec2_f32(min(global1.xy, _wgslsmith_f_op_vec2_f32(var_2.d * global1.xz))));
    return !func_3(!vec4<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(true, false)), var_1.b.x < 1u, true)).x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 1i;
    global1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_f_op_f32(floor(global1.x)))), -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-381f * _wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(trunc(498f)), _wgslsmith_div_f32(678f, arg_3.d.x) > 1208f)), arg_2.d.x)));
    var_0 = -1i;
    let var_1 = 7953u;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, global0[_wgslsmith_index_u32(global3.b.x, 4u)], -2104f), vec3<f32>(arg_3.d.x, global1.x, 685f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-892f, arg_0.d.x, 1562f))))));
    return func_2(75701u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(141f - _wgslsmith_f_op_f32(trunc(global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(!(firstTrailingBit(u_input.b.x) < global3.b.x), true, any(vec3<bool>(false, select(false, false, true), true)), false), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), false), true);
    let var_1 = true;
    global4 = array<Struct_1, 27>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1699f + global0[_wgslsmith_index_u32(~select(u_input.b.x, global3.b.x, var_1), 4u)]) * _wgslsmith_f_op_f32(ceil(global2.x))), global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(step(308f, _wgslsmith_f_op_f32(-global1.x)))))));
    global3 = func_5(global4[_wgslsmith_index_u32(global3.b.x, 27u)], Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-1i, u_input.a, global3.a.x), u_input.a, 0i), global3.a), select(u_input.b, _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, global3.b.x, 1u), vec3<u32>(global3.b.x, global3.b.x, 1u) | u_input.b), var_0.zwy), i32(-1i) * -(u_input.a | u_input.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.d), vec2<f32>(567f, global3.d.x), func_1(global4[_wgslsmith_index_u32(global3.b.x, 27u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(38149u, 4u)], 1262f), vec2<f32>(global2.x, global1.x))))), func_2(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global3.b.x, u_input.b.x), countOneBits(u_input.b.x), 1u), -846f), global4[_wgslsmith_index_u32(abs(~max(firstTrailingBit(global3.b.x), _wgslsmith_mult_u32(u_input.b.x, global3.b.x))), 27u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.d.x, global0[_wgslsmith_index_u32(0u, 4u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-350f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(695f * _wgslsmith_f_op_f32(f32(-1f) * -675f)), _wgslsmith_f_op_f32(-global3.d.x))), -522f), max(max(-vec2<i32>(u_input.a, global3.a.x), -global3.a.zx), vec2<i32>(u_input.a | max(global3.c, -2147483647i), _wgslsmith_div_i32(global3.c, _wgslsmith_sub_i32(u_input.a, 26655i)))), countOneBits(_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(23203u, global3.b.x, u_input.b.x, global3.b.x)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 370u, 30351u))) << (vec4<u32>(~1u, global3.b.x, 1u, countOneBits(0u)) % vec4<u32>(32u))));
}

