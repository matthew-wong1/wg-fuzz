struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(29922i);

var<private> global1: array<Struct_1, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_1(0i);
    let var_1 = var_0.a;
    let var_2 = ~(~(~u_input.a.x));
    var var_3 = Struct_1(min(-2147483647i, ~max(1i, -36969i)));
    global0 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-599f, 557f))) * 670f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(65426u, 19u)];
    global1 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-620f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(u_input.a.xw)), _wgslsmith_f_op_f32(1402f - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f + -676f))));
    let var_2 = !(!vec2<bool>(false, !all(vec3<bool>(true, true, false))));
    var var_3 = abs(var_0.a) < abs(~firstTrailingBit(69943i));
    return ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(23767u, 20150u, u_input.a.x, u_input.a.x), u_input.a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: i32) -> u32 {
    global0 = arg_0;
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~abs(_wgslsmith_add_vec3_i32(vec3<i32>(arg_3, -48894i, -7410i), vec3<i32>(-58821i, 70305i, arg_3))), _wgslsmith_mult_vec3_i32(vec3<i32>(51416i, 6126i, ~(-1i)), vec3<i32>(-8733i, _wgslsmith_dot_vec2_i32(vec2<i32>(-5688i, -10634i), vec2<i32>(arg_1, arg_0.a)), -arg_0.a))), vec3<i32>(_wgslsmith_add_i32(reverseBits(-14997i ^ arg_3), 1i >> (max(u_input.a.x, u_input.a.x) % 32u)), -countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(57401i, arg_0.a, 61037i), vec3<i32>(34554i, arg_3, global0.a))), -2147483647i), ~(~vec3<i32>(arg_3, 1i, global0.a)) << (~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(77440u, u_input.a.x, u_input.a.x), u_input.a.xzy), ~u_input.a.wzw) % vec3<u32>(32u)));
    global1 = array<Struct_1, 19>();
    global0 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(45207i, var_0.x), vec2<i32>(arg_1, global0.a)), _wgslsmith_add_vec2_i32(~var_0.yy, ~vec2<i32>(1i, 33976i)))));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    return ~(~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, ~(~u_input.a.x))), func_1(Struct_1(1i), firstLeadingBit(vec2<i32>(1i, global0.a))));
    global1 = array<Struct_1, 19>();
    global0 = global1[_wgslsmith_index_u32(13082u, 19u)];
    let var_1 = ~vec2<i32>(_wgslsmith_mult_i32(1i, -1i), global0.a) ^ vec2<i32>(func_4(global1[_wgslsmith_index_u32(~14780u, 19u)], 247f, global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 19u)], _wgslsmith_add_i32(-1i, global0.a), true, 13456i >> (u_input.a.x % 32u)), 19u)]), ~(-global0.a & firstLeadingBit(0i)));
    var var_2 = all(vec3<bool>(u_input.a.x != _wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(u_input.a.x)), true, true));
    var var_3 = Struct_1(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1454f)))), -1194f)), var_3.a << (58020u % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(178f)), -782f, -1086f, _wgslsmith_f_op_f32(abs(-870f))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, -652f, 856f, 170f))))), vec4<u32>(1u, 22906u, countOneBits(~74605u) & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec3_u32(u_input.a.yzx, u_input.a.zwy)), 0u));
}

