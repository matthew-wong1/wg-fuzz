struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32 = -756f;

var<private> global2: vec4<f32> = vec4<f32>(-209f, -439f, -673f, -2372f);

var<private> global3: array<u32, 15>;

var<private> global4: vec2<u32> = vec2<u32>(68421u, 48796u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 1230f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-280f + global2.x)), global2.x))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-656f, -755f)), _wgslsmith_f_op_f32(-global2.x));
    var_0 = global2.x;
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-u_input.a.x, -69383i), ~(~vec2<i32>(2147483647i, _wgslsmith_sub_i32(-31467i, 0i))));
    let var_2 = vec2<u32>(13559u, 1u);
    return select(!(!(!select(vec3<bool>(false, global0.x, false), vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0)))), vec3<bool>(all(select(vec2<bool>(false, global0.x), vec2<bool>(false, arg_0), select(vec2<bool>(false, global0.x), vec2<bool>(true, arg_0), vec2<bool>(arg_0, true)))), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), !(!arg_0)), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(global0.x, global0.x, true), global0.x), vec3<bool>(arg_0, true, global0.x), vec3<bool>(global0.x, true, false)), vec3<bool>(true, !global0.x, false), all(!vec2<bool>(arg_0, global0.x))));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -340f, _wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 194f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))))));
    global3 = array<u32, 15>();
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(step(-376f, arg_0)))), -400f, global2.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global2.x, arg_0, global2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1011f, 313f, arg_0, global2.x) - vec4<f32>(-1000f, arg_0, global2.x, arg_0))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-406f, global2.x, global2.x, global2.x), vec4<f32>(global2.x, -1502f, arg_0, 471f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f * 1339f)), -334f)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(300f, _wgslsmith_div_f32(_wgslsmith_div_f32(-413f, arg_0), _wgslsmith_f_op_f32(arg_0 * -450f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(global2.x * global2.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(step(-221f, -618f)), 1318f, global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, global2.x, global2.x, arg_0), vec4<f32>(906f, arg_0, 195f, 861f), vec4<bool>(false, false, global0.x, false))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, -1170f, 182f), vec4<f32>(arg_0, 682f, -486f, 1000f))))));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-global2.x)))), arg_0)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + arg_0)))))));
    return !vec2<bool>(global0.x, any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, true), false)));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    global0 = select(func_3(1358f), vec2<bool>(any(arg_0), false), arg_0.yz);
    var var_0 = select(vec3<bool>(true, true, false), vec3<bool>(!((u_input.a.x & u_input.a.x) <= _wgslsmith_dot_vec3_i32(u_input.a.xxz, u_input.a.yww)), any(vec4<bool>(any(vec2<bool>(true, global0.x)), true, true, true)), !all(vec4<bool>(arg_0.x, global0.x, arg_0.x, true))), arg_0);
    var var_1 = Struct_2(Struct_1(select(!vec4<bool>(global0.x, true, arg_0.x, true), !select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, var_0.x, false, false), false), vec4<bool>(false, arg_0.x, true, global2.x >= 818f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(ceil(global2.x)), global2.x)));
    global3 = array<u32, 15>();
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.zxz, u_input.a.xzw) << (10719u % 32u), 2147483647i, abs(firstLeadingBit(firstTrailingBit(25142i))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, -41723i)), u_input.a.xx >> (vec2<u32>(5496u, global4.x) % vec2<u32>(32u)))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a.x, _wgslsmith_clamp_i32(18121i, i32(-1i) * -14640i, 1i), -56093i), vec4<i32>(u_input.a.x, ~u_input.a.x, select(u_input.a.x, 2147483647i, false), 1i) >> ((select(vec4<u32>(u_input.b.x, 0u, 1u, 4294967295u), vec4<u32>(4125u, u_input.b.x, 56539u, global3[_wgslsmith_index_u32(global4.x, 15u)]), arg_0.x) & vec4<u32>(54047u, global4.x, global4.x, global3[_wgslsmith_index_u32(0u, 15u)])) % vec4<u32>(32u))));
    return select(0i | -(max(u_input.a.x, -5135i) | var_2.x), abs(~(-1i)), false);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<i32>) -> StorageBuffer {
    global4 = countOneBits(vec2<u32>(global4.x, (_wgslsmith_mod_u32(4294967295u, global3[_wgslsmith_index_u32(1u, 15u)]) & u_input.b.x) ^ (3860u << (global4.x % 32u))));
    return StorageBuffer(firstTrailingBit(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(24811u, global4.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, global3[_wgslsmith_index_u32(1u, 15u)])), firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.c, u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.b.x, -1176f, true))), u_input.a.zyx | select(-arg_1.a, ~arg_1.a, any(vec4<bool>(arg_2.b, global0.x, arg_0.a.x, false))), firstTrailingBit(_wgslsmith_mult_vec4_i32(firstLeadingBit(u_input.a), vec4<i32>(arg_3.x, u_input.a.x, 0i, arg_3.x))) >> (~countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(54135u, 15u)], u_input.c.x, global3[_wgslsmith_index_u32(1u, 15u)], 0u)) % vec4<u32>(32u)), global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(!(!func_1(global0.x, u_input.b, u_input.a.x)), false, func_2(vec3<bool>(false, true, true)) <= 1i, !select(!vec4<bool>(true, global0.x, false, false), vec4<bool>(true, true, true, true), true)), Struct_4(max(firstLeadingBit(abs(vec3<i32>(7534i, 2147483647i, 1i))), -(vec3<i32>(-2147483647i, -4571i, u_input.a.x) & vec3<i32>(-2147483647i, 0i, u_input.a.x))), Struct_1(select(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, true)), vec4<bool>(false, global0.x, global0.x, global0.x), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-408f, -636f, global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(758f, global2.x, global2.x) - vec3<f32>(global2.x, global2.x, global2.x)), global0.x && global0.x)))), Struct_3(!(!vec3<bool>(global0.x, global0.x, true)), false, global0.x, vec4<bool>(max(37438u, 23459u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 5786u, u_input.b.x), vec4<u32>(global3[_wgslsmith_index_u32(1u, 15u)], 1u, 4294967295u, u_input.b.x)), !(global2.x >= 413f), true, true)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(32073i >> (u_input.c.x % 32u), abs(-1i), 1i, u_input.a.x), vec4<i32>(-25528i, u_input.a.x, ~u_input.a.x, 24795i)), vec4<i32>(-50169i, u_input.a.x, -10521i, _wgslsmith_clamp_i32(select(u_input.a.x, -4968i, global0.x), 0i, u_input.a.x))));
}

