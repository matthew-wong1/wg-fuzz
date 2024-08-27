struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 58854u, 15239u, 104357u);

var<private> global1: array<f32, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = firstLeadingBit(~firstTrailingBit(_wgslsmith_div_u32(~u_input.a.x, 2471u)));
    global1 = array<f32, 19>();
    return global0.x;
}

fn func_2() -> vec4<i32> {
    global0 = ~vec4<u32>(func_3(u_input.d.x) ^ ~(6719u >> (global0.x % 32u)), ~(~global0.x), firstTrailingBit(min(global0.x | 1u, u_input.a.x)), firstTrailingBit(global0.x));
    var var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-698f)) - 374f), _wgslsmith_f_op_f32(569f + _wgslsmith_f_op_f32(max(-1929f, global1[_wgslsmith_index_u32(1u, 19u)]))), global1[_wgslsmith_index_u32(global0.x, 19u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(861f, -1376f, -461f, 1000f), vec4<f32>(2761f, -683f, 768f, global1[_wgslsmith_index_u32(58972u, 19u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2301f, global1[_wgslsmith_index_u32(global0.x, 19u)], -203f, 416f), vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 19u)], -402f, global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)])))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26338u, 19u)]), _wgslsmith_f_op_f32(-635f - 647f), 590f, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), u_input.d.x <= u_input.b.x))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(12946u, 19u)], -659f, global1[_wgslsmith_index_u32(global0.x, 19u)], 1069f) - vec4<f32>(221f, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 833f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-765f, global1[_wgslsmith_index_u32(26909u, 19u)], -614f, global1[_wgslsmith_index_u32(4294967295u, 19u)]) * vec4<f32>(2453f, 544f, -446f, -587f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(26451u, 19u)], -118f, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -828f) - vec4<f32>(global1[_wgslsmith_index_u32(0u, 19u)], -1428f, 473f, global1[_wgslsmith_index_u32(33678u, 19u)])))))));
    let var_2 = Struct_2(-1i, Struct_1(reverseBits(u_input.c)), reverseBits(~vec2<u32>(global0.x, global0.x)) | global0.xx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-116f)), global1[_wgslsmith_index_u32(firstTrailingBit(42827u), 19u)], all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1520u, 19u)], var_1.x)), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(799f - 943f), select(false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1544f) * _wgslsmith_div_f32(var_1.x, -122f))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 19u)] - global1[_wgslsmith_index_u32(6235u, 19u)]), 619f), -1337f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(371f * var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)))));
    var var_3 = var_2;
    return _wgslsmith_div_vec4_i32(vec4<i32>(min(-36897i, 17227i), var_2.a, 0i, 52749i), var_2.b.a) ^ ~firstLeadingBit(vec4<i32>(abs(u_input.b.x), i32(-1i) * -14242i, _wgslsmith_div_i32(var_2.b.a.x, 0i), var_2.a));
}

