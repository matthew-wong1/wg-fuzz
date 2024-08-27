struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 56955u);

var<private> global1: array<u32, 28> = array<u32, 28>(39318u, 72569u, 1u, 30342u, 0u, 57727u, 17675u, 58u, 1u, 50519u, 60722u, 4294967295u, 0u, 1u, 41642u, 1u, 0u, 40467u, 1u, 1u, 12514u, 18931u, 1u, 1u, 22709u, 4294967295u, 0u, 0u);

var<private> global2: array<u32, 27> = array<u32, 27>(12787u, 4294967295u, 6340u, 1456u, 64376u, 0u, 46849u, 2552u, 51554u, 1u, 4294967295u, 53510u, 1u, 71530u, 4294967295u, 0u, 45242u, 66976u, 52803u, 0u, 1154u, 4294967295u, 1u, 44178u, 4294967295u, 1u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(714f, 713f));
    var var_1 = _wgslsmith_mod_i32(u_input.a.x >> (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1554u ^ _wgslsmith_div_u32(u_input.b, 64154u), 27u)], 27u)] % 32u), u_input.a.x);
    var var_2 = vec2<u32>(~firstTrailingBit(global1[_wgslsmith_index_u32(1u, 28u)]), global0.x);
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 52769i), vec2<i32>(u_input.a.x, u_input.d)), ~16124i), max(abs(u_input.a.yz), abs(u_input.a.yz))), _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), firstTrailingBit(u_input.a.x)) | (u_input.a.x | _wgslsmith_div_i32(6629i, u_input.d)), 1i, 2147483647i), ~_wgslsmith_clamp_vec4_i32(-u_input.a, -(u_input.a ^ u_input.a), ~firstLeadingBit(u_input.a)));
    var_2 = ~_wgslsmith_sub_vec2_u32(~(~(vec2<u32>(1542u, global0.x) | vec2<u32>(0u, 4294967295u))), vec2<u32>(~_wgslsmith_add_u32(u_input.c, 32149u), ~(~1u)));
    return true | all(vec2<bool>(true, false));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = arg_1.x | all(!vec4<bool>(any(arg_1.xx), arg_1.x, func_3(), any(vec2<bool>(arg_1.x, arg_1.x))));
    global1 = array<u32, 28>();
    var var_1 = _wgslsmith_clamp_u32(abs(4294967295u), 0u, abs(~global1[_wgslsmith_index_u32(global0.x, 28u)]));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1399f, 1248f, -982f, -727f), vec4<f32>(1f, 1f, 1f, 1f))))), u_input.a.x, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-357f)))), !select(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, arg_1.x)), true, vec2<u32>(global2[_wgslsmith_index_u32(~global0.x, 27u)], global0.x), _wgslsmith_f_op_f32(f32(-1f) * -425f)), func_3());
    let var_3 = Struct_4(var_2.a, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x ^ var_2.b, abs(u_input.d)), u_input.a.xz)), var_2.c, !func_3());
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x * 2021f)), _wgslsmith_f_op_f32(min(-374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.e * var_2.c.e)))))));
}

fn func_1() -> u32 {
    var var_0 = ~min(vec3<u32>(~(~4294967295u), 1u, firstTrailingBit(global0.x | u_input.c)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global0.x, 28u)], global1[_wgslsmith_index_u32(33029u, 28u)], 18764u), _wgslsmith_add_vec3_u32(select(vec3<u32>(0u, 9297u, 27288u), vec3<u32>(0u, global2[_wgslsmith_index_u32(465u, 27u)], 51812u), false), max(vec3<u32>(u_input.c, 30810u, 34955u), vec3<u32>(u_input.b, u_input.b, 1u)))));
    var_0 = ~vec3<u32>(~max(1u, ~var_0.x), global0.x, abs(54566u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~vec3<i32>(0i, -38836i, u_input.a.x), vec3<bool>(true, any(vec2<bool>(false, true)), true))), _wgslsmith_div_f32(-105f, _wgslsmith_f_op_f32(select(-1006f, 1f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-388f + -1401f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(979f, 316f))) - _wgslsmith_f_op_f32(-1000f * -125f))));
    var_0 = abs(_wgslsmith_div_vec3_u32(~(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], 0u, global0.x)), ~vec3<u32>(44510u, 1u, 41751u) >> (~vec3<u32>(global0.x, global2[_wgslsmith_index_u32(80327u, 27u)], global0.x) % vec3<u32>(32u))) << (select(~(~vec3<u32>(global2[_wgslsmith_index_u32(1u, 27u)], 6270u, 61836u)), ~vec3<u32>(77451u, global2[_wgslsmith_index_u32(global0.x, 27u)], u_input.c), !all(vec2<bool>(false, false))) % vec3<u32>(32u)));
    var var_2 = all(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))));
    return _wgslsmith_clamp_u32(firstTrailingBit(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, var_0.x, u_input.c), select(vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(u_input.b, 27u)], var_0.x), vec3<u32>(global0.x, 0u, 4294967295u), vec3<bool>(false, false, false)))), ~_wgslsmith_clamp_u32(u_input.c, _wgslsmith_clamp_u32(11933u, var_0.x, 0u), 1u) & _wgslsmith_div_u32(global0.x ^ ~global0.x, 4294967295u), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(~global0.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1859u, 27u)], global2[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(38303u, 28u)]), vec3<u32>(40312u, 1u, u_input.b)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(13863u, 4294967295u, global2[_wgslsmith_index_u32(global0.x, 27u)]), vec3<u32>(52315u, global1[_wgslsmith_index_u32(0u, 28u)], u_input.c)))), ~4294967295u));
    var var_0 = vec3<bool>(0u > func_1(), all(select(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, all(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), select(false, true, all(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(f32(-1f) * -811f) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1393f), _wgslsmith_div_f32(-1731f, 669f))))));
    let var_1 = Struct_3(1u, Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-140f, 722f, -477f, -124f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(208f, 1315f, 635f, -725f)))))))), firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, -1i)), _wgslsmith_add_vec2_i32(u_input.a.yw, vec2<i32>(1i, u_input.a.x))))), _wgslsmith_sub_i32(u_input.a.x, 0i) | u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f * -1208f))), _wgslsmith_f_op_f32(step(-971f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1122f, 994f), _wgslsmith_f_op_f32(round(-220f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(154f, 777f)) * _wgslsmith_f_op_f32(ceil(-1828f))), _wgslsmith_div_f32(429f, 1543f), all(!vec4<bool>(false, var_0.x, var_0.x, false))))));
    let var_2 = -809f;
    global2 = array<u32, 27>();
    var_0 = !select(vec3<bool>(false, var_0.x || all(vec4<bool>(true, false, false, var_0.x)), var_0.x), !(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, var_0.x, var_0.x), var_0.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(var_1.b.a.x * var_1.e.x), select(select(!(!vec4<bool>(true, var_0.x, true, false)), select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, true), var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), 57829u < global2[_wgslsmith_index_u32(u_input.b, 27u)]), vec4<bool>(true, true, var_0.x, var_0.x)), vec4<bool>(!(!var_0.x), true || any(vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x || func_3(), any(!var_0.zz)), all(select(vec4<bool>(true, var_0.x, var_0.x, false), select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)), vec4<bool>(var_0.x, false, var_0.x, false)))), var_0.x || (false || !var_0.x), abs(countOneBits(~vec2<u32>(global0.x, global0.x) << (select(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73900u, 28u)], 28u)]), vec2<u32>(global0.x, 4294967295u), var_0.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), 102f, -1534f, -498f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -378f));
}

