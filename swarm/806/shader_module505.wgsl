struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: f32 = -196f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = vec3<bool>(!(select(true, true, true) && true), !select(true, select(any(vec2<bool>(arg_2, arg_2)), !arg_2, all(vec4<bool>(arg_2, arg_2, false, true))), !(arg_1.a.x == 0i)), true);
    var var_1 = !all(!vec4<bool>(false, select(var_0.x, true, var_0.x), arg_2, !arg_2));
    let var_2 = countOneBits(1u);
    var var_3 = u_input.a;
    let var_4 = countOneBits(vec3<u32>(var_2, u_input.c.x, ~1u));
    return _wgslsmith_div_f32(-1641f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_3.a.b.x, -169f, true)))) * arg_3.a.b.x));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.x) * _wgslsmith_f_op_f32(arg_0.a.b.x + -988f))) + _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(arg_0.a.b.x * arg_0.a.b.x)), Struct_1(select(arg_0.a.a, vec2<i32>(-2147483647i, u_input.a.x), vec2<bool>(true, true)), arg_0.a.b), arg_0.a.b.x == 379f, arg_0))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.a.b)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1351f + var_0.x), _wgslsmith_f_op_f32(-var_0.x)))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - -647f)));
    var_0 = arg_0.a.b;
    return global0[_wgslsmith_index_u32(u_input.c.x, 12u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = 1i;
    var var_1 = -866f;
    let var_2 = func_2(func_2(Struct_2(arg_1.a))).a;
    var var_3 = vec3<bool>(any(vec2<bool>(true, true)), true, !select(select(true, true, true), true, true));
    var var_4 = ~arg_0.x;
    return ~_wgslsmith_sub_u32(4294967295u, 28222u);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    let var_0 = firstLeadingBit(max(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, firstTrailingBit(15945u)), u_input.c.x >> (_wgslsmith_mult_u32(u_input.c.x, 1u) % 32u)), func_4(vec2<i32>(-10171i, reverseBits(u_input.a.x)), func_2(arg_0))));
    var var_1 = arg_0;
    var var_2 = firstLeadingBit(var_0 & u_input.c.x);
    let var_3 = !any(!vec2<bool>(true, var_1.a.a.x >= 43100i));
    var var_4 = arg_0;
    return Struct_2(var_4.a);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.c.x, func_4(arg_0.a.a, Struct_2(arg_0.a)), u_input.c.x, ~u_input.c.x);
    var var_1 = func_2(func_2(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, 47451u, 4294967295u), 1u)), 12u)]));
    let var_2 = vec4<i32>(1i, arg_2, arg_0.a.a.x, _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(u_input.b.ywz, u_input.b.zyy) & _wgslsmith_mod_i32(u_input.a.x, arg_2))) | min(-(u_input.b >> (var_0 % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(~var_0, _wgslsmith_div_vec4_u32(var_0, vec4<u32>(var_0.x, 0u, 4294967295u, 48354u))) % vec4<u32>(32u)), abs(~vec4<i32>(-39986i, 2147483647i, arg_0.a.a.x, arg_0.a.a.x)));
    let var_3 = func_4(_wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.a.x, 0i) | var_1.a.a, _wgslsmith_div_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(5468i, arg_2)))), vec2<i32>(-_wgslsmith_mod_i32(var_2.x, 2147483647i), -68572i)), Struct_2(var_1.a));
    global0 = array<Struct_2, 12>();
    return arg_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = func_2(func_2(func_1(Struct_2(Struct_1(vec2<i32>(u_input.a.x, -22546i), vec2<f32>(arg_0.b.x, arg_2.a.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-243f, arg_0.b.x))))))).a.b.x;
    let var_1 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), any(vec2<bool>(true, true))));
    global0 = array<Struct_2, 12>();
    var var_2 = u_input.c.x;
    let var_3 = Struct_2(arg_2.a);
    return arg_2.a.a;
}

fn func_7(arg_0: i32, arg_1: vec2<i32>) -> bool {
    let var_0 = vec3<bool>(true, true, !all(vec4<bool>(false, true, true, true)));
    global1 = _wgslsmith_f_op_f32(-1580f - func_1(global0[_wgslsmith_index_u32(~u_input.c.x, 12u)], -996f).a.b.x);
    var var_1 = abs(~(~_wgslsmith_mult_u32(u_input.c.x, firstLeadingBit(u_input.c.x))));
    let var_2 = arg_1.x;
    var var_3 = var_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)));
    var var_1 = func_7(_wgslsmith_dot_vec2_i32(u_input.a.yx & u_input.b.wx, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.a.yy), 1i), vec2<i32>(u_input.d, ~1i))), select(func_6(func_5(func_1(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 161f), true, max(36655i, 12862i)), u_input.a.yx, Struct_2(Struct_1(u_input.a.ww, vec2<f32>(-319f, 1781f)))), vec2<i32>(abs(u_input.b.x & 2147483647i), ~(-u_input.a.x)), select(!vec2<bool>(var_0, false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_0, var_0)), select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(vec2<bool>(var_0, var_0), vec2<bool>(false, true), var_0), vec2<bool>(true, true), select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), var_0)))));
    global1 = -664f;
    var_1 = true;
    global1 = 1522f;
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.d, 0i, any(select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, false), true))), u_input.c.x);
}