fn func_1() -> Struct_1 {
    global1 = array<f32, 19>();
    return Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -u_input.d.x & -u_input.e.x, 0i, -1i >> ((global0.x >> (global0.x % 32u)) % 32u)), func_2()));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = u_input.e.x;
    var var_1 = true;
    let var_2 = ~_wgslsmith_clamp_vec3_i32(arg_3.b.a.www, vec3<i32>(-26967i, -111i, arg_2.a.x), arg_3.b.a.yzw);
    var var_3 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(select(-40294i, _wgslsmith_dot_vec3_i32(u_input.e.wxw, arg_2.a.yzw), all(vec4<bool>(false, true, false, false))), -14704i, var_2.x, firstTrailingBit(-52654i)), u_input.e << (select(_wgslsmith_add_vec4_u32(max(vec4<u32>(4294967295u, 1u, 0u, 26951u), vec4<u32>(50828u, u_input.a.x, u_input.a.x, global0.x)), ~vec4<u32>(1u, 34560u, arg_3.c.x, 849u)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(arg_3.c.x, global0.x, u_input.a.x, 1u)), vec4<u32>(global0.x, global0.x, 1u, global0.x)), vec4<bool>(arg_1 <= arg_1, false, true, false)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_2.a.x, arg_3.b.a.x), -u_input.c.x), _wgslsmith_mult_i32(33938i, i32(-1i) * -1i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(11306i, var_2.x), -43214i), 1i), u_input.b.x, select(abs(-arg_2.a.x), (i32(-1i) * -1i) | -var_2.x, true)));
    return Struct_1(vec4<i32>(abs(arg_2.a.x) ^ firstTrailingBit(arg_3.b.a.x), func_2().x, _wgslsmith_dot_vec4_i32(arg_3.b.a, vec4<i32>(-1i, arg_2.a.x, var_3.x, var_2.x)), countOneBits(2392i)) & u_input.e);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    global0 = ~reverseBits(select(firstTrailingBit(vec4<u32>(28046u, 11610u, 0u, arg_0)) ^ (vec4<u32>(0u, arg_2.x, 125779u, u_input.a.x) ^ vec4<u32>(0u, 1u, global0.x, arg_2.x)), ~reverseBits(vec4<u32>(1u, 4294967295u, u_input.a.x, 4294967295u)), 28478u > (u_input.a.x ^ arg_0)));
    var var_0 = 0u;
    let var_1 = Struct_2(arg_3.a.x & arg_3.a.x, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-611f, arg_1, global1[_wgslsmith_index_u32(4294967295u, 19u)], -1143f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(492f, 541f, arg_1, global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_1, arg_1, -1427f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(631f, arg_1, 1375f, 768f), vec4<f32>(global1[_wgslsmith_index_u32(30582u, 19u)], 471f, -523f, -213f), true))))), global1[_wgslsmith_index_u32(25466u, 19u)], Struct_1(vec4<i32>(func_2().x, i32(-1i) * -13556i, -1i, 1i)), Struct_2(1226i, arg_3, _wgslsmith_mod_vec2_u32(min(u_input.a.yy, u_input.a.xy), vec2<u32>(u_input.a.x, 1u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(68377u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], arg_1, arg_1)))))), select(u_input.a.xy, select(global0.zw, vec2<u32>(_wgslsmith_div_u32(34956u, arg_0), ~1u), vec2<bool>(true, true)), _wgslsmith_mod_u32(max(48735u, arg_0), arg_0) <= _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, global0.x), ~global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 19u)], -1180f, _wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(max(arg_1, global1[_wgslsmith_index_u32(4294967295u, 19u)]))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, 609f, -1000f, -415f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_0, 19u)])), arg_1, -1429f))));
    let var_2 = !vec4<bool>(true | any(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), any(vec4<bool>(false, true, false, false)))), false, !(~global0.x <= max(17085u, arg_0)));
    let var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))))), _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d.x)))), arg_1, global1[_wgslsmith_index_u32((u_input.a.x << (global0.x % 32u)) & global0.x, 19u)]), _wgslsmith_f_op_f32(-486f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.c.x, 19u)] * arg_1)) - arg_1)), func_4(var_1.d, global1[_wgslsmith_index_u32(6581u, 19u)], func_1(), var_1), Struct_2(-18225i, Struct_1(abs(func_4(vec4<f32>(var_1.d.x, 720f, arg_1, var_1.d.x), arg_1, var_1.b, var_1).a)), vec2<u32>(~arg_2.x, ~(~4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), -1005f >= arg_1)), global1[_wgslsmith_index_u32(~u_input.a.x, 19u)], var_1.d.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), u_input.a.x), 19u)])));
    return _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global0.x, 19u)], _wgslsmith_f_op_f32(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(2864u, 19u)], 202f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 19u)], -380f)))))), vec2<f32>(global1[_wgslsmith_index_u32(~(~0u), 19u)], -591f))));
    var var_1 = vec4<f32>(global1[_wgslsmith_index_u32(~(u_input.a.x & ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 10172u, 47956u, 4294967295u), vec4<u32>(u_input.a.x, 1u, global0.x, 4294967295u))), 19u)], 254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(0u, _wgslsmith_f_op_f32(max(-772f, _wgslsmith_f_op_f32(f32(-1f) * -765f))), vec2<u32>(_wgslsmith_sub_u32(97464u, 14839u), _wgslsmith_add_u32(21050u, u_input.a.x)), func_4(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 19u)], -179f, global1[_wgslsmith_index_u32(31583u, 19u)], global1[_wgslsmith_index_u32(25998u, 19u)]), -338f, func_1(), Struct_2(u_input.c.x, Struct_1(vec4<i32>(u_input.e.x, -1i, u_input.e.x, u_input.b.x)), vec2<u32>(u_input.a.x, 4294967295u), vec4<f32>(-475f, global1[_wgslsmith_index_u32(0u, 19u)], var_0.x, global1[_wgslsmith_index_u32(global0.x, 19u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_div_f32(var_0.x, 367f), true)))));
    let var_2 = Struct_1(~(~_wgslsmith_div_vec4_i32(func_2(), vec4<i32>(5525i, -28686i, u_input.b.x, u_input.e.x))));
    var var_3 = func_1().a.x;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~global0.x), u_input.c.yzw, ~(-2147483647i));
}

