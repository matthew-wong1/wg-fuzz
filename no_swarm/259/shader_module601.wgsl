struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-1160f, 1135f, -1442f, 1275f, 591f);

var<private> global1: i32 = 1i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(u_input.b.x << (~4294967295u % 32u)), 1i, arg_0.x), 0i);
    var var_0 = arg_0.xxz;
    var_0 = arg_0.xyw;
    var var_1 = arg_1.a;
    var var_2 = ~u_input.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -2247f, false)) - -841f)) - _wgslsmith_f_op_f32(-1488f - arg_1.a.x)) + -1000f);
}

fn func_2() -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b.x, -30594i, u_input.b.x, ~u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(8677u, 5u)])), max(u_input.c.yzw, vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x))))) - -1508f), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, false));
    global1 = max(-1i & ~u_input.b.x, ~1i << (_wgslsmith_div_u32(_wgslsmith_add_u32(countOneBits(u_input.c.x), u_input.d.x), ~(u_input.d.x << (11830u % 32u))) % 32u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 5u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23675u, 5u)]), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32((u_input.d.x ^ u_input.a.x) | 1u, 5u)]))), global0[_wgslsmith_index_u32(u_input.c.x, 5u)], _wgslsmith_f_op_f32(f32(-1f) * -1277f));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, firstLeadingBit(1u)), 5u)]), var_0.b);
    var var_3 = var_0;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(true, true, true);
    global1 = 6610i;
    var var_1 = vec3<bool>(true, 58659u >= u_input.d.x, any(vec2<bool>(var_0.x, !var_0.x)));
    var_1 = select(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, var_1.x, true), vec3<bool>(false, var_1.x, var_0.x)))), vec3<bool>(!(!(var_1.x && true)), false && func_2(), false), var_0.x);
    var var_2 = 0u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1065f, global0[_wgslsmith_index_u32(~51836u, 5u)], -322f, _wgslsmith_f_op_f32(ceil(224f)))))), vec3<u32>(89094u, ~_wgslsmith_mult_u32(u_input.c.x, 0u), ~1u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -553f)))), vec3<bool>(func_2(), all(vec4<bool>(all(vec4<bool>(arg_1.x, arg_1.x, arg_2.a.x, true)), true, arg_2.a.x, arg_3.b.x)), true));
    global0 = array<f32, 5>();
    let var_1 = vec4<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), abs(vec3<i32>(-1i, 28687i, -1i))), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<i32>(15688i, 0i, -4779i))), 1i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_mult_i32(min(-reverseBits(0i), _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.b), vec2<i32>(2147483647i, 22616i))), abs(firstTrailingBit(12644i))));
    global0 = array<f32, 5>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_3.a, arg_2.b.a.x))), 536f)), arg_3.b);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), u_input.c.x > 0u), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), u_input.a.x >= firstTrailingBit(_wgslsmith_div_u32(u_input.d.x, u_input.a.x))), Struct_2(vec3<bool>(all(vec3<bool>(true, true, true)), true, !(global0[_wgslsmith_index_u32(u_input.a.x, 5u)] < global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), _wgslsmith_f_op_f32(select(1225f, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], true)), -1252f, _wgslsmith_f_op_f32(step(1000f, 1056f))), ~vec3<u32>(66422u, 1u, u_input.c.x)), 4294967295u), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)] * global0[_wgslsmith_index_u32(0u, 5u)]))) - 922f), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, false)));
    var var_1 = false;
    var var_2 = !any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false))) & select(func_2(), false, true);
    let var_3 = vec2<bool>(u_input.b.x > _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(1i, 0i, 88161i, -12727i)), ~vec4<i32>(u_input.b.x, -7416i, u_input.b.x, 55617i)), vec4<i32>(select(-2147483647i, 17076i, false), 7755i, i32(-1i) * -7107i, u_input.b.x)), !(!all(vec4<bool>(true, false, false, false))) || !all(vec2<bool>(true, false)));
    var_2 = true;
    var var_4 = vec4<f32>(func_4(func_1(), !select(select(var_3, vec2<bool>(var_3.x, false), var_3), select(var_3, vec2<bool>(true, var_3.x), false), any(vec4<bool>(true, true, false, var_3.x))), Struct_2(!select(vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(false, true, var_3.x), var_3.x), var_0, u_input.c.x), Struct_3(-401f, vec3<bool>(true, true, u_input.b.x == 61336i))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) - -1191f))), 519f, var_0.a.x);
    var_2 = any(!vec3<bool>(true, var_3.x || any(var_3), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(739f, var_0.a.yw, var_0.a.x);
}

