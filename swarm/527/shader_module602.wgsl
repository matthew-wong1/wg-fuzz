struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: array<f32, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> bool {
    return all(select(!vec4<bool>(false | arg_3, false, arg_3, true), select(!vec4<bool>(arg_3, false, true, false), !(!vec4<bool>(false, arg_3, true, arg_3)), any(select(vec4<bool>(arg_3, true, arg_3, false), vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(true, false, arg_3, arg_3)))), vec4<bool>(!any(vec2<bool>(arg_3, arg_3)), any(vec4<bool>(true, arg_3, arg_3, arg_3)) == true, all(vec4<bool>(arg_3, arg_3, arg_3, arg_3)) || true, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: i32) -> bool {
    global0 = array<i32, 8>();
    var var_0 = vec2<i32>(2147483647i, firstLeadingBit(abs(min(_wgslsmith_dot_vec2_i32(u_input.c, u_input.d.wx), -8520i))));
    let var_1 = Struct_1(var_0.x, 2147483647i, firstLeadingBit(max(~vec3<u32>(1u, 20875u, u_input.a.x), vec3<u32>(u_input.a.x << (64318u % 32u), u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(17549u, 8u)] + global1[_wgslsmith_index_u32(1u, 8u)]), global1[_wgslsmith_index_u32(0u, 8u)]) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_div_f32(-657f, global1[_wgslsmith_index_u32(4294967295u, 8u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-772f)), 1342f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)])))), arg_1)));
    var var_2 = 56926u;
    var var_3 = any(vec3<bool>(any(select(arg_1, arg_0.xx, arg_1.x)), arg_0.x && true, arg_0.x)) && !arg_0.x;
    return !(!any(arg_1)) | arg_1.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = all(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(false, true, true)), true, true, false), true)) | func_4(vec3<bool>(!all(vec3<bool>(false, true, false)), !all(vec2<bool>(true, false)), true), vec2<bool>(any(vec4<bool>(true, true, true, true)), func_3(Struct_4(Struct_1(0i, u_input.b.x, vec3<u32>(u_input.a.x, 28514u, u_input.a.x), vec2<f32>(arg_0.x, -420f)), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.b.x), Struct_2(Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], vec3<u32>(70099u, 14511u, 1650u), arg_0.ww), Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(34855u, 8u)], vec3<u32>(52776u, u_input.a.x, u_input.a.x), arg_0.xw)), arg_0.yxz, vec2<i32>(-2147483647i, -548i)), Struct_4(Struct_1(-81152i, 1i, vec3<u32>(15296u, 4294967295u, 4294967295u), arg_0.yw), u_input.c, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], vec3<u32>(u_input.a.x, 1u, u_input.a.x), arg_0.xx), Struct_1(u_input.b.x, u_input.d.x, vec3<u32>(46676u, 51234u, 0u), arg_0.xx)), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 221f, -1021f), vec2<i32>(u_input.b.x, u_input.d.x)), Struct_1(u_input.d.x, global0[_wgslsmith_index_u32(39960u, 8u)], vec3<u32>(7834u, u_input.a.x, u_input.a.x), arg_0.xy), true)), -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), u_input.e));
    global0 = array<i32, 8>();
    let var_1 = !all(select(select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, false), true), vec3<bool>(false, var_0, var_0)), select(vec3<bool>(false, var_0, var_0), select(vec3<bool>(true, false, true), vec3<bool>(true, false, var_0), var_0), false && var_0), false));
    global1 = array<f32, 8>();
    var var_2 = ~1u;
    return Struct_1(-u_input.d.x >> (max(~abs(u_input.a.x), u_input.a.x) % 32u), select(~(~49437i), u_input.b.x, select(true, true, true)) | -1i, vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x << (1u % 32u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), 4294967295u) & (3070u ^ u_input.a.x), u_input.a.x, countOneBits(abs(~u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(41715u, 8u)] * global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, 59711u), 8u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, u_input.a.x, 23064u, u_input.a.x), ~vec4<u32>(45295u, 2905u, u_input.a.x, u_input.a.x)), 8u)]));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_3 {
    let var_0 = !(!(!(!vec2<bool>(arg_0.x, arg_0.x))));
    let var_1 = Struct_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1154f * -109f)), _wgslsmith_f_op_f32(-211f * 1119f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 8u)])), 106f), _wgslsmith_f_op_f32(f32(-1f) * -2339f)), firstTrailingBit(~((u_input.d.xw | u_input.c) >> (u_input.a % vec2<u32>(32u)))), Struct_2(Struct_1(-1i, 1i, abs(vec3<u32>(124609u, u_input.a.x, 50019u) & vec3<u32>(72535u, 4294967295u, 42432u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 8u)])))), func_2(vec4<f32>(1688f, global1[_wgslsmith_index_u32(1954u, 8u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)] * -516f), global1[_wgslsmith_index_u32(66992u, 8u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2222f * global1[_wgslsmith_index_u32(0u, 8u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 8u)]), _wgslsmith_f_op_f32(floor(1267f)), -1325f) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(999f, global1[_wgslsmith_index_u32(20820u, 8u)], 1772f))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-39119i, _wgslsmith_add_i32(abs(37660i), u_input.e & u_input.c.x)), ~u_input.b.xy, abs(_wgslsmith_div_vec2_i32(-u_input.b.zy, -u_input.b.yy))));
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    var var_2 = var_1;
    return Struct_3(Struct_1(-44389i, arg_1, ~var_1.a.c >> (~var_2.c.b.c % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(var_2.c.a.d))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), firstTrailingBit(abs(u_input.b.x))), ~(var_2.a.a & -2147483647i) ^ 34698i, abs(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.d.x, global1[_wgslsmith_index_u32(1u, 8u)], var_1.a.d.x, -796f)), _wgslsmith_f_op_f32(f32(-1f) * -707f)).b), _wgslsmith_mod_i32(~(i32(-1i) * -31386i), var_1.e.x)), func_2(vec4<f32>(715f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.d.x, var_1.a.d.x))), func_2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], -1000f, global1[_wgslsmith_index_u32(1u, 8u)], var_2.d.x), -408f).d.x, _wgslsmith_f_op_f32(var_2.d.x * global1[_wgslsmith_index_u32(var_2.c.a.c.x, 8u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)] + -262f), _wgslsmith_f_op_f32(var_1.a.d.x * -256f), all(vec2<bool>(false, var_0.x)))), -1242f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.d, _wgslsmith_f_op_vec3_f32(var_1.d + var_2.d)))));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    global0 = array<i32, 8>();
    let var_0 = ~u_input.e;
    let var_1 = Struct_4(arg_0.c, vec2<i32>(~reverseBits(_wgslsmith_dot_vec3_i32(arg_0.b.zzw, arg_0.b.zwy)), -11110i), Struct_2(arg_0.c, arg_0.c), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -540f), -771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - 896f)), arg_0.b.zw);
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.d.x, 927f, var_1.d.x, -100f), vec4<f32>(-196f, arg_0.d.x, -103f, global1[_wgslsmith_index_u32(var_1.c.a.c.x, 8u)]), vec4<bool>(false, arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 373f, global1[_wgslsmith_index_u32(arg_0.c.c.x, 8u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-226f, _wgslsmith_f_op_f32(-arg_0.a.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -28534i), false), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.b.x, u_input.c.x), u_input.d), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(-1i, u_input.e, 1i, global0[_wgslsmith_index_u32(100269u, 8u)])), firstTrailingBit(u_input.d), u_input.d)), vec4<i32>(global0[_wgslsmith_index_u32(~max(40931u, 378u), 8u)], -4940i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(40601u >> (u_input.a.x % 32u), 8u)], u_input.e), u_input.e)), Struct_1(-_wgslsmith_dot_vec4_i32(-u_input.d, u_input.d), 7545i, ~vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u ^ u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(666f, global1[_wgslsmith_index_u32(21324u, 8u)]) - vec2<f32>(global1[_wgslsmith_index_u32(7355u, 8u)], -1448f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-994f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_2(vec4<f32>(472f, global1[_wgslsmith_index_u32(39503u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], -702f), global1[_wgslsmith_index_u32(u_input.a.x, 8u)]).c.x, 8u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(322f)) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], -1527f))) + vec3<f32>(global1[_wgslsmith_index_u32(~(~4294967295u), 8u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, func_5(Struct_3(Struct_1(global0[_wgslsmith_index_u32(0u, 8u)], -1i, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec2<f32>(1098f, -392f)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(51558u, 8u)], -2147483647i), Struct_1(22838i, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], vec3<u32>(u_input.a.x, 44353u, u_input.a.x), vec2<f32>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), vec3<f32>(-736f, 1465f, 1536f)), false).c.zz), 8u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(69967u, 8u)] + 352f), _wgslsmith_f_op_f32(floor(-178f))))));
    var var_1 = Struct_5(Struct_2(var_0.c, Struct_1(abs(global0[_wgslsmith_index_u32(~24421u, 8u)]), func_1(vec3<bool>(true, true, true), 0i).c.b, min(vec3<u32>(var_0.a.c.x, 0u, var_0.c.c.x), var_0.c.c), var_0.c.d)), Struct_2(func_5(Struct_3(func_2(vec4<f32>(1000f, global1[_wgslsmith_index_u32(8872u, 8u)], -1951f, 893f), 687f), var_0.b, var_0.a, vec3<f32>(-1000f, 1541f, -810f)), true && func_3(Struct_4(Struct_1(var_0.b.x, global0[_wgslsmith_index_u32(var_0.c.c.x, 8u)], var_0.c.c, vec2<f32>(var_0.d.x, -1892f)), vec2<i32>(6709i, u_input.b.x), Struct_2(Struct_1(1962i, -25255i, var_0.c.c, vec2<f32>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(var_0.c.c.x, 8u)])), Struct_1(-34572i, 4548i, var_0.a.c, var_0.a.d)), vec3<f32>(global1[_wgslsmith_index_u32(var_0.c.c.x, 8u)], 313f, -543f), vec2<i32>(global0[_wgslsmith_index_u32(49026u, 8u)], -35198i)), Struct_4(Struct_1(var_0.c.a, var_0.b.x, vec3<u32>(13464u, 67902u, u_input.a.x), var_0.a.d), var_0.b.xx, Struct_2(var_0.c, var_0.a), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], -458f), var_0.b.zz), Struct_1(30069i, u_input.d.x, vec3<u32>(var_0.c.c.x, 50166u, 4294967295u), vec2<f32>(377f, 257f)), true)), var_0.c), vec2<bool>(true, select(true, true & all(vec3<bool>(true, false, true)), false)), Struct_2(Struct_1(_wgslsmith_mod_i32(-24209i, 42156i), u_input.e, ~(~vec3<u32>(4294967295u, 3009u, var_0.a.c.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.d), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(68359u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]))), vec2<bool>(true, true)))), func_5(Struct_3(var_0.a, ~var_0.b, var_0.c, _wgslsmith_f_op_vec3_f32(var_0.d - var_0.d)), true)));
    var var_2 = ~(-_wgslsmith_add_i32(0i, ~var_1.d.a.b));
    var_0 = Struct_3(func_5(Struct_3(func_5(Struct_3(Struct_1(global0[_wgslsmith_index_u32(54600u, 8u)], 0i, var_0.a.c, vec2<f32>(-1000f, -471f)), u_input.d, var_1.d.a, var_0.d), var_1.c.x), vec4<i32>(-24879i, -u_input.c.x, var_0.c.a, var_1.d.b.a), func_2(vec4<f32>(472f, -1293f, var_1.d.b.d.x, var_1.a.b.d.x), func_2(vec4<f32>(var_1.a.a.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], -378f, global1[_wgslsmith_index_u32(0u, 8u)]), var_1.b.b.d.x).d.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-151f, -442f, var_0.d.x)))), var_1.c.x), abs(countOneBits(vec4<i32>(68i, var_0.a.a, var_1.a.a.b, 34498i)) >> ((vec4<u32>(u_input.a.x, u_input.a.x, 35676u, 85858u) >> (~vec4<u32>(0u, var_0.c.c.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), func_5(Struct_3(Struct_1(-1i, 1i, var_1.d.a.c, var_0.a.d), u_input.d, var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) + _wgslsmith_f_op_vec3_f32(-var_0.d))), !var_1.c.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-254f + func_5(Struct_3(var_0.c, var_0.b, var_1.a.a, var_0.d), true).d.x), func_5(Struct_3(Struct_1(u_input.e, -1i, var_0.c.c, vec2<f32>(2307f, -1576f)), var_0.b, var_1.a.a, var_0.d), true).d.x, true)), var_1.b.a.d.x));
    var var_3 = 25513u;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(403f, global1[_wgslsmith_index_u32(1u, 8u)], var_0.a.d.x, global1[_wgslsmith_index_u32(var_1.b.a.c.x, 8u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(1u, 8u)], var_0.d.x, var_0.c.d.x, var_0.d.x))) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], var_1.a.a.d.x, -1028f, 225f)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.b.a.d.x)), var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(401f - var_1.d.b.d.x), _wgslsmith_f_op_f32(f32(-1f) * -559f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1111f, _wgslsmith_div_f32(-1503f, 1055f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) * _wgslsmith_f_op_f32(var_0.a.d.x + -1702f))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(select(u_input.a.x, 0u, var_1.c.x), 8u)])), _wgslsmith_f_op_f32(-var_0.a.d.x), 313f), 808f);
}

